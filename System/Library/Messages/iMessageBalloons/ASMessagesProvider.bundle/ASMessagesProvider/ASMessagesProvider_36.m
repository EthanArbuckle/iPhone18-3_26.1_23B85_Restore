void sub_419F7C(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_shouldForcePortrait);
      v5 = a1;
      v6 = v5;
      if (v4 == 1 && ([v5 size], v8 = v7, objc_msgSend(v6, "size"), v9 < v8) && (v10 = objc_msgSend(v6, "CGImage")) != 0)
      {
        v11 = v10;
        [v6 scale];
        v13 = [objc_allocWithZone(UIImage) initWithCGImage:v11 scale:2 orientation:v12];

        v14 = v13;
      }

      else
      {
        v14 = v6;
      }

      v15 = *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
      v16 = v14;
      v17 = v15;
      v19.value.super.isa = v14;
      v19.is_nil = 1;
      sub_759140(v19, v18);
    }
  }
}

id sub_41A0F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductMediaItemCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductMediaItemCollectionViewCell()
{
  result = qword_954A40;
  if (!qword_954A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_41A228()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    sub_75DC30();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_41A338(uint64_t **a1))()
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
  v2[4] = sub_4194E4(v2);
  return sub_21028;
}

uint64_t sub_41A3A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_41A3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_41A468(uint64_t *a1))()
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
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_41A594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_41A624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_948720);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  v9 = sub_75DC30();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_766690();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v27);
  sub_BD88(&unk_93F520);
  sub_75BEC0();
  result = swift_dynamicCast();
  if (result)
  {
    v26[2] = v26[3];
    v18 = sub_75BEB0();
    if (v18)
    {
      v19 = v18;
      v26[1] = a2;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        v26[0] = v19;
        v22 = qword_99A200;
        swift_beginAccess();
        (*(v10 + 16))(v12, &v21[v22], v9);
        sub_75DB80();
        (*(v10 + 8))(v12, v9);
        if ((*(v14 + 48))(v8, 1, v13) != 1)
        {
          (*(v14 + 32))(v16, v8, v13);
          v24 = [v3 contentView];
          [v24 bounds];

          sub_766600();
          sub_764BC0();
          sub_765330();

          type metadata accessor for VideoView();
          sub_41A594(&unk_93F530, type metadata accessor for VideoView);
          sub_75A050();

          return (*(v14 + 8))(v16, v13);
        }

        sub_10A2C(v8, &unk_948720);
      }

      else
      {
      }
    }

    if (sub_75BEA0())
    {
      if ((*(v3 + OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_shouldForcePortrait) & 1) != 0 && (sub_7650D0() & 1) == 0)
      {
        v25 = [v3 contentView];
        [v25 bounds];

        v23 = [v3 contentView];
        [v23 bounds];
      }

      else
      {
        v23 = [v3 contentView];
        [v23 bounds];
      }

      sub_765330();
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_75A040();

      sub_10A2C(v27, &unk_9443A0);
    }
  }

  return result;
}

void sub_41ABAC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_41A594(&qword_93F500, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_34F24(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_41AC7C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
  sub_759210();
  sub_41A594(&qword_9496B0, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_76A6E0();
  sub_75A0B0();
  sub_1EB60(v7);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + qword_940590);

    sub_BE70(0, &qword_949D90);
    sub_41ADDC();
    v6 = v5;
    sub_76A6E0();
    sub_75A0B0();

    return sub_1EB60(v7);
  }

  return result;
}

unint64_t sub_41ADDC()
{
  result = qword_94BA00;
  if (!qword_94BA00)
  {
    sub_BE70(255, &qword_949D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94BA00);
  }

  return result;
}

uint64_t sub_41AE44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_41AE84(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_reviewSummaryView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for ReviewSummaryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ReviewSummaryCollectionViewCell();
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_reviewSummaryView]];

  return v12;
}

id sub_41B24C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewSummaryCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReviewSummaryCollectionViewCell()
{
  result = qword_954A88;
  if (!qword_954A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_41B3B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_reviewSummaryView);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v14[4] = a5;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_23F0CC;
    v14[3] = a6;
    v12 = _Block_copy(v14);
    v13 = v10;

    [a1 addAnimations:v12];
    _Block_release(v12);
  }
}

void *sub_41B4AC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_reviewSummaryView) + OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer);
  v2 = v1;
  return v1;
}

uint64_t sub_41B4EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_41B524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_41B548()
{
  sub_BD88(&qword_9452E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DCF0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_10D54C(inited);
  swift_setDeallocating();
  sub_BD88(&qword_9452E8);
  result = swift_arrayDestroy();
  qword_954A98 = v1;
  return result;
}

void sub_41B75C(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  sub_BD88(&unk_93F5C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_77B6C0;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent:a1];

  v11 = [v10 CGColor];
  *(v7 + 32) = v11;
  v12 = [v8 blackColor];
  v13 = [v12 colorWithAlphaComponent:a2];

  v14 = [v13 CGColor];
  *(v7 + 40) = v14;
  *a4 = v7;
}

char *sub_41B898(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient] = 1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient] = 1;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for HeroGradientView();
  v10 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setUserInteractionEnabled:0];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient;
  [*&v14[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient] setAnchorPoint:{0.0, 0.0}];
  v16 = qword_93D090;
  v17 = *&v14[v15];
  if (v16 != -1)
  {
    swift_once();
  }

  sub_BD88(&qword_9452F0);
  isa = sub_7690E0().super.isa;
  [v17 setActions:isa];

  v19 = [v14 layer];
  [v19 addSublayer:*&v14[v15]];

  sub_41BBDC();
  return v14;
}

id sub_41BBDC()
{
  if ((v0[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient] & 1) != 0 || v0[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient];
    [v1 setHidden:0];
    [v0 bounds];
    sub_41BD4C(v2, v3);
    v5 = v4;
    sub_206378();

    isa = sub_769450().super.isa;

    [v1 setLocations:isa];

    sub_140730(v5);

    v7 = sub_769450().super.isa;

    [v1 setColors:v7];

    v8 = "setNeedsDisplay";
    v9 = v1;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient];
    v8 = "setHidden:";
  }

  return [v9 v8];
}

uint64_t sub_41BD4C(double a1, double a2)
{
  v3 = v2;
  v4 = 174.0 / a2;
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:174.0 / a2];
  v6 = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v4];
  sub_BD88(&unk_93F5C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_77D9F0;
  sub_206378();
  *(v7 + 32) = sub_76A190(0.0);
  v20 = v7;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient;
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient) == 1)
  {
    v9 = v5;
    sub_769440();
    if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v7 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    if (qword_93D098 != -1)
    {
      swift_once();
    }

    sub_10A6D8(v10);
    if ((*(v2 + OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient) & 1) == 0)
    {
      v11 = [objc_opt_self() blackColor];
      v12 = [v11 colorWithAlphaComponent:0.0];

      v13 = [v12 CGColor];
      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
    }
  }

  if (*(v3 + OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient) == 1)
  {
    v14 = v6;
    sub_769440();
    if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v7 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    if ((*(v3 + v8) & 1) == 0)
    {
      v15 = [objc_opt_self() blackColor];
      v16 = [v15 colorWithAlphaComponent:0.0];

      v17 = [v16 CGColor];
      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
    }

    if (qword_93D0A0 != -1)
    {
      swift_once();
    }

    sub_10A6D8(v18);
  }

  sub_76A190(1.0);
  sub_769440();
  if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v20 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();

  return v20;
}

id sub_41C190()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroGradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_41C1F8(void *a1, uint64_t a2, void *a3, double a4)
{
  v82 = a2;
  v89 = sub_75F7E0();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_75F7C0();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75[0] = v75 - v10;
  __chkstk_darwin(v11);
  v84 = v75 - v12;
  v80 = sub_762D10();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75EE80();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v77 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v75 - v18;
  v90 = a1;
  v20 = sub_75B6F0();
  v92 = a3;
  v21 = [a3 traitCollection];
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
  v91 = [v20 length];
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  *(v23 + 40) = 1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_266A8;
  *(v24 + 24) = v23;
  v104 = sub_26694;
  v105 = v24;
  aBlock = _NSConcreteStackBlock;
  v101 = 1107296256;
  v102 = sub_10C1C;
  v103 = &unk_8912D8;
  v25 = _Block_copy(&aBlock);
  v26 = v21;
  v27 = v22;

  [v20 enumerateAttributesInRange:0 options:v91 usingBlock:{0x100000, v25}];

  _Block_release(v25);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_7;
  }

  v91 = v27;
  sub_75B700();
  v28 = v77;
  v15[13](v77, enum case for TitledParagraphStyle.detail(_:), v14);
  sub_41E240(&unk_94B6D0, &type metadata accessor for TitledParagraphStyle);
  v29 = v19;
  sub_769430();
  sub_769430();
  if (aBlock == v97[0] && v101 == v97[1])
  {
    v76 = 1;
  }

  else
  {
    v76 = sub_76A950();
  }

  v30 = v92;
  v31 = v15[1];
  v31(v28, v14);
  v31(v29, v14);

  sub_75B6D0();
  v75[2] = sub_75B6E0();
  v75[1] = v32;
  v77 = v91;
  v15 = [v30 traitCollection];
  sub_26F08();
  if (qword_93D610 != -1)
  {
    goto LABEL_23;
  }

LABEL_7:
  v33 = sub_7666D0();
  sub_BE38(v33, qword_99EA28);
  v90 = v15;
  v34 = sub_769E10();
  v35 = sub_7653B0();
  v103 = v35;
  v36 = sub_41E240(&qword_93F9B0, &type metadata accessor for Feature);
  v104 = v36;
  v37 = sub_B1B4(&aBlock);
  v38 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v39 = *(*(v35 - 1) + 104);
  v39(v37, enum case for Feature.measurement_with_labelplaceholder(_:), v35);
  v40 = v34;
  sub_765C30();
  sub_BEB8(&aBlock);
  v41 = v78;
  sub_762D00();
  sub_762CE0();
  v42 = v79[1];
  v43 = v80;
  v42(v41, v80);
  v98 = v35;
  v99 = v36;
  v44 = sub_B1B4(v97);
  v39(v44, v38, v35);
  v45 = v40;
  sub_765C30();
  sub_BEB8(v97);
  v79 = v45;
  sub_762D00();
  sub_762CE0();
  v42(v41, v43);
  v46 = 0;
  v47 = v76;
  if ((v76 & 1) == 0)
  {
    v46 = sub_75F770();
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v46 & 1;
  v49 = v92;
  *(v48 + 24) = v81;
  *(v48 + 32) = v49;
  v50 = v82;
  *(v48 + 40) = v91;
  *(v48 + 48) = v50;
  v51 = sub_7670D0();
  swift_allocObject();
  v52 = v77;
  swift_unknownObjectRetain();
  v53 = sub_767090();
  v96[3] = v51;
  v96[4] = &protocol witness table for LayoutViewPlaceholder;
  v96[0] = v53;
  v54 = v87;
  v55 = v85;
  v56 = v84;
  if (v46)
  {
    if (qword_93CAE0 != -1)
    {
      swift_once();
    }

    v57 = sub_BE38(v54, qword_99CBC0);
    v58 = *(v55 + 16);
    v58(v56, v57, v54);
    sub_33E778(v49, a4);
    sub_75F790();
    [v49 pageMarginInsets];
    sub_75F7A0();
  }

  else
  {
    if (v47)
    {
      if (qword_93CAE8 != -1)
      {
        swift_once();
      }

      v59 = qword_99CBD8;
    }

    else
    {
      if (qword_93CAD8 != -1)
      {
        swift_once();
      }

      v59 = qword_99CBA8;
    }

    v60 = sub_BE38(v54, v59);
    v58 = *(v55 + 16);
    v61 = v75[0];
    v58(v75[0], v60, v54);
    (*(v55 + 32))(v56, v61, v54);
  }

  v58(v83, v56, v54);
  v62 = v103;
  v63 = v104;
  v64 = sub_B170(&aBlock, v103);
  v95[3] = v62;
  v95[4] = *(v63 + 1);
  v65 = sub_B1B4(v95);
  (*(*(v62 - 1) + 16))(v65, v64, v62);
  v66 = v98;
  v67 = v99;
  v68 = sub_B170(v97, v98);
  v94[3] = v66;
  v94[4] = *(v67 + 8);
  v69 = sub_B1B4(v94);
  (*(*(v66 - 8) + 16))(v69, v68, v66);
  sub_134D8(v96, v93);
  v70 = v86;
  sub_75F7D0();
  sub_41E240(&qword_954B50, &type metadata accessor for TitledParagraphLayout);
  v71 = v89;
  sub_7665A0();
  v73 = v72;

  (*(v88 + 8))(v70, v71);
  (*(v55 + 8))(v56, v54);
  sub_BEB8(v96);
  sub_BEB8(v97);
  sub_BEB8(&aBlock);
  return v73;
}

uint64_t sub_41CE8C()
{
  sub_BD88(&qword_950688);
  sub_256230();
  sub_768AF0();
  return 3;
}

uint64_t sub_41CF04()
{
  v0 = sub_76A920();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v4 = sub_766CA0();
  sub_BE38(v4, qword_99FE18);
  sub_766470();
  sub_766700();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_41D09C()
{
  result = qword_954B38;
  if (!qword_954B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_954B38);
  }

  return result;
}

unint64_t sub_41D0F4()
{
  result = qword_954B40;
  if (!qword_954B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_954B40);
  }

  return result;
}

void sub_41D148(void *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_BD88(&qword_94B6B8);
  sub_256230();
  sub_769030();
  if (v10 == 1)
  {
    if (qword_93CAD0 != -1)
    {
      swift_once();
    }

    v8 = sub_BD88(&unk_94B6E0);
    sub_BE38(v8, qword_99CB90);
    swift_unknownObjectRetain();
    sub_7592B0();
    swift_unknownObjectRelease();
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  sub_41C1F8(a1, v9, a5, a2);
}

id sub_41D278(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v113 = a3;
  v114 = a2;
  v119 = a1;
  v111 = sub_765920();
  v118 = *(v111 - 8);
  __chkstk_darwin(v111);
  v106 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v107 = &v103 - v9;
  __chkstk_darwin(v10);
  v105 = &v103 - v11;
  __chkstk_darwin(v12);
  v104 = &v103 - v13;
  v14 = sub_BD88(&qword_952410);
  __chkstk_darwin(v14 - 8);
  v110 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v108 = &v103 - v17;
  __chkstk_darwin(v18);
  v109 = &v103 - v19;
  __chkstk_darwin(v20);
  v116 = &v103 - v21;
  v112 = sub_75FA00();
  v22 = *(v112 - 8);
  __chkstk_darwin(v112);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_75EE80();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = &v103 - v31;
  v115 = a5;
  v33 = [a5 snapshotPageTraitEnvironment];
  v34 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_pageTraits;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_pageTraits] = v33;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*&v5[v34])
  {
    [v5 setNeedsLayout];
  }

  v117 = v5;
  swift_unknownObjectRelease();
  sub_75B700();
  (*(v26 + 104))(v28, enum case for TitledParagraphStyle.detail(_:), v25);
  sub_41E240(&unk_94B6D0, &type metadata accessor for TitledParagraphStyle);
  sub_769430();
  sub_769430();
  if (aBlock == v126 && v121 == v127)
  {
    v35 = 1;
  }

  else
  {
    v35 = sub_76A950();
  }

  v36 = *(v26 + 8);
  v36(v28, v25);
  v36(v32, v25);

  v37 = v117;
  v117[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_useDetailPageStyling] = v35 & 1;
  sub_33D4F8();
  v38 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_separatorView];
  sub_75F9B0();
  sub_41E240(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v39 = v112;
  v40 = sub_76A520();
  (*(v22 + 8))(v24, v39);
  [v38 setHidden:v40 & 1];
  sub_BD88(&qword_950688);
  sub_256230();
  sub_768B00();
  v41 = aBlock;
  if (qword_93CAD0 != -1)
  {
    swift_once();
  }

  v42 = sub_BD88(&unk_94B6E0);
  sub_BE38(v42, qword_99CB90);
  v43 = v115;
  v126 = v115;
  swift_unknownObjectRetain();
  sub_7592B0();
  result = swift_unknownObjectRelease();
  v45 = v119;
  v46 = aBlock + 1;
  if (__OFADD__(aBlock, 1))
  {
    __break(1u);
    goto LABEL_56;
  }

  type metadata accessor for TitledParagraphCollectionViewCell();
  [v37 frame];
  v48 = v47;
  sub_41C1F8(v45, v46, v43, v49);
  if (v48 < v50)
  {
    v51 = v41;
  }

  else
  {
    v51 = 0;
  }

  if ((v51 & 1) == 0)
  {
    v73 = sub_75B6F0();
    v74 = [v43 traitCollection];
    v75 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v73];
    v76 = [v73 length];
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    *(v77 + 24) = v74;
    *(v77 + 32) = v75;
    *(v77 + 40) = 1;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_119AC;
    *(v78 + 24) = v77;
    v124 = sub_2636C;
    v125 = v78;
    aBlock = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122 = sub_10C1C;
    v123 = &unk_8911E8;
    v79 = _Block_copy(&aBlock);
    v80 = v74;
    v81 = v75;

    [v73 enumerateAttributesInRange:0 options:v76 usingBlock:{0x100000, v79}];

    _Block_release(v79);
    LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

    if (v73)
    {
LABEL_57:
      __break(1u);
      return result;
    }

    v72 = v108;
    v61 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_bodyTextView];
    v82 = v111;
    (*(v118 + 56))(v108, 1, 1, v111);
    v83 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
    v84 = v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
    v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 0;
    v116 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
    v85 = *&v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
    v86 = v81;
    [v85 setNumberOfLines:0];
    if (v84 != v61[v83])
    {
      sub_1A5974();
    }

    v68 = v86;
    sub_1A532C(v86);
    v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
    v87 = v110;
    sub_3B28D4(v72, v110);
    v88 = v118;
    v71 = &unk_90D000;
    if ((*(v118 + 48))(v87, 1, v82) == 1)
    {
      sub_41E198(v87);
      goto LABEL_46;
    }

    v93 = v107;
    (*(v88 + 32))(v107, v87, v82);
    v94 = v106;
    (*(v88 + 16))(v106, v93, v82);
    v95 = (*(v88 + 88))(v94, v82);
    if (v95 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v95 == enum case for Paragraph.Alignment.center(_:))
      {
        v96 = 1;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.right(_:))
      {
        v96 = 2;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.justified(_:))
      {
        v96 = 3;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.localized(_:))
      {
        v96 = 4;
        goto LABEL_45;
      }

      (*(v88 + 8))(v106, v82);
    }

    v96 = 0;
