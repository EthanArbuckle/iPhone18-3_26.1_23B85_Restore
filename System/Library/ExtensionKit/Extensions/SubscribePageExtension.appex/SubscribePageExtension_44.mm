unint64_t sub_1004FCD00()
{
  result = qword_10093B758;
  if (!qword_10093B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B758);
  }

  return result;
}

unint64_t sub_1004FCD58()
{
  result = qword_10093B760;
  if (!qword_10093B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B760);
  }

  return result;
}

void sub_1004FCDF8()
{
  v1 = sub_100743B04();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starSize];
  v22 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars];
  v7 = v0[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_useCase];
  v8 = [v0 traitCollection];
  v9 = [v0 minimumContentSizeCategory];
  v10 = [v0 maximumContentSizeCategory];
  v26.value._rawValue = v9;
  v26.is_nil = v10;
  v11.super.isa = sub_1007537C4(v26, v27).super.isa;

  if (v6 <= 1)
  {
    if (v6)
    {
      v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
    }

    else
    {
      v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
    }
  }

  else if (v6 == 2)
  {
    v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v6 == 3)
  {
    if ((v7 & 1) != 0 || (v12 = sub_10074F3F4(), v24 = v12, v25 = sub_1001FC0C4(), v13 = sub_10000D134(v23), (*(*(v12 - 8) + 104))(v13, enum case for Feature.search_tags(_:), v12), LOBYTE(v12) = sub_10074FC74(), sub_10000C620(v23), (v12 & 1) == 0))
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = [objc_opt_self() configurationWithPointSize:4 weight:v14 scale:10.0];
  }

  else
  {
    if ((v7 & 1) != 0 || (v16 = sub_10074F3F4(), v24 = v16, v25 = sub_1001FC0C4(), v17 = sub_10000D134(v23), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = sub_10074FC74(), sub_10000C620(v23), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v15 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:6.0];
  }

  v19 = v15;
  (*(v2 + 104))(v5, enum case for SystemImage.star(_:), v1);
  v20 = [v19 configurationWithTraitCollection:v11.super.isa];
  v21 = sub_100743AE4();

  (*(v2 + 8))(v5, v1);
  [v21 contentInsets];
  [v21 contentInsets];
  [v21 size];
  [v21 contentInsets];
  [v21 contentInsets];
  [v21 size];
}

double sub_1004FD2F8(void *a1)
{
  v3 = sub_100743B04();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starSize];
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding];
  v51 = v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding + 8];
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars];
  v49 = v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_useCase];
  v11 = [a1 traitCollection];
  v12 = [v1 minimumContentSizeCategory];
  v13 = [v1 maximumContentSizeCategory];
  v56.value._rawValue = v12;
  v56.is_nil = v13;
  isa = sub_1007537C4(v56, v57).super.isa;

  if (v8 <= 1)
  {
    if (v8)
    {
      v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
    }

    else
    {
      v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
    }
  }

  else if (v8 == 2)
  {
    v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v49 & 1) != 0 || (v14 = sub_10074F3F4(), v54 = v14, v55 = sub_1001FC0C4(), v15 = sub_10000D134(v53), (*(*(v14 - 8) + 104))(v15, enum case for Feature.search_tags(_:), v14), LOBYTE(v14) = sub_10074FC74(), sub_10000C620(v53), (v14 & 1) == 0))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = [objc_opt_self() configurationWithPointSize:4 weight:v16 scale:10.0];
  }

  else
  {
    if ((v49 & 1) != 0 || (v18 = sub_10074F3F4(), v54 = v18, v55 = sub_1001FC0C4(), v19 = sub_10000D134(v53), (*(*(v18 - 8) + 104))(v19, enum case for Feature.search_tags(_:), v18), LOBYTE(v18) = sub_10074FC74(), sub_10000C620(v53), (v18 & 1) == 0))
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v17 = [objc_opt_self() configurationWithPointSize:4 weight:v20 scale:6.0];
  }

  v21 = v10;
  v22 = v17;
  v23 = *(v4 + 104);
  v23(v7, enum case for SystemImage.star(_:), v3);
  v24 = [v22 configurationWithTraitCollection:isa];
  v25 = sub_100743AE4();

  v26 = *(v4 + 8);
  v26(v7, v3);
  [v25 contentInsets];
  v28 = v27;
  [v25 contentInsets];
  v30 = v28 + v29;
  [v25 size];
  v32 = v31 - v30;
  [v25 contentInsets];
  [v25 contentInsets];
  [v25 size];

  if (!v51)
  {
    goto LABEL_26;
  }

  if (v8 == 4 || v8 == 2)
  {
    v9 = 2.0;
    goto LABEL_26;
  }

  v9 = 6.0;
  if (!v8)
  {
LABEL_26:
    v34 = v32 * v21 + v9 * (v21 + -1.0);
    goto LABEL_27;
  }

  v33 = v30 * (v21 + -1.0);
  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  v34 = v32 * v21 + v33;
LABEL_27:
  v50 = v26;
  if (v8 <= 1)
  {
    if (v8)
    {
      v38 = &UIFontTextStyleCaption2;
    }

    else
    {
      v38 = &UIFontTextStyleHeadline;
    }

    v39 = [objc_opt_self() configurationWithTextStyle:*v38 scale:2];
  }

  else if (v8 == 2)
  {
    v39 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v49 & 1) != 0 || (v35 = sub_10074F3F4(), v54 = v35, v55 = sub_1001FC0C4(), v36 = sub_10000D134(v53), (*(*(v35 - 8) + 104))(v36, enum case for Feature.search_tags(_:), v35), LOBYTE(v35) = sub_10074FC74(), sub_10000C620(v53), (v35 & 1) == 0))
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    v39 = [objc_opt_self() configurationWithPointSize:4 weight:v37 scale:10.0];
  }

  else
  {
    if ((v49 & 1) != 0 || (v40 = sub_10074F3F4(), v54 = v40, v55 = sub_1001FC0C4(), v41 = sub_10000D134(v53), (*(*(v40 - 8) + 104))(v41, enum case for Feature.search_tags(_:), v40), LOBYTE(v40) = sub_10074FC74(), sub_10000C620(v53), (v40 & 1) == 0))
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }

    v39 = [objc_opt_self() configurationWithPointSize:4 weight:v42 scale:6.0];
  }

  v43 = v39;
  v23(v7, enum case for SystemImage.starFill(_:), v3);
  v44 = isa;
  v45 = [v43 configurationWithTraitCollection:isa];
  v46 = sub_100743AE4();

  v50(v7, v3);
  sub_100753F34();
  [v46 contentInsets];

  return v34;
}

void sub_1004FDAB0()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starImageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starLayer;
  *(v0 + v3) = [objc_allocWithZone(CAReplicatorLayer) init];
  sub_100754644();
  __break(1u);
}

id sub_1004FDB8C(uint64_t a1)
{
  if (!a1)
  {
    sub_10004E1D8();
    return sub_10004E1D8();
  }

  sub_100748E14();
  v1 = sub_100743EA4();
  v2 = sub_1001D3738(v1, sub_1000E12F0);

  v3 = sub_100743E94();
  sub_10004DF04(v3, 0, v2);

  if (!sub_100748E24())
  {
    return sub_10004E1D8();
  }

  v4 = sub_100743EA4();
  v5 = sub_1001D3738(v4, sub_100349614);

  v6 = sub_100743E94();
  sub_10004DF04(v6, 0, v5);
}

uint64_t sub_1004FDDBC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100748144();
  sub_100039C50(v4, qword_100982140);
  v24 = sub_10000D0FC(v4, qword_100982140);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v5 = sub_100750B04();
  v6 = sub_10000D0FC(v5, qword_100982098);
  v31[3] = v5;
  v31[4] = &protocol witness table for StaticDimension;
  v7 = sub_10000D134(v31);
  v21 = *(*(v5 - 8) + 16);
  v21(v7, v6, v5);
  *v3 = UIFontTextStyleBody;
  v8 = v1[13];
  v23 = enum case for FontSource.textStyle(_:);
  v22 = v8;
  v8(v3);
  v30[3] = v5;
  v30[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v30);
  v28 = v0;
  v29 = &protocol witness table for FontSource;
  v9 = sub_10000D134(v27);
  v20 = v1[2];
  v20(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  sub_100750B14();
  v19 = v1[1];
  v19(v3, v0);
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v5, qword_1009820C8);
  v28 = v5;
  v29 = &protocol witness table for StaticDimension;
  v12 = sub_10000D134(v27);
  v21(v12, v11, v5);
  *v3 = v10;
  v13 = v23;
  v14 = v22;
  v22(v3, v23, v0);
  v26[3] = v5;
  v26[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v26);
  v25[3] = v0;
  v25[4] = &protocol witness table for FontSource;
  v15 = sub_10000D134(v25);
  v20(v15, v3, v0);
  v16 = v10;
  sub_100750B14();
  v19(v3, v0);
  *v3 = v16;
  v14(v3, v13, v0);
  v17 = v16;
  return sub_100748124();
}

uint64_t sub_1004FE178(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100750B04();
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  *v6 = UIFontTextStyleBody;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v12[3] = v3;
  v12[4] = &protocol witness table for FontSource;
  v8 = sub_10000D134(v12);
  (*(v4 + 16))(v8, v6, v3);
  v9 = UIFontTextStyleBody;
  sub_100750B14();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004FE2EC()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_10093B780 = sub_100752E44();
  unk_10093B788 = &protocol witness table for OSLogger;
  sub_10000D134(qword_10093B768);
  return sub_100752E34();
}

uint64_t sub_1004FE430()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_10000C518(&qword_10093B7C0);
  v3 = sub_100752DE4();
  v4 = [objc_opt_self() authorizationStatusForEntityType:0];
  if ((v4 - 1) < 2)
  {
    goto LABEL_6;
  }

  if ((v4 - 3) < 2)
  {
    LOBYTE(v9[0]) = 1;
LABEL_7:
    sub_100752DB4();
    return v3;
  }

  if (v4)
  {
LABEL_6:
    LOBYTE(v9[0]) = 0;
    goto LABEL_7;
  }

  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17EventStoreManager_eventStore);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = ObjectType;
  v9[4] = sub_1004FE870;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1005171C8;
  v9[3] = &unk_1008795B8;
  v7 = _Block_copy(v9);

  [v5 requestWriteOnlyAccessToEventsWithCompletion:v7];
  _Block_release(v7);
  return v3;
}

uint64_t sub_1004FE59C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_100752DB4();
  }

  swift_errorRetain();
  if (qword_100921750 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_10093B768, qword_10093B780);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_10000D134(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_100752444();
  sub_1000277BC(v5);
  sub_100752CE4();

  sub_100752DA4();
}

uint64_t sub_1004FE838()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004FE878(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1004FE890(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_10000C518(&qword_100926DC0);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v27 - v12;
  if ((a2 & 1) == 0)
  {
    v28 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView];
    v15 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView];
    [v15 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v15, "isHidden")}];
    v16 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_100171C7C(&v15[v16], v13);
    v17 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_10043084C(v13, v14 + v17);
    swift_endAccess();
    v18 = [*&v15[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView] image];
    if (v18)
    {
      v19 = &v15[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize];
      if ((v15[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize + 16] & 1) != 0 || (v20 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v21 = *v19;
        v27 = v19[1];
        v22 = v18;

        v23 = v22;
        sub_100527FD0(v22, v21, v27, 0, v20, a3, v28);
      }
    }

    v24 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView];
    v25 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView];
    [v25 frame];
    [v24 setFrame:?];
    [v24 setHidden:{objc_msgSend(v25, "isHidden")}];
  }

  return [v5 setHidden:{objc_msgSend(a1, "isHidden", v11)}];
}

char *sub_1004FEB20(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_sourceView] = a1;
  v5 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView];
  v6 = type metadata accessor for RevealingImageMirrorView();
  v21.receiver = objc_allocWithZone(v6);
  v21.super_class = v6;
  v7 = a1;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  if (qword_100920C18 != -1)
  {
    swift_once();
  }

  v20[4] = *&byte_1009802F0[64];
  v20[5] = *&byte_1009802F0[80];
  v20[6] = *&byte_1009802F0[96];
  v20[7] = *&byte_1009802F0[112];
  v20[0] = *byte_1009802F0;
  v20[1] = *&byte_1009802F0[16];
  v20[2] = *&byte_1009802F0[32];
  v20[3] = *&byte_1009802F0[48];
  [v10 setTransform:v20];

  v11 = &v8[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v11 + 1) = &off_100875B18;
  swift_unknownObjectWeakAssign();
  sub_1005274D4(Strong);

  *&v2[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView] = v9;
  v13 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView];
  v14 = objc_allocWithZone(type metadata accessor for RevealingVideoMirrorView());
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView] = sub_1005626D0(v13);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView];
  v17 = v15;
  [v17 addSubview:v16];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView]];
  [v17 setClipsToBounds:1];

  return v17;
}

id sub_1004FEDD0()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView];
  [v0 bounds];
  MidX = CGRectGetMidX(v14);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_sourceView;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_sourceView] frame];
  v4 = MidX - CGRectGetWidth(v15) * 0.5;
  [v0 bounds];
  MinX = CGRectGetMinX(v16);
  [*&v0[v3] frame];
  Width = CGRectGetWidth(v17);
  [*&v0[v3] frame];
  [v1 setFrame:{v4, MinX, Width, CGRectGetHeight(v18)}];
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView];
  [v0 bounds];
  v8 = CGRectGetMidX(v19);
  [*&v0[v3] frame];
  v9 = v8 - CGRectGetWidth(v20) * 0.5;
  [v0 bounds];
  v10 = CGRectGetMinX(v21);
  [*&v0[v3] frame];
  v11 = CGRectGetWidth(v22);
  [*&v0[v3] frame];
  return [v7 setFrame:{v9, v10, v11, CGRectGetHeight(v23)}];
}

void sub_1004FF058()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_100753064();
    v5 = sub_100753064();
    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_1004FF13C(void *a1)
{
  v1 = a1;
  sub_1004FF058();
}

double sub_1004FF184(void *a1)
{
  v1 = a1;
  sub_1004C4774(v1);

  return 0.0;
}