LABEL_45:
    [*&v61[v116] setTextAlignment:v96];
    (*(v88 + 8))(v107, v82);
    goto LABEL_46;
  }

  v52 = sub_75B6C0();
  v53 = [v43 traitCollection];
  v54 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v52];
  v55 = [v52 length];
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = v53;
  *(v56 + 32) = v54;
  *(v56 + 40) = 1;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_266A8;
  *(v57 + 24) = v56;
  v124 = sub_26694;
  v125 = v57;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_10C1C;
  v123 = &unk_891260;
  v58 = _Block_copy(&aBlock);
  v59 = v53;
  v60 = v54;

  [v52 enumerateAttributesInRange:0 options:v55 usingBlock:{0x100000, v58}];

  _Block_release(v58);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v37 = v117;
  v61 = *&v117[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_bodyTextView];
  v62 = v111;
  (*(v118 + 56))(v116, 1, 1, v111);
  v63 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  v64 = v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
  v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 1;
  v65 = *&v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
  v66 = *&v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
  v67 = v60;
  [v66 setNumberOfLines:v65];
  if (v64 != v61[v63])
  {
    sub_1A5974();
  }

  v68 = v67;
  sub_1A532C(v67);
  v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  v69 = v109;
  sub_3B28D4(v116, v109);
  v70 = v118;
  v71 = &unk_90D000;
  if ((*(v118 + 48))(v69, 1, v62) != 1)
  {
    v89 = v104;
    (*(v70 + 32))(v104, v69, v62);
    v90 = v105;
    (*(v70 + 16))(v105, v89, v62);
    v91 = (*(v70 + 88))(v90, v62);
    if (v91 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v91 == enum case for Paragraph.Alignment.center(_:))
      {
        v92 = 1;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.right(_:))
      {
        v92 = 2;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.justified(_:))
      {
        v92 = 3;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.localized(_:))
      {
        v92 = 4;
        goto LABEL_42;
      }

      (*(v70 + 8))(v105, v62);
    }

    v92 = 0;
LABEL_42:
    [v66 setTextAlignment:v92];
    (*(v70 + 8))(v89, v62);
    v72 = v116;
    goto LABEL_46;
  }

  sub_41E198(v69);
  v72 = v116;
LABEL_46:
  [v61 v71[463]];

  sub_41E198(v72);
  v97 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  sub_75B6D0();
  if (v98)
  {
    v99 = sub_769210();
  }

  else
  {
    v99 = 0;
  }

  [v97 setText:v99];

  v100 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
  sub_75B6E0();
  if (v101)
  {
    v102 = sub_769210();
  }

  else
  {
    v102 = 0;
  }

  [v100 setText:v102];

  return [v37 v71[463]];
}

uint64_t sub_41E180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_41E198(uint64_t a1)
{
  v2 = sub_BD88(&qword_952410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_41E200()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_41E240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_41E2CC()
{
  result = qword_954B58;
  if (!qword_954B58)
  {
    sub_75C1F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_954B58);
  }

  return result;
}

uint64_t sub_41E32C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = sub_758B40();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_75F340();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_760280();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_765490();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.shareSheet(_:));
  v21 = sub_7570A0();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_759E30();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = sub_75C1F0();
  v32 = v28;

  sub_768790();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.infer(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v23 = sub_758AD0();
  v24 = sub_72D7A8(v23, 1, v31);

  return v24;
}

id sub_41E7FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v6 - 8);
  v8 = &ObjectType - v7;
  v9 = sub_BD88(&unk_954ED0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &ObjectType - v11;
  if (a1)
  {
    v13 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewButton];
    v14 = qword_93D168;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = qword_99DCC0;
    v16 = sub_764C60();
    sub_47E4A8(v15, v16, v17);

    v18 = sub_76A3F0();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    sub_76A420();
    [v13 setHidden:{0, ObjectType}];
    v31 = a1;
    sub_764C80();
    sub_768900();
    sub_41EC9C();
    sub_768820();

    v19 = sub_BD88(&unk_950960);
    (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
    v20 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewAction;
    swift_beginAccess();
    sub_278AC(v8, &v3[v20]);
    swift_endAccess();
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewButton] setHidden:{1, v10, ObjectType}];
  }

  if (a2)
  {
    v21 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportButton];
    v22 = qword_93D170;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = qword_99DCC8;
    v24 = sub_764C60();
    sub_47E4A8(v23, v24, v25);

    v26 = sub_76A3F0();
    (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
    sub_76A420();
    [v21 setHidden:0];
    v31 = a2;
    sub_764C80();
    sub_768900();
    sub_41EC9C();
    sub_768820();

    v27 = sub_BD88(&unk_950960);
    (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
    v28 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportAction;
    swift_beginAccess();
    sub_278AC(v8, &v3[v28]);
    swift_endAccess();
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportButton] setHidden:1];
  }

  return [v3 setNeedsLayout];
}

unint64_t sub_41EC9C()
{
  result = qword_951430;
  if (!qword_951430)
  {
    sub_764C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_951430);
  }

  return result;
}

double sub_41ED40()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_762D10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F660();
  sub_41F360(&qword_93F688, &type metadata accessor for SmallGameCenterPlayer);
  sub_75C750();
  v8 = v41[0];
  if (!v41[0])
  {
    return 0.0;
  }

  v32 = v5;
  if (qword_93D158 != -1)
  {
    swift_once();
  }

  v35 = v4;
  v36 = v3;
  v37 = v1;
  v38 = v0;
  v34 = sub_7670D0();
  swift_allocObject();
  v33 = sub_7670B0();

  sub_75BB60();
  v9 = sub_26F08();
  v39 = v8;
  if (qword_93D850 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  sub_BE38(v10, qword_99F0E8);
  swift_getKeyPath();
  sub_75C7B0();

  v11 = v41[0];
  sub_769E10();

  v12 = sub_7653B0();
  v42 = v12;
  v31 = sub_41F360(&qword_93F9B0, &type metadata accessor for Feature);
  v43 = v31;
  v13 = sub_B1B4(v41);
  v28[1] = v9;
  v14 = *(v12 - 8);
  v15 = *(v14 + 104);
  v30 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v28[2] = v14 + 104;
  v29 = v15;
  v15(v13);
  sub_765C30();
  sub_BEB8(v41);
  sub_762D00();
  sub_762CE0();
  v16 = *(v32 + 8);
  v17 = v35;
  v16(v7, v35);
  v32 = sub_75BB50();
  v28[0] = v18;

  if (qword_93D858 != -1)
  {
    swift_once();
  }

  sub_BE38(v10, qword_99F100);
  swift_getKeyPath();
  sub_75C7B0();

  v19 = v41[0];
  sub_769E10();

  v42 = v12;
  v43 = v31;
  v20 = sub_B1B4(v41);
  v29(v20, v30, v12);
  sub_765C30();
  sub_BEB8(v41);
  sub_762D00();
  sub_762CE0();
  v16(v7, v17);
  sub_26F9C(&xmmword_99DBA0, v41);
  v45 = v34;
  v46 = &protocol witness table for LayoutViewPlaceholder;
  v44 = v33;
  sub_134D8(v50, &v48);
  sub_134D8(v49, &v47);
  swift_getKeyPath();
  v21 = v36;
  sub_75C7B0();

  sub_765630();
  v23 = v22;
  (*(v37 + 8))(v21, v38);
  swift_getKeyPath();
  sub_75C7B0();

  v24 = v40;
  swift_getObjectType();
  sub_646C6C(v24, v41, v23);
  v26 = v25;

  swift_unknownObjectRelease();
  sub_26FF8(v41);
  sub_BEB8(v49);
  sub_BEB8(v50);
  return v26;
}

uint64_t sub_41F360(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_41F3B0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  v13[1] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  [*&v14[OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView] setClipsToBounds:1];
  v17 = [v14 contentView];

  [v17 addSubview:*&v14[v16]];
  return v14;
}

void sub_41F6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_134D8(a3, v14);
      sub_BD88(&unk_944DA0);
      sub_763FD0();
      if (swift_dynamicCast())
      {
        sub_763FC0();

        sub_764E50();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10A2C(v6, &unk_93FF30);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_75F4B0();

          (*(v8 + 8))(v10, v7);
        }
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

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell()
{
  result = qword_954BA0;
  if (!qword_954BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_41FA10()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_41FACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_4200F8(&qword_941110, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_41FB64@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_41FBBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_41FC7C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v0[v1] = 0;
}

uint64_t sub_41FCE4(uint64_t a1, uint64_t a2)
{
  sub_763FD0();
  sub_4200F8(&qword_947AB8, &type metadata accessor for MediumAdLockupWithScreenshotsBackground);
  result = sub_75C750();
  if (v5)
  {
    sub_17EDF0(v5, a2);
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_41FDF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_41FEA8()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_41FF04(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

void (*sub_41FFC4(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_134D8(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_10914(v6, v4 + 32);
  return sub_4201F8;
}

uint64_t sub_4200F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_420140()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_420178()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4201B0()
{

  sub_BEB8(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_420204()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v2 = sub_75C840();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_420304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_75B650() & 1) == 0 || *(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)) || (sub_757580() & 1) == 0)
  {
    return 0;
  }

  return sub_75B650();
}

uint64_t sub_420394(uint64_t a1)
{
  v29 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v25 - v6;
  v7 = sub_BD88(&qword_94A490);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_BD88(&qword_94A498);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v28 = v1;
  sub_1ED18(v1 + v17, v16, &qword_94A490);
  sub_1ED18(v29, &v16[v18], &qword_94A490);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10A2C(v16, &qword_94A490);
    }

    goto LABEL_6;
  }

  sub_1ED18(v16, v12, &qword_94A490);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_205CA0(v12);
LABEL_6:
    v21 = &qword_94A498;
    goto LABEL_13;
  }

  v22 = v26;
  sub_205C3C(&v16[v18], v26);
  if (sub_75B650() & 1) != 0 && *&v12[*(v2 + 20)] == *(v22 + *(v2 + 20)) && (sub_757580())
  {
    v23 = sub_75B650();
    sub_205CA0(v22);
    sub_205CA0(v12);
    result = sub_10A2C(v16, &qword_94A490);
    if (v23)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_205CA0(v22);
  sub_205CA0(v12);
  v21 = &qword_94A490;
LABEL_13:
  sub_10A2C(v16, v21);
LABEL_14:
  sub_1ED18(v28 + v17, v9, &qword_94A490);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10A2C(v9, &qword_94A490);
  }

  v24 = v27;
  sub_205C3C(v9, v27);
  sub_4207A4();
  return sub_205CA0(v24);
}

uint64_t sub_420778@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7649A0();
  *a1 = result;
  return result;
}

uint64_t sub_4207A4()
{
  v0 = sub_757640();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  sub_7575D0();
  sub_7575B0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, type metadata accessor for InteractiveSectionBackgroundView(), sub_769BC0(), v6 = sub_769210(), , isa = sub_757550().super.isa, v8 = [v5 _visibleDecorationViewOfKind:v6 atIndexPath:isa], v5, v6, isa, !v8) || (*&v16[0] = v8, sub_205E24(), sub_BD88(&unk_94A520), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_420A64(v18);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9 || (v10 = v9, v11 = UICollectionElementKindSectionHeader, v12 = sub_757550().super.isa, v13 = [v10 _visibleSupplementaryViewOfKind:v11 atIndexPath:v12], v10, v11, v12, !v13) || (v15[1] = v13, sub_205E24(), sub_BD88(&unk_94A520), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  sub_420A64(v16);
  (*(v1 + 8))(v3, v0);
  sub_10A2C(v16, &unk_94A510);
  return sub_10A2C(v18, &unk_94A510);
}

uint64_t sub_420A64(uint64_t a1)
{
  v49 = sub_BD88(&qword_94A498);
  __chkstk_darwin(v49);
  v50 = &v43 - v3;
  v4 = sub_BD88(&qword_94A490);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v15 = (&v43 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  sub_1ED18(a1, &v51, &unk_94A510);
  if (!v52)
  {
    return sub_10A2C(&v51, &unk_94A510);
  }

  v47 = v12;
  v48 = v22;
  sub_10914(&v51, v54);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  sub_1ED18(v1 + v23, v15, &qword_94A490);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &qword_94A490;
    v26 = v15;
LABEL_21:
    sub_10A2C(v26, v25);
    return sub_BEB8(v54);
  }

  v43 = v19;
  v44 = v6;
  v45 = a1;
  v46 = v1;
  v28 = v48;
  sub_205C3C(v15, v48);
  v29 = v55;
  v30 = v56;
  sub_B170(v54, v55);
  v31 = v47;
  (*(v30 + 8))(v29, v30);
  sub_11CB8C(v28, v9);
  (*(v17 + 56))(v9, 0, 1, v16);
  v32 = v50;
  v33 = *(v49 + 48);
  sub_1ED18(v31, v50, &qword_94A490);
  sub_1ED18(v9, v32 + v33, &qword_94A490);
  if (v24(v32, 1, v16) == 1)
  {
    sub_10A2C(v9, &qword_94A490);
    sub_10A2C(v31, &qword_94A490);
    if (v24((v32 + v33), 1, v16) == 1)
    {
      sub_10A2C(v32, &qword_94A490);
LABEL_8:
      sub_205CA0(v48);
      return sub_BEB8(v54);
    }

    goto LABEL_11;
  }

  v34 = v44;
  sub_1ED18(v32, v44, &qword_94A490);
  if (v24((v32 + v33), 1, v16) == 1)
  {
    sub_10A2C(v9, &qword_94A490);
    sub_10A2C(v47, &qword_94A490);
    sub_205CA0(v34);
LABEL_11:
    sub_10A2C(v32, &qword_94A498);
    v35 = v46;
    goto LABEL_18;
  }

  v36 = v43;
  sub_205C3C(v32 + v33, v43);
  v37 = sub_75B650();
  v35 = v46;
  if (v37 & 1) != 0 && *(v34 + *(v16 + 20)) == *(v36 + *(v16 + 20)) && (sub_757580())
  {
    v38 = sub_75B650();
    sub_205CA0(v36);
    sub_10A2C(v9, &qword_94A490);
    sub_10A2C(v47, &qword_94A490);
    sub_205CA0(v34);
    sub_10A2C(v32, &qword_94A490);
    if (v38)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_205CA0(v36);
    sub_10A2C(v9, &qword_94A490);
    sub_10A2C(v47, &qword_94A490);
    sub_205CA0(v34);
    sub_10A2C(v32, &qword_94A490);
  }

LABEL_18:
  sub_1ED18(v45, &v51, &unk_94A510);
  v39 = v52;
  if (!v52)
  {
    sub_205CA0(v48);
    v25 = &unk_94A510;
    v26 = &v51;
    goto LABEL_21;
  }

  v40 = v53;
  sub_B170(&v51, v52);
  v41 = *(v35 + OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_objectGraph);
  v42 = v48;
  (*(v40 + 16))(v48, v41, v39, v40);
  sub_205CA0(v42);
  sub_BEB8(&v51);
  return sub_BEB8(v54);
}

uint64_t sub_421080()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v2 = sub_75DAB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();

  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_currentState, &qword_94A490);

  return swift_deallocClassInstance();
}

void sub_421184()
{
  sub_75DAB0();
  if (v0 <= 0x3F)
  {
    sub_11C704();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_42129C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_75B660();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_757640();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_4213A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_75B660();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_757640();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_42149C()
{
  result = sub_75B660();
  if (v1 <= 0x3F)
  {
    result = sub_757640();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_421540()
{
  result = qword_954D98;
  if (!qword_954D98)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_954D98);
  }

  return result;
}

uint64_t sub_421598(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2050BC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_421614(v6);
  return sub_76A7B0();
}

void sub_421614(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_76A900(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_BD88(&unk_94A500);
        v6 = sub_7694E0();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_42194C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_421724(0, v2, 1, a1);
  }
}

void sub_421724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_757640();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      sub_757590();

      v20 = [v18 indexPath];
      v21 = v32;
      sub_757590();

      LOBYTE(v20) = sub_757570();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_42194C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = sub_757640();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_204F10(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[16 * v101];
        v102 = v100;
        v103 = *&v100[16 * v101 + 24];
        sub_4221D4((*v16 + 8 * a4), (*v16 + 8 * *&v100[16 * v101 + 16]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_204F10(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[16 * v101];
        *v104 = a4;
        v104[1] = v103;
        v121 = v102;
        sub_204E84(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      sub_757590();

      v23 = [v20 indexPath];
      v24 = v119;
      sub_757590();

      LODWORD(v116) = sub_757570();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        sub_757590();

        v32 = [v28 indexPath];
        v33 = v119;
        sub_757590();

        LODWORD(v32) = sub_757570() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_7BFD4(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_7BFD4((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
          __break(1u);
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v60 + 40];
        sub_4221D4((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_204F10(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[16 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_204E84(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    sub_757590();

    v49 = [v46 indexPath];
    v50 = v119;
    sub_757590();

    LOBYTE(v49) = sub_757570();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_4221D4(void **a1, void **a2, void **a3, void **a4)
{
  v51 = sub_757640();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = a3 - 1;
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = v30 + 1;
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        sub_757590();

        v37 = [v34 indexPath];
        v38 = v50;
        sub_757590();

        LOBYTE(v37) = sub_757570();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 1;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        sub_757590();

        v21 = [v18 indexPath];
        v22 = v50;
        sub_757590();

        LOBYTE(v21) = sub_757570();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

uint64_t sub_42266C(char **a1, double a2)
{
  v115 = a1;
  v4 = sub_BD88(&qword_94A490);
  __chkstk_darwin(v4 - 8);
  v113 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = v109 - v7;
  v128 = sub_757640();
  v122 = *(v128 - 8);
  __chkstk_darwin(v128);
  v121 = v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v114 = v109 - v10;
  __chkstk_darwin(v11);
  v118 = v109 - v12;
  __chkstk_darwin(v13);
  v119 = v109 - v14;
  __chkstk_darwin(v15);
  v120 = v109 - v16;
  v130 = sub_75B660();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v111 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v117 = v109 - v19;
  __chkstk_darwin(v20);
  v116 = v109 - v21;
  __chkstk_darwin(v22);
  v127 = (v109 - v23);
  __chkstk_darwin(v24);
  v126 = v109 - v25;
  v125 = sub_7656C0();
  v134 = *(v125 - 1);
  __chkstk_darwin(v125);
  v27 = v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_75DAB0();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_BD88(&unk_94F1F0);
  v123 = *(v132 - 8);
  v32 = __chkstk_darwin(v132);
  v131 = v109 - v33;
  v34 = OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v35 = *(v29 + 16);
  v133 = v2;
  v35(v31, v2 + OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v28, v32);
  v124 = v35;
  sub_75DAA0();
  v36 = *(v29 + 8);
  v36(v31, v28);
  (v35)(v31, v2 + v34, v28);
  sub_75DA20();
  v36(v31, v28);
  sub_765650();
  v38 = v37;
  v39 = *(v134 + 8);
  v134 += 8;
  v40 = v125;
  v39(v27, v125);
  v124(v31, v133 + v34, v28);
  sub_75DA20();
  v36(v31, v28);
  sub_7655F0();
  v42 = v41;
  v39(v27, v40);
  v43 = v131;
  v44 = v132;
  swift_getKeyPath();
  sub_768750();

  v134 = v140;
  swift_getKeyPath();
  v45 = v126;
  sub_768750();

  v46 = v129;
  v47 = v129 + 104;
  v48 = *(v129 + 104);
  v49 = v127;
  v50 = v130;
  v48(v127, enum case for ShelfBackground.interactive(_:), v130);
  LOBYTE(v34) = sub_75B650();
  v53 = *(v46 + 8);
  v51 = v46 + 8;
  v52 = v53;
  (v53)(v49, v50);
  (v53)(v45, v50);
  if ((v34 & 1) == 0)
  {
    return (*(v123 + 8))(v43, v44);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v123 + 8))(v43, v44);
  }

  v55 = Strong;
  v109[2] = v47;

  v140 = sub_205028(v56);
  sub_421598(&v140);
  v110 = v48;
  v57 = v140;
  v58 = v134;
  v125 = v55;
  if (v140 < 0 || (v140 & 0x4000000000000000) != 0)
  {
LABEL_58:
    v59 = sub_76A860();
  }

  else
  {
    v59 = *(v140 + 16);
  }

  v124 = v51;
  v115 = v52;
  if (!v59)
  {
    v127 = _swiftEmptyArrayStorage;
LABEL_30:

    if (!*(v127 + 2))
    {

      return (*(v123 + 8))(v131, v132);
    }

    v72 = v122;
    v73 = v127 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v74 = v114;
    v75 = v128;
    v126 = *(v122 + 16);
    (v126)(v114, v73, v128);

    v76 = v118;
    (*(v72 + 32))(v118, v74, v75);
    if (__OFADD__(sub_7575C0(), v58))
    {
      goto LABEL_61;
    }

    sub_7575D0();
    sub_7575B0();
    swift_getKeyPath();
    sub_768750();

    v77 = *(v140 + 16);

    v78 = sub_7575C0();
    v79 = v130;
    v80 = v117;
    if ((v78 & 0x8000000000000000) == 0 && v78 < v77)
    {
      swift_getKeyPath();
      sub_768750();

      v81 = v139;
      v82 = sub_7575C0();
      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if (v82 >= *(v81 + 16))
      {
        goto LABEL_64;
      }

      sub_134D8(v81 + 40 * v82 + 32, v138);

      sub_BD88(&unk_944DA0);
      sub_BD88(&qword_954DA8);
      if (swift_dynamicCast())
      {
        sub_10914(&v135, &v140);
        sub_B170(&v140, v141);
        sub_760FA0();
        sub_BEB8(&v140);
LABEL_41:
        swift_getKeyPath();
        sub_768750();

        v83 = *(v140 + 16);

        v84 = sub_7575C0();
        if ((v84 & 0x8000000000000000) == 0 && v84 < v83)
        {
          swift_getKeyPath();
          sub_768750();

          v85 = v139;
          v86 = sub_7575C0();
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v86 >= *(v85 + 16))
          {
            goto LABEL_65;
          }

          sub_134D8(v85 + 40 * v86 + 32, v138);

          sub_BD88(&unk_944DA0);
          sub_BD88(&qword_954DA8);
          if (swift_dynamicCast())
          {
            sub_10914(&v135, &v140);
            sub_B170(&v140, v141);
            sub_760FA0();
            sub_BEB8(&v140);
            v87 = enum case for ShelfBackground.none(_:);
LABEL_49:
            v88 = v129;
            v89 = *(v129 + 16);
            v90 = v111;
            v89(v111, v80, v79);
            LODWORD(v88) = (*(v88 + 88))(v90, v79);
            (v115)(v90, v79);
            v91 = 1.0;
            if (v88 == v87)
            {
              v92 = v126;
            }

            else
            {
              v93 = [v125 collectionViewLayout];
              isa = sub_757550().super.isa;
              v95 = [v93 layoutAttributesForItemAtIndexPath:isa];

              v92 = v126;
              if (v95)
              {
                [v95 frame];
                v96 = CGRectGetMinX(v144) - v38 - a2;
                [v95 frame];
                Width = CGRectGetWidth(v145);

                v91 = (v96 + v42 + Width) / (v42 + Width);
                if (v91 >= 1.0)
                {
                  v91 = 1.0;
                }
              }
            }

            v98 = v112;
            v99 = v116;
            v89(v112, v116, v79);
            v100 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
            v101 = v76;
            v102 = v128;
            v92(v98 + v100[6], v101, v128);
            v103 = v117;
            v89((v98 + v100[7]), v117, v79);
            *(v98 + v100[5]) = v91;
            (*(*(v100 - 1) + 56))(v98, 0, 1, v100);
            v104 = OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_currentState;
            v105 = v133;
            swift_beginAccess();
            v106 = v113;
            sub_1ED18(v105 + v104, v113, &qword_94A490);
            swift_beginAccess();
            sub_205BCC(v98, v105 + v104);
            swift_endAccess();
            sub_420394(v106);

            sub_10A2C(v106, &qword_94A490);
            sub_10A2C(v98, &qword_94A490);
            v107 = v115;
            (v115)(v103, v79);
            (v107)(v99, v79);
            v108 = *(v122 + 8);
            v108(v121, v102);
            v108(v118, v102);
            return (*(v123 + 8))(v131, v132);
          }

          v137 = 0;
          v135 = 0u;
          v136 = 0u;
          sub_10A2C(&v135, &unk_954DB0);
        }

        v87 = enum case for ShelfBackground.none(_:);
        v110(v80, enum case for ShelfBackground.none(_:), v79);
        goto LABEL_49;
      }

      v137 = 0;
      v135 = 0u;
      v136 = 0u;
      sub_10A2C(&v135, &unk_954DB0);
    }

    v110(v116, enum case for ShelfBackground.none(_:), v79);
    goto LABEL_41;
  }

  if (v59 < 1)
  {
    goto LABEL_60;
  }

  v60 = 0;
  v51 = v57 & 0xC000000000000001;
  v126 = (v122 + 8);
  v109[1] = v122 + 32;
  v127 = _swiftEmptyArrayStorage;
  v52 = &selRef_setSpeed_;
  while (1)
  {
    if (v51)
    {
      v61 = sub_76A770();
    }

    else
    {
      v61 = *(v57 + 8 * v60 + 32);
      swift_unknownObjectRetain();
    }

    if ([v61 representedElementCategory])
    {
      goto LABEL_20;
    }

    [v61 frame];
    v62 = CGRectGetMinX(v142) - v42 - a2;
    [v61 frame];
    v63 = CGRectGetMaxX(v143) - a2;
    if (v62 > v63)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v62 > v38 || v38 >= v63)
    {
      goto LABEL_20;
    }

    v64 = [v61 indexPath];
    v65 = v120;
    sub_757590();

    v66 = sub_7575C0();
    (*v126)(v65, v128);
    if (!v58)
    {
      goto LABEL_57;
    }

    if (v66 == 0x8000000000000000 && v58 == -1)
    {
      break;
    }

    if (!(v66 % v58))
    {
      v67 = [v61 indexPath];
      sub_757590();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_7BA20(0, *(v127 + 2) + 1, 1, v127);
      }

      v69 = *(v127 + 2);
      v68 = *(v127 + 3);
      if (v69 >= v68 >> 1)
      {
        v127 = sub_7BA20(v68 > 1, v69 + 1, 1, v127);
      }

      swift_unknownObjectRelease();
      v70 = v127;
      *(v127 + 2) = v69 + 1;
      (*(v122 + 32))(v70 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v69, v119, v128);
      goto LABEL_21;
    }

LABEL_20:
    swift_unknownObjectRelease();
LABEL_21:
    if (v59 == ++v60)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_4237F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7649A0();
  *a1 = result;
  return result;
}

uint64_t sub_423824()
{
  sub_BD88(&qword_9477F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_784250;
  v1 = sub_7677C0();
  *(v0 + 32) = v1;
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v0 + 48) = sub_767B80();
  *(v0 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v0 + 64) = sub_7676E0();
  *(v0 + 72) = &protocol witness table for UITraitLayoutDirection;
  *(v0 + 80) = v1;
  *(v0 + 88) = &protocol witness table for UITraitUserInterfaceStyle;
  result = sub_767890();
  *(v0 + 96) = result;
  *(v0 + 104) = &protocol witness table for UITraitHorizontalSizeClass;
  qword_954DC0 = v0;
  return result;
}

uint64_t sub_4238D8()
{
  v0 = sub_766690();
  sub_161DC(v0, qword_99DA20);
  sub_BE38(v0, qword_99DA20);
  return sub_7666A0();
}

__n128 sub_42392C()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_99DA40 = *&UIEdgeInsetsZero.top;
  *&qword_99DA50 = v1;
  return result;
}

uint64_t sub_423948()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_954DC8);
  sub_BE38(v0, qword_954DC8);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_423AAC(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v36 = a1;
  sub_75CE20();
  if (qword_93D5A0 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E8F0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = sub_766CA0();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  sub_766CB0();
  v14 = v3[1];
  v14(v5, v2);
  sub_75CEE0();
  if (qword_93D598 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v6, qword_99E8D8);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v38);
  v34(v15, v5, v2);
  sub_766CB0();
  v14(v5, v2);
  sub_75CE60();
  v32 = v14;
  if (qword_93D588 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v6, qword_99E8A8);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v38);
  v34(v18, v5, v2);
  sub_766CB0();
  v32(v5, v2);
  sub_75CE00();
  v19 = v11;
  if (qword_93D590 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v6, qword_99E8C0);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  sub_766CB0();
  v24 = v32;
  v32(v5, v2);
  sub_75CEF0();
  sub_75CE40();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_B1B4(v38);
  v23(v25, v5, v2);
  sub_766CB0();
  v24(v5, v2);
  return sub_75CE50();
}

uint64_t sub_424094()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_954DE0);
  sub_BE38(v0, qword_954DE0);
  if (qword_93D0C0 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_954DC8);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

char *sub_4241F8(uint64_t a1)
{
  v2 = v1;
  v111 = a1;
  v108[1] = swift_getObjectType();
  v3 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v3 - 8);
  v5 = v108 - v4;
  v6 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v6 - 8);
  v8 = v108 - v7;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_displayModeTransitionCoordinator] = 0;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView;
  *&v1[v9] = [objc_allocWithZone(UIScrollView) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_shadowView;
  sub_758E80();
  *&v1[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView;
  sub_75CD70();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView;
  *&v1[v13] = [objc_allocWithZone(type metadata accessor for AppPromotionMediaContainerView()) init];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView;
  v15 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageContentView());
  *&v1[v14] = sub_3D0DA8(0);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView;
  v17 = objc_allocWithZone(type metadata accessor for AppPromotionLearnMoreView());
  *&v1[v16] = sub_6C5480(0);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_separatorView;
  type metadata accessor for SeparatorView();
  *&v2[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *&v2[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView;
  *&v2[v20] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView] = 0;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  *&v2[v21] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_videoBackgroundColor] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_haveFlashedScrollIndicators] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_isCollapsing] = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaOverlayStyle;
  v23 = enum case for MediaOverlayStyle.matchSystem(_:);
  v24 = sub_75CA40();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_includeBorderInDarkMode] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_defaultPageMargin] = 0;
  v25 = [objc_opt_self() buttonWithType:7];
  sub_76A3D0();
  v26 = sub_76A3F0();
  (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
  sub_76A420();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_closeButton] = v25;
  v27 = type metadata accessor for AppPromotionDetailPageView();
  v113.receiver = v2;
  v113.super_class = v27;
  v28 = v25;
  v29 = objc_msgSendSuper2(&v113, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v29;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v33 setClipsToBounds:0];
  v34 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView;
  [*(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView) setClipsToBounds:0];
  [*(v33 + v34) setContentInsetAdjustmentBehavior:2];
  [v33 addSubview:*(v33 + v34)];
  v35 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_shadowView;
  v36 = qword_93C580;
  v37 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_shadowView);
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_765080();
  v39 = sub_BE38(v38, qword_99B5E0);
  v40 = *(v38 - 8);
  (*(v40 + 16))(v5, v39, v38);
  (*(v40 + 56))(v5, 0, 1, v38);
  sub_758E60();

  v41 = *(v33 + v35);
  sub_758E40();

  [*(v33 + v34) addSubview:*(v33 + v35)];
  v42 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView;
  [*(v33 + v34) addSubview:*(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView)];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView;
  *(*(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_delegate + 8) = &off_891500;
  swift_unknownObjectWeakAssign();
  [*(v33 + v42) addSubview:*(v33 + v43)];
  v44 = *(v33 + v42);
  v110 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView;
  [v44 addSubview:*(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView)];
  v45 = *(v33 + v42);
  v108[0] = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView;
  [v45 addSubview:*(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView)];
  v46 = *(v33 + v42);
  v109 = v28;
  [v46 addSubview:v28];
  v47 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_separatorView;
  v48 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_separatorView);
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 labelColor];
  v52 = [v51 colorWithAlphaComponent:0.5];

  v53 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor];
  *&v50[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor] = v52;
  v54 = v52;

  [*&v50[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineView] setBackgroundColor:v54];
  [*(v33 + v42) addSubview:*(v33 + v47)];
  v55 = *(v33 + v42);
  v56 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView;
  [v55 addSubview:*(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView)];
  v57 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView;
  v58 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView);
  v59 = [v49 whiteColor];
  v60 = [v59 colorWithAlphaComponent:0.2];

  sub_75CD00();
  v61 = *(v33 + v57);
  sub_75CD10();

  [*(v33 + v57) setUserInteractionEnabled:0];
  [*(v33 + v57) setHidden:1];
  [*(v33 + v34) addSubview:*(v33 + v57)];
  v62 = v110;
  v63 = *&v110[v33];
  sub_BE70(0, &qword_955FA0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v63;
  v65 = sub_76A1F0();
  sub_3D16AC(v65);

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = *&v62[v33];
  v68 = (*&v67[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_lockupTapBlock);
  v69 = *v68;
  *v68 = sub_428F10;
  v68[1] = v66;
  swift_retain_n();
  v70 = v67;
  sub_F704(v69);
  sub_3D85CC();

  v71 = *(v33 + v56);
  v72 = &v71[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_lockupTapBlock];
  v73 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_lockupTapBlock];
  *v72 = sub_428F10;
  v72[1] = v66;

  v74 = v71;
  v75 = v108[0];
  v76 = v74;
  sub_F704(v73);
  sub_3D85CC();

  v77 = *(v33 + v75);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v77;
  v79 = sub_76A1F0();
  sub_6C53AC(v79);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = v33;
  v81 = sub_76A1F0();
  v82 = v109;
  [v109 addAction:v81 forControlEvents:64];

  if (qword_93D0A8 != -1)
  {
    swift_once();
  }

  sub_769F40();
  swift_unknownObjectRelease();
  v83 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  [*&v80[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_dismissTapGestureRecognizer] addTarget:v80 action:"dismissTapGestureRecognized"];
  v84 = *&v80[v83];
  [v84 setDelegate:v80];

  [v80 addGestureRecognizer:*&v80[v83]];
  sub_427730(0);
  v85 = *&v110[v33];
  v86 = *(v33 + v75);
  sub_761120();
  sub_768900();
  v87 = v85;
  v88 = v86;
  sub_768ED0();
  v89 = v112;
  type metadata accessor for AppPromotionDisplayModeTransitionCoordinator();
  v90 = swift_allocObject();
  *(v90 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v90 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v90 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v90 + 16) = 0;
  swift_unknownObjectWeakAssign();
  *(v90 + 40) = &off_890198;
  swift_unknownObjectWeakAssign();
  *(v90 + 56) = &off_89D0D8;
  swift_unknownObjectWeakAssign();
  *(v90 + 64) = v89;
  Strong = swift_unknownObjectWeakLoadStrong();
  v110 = v89;
  if (Strong)
  {
    v92 = Strong;
    v93 = *(v90 + 40);
    ObjectType = swift_getObjectType();
    v95 = v89;
    v96 = ObjectType;
    v97 = *(v93 + 8);
    v98 = v87;
    v99 = *(v97 + 16);
    v100 = v95;
    v101 = v97;
    v82 = v109;
    v99(0, v96, v101);
    v87 = v98;
  }

  else
  {
    v102 = v89;
  }

  v103 = swift_unknownObjectWeakLoadStrong();
  if (v103)
  {
    v104 = v103;
    v105 = *(v90 + 56);
    v106 = swift_getObjectType();
    (*(*(v105 + 8) + 16))(0, v106);
  }

  sub_3CAE9C(0);

  *&v80[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_displayModeTransitionCoordinator] = v90;

  return v80;
}

void sub_424EA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_97D6C();
      swift_unknownObjectRelease();
    }

    v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_displayModeTransitionCoordinator];
    if (v2)
    {
      v3 = *(v2 + 16);
      *(v2 + 16) = 1;

      sub_3CAE9C((v3 & 1) == 0);
    }
  }
}

void sub_424F58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_97620();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_424FD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_97D78();
      swift_unknownObjectRelease();
    }

    v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_displayModeTransitionCoordinator];
    if (v2)
    {
      v3 = *(v2 + 16);
      *(v2 + 16) = 0;

      sub_3CAE9C(v3);
    }
  }
}

void sub_425080()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_268E5C();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_97848();
      swift_unknownObjectRelease();
    }
  }
}

void sub_425138()
{
  v1 = v0;
  v2 = sub_75CA40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v10 = v3[2];
  v10(v8, v0 + v9, v2);
  sub_428E60(&qword_953438, &type metadata accessor for MediaOverlayStyle);
  v11 = sub_7691C0();
  v28 = v3[1];
  v28(v8, v2);
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    v26 = v10;
    v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView);
    v12(v8, v1 + v9, v2);
    v14 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_mediaOverlayStyle;
    swift_beginAccess();
    v27 = v9;
    v25 = v3[3];
    v25(&v13[v14], v8, v2);
    swift_endAccess();
    v15 = v26;
    v26(v5, &v13[v14], v2);
    v16 = sub_75CA20();
    v17 = v5;
    v18 = v28;
    v28(v17, v2);
    [v13 setOverrideUserInterfaceStyle:v16];
    v18(v8, v2);
    v19 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView);
    v15(v8, v1 + v27, v2);
    v20 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_mediaOverlayStyle;
    swift_beginAccess();
    v21 = v25;
    v25((v19 + v20), v8, v2);
    swift_endAccess();
    sub_3D1780();
    v22 = v28;
    v28(v8, v2);
    v23 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView);
    v26(v8, v1 + v27, v2);
    v24 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_mediaOverlayStyle;
    swift_beginAccess();
    v21(v23 + v24, v8, v2);
    swift_endAccess();
    sub_6C5B90();
    v22(v8, v2);
    sub_427C9C();
    sub_427B84(0);
  }
}