id sub_1004FF1D8()
{
  v1 = v0;
  v2 = sub_100747154();
  v174 = *(v2 - 8);
  v175 = v2;
  __chkstk_darwin(v2);
  v173 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747144();
  v170 = *(v4 - 8);
  v171 = v4;
  __chkstk_darwin(v4);
  v172 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100747134();
  v167 = *(v6 - 8);
  v168 = v6;
  __chkstk_darwin(v6);
  v169 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100747184();
  v176 = *(v8 - 8);
  __chkstk_darwin(v8);
  v164 = (&v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10074CD14();
  v166 = *(v10 - 8);
  __chkstk_darwin(v10);
  v165 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100747174();
  v191 = *(v12 - 8);
  v192 = v12;
  __chkstk_darwin(v12);
  v153 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v190 = &v148 - v15;
  __chkstk_darwin(v16);
  v189 = &v148 - v17;
  __chkstk_darwin(v18);
  v20 = &v148 - v19;
  v21 = sub_100740E74();
  v154 = *(v21 - 8);
  v155 = v21;
  __chkstk_darwin(v21);
  v151 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v182);
  v183 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C518(&qword_1009289F8);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v150 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v186 = (&v148 - v28);
  __chkstk_darwin(v29);
  v185 = &v148 - v30;
  __chkstk_darwin(v31);
  v152 = &v148 - v32;
  __chkstk_darwin(v33);
  v188 = (&v148 - v34);
  __chkstk_darwin(v35);
  v187 = (&v148 - v36);
  __chkstk_darwin(v37);
  v180 = &v148 - v38;
  *&v40 = __chkstk_darwin(v39).n128_u64[0];
  v42 = &v148 - v41;
  result = [v0 collectionView];
  if (result)
  {
    v44 = result;
    v160 = v10;
    v161 = v25;
    v158 = v24;
    v159 = v8;
    v179 = v20;
    [result frame];

    v184 = sub_10074AB34();
    v46 = v45;
    v47 = v1;
    if (qword_100921EA0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for TitleHeaderView.Style(0);
    v49 = sub_10000D0FC(v48, qword_100983178);
    sub_1004C4774(v49);
    v50 = [v47 traitCollection];
    v51 = v191 + 56;
    v52 = *(v191 + 56);
    v177 = v42;
    v53 = v42;
    v54 = v192;
    v52(v53, 1, 1, v192);
    v156 = v52;
    v157 = v51;
    v52(v180, 1, 1, v54);
    v222 = 0;
    memset(v221, 0, sizeof(v221));
    v220 = 0;
    memset(v219, 0, sizeof(v219));
    v178 = v48;
    v55 = *(v48 + 20);
    v181 = v49;
    v149 = v55;
    sub_10010A978(v49 + v55, v183, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100038D38();
    v162 = v50;
    v56 = sub_100753C14();
    v57 = v46;
    v163 = v47;
    if (!v46)
    {
      v62 = v192;
      goto LABEL_11;
    }

    v58 = v184;
    *&v216 = v184;
    *(&v216 + 1) = v46;

    v59 = v151;
    sub_100740E54();
    sub_1000D5C0C();
    sub_1007542C4();
    v61 = v60;
    (v154)[1](v59, v155);

    if (v61)
    {
      v62 = v192;
      goto LABEL_11;
    }

    [v56 lineHeight];
    v64 = ceil(v63 * 1.3);
    v65 = &v200;
    v62 = v192;
    if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v64 > -9.22337204e18)
    {
      if (v64 < 9.22337204e18)
      {
LABEL_11:
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
        v66 = sub_10074F3F4();
        v214 = v66;
        v215 = sub_1005013D8(&qword_10092AC70, &type metadata accessor for Feature);
        v67 = sub_10000D134(v213);
        (*(*(v66 - 8) + 104))(v67, enum case for Feature.measurement_with_labelplaceholder(_:), v66);

        v68 = v56;
        sub_10074FC74();
        sub_10000C620(v213);
        v69 = v165;
        v154 = v68;
        v155 = v57;
        sub_10074CD04();
        sub_10074CCE4();
        (*(v166 + 8))(v69, v160);
        sub_100016B4C(&v216, v212, &unk_100928A00);
        v70 = v214;
        v71 = v215;
        v72 = sub_10000C888(v213, v214);
        v211[3] = v70;
        v211[4] = *(v71 + 8);
        v73 = sub_10000D134(v211);
        (*(*(v70 - 8) + 16))(v73, v72, v70);
        v75 = v182;
        v74 = v183;
        v76 = *(v183 + v182[8]);
        v209 = &type metadata for Float;
        v210 = &protocol witness table for Float;
        v208 = v76;
        v77 = v182[9];
        v78 = sub_100750B04();
        v207[3] = v78;
        v207[4] = &protocol witness table for StaticDimension;
        v79 = sub_10000D134(v207);
        v80 = *(*(v78 - 8) + 16);
        v80(v79, v74 + v77, v78);
        v81 = v75[10];
        v206[3] = v78;
        v206[4] = &protocol witness table for StaticDimension;
        v82 = sub_10000D134(v206);
        v80(v82, v74 + v81, v78);
        sub_100016B4C(v221, &v200, &qword_10092BC30);
        v83 = *(&v201 + 1);
        if (*(&v201 + 1))
        {
          v84 = v202;
          v85 = sub_10000C888(&v200, *(&v201 + 1));
          *(&v204 + 1) = v83;
          v205 = *(v84 + 8);
          v86 = sub_10000D134(&v203);
          (*(*(v83 - 8) + 16))(v86, v85, v83);
          sub_10000C620(&v200);
        }

        else
        {
          sub_10000C8CC(&v200, &qword_10092BC30);
          v203 = 0u;
          v204 = 0u;
          v205 = 0;
        }

        v87 = v179;
        v88 = v186;
        sub_100016B4C(v219, v197, &qword_10092BC30);
        v89 = v198;
        if (v198)
        {
          v90 = v199;
          v91 = sub_10000C888(v197, v198);
          *(&v201 + 1) = v89;
          v202 = *(v90 + 8);
          v92 = sub_10000D134(&v200);
          (*(*(v89 - 8) + 16))(v92, v91, v89);
          sub_10000C620(v197);
        }

        else
        {
          sub_10000C8CC(v197, &qword_10092BC30);
          v200 = 0u;
          v201 = 0u;
          v202 = 0;
        }

        v93 = v182;
        v94 = v183;
        sub_10000C824(v183 + v182[12], v197);
        sub_10000C824(v94 + v93[13], &v196);
        v194 = &type metadata for Double;
        v195 = &protocol witness table for Double;
        v193 = 0x4020000000000000;
        sub_100747164();
        sub_10000C620(v213);
        sub_10000C8CC(&v216, &unk_100928A00);
        v95 = *(v181 + v178[9]);
        sub_10000C518(&qword_100928A10);
        v96 = *(v161 + 72);
        v97 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        if (v95)
        {
          if (v95 == 1)
          {
            v166 = swift_allocObject();
            v98 = (v166 + v97);
            sub_100016B4C(v177, v166 + v97, &qword_1009289F8);
            v99 = v191 + 16;
            (*(v191 + 16))(&v98[v96], v87, v62);
            v156(&v98[v96], 0, 1, v62);
            sub_100016B4C(v180, &v98[2 * v96], &qword_1009289F8);
            v100 = (v99 + 32);
            v189 = (v99 + 16);
            v101 = _swiftEmptyArrayStorage;
            v102 = 3;
            v184 = v96;
            v185 = v98;
            v103 = v98;
            v104 = &qword_1009289F8;
            v187 = v100;
            do
            {
              v105 = v188;
              sub_100016B4C(v103, v188, v104);
              sub_100501368(v105, v88);
              v106 = v192;
              if ((*v100)(v88, 1, v192) == 1)
              {
                sub_10000C8CC(v88, v104);
              }

              else
              {
                v107 = v104;
                v108 = *v189;
                (*v189)(v190, v88, v106);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v101 = sub_100255918(0, *(v101 + 2) + 1, 1, v101);
                }

                v110 = *(v101 + 2);
                v109 = *(v101 + 3);
                if (v110 >= v109 >> 1)
                {
                  v101 = sub_100255918(v109 > 1, v110 + 1, 1, v101);
                }

                v100 = v187;
                *(v101 + 2) = v110 + 1;
                v108(&v101[((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v110], v190, v192);
                v88 = v186;
                v104 = v107;
                v96 = v184;
              }

              v103 += v96;
              --v102;
            }

            while (v102);
            swift_setDeallocating();
            swift_arrayDestroy();
            v65 = v159;
            v52 = v164;
            v62 = v192;
          }

          else
          {
            v123 = swift_allocObject();
            v124 = v123 + v97;
            sub_100016B4C(v177, v123 + v97, &qword_1009289F8);
            v125 = v191;
            (*(v191 + 16))(v123 + v97 + v96, v87, v62);
            v156((v123 + v97 + v96), 0, 1, v62);
            v126 = v152;
            sub_100016B4C(v123 + v97, v152, &qword_1009289F8);
            v127 = v150;
            sub_100501368(v126, v150);
            v128 = *(v125 + 48);
            v129 = (v125 + 32);
            if (v128(v127, 1, v62) == 1)
            {
              sub_10000C8CC(v127, &qword_1009289F8);
              v130 = _swiftEmptyArrayStorage;
            }

            else
            {
              v166 = v123;
              v131 = *v129;
              (*v129)(v153, v127, v62);
              v130 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v130 = sub_100255918(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v133 = *(v130 + 2);
              v132 = *(v130 + 3);
              if (v133 >= v132 >> 1)
              {
                v130 = sub_100255918(v132 > 1, v133 + 1, 1, v130);
              }

              *(v130 + 2) = v133 + 1;
              v134 = &v130[((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v133];
              v62 = v192;
              v131(v134, v153, v192);
              v127 = v150;
            }

            v135 = v124 + v96;
            v136 = v152;
            sub_100016B4C(v135, v152, &qword_1009289F8);
            sub_100501368(v136, v127);
            if (v128(v127, 1, v62) == 1)
            {
              sub_10000C8CC(v127, &qword_1009289F8);
              v65 = v159;
            }

            else
            {
              v137 = *v129;
              (*v129)(v153, v127, v62);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v65 = v159;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v130 = sub_100255918(0, *(v130 + 2) + 1, 1, v130);
              }

              v140 = *(v130 + 2);
              v139 = *(v130 + 3);
              if (v140 >= v139 >> 1)
              {
                v130 = sub_100255918(v139 > 1, v140 + 1, 1, v130);
              }

              *(v130 + 2) = v140 + 1;
              v137(&v130[((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v140], v153, v62);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
            v52 = v164;
          }
        }

        else
        {
          v166 = swift_allocObject();
          v111 = v166 + v97;
          sub_100016B4C(v177, v166 + v97, &qword_1009289F8);
          sub_100016B4C(v180, v111 + v96, &qword_1009289F8);
          v112 = v191 + 16;
          (*(v191 + 16))(v111 + 2 * v96, v87, v62);
          v113 = v62;
          v156((v111 + 2 * v96), 0, 1, v62);
          v186 = (v112 + 32);
          v188 = (v112 + 16);
          v190 = _swiftEmptyArrayStorage;
          v114 = 3;
          v165 = v111;
          v115 = v185;
          do
          {
            v116 = v96;
            v117 = v187;
            sub_100016B4C(v111, v187, &qword_1009289F8);
            sub_100501368(v117, v115);
            if ((*v186)(v115, 1, v113) == 1)
            {
              sub_10000C8CC(v115, &qword_1009289F8);
            }

            else
            {
              v118 = *v188;
              (*v188)(v189, v115, v113);
              v119 = v190;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v119 = sub_100255918(0, *(v119 + 2) + 1, 1, v119);
              }

              v121 = *(v119 + 2);
              v120 = *(v119 + 3);
              if (v121 >= v120 >> 1)
              {
                v119 = sub_100255918(v120 > 1, v121 + 1, 1, v119);
              }

              *(v119 + 2) = v121 + 1;
              v122 = (*(v191 + 80) + 32) & ~*(v191 + 80);
              v190 = v119;
              v113 = v192;
              v118(&v119[v122 + *(v191 + 72) * v121], v189);
              v115 = v185;
            }

            v96 = v116;
            v111 += v116;
            --v114;
          }

          while (v114);
          swift_setDeallocating();
          swift_arrayDestroy();
          v65 = v159;
          v52 = v164;
          v62 = v113;
        }

        swift_deallocClassInstance();
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
        sub_100016B4C(&v216, v213, &unk_100928A00);
        v141 = v178;
        v142 = v181;
        v143 = *(v181 + v178[14]);
        v212[3] = &type metadata for CGFloat;
        v212[4] = &protocol witness table for CGFloat;
        v212[0] = v143;
        (*(v167 + 16))(v169, v181 + v178[10], v168);
        (*(v170 + 16))(v172, v142 + v141[11], v171);
        (*(v174 + 104))(v173, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v175);
        sub_100747104();
        sub_100753BA4();
        sub_1005013D8(&qword_100928A18, &type metadata accessor for TitleHeaderLayout);
        sub_100750404();
        v213[0] = v144;
        v213[1] = v145;
        sub_100753BB4();
        if (JUScreenClassGetMain() != 1)
        {

          (*(v176 + 8))(v52, v65);
          (*(v191 + 8))(v179, v62);
          sub_1003B6E50(v183);
          sub_10000C8CC(v219, &qword_10092BC30);
          sub_10000C8CC(v221, &qword_10092BC30);
          sub_10000C8CC(v180, &qword_1009289F8);
          sub_10000C8CC(v177, &qword_1009289F8);
          goto LABEL_62;
        }

        v57 = v176;
        v58 = v177;
        v59 = v179;
        if (qword_100920AD0 != -1)
        {
          swift_once();
        }

        v146 = sub_10000D0FC(v182, qword_10097FF28);
        v61 = v149;
        if (sub_10010A2FC(v181 + v149, v146))
        {

          (*(v57 + 8))(v52, v65);
          (*(v191 + 8))(v59, v62);
          sub_1003B6E50(v183);
          sub_10000C8CC(v219, &qword_10092BC30);
          sub_10000C8CC(v221, &qword_10092BC30);
          sub_10000C8CC(v180, &qword_1009289F8);
          sub_10000C8CC(v58, &qword_1009289F8);
LABEL_62:
          sub_10000C8CC(&v216, &unk_100928A00);
        }

        if (qword_100920AD8 == -1)
        {
LABEL_61:
          v147 = sub_10000D0FC(v182, qword_10097FF40);
          sub_10010A2FC(v181 + v61, v147);

          (*(v57 + 8))(v52, v65);
          (*(v191 + 8))(v59, v62);
          sub_1003B6E50(v183);
          sub_10000C8CC(v219, &qword_10092BC30);
          sub_10000C8CC(v221, &qword_10092BC30);
          sub_10000C8CC(v180, &qword_1009289F8);
          sub_10000C8CC(v58, &qword_1009289F8);
          goto LABEL_62;
        }

LABEL_66:
        swift_once();
        goto LABEL_61;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_65;
  }

  __break(1u);
  return result;
}

id sub_100500AE0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x800000010076E360 == a3 || (sub_100754754() & 1) != 0)
  {
    v9 = sub_100753064();
    v10 = sub_100753064();
    v11.super.isa = sub_100741704().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v10 = sub_100753064();
    v11.super.isa = sub_100741704().super.isa;
    v14.receiver = v4;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v10, v11.super.isa);
  }

  return v12;
}

id sub_100500C34(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100753094();
  v11 = v10;
  sub_100741744();
  v12 = a3;
  v13 = a1;
  v14 = sub_100500AE0(v12, v9, v11);

  (*(v6 + 8))(v8, v5);

  return v14;
}

void sub_100500D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 != 0xD000000000000039 || 0x800000010076E360 != a4) && (sub_100754754() & 1) == 0)
  {
    v25 = sub_100753064();
    isa = sub_100741704().super.isa;
    v26.receiver = v5;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", a1, a2, v25, isa);

    goto LABEL_14;
  }

  type metadata accessor for TitleHeaderView(0);
  v14 = swift_dynamicCastClassUnconditional();
  v15 = sub_1004C4774(v14);
  if (v15 > 40.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 40.0;
  }

  [v14 setLayoutMargins:{0.0, v16, 0.0, v16}];
  v17 = (v14 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines);
  *v17 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v17[1] = 0;

  v18 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel;
  [*(v14 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel) setNumberOfLines:0];
  [*(v14 + v18) setAllowsDefaultTighteningForTruncation:1];
  v19 = sub_1004C4774([*(v14 + v18) setTextAlignment:1]);
  if (v19 <= 40.0)
  {
    v19 = 40.0;
  }

  v20 = (v14 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorInset);
  *v20 = 0.0;
  v20[1] = v19;
  v20[2] = 0.0;
  v20[3] = v19;
  [v14 setNeedsLayout];
  if (qword_100921EA0 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v11, qword_100983178);
  sub_10010A978(v21, v13, type metadata accessor for TitleHeaderView.Style);
  (*((swift_isaMask & *v14) + 0x1C8))(v13);
  sub_10074AB34();
  if (v22)
  {
    v23 = *(v14 + v18);
    isa = sub_100753064();

    [v23 setText:isa];
LABEL_14:
  }
}

uint64_t sub_1005010B4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100753094();
  v13 = v12;
  sub_100741744();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_100500D74(v14, v15, v11, v13);

  return (*(v8 + 8))(v10, v7);
}

uint64_t type metadata accessor for PrivacyDefinitionsViewController()
{
  result = qword_10093B830;
  if (!qword_10093B830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100501368(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009289F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005013D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100501420()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_100501484(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746994();
  v9 = sub_100741784();
  (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      if (a1)
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 8);
        v14 = a1;
        v15 = v13(ObjectType, v11);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
          v18 = [Strong view];

          if (!v18)
          {
            __break(1u);
            return;
          }

          v19 = [v18 safeAreaLayoutGuide];

          [v19 layoutFrame];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v39.origin.x = v21;
          v39.origin.y = v23;
          v39.size.width = v25;
          v39.size.height = v27;
          MinY = CGRectGetMinY(v39);
        }

        else
        {
          MinY = 0.0;
        }

        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v31 = *&v29[qword_10097D2D8];
          if (v31)
          {
            v32 = v15 - MinY;

            if (v32 == *(v31 + 32))
            {

              return;
            }

            *(v31 + 32) = v32;
            [a3 _systemContentInset];
            v34 = v33;
            [a3 contentOffset];
            v36 = v35;
            [a3 contentInset];
            (*(v31 + 16))(v34 + v36 + v37 > *(v31 + 32));
          }

          else
          {
          }
        }
      }
    }
  }
}

id sub_10050174C(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_placement];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  sub_10000C518(&unk_1009249D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007A5A00;
  *(v18 + 32) = sub_100751544();
  *(v18 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v16;
}

void sub_100501AE8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] removeFromSuperview];
  v2 = *&v0[v1];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;
}

double sub_100501BB4()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;

  return v3;
}

void sub_100501C2C(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView];
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
  v7 = a1;

  if (a1)
  {
    v6 = [v1 contentView];
    [v6 addSubview:v7];

    [v7 updateTraitsIfNeeded];
    [v7 setNeedsLayout];
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

void (*sub_100501D2C(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_100501D84;
}

void sub_100501D84(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v8 = v2;
    sub_100501C2C(v2);
LABEL_8:

    return;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *&v3[v4];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v3[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v3[v4] = v2;
  v8 = v2;

  if (v2)
  {
    v7 = [v3 contentView];
    [v7 addSubview:v8];

    [v8 updateTraitsIfNeeded];
    [v8 setNeedsLayout];
    [v3 setNeedsLayout];
    [v3 layoutIfNeeded];
    goto LABEL_8;
  }
}

id sub_100501E9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100501F6C()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100502010()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100502068(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *sub_100502128()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100502174(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10050222C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView);
  v2 = v1;
  return v1;
}

void (*sub_100502260(void *a1))(void *a1)
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
  v2[4] = sub_100501D2C(v2);
  return sub_100018728;
}

double sub_1005022D0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2 && (v3 = objc_opt_self(), v4 = [v3 mainScreen], objc_msgSend(v4, "bounds"), v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, v31.origin.x = v6, v31.origin.y = v8, v31.size.width = v10, v31.size.height = v12, Width = CGRectGetWidth(v31), v14 = objc_msgSend(v3, "mainScreen"), objc_msgSend(v14, "bounds"), v16 = v15, v18 = v17, v20 = v19, v22 = v21, v14, v32.origin.x = v16, v32.origin.y = v18, v32.size.width = v20, v32.size.height = v22, CGRectGetHeight(v32) < Width))
  {
    v23 = [v0 contentView];
    [v23 bounds];

    v24 = [v3 mainScreen];
    [v24 bounds];

    v25 = [v0 contentView];
    [v25 bounds];

    sub_100753AD4();
    return v26;
  }

  else
  {
    v28 = [v0 contentView];
    [v28 bounds];
    v27 = v29;
  }

  return v27;
}

void sub_100502514()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
}

id sub_100502668(char *a1)
{
  [*&a1[OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] updateTraitsIfNeeded];

  return [a1 setNeedsLayout];
}

uint64_t sub_1005026BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_10093BF48);
  v4 = *(v1 + qword_10093BF50);
  v5 = type metadata accessor for TopChartsSegmentPageGridProvider();
  v6 = swift_allocObject();
  sub_100744594();
  swift_allocObject();
  *(v6 + 24) = sub_100744584();
  *(v6 + 16) = v3;
  *(v6 + 17) = v4;
  a1[3] = v5;
  result = sub_100502C28(&qword_10093C500, type metadata accessor for TopChartsSegmentPageGridProvider);
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_100502788@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  a1[3] = &type metadata for TopChartSegmentPageShelfLayoutSpacingProvider;
  result = sub_100502BD4();
  a1[4] = result;
  *a1 = sub_100502BB4;
  a1[1] = v2;
  return result;
}

void *sub_1005027FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TopChartSegmentShelfSupplementaryProvider();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = sub_100502C70;
  v3[4] = v2;
  sub_100502C28(&qword_10093C4F0, type metadata accessor for TopChartSegmentShelfSupplementaryProvider);

  return v3;
}

uint64_t sub_1005028CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong[qword_10093BF48];

  return v1;
}

uint64_t sub_100502930(char a1, char a2)
{
  swift_getObjectType();
  v5 = qword_10093BF48;
  *(v2 + qword_10093BF48) = a1 & 1;
  *(v2 + qword_10093BF50) = a2 & 1;
  sub_100502C28(&qword_10093C4E0, type metadata accessor for TopChartDiffableSegmentViewController);
  sub_10074D9D4();
  sub_10000C518(&qword_100930960);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  result = swift_dynamicCast();
  if (result)
  {
    *(v7 + 16) = *(v2 + v5);
    *(v7 + 17) = a2 & 1;
    sub_100502C28(&qword_10093C4E8, type metadata accessor for TopChartsSegmentPageGridProvider);
    sub_100745694();
  }

  return result;
}

uint64_t type metadata accessor for TopChartDiffableSegmentViewController()
{
  result = qword_10093BF80;
  if (!qword_10093BF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100502B28()
{
  result = qword_10093C4D8;
  if (!qword_10093C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C4D8);
  }

  return result;
}

uint64_t sub_100502B7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100502BD4()
{
  result = qword_10093C4F8;
  if (!qword_10093C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C4F8);
  }

  return result;
}

uint64_t sub_100502C28(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100502C74()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_100502CAC(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_100502D04;
}

void sub_100502D04(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_100324A1C(v2);
  }

  else
  {
    sub_100324A1C(*a1);
  }
}

uint64_t sub_100502D9C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100502F70(&qword_100933098, type metadata accessor for EditorialCardCollectionViewCell);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_100502E58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_100502F70(&qword_100933098, type metadata accessor for EditorialCardCollectionViewCell);

  return a3(ObjectType, v4);
}