void (*sub_4254C4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView);
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_videoView;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_42552C;
}

void sub_42552C(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_428E60(&qword_93F500, type metadata accessor for VideoView);
      v8 = v5;
      v9 = [v7 superview];
      if (v9)
      {
        v10 = v9;
        sub_BE70(0, &qword_93E550);
        v11 = v4;
        v12 = sub_76A1C0();

        v13 = *(a1 + 16);
        if (v12)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }

          [*(v13 + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v5;
    }

    v24 = *(a1 + 8);
    swift_unknownObjectWeakAssign();
    sub_1EC0F4();
    v25 = [v24 traitCollection];
    LOBYTE(v24) = sub_7699E0();

    v26 = *(a1 + 8);
    if (v24)
    {
      sub_426F70();
    }

    [v26 setNeedsLayout];

    v27 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_428E60(&qword_93F500, type metadata accessor for VideoView);
      v31 = v5;
      v16 = [v7 superview];
      if (v16)
      {
        v17 = v16;
        sub_BE70(0, &qword_93E550);
        v18 = v4;
        v19 = sub_76A1C0();

        v20 = *(a1 + 16);
        if (v19)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }

          [*(v20 + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }

      v23 = v31;
    }

    else
    {
      v23 = v5;
    }

    v28 = *(a1 + 8);
    v32 = v23;
    swift_unknownObjectWeakAssign();
    sub_1EC0F4();

    v29 = [v28 traitCollection];
    LOBYTE(v28) = sub_7699E0();

    v30 = *(a1 + 8);
    if (v28)
    {
      sub_426F70();
    }

    [v30 setNeedsLayout];
    v27 = v32;
  }
}

id sub_425864()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for AppPromotionDetailPageView();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  [v0 bounds];
  result = CGRectIsEmpty(v23);
  if ((result & 1) == 0)
  {
    v3 = [v0 traitCollection];
    v4 = sub_7699E0();

    if (v4)
    {
      sub_425E8C();
    }

    else
    {
      sub_425B14();
    }

    v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView] bounds];
    [v5 setContentSize:{v6, v7}];
    [v1 bounds];
    [v5 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v8 = CGRectGetWidth(v24) * 0.5;
    [v1 bounds];
    [v5 setCenter:{v8, CGRectGetHeight(v25) * 0.5}];
    v9 = [v1 traitCollection];
    v10 = sub_7699E0();

    if (v10)
    {
      sub_426EA4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = [v1 traitCollection];
      v14 = sub_7699D0();

      if (v14)
      {
        [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_closeButton] frame];
        v16 = v15;
        [v12 frame];
        v18.f64[0] = v17 + -53.0;
        v19 = &v12[qword_99A1B0];
        v20 = *&v12[qword_99A1B0];
        v21 = *&v12[qword_99A1B0 + 16];
        *v19 = xmmword_79D2B0;
        *(v19 + 2) = *&v18.f64[0];
        *(v19 + 3) = v16 + 25.0;
        v18.f64[1] = v16 + 25.0;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_79D2B0, v20), vceqq_f64(v18, v21)))) & 1) == 0)
        {
          sub_54EB4();
        }
      }
    }

    sub_4261E4();
    return sub_426A78();
  }

  return result;
}

id sub_425B14()
{
  v1 = v0;
  [v0 bounds];
  Height = CGRectGetHeight(v25);
  if (qword_93D0B0 != -1)
  {
    swift_once();
  }

  v3 = sub_766690();
  sub_BE38(v3, qword_99DA20);
  [v0 bounds];
  CGRectGetWidth(v26);
  sub_766660();
  if (v4 >= Height)
  {
    v4 = Height;
  }

  v5 = ceil(v4);
  [v0 bounds];
  Width = CGRectGetWidth(v27);
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView];
  v8 = type metadata accessor for AppPromotionMediaContainerView();
  v24.receiver = v7;
  v24.super_class = v8;
  objc_msgSendSuper2(&v24, "frame");
  v23.receiver = v7;
  v23.super_class = v8;
  objc_msgSendSuper2(&v23, "setFrame:", 0.0, 0.0, Width, v5);
  sub_1EC618();
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView] setFrame:{0.0, 0.0, Width, v5}];
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView];
  sub_3D1D40(v22, v5);
  sub_3D1F8C(v22, v20);
  v10 = [v9 traitCollection];
  if (sub_7699D0())
  {
    v11 = sub_769A00();

    if (v11)
    {
      v12 = *v20;
      sub_577F7C(v10, v21, v18);
      sub_B170(v18, v19);
      sub_7673F0();
      v14 = v12 + v13;
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (sub_7699D0())
  {
    sub_576290(v10, v18, 0.0, 0.0, Width, v5);
  }

  else
  {
    sub_576C98(v10, v18, 0.0, 0.0, Width, v5);
  }

  sub_B170(v18, v19);
  sub_7673F0();
  Width = v15;
  v14 = v16;
LABEL_13:
  sub_BEB8(v18);

  sub_3D6758(v20);
  sub_3D67AC(v22);
  [v9 setFrame:{0.0, 0.0, Width, v14}];
  [v9 setNeedsLayout];
  [v9 layoutIfNeeded];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_shadowView] setFrame:{0.0, 0.0, Width, v14}];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView] setFrame:{0.0, 0.0, Width, v14}];
  return [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView] setFrame:{0.0, 0.0, Width, v14}];
}

id sub_425E8C()
{
  v1 = v0;
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_shadowView] setFrame:{0.0, 0.0}];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView] setFrame:{0.0, 0.0, v3, v5}];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView] setFrame:{0.0, 0.0, v3, v5}];
  if (qword_93D0B0 != -1)
  {
    swift_once();
  }

  v6 = sub_766690();
  sub_BE38(v6, qword_99DA20);
  [v0 bounds];
  CGRectGetHeight(v34);
  sub_766650();
  v31 = ceil(v7);
  [v0 bounds];
  Height = CGRectGetHeight(v35);
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView];
  v9 = [v1 traitCollection];
  [v1 bounds];
  sub_769CA0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = type metadata accessor for AppPromotionMediaContainerView();
  v33.receiver = v8;
  v33.super_class = v18;
  objc_msgSendSuper2(&v33, "frame");
  v32.receiver = v8;
  v32.super_class = v18;
  objc_msgSendSuper2(&v32, "setFrame:", v11, v13, v15, v17);
  sub_1EC618();
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = v31;
  v36.size.height = Height;
  CGRectGetMaxX(v36);
  [v1 bounds];
  CGRectGetWidth(v37);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v31;
  v38.size.height = Height;
  CGRectGetWidth(v38);
  [v1 bounds];
  CGRectGetHeight(v39);
  v19 = [v1 traitCollection];
  [v1 bounds];
  sub_769CA0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView];
  [v28 setFrame:{v21, v23, v25, v27}];
  [v28 setNeedsLayout];
  [v28 layoutIfNeeded];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView] setFrame:{v21, v23, v25, v27}];
  result = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView];
  if (result)
  {
    return [result setFrame:{v21, v23, v25, v27}];
  }

  return result;
}

uint64_t sub_4261E4()
{
  v1 = v0;
  v80 = sub_767510();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v3 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_75D850();
  v4 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v73 - v7;
  v8 = sub_75CF00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  *&v85 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v73 - v13;
  v15 = [v0 traitCollection];
  sub_7699D0();

  v83 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView];
  [v83 frame];
  sub_769D10();
  v82 = v16;
  v81 = v17;
  v19 = v18;
  v21 = v20;
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView];
  if (qword_93CFA8 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v8, qword_99D870);
  v24 = type metadata accessor for SubscriptionLockupView();
  v90.receiver = v22;
  v90.super_class = v24;
  v84 = v24;
  objc_msgSendSuper2(&v90, "layoutMargins");
  v26 = v25;
  v28 = v27;
  v29 = [v22 traitCollection];
  v86 = v9;
  v30 = *(v9 + 16);
  v79 = v8;
  v77 = v30;
  v30(v14, v23, v8);
  v31 = sub_75CE70();
  if ((v33 & 1) == 0 && ((v31 | v32) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v34 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v34 = qword_946938;
    }

    v35 = v76;
    v36 = sub_BE38(v76, v34);
    v37 = v74;
    (*(v4 + 16))(v74, v36, v35);
    v38 = v75;
    (*(v4 + 32))(v75, v37, v35);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v4 + 8))(v38, v35);
  }

  sub_75CDB0();
  v76 = v39;
  v41 = v40;

  v42 = *(v86 + 8);
  v43 = v79;
  v86 += 8;
  v42(v14, v79);
  v44 = v28 + v26 + v41;
  v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_separatorView];
  v46 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v47 = v78;
  v48 = v80;
  (*(v78 + 16))(v3, &v45[v46], v80);
  sub_7674D0();
  v50 = v49;
  (*(v47 + 8))(v3, v48);
  v51 = [v1 traitCollection];
  v52 = v19;
  if (sub_769A00())
  {
    v53 = v85;
    if (qword_93D0C8 != -1)
    {
      swift_once();
    }

    v54 = qword_954DE0;
  }

  else
  {
    v53 = v85;
    if (qword_93D0C0 != -1)
    {
      swift_once();
    }

    v54 = qword_954DC8;
  }

  v55 = sub_BE38(v43, v54);
  v77(*&v53, v55, v43);

  sub_75CDD0();
  v57 = (v44 - v56) * 0.5;
  v58 = [v1 traitCollection];
  v59 = sub_769A00();

  if (v59)
  {
    v60 = 18.0;
  }

  else
  {
    v60 = 18.0 - v57;
  }

  v61 = v21 + v57;
  v62 = v50 + v44 + v60;
  v85 = v44;
  v63 = v50;
  v64 = v82;
  v91.origin.x = v82;
  v65 = v81;
  v91.origin.y = v81;
  v91.size.width = v52;
  v91.size.height = v61;
  MinX = CGRectGetMinX(v91);
  v92.origin.x = v64;
  v92.origin.y = v65;
  v92.size.width = v52;
  v92.size.height = v61;
  [v45 setFrame:{MinX, CGRectGetMaxY(v92) - v62, v52, v63}];
  v93.origin.x = v64;
  v93.origin.y = v65;
  v93.size.width = v52;
  v93.size.height = v61;
  v67 = CGRectGetMinX(v93);
  [v45 frame];
  [v22 setFrame:{v67, v60 + CGRectGetMaxY(v94), *&v76, v85}];
  v68 = v83;
  [v45 setHidden:{objc_msgSend(*&v83[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_separatorView], "isHidden") ^ 1}];
  [v22 setHidden:{objc_msgSend(*&v68[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView], "isHidden") ^ 1}];
  if (qword_93D0B8 != -1)
  {
    swift_once();
  }

  v69 = v84;
  v89.receiver = v22;
  v89.super_class = v84;
  objc_msgSendSuper2(&v89, "setLayoutMargins:", xmmword_99DA40, *&qword_99DA50, unk_99DA58);
  v70 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
  v88.receiver = v22;
  v88.super_class = v69;
  objc_msgSendSuper2(&v88, "layoutMargins");
  [v70 setLayoutMargins:?];
  v71 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
  v87.receiver = v22;
  v87.super_class = v69;
  objc_msgSendSuper2(&v87, "layoutMargins");
  [v71 setLayoutMargins:?];
  return (v42)(*&v53, v43);
}

id sub_426A78()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_7699D0();

  [v1 bounds];
  CGRectGetMaxX(v15);
  [v1 bounds];
  CGRectGetMinY(v16);
  v3 = [v1 traitCollection];
  [v1 bounds];
  sub_769CA0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_closeButton];

  return [v12 setFrame:{v5, v7, v9, v11}];
}

id sub_426BA8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_7699E0();

  if (v3)
  {
    sub_425E8C();
  }

  else
  {
    sub_425B14();
  }

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView] layoutIfNeeded];
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView] bounds];

  return [v4 setContentSize:{v5, v6}];
}

void sub_426DA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_haveFlashedScrollIndicators;
  if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent;
    [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent) contentSize];
    v5 = v4;
    [*(v1 + v3) bounds];
    if (CGRectGetHeight(v10) < v5)
    {
      [*(v1 + v3) flashScrollIndicators];
      *(v1 + v2) = 1;
    }
  }

  v6 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView);
    [v7 contentSize];
    v9 = v8;
    [v7 bounds];
    if (CGRectGetHeight(v11) < v9)
    {
      [v7 flashScrollIndicators];
      *(v0 + v6) = 1;
    }
  }
}

id sub_426EA4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_7699D0();

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView];
    v6 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent;
    [*(v5 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent) contentSize];
    v8 = v7;
    [*(v5 + v6) bounds];
    v4 = CGRectGetHeight(v12) >= v8;
  }

  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView];

  return [v9 setAlwaysBounceVertical:v4];
}

id sub_426F70()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
  }

  v5 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView;
  v6 = [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView) isHidden];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView];
  if (v4 || (v6 & 1) == 0)
  {
    if (v8)
    {
      v10 = v6;
      type metadata accessor for VideoMirrorView();
      if (swift_dynamicCastClass())
      {
        if (v10)
        {
LABEL_25:
          v45 = *&v1[v7];
          if (v45)
          {
            [v45 setHidden:0];
          }

          return [v1 setNeedsLayout];
        }

LABEL_13:
        v11 = *(v2 + v5);
        v12 = type metadata accessor for MirrorView();
        v13 = objc_allocWithZone(v12);
        swift_unknownObjectWeakInit();
        v14 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer;
        v15 = objc_allocWithZone(CALayer);
        v16 = v11;
        *&v13[v14] = [v15 init];
        *&v13[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageKVOContext] = 0;
        v13[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageObserversAdded] = 0;
        swift_unknownObjectWeakAssign();
        *&v13[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
        *&v13[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsVerticalOffset] = 0;
        v46.receiver = v13;
        v46.super_class = v12;
        v17 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v17 setClipsToBounds:1];
        [v17 setUserInteractionEnabled:0];
        v18 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer;
        [*&v17[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
        LODWORD(v19) = 1.0;
        [*&v17[v18] setOpacity:v19];
        [*&v17[v18] setAnchorPoint:{0.5, 0.5}];
        v20 = qword_93C498;
        v21 = *&v17[v18];
        if (v20 != -1)
        {
          swift_once();
        }

        sub_BD88(&qword_9452F0);
        isa = sub_7690E0().super.isa;
        [v21 setActions:isa];

        v23 = *&v17[v18];
        v24 = objc_opt_self();
        v25 = v23;
        v26 = [v24 mainScreen];
        [v26 scale];
        v28 = v27;

        [v25 setContentsScale:v28];
        [*&v17[v18] setMasksToBounds:1];
        v29 = *&v17[v18];
        v30 = *&CATransform3DIdentity.m33;
        v51 = *&CATransform3DIdentity.m31;
        v52 = v30;
        v31 = *&CATransform3DIdentity.m43;
        v53 = *&CATransform3DIdentity.m41;
        v54 = v31;
        v32 = *&CATransform3DIdentity.m13;
        v47 = *&CATransform3DIdentity.m11;
        v48 = v32;
        v33 = *&CATransform3DIdentity.m23;
        v49 = *&CATransform3DIdentity.m21;
        v50 = v33;
        [v29 setTransform:&v47];
        sub_15F084();
        v34 = [v17 layer];

        [v34 addSublayer:*&v17[v18]];
        v35 = *&v1[v7];
        if (!v35)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }

      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else if (!v4)
    {
      if (v6)
      {
        return [v1 setNeedsLayout];
      }

      goto LABEL_13;
    }

    v38 = swift_unknownObjectWeakLoadStrong();
    v39 = *&CATransform3DIdentity.m33;
    v51 = *&CATransform3DIdentity.m31;
    v52 = v39;
    v40 = *&CATransform3DIdentity.m43;
    v53 = *&CATransform3DIdentity.m41;
    v54 = v40;
    v41 = *&CATransform3DIdentity.m13;
    v47 = *&CATransform3DIdentity.m11;
    v48 = v41;
    v42 = *&CATransform3DIdentity.m23;
    v49 = *&CATransform3DIdentity.m21;
    v50 = v42;
    v43 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
    v17 = sub_69A56C(v38, &v47, 1.0, 0.0);
    v35 = *&v1[v7];
    if (!v35)
    {
LABEL_16:
      v36 = 0;
LABEL_24:
      *&v1[v7] = v17;
      v44 = v17;

      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_25;
    }

LABEL_23:
    [v35 removeFromSuperview];
    v36 = *&v1[v7];
    goto LABEL_24;
  }

  if (v8)
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView] removeFromSuperview];
    v9 = *&v1[v7];
  }

  else
  {
    v9 = 0;
  }

  *&v1[v7] = 0;

  return [v1 setNeedsLayout];
}

void sub_427484(char a1, char a2)
{
  v5 = [v2 traitCollection];
  v6 = sub_7699E0();

  if ((v6 & 1) == 0)
  {
    if (a1)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    if (a2)
    {
      v10 = objc_opt_self();
      v16[4] = sub_1EEBE0;
      v16[5] = v9;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_23F0CC;
      v16[3] = &unk_891560;
      v11 = _Block_copy(v16);

      [v10 animateWithDuration:4 delay:v11 options:0 animations:0.3 completion:0.0];

      _Block_release(v11);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView);
        v14 = Strong;

        [v13 setAlpha:v7];
        v15 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_closeButton];
        [v15 setAlpha:v7];
      }
    }
  }
}

void sub_42769C(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView) setAlpha:a1];
    [*&v3[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_closeButton] setAlpha:a1];
  }
}

id sub_427730(void *a1)
{
  v2 = v1;
  sub_4278C4(a1);
  sub_427B84(a1);
  v4 = [v1 traitCollection];
  v5 = sub_7699F0();

  if (v5)
  {
    v6 = -*&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_defaultPageMargin];
  }

  else
  {
    v6 = 0.0;
  }

  [*&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v6}];
  sub_4280EC();
  sub_427C9C();
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_displayModeTransitionCoordinator])
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v8 = [Strong traitCollection];

      if (v8)
      {
        v9 = v8;
        if (sub_7699D0())
        {
          LODWORD(v8) = sub_769A00();
        }

        else
        {
          LODWORD(v8) = 0;
        }

        if (!a1)
        {
LABEL_18:
          if ((v8 & 1) == 0)
          {
LABEL_20:

            goto LABEL_21;
          }

LABEL_19:
          sub_3CAE9C(0);
          goto LABEL_20;
        }

LABEL_11:
        v10 = a1;
        if (sub_7699D0())
        {
          v11 = sub_769A00();

          if (((v8 ^ v11) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {

          if ((v8 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (!a1)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

LABEL_21:

  return [v2 setNeedsLayout];
}

void sub_4278C4(void *a1)
{
  v2 = v1;
  v4 = sub_7593D0();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [a1 horizontalSizeClass];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v2 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (!a1 || v9 != v11)
  {
    sub_426EA4();
    v12 = [v2 traitCollection];
    sub_7699E0();

    v13 = enum case for CornerStyle.continuous(_:);
    v14 = *(v5 + 104);
    v14(v8, enum case for CornerStyle.continuous(_:), v4);
    sub_75CCD0();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v14(v8, v13, v4);
    sub_758E70();
    v15(v8, v4);
    v14(v8, v13, v4);
    sub_75CCD0();
    v15(v8, v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong _setCornerRadius:26.0];

    v17 = [v2 traitCollection];
    v18 = sub_7699E0();

    if (v18)
    {
      sub_426F70();
    }

    else
    {
      v19 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView];
      if (v19)
      {
        [v19 setHidden:1];
      }
    }

    [v2 setNeedsLayout];
  }
}

void sub_427B84(id a1)
{
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!a1 || v3 != v5)
  {
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_includeBorderInDarkMode] == 1)
    {
      v6 = [v1 traitCollection];
      v7 = [v6 userInterfaceStyle];

      v8 = v7 != &dword_0 + 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView];

    [v9 setHidden:v8];
  }
}

void sub_427C9C()
{
  v1 = v0;
  v2 = sub_75CA40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v43 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_separatorView);
  v8 = v43;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v10 = *(v3 + 16);
  v48 = v3 + 16;
  v10(v7, v0 + v9, v2);
  v11 = sub_75CA20();
  v12 = *(v3 + 8);
  v12(v7, v2);
  [v8 setOverrideUserInterfaceStyle:v11];
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView);
  v44 = v9;
  v45 = v1;
  v14 = v7;
  v42 = v7;
  v15 = v7;
  v16 = v2;
  v10(v15, v1 + v9, v2);
  v41 = v10;
  v17 = sub_75CA20();
  v18 = v14;
  v19 = v16;
  v46 = v3 + 8;
  v12(v18, v16);
  v47 = v12;
  v20 = v13;
  [v13 setOverrideUserInterfaceStyle:v17];
  v21 = v40;
  v22 = v19;
  v10(v40, v1 + v9, v19);
  sub_75CA20();
  v12(v21, v19);
  sub_769240();
  v23 = sub_769210();

  v49[3] = sub_BE70(0, &qword_954EE0);
  v49[0] = v23;
  v24 = v23;
  sub_61D394(v49);
  v25 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView;
  v26 = [*&v20[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView] isHidden];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView;
  if (!v26)
  {
    v27 = v25;
  }

  v28 = [*(*&v20[v27] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  [v28 setCompositingFilter:v24];

  v29 = [*&v20[v25] isHidden];
  v30 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView;
  if (!v29)
  {
    v30 = v25;
  }

  v31 = [*(*(*&v20[v30] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel) layer];
  [v31 setCompositingFilter:v24];

  v32 = [*&v20[v25] isHidden];
  v33 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView;
  if (!v32)
  {
    v33 = v25;
  }

  v34 = *(*&v20[v33] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  v35 = v42;
  v41(v42, v45 + v44, v22);
  v36 = v34;
  v37 = sub_75CA20();
  v47(v35, v22);
  if (v37 == 1)
  {
    sub_BE70(0, &qword_93E540);
    v38 = sub_76A0F0();
  }

  else
  {
    v38 = [objc_opt_self() whiteColor];
  }

  v39 = v38;
  [v36 setTintColor:v38];
}

uint64_t sub_4280EC()
{
  v1 = sub_75CF00();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v18 - v7;
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView];
  v10 = [v0 traitCollection];
  if (sub_769A00())
  {
    if (qword_93D0C8 != -1)
    {
      swift_once();
    }

    v11 = qword_954DE0;
  }

  else
  {
    if (qword_93D0C0 != -1)
    {
      swift_once();
    }

    v11 = qword_954DC8;
  }

  v12 = sub_BE38(v1, v11);
  v13 = *(v2 + 16);
  v13(v8, v12, v1);

  v14 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
  v13(v4, v8, v1);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 24))(&v14[v15], v4, v1);
  swift_endAccess();
  [v14 setNeedsLayout];
  v16 = *(v2 + 8);
  v16(v4, v1);
  [v9 setNeedsLayout];
  return (v16)(v8, v1);
}

uint64_t sub_428384(int a1, id a2)
{
  [a2 locationInView:v2];
  v4 = v3;
  v6 = v5;
  v7 = [v2 hitTest:0 withEvent:?];
  sub_BE70(0, &qword_94AB00);
  if ((sub_76A1C0() & 1) == 0)
  {

    return 1;
  }

  [v2 bounds];
  v12.x = v4;
  v12.y = v6;
  if (!CGRectContainsPoint(v13, v12))
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    return 0;
  }

  sub_BE70(0, &qword_93E550);
  v7 = v7;
  v8 = v2;
  v9 = sub_76A1C0();

  if ((v9 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return 0;
}

id sub_42867C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppPromotionDetailPageView()
{
  result = qword_954EA8;
  if (!qword_954EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_428864()
{
  result = sub_75CA40();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_42895C()
{
  result = qword_954EB8;
  if (!qword_954EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_954EB8);
  }

  return result;
}

void sub_4289D0(void *a1)
{
  v2 = v1;
  sub_1EE378();
  swift_unknownObjectWeakAssign();
  sub_1EC0F4();
  v3 = [v1 traitCollection];
  v4 = sub_7699E0();

  if (v4)
  {
    sub_426F70();
  }

  [v2 setNeedsLayout];
}

uint64_t (*sub_428A88(uint64_t **a1))()
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
  v2[4] = sub_4254C4(v2);
  return sub_21028;
}

CGFloat sub_428B38()
{
  v1 = *v0;
  [*v0 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

uint64_t sub_428B94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_428BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_428C54(uint64_t *a1))()
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
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_428CF0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_BE70(0, &qword_93E550);
  v5 = v2;
  v6 = sub_76A1C0();

  return v6 & 1;
}

uint64_t sub_428E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_428ED0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_428F28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_428F60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_428F78()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_displayModeTransitionCoordinator) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView;
  *(v1 + v2) = [objc_allocWithZone(UIScrollView) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_shadowView;
  sub_758E80();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView;
  sub_75CD70();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for AppPromotionMediaContainerView()) init];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView;
  v8 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageContentView());
  *(v1 + v7) = sub_3D0DA8(0);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView;
  v10 = objc_allocWithZone(type metadata accessor for AppPromotionLearnMoreView());
  *(v1 + v9) = sub_6C5480(0);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_separatorView;
  type metadata accessor for SeparatorView();
  *(v1 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView;
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView) = 0;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  *(v1 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_videoBackgroundColor) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_haveFlashedScrollIndicators) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_isCollapsing) = 0;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaOverlayStyle;
  v16 = enum case for MediaOverlayStyle.matchSystem(_:);
  v17 = sub_75CA40();
  (*(*(v17 - 8) + 104))(v1 + v15, v16, v17);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_includeBorderInDarkMode) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_defaultPageMargin) = 0;
  sub_76A840();
  __break(1u);
}

unint64_t sub_42921C(uint64_t a1, void *a2, void (*a3)(char *, char *, uint64_t), char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v246 = a4;
  v235 = a3;
  v234 = a2;
  v17 = sub_BD88(&qword_946D98);
  __chkstk_darwin(v17 - 8);
  v205 = &v198 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v213 = &v198 - v20;
  v21 = sub_BD88(&unk_948710);
  __chkstk_darwin(v21 - 8);
  v223 = &v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v224 = &v198 - v24;
  v25 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v25 - 8);
  v222 = &v198 - v26;
  v27 = sub_75A6B0();
  __chkstk_darwin(v27 - 8);
  v211 = &v198 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v210 = &v198 - v30;
  __chkstk_darwin(v31);
  v217 = &v198 - v32;
  __chkstk_darwin(v33);
  v216 = &v198 - v34;
  v221 = sub_75A6E0();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v209 = &v198 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v215 = &v198 - v37;
  v226 = sub_75DC30();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v212 = &v198 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v238 = &v198 - v40;
  v204 = type metadata accessor for ScreenshotDisplayConfiguration();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v233 = &v198 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v42 - 8);
  v206 = &v198 - v43;
  v219 = sub_766690();
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v239 = &v198 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_75C9A0();
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v230 = &v198 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_75C930();
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
  v55 = sub_BD88(&unk_948720);
  __chkstk_darwin(v55 - 8);
  v208 = &v198 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v240 = &v198 - v58;
  __chkstk_darwin(v59);
  v247 = &v198 - v60;
  v61 = sub_760770();
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v198 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v67 = &v198 - v66;
  v68 = sub_BD88(&unk_93F620);
  *&v69 = __chkstk_darwin(v68 - 8).n128_u64[0];
  v71 = &v198 - v70;
  v72 = [v9 contentView];
  [v72 setLayoutMargins:{a6, a7, a8, a9}];

  v73 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_lockupView];
  *&v73[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v73 setNeedsLayout];
  v74 = sub_75C840();
  (*(*(v74 - 8) + 56))(v71, 1, 1, v74);
  sub_223E1C(a1, v71, v246);
  sub_10A2C(v71, &unk_93F620);
  sub_BE70(0, &qword_93E540);
  v75 = sub_76A000();
  [v10 setBackgroundColor:v75];

  sub_75BCC0();
  (*(v62 + 13))(v64, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v61);
  sub_42D710(&qword_954EE8, &type metadata accessor for ScreenshotsDisplayStyle);
  v249 = v67;
  v76 = sub_7691C0();
  v78 = (v62 + 8);
  v77 = *(v62 + 1);
  v248 = v61;
  (v77)(v64, v61);
  if (v76)
  {
    [*&v10[OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots] setHidden:1];
    v62 = &unk_90D000;
LABEL_148:
    [v10 *(v62 + 463)];
    return (v77)(v249, v248);
  }

  v79 = sub_75BC70();
  if (v79 >> 62)
  {
    v76 = v79;
    v80 = sub_76A860();
    v79 = v76;
  }

  else
  {
    v80 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
  }

  v229 = v77;
  if (v80)
  {
    if ((v79 & 0xC000000000000001) != 0)
    {
      v76 = v79;
      v237 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)))
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
  v67 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots];
  v228 = sub_75BCA0();
  v241 = sub_75BC80();
  v81 = sub_75BCF0();
  if (v81 >> 62)
  {
    v76 = v81;
    v82 = sub_76A860();
    v81 = v76;
  }

  else
  {
    v82 = *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8));
  }

  v10 = v237;
  if (v82)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v236 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8)))
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
  sub_42B534(v247);

  v77 = sub_75BCA0();
  v76 = sub_75BC80();
  v84 = sub_75BC70();
  if (v84 >> 62)
  {
    v88 = v84;
    v85 = sub_76A860();
    v84 = v88;
  }

  else
  {
    v85 = *(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8));
  }

  v227 = v62 + 8;
  if (v85)
  {
    if ((v84 & 0xC000000000000001) == 0)
    {
      if (!*(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_52;
      }

      v78 = *(v84 + 32);

      goto LABEL_25;
    }

LABEL_48:
    v78 = sub_76A770();
LABEL_25:

    goto LABEL_27;
  }

  v78 = 0;
LABEL_27:
  v86 = sub_75BCF0();
  if (v86 >> 62)
  {
    v89 = v86;
    v90 = sub_76A860();
    v86 = v89;
    if (v90)
    {
LABEL_29:
      if ((v86 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)))
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
      v87 = sub_76A770();
      goto LABEL_32;
    }
  }

  else if (*(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_29;
  }

  v87 = 0;
LABEL_38:
  if ((sub_760760() & 1) == 0)
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
    sub_7666A0();

    v93 = v243;
    v95 = v245;
    (*(v243 + 104))(v96, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v245);
    v94 = v244;
    (*(v93 + 32))(v244, v96, v95);
    goto LABEL_76;
  }

  v91 = sub_55BABC(v78, v87, 0, 1);
  v77 = v91;
  v10 = (v91 >> 62);
  if (v91 >> 62)
  {
LABEL_53:
    v200 = sub_76A860();
    if (v78)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

  v200 = *(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8));
  if (v78)
  {
LABEL_42:
    v92 = sub_759690();
    goto LABEL_55;
  }

LABEL_54:
  v92 = 0;
LABEL_55:
  v198 = sub_55BE04(v92);

  v235 = v78;
  if (v78)
  {
    v97 = sub_759690();
  }

  else
  {
    v97 = 0;
  }

  v95 = v245;
  v98 = v206;
  v99 = v248;
  (*(v62 + 2))(v206, v249, v248);
  (*(v62 + 7))(v98, 0, 1, v99);
  v199 = sub_55C32C(v97, v98);

  sub_10A2C(v98, &unk_94DF00);
  if (v10)
  {
    v100 = sub_76A860();
  }

  else
  {
    v100 = *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8));
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
    v108 = sub_75C920();
    v109 = *(v106 + 8);
    (v109)(v101, v95);
    v110 = v200;
    if (((v200 >= v108) & v199) != 0 || (v105 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v206 = v109, v111 = v245, (v207)(v101, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v245), v112 = sub_75C920(), (v206)(v101, v111), ((v110 >= v112) & v198) != 0) || (v105 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v113 = v245, (v207)(v101, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v245), v114 = sub_75C920(), v115 = v113, v116 = v206, (v206)(v101, v115), v110 >= v114))
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
      v119 = sub_75C920();

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
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_151;
    }
  }

  v103 = sub_765150();

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
  sub_134D8(v251, v250);
  v102 = *(v93 + 16);
  v102(v242, v94, v95);
  if (v241 | v228)
  {
    goto LABEL_87;
  }

  result = sub_55BABC(v10, v236, 0, 1);
  if (result >> 62)
  {
    v123 = result;
    v124 = sub_76A860();
    result = v123;
    if (v124)
    {
      goto LABEL_79;
    }

    goto LABEL_86;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_86:

LABEL_87:
    sub_7666A0();
    goto LABEL_88;
  }

LABEL_79:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_132;
    }
  }

  sub_765260();
  sub_7666A0();

LABEL_88:
  sub_1ED18(v247, v240, &unk_948720);
  v125 = v230;
  sub_75C970();
  sub_BEB8(v251);
  v126 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
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
    v130 = sub_759690();
  }

  else
  {
    v130 = 0;
  }

  sub_7596B0();
  v131 = v233;
  sub_6C14C(v130, v233);

  v132 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_163BAC(v131, &v67[v132]);
  swift_endAccess();
  sub_559BA0();
  sub_161D14(v131);
  if (v10)
  {
    v10 = sub_759690();
  }

  *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform] = v10;

  sub_559DA4();

  v133 = v248;
  (*(v62 + 2))(v64, v249, v248);
  v134 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v62 + 3))(&v67[v134], v64, v133);
  swift_endAccess();
  v62 = &unk_90D000;
  [v67 setNeedsLayout];
  v229(v64, v133);
  if (v241)
  {
    (*(v220 + 104))(v215, enum case for VideoFillMode.scaleAspectFill(_:), v221);

    sub_764BC0();
    sub_765260();
    v135 = v240;
    sub_7666A0();

    (*(v218 + 56))(v135, 0, 1, v219);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v136 = v222;
    sub_764BD0();
    v137 = sub_7570A0();
    (*(*(v137 - 8) + 56))(v136, 0, 1, v137);
    v138 = v224;
    sub_764B90();
    v139 = v223;
    sub_764B80();
    type metadata accessor for VideoView();
    sub_42D710(&qword_93F500, type metadata accessor for VideoView);
    v140 = sub_75C340();
    sub_10A2C(v139, &unk_948710);
    sub_10A2C(v138, &unk_948710);
    sub_10A2C(v136, &unk_93FD30);
    sub_10A2C(v251, &unk_9443A0);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v142 = Strong;
      v143 = [Strong superview];
      if (v143)
      {
        v144 = v143;
        sub_BE70(0, &qword_93E550);
        v145 = v67;
        v146 = sub_76A1C0();

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
    v62 = &unk_90D000;
    if (v156)
    {
      v157 = v156;
      [v67 addSubview:v156];
    }

    sub_55A7A8();
    [v67 setNeedsLayout];

    v158 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v159 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
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
    [v67 *(v62 + 463)];

    (*(v151 + 8))(v161, v245);
    sub_10A2C(v247, &unk_948720);
    [v67 setHidden:0];

    v10 = v201;
    v77 = v229;
    goto LABEL_148;
  }

  if (!v236)
  {
LABEL_134:
    v186 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v187 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
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

    [v67 *(v62 + 463)];
    v189 = swift_unknownObjectWeakLoadStrong();
    if (!v189)
    {
      goto LABEL_144;
    }

    v190 = v189;
    sub_42D710(&qword_93F500, type metadata accessor for VideoView);
    v191 = [v190 superview];
    if (v191)
    {
      v192 = v191;
      sub_BE70(0, &qword_93E550);
      v193 = v67;
      v194 = sub_76A1C0();

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

    sub_55A7A8();
    [v67 *(v62 + 463)];
    goto LABEL_147;
  }

  result = sub_765750();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_102;
    }

    goto LABEL_133;
  }

LABEL_132:
  v184 = result;
  v185 = sub_76A860();
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
    sub_76A770();
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
      v162 = sub_765740();
      v155 = v213;
      sub_6C14C(v162, v213);

      v154 = 0;
    }

    v163 = v203;
    v164 = v204;
    (*(v203 + 56))(v155, v154, 1, v204);
    (*(v220 + 104))(v209, enum case for VideoFillMode.scaleAspectFill(_:), v221);
    sub_764BC0();
    sub_765260();
    v165 = v208;
    sub_7666A0();

    (*(v218 + 56))(v165, 0, 1, v219);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_1ED18(v155, v148, &qword_946D98);
    if ((*(v163 + 48))(v148, 1, v164) == 1)
    {
      sub_10A2C(v148, &qword_946D98);
    }

    else
    {
      sub_161D14(v148);
    }

    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v166 = v222;
    sub_764BD0();
    v167 = sub_7570A0();
    (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
    v168 = v224;
    sub_764B90();
    v169 = v223;
    sub_764B80();
    type metadata accessor for VideoView();
    sub_42D710(&qword_93F500, type metadata accessor for VideoView);
    v170 = sub_75C340();
    sub_10A2C(v169, &unk_948710);
    sub_10A2C(v168, &unk_948710);
    sub_10A2C(v166, &unk_93FD30);
    sub_10A2C(v251, &unk_9443A0);
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
      sub_BE70(0, &qword_93E550);
      v175 = v67;
      v176 = sub_76A1C0();

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

    sub_55A7A8();
    v62 = &unk_90D000;
    [v67 setNeedsLayout];

    v180 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v181 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
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
    sub_10A2C(v182, &qword_946D98);
    v161 = v244;
    goto LABEL_147;
  }

  v148 = v205;
  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_105;
  }

  __break(1u);
  return result;
}