uint64_t sub_100502F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100502FD8()
{
  v0 = sub_100754724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v4 = sub_100750B04();
  sub_10000D0FC(v4, qword_1009820B0);
  sub_1007502D4();
  sub_100750564();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_1005031B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = sub_1007484E4();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100748504();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10074CD14();
  v9 = *(v59 - 8);
  __chkstk_darwin(v59);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750534();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921240 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v12, qword_1009813F8);
  v55 = a5;
  v17 = [a5 traitCollection];
  v60 = sub_100753C14();

  (*(v13 + 16))(v15, v16, v12);
  v18 = type metadata accessor for DynamicTypeLinkedLabel();
  v19 = objc_allocWithZone(v18);
  v20 = sub_10004DA8C(v15, 0, 0);
  sub_1007445E4();
  v21 = sub_100743EA4();
  v22 = sub_1001D3738(v21, sub_1000E12F0);

  v23 = sub_100743E94();
  sub_10004DF04(v23, 0, v22);

  result = sub_1007445D4();
  v25 = result;
  if (result >> 62)
  {
    v45 = result;
    result = sub_100754664();
    v25 = v45;
    v26 = result;
  }

  else
  {
    v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = a1;
  v47 = v18;
  v46 = v20;
  if (v26)
  {
    if (v26 < 1)
    {
      __break(1u);
      return result;
    }

    v27 = 0;
    v57 = v25 & 0xC000000000000001;
    v56 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v28 = _swiftEmptyArrayStorage;
    v58 = v25;
    do
    {
      if (v57)
      {
        sub_100754574();
      }

      else
      {
      }

      sub_10074CFD4();
      sub_100743E94();

      v29 = v60;
      v30 = sub_100743074();

      v31 = sub_10074F3F4();
      v68 = v31;
      v69 = sub_100504318(&qword_10092AC70, &type metadata accessor for Feature);
      v32 = sub_10000D134(v67);
      (*(*(v31 - 8) + 104))(v32, v56, v31);
      v33 = v30;
      v34 = v29;
      sub_10074FC74();
      sub_10000C620(v67);
      sub_10074CCD4();
      sub_10074CCE4();
      (*(v9 + 8))(v11, v59);
      sub_10000C824(v67, &v64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_100254FA8(0, v28[2] + 1, 1, v28);
      }

      v36 = v28[2];
      v35 = v28[3];
      if (v36 >= v35 >> 1)
      {
        v28 = sub_100254FA8((v35 > 1), v36 + 1, 1, v28);
      }

      ++v27;

      sub_10000C620(v67);
      v28[2] = v36 + 1;
      sub_100032CCC(&v64, &v28[5 * v36 + 4]);
    }

    while (v26 != v27);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v37 = [v55 traitCollection];
  sub_100751364();

  v38 = sub_100750F34();
  swift_allocObject();
  v39 = sub_100750F14();
  if (qword_100920B80 != -1)
  {
    swift_once();
  }

  v40 = v49;
  v41 = sub_10000D0FC(v49, qword_100980170);
  (*(v48 + 16))(v51, v41, v40);
  sub_1007445C4();
  v68 = v47;
  v69 = &protocol witness table for UIView;
  v67[0] = v46;
  v42 = v46;
  sub_100157548(v28);

  v65 = v38;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v63 = &protocol witness table for LayoutViewPlaceholder;
  *&v64 = v39;
  v62 = v38;
  v61 = v39;
  swift_retain_n();
  v43 = v52;
  sub_1007484F4();
  sub_100504318(&unk_1009332B0, &type metadata accessor for PrivacyHeaderLayout);
  v44 = v54;
  sub_100750404();

  return (*(v53 + 8))(v43, v44);
}

size_t sub_100503A2C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v7 = sub_100751344();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  __chkstk_darwin(v7);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_100933250);
  __chkstk_darwin(v10 - 8);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v58 - v13;
  v68 = sub_10000C518(&unk_100935110);
  v14 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v58 - v15;
  v16 = sub_10000C518(&unk_100933290);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v70[0] = sub_1007445E4();
  sub_100743EB4();
  v19 = sub_100752764();
  sub_100504318(&qword_100933028, &type metadata accessor for LinkableText);
  v69 = a3;
  v66 = v19;
  sub_100752684();

  v20 = sub_10000C518(&unk_1009332A0);
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_100349358(v18, v4 + v21, &unk_100933290);
  swift_endAccess();
  sub_1003DE7E0();
  sub_10000C8CC(v18, &unk_100933290);
  LOBYTE(v19) = sub_1007445C4();
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader) = v19 & 1;
  v22 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyLabel);
  sub_100016C60(0, &qword_100923500);
  if (v19)
  {
    v23 = sub_100753DD4();
  }

  else
  {
    v23 = sub_100753DF4();
  }

  v24 = *(v22 + qword_100924048);
  *(v22 + qword_100924048) = v23;
  v25 = v23;
  if ((sub_100753FC4() & 1) == 0)
  {
    sub_10004E2D4();
  }

  v26 = sub_1007445D4();
  if (v26 >> 62)
  {
    v57 = v26;
    v27 = sub_100754664();
    v26 = v57;
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v4;
  v60 = a1;
  if (v27)
  {
    v28 = v26;
    v70[0] = _swiftEmptyArrayStorage;
    result = sub_10001E2E8(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v31 = v70[0];
    v32 = v28;
    v65 = v28 & 0xC000000000000001;
    v33 = v28;
    v34 = v27;
    do
    {
      if (v65)
      {
        v35 = sub_100754574();
      }

      else
      {
        v35 = *(v32 + 8 * v30 + 32);
      }

      v73 = v35;
      sub_10074CFE4();
      sub_100504318(&unk_100935120, &type metadata accessor for PrivacyHeaderSupplementaryItem);
      v36 = v67;
      sub_100752684();

      v70[0] = v31;
      v38 = v31[2];
      v37 = v31[3];
      if (v38 >= v37 >> 1)
      {
        sub_10001E2E8(v37 > 1, v38 + 1, 1);
        v31 = v70[0];
      }

      ++v30;
      v31[2] = v38 + 1;
      (*(v14 + 32))(v31 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v38, v36, v68);
      v32 = v33;
    }

    while (v34 != v30);

    v4 = v64;
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  sub_1003E000C();
  v39 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems;
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems) = v31;

  sub_1003DEA84();
  if (sub_1007445C4())
  {
    v40 = *(v63 + 104);
    v63 += 104;
    v41 = v58;
    LODWORD(v68) = enum case for Separator.Position.top(_:);
    v67 = v40;
    (v40)(v58);
    v42 = sub_1007507D4();
    v71 = v42;
    v72 = &protocol witness table for ZeroDimension;
    sub_10000D134(v70);
    sub_1007507C4();
    v43 = v61;
    sub_100751354();
    v44 = sub_100751374();
    v45 = 1;
    v69 = *(*(v44 - 8) + 56);
    v69(v43, 0, 1, v44);
    v46 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_100349358(v43, v64 + v46, &qword_100933250);
    swift_endAccess();
    sub_1003DF240();
    v47 = v64;
    sub_10000C8CC(v43, &qword_100933250);
    if (*(*(v47 + v39) + 16))
    {
      (v67)(v41, v68, v62);
      v71 = v42;
      v72 = &protocol witness table for ZeroDimension;
      sub_10000D134(v70);
      sub_1007507C4();
      v48 = v59;
      sub_100751354();
      v45 = 0;
    }

    else
    {
      v48 = v59;
    }

    v69(v48, v45, 1, v44);
    v56 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v47 + v56;
    v55 = v48;
  }

  else
  {
    v49 = sub_100751374();
    v50 = *(*(v49 - 8) + 56);
    v48 = v61;
    v50(v61, 1, 1, v49);
    v51 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_100349358(v48, v64 + v51, &qword_100933250);
    swift_endAccess();
    sub_1003DF240();
    sub_10000C8CC(v48, &qword_100933250);
    v50(v48, 1, 1, v49);
    v52 = v64;
    v53 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v52 + v53;
    v55 = v48;
  }

  sub_100349358(v55, v54, &qword_100933250);
  swift_endAccess();
  sub_1003DF254();
  return sub_10000C8CC(v48, &qword_100933250);
}

uint64_t sub_100504318(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100504410()
{
  v0 = sub_1007504F4();
  __chkstk_darwin(v0 - 8);
  v26[3] = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v26[2] = v26 - v3;
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742014();
  sub_100039C50(v8, qword_100982190);
  v26[1] = sub_10000D0FC(v8, qword_100982190);
  v68[8] = &type metadata for Double;
  v68[9] = &protocol witness table for Double;
  v68[5] = 0x4024000000000000;
  if (qword_100921758 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_10093C560);
  v11 = *(v9 - 8);
  v12 = *(v11 + 16);
  v30 = v11 + 16;
  v31 = v12;
  v12(v7, v10, v9);
  v13 = v5[13];
  v29 = enum case for FontSource.useCase(_:);
  v28 = v13;
  v13(v7);
  v14 = sub_100750B04();
  v68[3] = v14;
  v68[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v68);
  v66 = v4;
  v67 = &protocol witness table for FontSource;
  v15 = sub_10000D134(v65);
  v27 = v5[2];
  v27(v15, v7, v4);
  sub_100750B14();
  v16 = v5[1];
  v16(v7, v4);
  if (qword_100921760 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v9, qword_10093C578);
  v31(v7, v17, v9);
  v28(v7, v29, v4);
  v66 = v14;
  v67 = &protocol witness table for StaticDimension;
  sub_10000D134(v65);
  v63 = v4;
  v64 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v62);
  v27(v18, v7, v4);
  sub_100750B14();
  v16(v7, v4);
  if (qword_100921768 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v9, qword_10093C590);
  v31(v7, v19, v9);
  v28(v7, v29, v4);
  v63 = v14;
  v64 = &protocol witness table for StaticDimension;
  sub_10000D134(v62);
  v60 = v4;
  v61 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v59);
  v27(v20, v7, v4);
  sub_100750B14();
  v16(v7, v4);
  if (qword_100921770 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v9, qword_10093C5A8);
  v31(v7, v21, v9);
  v28(v7, v29, v4);
  v60 = v14;
  v61 = &protocol witness table for StaticDimension;
  sub_10000D134(v59);
  v57 = v4;
  v58 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v56);
  v27(v22, v7, v4);
  sub_100750B14();
  v16(v7, v4);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v14, qword_100982098);
  v57 = v14;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_10000D134(v56);
  (*(*(v14 - 8) + 16))(v24, v23, v14);
  v55 = &protocol witness table for Double;
  v54 = &type metadata for Double;
  v52 = &protocol witness table for Double;
  v53 = 0x4034000000000000;
  v51 = &type metadata for Double;
  v50 = 0x4057400000000000;
  sub_100750504();
  sub_100750504();
  v48 = &type metadata for Double;
  v49 = &protocol witness table for Double;
  v46 = &protocol witness table for Double;
  v47 = 0x3FAC9107B0E4883ELL;
  v45 = &type metadata for Double;
  v43 = &protocol witness table for Double;
  v44 = 0x3FAC9107B0E4883ELL;
  v42 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  v41 = 0x3FAC0E070381C0E0;
  v39 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v38 = 0x3FA6CB65B2D96CB6;
  v36 = &type metadata for Double;
  v34 = &protocol witness table for Double;
  v35 = 0x4034000000000000;
  v33 = &type metadata for Double;
  v32 = 0x4034000000000000;
  return sub_100741FF4();
}

uint64_t sub_100504B08()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_10093C5C0);
  sub_10000D0FC(v0, qword_10093C5C0);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

char *sub_100504BA4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100741E54();
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074AB44();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_metrics;
  if (qword_100921778 != -1)
  {
    swift_once();
  }

  v21 = sub_100742014();
  v22 = sub_10000D0FC(v21, qword_100982190);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor;
  v68 = sub_100016C60(0, &qword_100923500);
  *&v5[v23] = sub_100753E74();
  if (qword_100921758 != -1)
  {
    swift_once();
  }

  v24 = sub_100750534();
  v25 = sub_10000D0FC(v24, qword_10093C560);
  v26 = *(v24 - 8);
  v73 = *(v26 + 16);
  v73(v19, v25, v24);
  v72 = *(v26 + 56);
  v72(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v71 = enum case for DirectionalTextAlignment.none(_:);
  v70 = v27;
  v27(v16);
  v28 = sub_100745C84();
  v69 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel] = sub_100745C74();
  if (qword_100921760 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v24, qword_10093C578);
  v73(v19, v31, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel] = sub_100745C74();
  if (qword_100921768 != -1)
  {
    swift_once();
  }

  v33 = sub_10000D0FC(v24, qword_10093C590);
  v73(v19, v33, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel] = sub_100745C74();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_offerButton] = sub_100154454(0);
  sub_100741DD4();
  v37 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView] = sub_10027562C(v12, 1);
  if (qword_100921770 != -1)
  {
    swift_once();
  }

  v38 = sub_10000D0FC(v24, qword_10093C5A8);
  v73(v19, v38, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v39 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] = sub_100745C74();
  v40 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  v75.receiver = v5;
  v75.super_class = v40;
  v41 = objc_msgSendSuper2(&v75, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = [v45 contentView];
  v47 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel;
  [v46 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel]];

  v48 = [v45 contentView];
  [v48 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel]];

  v49 = [v45 contentView];
  v50 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel;
  [v49 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel]];

  v51 = [v45 contentView];
  [v51 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_offerButton]];

  v52 = [v45 contentView];
  v53 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_body;
  [v52 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_body]];

  v54 = [v45 contentView];
  [v54 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView]];

  v55 = [v45 contentView];
  v56 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription;
  [v55 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription]];

  v57 = [*&v45[v53] layer];
  [v57 setCornerRadius:20.0];

  v58 = *&v45[v47];
  v59 = [v45 tintColor];
  [v58 setTextColor:v59];

  v60 = *&v45[v50];
  v61 = sub_100753DF4();
  [v60 setTextColor:v61];

  [*&v45[v53] setBackgroundColor:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor]];
  v62 = qword_100921780;
  v63 = *&v45[v56];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_10000C518(&qword_10092AC90);
  sub_10000D0FC(v64, qword_10093C5C0);
  v74 = v45;
  sub_100743464();

  sub_100753F54();
  v65 = *&v45[v56];
  v66 = sub_100753DF4();
  [v65 setTextColor:v66];

  return v45;
}

uint64_t sub_10050568C()
{
  v1 = v0;
  v2 = sub_100750354();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100742014();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742034();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  v66.receiver = v0;
  v66.super_class = v10;
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v11 = [v0 contentView];
  v38 = sub_100016C60(0, &qword_100922300);
  sub_1007477B4();

  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_metrics], v4);
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_offerButton];
  sub_1007477B4();
  v13 = &v12[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v12[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v14 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(&v12[v14], v63);
    sub_10000C888(v63, v64);
    sub_10074AE54();
    v16 = v15;
    v18 = v17;
    sub_10000C620(v63);
    *v13 = v16;
    *(v13 + 1) = v18;
    v13[16] = 0;
  }

  sub_100742004();
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v20 = sub_100745C84();
  v64 = v20;
  v65 = &protocol witness table for UILabel;
  v63[0] = v19;
  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  v61 = v20;
  v62 = &protocol witness table for UILabel;
  v60 = v21;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
  v58 = v20;
  v59 = &protocol witness table for UILabel;
  v57 = v22;
  v23 = type metadata accessor for OfferButton();
  v37[1] = v7;
  v55 = v23;
  v56 = &protocol witness table for UIView;
  v54 = v12;
  v37[0] = v12;
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v52 = type metadata accessor for InAppPurchaseView();
  v53 = &protocol witness table for UIView;
  v50 = &protocol witness table for UILabel;
  v51 = v24;
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  v49 = v20;
  v47 = &protocol witness table for UIView;
  v48 = v25;
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_body];
  v46 = v38;
  v45 = v26;
  v27 = v19;
  v28 = v21;
  v29 = v22;
  v30 = v37[0];
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v39;
  sub_100742024();
  v35 = v42;
  sub_100741FD4();
  (*(v43 + 8))(v35, v44);
  return (*(v40 + 8))(v34, v41);
}

id sub_100505B30(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100921780 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90);
    sub_10000D0FC(v6, qword_10093C5C0);
    v7 = v1;
    sub_100743464();

    return sub_100753F54();
  }

  return result;
}

id sub_100505CD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultCollectionViewCell()
{
  result = qword_10093C610;
  if (!qword_10093C610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100505E48(void *a1)
{
  v16 = [*(v1 + 16) view];
  if (v16)
  {
    [a1 _systemContentInset];
    v4 = v3;
    v6 = v5;
    [a1 contentOffset];
    v8 = v7;
    v10 = v9;
    [a1 contentInset];
    v12 = v6 + v8 + v11;
    v14 = v4 + v10 + v13;
    [a1 bounds];
    [v16 setFrame:{sub_100505F34(v12, v14, v15)}];
  }

  else
  {
    __break(1u);
  }
}

double sub_100505F34(double a1, double a2, double a3)
{
  v5 = *(v3 + 16);
  v6 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
  if (v6)
  {
    v7 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8);
    v8 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
  }

  else
  {
    v7 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8);
    v8 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell);
    v6 = 0;
  }

  v9 = v6;
  sub_10036E084(a3, v8, v7);

  type metadata accessor for ListTodayCardCollectionViewCell();
  swift_dynamicCastClass();
  return 0.0;
}

uint64_t sub_100506058()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1005060C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  sub_100506328();
  if (sub_10074EF24())
  {
    v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension36BundleSearchResultCollectionViewCell_lockupView);
    v6 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v7 = qword_100920548;
    v8 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_100747064();
    sub_10000D0FC(v9, qword_10097E3A8);
    sub_100746F34();
    [v8 contentMode];
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [v8 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();
    v10 = *(v5 + v6);
    sub_1007433C4();
    sub_100507304(&qword_100925570, &type metadata accessor for ArtworkView);
    v11 = v10;
    sub_100744204();
  }

  result = sub_10074EFA4();
  if (result)
  {
    sub_10070D420(result, a2);
  }

  return result;
}

void sub_100506328()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36BundleSearchResultCollectionViewCell_lockupView);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  sub_100743384(v31, v5);

  v6 = *(v2 + v3);
  sub_1007433C4();
  sub_100507304(&qword_100925570, &type metadata accessor for ArtworkView);
  v7 = v6;
  sub_100744274();

  v28 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36BundleSearchResultCollectionViewCell_bundleView);
  v8 = sub_100704020();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_100754664();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_100754574();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v14 = OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_icon;
    v15 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_icon];
    v32.value.super.isa = 0;
    v32.is_nil = 0;
    sub_100743384(v32, v16);

    v17 = *&v13[v14];
    sub_100744274();
  }

  while (v10 != v11);
LABEL_10:

  v18 = sub_100704038();
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = sub_100754664();
    if (v20)
    {
LABEL_12:
      if (v20 >= 1)
      {
        v21 = 0;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = sub_100754574();
          }

          else
          {
            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          ++v21;
          v24 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
          v25 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
          v33.value.super.isa = 0;
          v33.is_nil = 0;
          sub_100743384(v33, v26);

          v27 = *&v23[v24];
          sub_100744274();
        }

        while (v20 != v21);
        goto LABEL_19;
      }

LABEL_23:
      __break(1u);
      return;
    }
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  v29 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_backgroundArtworkView];
  sub_100744274();
}

double sub_100506638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, double a7)
{
  v96 = a5;
  v84 = a3;
  v85 = a4;
  v81 = a2;
  v79 = a1;
  v9 = sub_100754724();
  v98 = *(v9 - 8);
  v99 = v9;
  __chkstk_darwin(v9);
  v97 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F314();
  v94 = *(v11 - 8);
  v95 = v11;
  __chkstk_darwin(v11);
  v93 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074A8C4();
  v91 = *(v13 - 8);
  v92 = v13;
  __chkstk_darwin(v13);
  v90 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10074CD14();
  v83 = *(v103 - 8);
  __chkstk_darwin(v103);
  v82 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1007479B4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v69 - v21;
  v23 = sub_10074A8A4();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v86 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v69 - v27;
  sub_100753BA4();
  ObjectType = swift_getObjectType();
  v29 = [a6 traitCollection];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v23, qword_10097E010);
  v31 = *(v24 + 16);
  v89 = v23;
  v76 = v31;
  v77 = v24 + 16;
  v31(v28, v30, v23);
  v32 = sub_100753804();
  v100 = a6;
  v88 = v24;
  if (v32)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v33 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v33 = qword_10093FF58;
  }

  v34 = sub_10000D0FC(v16, v33);
  v75 = v17;
  (*(v17 + 16))(v19, v34, v16);
  (*(v17 + 32))(v22, v19, v16);
  v74 = v29;
  v35 = [v29 preferredContentSizeCategory];
  sub_100753924();

  sub_100747964();
  sub_100747994();
  v102 = v28;
  sub_10074A894();
  sub_10074A884();
  v36 = sub_100750F34();
  swift_allocObject();
  v73 = sub_100750F14();
  v37 = objc_opt_self();

  v71 = v37;
  v69[1] = [v37 preferredFontForTextStyle:UIFontTextStyleBody];
  v38 = sub_10074F3F4();
  v80 = v22;
  v39 = v38;
  v140[3] = v38;
  v40 = sub_100507304(&qword_10092AC70, &type metadata accessor for Feature);
  v78 = v16;
  v41 = v40;
  v140[4] = v40;
  v70 = v40;
  v42 = sub_10000D134(v140);
  v72 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v43 = *(v39 - 8);
  v101 = *(v43 + 104);
  v44 = v43 + 104;
  v101(v42);
  v69[2] = v44;
  sub_10074FC74();
  sub_10000C620(v140);
  v45 = v82;
  sub_10074CD04();
  sub_10074CCE4();
  v83 = *(v83 + 8);
  (v83)(v45, v103);

  v46 = [v37 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v139[3] = v39;
  v139[4] = v41;
  v47 = sub_10000D134(v139);
  v48 = v72;
  (v101)(v47, v72, v39);
  sub_10074FC74();
  sub_10000C620(v139);
  sub_10074CD04();
  sub_10074CCE4();
  v49 = v103;
  v50 = v83;
  (v83)(v45, v103);
  v51 = [v71 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v138[3] = v39;
  v138[4] = v70;
  v52 = sub_10000D134(v138);
  (v101)(v52, v48, v39);
  sub_10074FC74();
  sub_10000C620(v138);
  sub_10074CD04();
  sub_10074CCE4();
  v50(v45, v49);
  sub_10001BB7C(0, 0);
  swift_allocObject();
  v53 = sub_100750F14();

  sub_10001BB7C(0, 0);
  swift_allocObject();
  v54 = sub_100750F14();
  v55 = v89;
  v76(v86, v102, v89);
  v137 = &protocol witness table for LayoutViewPlaceholder;
  v136 = v36;
  v135 = v73;
  v134 = 0;
  *&v132[40] = 0u;
  v133 = 0u;
  sub_10000C824(v140, v132);
  sub_10000C824(v139, &v131);
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v127 = 0;
  v125 = 0u;
  v126 = 0u;

  v56 = sub_100750F24();
  v124 = &protocol witness table for LayoutViewPlaceholder;
  v123 = v36;
  v122 = v56;
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  v112 = 0;
  v111 = 0u;
  *&v110[40] = 0u;
  sub_10000C824(v138, v110);
  v108 = v36;
  v109 = &protocol witness table for LayoutViewPlaceholder;
  v106 = &protocol witness table for LayoutViewPlaceholder;
  v107 = v53;
  v105 = v36;
  v104 = v54;
  v57 = v90;
  sub_10074A8B4();
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1007A5CF0;
  v59 = v74;
  *(v58 + 32) = v74;
  v60 = v59;
  v61 = sub_100751044();
  sub_100507304(&unk_10092AC80, &type metadata accessor for SmallSearchLockupLayout);
  v62 = v92;
  sub_100750404();

  (*(v91 + 8))(v57, v62);
  sub_10000C620(v138);
  sub_10000C620(v139);
  sub_10000C620(v140);
  (*(v75 + 8))(v80, v78);
  (*(v88 + 8))(v102, v55);
  v64 = v93;
  v63 = v94;
  v65 = v95;
  (*(v94 + 104))(v93, enum case for Artwork.Style.roundedRect(_:), v95);
  if (v96)
  {
    v66 = v96;
  }

  else
  {
    v66 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for BundleView();

  sub_1007100EC(v64, v66, v100);

  (*(v63 + 8))(v64, v65);
  if (qword_100921A50 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_100982920, qword_100982938);
  v67 = v97;
  sub_100536120();
  sub_100750564();
  (*(v98 + 8))(v67, v99);
  return a7;
}

uint64_t sub_100507304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10050734C()
{
  v0 = sub_10074BCC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007478B4();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for MetadataRibbonItemViewType.borderedTextLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
    v6 = &unk_1009231E8;
    v7 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.editorsChoice(_:))
  {
    v5 = type metadata accessor for MetadataRibbonEditorsChoiceView();
    v6 = &unk_1009231E0;
    v7 = type metadata accessor for MetadataRibbonEditorsChoiceView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.imageWithLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v6 = &unk_1009231D8;
    v7 = type metadata accessor for MetadataRibbonIconWithLabelView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.starRating(_:))
  {
    v5 = type metadata accessor for MetadataRibbonStarRatingView();
    v6 = &unk_1009231F0;
    v7 = type metadata accessor for MetadataRibbonStarRatingView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.textLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonTagView();
    v6 = &unk_1009231C8;
    v7 = type metadata accessor for MetadataRibbonTagView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.divider(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBarView();
    v6 = &unk_1009231D0;
    v7 = type metadata accessor for MetadataRibbonBarView;
  }

  else
  {
    if (v4 != enum case for MetadataRibbonItemViewType.highlightedText(_:))
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }

    v5 = type metadata accessor for MetadataRibbonHighlightedTextView();
    v6 = &unk_1009231B8;
    v7 = type metadata accessor for MetadataRibbonHighlightedTextView;
  }

  sub_100507670(v6, v7);
  return v5;
}

uint64_t sub_100507670(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1005076B8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_100754724();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920D80 != -1)
  {
    swift_once();
  }

  v13 = sub_100750B04();
  sub_10000D0FC(v13, qword_100980660);
  swift_getObjectType();
  sub_1007502D4();
  sub_100750564();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for SmallLockupView();
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v14 = sub_100747064();
  v15 = sub_10000D0FC(v14, qword_10097E3A8);
  sub_1001CF184(v15, a7);
  return a1;
}

uint64_t sub_10050789C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v15 - 8);
  v17 = &v30 - v16;
  v18 = sub_10000C518(&unk_100925540);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v21 = &v30 - v20;
  v22 = [v3 contentView];
  [v22 layoutMargins];
  [v22 setLayoutMargins:?];

  v23 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34SmallLockupCollectionViewTableCell_lockupView];
  v24 = sub_10000C518(&unk_10092EEA0);
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_100742E24();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = sub_100745E94();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = sub_10000C518(&unk_100925560);
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = sub_10074F8B4();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  sub_100656038(a1, v23, v21, a3, 0, 0, v17, v14, v8, v11);
  sub_10000C8CC(v8, &unk_100925520);
  v23[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1001CE71C();
  [v23 setNeedsLayout];
  sub_10000C8CC(v11, &unk_100925990);
  sub_10000C8CC(v14, &unk_1009259A0);
  sub_10000C8CC(v17, &unk_100925530);
  return sub_10000C8CC(v21, &unk_100925540);
}

char *sub_100507CD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v34 = a1;
  v35 = a3;
  v6 = sub_10074AB44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label;
  if (qword_100920EB0 != -1)
  {
    swift_once();
  }

  v14 = sub_100750534();
  v15 = sub_10000D0FC(v14, qword_100980960);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v12, v15, v14);
  (*(v16 + 56))(v12, 0, 1, v14);
  (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
  v17 = objc_allocWithZone(sub_100745C84());
  *&v4[v13] = sub_100745C74();
  v18 = OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_imageView;
  v19 = objc_allocWithZone(UIImageView);
  *&v4[v18] = [v19 init];
  v20 = type metadata accessor for AlertActionTrailingImageView();
  v36.receiver = v4;
  v36.super_class = v20;
  v21 = objc_msgSendSuper2(&v36, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label;
  v23 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label];
  v24 = v21;
  v25 = v23;
  if (a2)
  {
    v26 = sub_100753064();
  }

  else
  {
    v26 = 0;
  }

  [v23 setText:v26];

  v27 = *&v21[v22];
  v28 = v21;
  v29 = v27;
  v30 = [v28 tintColor];
  [v29 setTextColor:v30];

  [v28 addSubview:*&v21[v22]];
  v31 = OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_imageView;
  v32 = v35;
  [*&v28[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_imageView] setImage:v35];
  [v28 addSubview:*&v28[v31]];
  [v28 setLayoutMargins:{10.0, 5.0, 10.0, 5.0}];

  return v28;
}

id sub_100508088()
{
  v1 = sub_100754724();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlertActionTrailingImageView();
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, "layoutSubviews");
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v0 layoutMargins];
  v16 = sub_10010FD98(v7, v9, v11, v13, v14, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_imageView];
  v24 = [v23 image];
  v44.origin.x = v16;
  v44.origin.y = v18;
  v44.size.width = v20;
  v44.size.height = v22;
  MaxX = CGRectGetMaxX(v44);
  if (v24)
  {
    [v24 size];
    v45.origin.x = v16;
    v45.origin.y = v18;
    v45.size.width = v20;
    v45.size.height = v22;
    CGRectGetMidY(v45);
    [v24 size];
    (*(v2 + 104))(v4, enum case for FloatingPointRoundingRule.down(_:), v1);
    sub_100753D84();
    v27 = v26;
    v29 = v28;
    (*(v2 + 8))(v4, v1);
    [v24 size];
    v31 = v30;
    v33 = v32;
    sub_100753B24();
    [v23 setFrame:?];
    v46.origin.x = v27;
    v46.origin.y = v29;
    v46.size.width = v31;
    v46.size.height = v33;
    MinX = CGRectGetMinX(v46);

    MaxX = MinX + -10.0;
  }

  v47.origin.x = v16;
  v47.origin.y = v18;
  v47.size.width = v20;
  v47.size.height = v22;
  v35 = MaxX - CGRectGetMinX(v47);
  if (v35 > 0.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label];
  v48.origin.x = v16;
  v48.origin.y = v18;
  v48.size.width = v20;
  v48.size.height = v22;
  [v37 sizeThatFits:{v36, CGRectGetHeight(v48)}];
  v42[1] = v38;
  v39 = [v23 image];
  if (v39)
  {
    v40 = v39;
    [v39 size];
  }

  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v20;
  v49.size.height = v22;
  CGRectGetMidX(v49);
  v50.origin.x = v16;
  v50.origin.y = v18;
  v50.size.width = v20;
  v50.size.height = v22;
  CGRectGetMidY(v50);
  sub_100753B24();
  return [v37 setFrame:?];
}

double sub_100508614(double a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_imageView] image];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    [v3 size];
    v4 = v6;
  }

  v7 = 10.0;
  if (v4 <= 0.0)
  {
    v7 = 0.0;
  }

  v8 = a1 - v4 - v7;
  if (v8 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label];
  type metadata accessor for AlertActionTrailingImageView();
  sub_1007477B4();
  [v10 sizeThatFits:{v9, CGRectGetHeight(v12)}];
  [v1 layoutMargins];
  [v1 layoutMargins];
  return a1;
}

id sub_100508798()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertActionTrailingImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10050883C()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label;
  if (qword_100920EB0 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, qword_100980960);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_100745C84());
  *(v1 + v9) = sub_100745C74();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_imageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  sub_100754644();
  __break(1u);
}

id sub_100508AAC(void *a1, void *a2, void *a3)
{
  v4 = a1;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_maxRowsStandard) = a2;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_maxRowsAX) = a3;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_ribbonBarItemModels) = a1;

  v24 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v19 = v3;
    v20 = v4;
    v6 = 0;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v22 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v22)
      {
        v7 = sub_100754574();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v6 >= *(v21 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v5 = sub_100754664();
          goto LABEL_3;
        }
      }

      v9 = [objc_allocWithZone(type metadata accessor for RibbonBarItemCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_1007442C4();
      sub_100752764();
      sub_100752D34();
      v10 = sub_1007446A4();
      if (v10)
      {
        v11 = v10;
        v12 = v5;
        v13 = swift_allocObject();
        swift_weakInit();
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = v11;
        v15 = &v9[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction];
        v16 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction];
        *v15 = sub_10050A1BC;
        v15[1] = v14;

        sub_1000164A8(v16);
        v5 = v12;
        v4 = v20;
      }

      sub_1001C11D4(v7, v23);

      sub_100753284();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      v3 = &v24;
      sub_100753344();
      ++v6;
      if (v8 == v5)
      {
        v17 = v24;
        v3 = v19;
        goto LABEL_18;
      }
    }
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_18:
  sub_100509040(v17);
  return [v3 setNeedsLayout];
}

id sub_100508D80(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_tagFacetViews] = _swiftEmptyArrayStorage;
  sub_100748EE4();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_ribbonBarItemModels] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_impressionsCalculator] = 0;
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_impressionsUpdateBlock];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_maxRowsStandard] = 2;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_maxRowsAX] = 5;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_100921788 != -1)
  {
    swift_once();
  }

  [v15 setMaximumContentSizeCategory:qword_10093C750];
  sub_10000C518(&unk_1009249D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007A5A00;
  *(v16 + 32) = sub_100751554();
  *(v16 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v15;
}

id sub_100509040(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_tagFacetViews;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_tagFacetViews];
  if (v4 >> 62)
  {
    result = sub_100754664();
    v5 = result;
    if (!result)
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
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_100754574();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = v2;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    result = sub_100754664();
    v10 = result;
    if (result)
    {
LABEL_12:
      if (v10 >= 1)
      {

        for (j = 0; j != v10; ++j)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_100754574();
          }

          else
          {
            v12 = *(v9 + 8 * j + 32);
          }

          v13 = v12;
          [v1 addSubview:v12];
        }

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  return [v1 setNeedsLayout];
}

uint64_t sub_1005091F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = sub_100750354();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100748EF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100748F04();
  v19 = *(v21 - 8);
  *&v9 = __chkstk_darwin(v21).n128_u64[0];
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v9);

  sub_10015868C(v12);

  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_metrics], v5);
  sub_100748EB4();
  sub_1007477B4();
  sub_100748ED4();
  (*(v18 + 8))(v4, v20);
  v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_impressionsUpdateBlock];
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {
    swift_endAccess();

    v14(v15);
    sub_1000164A8(v14);
    return (*(v19 + 8))(v11, v21);
  }

  else
  {
    (*(v19 + 8))(v11, v21);
    return swift_endAccess();
  }
}

double sub_10050954C(uint64_t a1)
{
  v14[1] = a1;
  v2 = sub_100748EF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100748F04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10015868C(v10);

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_metrics, v2);
  sub_100748EB4();
  sub_100748EC4();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  return v12;
}

void sub_100509864()
{
  v0 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v0 - 8);
  v2 = &v35 - v1;
  v3 = sub_100752914();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v47 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_ribbonBarItemModels];
      if (v47)
      {
        v11 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_tagFacetViews];
        v37 = v8;
        if (v11 >> 62)
        {
          goto LABEL_39;
        }

        for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
        {

          if (!i)
          {
            break;
          }

          v45 = v11 & 0xFFFFFFFFFFFFFF8;
          v46 = v11 & 0xC000000000000001;
          v13 = v47 & 0xFFFFFFFFFFFFFF8;
          if (v47 >= 0)
          {
            v14 = v47 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v14 = v47;
          }

          v35 = v14;
          v39 = (v4 + 32);
          v40 = (v4 + 48);
          v38 = (v4 + 8);
          v15 = 4;
          v43 = v47 & 0xC000000000000001;
          v44 = v47 >> 62;
          v41 = v47 & 0xFFFFFFFFFFFFFF8;
          v42 = i;
          v36 = v2;
          while (1)
          {
            v4 = v15 - 4;
            if (v46)
            {
              v16 = sub_100754574();
            }

            else
            {
              if (v4 >= *(v45 + 16))
              {
                goto LABEL_37;
              }

              v16 = *(v11 + 8 * v15);
            }

            v17 = v16;
            v18 = v15 - 3;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (v44)
            {
              if (v4 == sub_100754664())
              {
LABEL_33:

                goto LABEL_34;
              }
            }

            else if (v4 == *(v13 + 16))
            {
              goto LABEL_33;
            }

            if (v43)
            {
              sub_100754574();
            }

            else
            {
              if (v4 >= *(v13 + 16))
              {
                goto LABEL_38;
              }
            }

            sub_1007446C4();
            if ((*v40)(v2, 1, v3) == 1)
            {

              sub_10045862C(v2);
            }

            else
            {
              (*v39)(v6, v2, v3);
              v19 = v17;
              if ([v19 isHidden])
              {
              }

              else
              {
                [v19 frame];
                v21 = v20;
                v23 = v22;
                v25 = v24;
                v27 = v26;

                v28 = v11;
                v29 = v10;
                v30 = v3;
                v31 = v6;
                v32 = v37;
                v33 = [v37 superview];
                v34 = v32;
                v6 = v31;
                v3 = v30;
                v10 = v29;
                v11 = v28;
                v2 = v36;
                [v34 convertRect:v33 toView:{v21, v23, v25, v27}];

                sub_100749544();
              }

              (*v38)(v6, v3);
            }

            ++v15;
            v13 = v41;
            if (v18 == v42)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          ;
        }

LABEL_34:
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

uint64_t type metadata accessor for TagFacetRibbonView()
{
  result = qword_10093C798;
  if (!qword_10093C798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100509E04()
{
  result = sub_100748EF4();
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

uint64_t sub_100509F10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100509FC8()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_10050A024(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

void (*sub_10050A0E4())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10050A2CC;
}

uint64_t sub_10050A184()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10050A1C4(void *a1)
{
  sub_10000C888(a1, a1[3]);
  v2 = sub_1007514C4();
  if (qword_100921788 != -1)
  {
    swift_once();
  }

  v3 = qword_10093C750;
  if (sub_100753944())
  {
    v3;
  }

  sub_10007271C(a1, a1[3]);
  return sub_1007514D4();
}

uint64_t sub_10050A290()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10050A2DC(uint64_t a1)
{
  v130 = a1;
  v1 = sub_100752AC4();
  v128 = *(v1 - 8);
  v129 = v1;
  __chkstk_darwin(v1);
  v127 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v126 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10074AB44();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v125 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_100743B04();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100940810);
  __chkstk_darwin(v7 - 8);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v120 - v11;
  v13 = sub_100750534();
  v131 = *(v13 - 8);
  v132 = v13;
  __chkstk_darwin(v13);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v120 - v17;
  v19 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v19 - 8);
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v120 - v23;
  __chkstk_darwin(v25);
  v27 = &v120 - v26;
  __chkstk_darwin(v28);
  v30 = &v120 - v29;
  v31 = type metadata accessor for Accessory();
  __chkstk_darwin(v31);
  v33 = (&v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100415A30(v133, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v87 = objc_allocWithZone(type metadata accessor for SearchButton());

        sub_10065BF40(v88);
        return;
      }

      if (EnumCaseMultiPayload != 9)
      {
        v104 = v121;
        v105 = v120;
        v106 = v122;
        (*(v121 + 104))(v120, enum case for SystemImage.chevronForward(_:), v122);
        v107 = sub_100743AE4();
        (*(v104 + 8))(v105, v106);
        v108 = [v107 imageWithRenderingMode:2];

        v109 = [objc_allocWithZone(UIImageView) initWithImage:v108];
        sub_100016C60(0, &qword_100923500);
        v110 = sub_100753E24();
        [v109 setTintColor:v110];

        return;
      }

      v47 = objc_opt_self();
      v48 = sub_100753064();
      v49 = [v47 kitImageNamed:v48];

      if (!v49)
      {
        __break(1u);
        return;
      }

      v50 = [v49 imageWithRenderingMode:2];

      v51 = [v50 imageFlippedForRightToLeftLayoutDirection];
      v52 = [objc_allocWithZone(UIImageView) initWithImage:v51];
      sub_100016C60(0, &qword_100923500);
      isa = sub_100753F24(0.82098, 0.82153, 0.83748, 1.0).super.isa;
      [v52 setTintColor:isa];
    }

    else if (EnumCaseMultiPayload == 5)
    {
      v79 = v33[1];
      if (qword_100920EA8 != -1)
      {
        swift_once();
      }

      v80 = v132;
      v81 = sub_10000D0FC(v132, qword_100980948);
      v82 = v131;
      (*(v131 + 16))(v21, v81, v80);
      (*(v82 + 56))(v21, 0, 1, v80);
      (*(v123 + 104))(v125, enum case for DirectionalTextAlignment.trailing(_:), v124);
      v83 = objc_allocWithZone(sub_100745C84());
      v84 = sub_100745C74();
      sub_100016C60(0, &qword_100923500);
      v85 = v84;
      v86 = sub_100753DF4();
      [v85 setTextColor:v86];

      if (v79)
      {
        v51 = sub_100753064();
      }

      else
      {
        v51 = 0;
      }

      [v85 setText:v51];
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v35 = v33[1];
        v36 = v33[2];
        sub_1007433C4();
        v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_10074F184();
        sub_10074F374();
        sub_10074F324();
        sub_100743364();
        [v37 setContentMode:sub_10074F184()];
        sub_100747FB4();
        sub_1007433A4();
        if (!sub_10074F1E4())
        {
          sub_100016C60(0, &qword_100923500);
          sub_100753E34();
        }

        sub_100743224();
        v38 = sub_100743304();
        *(v39 + 16) = v35;
        *(v39 + 24) = v36;
        v38(&v134, 0);
        v40 = [objc_opt_self() clearColor];
        sub_100743224();
        memset(&v134, 0, 32);
        memset(v135, 0, 32);
        v41 = v37;
        v42 = v127;
        sub_100752A94();
        sub_10000C8CC(v135, &unk_100923520);
        sub_10000C8CC(&v134, &unk_100923520);
        sub_100753C74();
        (*(v128 + 8))(v42, v129);
        sub_1007442C4();
        sub_100752764();
        sub_100752D34();
        sub_10050E918(&qword_100925570, &type metadata accessor for ArtworkView);
        sub_100744204();

        return;
      }

      v51 = v33[2];
      v96 = v33[4];
      v97 = v33[6];
      v98 = [objc_opt_self() configurationWithFont:v51 scale:v33[3]];
      v99 = sub_100753064();

      v100 = [objc_opt_self() systemImageNamed:v99 withConfiguration:v98];

      v101 = [objc_opt_self() buttonWithType:0];
      [v101 setPreferredSymbolConfiguration:v98 forImageInState:0];
      [v101 setImage:v100 forState:0];
      [v101 setTintColor:v96];
      v102 = v101;
      if (v97)
      {
        v103 = sub_100753064();
      }

      else
      {
        v103 = 0;
      }

      [v101 setAccessibilityLabel:v103];
    }

LABEL_65:

    return;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v54 = v33[1];
      v55 = v33[2];

      v56 = [objc_allocWithZone(type metadata accessor for HeaderButton()) init];
      sub_100747764();

      v57 = v56;
      if (v54)
      {
        v58 = sub_100753064();
      }

      else
      {
        v58 = 0;
      }

      [v56 setTitle:v58 forState:0];

      if (v55)
      {
        [v56 setTintColor:v55];

        return;
      }

      sub_100016C60(0, &qword_100923500);
      v51 = sub_100753EF4();
      [v56 setTintColor:v51];

      goto LABEL_65;
    }

    v92 = v33[1];
    v93 = sub_10000C518(&qword_10093C958);
    sub_100066578(v33 + *(v93 + 48), v30, &unk_100928A40);
    v94 = [objc_allocWithZone(type metadata accessor for HeaderButton()) init];
    sub_100747764();

    if (v92)
    {
      v95 = sub_100753064();
    }

    else
    {
      v95 = 0;
    }

    v113 = v131;
    v112 = v132;
    v114 = v24;
    [v94 setTitle:v95 forState:0];

    sub_100016B4C(v30, v24, &unk_100928A40);
    v115 = *(v113 + 48);
    if (v115(v24, 1, v112) == 1)
    {
      v116 = qword_100920EA0;
      v117 = v94;
      if (v116 != -1)
      {
        swift_once();
      }

      v118 = sub_10000D0FC(v112, qword_100980930);
      (*(v113 + 16))(v27, v118, v112);
      if (v115(v114, 1, v112) != 1)
      {
        sub_10000C8CC(v114, &unk_100928A40);
      }
    }

    else
    {
      (*(v113 + 32))(v27, v24, v112);
      v119 = v94;
    }

    (*(v113 + 56))(v27, 0, 1, v112);
    sub_1007466A4();

    sub_10000C8CC(v30, &unk_100928A40);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v59 = v18;
    v60 = v33[2];
    v61 = *(v33 + 3);
    type metadata accessor for HeaderButton();
    v62 = qword_100920298;
    v63 = v60;
    if (v62 != -1)
    {
      swift_once();
    }

    v64 = v132;
    v65 = sub_10000D0FC(v132, qword_100928AA0);
    v66 = *(v131 + 16);
    v66(v18, v65, v64);
    v66(v15, v18, v64);
    v67 = sub_1007466B4();
    *&v67[qword_100928AC0] = v61;
    v68 = v67;
    v69 = [v68 traitCollection];
    v70 = sub_1007537F4();

    v71 = v68;
    v72 = v71;
    if (v70)
    {
      v73 = v61;
    }

    else
    {
      v73 = 0.0;
    }

    if (v70)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v61;
    }

    if (v70)
    {
      v75 = -v61;
    }

    else
    {
      v75 = v61;
    }

    if ((v70 & 1) == 0)
    {
      v61 = -v61;
    }

    [v71 setContentEdgeInsets:{0.0, v74, 0.0, v73}];
    [v72 setImageEdgeInsets:{0.0, v61, 0.0, v75}];
    v76 = sub_100753064();

    [v72 setTitle:v76 forState:0];

    [v72 setImage:v63 forState:0];
    CGAffineTransformMakeScale(&v134, -1.0, 1.0);
    [v72 setTransform:&v134];

    v77 = [v72 titleLabel];
    if (v77)
    {
      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      [v77 setTransform:&v134];
    }

    v78 = [v72 imageView];

    if (v78)
    {
      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      [v78 setTransform:&v134];

      (*(v131 + 8))(v59, v132);
    }

    else
    {
      (*(v131 + 8))(v59, v132);
    }

    v111 = v72;
    sub_100747764();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v43 = *v33;
    v44 = sub_10000C518(&qword_1009262D8);
    sub_100066578(v33 + *(v44 + 48), v12, &unk_100940810);
    sub_100016B4C(v12, v9, &unk_100940810);
    v45 = objc_allocWithZone(type metadata accessor for AccountButton());
    v46 = v130;

    sub_1005F2040(v43, v9, v46);

    sub_10000C8CC(v12, &unk_100940810);
  }

  else
  {
    v89 = *v33;
    v90 = v33[1];
    v91 = objc_allocWithZone(type metadata accessor for CountBadgeView());
    sub_10011B550(1, v89, v90);
  }
}

void sub_10050B5A8(uint64_t a1)
{
  v56 = a1;
  v1 = sub_100742A34();
  v54 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100940810);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_100750534();
  v53 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for Accessory();
  __chkstk_darwin(v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100415A30(v55, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_100754844(4uLL);
      }

      else if (EnumCaseMultiPayload == 9)
      {
        sub_100754844(5uLL);
      }

      else
      {
        sub_100754844(6uLL);
      }

      return;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v23 = *v21;
        v24 = *(v21 + 1);
        v25 = *(v21 + 2);
        sub_100754844(9uLL);
        v57 = v23;
        sub_10074F3D4();
        sub_10050E918(&qword_100936D20, &type metadata accessor for Artwork);
        sub_100752FB4();
        if (v24 == 0.0)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v24;
        }

        sub_100754864(*&v26);
        if (v25 == 0.0)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v25;
        }

        sub_100754864(*&v27);

        return;
      }

      v43 = *(v21 + 2);
      v44 = *(v21 + 3);
      v45 = *(v21 + 4);
      v46 = *(v21 + 6);
      sub_100754844(0xAuLL);
      sub_100753174();

      sub_100753FD4();
      sub_100754844(v44);
      if (v45)
      {
        sub_100754854(1u);
        v47 = v45;
        sub_100753FD4();

        if (v46)
        {
LABEL_37:
          sub_100754854(1u);
          sub_100753174();

LABEL_53:

          return;
        }
      }

      else
      {
        sub_100754854(0);
        if (v46)
        {
          goto LABEL_37;
        }
      }

      sub_100754854(0);
      goto LABEL_53;
    }

    v39 = *(v21 + 1);
    sub_100754844(8uLL);
    if (v39)
    {
LABEL_32:
      sub_100754854(1u);
      sub_100753174();

      return;
    }