uint64_t sub_42B534@<X0>(uint64_t a1@<X8>)
{
  if (sub_7699D0())
  {
    v2 = sub_766690();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = a1;
    v6 = 1;
    goto LABEL_19;
  }

  v7 = sub_769240();
  v9 = v8;
  if (v7 == sub_769240() && v9 == v10)
  {

    goto LABEL_15;
  }

  v12 = sub_76A950();

  if (v12)
  {
LABEL_15:
    if (qword_93D0D0 != -1)
    {
      swift_once();
    }

    v20 = sub_766690();
    v21 = v20;
    v22 = qword_99DA78;
    goto LABEL_18;
  }

  v13 = sub_769240();
  v15 = v14;
  if (v13 == sub_769240() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_76A950();

    if ((v18 & 1) == 0)
    {
      sub_766670();
      v19 = sub_766690();
      v3 = *(*(v19 - 8) + 56);
      v4 = v19;
      v5 = a1;
      v6 = 0;
      goto LABEL_19;
    }
  }

  if (qword_93D0D8 != -1)
  {
    swift_once();
  }

  v20 = sub_766690();
  v21 = v20;
  v22 = qword_99DA90;
LABEL_18:
  v23 = sub_BE38(v20, v22);
  v25 = *(v21 - 8);
  (*(v25 + 16))(a1, v23, v21);
  v3 = *(v25 + 56);
  v5 = a1;
  v6 = 0;
  v4 = v21;
LABEL_19:

  return v3(v5, v6, 1, v4);
}

void sub_42B7D8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = sub_760770();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v70 - v14);
  v16 = sub_7652D0();
  __chkstk_darwin(v16 - 8);
  if ((*(a2 + 32) & 1) == 0)
  {
    v72 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = a4;
    v74 = v12;
    v78 = a1;
    v18 = *(a2 + 16);
    v79 = v4;
    v19 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots);
    v20 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
    swift_beginAccess();
    v76 = v19;
    v21 = *(v19 + v20);
    if (v21 >> 62)
    {
      v22 = sub_76A860();
    }

    else
    {
      v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
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
          v26 = sub_76A770();
        }

        else
        {
          v26 = *(v21 + v25 + 4);
        }

        v27 = v26;
        ++v25;
        v80 = v26;
        type metadata accessor for BorderedScreenshotView();
        sub_42D710(&qword_946D80, type metadata accessor for BorderedScreenshotView);
        v28 = v27;
        sub_76A6E0();
        sub_75A0B0();
        sub_1EB60(v81);
        v29 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
        v82.value.super.isa = 0;
        v82.is_nil = 0;
        sub_7591D0(v82, v30);
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
      [*(Strong + qword_940590) setImage:0];
      v80 = v32;
      type metadata accessor for VideoView();
      sub_42D710(&qword_952550, type metadata accessor for VideoView);
      v33 = v32;
      sub_76A6E0();
      sub_75A0B0();
      v23 = v79;

      sub_1EB60(v81);
    }

    v23 = *(v23 + OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_lockupView);
    a2 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v34 = *(v23 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    v83.value.super.isa = 0;
    v83.is_nil = 0;
    sub_7591D0(v83, v35);

    v36 = *(v23 + a2);
    v37 = sub_759210();
    sub_42D710(&qword_945810, &type metadata accessor for ArtworkView);
    v38 = v36;
    v79 = a3;
    sub_75A0C0();

    if (!sub_764EE0())
    {
LABEL_19:
      sub_75BCC0();
      v42 = v74;
      (*(v10 + 104))(v74, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v9);
      sub_42D710(&qword_954EE8, &type metadata accessor for ScreenshotsDisplayStyle);
      v43 = sub_7691C0();
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
      v47 = sub_764EF0();
      v49 = v48;
      v50 = sub_764F70();
      v52 = v51;
      v53 = sub_764E90();
      if (v53)
      {
        v54 = sub_75E5C0();

        if (v54)
        {
          v55 = sub_765720();
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
      sub_24AE8C(v47, v18, v49, v50, v52, v55, v53, v57);

      v58 = sub_75BCA0();
      v59 = sub_75BC80();
      v60 = sub_75BC70();
      if (v60 >> 62)
      {
        v66 = v60;
        v61 = sub_76A860();
        v60 = v66;
      }

      else
      {
        v61 = *(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8));
      }

      v62 = v79;
      v15 = v77;
      if (v61)
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v63 = sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
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

      v64 = sub_75BCF0();
      if (v64 >> 62)
      {
        v67 = v64;
        v68 = sub_76A860();
        v64 = v67;
        if (v68)
        {
          goto LABEL_35;
        }
      }

      else if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_35:
        if ((v64 & 0xC000000000000001) != 0)
        {
          v65 = sub_76A770();
          goto LABEL_38;
        }

        if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)))
        {
          v65 = *(v64 + 32);

LABEL_38:

LABEL_45:
          v69 = [v73 traitCollection];
          sub_1600F8(v58, v59, v63, v65, v69, v62, v15);

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
    v39 = qword_93C668;
    v21 = *(v23 + a2);
    if (v39 == -1)
    {
LABEL_16:
      v40 = sub_75CF00();
      sub_BE38(v40, qword_99B898);
      sub_75CDD0();
      [v21 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v21 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();
      v41 = *(v23 + a2);
      sub_75A050();

      v15 = v77;
      goto LABEL_19;
    }

LABEL_41:
    swift_once();
    goto LABEL_16;
  }
}

uint64_t sub_42C0C4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = a5;
  v138 = a3;
  v170 = a2;
  v6 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v6 - 8);
  v133 = &v132 - v7;
  v135 = sub_75C930();
  v142 = *(v135 - 8);
  __chkstk_darwin(v135);
  v9 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v132 - v11;
  __chkstk_darwin(v13);
  v136 = &v132 - v14;
  v15 = sub_BD88(&unk_948720);
  __chkstk_darwin(v15 - 8);
  v143 = &v132 - v16;
  v17 = sub_76A920();
  v140 = *(v17 - 8);
  v141 = v17;
  __chkstk_darwin(v17);
  v139 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_760770();
  v166 = *(v19 - 8);
  v167 = v19;
  __chkstk_darwin(v19);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_760840();
  v164 = *(v22 - 8);
  v165 = v22;
  __chkstk_darwin(v22);
  v163 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_762D10();
  v160 = *(v24 - 8);
  v161 = v24;
  __chkstk_darwin(v24);
  v159 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_75D850();
  v175 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v173 = &v132 - v30;
  v176 = sub_760820();
  v174 = *(v176 - 8);
  __chkstk_darwin(v176);
  v162 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v132 - v33;
  sub_769DA0();
  v35 = sub_764EF0();
  v149 = v36;
  v150 = v35;
  v37 = sub_764F70();
  v151 = v38;
  v152 = v37;
  if (sub_764E90() && (v39 = sub_75E5C0(), , v39))
  {
    v40 = sub_765720();
    v156 = v41;
    v157 = v40;
  }

  else
  {
    v156 = 0;
    v157 = 0;
  }

  sub_75BCD0();
  v42 = [v170 traitCollection];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v43 = v176;
  v44 = sub_BE38(v176, qword_99B150);
  v153 = *(v174 + 16);
  v154 = v174 + 16;
  v153(v34, v44, v43);
  v45 = sub_769A00();
  v168 = v21;
  v169 = a1;
  v134 = v12;
  v132 = v9;
  if (v45)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v46 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v46 = qword_946938;
  }

  v47 = sub_BE38(v26, v46);
  v48 = v175;
  (*(v175 + 16))(v28, v47, v26);
  (*(v48 + 32))();
  v49 = [v42 preferredContentSizeCategory];
  sub_769B20();
  v158 = v42;

  sub_75D800();
  sub_75D830();
  v172 = v34;
  sub_760810();
  sub_760800();
  v50 = sub_7670D0();
  swift_allocObject();
  v148 = sub_7670B0();
  v51 = objc_opt_self();
  v146 = v51;
  v52 = [v51 preferredFontForTextStyle:UIFontTextStyleBody];
  v53 = sub_7653B0();
  v213[3] = v53;
  v171 = sub_42D710(&qword_93F9B0, &type metadata accessor for Feature);
  v213[4] = v171;
  v54 = sub_B1B4(v213);
  v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v56 = *(v53 - 8);
  v155 = v26;
  v147 = *(v56 + 104);
  v57 = v56 + 104;
  v144 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v147(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
  v145 = v57;
  sub_765C30();
  sub_BEB8(v213);
  v58 = v159;
  sub_762D00();
  sub_762CE0();
  v59 = v161;
  v160 = *(v160 + 8);
  (v160)(v58, v161);
  v60 = [v51 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v212[3] = v53;
  v212[4] = v171;
  v61 = sub_B1B4(v212);
  v62 = v55;
  v63 = v147;
  v147(v61, v62, v53);
  sub_765C30();
  sub_BEB8(v212);
  sub_762D00();
  sub_762CE0();
  v64 = v160;
  (v160)(v58, v59);
  v65 = [v146 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v211[3] = v53;
  v211[4] = v171;
  v66 = sub_B1B4(v211);
  v63(v66, v144, v53);
  sub_765C30();
  sub_BEB8(v211);
  sub_762D00();
  sub_762CE0();
  v64(v58, v59);
  sub_246DC(0, 0);
  swift_allocObject();
  v67 = sub_7670B0();

  sub_246DC(0, 0);
  swift_allocObject();
  v68 = sub_7670B0();
  v153(v162, v172, v176);
  v210 = &protocol witness table for LayoutViewPlaceholder;
  v209 = v50;
  v69 = v148;
  v208 = v148;
  v207 = 0;
  *&v205[40] = 0u;
  v206 = 0u;
  sub_134D8(v213, v205);
  sub_134D8(v212, &v204);
  v203 = 0;
  v201 = 0u;
  v202 = 0u;
  v200 = 0;
  v198 = 0u;
  v199 = 0u;

  v70 = sub_7670C0();
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
  sub_134D8(v211, v183);
  v181 = v50;
  v182 = &protocol witness table for LayoutViewPlaceholder;
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v180 = v67;
  v178 = v50;
  v177 = v68;
  v71 = v163;
  sub_760830();
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_77D9F0;
  v73 = v158;
  *(v72 + 32) = v158;
  v74 = v73;
  v75 = sub_7671E0();
  sub_42D710(&qword_945FA0, &type metadata accessor for SmallSearchLockupLayout);
  v76 = v165;
  sub_7665A0();

  (*(v164 + 8))(v71, v76);
  sub_BEB8(v211);
  sub_BEB8(v212);
  sub_BEB8(v213);
  (*(v175 + 8))(v173, v155);
  (*(v174 + 8))(v172, v176);
  v78 = v168;
  v77 = v169;
  sub_75BCC0();
  if ((sub_760760() & 1) == 0 || (sub_65CB64() & 1) == 0)
  {
    return (*(v166 + 8))(v78, v167);
  }

  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v79 = sub_766CA0();
  sub_BE38(v79, qword_99FDE8);
  v80 = v139;
  sub_766470();
  v81 = v170;
  sub_766700();
  (*(v140 + 8))(v80, v141);
  v82 = sub_75BCA0();
  v83 = sub_75BC80();
  v84 = sub_75BC70();
  if (v84 >> 62)
  {
    v86 = v84;
    v87 = sub_76A860();
    v84 = v86;
    if (v87)
    {
      goto LABEL_20;
    }

LABEL_26:

    v69 = 0;
    goto LABEL_27;
  }

  if (!*(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v84 & 0xC000000000000001) != 0)
  {
    v69 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_61;
    }

    v69 = *(v84 + 32);
  }

LABEL_27:
  v88 = sub_75BCF0();
  if (v88 >> 62)
  {
    v90 = v88;
    v91 = sub_76A860();
    v88 = v90;
    if (v91)
    {
      goto LABEL_29;
    }

LABEL_34:

    v176 = 0;
    goto LABEL_35;
  }

  if (!*(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v88 & 0xC000000000000001) != 0)
  {
    v89 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v176 = v89;

LABEL_35:
  v92 = [v81 traitCollection];
  sub_42B534(v143);

  v67 = sub_75BCA0();
  v68 = sub_75BC80();
  v93 = sub_75BC70();
  if (v93 >> 62)
  {
    v94 = v93;
    v95 = sub_76A860();
    v93 = v94;
    if (v95)
    {
LABEL_37:
      if ((v93 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_65;
        }

        v77 = *(v93 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v77 = sub_76A770();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_37;
  }

  v77 = 0;
LABEL_43:
  v96 = sub_75BCF0();
  if (v96 >> 62)
  {
    v99 = v96;
    v100 = sub_76A860();
    v96 = v99;
    v175 = v69;
    if (v100)
    {
LABEL_45:
      if ((v96 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v96 & 0xFFFFFFFFFFFFFF8)))
        {
          v98 = *(v96 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v172 = sub_76A860();
        if (v77)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v98 = sub_76A770();
      goto LABEL_48;
    }
  }

  else
  {
    v97 = *(&dword_10 + (v96 & 0xFFFFFFFFFFFFFF8));
    v175 = v69;
    if (v97)
    {
      goto LABEL_45;
    }
  }

  v98 = 0;
LABEL_51:
  v101 = sub_760760();
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
    sub_161888(v82, v174, v175, v128, v143, v105, v130, v168);

    (*(v104 + 8))(v105, v106);
    sub_10A2C(v129, &unk_948720);
    return (*(v166 + 8))(v131, v167);
  }

  if (v68 | v67)
  {
    v107 = v134;
    sub_7666A0();

    v104 = v142;
    v106 = v135;
    (*(v142 + 104))(v107, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v135);
    v105 = v136;
    (*(v104 + 32))(v136, v107, v106);
    goto LABEL_88;
  }

  v102 = sub_55BABC(v77, v98, 0, 1);
  v68 = v102;
  v83 = v102 >> 62;
  if (v102 >> 62)
  {
    goto LABEL_66;
  }

  v172 = *(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8));
  if (v77)
  {
LABEL_55:
    v103 = sub_759690();
    goto LABEL_68;
  }

LABEL_67:
  v103 = 0;
LABEL_68:
  LODWORD(v169) = sub_55BE04(v103);

  v173 = v82;
  if (v77)
  {
    v108 = sub_759690();
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
  v113 = sub_55C32C(v108, v110);

  sub_10A2C(v110, &unk_94DF00);
  if (!v83)
  {
    result = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8));
    v82 = v173;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = sub_76A860();
  v82 = v173;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v68 & 0xC000000000000001) != 0)
  {
    sub_76A770();
LABEL_76:

    v114 = sub_765150();

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
    v120 = sub_75C920();
    v165 = *(v117 + 8);
    v165(v118, v119);
    if (((v172 >= v120) & v113) != 0 || (v116 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v119), v121 = sub_75C920(), v122 = v165, v165(v118, v119), ((v172 >= v121) & v169) != 0) || (v116 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v119), v123 = sub_75C920(), v122(v118, v119), v172 >= v123))
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
      v125 = sub_75C920();

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

  if (*(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_42D710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_42D758()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_954EF0);
  sub_BE38(v4, qword_954EF0);
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F688);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

char *sub_42D92C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider39InAppPurchaseShowcaseCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider39InAppPurchaseShowcaseCollectionViewCell_lockupView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for InAppPurchaseShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC18ASMessagesProvider39InAppPurchaseShowcaseCollectionViewCell_lockupView]];

  return v12;
}

id sub_42DC6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseShowcaseCollectionViewCell()
{
  result = qword_954F30;
  if (!qword_954F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_42DD48()
{
  v3 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider39InAppPurchaseShowcaseCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_iconView);
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_7591D0(v5, v1);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_7591D0(v6, v2);
  sub_759210();
  sub_14FA38();
  sub_75A0C0();
  sub_75A0C0();
}

void sub_42DE40(uint64_t a1, uint64_t a2)
{
  v5 = sub_757AA0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_134D8(a1, v22);
  sub_BD88(&unk_93F520);
  sub_757BE0();
  if (swift_dynamicCast())
  {
    v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider39InAppPurchaseShowcaseCollectionViewCell_lockupView];
    v19 = v21;
    v13 = *(v12 + OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_iconView);
    v17 = sub_757BC0();
    v20 = [v2 backgroundColor];
    sub_757B80();
    v18 = a2;
    v14 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
    swift_beginAccess();
    (*(v6 + 24))(&v13[v14], v11, v5);
    swift_endAccess();
    v15 = *(v6 + 16);
    v15(v8, &v13[v14], v5);
    sub_244454(v8);
    v16 = *(v6 + 8);
    v16(v8, v5);
    v16(v11, v5);
    [v13 setBackgroundColor:v20];
    sub_6A9BFC(v17, v13, v18);
    v15(v11, &v13[v14], v5);
    sub_244454(v11);
    v16(v11, v5);
    [v13 setNeedsLayout];
  }
}

uint64_t sub_42E108(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  (*(a2 + 80))(0, 0, v5, v6, a1, a2);
  swift_unknownObjectRelease();
  if ((*(a2 + 56))(a1, a2))
  {
    v7 = (v4)(a1, a2);
    v9 = v8;
    v10 = (*(a2 + 8))(a1, a2);
    sub_4AB724(v7, v9, v10, v11 & 1);

    swift_unknownObjectRelease();
  }

  (*(a2 + 16))(0, 1, a1, a2);
  (*(a2 + 40))(0, 0, a1, a2);
  v12 = *(a2 + 64);

  return v12(0, a1, a2);
}

uint64_t sub_42E294(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a4;
  v43 = a3;
  v42 = a2;
  v10 = sub_765B10();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760260();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765AA0();
  v17 = sub_760220();
  result = (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    result = sub_765B60();
    if (result)
    {
      v19 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_7688F0();
      v41 = v47[0];
      if (v47[0])
      {
        v39 = v10;
        (*(a6 + 8))(a5, a6);
        v21 = v20;
        sub_75C240();
        if ((v21 & 1) != 0 || (v22 = sub_75C230(), v22 != sub_75C230()))
        {
          v23 = sub_75C240();
          v24 = sub_4AB5A8(v23);
          ObjectType = v19;
          v25 = a5;
          v27 = v26;
          v28 = *(a6 + 32);
          swift_unknownObjectRetain();
          v29 = v28(v25, a6);
          (*(a6 + 80))(v24, v27, v29, v30, v25, a6);
          swift_unknownObjectRelease();
          v31 = sub_75C240();
          (*(a6 + 16))(v31, 0, v25, a6);
          v32 = v27;
          a5 = v25;
          v19 = ObjectType;
          (*(a6 + 40))(v24, v32, a5, a6);
          swift_unknownObjectRelease();
        }

        v33 = *(a6 + 64);

        v33(v34, a5, a6);
        if ((*(a6 + 32))(a5, a6))
        {
          v36 = v35;
          ObjectType = swift_getObjectType();
          v47[3] = sub_75C250();
          v47[4] = sub_42E6EC();
          v47[0] = v19;

          sub_765B30();
          sub_75A110();
          sub_768900();
          v37 = v45;
          sub_768ED0();
          (*(v36 + 112))(v47, v37, v42, v12, v43, v46, ObjectType, v36);
          swift_unknownObjectRelease();

          (*(v44 + 8))(v12, v39);
          sub_BEB8(v47);
        }

        (*(a6 + 88))(a5, a6);
        [v7 setNeedsLayout];
      }
    }
  }

  return result;
}

unint64_t sub_42E6EC()
{
  result = qword_955A90;
  if (!qword_955A90)
  {
    sub_75C250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_955A90);
  }

  return result;
}

void sub_42E744(void *a1)
{
  sub_43147C();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void sub_42E7F4()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v2 = *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView);
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_7591D0(v10, v3);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setHidden:1];
  }

  [v1 setNeedsLayout];
  sub_43147C();
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v1 contentView];
    [v8 addSubview:v7];

    [v1 setNeedsLayout];
  }
}

uint64_t sub_42E914()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_954F40);
  sub_BE38(v4, qword_954F40);
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F688);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_42EAE8()
{
  v0 = sub_766690();
  sub_161DC(v0, qword_954F58);
  sub_BE38(v0, qword_954F58);
  return sub_7666A0();
}

char *sub_42EB3C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for AppShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_showcaseType;
  v14 = enum case for AppShowcaseType.large(_:);
  v15 = sub_7581D0();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView]];

  return v16;
}

void (*sub_42EE90(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_42EEE4;
}

void sub_42EEE4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_43147C();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_43147C();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

uint64_t sub_42F00C()
{
  v0 = sub_75DC30();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_948720);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_766690();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_5;
  }

  v12 = qword_99A200;
  v13 = Strong;
  swift_beginAccess();
  (*(v1 + 16))(v3, &v13[v12], v0);

  sub_75DB80();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_5:
    sub_10A2C(v6, &unk_948720);
    v14 = 0;
    return v14 & 1;
  }

  (*(v8 + 32))(v10, v6, v7);
  v14 = sub_7665F0();
  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