LABEL_41:
    sub_100754854(0);
    return;
  }

  v52 = v15;
  v55 = v12;
  v28 = v54;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v41 = *(v21 + 1);
      v42 = sub_10000C518(&qword_10093C958);
      sub_100066578(&v21[*(v42 + 48)], v18, &unk_100928A40);
      sub_100754844(1uLL);
      if (v41)
      {
        sub_100754854(1u);
        sub_100753174();
      }

      else
      {
        sub_100754854(0);
      }

      v48 = v10;
      v50 = v52;
      v49 = v53;
      v51 = v55;
      sub_100016B4C(v18, v52, &unk_100928A40);
      if ((*(v49 + 48))(v50, 1, v48) == 1)
      {
        sub_100754854(0);
      }

      else
      {
        (*(v49 + 32))(v51, v50, v48);
        sub_100754854(1u);
        sub_10050E918(&qword_10093C980, &type metadata accessor for FontUseCase);
        sub_100752FB4();
        (*(v49 + 8))(v51, v48);
      }

      sub_10000C8CC(v18, &unk_100928A40);
      return;
    }

    v32 = *(v21 + 1);
    v33 = *(v21 + 2);
    v34 = *(v21 + 4);
    sub_100754844(0);
    if (v32)
    {
      sub_100754854(1u);
      sub_100753174();

      if (v33)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_100754854(0);
      if (v33)
      {
LABEL_23:
        sub_100754854(1u);
        v35 = v33;
        sub_100753FD4();

        if (v34)
        {
LABEL_24:
          sub_100754854(1u);
          sub_100753174();

          return;
        }

LABEL_45:
        sub_100754854(0);

        return;
      }
    }

    sub_100754854(0);
    if (v34)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v36 = *(v21 + 2);
    v37 = *(v21 + 3);
    sub_100754844(2uLL);
    sub_100753174();

    sub_100753FD4();
    v38 = 0.0;
    if (v37 != 0.0)
    {
      v38 = v37;
    }

    sub_100754864(*&v38);
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      v40 = *(v21 + 1);
      sub_100754844(7uLL);
      if (v40)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }

    v29 = v9;
    v30 = *v21;
    v31 = sub_10000C518(&qword_1009262D8);
    sub_100066578(&v21[*(v31 + 48)], v29, &unk_100940810);
    sub_100754844(3uLL);
    sub_100754854(v30);
    sub_100016B4C(v29, v6, &unk_100940810);
    if ((*(v28 + 48))(v6, 1, v1) == 1)
    {
      sub_100754854(0);
    }

    else
    {
      (*(v28 + 32))(v3, v6, v1);
      sub_100754854(1u);
      sub_10050E918(&qword_10093C978, &type metadata accessor for StoreTab);
      sub_100752FB4();
      (*(v28 + 8))(v3, v1);
    }

    sub_10000C8CC(v29, &unk_100940810);
  }
}

Swift::Int sub_10050BE8C()
{
  sub_100754834();
  sub_10050B5A8(v1);
  return sub_100754884();
}

Swift::Int sub_10050BED0()
{
  sub_100754834();
  sub_10050B5A8(v1);
  return sub_100754884();
}

void sub_10050BF0C(void *a1)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_100750E94();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v10 = sub_100750BD4();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100743B04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Accessory();
  __chkstk_darwin(v16);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v2;
  sub_100415A30(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 10)
    {
      (*(v13 + 104))(v15, enum case for SystemImage.chevronForward(_:), v12);
      v36 = sub_100743AE4();
      (*(v13 + 8))(v15, v12);
      [v36 size];

      return;
    }

    if (EnumCaseMultiPayload != 9)
    {
      goto LABEL_11;
    }

    v28 = objc_opt_self();
    v29 = sub_100753064();
    v30 = [v28 kitImageNamed:v29];

    if (!v30)
    {
      __break(1u);
      return;
    }

    [v30 size];
LABEL_15:

    return;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v33 = *v18;
    v34 = v18[1];
    v35 = objc_allocWithZone(type metadata accessor for CountBadgeView());
    v30 = sub_10011B550(1, v33, v34);
    [v30 sizeThatFits:{0.0, 0.0}];
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_100750E84();
    if (qword_100920EA8 != -1)
    {
      swift_once();
    }

    v20 = sub_100750534();
    sub_10000D0FC(v20, qword_100980948);
    sub_100750E54();
    v21 = *(v37 + 8);
    v21(v5, v3);
    sub_100750E74();
    v21(v8, v3);
    sub_100750BB4();
    v22 = v38;
    sub_100750BF4();
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007A5CF0;
    v24 = v42;
    *(v23 + 32) = v42;
    v25 = v24;
    v26 = sub_100751044();
    v27 = v41;
    sub_100750404();

    (*(v40 + 8))(v22, v27);
    return;
  }

LABEL_11:
  if (qword_100921ED0 != -1)
  {
    swift_once();
  }

  v31 = sub_100752E44();
  sub_10000D0FC(v31, qword_1009832E8);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5620;
  sub_1007523A4();
  v43[3] = v16;
  v32 = sub_10000D134(v43);
  sub_100415A30(v39, v32);
  sub_100752424();
  sub_10000C8CC(v43, &unk_100923520);
  sub_1007523A4();
  sub_100752CF4();

  sub_10007A554(v18);
}

uint64_t sub_10050C5CC(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for Accessory();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (v42 - v9);
  v11 = *(v1 + 32);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v42[1] = v8;
  v45 = _swiftEmptyArrayStorage;
  sub_1007545C4();
  v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v15 = *(v4 + 72);
  while (1)
  {
    sub_100415A30(v14, v10);
    swift_beginAccess();
    v18 = *(v2 + 40);
    if (*(v18 + 16))
    {
      v19 = sub_100412228(v10);
      if (v20)
      {
        v21 = *(*(v18 + 56) + 8 * v19);
        swift_endAccess();
        v22 = v21;
        goto LABEL_5;
      }
    }

    swift_endAccess();
    sub_10050A2DC(v43);
    v24 = v23;
    sub_100415A30(v10, v6);
    swift_beginAccess();
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v2 + 40);
    v27 = v44;
    *(v2 + 40) = 0x8000000000000000;
    v28 = sub_100412228(v6);
    v30 = v27[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      break;
    }

    v34 = v29;
    if (v27[3] < v33)
    {
      sub_10067007C(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_100412228(v6);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      v36 = v44;
      if ((v34 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v40 = v28;
    sub_100674D44();
    v28 = v40;
    v36 = v44;
    if ((v34 & 1) == 0)
    {
LABEL_15:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = v28;
      sub_100415A30(v6, v36[6] + v28 * v15);
      *(v36[7] + 8 * v37) = v25;
      v38 = v36[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_22;
      }

      v36[2] = v39;
      goto LABEL_4;
    }

LABEL_3:
    v16 = v36[7];
    v17 = *(v16 + 8 * v28);
    *(v16 + 8 * v28) = v25;

LABEL_4:
    sub_10007A554(v6);
    *(v2 + 40) = v36;
    swift_endAccess();
LABEL_5:
    sub_10007A554(v10);
    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();
    v14 += v15;
    if (!--v12)
    {
      return v45;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1007547B4();
  __break(1u);
  return result;
}

uint64_t sub_10050C8E8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (sub_1007537D4())
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

uint64_t sub_10050C924()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for NavigationAccessory.Location(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationAccessory.Location(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for Accessory()
{
  result = qword_10093C8D0;
  if (!qword_10093C8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10050CB2C()
{
  sub_10050CC28();
  if (v0 <= 0x3F)
  {
    sub_10050CCB8();
    if (v1 <= 0x3F)
    {
      sub_10050CD44();
      if (v2 <= 0x3F)
      {
        sub_10050CDC8();
        if (v3 <= 0x3F)
        {
          sub_10050CE40(319, &qword_10093C900);
          if (v4 <= 0x3F)
          {
            sub_10050CE40(319, &qword_10093C908);
            if (v5 <= 0x3F)
            {
              sub_10050CE88();
              if (v6 <= 0x3F)
              {
                sub_10050CEFC(319);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10050CC28()
{
  if (!qword_10093C8E0)
  {
    sub_10000C724(&qword_10092FE70);
    sub_10000C724(&unk_100935100);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10093C8E0);
    }
  }
}

void sub_10050CCB8()
{
  if (!qword_10093C8E8)
  {
    sub_10000C724(&qword_10092FE70);
    sub_10000C724(&unk_100928A40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10093C8E8);
    }
  }
}

void sub_10050CD44()
{
  if (!qword_10093C8F0)
  {
    sub_100016C60(255, &qword_10092B280);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10093C8F0);
    }
  }
}

void sub_10050CDC8()
{
  if (!qword_10093C8F8)
  {
    sub_10000C724(&unk_100940810);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10093C8F8);
    }
  }
}

void sub_10050CE40(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1001071A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10050CE88()
{
  if (!qword_10093C910)
  {
    sub_10074F3D4();
    type metadata accessor for CGSize(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10093C910);
    }
  }
}

void sub_10050CEFC(uint64_t a1)
{
  if (!qword_10093C918)
  {
    __chkstk_darwin(a1);
    sub_100016C60(255, &qword_100923AB0);
    type metadata accessor for SymbolScale(255);
    sub_10000C724(&unk_100935100);
    sub_10000C724(&qword_10092FE70);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_10093C918);
    }
  }
}

unint64_t sub_10050D0BC()
{
  result = qword_10093C950;
  if (!qword_10093C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C950);
  }

  return result;
}

uint64_t sub_10050D110(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v42 = a2;
  v5 = type metadata accessor for Accessory();
  v44 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v13 = a1 >> 62;
    if (a1 >> 62)
    {
      if (i != sub_100754664())
      {
        return 0;
      }
    }

    else if (i != *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    v31 = a1;
    if (v11)
    {
      break;
    }

    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return 1;
    }

LABEL_9:
    v15 = 0;
    v39 = a3 & 0xFFFFFFFFFFFFFF8;
    v40 = a3 & 0xC000000000000001;
    v11 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v16 = v31;
    }

    else
    {
      v16 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v32 = v16;
    v33 = v31 & 0xFFFFFFFFFFFFFF8;
    v37 = v31 & 0xC000000000000001;
    v38 = a3 + 32;
    v35 = a1 >> 62;
    v36 = v31 + 32;
    v30 = a3;
    v34 = v14;
    while (1)
    {
      if (v40)
      {
        v43 = sub_100754574();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_48;
        }

        v43 = *(v38 + 8 * v15);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_47;
        }
      }

      if (v13)
      {
        v18 = sub_100754664();
      }

      else
      {
        v18 = *(v11 + 16);
      }

      if (v15 == v18)
      {

        return 1;
      }

      v41 = v17;
      if (v37)
      {
        v19 = sub_100754574();
      }

      else
      {
        if (v15 >= *(v11 + 16))
        {
          goto LABEL_49;
        }

        v19 = *(v36 + 8 * v15);
      }

      v20 = v42;
      a1 = v43;
      v21 = (*(v43 + 16))(v42);
      if (v21 != (*(v19 + 16))(v20) || (v22 = *(a1 + 32), v23 = *(v19 + 32), v11 = *(v22 + 16), v11 != *(v23 + 16)))
      {
LABEL_40:

        return 0;
      }

      if (v11 && v22 != v23)
      {
        break;
      }

LABEL_34:
      v15 = v41;
      v13 = v35;
      v11 = v33;
      if (v41 == v34)
      {
        return 1;
      }
    }

    a1 = 0;
    v24 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    a3 = v22 + v24;
    v25 = v23 + v24;
    while (a1 < *(v22 + 16))
    {
      v26 = *(v44 + 72) * a1;
      sub_100415A30(a3 + v26, v10);
      if (a1 >= *(v23 + 16))
      {
        goto LABEL_46;
      }

      sub_100415A30(v25 + v26, v7);
      v27 = sub_10050D4C8(v10, v7);
      sub_10007A554(v7);
      sub_10007A554(v10);
      if ((v27 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (v11 == ++a1)
      {

        a3 = v30;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v14 = sub_100754664();
  if (v14)
  {
    goto LABEL_9;
  }

  return 1;
}

uint64_t sub_10050D4C8(uint64_t a1, double *a2)
{
  v186 = a1;
  v187 = a2;
  v174 = sub_100742A34();
  v185 = *(v174 - 8);
  __chkstk_darwin(v174);
  v169 = &v168 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_10000C518(&qword_10093C960);
  __chkstk_darwin(v184);
  v183 = &v168 - v3;
  v4 = sub_10000C518(&unk_100940810);
  __chkstk_darwin(v4 - 8);
  v171 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v178 = &v168 - v7;
  __chkstk_darwin(v8);
  v179 = &v168 - v9;
  v10 = sub_100750534();
  v172 = *(v10 - 8);
  v173 = v10;
  __chkstk_darwin(v10);
  v176 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_10000C518(&qword_10092BE70);
  __chkstk_darwin(v175);
  v182 = &v168 - v12;
  v13 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v13 - 8);
  v170 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v177 = &v168 - v16;
  __chkstk_darwin(v17);
  v181 = &v168 - v18;
  v19 = type metadata accessor for Accessory();
  __chkstk_darwin(v19);
  v21 = (&v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v180 = &v168 - v23;
  __chkstk_darwin(v24);
  v26 = (&v168 - v25);
  __chkstk_darwin(v27);
  v29 = (&v168 - v28);
  __chkstk_darwin(v30);
  v32 = &v168 - v31;
  __chkstk_darwin(v33);
  v35 = &v168 - v34;
  __chkstk_darwin(v36);
  v38 = (&v168 - v37);
  __chkstk_darwin(v39);
  v41 = (&v168 - v40);
  v42 = sub_10000C518(&qword_10093C968);
  __chkstk_darwin(v42 - 8);
  v44 = &v168 - v43;
  v46 = (&v168 + *(v45 + 56) - v43);
  sub_100415A30(v186, &v168 - v43);
  v47 = v187;
  v187 = v46;
  sub_100415A30(v47, v46);
  v188 = v44;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v58 = v32;
    v60 = v184;
    v59 = v185;
    v61 = v181;
    v62 = v182;
    v63 = v183;
    if (EnumCaseMultiPayload > 1)
    {
      v64 = v188;
      if (EnumCaseMultiPayload == 2)
      {
        sub_100415A30(v188, v35);
        v84 = *v35;
        v83 = *(v35 + 1);
        v85 = *(v35 + 2);
        v86 = *(v35 + 3);
        v87 = v187;
        if (swift_getEnumCaseMultiPayload() != 2)
        {

          goto LABEL_61;
        }

        v88 = *(v87 + 2);
        v89 = v87[3];
        if (v84 == *v87 && v83 == *(v87 + 1))
        {
        }

        else
        {
          v128 = sub_100754754();

          if ((v128 & 1) == 0)
          {

            goto LABEL_98;
          }
        }

        sub_100016C60(0, &qword_1009327F0);
        v129 = sub_100753FC4();

        if (v129)
        {
          v56 = v86 == v89;
          v57 = v64;
LABEL_73:
          sub_10007A554(v57);
          return v56;
        }

        goto LABEL_98;
      }

      v65 = v187;
      if (EnumCaseMultiPayload == 3)
      {
        v66 = v58;
        sub_100415A30(v188, v58);
        v67 = *(sub_10000C518(&qword_1009262D8) + 48);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_10000C8CC(&v66[v67], &unk_100940810);
          goto LABEL_61;
        }

        v68 = *v66;
        v69 = *v65;
        v70 = &v66[v67];
        v71 = v179;
        sub_100066578(v70, v179, &unk_100940810);
        v72 = v65 + v67;
        v73 = v178;
        sub_100066578(v72, v178, &unk_100940810);
        if (v68 == v69)
        {
          v130 = *(v60 + 48);
          v131 = v63;
          sub_100016B4C(v71, v63, &unk_100940810);
          v132 = v130;
          sub_100016B4C(v73, v131 + v130, &unk_100940810);
          v133 = v59;
          v134 = *(v59 + 48);
          v135 = v174;
          if (v134(v131, 1, v174) == 1)
          {
            sub_10000C8CC(v73, &unk_100940810);
            sub_10000C8CC(v71, &unk_100940810);
            if (v134(v131 + v132, 1, v135) == 1)
            {
              sub_10000C8CC(v131, &unk_100940810);
              goto LABEL_116;
            }
          }

          else
          {
            v144 = v171;
            sub_100016B4C(v131, v171, &unk_100940810);
            if (v134(v131 + v132, 1, v135) != 1)
            {
              v157 = v131 + v132;
              v158 = v144;
              v159 = v169;
              (*(v133 + 32))(v169, v157, v135);
              sub_10050E918(&qword_10093C970, &type metadata accessor for StoreTab);
              v160 = sub_100753014();
              v161 = *(v133 + 8);
              v161(v159, v135);
              sub_10000C8CC(v178, &unk_100940810);
              sub_10000C8CC(v179, &unk_100940810);
              v161(v158, v135);
              sub_10000C8CC(v131, &unk_100940810);
              if (v160)
              {
                goto LABEL_116;
              }

              goto LABEL_98;
            }

            sub_10000C8CC(v178, &unk_100940810);
            sub_10000C8CC(v179, &unk_100940810);
            (*(v133 + 8))(v144, v135);
          }

          v75 = &qword_10093C960;
          v74 = v131;
        }

        else
        {
          sub_10000C8CC(v73, &unk_100940810);
          v74 = v71;
          v75 = &unk_100940810;
        }

        sub_10000C8CC(v74, v75);
        goto LABEL_98;
      }

      sub_100415A30(v188, v29);
      v95 = *v29;
      v94 = v29[1];
      v96 = swift_getEnumCaseMultiPayload();
      if (v96 == 4)
      {
        v91 = *(v65 + 1);
        if (v94)
        {
          if (v91)
          {
            v92 = *v65;
            goto LABEL_40;
          }

LABEL_64:

          goto LABEL_98;
        }

LABEL_63:
        if (!v91)
        {
          goto LABEL_116;
        }

        goto LABEL_64;
      }

LABEL_43:

      goto LABEL_61;
    }

    v76 = v188;
    if (!EnumCaseMultiPayload)
    {
      sub_100415A30(v188, v41);
      v78 = *v41;
      v77 = v41[1];
      v80 = v41[2];
      v79 = v41[3];
      v81 = v41[4];
      v82 = v187;
      if (swift_getEnumCaseMultiPayload())
      {
        v64 = v76;

        goto LABEL_61;
      }

      v125 = *(v82 + 1);
      v124 = *(v82 + 2);
      v127 = *(v82 + 3);
      v126 = *(v82 + 4);
      if (v77)
      {
        if (v125)
        {
          if (v78 == *v187 && v77 == v125)
          {

            goto LABEL_110;
          }

          v153 = sub_100754754();

          if (v153)
          {
LABEL_110:
            if (v80)
            {
              if (!v124)
              {

                goto LABEL_128;
              }

              sub_100016C60(0, &qword_100923500);
              v154 = v80;
              v155 = v124;
              v156 = sub_100753FC4();

              if ((v156 & 1) == 0)
              {

LABEL_128:

                goto LABEL_142;
              }
            }

            else if (v124)
            {

              goto LABEL_143;
            }

            if (v81)
            {
              if (!v126)
              {

                goto LABEL_142;
              }

              if (v79 == v127 && v81 == v126)
              {

                v162 = v188;
                goto LABEL_117;
              }

              v166 = sub_100754754();

              if ((v166 & 1) == 0)
              {
                goto LABEL_143;
              }
            }

            else
            {

              if (v126)
              {
                goto LABEL_142;
              }
            }

            v162 = v188;
            goto LABEL_117;
          }
        }

        else
        {
        }

        goto LABEL_143;
      }

      if (v125)
      {

LABEL_142:

        goto LABEL_143;
      }

      goto LABEL_110;
    }

    sub_100415A30(v188, v38);
    v98 = *v38;
    v97 = v38[1];
    v99 = *(sub_10000C518(&qword_10093C958) + 48);
    v100 = v187;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10000C8CC(v38 + v99, &unk_100928A40);

      v64 = v188;
      goto LABEL_61;
    }

    v101 = v100[1];
    v186 = *v100;
    sub_100066578(v38 + v99, v61, &unk_100928A40);
    v102 = v177;
    sub_100066578(v100 + v99, v177, &unk_100928A40);
    if (v97)
    {
      if (v101)
      {
        v103 = v62;
        if (v98 == v186 && v97 == v101)
        {

          v104 = v175;
          v105 = v176;
          goto LABEL_101;
        }

        v145 = sub_100754754();

        v104 = v175;
        v105 = v176;
        if (v145)
        {
LABEL_101:
          v146 = *(v104 + 48);
          sub_100016B4C(v61, v103, &unk_100928A40);
          sub_100016B4C(v102, v103 + v146, &unk_100928A40);
          v147 = v172;
          v148 = v173;
          v149 = *(v172 + 48);
          if (v149(v103, 1, v173) == 1)
          {
            sub_10000C8CC(v102, &unk_100928A40);
            sub_10000C8CC(v61, &unk_100928A40);
            v150 = v149(v103 + v146, 1, v148);
            v151 = v188;
            if (v150 == 1)
            {
              sub_10000C8CC(v103, &unk_100928A40);
LABEL_126:
              v162 = v151;
              goto LABEL_117;
            }
          }

          else
          {
            v152 = v170;
            sub_100016B4C(v103, v170, &unk_100928A40);
            if (v149(v103 + v146, 1, v148) != 1)
            {
              (*(v147 + 32))(v105, v103 + v146, v148);
              sub_10050E918(&qword_10092BE78, &type metadata accessor for FontUseCase);
              v163 = v147;
              v164 = sub_100753014();
              v165 = *(v163 + 8);
              v165(v105, v148);
              sub_10000C8CC(v177, &unk_100928A40);
              sub_10000C8CC(v61, &unk_100928A40);
              v165(v152, v148);
              sub_10000C8CC(v103, &unk_100928A40);
              v151 = v188;
              if (v164)
              {
                goto LABEL_126;
              }

LABEL_107:
              sub_10007A554(v151);
              return 0;
            }

            sub_10000C8CC(v177, &unk_100928A40);
            sub_10000C8CC(v61, &unk_100928A40);
            (*(v147 + 8))(v152, v148);
            v151 = v188;
          }

          sub_10000C8CC(v103, &qword_10092BE70);
          goto LABEL_107;
        }

LABEL_90:
        sub_10000C8CC(v102, &unk_100928A40);
        sub_10000C8CC(v61, &unk_100928A40);
        goto LABEL_143;
      }
    }

    else
    {
      v103 = v62;
      v104 = v175;
      v105 = v176;
      if (!v101)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_90;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v93 = swift_getEnumCaseMultiPayload();
      v64 = v188;
      if (v93 != 8)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v64 = v188;
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() != 9)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v122 = swift_getEnumCaseMultiPayload();
        if (v122 != 10)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_116;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v49 = v180;
      sub_100415A30(v188, v180);
      v51 = *(v49 + 8);
      v50 = *(v49 + 16);
      v52 = v187;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v54 = v52[1];
        v53 = v52[2];
        sub_10074F3D4();
        v55 = sub_10074F224();

        if (v55)
        {
          v56 = v50 == v53 && v51 == v54;
          v57 = v188;
          goto LABEL_73;
        }

        goto LABEL_143;
      }

      v64 = v188;
      goto LABEL_61;
    }

    v106 = v188;
    sub_100415A30(v188, v21);
    v107 = *v21;
    v108 = v21[1];
    v109 = v21[2];
    v110 = v21[3];
    v111 = v21[4];
    v112 = v21[5];
    v113 = v21[6];
    v114 = v187;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v115 = v113;
      v186 = v112;
      v116 = *v114;
      v117 = *(v114 + 1);
      v118 = v114;
      v120 = *(v114 + 2);
      v119 = *(v114 + 3);
      v121 = *(v118 + 4);
      v185 = *(v118 + 5);
      v187 = *(v118 + 6);
      if (v107 == v116 && v108 == v117)
      {

LABEL_78:
        sub_100016C60(0, &qword_1009327F0);
        v137 = sub_100753FC4();
        v138 = v188;
        if ((v137 & 1) != 0 && v110 == v119)
        {
          if (v111)
          {
            if (!v121)
            {

              goto LABEL_137;
            }

            sub_100016C60(0, &qword_100923500);
            v139 = v111;
            v140 = v121;
            v141 = v121;
            v142 = sub_100753FC4();

            if ((v142 & 1) == 0)
            {

LABEL_137:

LABEL_138:

              goto LABEL_85;
            }

LABEL_131:
            if (v115)
            {
              if (!v187)
              {

                goto LABEL_138;
              }

              if (v186 == v185 && v115 == v187)
              {

                v162 = v138;
                goto LABEL_117;
              }

              v167 = sub_100754754();

              if ((v167 & 1) == 0)
              {
                goto LABEL_85;
              }
            }

            else
            {

              if (v187)
              {
                goto LABEL_138;
              }
            }

            v162 = v138;
            goto LABEL_117;
          }

          v140 = v121;
          if (!v121)
          {
            goto LABEL_131;
          }
        }

        else
        {
        }

LABEL_85:
        sub_10007A554(v138);
        return 0;
      }

      v136 = sub_100754754();

      if (v136)
      {
        goto LABEL_78;
      }

LABEL_143:
      sub_10007A554(v188);
      return 0;
    }

    v64 = v106;
LABEL_61:
    sub_10000C8CC(v64, &qword_10093C968);
    return 0;
  }

  v64 = v188;
  sub_100415A30(v188, v26);
  v95 = *v26;
  v94 = v26[1];
  v90 = v187;
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_43;
  }

  v91 = *(v90 + 1);
  if (!v94)
  {
    goto LABEL_63;
  }

  if (!v91)
  {
    goto LABEL_64;
  }

  v92 = *v90;
LABEL_40:
  if (v95 != v92 || v94 != v91)
  {
    v143 = sub_100754754();

    if (v143)
    {
      goto LABEL_116;
    }

LABEL_98:
    sub_10007A554(v64);
    return 0;
  }

LABEL_116:
  v162 = v64;
LABEL_117:
  sub_10007A554(v162);
  return 1;
}

uint64_t sub_10050E918(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10050E960()
{
  v0 = sub_100747C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  v4 = sub_10050EA98(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_10050EA98(uint64_t a1)
{
  v2 = sub_10074F704();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100749E34();
  v47 = *(v4 - 8);
  __chkstk_darwin(v4);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v46 - v7;
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_10000C518(&qword_100934D90);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v54 = sub_100749E74();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10074EAB4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v46 - v23;
  sub_100747BD4();
  sub_10074EA74();
  sub_10050F310(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  v59 = sub_100754324();
  v25 = *(v19 + 8);
  v25(v21, v18);
  v25(v24, v18);
  v58 = a1;
  v26 = sub_100747BA4();
  v27 = v47;
  (*(v47 + 56))(v16, 1, 1, v4);
  v50 = v16;
  v28 = v16;
  v29 = v27;
  sub_10009A9B0(v28, v13);
  v30 = *(v27 + 48);
  if (v30(v13, 1, v4) == 1)
  {
    (*(v48 + 224))();
    v31 = v10;
    if (v30(v13, 1, v4) != 1)
    {
      sub_10009AA20(v13);
    }
  }

  else
  {
    (*(v27 + 32))(v10, v13, v4);
    v31 = v10;
  }

  v32 = *(v29 + 16);
  v33 = v49;
  v32(v49, v31, v4);
  v34 = (*(v29 + 88))(v33, v4);
  v35 = v52;
  if (v34 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    if (qword_100920A88 != -1)
    {
      swift_once();
    }

    sub_10000C824(qword_10097FE28, v62);
  }

  else if (v34 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_100920A80 != -1)
    {
      swift_once();
    }

    sub_10000C824(qword_10097FE00, v62);
  }

  else
  {
    if (qword_100920A88 != -1)
    {
      swift_once();
    }

    sub_10000C824(qword_10097FE28, v62);
    (*(v29 + 8))(v33, v4);
  }

  v32(v35, v31, v4);
  sub_10000C824(v62, v61);
  sub_100038D38();
  if (qword_100921460 != -1)
  {
    swift_once();
  }

  v36 = sub_100750534();
  sub_10000D0FC(v36, qword_100981A58);
  v37 = [v26 traitCollection];
  sub_100753C14();

  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v38 = sub_100750B04();
  v39 = sub_10000D0FC(v38, qword_100982098);
  v60[3] = v38;
  v60[4] = &protocol witness table for StaticDimension;
  v40 = sub_10000D134(v60);
  (*(*(v38 - 8) + 16))(v40, v39, v38);
  v41 = v51;
  sub_100749E54();
  swift_unknownObjectRelease();
  sub_10000C620(v62);
  (*(v29 + 8))(v31, v4);
  sub_10009AA20(v50);
  v42 = v55;
  sub_100747B84();
  sub_10074F674();
  (*(v56 + 8))(v42, v57);
  v43 = sub_100747BA4();
  v44 = sub_1000239F0(v41, v43);
  swift_unknownObjectRelease();
  (*(v53 + 8))(v41, v54);
  return v44;
}

uint64_t sub_10050F310(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10050F35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_100747524();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = enum case for ComponentSeparator.Position.top(_:);
  v11 = *(v6 + 104);
  (v11)(v9, enum case for ComponentSeparator.Position.top(_:), v5, v7);
  v12 = sub_100747514();
  v14 = v13;
  v32 = v6;
  v29 = *(v6 + 8);
  v29(v9, v5);
  v34._countAndFlagsBits = v12;
  v34._object = v14;
  v30 = a1;
  v31 = a2;
  LOBYTE(v12) = sub_100753124(v34);

  if (v12 & 1) != 0 || (v10 = enum case for ComponentSeparator.Position.bottom(_:), v11(v9, enum case for ComponentSeparator.Position.bottom(_:), v5), v15 = sub_100747514(), v17 = v16, v29(v9, v5), v35._countAndFlagsBits = v15, v35._object = v17, LOBYTE(v15) = sub_100753124(v35), , (v15) || (v10 = enum case for ComponentSeparator.Position.leading(_:), v11(v9, enum case for ComponentSeparator.Position.leading(_:), v5), v18 = sub_100747514(), v20 = v19, v29(v9, v5), v36._countAndFlagsBits = v18, v36._object = v20, LOBYTE(v18) = sub_100753124(v36), , (v18) || (v10 = enum case for ComponentSeparator.Position.trailing(_:), v11(v9, enum case for ComponentSeparator.Position.trailing(_:), v5), v21 = sub_100747514(), v23 = v22, v29(v9, v5), v37._countAndFlagsBits = v21, v37._object = v23, v24 = sub_100753124(v37), , v24))
  {
    v25 = v33;
    v11(v33, v10, v5);
    v26 = 0;
  }

  else
  {
    v26 = 1;
    v25 = v33;
  }

  return (*(v32 + 56))(v25, v26, 1, v5);
}

char *sub_10050F628(double a1, double a2, double a3, double a4)
{
  v9 = sub_100747524();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 104))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v10);
  sub_100747534();
  v13 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineColor;
  *&v4[v14] = [objc_opt_self() separatorColor];
  v15 = type metadata accessor for SeparatorSupplementaryView();
  v19.receiver = v4;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  [v16 setUserInteractionEnabled:0];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v16 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineView;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineView] setBackgroundColor:*&v16[OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineColor]];
  [v16 addSubview:*&v16[v17]];

  return v16;
}

void sub_10050F87C()
{
  v1 = v0;
  v2 = sub_100747564();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setNeedsLayout];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v7], v2);
  v8 = sub_1007474E4();
  (*(v3 + 8))(v6, v2);
  if (!v8)
  {
    v8 = [objc_opt_self() separatorColor];
  }

  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineColor];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineColor] = v8;
  v10 = v8;

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineView] setBackgroundColor:v10];
}