void sub_42F304()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v113 = sub_76A920();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_75DC30();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_948720);
  __chkstk_darwin(v5 - 8);
  v126 = &v111 - v6;
  v128 = sub_766690();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v117 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7581D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v115 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = &v111 - v12;
  __chkstk_darwin(v13);
  v125 = &v111 - v14;
  __chkstk_darwin(v15);
  v124 = &v111 - v16;
  __chkstk_darwin(v17);
  *&v133 = &v111 - v18;
  __chkstk_darwin(v19);
  v116 = &v111 - v20;
  __chkstk_darwin(v21);
  *&v121 = &v111 - v22;
  __chkstk_darwin(v23);
  v131 = &v111 - v24;
  __chkstk_darwin(v25);
  v27 = &v111 - v26;
  __chkstk_darwin(v28);
  v30 = &v111 - v29;
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v111 - v33;
  v142.receiver = v1;
  v142.super_class = ObjectType;
  objc_msgSendSuper2(&v142, "layoutSubviews", v32);
  v35 = [v1 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v45 = v9[2];
  v135 = v44;
  v132 = *&v1;
  v136 = v45;
  v137 = v9 + 2;
  v45(v34, &v1[v44], v8);
  v46 = v9;
  v47 = v9[13];
  v134 = enum case for AppShowcaseType.large(_:);
  v47(v30);
  sub_431FC8(&qword_954FB8, &type metadata accessor for AppShowcaseType);
  sub_769430();
  sub_769430();
  if (v138 == v140 && v139 == v141)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_76A950();
  }

  v49 = v9[1];
  v49(v30, v8);
  v130 = v9 + 1;
  v129 = v49;
  v49(v34, v8);

  if (v48)
  {
    v50 = v132;
    v123 = sub_42F00C();
  }

  else
  {
    v123 = 0;
    v50 = v132;
  }

  v51 = v131;
  v136(v27, *&v50 + v135, v8);
  sub_42F00C();
  v52 = v46;
  v53 = v46[4];
  v53(v51, v27, v8);
  v54 = v52[11];
  v131 = (v52 + 11);
  v55 = v54(v51, v8);
  v122 = v53;
  if (v55 == v134 || v55 == enum case for AppShowcaseType.small(_:))
  {
    v56 = v132;
  }

  else
  {
    v56 = v132;
    if (v55 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v129(v51, v8);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  Width = 0.0;
  v59 = &unk_90D000;
  if (!Strong)
  {
    goto LABEL_26;
  }

  v60 = Strong;
  v61 = [Strong isHidden];

  v62 = v135;
  if (v61)
  {
    goto LABEL_27;
  }

  v63 = v121;
  v64 = v136;
  v136(*&v121, *&v56 + v135, v8);
  v65 = sub_42F00C();
  v143.origin.x = v37;
  v143.origin.y = v39;
  v143.size.width = v41;
  v143.size.height = v43;
  Width = CGRectGetWidth(v143);
  v66 = v116;
  v64(v116, *&v63, v8);
  v67 = v54(v66, v8);
  if (v67 != v134)
  {
    if (v67 != enum case for AppShowcaseType.small(_:) && v67 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v129(*&v121, v8);
      Width = 0.0;
      v121 = *&v116;
      v59 = &unk_90D000;
      goto LABEL_25;
    }

    v59 = &unk_90D000;
    if (qword_93D0F0 == -1)
    {
LABEL_24:
      sub_BE38(v128, qword_954F58);
      sub_766650();
      Width = v68;
      goto LABEL_25;
    }

LABEL_69:
    swift_once();
    goto LABEL_24;
  }

  if ((v65 & 1) == 0)
  {
    v59 = &unk_90D000;
    if (qword_93D0F0 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

  v59 = &unk_90D000;
LABEL_25:
  v129(*&v121, v8);
LABEL_26:
  v62 = v135;
LABEL_27:
  v136(*&v133, *&v56 + v62, v8);
  v69 = swift_unknownObjectWeakLoadStrong();
  v121 = Width;
  if (v69)
  {
    v70 = v69;
    v71 = [v69 v59[473]];
  }

  else
  {
    v71 = 1;
  }

  v72 = v122;
  v73 = sub_42F00C();
  v144.origin.x = v37;
  v144.origin.y = v39;
  v144.size.width = v41;
  v144.size.height = v43;
  CGRectGetWidth(v144);
  v132 = v37;
  v74 = v134;
  if (v71 || (v73 & 1) != 0)
  {
    v129(*&v133, v8);
    v75 = v125;
    goto LABEL_46;
  }

  v76 = v114;
  v136(v114, *&v133, v8);
  v77 = v54(v76, v8);
  v75 = v125;
  if (v77 == v74)
  {
    if (qword_93D0F0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

  if (v77 != enum case for AppShowcaseType.small(_:) && v77 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    v129(v76, v8);
    goto LABEL_41;
  }

  if (qword_93D0F0 != -1)
  {
LABEL_70:
    swift_once();
  }

LABEL_40:
  sub_BE38(v128, qword_954F58);
  sub_766650();
LABEL_41:
  v78 = v115;
  v72(v115, *&v133, v8);
  v79 = v54(v78, v8);
  if (v79 != v74 && v79 != enum case for AppShowcaseType.small(_:) && v79 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    (v129)(v78, v8, 25.0, 25.0);
  }

  v37 = v132;
LABEL_46:
  v80 = *(*&v56 + OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView);
  v145.origin.x = v37;
  v145.origin.y = v39;
  v145.size.width = v41;
  v145.size.height = v43;
  CGRectGetHeight(v145);
  v81 = sub_66744C();
  v83 = v82;
  v146.origin.x = v37;
  v146.origin.y = v39;
  v133 = v41;
  v146.size.width = v41;
  v146.size.height = v43;
  MinX = CGRectGetMinX(v146);
  v85 = v124;
  v136(v124, *&v56 + v135, v8);
  v72(v75, v85, v8);
  v86 = v54(v75, v8);
  v87 = 0.0;
  v88 = v43;
  v89 = v39;
  if (v86 == v74)
  {
    v90 = v128;
    v91 = v127;
    v92 = v123;
  }

  else
  {
    v87 = 30.0;
    v90 = v128;
    v91 = v127;
    v92 = v123;
    if (v86 != enum case for AppShowcaseType.small(_:))
    {
      v87 = 25.0;
      if (v86 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v129)(v75, v8, 25.0);
        v87 = 0.0;
      }
    }
  }

  v93 = MinX + v87;
  v94 = 20.0;
  if ((v92 & 1) == 0)
  {
    v147.origin.x = v132;
    v147.origin.y = v89;
    v147.size.width = v133;
    v147.size.height = v88;
    v94 = CGRectGetMidY(v147) + v83 * -0.5;
  }

  sub_769D20();
  [v80 setFrame:?];
  v95 = swift_unknownObjectWeakLoadStrong();
  if (!v95)
  {
    v102 = v126;
    (*(v91 + 56))(v126, 1, 1, v90);
    goto LABEL_59;
  }

  v96 = qword_99A200;
  v97 = v95;
  swift_beginAccess();
  v98 = v119;
  v99 = &v97[v96];
  v100 = v118;
  v101 = v120;
  (*(v119 + 16))(v118, v99, v120);

  v102 = v126;
  sub_75DB80();
  (*(v98 + 8))(v100, v101);
  if ((*(v91 + 48))(v102, 1, v90) == 1)
  {
LABEL_59:
    sub_10A2C(v102, &unk_948720);
    goto LABEL_60;
  }

  v103 = v117;
  (*(v91 + 32))(v117, v102, v90);
  v104 = swift_unknownObjectWeakLoadStrong();
  if (v104 && (v105 = v104, v106 = [v104 isHidden], v105, v103 = v117, (v106 & 1) == 0))
  {
    sub_766660();
    if (v92)
    {
      v148.origin.x = v132;
      v148.origin.y = v89;
      v148.size.width = v133;
      v148.size.height = v88;
      CGRectGetMinX(v148);
      v149.origin.x = v93;
      v149.origin.y = v94;
      v149.size.width = v81;
      v149.size.height = v83;
      CGRectGetMaxY(v149);
      if (qword_93D0E8 != -1)
      {
        swift_once();
      }

      v109 = sub_766CA0();
      sub_BE38(v109, qword_954F40);
      v110 = v111;
      sub_766470();
      sub_766700();
      (*(v112 + 8))(v110, v113);
      (*(v91 + 8))(v117, v90);
    }

    else
    {
      v150.origin.x = v93;
      v150.origin.y = v94;
      v150.size.width = v81;
      v150.size.height = v83;
      CGRectGetMaxX(v150);
      v151.origin.x = v132;
      v151.origin.y = v89;
      v151.size.width = v133;
      v151.size.height = v88;
      CGRectGetHeight(v151);
      (*(v91 + 8))(v103, v90);
    }
  }

  else
  {
    (*(v91 + 8))(v103, v90);
  }

LABEL_60:
  v107 = swift_unknownObjectWeakLoadStrong();
  if (v107)
  {
    v108 = v107;
    sub_769D20();
    [v108 setFrame:?];
  }
}

uint64_t type metadata accessor for AppShowcaseCollectionViewCell()
{
  result = qword_954F98;
  if (!qword_954F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4305A4()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    sub_7581D0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_4306A8(uint64_t **a1))()
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
  v2[4] = sub_42EE90(v2);
  return sub_21028;
}

uint64_t sub_430718()
{
  ObjectType = swift_getObjectType();
  v1 = sub_431FC8(qword_954FC0, type metadata accessor for AppShowcaseCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_43078C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_431FC8(qword_954FC0, type metadata accessor for AppShowcaseCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_430818(uint64_t *a1))()
{
  swift_getObjectType();
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
  sub_431FC8(qword_954FC0, type metadata accessor for AppShowcaseCollectionViewCell);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_4309AC(uint64_t a1, void *a2)
{
  v72 = a2;
  v63 = sub_76A920();
  v67 = *(v63 - 8);
  __chkstk_darwin(v63);
  v65 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7581D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v66 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v58 - v8;
  __chkstk_darwin(v9);
  v60 = &v58 - v10;
  __chkstk_darwin(v11);
  v62 = &v58 - v12;
  __chkstk_darwin(v13);
  v71 = &v58 - v14;
  __chkstk_darwin(v15);
  v61 = &v58 - v16;
  __chkstk_darwin(v17);
  v74 = &v58 - v18;
  __chkstk_darwin(v19);
  v73 = &v58 - v20;
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = sub_766690();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v59 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v68 = &v58 - v28;
  __chkstk_darwin(v29);
  v31 = &v58 - v30;
  v32 = sub_758750();
  v69 = v25;
  v70 = v24;
  if (v32)
  {
    sub_764BC0();

    sub_765260();

    sub_7666A0();
    v33 = sub_7665F0();
    (*(v25 + 8))(v31, v24);
  }

  else
  {
    v33 = 0;
  }

  if (!sub_758750())
  {
    v34 = v33;
    sub_758740();
    goto LABEL_8;
  }

  sub_758740();
  if (v33)
  {
    v34 = v33;
LABEL_8:
    v5[1](v23, v4);
    goto LABEL_23;
  }

  v35 = v61;
  (v5[2])(v61, v23, v4);
  v36 = v5;
  v37 = v5[11];
  v38 = (v37)(v35, v4);
  v39 = enum case for AppShowcaseType.large(_:);
  if (v38 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_93D0F0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

  if (v38 == enum case for AppShowcaseType.small(_:) || v38 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_93D0F0 == -1)
    {
LABEL_16:
      sub_BE38(v70, qword_954F58);
      sub_766650();
      goto LABEL_17;
    }

LABEL_43:
    swift_once();
    goto LABEL_16;
  }

  v36[1](v35, v4);
LABEL_17:
  v40 = v71;
  (v36[4])(v71, v23, v4);
  v41 = (v37)(v40, v4);
  if (v41 == v39)
  {
    v5 = v36;
  }

  else
  {
    v5 = v36;
    if (v41 != enum case for AppShowcaseType.small(_:) && v41 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (v36[1])(v40, v4, 25.0, 25.0);
    }
  }

  v34 = v33;
LABEL_23:
  type metadata accessor for AppShowcaseLockupView();
  sub_667848(a1, v72);
  v71 = a1;
  sub_758740();
  v42 = enum case for AppShowcaseType.large(_:);
  v43 = v5[13];
  (v43)(v74, enum case for AppShowcaseType.large(_:), v4);
  sub_431FC8(&qword_954FB8, &type metadata accessor for AppShowcaseType);
  sub_769430();
  sub_769430();
  if (v77 != v75 || v78 != v76)
  {
    v34 &= sub_76A950();
  }

  v61 = v5;
  v44 = v5[1];
  v44(v74, v4);
  v44(v73, v4);

  if (v34)
  {
    if (qword_93D0E8 != -1)
    {
      swift_once();
    }

    v45 = sub_766CA0();
    sub_BE38(v45, qword_954F40);
    v46 = v65;
    sub_766470();
    sub_766700();
    (*(v67 + 8))(v46, v63);
    result = sub_758750();
    v49 = v69;
    v48 = v70;
    v50 = v68;
    if (result)
    {
      sub_764BC0();

      sub_765260();

      v51 = v59;
      sub_7666A0();
      (*(v49 + 32))(v50, v51, v48);
      v52 = v62;
      sub_758740();
      v53 = v61;
      v54 = v60;
      (*(v61 + 2))(v60, v52, v4);
      v55 = (*(v53 + 11))(v54, v4);
      if (v55 != v42)
      {
        if (v55 == enum case for AppShowcaseType.small(_:) || v55 == enum case for AppShowcaseType.smallAlignedLeft(_:))
        {
          if (qword_93D0F0 != -1)
          {
            swift_once();
          }

          sub_BE38(v48, qword_954F58);
          sub_766650();
        }

        else
        {
          v44(v52, v4);
          v52 = v54;
        }
      }

      v44(v52, v4);
      sub_766660();
      return (*(v49 + 8))(v50, v48);
    }
  }

  else
  {
    v56 = v64;
    sub_758740();
    v57 = v66;
    (v43)(v66, v42, v4);
    sub_769430();
    sub_769430();
    if (v77 != v75 || v78 != v76)
    {
      sub_76A950();
    }

    v44(v57, v4);
    v44(v56, v4);
  }

  return result;
}

void sub_43147C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_431FC8(&qword_93F500, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_34F24(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_43154C(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v4 = sub_766690();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7652D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v55 = sub_7581D0();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v50 = &v47 - v19;
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  __chkstk_darwin(v23);
  v25 = &v47 - v24;
  sub_134D8(a1, v59);
  sub_BD88(&unk_93F520);
  sub_758770();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v48 = v17;
  v27 = v58;
  v28 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView);
  Strong = swift_unknownObjectWeakLoadStrong();
  v51 = v28;
  v29 = [v2 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();

  sub_758760();
  v30 = sub_764EE0();

  if (v30)
  {
    v47 = v27;
    sub_758740();
    v31 = v57;
    v32 = v55;
    (*(v57 + 32))(v22, v25, v55);
    v33 = (*(v31 + 88))(v22, v32);
    if (v33 != enum case for AppShowcaseType.large(_:) && v33 != enum case for AppShowcaseType.small(_:) && v33 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v57 + 8))(v22, v32);
    }

    sub_7652E0();
    (*(v7 + 104))(v9, enum case for Artwork.Style.roundedRect(_:), v6);
    sub_765290();
    v34 = *(v7 + 8);
    v34(v9, v6);
    v34(v12, v6);
    sub_7652B0();
    sub_765330();
    v35 = v51;
    sub_7652E0();
    sub_7591B0();
    [v35 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    sub_759210();
    sub_431FC8(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();

    v34(v15, v6);
  }

  if (!sub_758750())
  {
  }

  sub_764BC0();

  sub_765260();
  sub_765260();
  v36 = v52;
  sub_7666A0();
  v37 = v50;
  sub_758740();
  v38 = sub_7665F0();
  v39 = v57;
  v40 = v48;
  v41 = v55;
  (*(v57 + 16))(v48, v37, v55);
  v42 = (*(v39 + 88))(v40, v41);
  v43 = Strong;
  if (v42 == enum case for AppShowcaseType.large(_:))
  {
    v44 = v54;
    if (v38)
    {
LABEL_21:
      (*(v57 + 8))(v37, v41);
      goto LABEL_22;
    }

    if (qword_93D0F0 == -1)
    {
LABEL_20:
      sub_BE38(v44, qword_954F58);
      sub_766650();
      goto LABEL_21;
    }

LABEL_27:
    swift_once();
    goto LABEL_20;
  }

  v44 = v54;
  if (v42 == enum case for AppShowcaseType.small(_:) || v42 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_93D0F0 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v45 = *(v57 + 8);
  v45(v37, v41);
  v45(v48, v41);
LABEL_22:
  sub_766660();
  sub_765330();
  if (v43)
  {
    type metadata accessor for VideoView();
    sub_431FC8(&unk_93F530, type metadata accessor for VideoView);
    v46 = v43;
    sub_75A050();
  }

  else
  {
    sub_75A060();
  }

  return (*(v53 + 8))(v36, v44);
}

void sub_431E00()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView);
  v12.value.super.isa = 0;
  v12.is_nil = 0;
  sub_7591D0(v12, v4);

  v5 = *(v1 + v2);
  sub_759210();
  sub_431FC8(&qword_945810, &type metadata accessor for ArtworkView);
  v6 = v5;
  sub_75A0C0();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = qword_940590;
    v10 = Strong;
    v9 = [*(Strong + qword_940590) layer];
    [v9 removeAllAnimations];

    [*&v10[v8] setImage:0];
    type metadata accessor for VideoView();
    sub_431FC8(&unk_93F530, type metadata accessor for VideoView);
    sub_75A0C0();
  }
}

uint64_t sub_431FC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_432010()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    sub_759210();
    sub_14FA38();
    v11 = v10;
    sub_75A0C0();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_43214C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_432258()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for MetricsViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v1 = *(v0 + *&stru_68.sectname[swift_isaMask & *v0]);
  [v0 addChildViewController:v1];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  [v4 addSubview:result];

  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result superview];
  if (v7)
  {
    v8 = v7;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = objc_opt_self();
    sub_BD88(&unk_93F5C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_77FA60;
    v11 = [v6 leftAnchor];
    v12 = [v8 leftAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v10 + 32) = v13;
    v14 = [v6 rightAnchor];
    v15 = [v8 rightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v10 + 40) = v16;
    v17 = [v6 topAnchor];
    v18 = [v8 topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v10 + 48) = v19;
    v20 = [v6 bottomAnchor];
    v21 = [v8 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v10 + 56) = v22;
    sub_43288C();
    isa = sub_769450().super.isa;

    [v9 activateConstraints:isa];
  }

  return [v1 didMoveToParentViewController:v0];
}

void sub_43260C(void *a1)
{
  v1 = a1;
  sub_432258();
}

void sub_432654(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_43285C();
}

id sub_4326C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_432734(char *a1)
{
  (*(*(*(&stru_20.filesize + (swift_isaMask & *a1)) - 8) + 8))(&a1[*(&stru_20.nsects + (swift_isaMask & *a1))]);
  v2 = *&a1[*&stru_68.sectname[swift_isaMask & *a1]];
}

unint64_t sub_43288C()
{
  result = qword_942270;
  if (!qword_942270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_942270);
  }

  return result;
}

uint64_t sub_4328D8()
{
  v0 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v0 - 8);
  v22 = &v20 - v1;
  v2 = sub_765900();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v23 = sub_765920();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v21 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v14 = [objc_allocWithZone(NSMutableAttributedString) init];
  if (sub_75A640())
  {
    v15 = sub_7658D0();
    v20 = v5;
    v16 = v15;
    [v14 appendAttributedString:v15];

    v5 = v20;
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  if (sub_75A640())
  {
    v17 = v21;
    sub_765930();

    (*(v9 + 32))(v13, v17, v23);
  }

  else
  {
    (*(v9 + 104))(v13, enum case for Paragraph.Alignment.localized(_:), v23);
  }

  if (sub_75A640())
  {
    sub_765910();

    (*(v3 + 32))(v8, v5, v2);
  }

  else
  {
    (*(v3 + 104))(v8, enum case for Paragraph.Style.standard(_:), v2);
  }

  if (sub_75A640())
  {
    sub_765890();
  }

  v18 = sub_768AB0();
  (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  sub_765940();
  swift_allocObject();
  return sub_7658C0();
}

uint64_t sub_432C88()
{
  v0 = sub_75A630();
  v2 = v1;
  if (v1)
  {
    v17._countAndFlagsBits = 0x5F53455441445055;
    v17._object = 0xEF4E4F4953524556;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    sub_75B750(v17, v19);
    sub_BD88(&unk_944E30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_77B6D0;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_FA4CC();
    *(v3 + 32) = v0;
    *(v3 + 40) = v2;
    v0 = sub_769270();
    v5 = v4;

    v6 = sub_75A620();
    if ((v7 & 1) == 0)
    {
      v8.super.super.isa = [objc_allocWithZone(NSNumber) initWithLongLong:v6];
      isa = v8.super.super.isa;
      v10 = sub_75D120(v8);
      v12 = v11;

      if (v12)
      {
        sub_BD88(&unk_9562A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_77E280;
        *(inited + 32) = 0x6E6F6973726576;
        *(inited + 40) = 0xE700000000000000;
        *(inited + 48) = v0;
        *(inited + 56) = v5;
        strcpy((inited + 64), "version_size");
        *(inited + 77) = 0;
        *(inited + 78) = -5120;
        *(inited + 80) = v10;
        *(inited + 88) = v12;
        v14 = sub_10DD04(inited);
        swift_setDeallocating();
        sub_BD88(&qword_95DC30);
        swift_arrayDestroy();
        v18._object = 0x80000000007E1150;
        v18._countAndFlagsBits = 0xD000000000000017;
        v15._rawValue = v14;
        v0 = sub_75B740(v18, v15);
      }
    }
  }

  return v0;
}

uint64_t sub_432E94(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, double a6, double a7, double a8, double a9)
{
  v145 = a5;
  v141 = a4;
  v144 = a3;
  v148 = a2;
  v15 = sub_765920();
  v142 = *(v15 - 8);
  v143 = v15;
  __chkstk_darwin(v15);
  v131 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v132 = &v130 - v18;
  __chkstk_darwin(v19);
  v134 = &v130 - v20;
  __chkstk_darwin(v21);
  v130 = &v130 - v22;
  v23 = sub_BD88(&qword_952410);
  __chkstk_darwin(v23 - 8);
  v136 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v146 = &v130 - v26;
  __chkstk_darwin(v27);
  v135 = &v130 - v28;
  __chkstk_darwin(v29);
  v140 = &v130 - v30;
  v31 = sub_762D10();
  v138 = *(v31 - 8);
  v139 = v31;
  __chkstk_darwin(v31);
  v137 = &v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_76A920();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v37 - 8);
  v39 = &v130 - v38;
  v40 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v40 - 8);
  v42 = &v130 - v41;
  v43 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v43 - 8);
  v45 = &v130 - v44;
  v46 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v46 - 8);
  v48 = &v130 - v47;
  v49 = sub_BD88(&unk_948730);
  __chkstk_darwin(v49 - 8);
  v51 = &v130 - v50;
  [v9 setLayoutMargins:{a6, a7, a8, a9}];
  v147 = v9;
  v52 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_lockupView];
  v53 = sub_BD88(&unk_948740);
  (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
  v54 = sub_758C70();
  (*(*(v54 - 8) + 56))(v48, 1, 1, v54);
  v55 = sub_75BD30();
  (*(*(v55 - 8) + 56))(v45, 1, 1, v55);
  v56 = sub_BD88(&unk_9457F0);
  (*(*(v56 - 8) + 56))(v42, 1, 1, v56);
  v57 = sub_765870();
  (*(*(v57 - 8) + 56))(v39, 1, 1, v57);
  sub_4A18A4(a1, v52, v51, v148, 0, 0, v48, v45, v39, v42);
  sub_10A2C(v39, &unk_9457D0);
  v52[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1FD89C();
  [v52 setNeedsLayout];
  sub_10A2C(v42, &unk_94AC40);
  sub_10A2C(v45, &unk_9457E0);
  sub_10A2C(v48, &unk_94A780);
  sub_10A2C(v51, &unk_948730);
  v148 = sub_4328D8();
  if (qword_93CD98 != -1)
  {
    swift_once();
  }

  sub_B170(qword_99D3F8, qword_99D410);
  v58 = v145;
  swift_getObjectType();
  sub_33964();
  sub_766700();
  v59 = *(v34 + 8);
  v59(v36, v33);
  type metadata accessor for SmallLockupView();
  v60 = v58;
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v61 = sub_75CF00();
  v62 = sub_BE38(v61, qword_99B898);
  sub_1FE304(v62, v58);
  v63 = sub_432C88();
  v64 = &selRef_setTextAlignment_;
  if (!v65)
  {
    goto LABEL_8;
  }

  v66 = *&v147[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_versionMetadata];
  v67 = v63;

  v133 = v67;
  v68 = v58;
  v69 = sub_769210();

  [v66 setText:v69];

  sub_B170(qword_99D3F8, qword_99D410);
  sub_33964();
  sub_766700();
  v59(v36, v33);
  sub_26F08();
  if (qword_93D608 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v70 = sub_7666D0();
    sub_BE38(v70, qword_99EA10);
    v71 = [v68 traitCollection];
    sub_769E10();

    v72 = sub_7653B0();
    v152 = v72;
    v153 = sub_4342DC(&qword_93F9B0, &type metadata accessor for Feature);
    v73 = sub_B1B4(&aBlock);
    (*(*(v72 - 8) + 104))(v73, enum case for Feature.measurement_with_labelplaceholder(_:), v72);
    sub_765C30();
    sub_BEB8(&aBlock);
    v74 = v137;
    sub_762D00();
    type metadata accessor for UpdatesLockupCollectionViewCell();
    sub_75D650();
    sub_4342DC(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility);
    v75 = v139;
    sub_7665A0();
    (*(v138 + 8))(v74, v75);
    v60 = v68;
    v64 = &selRef_setTextAlignment_;
LABEL_8:
    type metadata accessor for UpdatesLockupCollectionViewCell();
    sub_75D650();
    CGRectGetWidth(v155);
    sub_75D650();
    CGRectGetHeight(v156);
    v76 = sub_7658D0();
    v77 = v64;
    v78 = [v60 v64[23]];
    v79 = v60;
    v80 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v76];
    v81 = [v76 length];
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    *(v82 + 24) = v78;
    *(v82 + 32) = v80;
    *(v82 + 40) = 1;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_119AC;
    *(v83 + 24) = v82;
    v153 = sub_2636C;
    v154 = v83;
    aBlock = _NSConcreteStackBlock;
    v150 = 1107296256;
    v151 = sub_10C1C;
    v152 = &unk_891690;
    v84 = _Block_copy(&aBlock);
    v68 = v78;
    v85 = v80;

    [v76 enumerateAttributesInRange:0 options:v81 usingBlock:{0x100000, v84}];

    _Block_release(v84);
    LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

    if ((v76 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  v145 = v85;
  if ((v144 & 1) == 0)
  {
    v96 = v147;
    v111 = *&v147[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView];
    v112 = v85;
    v113 = v146;
    sub_765930();
    v115 = v142;
    v114 = v143;
    (*(v142 + 56))(v113, 0, 1, v143);
    v116 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
    v117 = v111[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
    v111[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 0;
    v118 = *&v111[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
    v119 = v112;
    [v118 setNumberOfLines:0];
    if (v117 != v111[v116])
    {
      sub_1A5974();
    }

    v107 = v119;
    sub_1A532C(v119);
    v111[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 1;
    v120 = v136;
    sub_3B28D4(v146, v136);
    if ((*(v115 + 48))(v120, 1, v114) == 1)
    {
      sub_10A2C(v120, &qword_952410);
      v110 = v141;
    }

    else
    {
      v121 = v132;
      (*(v115 + 32))(v132, v120, v114);
      v122 = v131;
      (*(v115 + 16))(v131, v121, v114);
      v123 = (*(v115 + 88))(v122, v114);
      if (v123 == enum case for Paragraph.Alignment.left(_:))
      {
        v124 = 0;
        v110 = v141;
      }

      else
      {
        v110 = v141;
        if (v123 == enum case for Paragraph.Alignment.center(_:))
        {
          v124 = 1;
        }

        else if (v123 == enum case for Paragraph.Alignment.right(_:))
        {
          v124 = 2;
        }

        else if (v123 == enum case for Paragraph.Alignment.justified(_:))
        {
          v124 = 3;
        }

        else if (v123 == enum case for Paragraph.Alignment.localized(_:))
        {
          v124 = 4;
        }

        else
        {
          (*(v115 + 8))(v122, v114);
          v124 = 0;
        }
      }

      [v118 setTextAlignment:v124];
      (*(v115 + 8))(v121, v114);
    }

    [v111 setNeedsLayout];
    v108 = v146;
    goto LABEL_45;
  }

  v86 = sub_7658A0();
  v87 = [v79 v77[23]];
  v88 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v86];
  v89 = [v86 length];
  v90 = swift_allocObject();
  *(v90 + 16) = 0;
  *(v90 + 24) = v87;
  *(v90 + 32) = v88;
  *(v90 + 40) = 1;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_266A8;
  *(v91 + 24) = v90;
  v153 = sub_26694;
  v154 = v91;
  aBlock = _NSConcreteStackBlock;
  v150 = 1107296256;
  v151 = sub_10C1C;
  v152 = &unk_891708;
  v92 = _Block_copy(&aBlock);
  v93 = v87;
  v94 = v88;

  [v86 enumerateAttributesInRange:0 options:v89 usingBlock:{0x100000, v92}];

  _Block_release(v92);
  LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

  if ((v86 & 1) == 0)
  {
    v96 = v147;
    v97 = *&v147[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView];
    v98 = v94;
    v99 = v140;
    sub_765930();
    v101 = v142;
    v100 = v143;
    (*(v142 + 56))(v99, 0, 1, v143);
    v102 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
    v103 = v97[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
    v97[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 1;
    v104 = *&v97[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
    v105 = *&v97[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
    v106 = v98;
    [v105 setNumberOfLines:v104];
    if (v103 != v97[v102])
    {
      sub_1A5974();
    }

    v107 = v106;
    sub_1A532C(v106);
    v97[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 1;
    v108 = v140;
    v109 = v135;
    sub_3B28D4(v140, v135);
    if ((*(v101 + 48))(v109, 1, v100) == 1)
    {
      sub_10A2C(v109, &qword_952410);
      v110 = v141;
    }

    else
    {
      v125 = v130;
      (*(v101 + 32))(v130, v109, v100);
      v126 = v134;
      (*(v101 + 16))(v134, v125, v100);
      v127 = (*(v101 + 88))(v126, v100);
      if (v127 == enum case for Paragraph.Alignment.left(_:))
      {
        v128 = 0;
        v110 = v141;
      }

      else
      {
        v110 = v141;
        if (v127 == enum case for Paragraph.Alignment.center(_:))
        {
          v128 = 1;
        }

        else if (v127 == enum case for Paragraph.Alignment.right(_:))
        {
          v128 = 2;
        }

        else if (v127 == enum case for Paragraph.Alignment.justified(_:))
        {
          v128 = 3;
        }

        else if (v127 == enum case for Paragraph.Alignment.localized(_:))
        {
          v128 = 4;
        }

        else
        {
          (*(v101 + 8))(v134, v100);
          v128 = 0;
        }
      }

      [v105 setTextAlignment:v128];
      (*(v101 + 8))(v125, v100);
    }

    [v97 setNeedsLayout];

LABEL_45:
    sub_10A2C(v108, &qword_952410);
    v96[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_hasSeparator] = v110 & 1;
    sub_35D22C();
    [v96 setNeedsLayout];
    v129 = objc_opt_self();
    [v129 begin];
    [v129 setDisableActions:1];
    [v96 layoutIfNeeded];
    [v129 commit];
  }

  __break(1u);
  return result;
}

uint64_t sub_4342C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4342DC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_43435C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_50690(a1, &v16 - v6);
  v8 = sub_7570A0();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_757040(v10);
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithCompositionURL:", v11);

  v14 = v13;
  sub_3F5C44(a1);
  if (v14)
  {
  }

  return v14;
}

void sub_434710()
{
  v1 = *(v0 + 32);
  [v1 _systemContentInset];
  v3 = v2;
  [v1 contentOffset];
  v5 = v4;
  [v1 contentInset];
  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_622DF8(Strong);
  v10 = v9;

  v11 = *(v0 + 40);
  if (v11)
  {
    v12 = fmin((v3 + v5 + v7) / (v10 - v3), 1.0);
    if (v12 < 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v12;
    }

    v11(v14, v13, 0.0);
    sub_F704(v11);
  }

  sub_43480C(v1);
}

void sub_43480C(void *a1)
{
  v2 = v1;
  [a1 _systemContentInset];
  v5 = v4;
  [a1 contentOffset];
  v7 = v6;
  [a1 contentInset];
  v9 = v5 + v7 + v8;
  [a1 frame];
  v10 = v2[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_6231FC(Strong);
  v13 = v12;
  v15 = v14;

  if (v9 >= 0.0)
  {
    v16 = -v9;
    if (-v15 - *&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset] > -v9)
    {
      v16 = -v15 - *&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset];
    }
  }

  else
  {
    v15 = fabs(v9) + v15;
    v16 = 0.0;
  }

  [v10 setFrame:{0.0, v16, v13, v15}];
  v17 = v9 * 0.28;
  if (v9 * 0.28 < 0.0)
  {
    v17 = 0.0;
  }

  v18 = *(*&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  v19 = *&v18[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY];
  *&v18[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = v17;
  if (v17 != v19)
  {
    [v18 setNeedsLayout];
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  sub_622DF8(v20);
  v22 = v21;

  v23 = fmin(v9 / (v22 - v5), 1.0);
  if (v23 < 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v23;
  }

  v25 = v2[5];
  if (v25)
  {
    v26 = v2[4];

    v27 = [v26 _verticalVelocity];
    v25(v27, v24, v28);
    sub_F704(v25);
  }

  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    v31 = [v29 navigationController];

    if (v31)
    {
      v32 = [v31 navigationBar];

      [v32 _setTitleOpacity:v24];
    }
  }
}

CGFloat sub_434A90()
{
  v1 = v0;
  v2 = *(v0 + 32);
  [v2 _systemContentInset];
  v4 = v3;
  [v2 contentOffset];
  v6 = v5;
  [v2 contentInset];
  v8 = v4 + v6 + v7;
  [v2 frame];
  v9 = *(v1 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_6231FC(Strong);
  v12 = v11;
  v14 = v13;

  if (v8 >= 0.0)
  {
    v15 = -v8;
    if (-v14 - *(v9 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset) > -v8)
    {
      v15 = -v14 - *(v9 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset);
    }
  }

  else
  {
    v14 = fabs(v8) + v14;
    v15 = 0.0;
  }

  v16 = 0;
  v17 = v12;
  v18 = v14;
  return CGRectGetHeight(*(&v15 - 1)) - v4 - *(v9 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentBottomInset);
}