double sub_10050F9FC(double a1)
{
  v25 = sub_100747524();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100747564();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v26 = v1;
  v13(v11, v1 + v12, v5);
  sub_100747544();
  v14 = *(v6 + 8);
  v15 = v11;
  v16 = v27;
  v17 = v25;
  v14(v15, v5);
  v18 = (*(v16 + 88))(v4, v17);
  if (v18 == enum case for ComponentSeparator.Position.top(_:) || v18 == enum case for ComponentSeparator.Position.bottom(_:))
  {
    v13(v8, v26 + v12, v5);
    sub_100747504();
    v14(v8, v5);
  }

  else
  {
    v24 = v14;
    if (v18 == enum case for ComponentSeparator.Position.leading(_:) || v18 == enum case for ComponentSeparator.Position.trailing(_:))
    {
      v13(v8, v26 + v12, v5);
      sub_100747504();
      a1 = v21;
      v24(v8, v5);
    }

    else
    {
      (*(v16 + 8))(v4, v17);
      return 0.0;
    }
  }

  return a1;
}

id sub_10050FED0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorSupplementaryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SeparatorSupplementaryView()
{
  result = qword_10093C9C8;
  if (!qword_10093C9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10050FFE8()
{
  result = sub_100747564();
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

void sub_100510088()
{
  v1 = sub_100747524();
  v2 = __chkstk_darwin(v1);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v2);
  sub_100747534();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineColor;
  *(v0 + v6) = [objc_opt_self() separatorColor];
  sub_100754644();
  __break(1u);
}

uint64_t sub_1005101F8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100982208);
  sub_10000D0FC(v4, qword_100982208);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005108CC(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6)
{
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v14 = a3;
  v15 = a1;
  sub_100511DBC(v14, v13, a5, a6);

  return (*(v11 + 8))(v13, v10);
}

id sub_100510B0C()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_10092E4C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - v3;
  v5 = sub_100744074();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  v74 = v5;
  v9 = objc_opt_self();
  if (qword_100921B48 != -1)
  {
    swift_once();
  }

  v10 = qword_100982AD8;
  v11 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits) traitCollection];
  v12 = [v9 preferredFontForTextStyle:v10 compatibleWithTraitCollection:v11];

  sub_100744094();
  v13 = sub_1007440D4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_10000C8CC(v4, &unk_10092E4C0);
    v15 = sub_10074ECB4();
    if (v16)
    {
      v17 = v15;

      v74 = v17;
    }
  }

  else
  {
    v74 = sub_10051131C(v74, v7);
    (*(v14 + 8))(v4, v13);
  }

  v72 = sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  v71 = xmmword_1007A6580;
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = NSForegroundColorAttributeName;
  v20 = qword_1009209E8;
  v70 = NSForegroundColorAttributeName;
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_10097FC68;
  v22 = sub_100016C60(0, &qword_100923500);
  *(inited + 40) = v21;
  v69 = v22;
  *(inited + 64) = v22;
  *(inited + 72) = NSFontAttributeName;
  v23 = sub_100016C60(0, &qword_100923AB0);
  *(inited + 104) = v23;
  *(inited + 80) = v12;
  v24 = v21;
  v68 = NSFontAttributeName;
  v73 = v12;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(NSMutableAttributedString);
  v26 = sub_100753064();

  type metadata accessor for Key(0);
  sub_100168B0C();
  isa = sub_100752F34().super.isa;

  v28 = [v25 initWithString:v26 attributes:isa];

  v29 = sub_100744024();
  if (v30)
  {
    v66 = v29;
    v67 = v30;
    v31 = v28;
    v32 = v73;
    v33 = swift_initStackObject();
    *(v33 + 16) = v71;
    v34 = v70;
    *(v33 + 32) = v70;
    v35 = qword_1009209E0;
    v36 = v34;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = qword_10097FC60;
    *(v33 + 40) = qword_10097FC60;
    v38 = v68;
    *(v33 + 64) = v69;
    *(v33 + 72) = v38;
    *(v33 + 104) = v23;
    *(v33 + 80) = v32;
    v39 = v38;
    v40 = v32;
    v41 = v37;
    sub_100413A18(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
    v74 = sub_100752F34().super.isa;

    v65 = v31;
    v42 = [v31 string];
    v43 = sub_100753094();
    v45 = v44;

    v79 = v43;
    v80 = v45;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    sub_1000D5C0C();
    v46 = sub_1007542F4();
    v48 = v47;

    v79 = v46;
    v80 = v48;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v49 = sub_1007542F4();
    v51 = v50;

    v79 = v49;
    v80 = v51;
    v77 = 10060002;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    sub_1007542F4();

    v52 = sub_100753064();

    v79 = v66;
    v80 = v67;
    v76 = 0xE100000000000000;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v53 = sub_1007542F4();
    v55 = v54;

    v79 = v53;
    v80 = v55;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v56 = sub_1007542F4();
    v58 = v57;

    v79 = v56;
    v80 = v58;
    v76 = 0xE100000000000000;
    v77 = 10060002;
    v28 = v65;
    v78 = 0xA300000000000000;
    v75 = 39;
    sub_1007542F4();

    v59 = sub_100753064();

    v60 = [v52 rangeOfString:v59 options:1];
    v62 = v61;

    v63 = v74;
    [v28 addAttributes:v74 range:{v60, v62}];
  }

  v64 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v28];

  return v64;
}

uint64_t sub_10051131C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0xD000000000000020;
  v7 = sub_1007440D4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v3, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for SearchEntity.developers(_:))
  {
    v13 = "Search.ResultsTitle.InStories";
LABEL_9:
    sub_10000C518(&unk_10092E4D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    v15 = sub_10038664C(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &qword_10093CA20);
    v20._object = (v13 | 0x8000000000000000);
    v20._countAndFlagsBits = v6;
    v16._rawValue = v15;
    v17 = sub_1007458A4(v20, v16);

    return v17;
  }

  if (v12 == enum case for SearchEntity.stories(_:))
  {
    v13 = "Search.ResultsTitle.InArcade";
    v6 = 0xD00000000000001DLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.arcade(_:))
  {
    v13 = "Search.ResultsTitle.InWatch";
    v6 = 0xD00000000000001CLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.watch(_:))
  {
    v13 = "must be handled.";
    v6 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  result = sub_100754644();
  __break(1u);
  return result;
}

id sub_100511608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005116BC()
{
  result = sub_10074ECC4();
  if (result)
  {
    sub_10074F1F4();
    v2 = v1;

    if (v2)
    {
      v3 = qword_100920A00;

      if (v3 != -1)
      {
        swift_once();
      }

      v4 = [objc_opt_self() configurationWithTextStyle:qword_10097FC80];
      v5 = sub_100743AD4();

      if (qword_1009209F8 != -1)
      {
        swift_once();
      }

      v6 = [v5 imageWithTintColor:qword_10097FC78];
      swift_bridgeObjectRelease_n();

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100511800(void *a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchHintCollectionViewCell();
  result = swift_dynamicCastClass();
  if (result)
  {
    v12 = result;
    v13 = a1;
    sub_100741774();
    sub_100748DE4();
    v14 = sub_100510B0C();
    if (v14)
    {
      v15 = v14;
      v31 = v13;
      v16 = OBJC_IVAR____TtC22SubscribePageExtension28SearchHintCollectionViewCell_hintView;
      v17 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits);
      v18 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension28SearchHintCollectionViewCell_hintView];
      v32 = v8;
      v19 = v18;
      [v17 pageMarginInsets];
      [v19 setLayoutMargins:?];

      v20 = *&v12[v16];
      *(v20 + OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_showSeparator) = 1;
      [*(v20 + OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_separatorView) setHidden:0];
      v21 = *&v12[v16];
      v22 = v15;
      v23 = v21;
      v24 = sub_1005116BC();
      [*&v23[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_titleLabel] setAttributedText:v22];
      v25 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconImage];
      *&v23[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconImage] = v24;
      v26 = v24;

      sub_10064FB3C(v27, v28, v29);
      [v23 setNeedsLayout];

      v30 = v32;

      sub_10074EC74();

      if ((*(v30 + 48))(v6, 1, v7) == 1)
      {

        return sub_10000C8CC(v6, &unk_100925380);
      }

      else
      {
        (*(v30 + 32))(v10, v6, v7);
        if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator))
        {

          [v12 frame];
          sub_100749544();
        }

        else
        {
        }

        return (*(v30 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100511BAC()
{
  v1 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_100752914();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100741774();
  result = sub_100748DC4();
  if (v8 < result)
  {
    sub_100741774();
    sub_100748DE4();
    sub_10074EC74();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_10000C8CC(v3, &unk_100925380);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator))
      {

        sub_100749564();
      }

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

void sub_100511DBC(void *a1, uint64_t a2, char a3, char a4)
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(sub_100741774(), 1))
  {
    __break(1u);
  }

  else
  {
    sub_100741784();
    sub_100741764();
    isa = sub_100741704().super.isa;
    (*(v8 + 8))(v10, v7);
    v12 = [a1 cellForItemAtIndexPath:isa];

    if (v12)
    {
      type metadata accessor for SearchHintCollectionViewCell();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC22SubscribePageExtension28SearchHintCollectionViewCell_hintView);
        *(v14 + OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_showSeparator) = a3;
        [*(v14 + OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_separatorView) setHidden:a4 & 1];
      }
    }
  }
}

double sub_100511F44(void *a1)
{
  sub_100741774();
  sub_100748DE4();
  v3 = sub_100510B0C();

  if (!v3)
  {
    return 0.0;
  }

  [a1 frame];
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits);
  swift_unknownObjectRetain();
  sub_100650B90(v3, v6);
  sub_100750F34();
  sub_100750404();

  swift_unknownObjectRelease();
  return v5;
}

void sub_10051207C(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = v3;
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  sub_100743384(v17, a3);
  sub_1007433C4();
  sub_100514B3C(&qword_100925570, &type metadata accessor for ArtworkView);
  sub_100744274();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = qword_10093CB50;
    v7 = Strong;
    v8 = [*(Strong + qword_10093CB50) layer];
    [v8 removeAllAnimations];

    [*&v7[v6] setImage:0];
    type metadata accessor for VideoView();
    sub_100514B3C(&unk_100923110, type metadata accessor for VideoView);
    sub_100744274();
  }

  v9 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v11 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
    v12 = v9;
    v13 = v11;
    v18.value.super.isa = 0;
    v18.is_nil = 0;
    sub_100743384(v18, v14);

    v15 = *&v9[v10];
    sub_100744274();
  }
}

uint64_t sub_10051229C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {

      return sub_10000C8CC(v7, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(a3, 1, a2, v7);

      return (*(v11 + 8))(v7, v10);
    }
  }

  return result;
}

double sub_10051241C(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();

  return sub_100513040(a2, v11, a7, a5, v7, ObjectType);
}

double sub_10051252C(uint64_t a1, void *a2, void *a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void *a9, uint64_t a10, int *a11)
{
  v80 = a6;
  v81 = a7;
  v90 = a3;
  v75 = a1;
  v76 = a2;
  v84 = type metadata accessor for AppEventCardLayout.Metrics(0);
  __chkstk_darwin(v84);
  v78 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v85);
  v79 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10074CD14();
  v72 = *(v16 - 8);
  __chkstk_darwin(v16);
  v77 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v74 = v70 - v19;
  __chkstk_darwin(v20);
  v70[0] = v70 - v21;
  v22 = sub_100750F34();
  swift_allocObject();
  v97 = sub_100750F14();
  swift_allocObject();
  v96 = sub_100750F14();
  swift_allocObject();
  v95 = sub_100750F14();
  swift_allocObject();
  v94 = sub_100750F14();
  swift_allocObject();
  v100 = sub_100750F14();
  swift_allocObject();
  v93 = sub_100750F14();
  swift_allocObject();
  v92 = sub_100750F14();
  swift_allocObject();
  v99 = sub_100750F14();
  v23 = [a9 traitCollection];
  sub_100751364();

  swift_allocObject();
  v83 = sub_100750F14();
  v24 = 0;
  v25 = 0;
  if (a8)
  {
    swift_allocObject();
    v25 = sub_100750F14();
    swift_allocObject();
    v24 = sub_100750F14();
  }

  v91 = v24;
  v82 = v25;
  v26 = [a9 traitCollection];
  v27 = [v26 preferredContentSizeCategory];
  v28 = sub_100753954();

  v98 = sub_100016C60(0, &qword_100923AB0);
  if (qword_100921570 != -1)
  {
    swift_once();
  }

  v89 = sub_100750534();
  sub_10000D0FC(v89, qword_100981D88);
  v29 = a9;
  v30 = [a9 traitCollection];
  v31 = sub_100753C14();

  v71 = v28;
  v32 = sub_10074F3F4();
  v122[3] = v32;
  v88 = sub_100514B3C(&qword_10092AC70, &type metadata accessor for Feature);
  v122[4] = v88;
  v33 = sub_10000D134(v122);
  v34 = *(*(v32 - 8) + 104);
  v87 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v86 = v34;
  v34(v33);
  sub_10074FC74();
  sub_10000C620(v122);

  v35 = v31;
  v70[1] = ~v28;
  v36 = v70[0];
  v73 = v35;
  sub_10074CD04();
  sub_10074CCE4();
  v37 = *(v72 + 1);
  v37(v36, v16);
  if (qword_100921578 != -1)
  {
    swift_once();
  }

  v72 = a11;
  sub_10000D0FC(v89, qword_100981DA0);
  v38 = [v29 traitCollection];
  v39 = sub_100753C14();

  v121[3] = v32;
  v121[4] = v88;
  v40 = sub_10000D134(v121);
  v86(v40, v87, v32);
  sub_10074FC74();
  sub_10000C620(v121);
  v90 = v29;

  v41 = v39;
  v42 = v74;
  v76 = v41;
  sub_10074CD04();
  sub_10074CCE4();
  v37(v42, v16);
  if (qword_100921580 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v89, qword_100981DB8);
  v43 = [v90 traitCollection];
  v44 = sub_100753C14();

  v120[3] = v32;
  v120[4] = v88;
  v45 = sub_10000D134(v120);
  v86(v45, v87, v32);
  sub_10074FC74();
  sub_10000C620(v120);

  v46 = v44;
  v47 = v77;
  v98 = v46;
  sub_10074CD04();
  sub_10074CCE4();
  v37(v47, v16);
  if (qword_100920458 != -1)
  {
    swift_once();
  }

  v48 = sub_10000D0FC(v84, qword_10097E0D8);
  v49 = v78;
  sub_10010C610(v48, v78);
  v119 = &protocol witness table for LayoutViewPlaceholder;
  v118 = v22;
  *&v117 = v97;
  v116 = &protocol witness table for LayoutViewPlaceholder;
  v115 = v22;
  v113 = &protocol witness table for LayoutViewPlaceholder;
  *&v114 = v96;
  v112 = v22;
  v110 = &protocol witness table for LayoutViewPlaceholder;
  *&v111 = v95;
  v109 = v22;
  v107 = &protocol witness table for LayoutViewPlaceholder;
  *&v108 = v94;
  v106 = v22;
  *&v105 = v100;
  sub_10000C824(v122, v104);
  sub_10000C824(v121, v103);
  sub_10000C824(v120, v101);
  v50 = v82;
  if (v82)
  {
    v51 = v22;
  }

  else
  {
    v51 = 0;
  }

  if (v82)
  {
    v52 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v52 = 0;
  }

  v88 = v52;
  v89 = v51;
  v53 = v91;
  if (v91)
  {
    v54 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v54 = 0;
  }

  if (v91)
  {
    v55 = v22;
  }

  else
  {
    v55 = 0;
  }

  v56 = v79;
  sub_10010CC50(v49, v79);
  v57 = v85;
  sub_100012160(&v117, v56 + *(v85 + 20));
  sub_100012160(&v114, v56 + v57[6]);
  sub_100012160(&v111, v56 + v57[7]);
  sub_100012160(&v108, v56 + v57[8]);
  sub_100012160(&v105, v56 + v57[9]);
  v58 = (v56 + v57[10]);
  v59 = v92;
  *v58 = v93;
  v58[3] = v22;
  v58[4] = &protocol witness table for LayoutViewPlaceholder;
  v60 = (v56 + v57[11]);
  *v60 = v59;
  v60[3] = v22;
  v60[4] = &protocol witness table for LayoutViewPlaceholder;
  v61 = (v56 + v57[12]);
  *v61 = v99;
  v61[3] = v22;
  v61[4] = &protocol witness table for LayoutViewPlaceholder;
  sub_100012160(v104, v56 + v57[13]);
  sub_100012160(v103, v56 + v57[14]);
  v62 = v56 + v57[15];
  v63 = v101[1];
  *v62 = v101[0];
  *(v62 + 16) = v63;
  *(v62 + 32) = v102;
  v64 = (v56 + v57[16]);
  *v64 = v83;
  v64[3] = v22;
  v64[4] = &protocol witness table for LayoutViewPlaceholder;
  v65 = (v56 + v57[17]);
  *v65 = v50;
  v65[1] = 0;
  v66 = v88;
  v67 = v89;
  v65[2] = 0;
  v65[3] = v67;
  v65[4] = v66;
  v68 = (v56 + v57[18]);
  *v68 = v53;
  v68[1] = 0;
  v68[2] = 0;
  v68[3] = v55;
  v68[4] = v54;

  sub_10010E438(v90, v56, v72);

  sub_10001BB14(v56);
  sub_10000C620(v120);
  sub_10000C620(v121);
  sub_10000C620(v122);
  return a4;
}

double sub_100513040(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = sub_100742874();
  v11 = v10;
  v12 = sub_100742864();
  v14 = v13;
  v15 = sub_1007428A4();
  v17 = v16;
  v18 = sub_1005FBD60();
  v19 = sub_10051252C(v9, v11, v12, a1, v14, v15, v17, v18 & 1, a3, a5, a6);

  return v19;
}

uint64_t sub_10051312C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v167 = a2;
  v5 = sub_1007527A4();
  v165 = *(v5 - 8);
  v166 = v5;
  __chkstk_darwin(v5);
  v164 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v7 - 8);
  v161 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v160 = &v142 - v10;
  v11 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v11 - 8);
  v158 = &v142 - v12;
  v13 = sub_100744864();
  __chkstk_darwin(v13 - 8);
  v156 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v155 = &v142 - v16;
  v17 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v17 - 8);
  v154 = &v142 - v18;
  v152 = sub_100744894();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v153 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_100747D94();
  v157 = *(v159 - 8);
  __chkstk_darwin(v159);
  v163 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v21 - 8);
  v143 = &v142 - v22;
  v23 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v23 - 8);
  v145 = &v142 - v24;
  v25 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v25 - 8);
  v149 = &v142 - v26;
  v27 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v27 - 8);
  v146 = &v142 - v28;
  v29 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v29 - 8);
  v147 = &v142 - v30;
  v31 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v31 - 8);
  v33 = &v142 - v32;
  v34 = sub_10074D734();
  v144 = *(v34 - 8);
  __chkstk_darwin(v34);
  v36 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v37 - 8);
  v148 = &v142 - v38;
  v39 = sub_100746BA4();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100742864();
  sub_10018CAA4(v43, v44);
  v45 = sub_100742874();
  sub_10018CAB0(v45, v46);
  v47 = sub_1007428A4();
  sub_10018CABC(v47, v48);
  v49 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView];
  sub_100742824();
  v50 = sub_100746B84();
  v51 = v39;
  v52 = v167;
  (*(v40 + 8))(v42, v51);
  v150 = v49;
  [v49 setOverrideUserInterfaceStyle:v50];
  sub_10018C450();
  v168 = a1;
  v53 = sub_1005FBD60();
  v162 = v3;
  if (v53)
  {
    v54 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView;
    if (!*&v3[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView])
    {
      v55 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_10018F7E8();
      v56 = *&v3[v54];
      *&v3[v54] = v55;
      v57 = v55;

      sub_10018D040();
    }

    v58 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView;
    if (!*&v3[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView])
    {
      v59 = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v60 = *&v3[v58];
      if (v60)
      {
        [v60 removeFromSuperview];
        v61 = *&v3[v58];
      }

      else
      {
        v61 = 0;
      }

      *&v3[v58] = v59;
      v69 = v59;

      sub_10018D208();
    }

    v70 = *&v3[v54];
    if (v70)
    {
      [v70 setHidden:0];
    }

    v71 = *&v3[v58];
    if (v71)
    {
      [v71 setHidden:0];
      v72 = *&v3[v58];
      if (v72)
      {
        v142 = v58;
        v73 = v72;
        v74 = sub_100742894();
        v75 = v144;
        v76 = *(v144 + 104);
        v76(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v34);
        v76(v33, enum case for OfferButtonPresenterViewAlignment.left(_:), v34);
        (*(v75 + 56))(v33, 0, 1, v34);
        sub_100514B3C(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
        v77 = v148;
        sub_10074A9C4();
        v78 = sub_10000C518(&unk_10092EEA0);
        (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
        v79 = sub_100742E24();
        v80 = v147;
        (*(*(v79 - 8) + 56))(v147, 1, 1, v79);
        v81 = sub_100745E94();
        v82 = v146;
        (*(*(v81 - 8) + 56))(v146, 1, 1, v81);
        v83 = sub_10000C518(&unk_100925560);
        v84 = v149;
        (*(*(v83 - 8) + 56))(v149, 1, 1, v83);
        v85 = sub_10074F8B4();
        v86 = v145;
        (*(*(v85 - 8) + 56))(v145, 1, 1, v85);
        v144 = v74;
        sub_100656038(v74, v73, v77, v167, 0, 0, v80, v82, v86, v84);
        sub_10000C8CC(v86, &unk_100925520);
        v73[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
        sub_1001CE71C();
        [v73 setNeedsLayout];
        v87 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
        v88 = *&v73[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
        if (v88)
        {
          [v88 setHidden:1];
          v89 = *&v73[v87];
          if (v89)
          {
            [v89 setText:0];
          }
        }

        v90 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
        v91 = *&v73[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
        if (v91)
        {
          if (([v91 isHidden] & 1) == 0)
          {
            v92 = *&v73[v90];
            if (v92)
            {
              if ([v92 hasContent])
              {
                v93 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
                [*&v73[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
                [*&v73[v93] setText:0];
              }
            }
          }
        }

        v94 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel;
        if ([*&v73[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel] isHidden] || !objc_msgSend(*&v73[v94], "hasContent"))
        {

          sub_10000C8CC(v149, &unk_100925990);
          sub_10000C8CC(v82, &unk_1009259A0);
          sub_10000C8CC(v80, &unk_100925530);
          sub_10000C8CC(v148, &unk_100925540);
        }

        else
        {
          v95 = *&v73[v90];
          if (v95)
          {
            [v95 setHidden:1];
            v96 = *&v73[v90];
            if (v96)
            {
              [v96 setText:0];
            }
          }

          v97 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
          [*&v73[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v73[v97] setText:0];

          sub_10000C8CC(v149, &unk_100925990);
          sub_10000C8CC(v82, &unk_1009259A0);
          sub_10000C8CC(v80, &unk_100925530);
          sub_10000C8CC(v148, &unk_100925540);
        }

        v98 = *&v3[v142];
        if (v98)
        {
          v99 = *(v98 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
          if (!v99)
          {
            goto LABEL_37;
          }

          v100 = qword_100920F68;
          v101 = v99;
          if (v100 != -1)
          {
            swift_once();
          }

          v102 = sub_100750534();
          v103 = sub_10000D0FC(v102, qword_100980B88);
          v104 = *(v102 - 8);
          v105 = v143;
          (*(v104 + 16))(v143, v103, v102);
          (*(v104 + 56))(v105, 0, 1, v102);
          sub_100745BA4();

          v98 = *&v3[v142];
          if (v98)
          {
LABEL_37:
            v106 = *(v98 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
            if (v106)
            {
              v107 = qword_100920F80;
              v108 = v106;
              if (v107 != -1)
              {
                swift_once();
              }

              v109 = sub_100750534();
              v110 = sub_10000D0FC(v109, qword_100980BD0);
              v111 = *(v109 - 8);
              v112 = v143;
              (*(v111 + 16))(v143, v110, v109);
              (*(v111 + 56))(v112, 0, 1, v109);
              sub_100745BA4();
            }
          }
        }
      }
    }

    sub_100742894();
    v113 = sub_10074EDC4();

    if (v113)
    {
      v114 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v115 = swift_allocObject();
      v52 = v167;
      v115[2] = v114;
      v115[3] = v52;
      v115[4] = v113;
      v113 = swift_allocObject();
      *(v113 + 16) = sub_100514C04;
      *(v113 + 24) = v115;

      v116 = sub_100514C48;
    }

    else
    {
      v116 = 0;
      v52 = v167;
    }

    v117 = v3;
    v66 = v163;
    v118 = &v117[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction];
    v68 = *&v117[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction];
    *v118 = v116;
    v118[1] = v113;
  }

  else
  {
    v62 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView;
    v63 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView];
    if (v63)
    {
      [v63 removeFromSuperview];
      v64 = *&v3[v62];
    }

    else
    {
      v64 = 0;
    }

    v65 = v3;
    v66 = v163;
    *&v65[v62] = 0;

    sub_10018D208();
    v67 = &v65[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction];
    v68 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction];
    *v67 = 0;
    *(v67 + 1) = 0;
  }

  sub_1000164A8(v68);
  if (sub_1007427E4())
  {
    (*(v151 + 104))(v153, enum case for VideoFillMode.scaleAspectFill(_:), v152);
    sub_10074EC14();
    sub_10074F2A4();
    v119 = v154;
    sub_100750504();

    v120 = sub_1007504F4();
    (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    v121 = v169[0];
    sub_10074EB94();
    v122 = v158;
    sub_10074EC24();
    v123 = sub_100741264();
    (*(*(v123 - 8) + 56))(v122, 0, 1, v123);
    v124 = v160;
    sub_10074EBE4();
    v125 = v161;
    sub_10074EBD4();
    type metadata accessor for VideoView();
    sub_100514B3C(&qword_1009230E0, type metadata accessor for VideoView);
    v167 = v121;
    v126 = sub_1007464A4();
    v127 = v66;
    sub_10000C8CC(v125, &unk_1009281C0);
    sub_10000C8CC(v124, &unk_1009281C0);
    sub_10000C8CC(v122, &unk_100923970);
    sub_10000C8CC(v169, &unk_1009276E0);
    v128 = v162;
    sub_10018F560();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v130 = Strong;
      [v150 insertSubview:Strong aboveSubview:*&v128[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
      [v128 setNeedsLayout];

      (*(v157 + 8))(v127, v159);
    }

    else
    {
      (*(v157 + 8))(v127, v159);
    }
  }

  else
  {
    v128 = v162;
    sub_10018F560();
    swift_unknownObjectWeakAssign();
    v131 = swift_unknownObjectWeakLoadStrong();
    if (v131)
    {
      v132 = v131;
      [v150 insertSubview:v131 aboveSubview:*&v128[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
      [v128 setNeedsLayout];
    }
  }

  sub_10074B0C4();
  sub_100752764();
  sub_100752D34();
  v133 = v169[0];

  v134 = sub_100742834();
  type metadata accessor for NotifyMeButtonPresenter();
  v135 = swift_allocObject();
  v136 = v135 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  *(v135 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v135 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v135 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v136 + 8) = &off_10086A628;
  swift_unknownObjectWeakAssign();
  *(v135 + 16) = v133;
  *(v135 + 24) = v134;

  v137 = v164;
  v138 = v166;
  sub_100752D34();
  (*(v165 + 32))(v135 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_metricsPipeline, v137, v138);
  *(v135 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_objectGraph) = v52;
  sub_100744AC4();

  sub_100752D34();
  *(v135 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_bag) = v169[5];
  sub_1001D0C08();
  sub_1001D1314();
  v139 = [objc_opt_self() defaultCenter];

  v140 = sub_10074B034();
  [v139 addObserver:v135 selector:"userNotificationsDidChangeNotification:" name:v140 object:0];

  sub_10018E820(v135);
  v128[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_includeBorderInDarkMode] = sub_100742844() & 1;
  sub_10018C450();
}

void *sub_100514768(uint64_t a1, void *a2)
{
  v3 = sub_10074F284();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _swiftEmptyArrayStorage;
  if (qword_100920458 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10000D0FC(v7, qword_10097E0D8);
  sub_1007504C4();
  if (sub_1007427E4())
  {
    sub_10074EC14();
  }

  else if (!sub_100742804())
  {
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  sub_10074F294();
  sub_10074F254();
  (*(v4 + 8))(v6, v3);
  sub_10074F374();

  sub_100753284();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();

  v8 = v16;
LABEL_9:
  sub_100742894();
  v9 = sub_10074EF64();

  if (v9)
  {
    v10 = [a2 traitCollection];
    v11 = sub_100753804();

    if (v11)
    {
      if (qword_100920450 != -1)
      {
        swift_once();
      }

      v12 = qword_10097E0C0;
    }

    else
    {
      if (qword_100920448 != -1)
      {
        swift_once();
      }

      v12 = qword_10097E0A8;
    }

    v13 = sub_100747064();
    sub_10000D0FC(v13, v12);
    sub_100746F34();
    sub_10074F294();
    sub_10074F254();
    (*(v4 + 8))(v6, v3);
    sub_10074F374();

    sub_100753284();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    return v16;
  }

  else
  {
  }

  return v8;
}

uint64_t sub_100514B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100514B84()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100514BBC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100514C10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100514C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100747064();
  v44 = *(v10 - 1);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074F314();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10074F284();
  v47 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = a4;
  v50[4] = a5;
  v17 = sub_10000D134(v50);
  (*(*(a4 - 8) + 16))(v17, a1, a4);
  sub_10000C824(v50, v49);
  sub_10000C518(&unk_100923100);
  sub_1007428B4();
  if (!swift_dynamicCast())
  {
    return sub_10000C620(v50);
  }

  v18 = v48;
  if (qword_100920458 != -1)
  {
    swift_once();
  }

  v46 = v14;
  v43 = a2;
  v19 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10000D0FC(v19, qword_10097E0D8);
  sub_1007504C4();
  v20 = sub_1007427E4();
  v42 = v18;
  if (v20)
  {
    sub_10074EC14();

    v21 = v47;
LABEL_8:
    sub_10074F294();
    sub_10074F254();
    (*(v21 + 8))(v16, v46);
    sub_10074F374();
    v23 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v23 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      type metadata accessor for VideoView();
      sub_100514B3C(&unk_100923110, type metadata accessor for VideoView);
      sub_100744204();
    }

    else
    {
      sub_1007433C4();
      sub_100514B3C(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744204();
    }

    v21 = v47;
    goto LABEL_14;
  }

  v22 = sub_100742804();
  v21 = v47;
  if (v22)
  {

    goto LABEL_8;
  }

LABEL_14:
  v26 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView);
  if (v26)
  {
    v27 = v26;
    sub_100742894();
    v28 = sub_10074EF64();

    if (v28)
    {
      v29 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      v31 = v44;
      v30 = v45;
      (*(v44 + 16))(v12, &v27[v29], v45);
      sub_100746F34();
      (*(v31 + 8))(v12, v30);
      sub_10074F294();
      sub_10074F254();
      v44 = *(v21 + 8);
      (v44)(v16, v46);
      v32 = sub_10074F374();
      v41 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
      v33 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
      v45 = v27;
      v34 = v33;
      sub_10074F324();
      sub_100743364();
      [v34 setContentMode:sub_10074F184()];
      v47 = v32;
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();

      v35 = v41;
      v36 = *&v27[v41];
      sub_10074F294();
      v37 = sub_10074F254();
      (v44)(v16, v46);
      [v36 setContentMode:v37];

      v27 = *&v27[v35];
      v38 = v45;

      sub_1007433C4();
      sub_100514B3C(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744204();
    }
  }

  else
  {
  }

  return sub_10000C620(v50);
}

double sub_1005153A8(double a1, double a2)
{
  v3 = v2;
  v24 = sub_100749A94();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_100930BC0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000C518(&qword_100925340);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v25 = 0;
  sub_1007544E4();
  sub_100752EE4();
  v26 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_stateStore);

  sub_10000C518(&qword_100925350);
  sub_10002DDC8(&qword_100925358, &qword_100925350);
  sub_100752E74();
  v13 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_objectGraph);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_model;
  sub_10000C518(&unk_10093CAD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007A6580;
  sub_100749A44();
  sub_100749A14();
  v26 = v15;
  sub_100516BA4(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  sub_10000C518(&unk_10093CAE0);
  sub_10002DDC8(&qword_100929810, &unk_10093CAE0);
  v16 = v24;
  sub_1007543A4();
  v17 = (*(v13 + 72))(v3 + v21, 1, v12, v20, v8, v3, ObjectType, v13, a1, a2);
  (*(v6 + 8))(v8, v16);
  (*(v22 + 8))(v12, v23);
  return v17;
}

id sub_1005157AC(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning()) init];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning;
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning] = v6;

  v9 = *&v1[v7];
  if (v9)
  {
    v9[OBJC_IVAR____TtC22SubscribePageExtension34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
    v10 = sub_1007417F4();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v5, a1, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    v12 = OBJC_IVAR____TtC22SubscribePageExtension34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    v13 = v9;
    sub_10003E1A0(v5, &v9[v12]);
    swift_endAccess();

    v14 = *&v1[v7];
  }

  else
  {
    v14 = 0;
  }

  [v1 setTransitioningDelegate:v14];
  return [v1 setModalPresentationStyle:4];
}

id sub_1005159E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10074EAB4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749A94();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_100930BC0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000C518(&unk_100925370);
  v38 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v43 = &v30 - v12;
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "viewDidLoad", v11);
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_componentView];
  v35 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_componentView + 8];
  v36 = swift_getObjectType();
  v42 = v13;
  v14 = [v13 backgroundView];
  result = [v0 view];
  v16 = result;
  v40 = v10;
  v41 = v6;
  if (v14)
  {
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v17 = [v14 backgroundColor];
    [v16 setBackgroundColor:v17];

LABEL_6:
    v18 = v7;
    v33 = v4;
    v34 = v3;

    result = [v0 view];
    if (result)
    {
      v19 = result;
      v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_scrollView];
      v32 = v20;
      [result addSubview:v20];

      [v20 setDelegate:v0];
      [v20 setAlwaysBounceVertical:1];
      v44[0] = 0;
      sub_1007544E4();
      sub_100752EE4();
      v45[0] = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_stateStore];

      sub_10000C518(&qword_100925350);
      sub_10002DDC8(&qword_100925358, &qword_100925350);
      sub_100752944();
      v21 = OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_model;
      v31 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_objectGraph];
      sub_10000C518(&unk_10093CAD0);
      v22 = v39;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1007A6580;
      sub_100749A44();
      sub_100749A14();
      v45[0] = v23;
      sub_100516BA4(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
      sub_10000C518(&unk_10093CAE0);
      sub_10002DDC8(&qword_100929810, &unk_10093CAE0);
      v24 = v37;
      sub_1007543A4();
      v45[0] = _swiftEmptyArrayStorage;
      sub_100516BA4(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
      sub_10000C518(&qword_10092F330);
      sub_10002DDC8(&qword_10093CAF0, &qword_10092F330);
      v25 = v41;
      v26 = v34;
      sub_1007543A4();
      v27 = v36;
      v28 = v42;
      (*(v35 + 80))(&v1[v21], v43, v31, v24, v25, v1, v36);
      (*(v33 + 8))(v25, v26);
      (*(v22 + 8))(v24, v18);
      sub_10000C824(&v1[v21], v45);
      v44[3] = v27;
      v44[0] = v28;
      v29 = v28;
      sub_1007430A4();
      sub_100516BEC(v45);
      sub_10000C620(v44);
      [v32 addSubview:v29];
      return (*(v38 + 8))(v43, v40);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    v17 = [v42 backgroundColor];
    [v16 setBackgroundColor:v17];
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_100516124()
{
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  [result bounds];
  v14 = v13;
  v16 = v15;

  v17 = sub_1005153A8(v14, v16);
  v19 = v18;
  [v1 frame];
  Height = CGRectGetHeight(v42);
  v21 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_componentView];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = result;
  [result bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v43.origin.x = v24;
  v43.origin.y = v26;
  v43.size.width = v28;
  v43.size.height = v30;
  MinX = CGRectGetMinX(v43);
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v32 = result;
  if (v19 <= Height)
  {
    v19 = Height;
  }

  [result bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v44.origin.x = v34;
  v44.origin.y = v36;
  v44.size.width = v38;
  v44.size.height = v40;
  [v21 setFrame:{MinX, CGRectGetMinY(v44), v17, v19}];
  [v1 setContentSize:{v17, v19}];
  return [v0 setPreferredContentSize:{v17, v19}];
}

void sub_10051643C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  if (a1 && [a1 horizontalSizeClass] == 2)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      [v1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_100516560()
{
  v1 = sub_10074EAB4();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v24 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100749A94();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100930BC0);
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000C518(&unk_100925370);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v27 = 0;
  sub_1007544E4();
  sub_100752EE4();
  v28 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_stateStore);

  sub_10000C518(&qword_100925350);
  sub_10002DDC8(&qword_100925358, &qword_100925350);
  sub_100752944();
  v18 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v16 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_objectGraph);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_model;
  sub_10000C518(&unk_10093CAD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007A5A00;
  sub_100749A44();
  v28 = v10;
  sub_100516BA4(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  sub_10000C518(&unk_10093CAE0);
  sub_10002DDC8(&qword_100929810, &unk_10093CAE0);
  v11 = v21;
  sub_1007543A4();
  v28 = _swiftEmptyArrayStorage;
  sub_100516BA4(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  sub_10000C518(&qword_10092F330);
  sub_10002DDC8(&qword_10093CAF0, &qword_10092F330);
  v13 = v24;
  v12 = v25;
  sub_1007543A4();
  (*(v18 + 80))(v0 + v17, v9, v16, v5, v13, v0, ObjectType);
  (*(v26 + 8))(v13, v12);
  (*(v19 + 8))(v5, v11);
  return (*(v22 + 8))(v9, v23);
}

void sub_100516B8C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning);
  *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning) = 0;
}

uint64_t sub_100516BA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100516BEC(uint64_t a1)
{
  v2 = sub_10000C518(&unk_1009297F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100516C9C()
{
  v1 = sub_10074F704();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100743184();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744C54();
  sub_100516F78(&unk_10093CB00, &type metadata accessor for ArcadeShowcase);
  sub_1007468B4();
  if (!v19)
  {
    return 0.0;
  }

  v17[1] = v0;
  sub_10074B294();
  sub_100752764();
  sub_100752D34();
  v8 = v19;
  sub_10074B274();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  (*(v2 + 8))(v4, v1);
  v9 = sub_10007DC04();
  if (sub_100743154())
  {
    v10 = sub_100744C24();
  }

  else
  {
    v10 = sub_100744C44();
  }

  v13 = v10;
  v14 = v11;
  swift_getObjectType();
  sub_100205448(v13, v14, v9);
  v12 = v15;
  swift_unknownObjectRelease();

  (*(v5 + 8))(v7, v18);
  return v12;
}

uint64_t sub_100516F78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for VideoView()
{
  result = qword_10093CBB0;
  if (!qword_10093CBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100517010()
{
  sub_10051E434();
  if (v0 <= 0x3F)
  {
    sub_100741264();
    if (v1 <= 0x3F)
    {
      sub_100747D94();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1005171C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100517240(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_10093CB40 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v3 = *(v2 + qword_10093CB70);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer);
      v6 = v3;
      [v5 setPlayer:v6];
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

char *sub_1005172EC()
{
  v1 = v0;
  v2 = sub_100747D94();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_10093CB70;
  v8 = *&v0[qword_10093CB70];
  if (v8)
  {
    sub_1005202A8(&unk_10093CCC0, type metadata accessor for VideoView);
    v9 = v8;
    v10 = v0;
    sub_100743BF4();

    v11 = *&v0[v7];
    if (v11)
    {
      v12 = qword_100982288;
      swift_beginAccess();
      (*(v3 + 16))(v6, &v10[v12], v2);
      v13 = v11;
      sub_100747D64();
      (*(v3 + 8))(v6, v2);
      sub_100743BB4();

      v14 = *&v1[v7];
      if (v14)
      {
        [v14 _setDisallowsVideoLayerDisplayCompositing:1];
      }
    }
  }

  v15 = *&v1[qword_10093CB78];
  if (v15)
  {
    [v15 setPlayer:{*&v1[v7], v4}];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *&result[OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer];
    v18 = *&v1[v7];
    [v17 setPlayer:v18];

    result = swift_unknownObjectRelease();
  }

  v19 = qword_10093CB90;
  if (v1[qword_10093CB90] == 1)
  {
    [v1 updateAudioSessionCategoryWithIsAudioOn:1];
    result = *&v1[v7];
    if (result)
    {
      result = [result setMuted:0];
    }

    v1[v19] = 0;
  }

  return result;
}

uint64_t sub_100517558()
{
  v1 = *(v0 + qword_10093CB70);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 currentItem];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 tracks];

  sub_100016C60(0, &unk_10093CD00);
  v5 = sub_1007532A4();

  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 assetTrack];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 mediaType];

        v14 = sub_100753094();
        v16 = v15;
        if (v14 == sub_100753094() && v16 == v17)
        {

LABEL_23:
          i = 1;
          goto LABEL_24;
        }

        v19 = sub_100754754();

        if (v19)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        i = 0;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_24:

  return i;
}

id sub_100517790(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for VideoView();
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_1005177EC(char *a1, uint64_t a2, void *a3)
{
  v5 = *&a1[qword_10093CB78];
  v6 = a3;
  v7 = a1;
  if (v5)
  {
    v5 = [v5 view];
  }

  [v5 setBackgroundColor:a3];

  v8.receiver = a1;
  v8.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v8, "setBackgroundColor:", a3);
}

uint64_t sub_10051789C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = sub_100747D94();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100744864();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + qword_100982258);
  if (v12)
  {
    v28[0] = v9;
    v28[1] = a1;

    v13 = sub_10074C5C4();
    v14 = qword_100982288;
    v15 = (v4 + 16);
    v16 = (v4 + 8);
    if (v13)
    {
      swift_beginAccess();
      v17 = v2 + v14;
      v18 = v29;
      (*v15)(v6, v17, v29);
      sub_100747D44();
    }

    else
    {
      swift_beginAccess();
      v24 = v2 + v14;
      v18 = v29;
      (*v15)(v6, v24, v29);
      sub_100747D14();
    }

    (*v16)(v6, v18);
    v25 = sub_10074C5C4();
    v12(v11, v25 & 1);
    sub_1000164A8(v12);
    return (*(v8 + 8))(v11, v28[0]);
  }

  else
  {
    v19 = sub_10074C5C4();
    v20 = qword_100982288;
    v21 = (v4 + 16);
    if (v19)
    {
      swift_beginAccess();
      v22 = v2 + v20;
      v23 = v29;
      (*v21)(v6, v22, v29);
      sub_100747D44();
    }

    else
    {
      swift_beginAccess();
      v27 = v2 + v20;
      v23 = v29;
      (*v21)(v6, v27, v29);
      sub_100747D14();
    }

    return (*(v4 + 8))(v6, v23);
  }
}

id sub_100517BC4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v2, "frame");
}

void sub_100517C08(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for VideoView();
  v20.receiver = a1;
  v20.super_class = v10;
  v11 = a1;
  objc_msgSendSuper2(&v20, "frame");
  v13 = v12;
  v15 = v14;
  v19.receiver = v11;
  v19.super_class = v10;
  objc_msgSendSuper2(&v19, "setFrame:", a2, a3, a4, a5);
  [v11 frame];
  v18 = v17 == v13 && v16 == v15;
  if (!v18 && (*(v11 + qword_10093CB60) & 1) == 0)
  {
    sub_10051B82C();
  }
}

uint64_t sub_100517CF0()
{
  v0 = ASKDeviceTypeGetCurrent();
  v1 = sub_100753094();
  v3 = v2;
  v5 = 8.0;
  if (v1 != sub_100753094() || v3 != v4)
  {
    if (sub_100754754())
    {
      v5 = 8.0;
    }

    else
    {
      v5 = 6.0;
    }
  }

  qword_10093CB10 = *&v5;
  *algn_10093CB18 = v5;
  qword_10093CB20 = *&v5;
  unk_10093CB28 = *&v5;
  return result;
}

char *sub_100517DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v67 = a5;
  v68 = a4;
  v69 = a3;
  v61 = sub_100752AC4();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100741264();
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  v58 = v7;
  v17 = objc_allocWithZone(v7);
  swift_weakInit();
  *&v17[qword_10093CB38 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_10093CB40 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_10093CB48 + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = qword_10093CB50;
  *&v17[v18] = [objc_allocWithZone(UIImageView) init];
  v17[qword_10093CB58] = 0;
  v17[qword_10093CB60] = 0;
  v17[qword_10093CB68] = 0;
  *&v17[qword_10093CB70] = 0;
  *&v17[qword_10093CB78] = 0;
  v19 = qword_10093CB80;
  sub_10074C5F4();
  *&v17[v19] = sub_10074C5E4();
  v20 = qword_10093CB88;
  *&v17[v20] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v21 = a2;
  v22 = &v17[qword_100982238];
  v23 = *&UIEdgeInsetsZero.bottom;
  *v22 = *&UIEdgeInsetsZero.top;
  v22[1] = v23;
  v24 = &v17[qword_100982240];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  *&v17[qword_100982248] = 1;
  v17[qword_10093CB90] = 0;
  v25 = &v17[qword_100982258];
  *v25 = 0;
  v25[1] = 0;
  *&v17[qword_100982268 + 8] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_100982270] = 0;
  v17[qword_100982278] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_10093CB98] = 0;
  v17[qword_100982290] = 0;
  *&v17[qword_10093CBA0] = 0;
  v17[qword_10093CBA8] = 0;
  swift_beginAccess();
  v64 = a7;
  swift_weakAssign();
  v63 = a1;
  sub_100066198(a1, &v17[qword_100982260]);
  v26 = sub_100741244();
  v28 = v27;
  v29 = sub_10074F134();
  v57 = a2;
  if (!v28)
  {

    v31 = v65;
    v32 = v62;
    goto LABEL_9;
  }

  if (v26 == v29 && v28 == v30)
  {

    v31 = v65;
    v32 = v62;
    goto LABEL_7;
  }

  v33 = sub_100754754();

  v31 = v65;
  v32 = v62;
  if ((v33 & 1) == 0)
  {
LABEL_9:
    (*(v32 + 16))(&v17[qword_100982250], v21, v31);
    goto LABEL_10;
  }

LABEL_7:
  v34 = [objc_opt_self() mainBundle];
  sub_1007411F4();
  v35 = sub_100753064();

  v36 = [v34 URLForResource:v35 withExtension:0];

  if (!v36)
  {
    goto LABEL_9;
  }

  sub_100741224();

  v37 = *(v32 + 32);
  v37(v16, v13, v31);
  v37(&v17[qword_100982250], v16, v31);
LABEL_10:
  v38 = v32;
  sub_100016B4C(v68, &v17[qword_100982220], &unk_1009281C0);
  sub_100016B4C(v67, &v17[qword_100982228], &unk_1009281C0);
  v39 = qword_100982288;
  v40 = sub_100747D94();
  v41 = *(v40 - 8);
  (*(v41 + 16))(&v17[v39], v69, v40);
  sub_100016B4C(v66, &v17[qword_100982230], &unk_10093CC90);
  v72.receiver = v17;
  v72.super_class = v58;
  v42 = objc_msgSendSuper2(&v72, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v42 setClipsToBounds:0];
  v43 = qword_10093CB50;
  [*&v42[qword_10093CB50] setUserInteractionEnabled:0];
  [*&v42[v43] setClipsToBounds:1];
  [v42 addSubview:*&v42[v43]];
  v44 = objc_opt_self();
  v45 = [v44 defaultCenter];
  v46 = sub_1007538A4();
  [v45 addObserver:v42 selector:"didChangeAutoPlayVideoSetting" name:v46 object:0];

  v47 = [v44 defaultCenter];
  [v47 addObserver:v42 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v48 = qword_10093CB88;
  [*&v42[qword_10093CB88] setHidden:1];
  v49 = *&v42[v48];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = &v49[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock];
  v52 = *&v49[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock];
  *v51 = sub_1005210B8;
  v51[1] = v50;
  v53 = v49;

  sub_1000164A8(v52);

  memset(v71, 0, sizeof(v71));
  memset(v70, 0, sizeof(v70));
  v54 = v59;
  sub_100752A74();
  sub_10000C8CC(v70, &unk_100923520);
  sub_10000C8CC(v71, &unk_100923520);
  sub_100753C74();
  (*(v60 + 8))(v54, v61);
  [v42 addSubview:*&v42[v48]];
  sub_10051F2AC();

  sub_10000C8CC(v66, &unk_10093CC90);
  sub_10000C8CC(v67, &unk_1009281C0);
  sub_10000C8CC(v68, &unk_1009281C0);
  (*(v41 + 8))(v69, v40);
  (*(v38 + 8))(v57, v65);
  sub_100016994(v63);

  return v42;
}

void sub_10051868C()
{
  v44 = sub_100747D94();
  v0 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &ObjectType - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100744864();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  __chkstk_darwin(v2);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &ObjectType - v7;
  v9 = sub_100749CD4();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100749D14();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v40 = v0;
    (*((swift_isaMask & *Strong) + qword_100982298 + 712))();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      ObjectType = swift_getObjectType();
      sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView);
      v18 = v17;
      v39 = v8;
      v19 = v5;
      v20 = v12;
      v21 = v18;
      sub_1007471F4();

      v12 = v20;
      v5 = v19;
      v8 = v39;
      swift_unknownObjectRelease();
    }

    (*(v13 + 104))(v15, enum case for MediaClickMetricsEvent.TargetId.play(_:), v12);
    v22 = v12;
    v24 = v45;
    v23 = v46;
    (*(v45 + 104))(v11, enum case for MediaClickMetricsEvent.ActionType.play(_:), v46);
    sub_10051D504(v15, v11);
    (*(v24 + 8))(v11, v23);
    v25 = (*(v13 + 8))(v15, v22);
    if ((*((swift_isaMask & *v17) + qword_100982298 + 752))(v25))
    {
      v26 = sub_10074C5C4();
      v27 = qword_100982288;
      v28 = (v40 + 16);
      v29 = (v40 + 8);
      if (v26)
      {
        swift_beginAccess();
        v30 = v17 + v27;
        v31 = v43;
        (*v28)(v43, v30, v44);
        sub_100747D44();
      }

      else
      {
        swift_beginAccess();
        v32 = v17 + v27;
        v31 = v43;
        (*v28)(v43, v32, v44);
        sub_100747D14();
      }

      (*v29)(v31, v44);
      sub_100744834();
      sub_1005202A8(&qword_1009295E8, &type metadata accessor for VideoControls);
      v33 = v41;
      v34 = sub_100754324();
      v35 = *(v42 + 8);
      v35(v5, v33);
      v35(v8, v33);
      if (v34)
      {
        v36 = *(v17 + qword_10093CB70);
        if (v36)
        {
          v37 = v36;
          [v17 updateAudioSessionCategoryWithIsAudioOn:1];
          [v37 setMuted:0];

          v17 = v37;
        }

        else
        {
          *(v17 + qword_10093CB90) = 1;
        }
      }
    }
  }
}

uint64_t sub_100518C98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100746494();
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_10093CB70);
  if (v8)
  {
    v14 = v4;
    v9 = v8;
    sub_100743BD4();

    return (*(v14 + 32))(a1, v7, v3);
  }

  else
  {
    v11 = enum case for VideoPlayerState.unknown(_:);
    v12 = *(v4 + 104);

    return v12(a1, v11, v3, v5);
  }
}

void sub_100518DCC()
{
  v1 = v0;
  v2 = qword_10093CB70;
  v3 = *(v0 + qword_10093CB70);
  if (v3 || (sub_1005194D8(), (v3 = *(v0 + v2)) != 0))
  {
    v4 = v3;
    v5 = sub_100743B94();

    if ((v5 & 1) == 0)
    {
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = *(v1 + v2);
      if (v7)
      {
        swift_retain_n();
        v8 = v7;
        if ([v8 isMuted] & 1) != 0 && ((*((swift_isaMask & *v1) + qword_100982298 + 752))())
        {

          sub_1001256F0(sub_1005210B0, v6);

LABEL_12:

          return;
        }
      }

      else
      {
        swift_retain_n();
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = *(Strong + qword_10093CB70);

        [v11 play];

        return;
      }

      goto LABEL_12;
    }
  }
}

void sub_100518F98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_10093CB70);

    [v2 play];
  }
}

uint64_t sub_100519010()
{
  v1 = v0;
  v2 = sub_100747D94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_100982288;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_100747CF4();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = sub_10074C5C4();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_10051913C()
{
  v1 = v0;
  v0[qword_100982278] = 0;
  v2 = qword_100982270;
  [v0 setUserInteractionEnabled:(v0[qword_100982270] & 1) == 0];
  v3 = [v0 backgroundColor];
  if (!v3)
  {
    sub_100016C60(0, &qword_100923500);
    v3 = sub_100753E34();
  }

  v10 = v3;
  v4 = *&v0[qword_10093CB78];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      if (v1[v2] == 1)
      {
        v7 = [objc_opt_self() clearColor];
      }

      else
      {
        v7 = v10;
      }

      v8 = v7;
      [v6 setBackgroundColor:v7];
    }
  }

  sub_10051F2AC();
  if ((v1[v2] & 1) == 0)
  {
    v9 = *&v1[qword_10093CB70];
    if (v9)
    {
      [v9 setMuted:(v1[qword_10093CB98] & 1) == 0];
    }
  }

  sub_10051B82C();
  [v1 setNeedsLayout];
}

uint64_t sub_1005192C8(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_100747D94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = qword_100982288;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1005202A8(&unk_10093CCF0, &type metadata accessor for VideoConfiguration);
  LOBYTE(v11) = sub_100753014();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_10051F2AC();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void sub_1005194D8()
{
  v1 = v0;
  v2 = sub_100741264();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10051B108();
  v6 = qword_10093CB70;
  v7 = *(v0 + qword_10093CB70);
  if (v7 || (((*(v3 + 16))(v5, v0 + qword_100982250, v2), v8 = objc_allocWithZone(sub_100743C34()), v9 = sub_100743BC4(), (v10 = *(v0 + v6)) == 0) ? (v12 = 0) : (v11 = v10, sub_100743BF4(), v11, v12 = *(v1 + v6)), *(v1 + v6) = v9, v13 = v9, v12, sub_1005172EC(), v13, (v7 = *(v1 + v6)) != 0))
  {
    v14 = v7;
    sub_100743BA4();
  }
}