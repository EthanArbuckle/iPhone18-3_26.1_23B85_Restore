void sub_1002854F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v17 = sub_10074F284();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_beginAccess();
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        sub_10074F294();
        sub_10074F254();
        (*(v6 + 8))(v8, v17);
        sub_10074F374();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = v11;
        v15 = a2;
        sub_1007441F4();

        sub_10000C8CC(v20, &unk_1009276E0);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_100285710(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10074F284();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10074ED34();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007504F4();
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750D14();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v75);
  sub_10000C518(&unk_100923100);
  sub_1007493C4();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v63 = v6;
  v64 = v5;
  v17 = v74;
  sub_100747474();
  sub_100752754();
  v66 = v2;
  v67 = *&v75[0];
  v18 = [v2 traitCollection];
  if (qword_100920728 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v19 = v70;
    v20 = sub_10000D0FC(v70, qword_10097EC10);
    (*(v69 + 2))(v11, v20, v19);
    sub_100750D24();
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1007A5CF0;
    *(v21 + 32) = v18;
    v22 = v18;
    v23 = sub_100751044();
    sub_100750404();
    v25 = v24;
    v27 = v26;

    (*(v13 + 8))(v15, v12);
    v28 = sub_100749354();
    v30 = v66;
    if (!v28)
    {
      goto LABEL_11;
    }

    v13 = v28;
    v31 = *&v66[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid];
    if (!v31)
    {

LABEL_11:
      if (sub_100749314())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v42 = Strong;
          sub_10074EC14();
          sub_10074F374();

          type metadata accessor for VideoView();
          v43 = &unk_100923110;
          v44 = type metadata accessor for VideoView;
LABEL_40:
          sub_100287AD4(v43, 255, v44);
          sub_100744204();

          goto LABEL_41;
        }
      }

      if (sub_100749344())
      {
        v51 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView];
        if (v51)
        {
          v52 = v51;
          [v52 setContentMode:2];
          sub_10074F364();
          sub_1007433C4();
          sub_100287AD4(&qword_100925570, 255, &type metadata accessor for ArtworkView);
          sub_100744204();

          goto LABEL_41;
        }
      }

      if (!sub_100749304())
      {
LABEL_42:
      }

      v61 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconArtworkView];
      if (v61)
      {
        v42 = v61;
        sub_10074F2A4();
        sub_100750504();
        sub_100750474();
        (*(v69 + 1))(v11, v70);
        v62 = v65;
        sub_10074F294();
        sub_10074F254();
        (*(v63 + 8))(v62, v64);
        sub_10074F374();
        sub_10074F324();
        sub_100743364();
        [v42 setContentMode:sub_10074F184()];
        sub_100747FB4();
        sub_1007433A4();
        if (!sub_10074F1E4())
        {
          sub_100016C60(0, &qword_100923500);
          sub_100753E34();
        }

        sub_100743224();
        sub_1007433C4();
        v43 = &qword_100925570;
        v44 = &type metadata accessor for ArtworkView;
        goto LABEL_40;
      }

LABEL_41:

      goto LABEL_42;
    }

    v32 = v31[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType];
    v29.f64[0] = v25;
    v33 = sub_100602310(v32, v29, v27);
    v15 = *(v13 + 16);
    if (v33 < v15)
    {
      break;
    }

    v37 = v67;
    v36 = v68;
    if (v33 <= v15)
    {
      goto LABEL_25;
    }

    v70 = v33 - v15;
    if (v33 - v15 < 0)
    {
      goto LABEL_49;
    }

    if (v15)
    {
      v65 = v17;
      v64 = v31;
      v45 = v31;

      v39 = v13;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      goto LABEL_51;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v39 = sub_10025572C(0, v15 + 1, 1, v13);
LABEL_18:
    v46 = 0;
    v11 = ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v69 = &v11[v13];
    v18 = (v71 + 16);
    v17 = (v71 + 32);
    while (1)
    {
      v47 = v46 % v15;
      if (v46 % v15 < 0)
      {
        break;
      }

      if (v47 >= *(v13 + 16))
      {
        goto LABEL_45;
      }

      v48 = *(v71 + 72);
      (*(v71 + 16))(v72, &v69[v48 * v47], v73);
      v12 = *(v39 + 16);
      v49 = *(v39 + 24);
      if (v12 >= v49 >> 1)
      {
        v39 = sub_10025572C(v49 > 1, v12 + 1, 1, v39);
      }

      ++v46;
      *(v39 + 16) = v12 + 1;
      (*v17)(&v11[v39 + v12 * v48], v72, v73);
      if (v70 == v46)
      {

        v37 = v67;
        v36 = v68;
        v30 = v66;
        v31 = v64;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v34.f64[0] = v25;
  v35 = sub_100602310(v32, v34, v27);
  v37 = v67;
  v36 = v68;
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (v15 < v35)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v15 == v35)
  {
LABEL_25:
    v50 = v31;
    v39 = v13;
  }

  else
  {
    sub_1006315C0(v13, v13 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), 0, (2 * v35) | 1);
    v39 = v38;
    v40 = v31;
  }

LABEL_30:
  *&v31[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = *(v39 + 16);
  sub_100602764();
  if (v37)
  {
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = swift_allocObject();
    v54[2] = v31;
    v54[3] = v53;
    v54[4] = v36;
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v56[2] = v31;
    v56[3] = v55;
    v56[4] = v36;
    *&v75[0] = v30;
    type metadata accessor for EditorialSearchResultContentView();
    sub_100287AD4(&qword_10092FB68, v57, type metadata accessor for EditorialSearchResultContentView);
    v58 = v31;
    swift_retain_n();
    v59 = v58;

    v60 = v30;
    sub_1007544E4();
    sub_100747444();

    sub_10000C8CC(&v74, &unk_1009276E0);
  }

  else
  {

    v76 = 0;
    memset(v75, 0, sizeof(v75));
  }

  return sub_10000C8CC(v75, &unk_1009276E0);
}

id sub_10028627C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002863C0(void *a1)
{
  sub_100287314();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 addSubview:Strong];
  }

  [v1 setNeedsLayout];
}

uint64_t (*sub_10028644C(uint64_t **a1))()
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
  v2[4] = sub_1002819AC(v2);
  return sub_1000181A8;
}

uint64_t sub_1002864C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100286514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100286580(uint64_t *a1))()
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

uint64_t sub_100286740(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_100287AD4(&qword_10092FB58, a2, type metadata accessor for EditorialSearchResultContentView);
  result = sub_100287AD4(&qword_10092FB60, v3, type metadata accessor for EditorialSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002867C4()
{
  v0 = sub_100754724();
  v40 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100750B04();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750534();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100747C14();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10074F704();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v46 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007493C4();
  sub_100287AD4(&qword_100936A50, 255, &type metadata accessor for EditorialSearchResult);
  result = sub_1007468B4();
  v45 = v47[0];
  if (v47[0])
  {
    sub_100746884();
    if (qword_100920C20 != -1)
    {
      swift_once();
    }

    v36 = v0;

    sub_10074F6A4();
    v35[2] = sub_100749334();
    v42 = v13;
    v35[0] = sub_100749394();
    v15 = v14;
    v35[1] = sub_1007493A4();
    v43 = v16;
    v17 = sub_10007DC04();
    sub_10074F674();
    sub_100753BA4();
    if (qword_100920748 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v6, qword_10097EC50);
    if (qword_100920760 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v3, qword_10097EC98);
    v41 = v15;
    if (v15)
    {
      v18 = sub_10074F3F4();
      v48 = v18;
      v49 = sub_100287AD4(&qword_10092AC70, 255, &type metadata accessor for Feature);
      v19 = sub_10000D134(v47);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
      sub_10074FC74();
      sub_10000C620(v47);
      sub_10074CCB4();
      sub_100750584();
    }

    v20 = v43;
    v21 = v37;
    if (qword_100920750 != -1)
    {
      swift_once();
    }

    v22 = sub_10000D0FC(v6, qword_10097EC68);
    (*(v7 + 16))(v44, v22, v6);
    if (qword_100920768 != -1)
    {
      swift_once();
    }

    v23 = sub_10000D0FC(v3, qword_10097ECB0);
    (*(v21 + 16))(v5, v23, v3);
    if (v20)
    {
      v24 = sub_10074F3F4();
      v48 = v24;
      v49 = sub_100287AD4(&qword_10092AC70, 255, &type metadata accessor for Feature);
      v25 = sub_10000D134(v47);
      (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
      sub_10074FC74();
      sub_10000C620(v47);
      v26 = v44;
      sub_10074CCB4();
      sub_100750584();
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v26, v6);
    }

    else
    {
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v44, v6);
    }

    if (qword_100920740 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v6, qword_10097EC38);
    v27 = v42;
    if (qword_100920758 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v3, qword_10097EC80);
    if (v27)
    {
      v28 = sub_10074F3F4();
      v48 = v28;
      v49 = sub_100287AD4(&qword_10092AC70, 255, &type metadata accessor for Feature);
      v29 = sub_10000D134(v47);
      (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
      sub_10074FC74();
      sub_10000C620(v47);
      sub_10074CCB4();
      sub_100750584();
    }

    v30 = [v17 traitCollection];
    sub_1007502D4();
    sub_100016C60(0, &qword_100923AB0);
    v31 = sub_100753C14();
    sub_100750AD4();
    sub_100753C24();

    v32 = *(v40 + 8);
    v33 = v36;
    v32(v2, v36);
    if (qword_100921708 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v3, qword_100982098);
    sub_1007502D4();
    sub_100750564();
    v32(v2, v33);
    if (qword_100920728 != -1)
    {
      swift_once();
    }

    v34 = sub_1007504F4();
    sub_10000D0FC(v34, qword_10097EC10);
    sub_1007504B4();
    sub_1007504C4();
    swift_unknownObjectRelease();

    return (*(v38 + 8))(v46, v39);
  }

  return result;
}

void sub_100287314()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100287AD4(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_100016C60(0, &qword_100922300);
      v4 = v0;
      v5 = sub_100753FC4();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }
}

id sub_10028744C(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView];
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
    v7 = v6;
    [v7 setClipsToBounds:1];
    if (qword_100920738 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_10097EC30];

    [v1 addSubview:v7];
    v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconArtworkView];
    if (v8)
    {
      v9 = v8;
      [v1 addSubview:v9];
    }
  }

  return [v1 setNeedsLayout];
}

id sub_100287578(void *a1)
{
  v2 = v1;
  v4 = sub_100743584();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconArtworkView];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v2[v9];
  }

  else
  {
    v11 = 0;
  }

  *&v2[v9] = a1;
  v12 = a1;

  if (a1)
  {
    sub_100746ED4();
    (*(v5 + 104))(v8, enum case for CornerStyle.arc(_:), v4);
    v13 = sub_100746EC4();
    sub_10028744C(v13);

    v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView];
    if (v14)
    {
      v15 = v14;
      [v15 addSubview:v12];
    }
  }

  else
  {
    v16 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView;
    v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView];
    if (v17)
    {
      [v17 removeFromSuperview];
      v18 = *&v2[v16];
    }

    else
    {
      v18 = 0;
    }

    *&v2[v16] = 0;

    [v2 setNeedsLayout];
  }

  return [v2 setNeedsLayout];
}

id sub_100287740(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid];
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
    v6[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_showBorder] = 1;
    [*&v6[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_imageBorderView] setHidden:0];
    v7 = v6;
    [v7 _setCornerRadius:20.0];
    [v7 setNeedsLayout];
    if (qword_100920730 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_10097EC28];

    [v1 addSubview:v7];
  }

  return [v1 setNeedsLayout];
}

void sub_10028787C()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_showEditorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100287940()
{
  sub_100747474();
  sub_100752754();
  if (v6[0])
  {
    type metadata accessor for EditorialSearchResultContentView();
    sub_100287AD4(&qword_10092FB68, v1, type metadata accessor for EditorialSearchResultContentView);

    v2 = v0;
    sub_1007544E4();
    sub_100747464();

    sub_100016994(v6);
  }

  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid];
  if (v3)
  {
    v4 = v3;
    sub_100496C30();
  }
}

uint64_t sub_100287A48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100287A90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100287AD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100287B1C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100287B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009233B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100287BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009233B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100287CC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotGalleryCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotGalleryCollectionViewCell()
{
  result = qword_10092FBA8;
  if (!qword_10092FBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100287D8C(double a1, double a2, double a3, double a4)
{
  v9 = sub_100752AC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_itemLayoutContext;
  v14 = sub_1007469A4();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_reviewsView;
  type metadata accessor for ProductReviewView();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = type metadata accessor for ProductReviewCollectionViewCell();
  v26.receiver = v4;
  v26.super_class = v16;
  v17 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v18 = objc_allocWithZone(UIView);
  v19 = v17;
  v20 = [v18 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = [v20 layer];
  [v21 setCornerRadius:20.0];

  [v19 setBackgroundView:v20];
  v22 = [v19 contentView];

  [v22 addSubview:*&v19[OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_reviewsView]];
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  sub_100752A34();
  sub_10000C8CC(v24, &unk_100923520);
  sub_10000C8CC(v25, &unk_100923520);
  sub_100753C74();

  (*(v10 + 8))(v12, v9);
  return v19;
}

uint64_t sub_100288140()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_reviewsView];
  v2 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler);
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3);
  v4 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapHandler);
  v5 = *v4;
  *v4 = 0;
  v4[1] = 0;
  sub_1000164A8(v5);
  v6 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v6);
  v7 = *v4;
  *v4 = 0;
  v4[1] = 0;
  return sub_1000164A8(v7);
}

id sub_100288224()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_reviewsView];
  [v0 bounds];
  return [v4 setFrame:?];
}

uint64_t sub_10028836C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v7 = a1;
  }

  v8 = *(*&a1[OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_reviewsView] + *a4);
  if (v8)
  {

    v8(v9);
    sub_1000164A8(v8);
  }

  return sub_10000C8CC(v11, &unk_100923520);
}

id sub_10028852C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductReviewCollectionViewCell()
{
  result = qword_10092FBE0;
  if (!qword_10092FBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100288614()
{
  v1 = [v0 contentView];

  return v1;
}

void sub_10028864C()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007428D4();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform])
  {

    sub_1007444B4();
    if ((*(v6 + 88))(v9, v5) == enum case for AppPlatform.watch(_:))
    {
      v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v11 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView;
      v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v1[v11];
      }

      else
      {
        v13 = 0;
      }

      *&v1[v11] = v10;
      v20 = v10;

      sub_100288900();
    }

    else
    {
      v17 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView;
      v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView];
      if (v18)
      {
        [v18 removeFromSuperview];
        v19 = *&v1[v17];
      }

      else
      {
        v19 = 0;
      }

      *&v1[v17] = 0;

      sub_100288900();
      (*(v6 + 8))(v9, v5);
    }

    sub_100743864();

    sub_1002898DC(v21, v4);

    sub_100288B54(v4);
    [v1 setNeedsLayout];
  }

  else
  {
    v14 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView;
    v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView];
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *&v1[v14];
    }

    else
    {
      v16 = 0;
    }

    *&v1[v14] = 0;

    sub_100288900();
  }
}

void sub_100288900()
{
  v1 = v0;
  v2 = sub_1007428D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView];
  if (v6)
  {
    if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform])
    {
      swift_retain_n();
      v7 = v6;
      sub_1007444B4();
      if ((*(v3 + 88))(v5, v2) == enum case for AppPlatform.watch(_:))
      {
        if (qword_100920780 != -1)
        {
          swift_once();
        }

        v8 = qword_10092FC40;
      }

      else
      {
        if (qword_100920788 != -1)
        {
          swift_once();
        }

        v8 = qword_10092FC48;

        (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
      v9 = qword_100920788;
      v10 = v6;
      if (v9 != -1)
      {
        swift_once();
      }

      v8 = qword_10092FC48;
    }

    [v6 setBackgroundColor:v8];

    [v1 insertSubview:v6 belowSubview:*&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView]];
  }
}

uint64_t sub_100288B54(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  sub_1000243DC(a1, v4);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
  sub_100746E74();

  v7 = *(v4 + 48);
  v8 = *&v2[v5];
  v9 = v7;
  sub_100746E64();

  [v2 setNeedsLayout];
  return sub_100024440(a1);
}

char *sub_100288C24(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView] = 0;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration;
  if (qword_100920778 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for ScreenshotDisplayConfiguration();
  v11 = sub_10000D0FC(v10, qword_10097ECF8);
  sub_100289598(v11, &v4[v9]);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for BorderedScreenshotView();
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView]];

  return v16;
}

void sub_100288E80()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v8 - 8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for BorderedScreenshotView();
  v40.receiver = v0;
  v40.super_class = v16;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v17 = &v0[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  sub_1007477B4();
  CGRectGetWidth(v41);
  sub_1007477B4();
  CGRectGetHeight(v42);
  sub_1007477B4();
  CGRectGetMidX(v43);
  sub_1007477B4();
  CGRectGetMidY(v44);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
  sub_100743324();

  sub_100289598(v17, v15);
  sub_100024440(v15);
  v20 = *&v1[v18];
  sub_100289598(v17, v12);
  LODWORD(v18) = v12[16];
  v21 = v20;
  sub_100024440(v12);
  v22 = &enum case for CornerStyle.arc(_:);
  if (!v18)
  {
    v22 = &enum case for CornerStyle.continuous(_:);
  }

  v23 = v39;
  (*(v3 + 104))(v39, *v22, v2);
  (*(v3 + 32))(v7, v23, v2);
  sub_1007433B4();

  (*(v3 + 8))(v7, v2);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView;
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView];
  if (v25)
  {
    v26 = v25;
    sub_1007477B4();
    [v26 setFrame:?];
  }

  v27 = *&v1[v24];
  if (*(v17 + 16))
  {
    if (v27)
    {
      [*&v1[v24] _setContinuousCornerRadius:10.0];
    }
  }

  else if (v27)
  {
    v28 = v38;
    sub_100289598(v17, v38);
    v29 = v27;
    sub_1007477B4();
    if (*(v28 + 16))
    {
      v32 = *v28;
      sub_100024440(v28);
    }

    else
    {
      v33 = v30;
      v34 = v31;
      v35 = *(v28 + 8);
      sub_100024440(v28);
      if (v34 >= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v34;
      }

      v32 = v36 * v35;
    }

    [v29 _setContinuousCornerRadius:v32];
  }
}

id sub_1002893F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BorderedScreenshotView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BorderedScreenshotView()
{
  result = qword_10092FC30;
  if (!qword_10092FC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002894EC()
{
  result = type metadata accessor for ScreenshotDisplayConfiguration();
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

uint64_t sub_100289598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100289610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1007504F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002896D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1007504F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ScreenshotDisplayConfiguration()
{
  result = qword_10092FCC8;
  if (!qword_10092FCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002897C0()
{
  sub_10028988C();
  if (v0 <= 0x3F)
  {
    sub_10000D198();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        sub_1007504F4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10028988C()
{
  if (!qword_10092FCD8)
  {
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10092FCD8);
    }
  }
}

__n128 sub_1002898DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1007428D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  if (a1)
  {
    v46 = v13;

    sub_1007444B4();

    v50 = v5;
    v16 = *(v5 + 88);
    v17 = v16(v15, v4);
    v18 = enum case for AppPlatform.watch(_:);
    v19 = 0.0;
    v20 = 0.0;
    if (v17 != enum case for AppPlatform.watch(_:))
    {
      (*(v50 + 8))(v15, v4);
      v20 = 5.0;
    }

    v49 = sub_100744504();
    v47 = v21;
    v48 = sub_1007444F4();
    v52.n128_u32[0] = v22;

    sub_1007444B4();

    if (v16(v11, v4) != v18)
    {
      (*(v50 + 8))(v11, v4);
      v19 = 1.0;
    }

    sub_1007444B4();
    if (v16(v8, v4) == v18)
    {
      if (qword_100920780 != -1)
      {
        swift_once();
      }

      v23 = qword_10092FC40;
    }

    else
    {
      if (qword_100920788 != -1)
      {
        swift_once();
      }

      v23 = qword_10092FC48;

      (*(v50 + 8))(v8, v4);
    }

    v30 = v52.n128_u8[0];

    v31 = v46;
    sub_1007444B4();
    if (v16(v31, v4) == v18)
    {
      v32 = sub_1007444F4();
      v25 = v23;
      if (v33)
      {
        v28 = v30;
        if (qword_100920770 != -1)
        {
          swift_once();
        }

        v34 = sub_1007504F4();
        sub_10000D0FC(v34, qword_10097ECE0);
        sub_100750494();
        v36 = v35;

        __asm { FMOV            V1.2D, #15.0 }

        *_Q1.i64 = v36 * 15.0;
        v51 = _Q1;
        v52 = _Q1;
        v26 = v48;
        v27 = v49;
        goto LABEL_24;
      }

      v43 = v32;

      v51 = vdupq_n_s64(v43);
      v52 = v51;
      v26 = v48;
      v27 = v49;
    }

    else
    {
      v42 = *&UIEdgeInsetsZero.top;
      v51 = *&UIEdgeInsetsZero.bottom;
      v52 = v42;

      (*(v50 + 8))(v31, v4);
      v26 = v48;
      v27 = v49;
      v25 = v23;
    }

    v28 = v30;
LABEL_24:
    v29 = v47;
    goto LABEL_25;
  }

  if (qword_100920788 != -1)
  {
    swift_once();
  }

  v24 = *&UIEdgeInsetsZero.top;
  v51 = *&UIEdgeInsetsZero.bottom;
  v52 = v24;
  v25 = qword_10092FC48;
  v26 = 0;
  v27 = 0;
  v20 = 5.0;
  v28 = 1;
  v19 = 1.0;
  v29 = 1;
LABEL_25:
  type metadata accessor for ScreenshotDisplayConfiguration();
  sub_100750504();
  *a2 = v20;
  *(a2 + 8) = v27;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = v28 & 1;
  *(a2 + 40) = v19;
  *(a2 + 48) = v25;
  result = v52;
  *(a2 + 72) = v51;
  *(a2 + 56) = result;
  return result;
}

uint64_t sub_100289DB4()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_10097ECE0);
  sub_10000D0FC(v0, qword_10097ECE0);
  return sub_100750504();
}

uint64_t sub_100289E08()
{
  v0 = sub_1007504F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ScreenshotDisplayConfiguration();
  sub_100039C50(v4, qword_10097ECF8);
  v5 = sub_10000D0FC(v4, qword_10097ECF8);
  if (qword_100920788 != -1)
  {
    swift_once();
  }

  v6 = qword_100920790;
  v7 = qword_10092FC48;
  if (v6 != -1)
  {
    swift_once();
  }

  v10 = unk_10092FC60;
  v11 = xmmword_10092FC50;
  sub_100750504();
  *v5 = 0x4014000000000000;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  *(v5 + 40) = 0x3FF0000000000000;
  *(v5 + 48) = v7;
  v8 = v11;
  *(v5 + 72) = v10;
  *(v5 + 56) = v8;
  return (*(v1 + 32))(v5 + *(v4 + 40), v3, v0);
}

id sub_100289FC4()
{
  result = [objc_opt_self() blackColor];
  qword_10092FC40 = result;
  return result;
}

uint64_t sub_10028A000()
{
  sub_10000D198();
  result = sub_100753DC4();
  qword_10092FC48 = result;
  return result;
}

__n128 sub_10028A034()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_10092FC50 = *&UIEdgeInsetsZero.top;
  unk_10092FC60 = v1;
  return result;
}

uint64_t sub_10028A050()
{
  v0 = sub_10000C518(&qword_10092DF08);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_100752854();
  sub_100752844();
  if (qword_1009207A0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_10092FD38);
  (*(v1 + 16))(v3, v4, v0);
  v8 = 1;
  v9 = 0;
  sub_100752544();

  if (qword_100920798 != -1)
  {
    swift_once();
  }

  v5 = sub_100752E44();
  sub_10000D0FC(v5, qword_10092FD20);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  sub_100752844();
  sub_100752534();

  v6 = v8;
  if (v9)
  {
    v6 = 0;
  }

  v10 = &type metadata for Int;
  v8 = v6;
  sub_100752424();
  sub_1000277BC(&v8);
  sub_100752CE4();
}

uint64_t sub_10028A33C()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_10092FD20);
  sub_10000D0FC(v4, qword_10092FD20);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

uint64_t sub_10028A490()
{
  v0 = sub_10000C518(&qword_10092DF08);
  sub_100039C50(v0, qword_10092FD38);
  sub_10000D0FC(v0, qword_10092FD38);
  return sub_100752664();
}

uint64_t sub_10028A508()
{
  if (sub_10074C474())
  {
    if (qword_100920798 == -1)
    {
LABEL_3:
      v0 = sub_100752E44();
      sub_10000D0FC(v0, qword_10092FD20);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752CE4();
LABEL_21:

LABEL_22:
      v4 = 0;
      return v4 & 1;
    }

LABEL_37:
    swift_once();
    goto LABEL_3;
  }

  sub_100752854();
  sub_100752844();
  if (qword_1009207A0 != -1)
  {
    swift_once();
  }

  v1 = sub_10000C518(&qword_10092DF08);
  sub_10000D0FC(v1, qword_10092FD38);
  sub_100752534();

  if (v11 != 1 && v10 > 0 || (sub_1007449B4() & 1) == 0)
  {
    if (qword_100920798 != -1)
    {
      swift_once();
    }

    v5 = sub_100752E44();
    sub_10000D0FC(v5, qword_10092FD20);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    sub_100752844();
    sub_100752534();

    v6 = v10;
    if (v11)
    {
      v6 = 0;
    }

    v12 = &type metadata for Int;
    v10 = v6;
    sub_100752424();
    sub_1000277BC(&v10);
    sub_100752CE4();
    goto LABEL_21;
  }

  if (([objc_opt_self() locationServicesEnabled] & 1) == 0)
  {
    if (qword_100920798 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_37;
  }

  v2 = [objc_allocWithZone(CLLocationManager) init];
  v3 = [v2 authorizationStatus];

  v4 = 0;
  if (v3 > 2)
  {
    if ((v3 - 3) < 2)
    {
      if (qword_100920798 != -1)
      {
        swift_once();
      }

      v8 = sub_100752E44();
      sub_10000D0FC(v8, qword_10092FD20);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A6580;
      sub_1007523A4();
      v12 = &type metadata for Bool;
      LOBYTE(v10) = sub_100744944() & 1;
      sub_100752424();
      sub_1000277BC(&v10);
      sub_100752CE4();

      v4 = sub_100744944();
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (qword_100920798 == -1)
        {
LABEL_31:
          v9 = sub_100752E44();
          sub_10000D0FC(v9, qword_10092FD20);
          sub_10000C518(&qword_100923930);
          sub_100752454();
          *(swift_allocObject() + 16) = xmmword_1007A5A00;
          sub_1007523A4();
          sub_100752CE4();

          sub_10028A050();
          goto LABEL_22;
        }

LABEL_36:
        swift_once();
        goto LABEL_31;
      case 1:
        if (qword_100920798 == -1)
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      case 2:
        if (qword_100920798 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
    }
  }

  return v4 & 1;
}

Swift::Int sub_10028AEAC()
{
  sub_100754834();
  sub_100752FB4();
  return sub_100754884();
}

uint64_t sub_10028AF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F724();

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10028AF50()
{
  sub_100754834();
  sub_100752FB4();
  return sub_100754884();
}

uint64_t sub_10028AFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000F724();

  return static OnboardingStep.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10028AFF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10028B040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10028B0A0()
{
  result = qword_10092FD50;
  if (!qword_10092FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FD50);
  }

  return result;
}

unint64_t sub_10028B0F8()
{
  result = qword_10092FD58;
  if (!qword_10092FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FD58);
  }

  return result;
}

uint64_t sub_10028B15C(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_100016C60(0, &qword_10092B0C0);
  v4 = v3;
  sub_10000C518(&qword_100923948);
  if (swift_dynamicCast())
  {
    v5 = *(&v10 + 1);
    v6 = v11;
    sub_10000C888(&v9, *(&v10 + 1));
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_10000C620(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_10000C8CC(&v9, &unk_100923950);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10028B260(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_100016C60(0, &qword_10092B0C0);
  v4 = v3;
  sub_10000C518(&qword_100923938);
  if (swift_dynamicCast())
  {
    v5 = *(&v10 + 1);
    v6 = v11;
    sub_10000C888(&v9, *(&v10 + 1));
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_10000C620(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_10000C8CC(&v9, &qword_100923940);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10028B36C(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_10074A304();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v29 = &v26 - v6;
  v7 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for FlowDestination();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;

  sub_10074EC44();
  sub_1001362FC(a1, v32, v12);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v20(v12, 1, v13) != 1)
    {
      sub_10000C8CC(v12, &unk_100925750);
    }
  }

  else
  {
    sub_100068B98(v12, v19);
  }

  sub_100068C18(v19, v16);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_100068C7C(v19, type metadata accessor for FlowDestination);
    v21 = 1;
  }

  else
  {
    sub_100742C54();
    sub_100742C44();
    sub_1006C1C84(v29);
    v23 = v27;
    v22 = v28;
    (*(v28 + 104))(v27, enum case for FlowPresentationContext.select(_:), v3);
    sub_10028D0B4();
    sub_100753274();
    sub_100753274();
    if (v32[0] == v30 && v32[1] == v31)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_100754754();
    }

    v24 = *(v22 + 8);
    v24(v23, v3);
    v24(v29, v3);
    sub_100068C7C(v9, type metadata accessor for FlowPresentationHints);
    sub_100068C7C(v19, type metadata accessor for FlowDestination);
  }

  sub_100068C7C(v16, type metadata accessor for FlowDestination);
  return v21 & 1;
}

void sub_10028B7B8(void *a1)
{
  v2 = sub_10000C518(&qword_10093D4E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10000C518(&qword_10092FD68);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_100744574();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v26 - v14;
  v16 = [a1 tabBar];
  v17 = [v16 items];

  if (!v17)
  {
    return;
  }

  v26 = v4;
  sub_100016C60(0, &unk_1009403B0);
  v18 = sub_1007532A4();

  if ((sub_1007532D4() & 1) == 0 || (v19 = [a1 selectedIndex], v19 == sub_100740E44()))
  {

    return;
  }

  v20 = [a1 selectedIndex];
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = v9;
      v22 = *(v18 + 8 * v20 + 32);
      goto LABEL_11;
    }

    __break(1u);
    return;
  }

  v22 = sub_100754574();
  v21 = v9;
LABEL_11:

  [v22 tag];

  sub_100744544();
  if ((*(v21 + 48))(v7, 1, v8) == 1)
  {
    sub_10000C8CC(v7, &qword_10092FD68);
  }

  else
  {
    (*(v21 + 32))(v15, v7, v8);
    sub_100745584();
    sub_100745564();
    sub_100744524();
    sub_1007454D4();

    v23 = [objc_opt_self() standardUserDefaults];
    (*(v21 + 16))(v11, v15, v8);
    v24 = v26;
    sub_100742984();
    sub_1006FE868(v24);

    sub_100742B14();
    sub_100752754();
    v25 = v27;
    if (v27)
    {
      sub_100742AF4();
    }

    (*(v21 + 8))(v15, v8);
  }
}

uint64_t sub_10028BBD8(uint64_t a1, void *a2, uint64_t a3)
{
  v140 = sub_10000C518(&qword_10092FD60);
  __chkstk_darwin(v140);
  v143 = &v125 - v6;
  v142 = sub_1007493D4();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v8 - 8);
  v138 = &v125 - v9;
  v10 = sub_100752614();
  __chkstk_darwin(v10 - 8);
  v127 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10092FD68);
  __chkstk_darwin(v12 - 8);
  v130 = &v125 - v13;
  v131 = sub_100744574();
  v133 = *(v131 - 8);
  __chkstk_darwin(v131);
  v126 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v150 = &v125 - v16;
  v17 = sub_100752624();
  v147 = *(v17 - 8);
  v148 = v17;
  __chkstk_darwin(v17);
  v146 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v19 - 8);
  v128 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v132 = &v125 - v22;
  v23 = sub_10074A304();
  v149 = *(v23 - 8);
  __chkstk_darwin(v23);
  v154 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v25);
  v27 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v28 - 8);
  v136 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v125 - v31;
  v153 = type metadata accessor for FlowDestination();
  v33 = *(v153 - 8);
  __chkstk_darwin(v153);
  v137 = (&v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v37 = (&v125 - v36);
  __chkstk_darwin(v38);
  v40 = &v125 - v39;
  objc_opt_self();
  v155 = swift_dynamicCastObjCClass();
  v152 = a2;
  if (v155)
  {
    v41 = a2;
  }

  else
  {
    v155 = [a2 tabBarController];
    if (!v155)
    {
      sub_10000C518(&qword_100930CA0);
      sub_10028D020();
      swift_allocError();
      return sub_100752D74();
    }
  }

  v144 = a3;
  sub_10000C518(&qword_100930CA0);
  v145 = sub_100752DE4();

  sub_10074EC44();
  sub_1001362FC(a1, v157, v32);
  v42 = *(v33 + 48);
  v43 = v153;
  v44 = v42(v32, 1, v153);
  v135 = v33 + 48;
  v134 = v42;
  if (v44 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v45 = v42(v32, 1, v43);
    v46 = v23;
    if (v45 != 1)
    {
      sub_10000C8CC(v32, &unk_100925750);
    }
  }

  else
  {
    sub_100068B98(v32, v40);
    v46 = v23;
  }

  sub_100742C54();
  sub_100742C44();
  v47 = [v152 traitCollection];
  sub_1006C1C84(v154);

  v48 = [v155 viewControllers];
  v49 = v150;
  v151 = v46;
  if (v48)
  {
    v50 = v48;
    v51 = v27;
    sub_100016C60(0, &qword_10092B0C0);
    v52 = sub_1007532A4();

    __chkstk_darwin(v53);
    *(&v125 - 2) = v40;
    v54 = sub_100150880(sub_10028D094, (&v125 - 4), v52);

    if (v54)
    {
      v55 = v155;
      [v155 setTransientViewController:0 animated:0];
      [v55 setSelectedViewController:v54];
      v56 = v144;
      sub_10028B7B8(v55);
      v57 = v40;
      sub_100068C18(v40, v37);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v58 = v51;
        v59 = v145;
        if (*v37)
        {
          v60 = sub_10000C518(&unk_100923210);

          v61 = v132;
          sub_1007526C4();
          v62 = *(v60 - 8);
          v63 = (*(v62 + 48))(v61, 1, v60);
          v64 = v151;
          if (v63 == 1)
          {

            (*(v149 + 8))(v154, v64);
            sub_100068C7C(v58, type metadata accessor for FlowPresentationHints);
            sub_10000C8CC(v61, &unk_100923960);
LABEL_32:
            v84 = v57;
LABEL_56:
            sub_100068C7C(v84, type metadata accessor for FlowDestination);
            return v59;
          }

          sub_1003C1388(v85, 1, v56, v61);

          (*(v62 + 8))(v61, v60);
          sub_100752D54();

          (*(v149 + 8))(v154, v64);
LABEL_31:
          sub_100068C7C(v58, type metadata accessor for FlowPresentationHints);
          goto LABEL_32;
        }
      }

      else
      {
        sub_100068C7C(v37, type metadata accessor for FlowDestination);
        v58 = v51;
        v59 = v145;
      }

      v82 = v146;
      v81 = v147;
      v83 = v148;
      (*(v147 + 104))(v146, enum case for ActionOutcome.performed(_:), v148);
      sub_100752DB4();

      (*(v81 + 8))(v82, v83);
      (*(v149 + 8))(v154, v151);
      goto LABEL_31;
    }

    v27 = v51;
    v46 = v151;
  }

  v65 = [v155 viewControllers];
  v129 = v40;
  if (!v65)
  {
    goto LABEL_40;
  }

  v66 = v65;
  sub_100016C60(0, &qword_10092B0C0);
  v67 = sub_1007532A4();

  __chkstk_darwin(v68);
  *(&v125 - 2) = v40;
  v69 = sub_100150880(sub_10028D074, (&v125 - 4), v67);

  if (!v69)
  {
    goto LABEL_40;
  }

  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (!v70)
  {

    goto LABEL_40;
  }

  v71 = [v70 viewControllers];
  v72 = sub_1007532A4();

  if (v72 >> 62)
  {
    result = sub_100754664();
  }

  else
  {
    result = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = v133;
  if (!result)
  {

    goto LABEL_40;
  }

  if ((v72 & 0xC000000000000001) != 0)
  {
    v75 = sub_100754574();
LABEL_25:
    v76 = v75;

    type metadata accessor for TabPlaceholderViewController();
    if (swift_dynamicCastClass())
    {
      v77 = sub_1002D7360();
      if (v77)
      {
        v133 = v76;
        v78 = v77;
        [v77 tag];
        v79 = v130;
        sub_100744544();

        v80 = v131;
        if ((v74[6])(v79, 1, v131) != 1)
        {
          (v74)[4](v49, v79, v80);
          (v74)[2](v126, v49, v80);
          sub_10000C518(&unk_1009231A0);
          v116 = swift_allocObject();
          *(v116 + 16) = xmmword_1007A5CF0;
          *(v116 + 32) = a1;

          sub_1007525F4();
          sub_100745824();
          swift_allocObject();
          sub_1007457E4();
          v117 = sub_10000C518(&unk_100923210);
          v118 = v128;
          v119 = v144;
          sub_1007526C4();
          v120 = v74;
          v121 = *(v117 - 8);
          if ((*(v121 + 48))(v118, 1, v117) == 1)
          {

            (v120[1])(v49, v131);
            (*(v149 + 8))(v154, v46);
            sub_100068C7C(v27, type metadata accessor for FlowPresentationHints);
            sub_10000C8CC(v118, &unk_100923960);
            v84 = v129;
            v59 = v145;
            goto LABEL_56;
          }

          sub_1003C13BC(v122, 1, v119, v118);

          (*(v121 + 8))(v118, v117);
          v123 = v145;
          sub_100752D54();

          (v120[1])(v49, v131);
          v124 = v46;
          v59 = v123;
          (*(v149 + 8))(v154, v124);
          sub_100068C7C(v27, type metadata accessor for FlowPresentationHints);
          goto LABEL_55;
        }
      }

      else
      {

        v79 = v130;
        (v74[7])(v130, 1, 1, v131);
      }

      sub_10000C8CC(v79, &qword_10092FD68);
    }

    else
    {
    }

LABEL_40:
    v86 = v152;
    v87 = sub_1003787A4(v152);
    if (!v87 || (v156 = v87, sub_100016C60(0, &qword_100924658), sub_10000C518(&qword_100924660), (swift_dynamicCast() & 1) == 0))
    {
      v158 = 0;
      memset(v157, 0, sizeof(v157));
    }

    v88 = [v86 traitCollection];

    sub_10074EC44();
    v89 = v136;
    sub_1001362FC(a1, &v156, v136);
    v90 = v153;
    v91 = v134;
    if (v134(v89, 1, v153) == 1)
    {
      v92 = v137;
      swift_storeEnumTagMultiPayload();
      if (v91(v89, 1, v90) != 1)
      {
        sub_10000C8CC(v89, &unk_100925750);
      }
    }

    else
    {
      v92 = v137;
      sub_100068B98(v89, v137);
    }

    v93 = sub_100742C14();
    v95 = v94;
    v96 = v138;
    sub_100742C34();
    v97 = sub_100470520(v92, v88, v93, v95, v96, v157, v144, 1);

    sub_10000C8CC(v96, &qword_10092C1F0);
    sub_100068C7C(v92, type metadata accessor for FlowDestination);
    v98 = v139;
    sub_100742C44();
    v99 = *(v140 + 48);
    v100 = v141;
    v101 = v143;
    v102 = v142;
    (*(v141 + 32))(v143, v98, v142);
    v103 = v149;
    v104 = v151;
    (*(v149 + 16))(v101 + v99, v154, v151);
    v105 = (*(v100 + 88))(v101, v102);
    v106 = v27;
    if (v105 == enum case for FlowAnimationBehavior.infer(_:))
    {
      v107 = (*(v103 + 88))(v101 + v99, v104);
      v108 = v145;
      if (v107 != enum case for FlowPresentationContext.presentModal(_:))
      {
        goto LABEL_53;
      }
    }

    else
    {
      v108 = v145;
      if (v105 != enum case for FlowAnimationBehavior.always(_:))
      {
LABEL_53:
        v109 = v104;
        sub_10000C8CC(v101, &qword_10092FD60);
        v110 = 0;
        goto LABEL_54;
      }

      (*(v103 + 8))(v101 + v99, v104);
    }

    v109 = v104;
    (*(v100 + 8))(v101, v102);
    v110 = 1;
LABEL_54:
    v111 = v155;
    [v155 setTransientViewController:v97 animated:v110];
    v113 = v146;
    v112 = v147;
    v114 = v148;
    (*(v147 + 104))(v146, enum case for ActionOutcome.performed(_:), v148);
    sub_100752DB4();

    v115 = v113;
    v59 = v108;
    (*(v112 + 8))(v115, v114);
    (*(v103 + 8))(v154, v109);
    sub_100068C7C(v106, type metadata accessor for FlowPresentationHints);
    sub_10000C8CC(v157, &unk_100925760);
LABEL_55:
    v84 = v129;
    goto LABEL_56;
  }

  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v75 = *(v72 + 32);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

unint64_t sub_10028D020()
{
  result = qword_10092FD70;
  if (!qword_10092FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FD70);
  }

  return result;
}

unint64_t sub_10028D0B4()
{
  result = qword_100925248;
  if (!qword_100925248)
  {
    sub_10074A304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925248);
  }

  return result;
}

unint64_t sub_10028D120()
{
  result = qword_10092FD78;
  if (!qword_10092FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FD78);
  }

  return result;
}

id sub_10028D374(uint64_t isEscapingClosureAtFileLocation)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_uberView;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  if (v5)
  {
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];

    [v1 setNeedsLayout];
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1000F1DFC;
    *(v10 + 24) = v9;
    aBlock[4] = sub_100045E0C;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011B528;
    aBlock[3] = &unk_10086EAF0;
    v11 = _Block_copy(aBlock);
    v12 = v1;

    [v8 performWithoutAnimation:v11];

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    return [isEscapingClosureAtFileLocation removeFromSuperview];
  }

  return result;
}

void sub_10028D564()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v3 setFrame:{v6, v8, v10, v12}];
  }
}

char *sub_10028D688(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_uberView;
    result = swift_beginAccess();
    v6 = *&v1[v5];
    if (v6)
    {
      v7 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY];
      result = *(*(v6 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
      v8 = *&result[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY];
      *&result[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = v7;
      if (v7 != v8)
      {
        return [result setNeedsLayout];
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for UberCollectionViewCell()
{
  result = qword_10092FDA8;
  if (!qword_10092FDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028D870()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_10028D908()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_10028D958()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10028D9A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10028D9B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_100749A94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_100749A14();
  sub_10028E208(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v13 = sub_100754324();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for ProductReviewView();
  swift_getObjectType();
  sub_1004368B8(v12, v13 & 1, v13 & 1, a6);
}

id sub_10028DB18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_100749A94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_100749A14();
  sub_10028E208(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v15 = sub_100754324();
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_100435ADC(v14, v16 | v15 & 1, 0, a6, a3);
  return [v6 setNeedsLayout];
}

uint64_t sub_10028DD44(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v3 = sub_100754724();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074E984();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_10092C380);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v29 - v12;
  v14 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v14 - 8);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v29 - v19;
  (*(v7 + 104))(v29 - v19, enum case for Shelf.ContentType.reviews(_:), v6, v18);
  (*(v7 + 56))(v20, 0, 1, v6);
  v21 = *(v11 + 56);
  sub_100028D40(a1, v13);
  sub_100028D40(v20, &v13[v21]);
  v22 = *(v7 + 48);
  if (v22(v13, 1, v6) != 1)
  {
    sub_100028D40(v13, v16);
    if (v22(&v13[v21], 1, v6) != 1)
    {
      (*(v7 + 32))(v9, &v13[v21], v6);
      sub_10028E208(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
      v24 = sub_100753014();
      v25 = *(v7 + 8);
      v25(v9, v6);
      sub_10000C8CC(v20, &unk_100933370);
      v25(v16, v6);
      sub_10000C8CC(v13, &unk_100933370);
      if (v24)
      {
        goto LABEL_9;
      }

      return 0;
    }

    sub_10000C8CC(v20, &unk_100933370);
    (*(v7 + 8))(v16, v6);
LABEL_6:
    sub_10000C8CC(v13, &qword_10092C380);
    return 0;
  }

  sub_10000C8CC(v20, &unk_100933370);
  if (v22(&v13[v21], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_10000C8CC(v13, &unk_100933370);
LABEL_9:
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v26 = sub_100750B04();
  sub_10000D0FC(v26, qword_100982098);
  sub_1007502D4();
  sub_100750564();
  v28 = v27;
  (*(v30 + 8))(v5, v31);
  return v28;
}

uint64_t sub_10028E208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10028E25C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

    return v3 ^ a2[1] ^ 1u;
  }

  result = 0;
  if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    return v3 ^ a2[1] ^ 1u;
  }

  return result;
}

uint64_t sub_10028E2A4(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_100749A94();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = sub_10000C518(&qword_100925340);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000C518(&qword_100927FD8);
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = sub_100744604();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100744624();
  sub_10028FAA8(&qword_100927FE0, &type metadata accessor for ProductReview);
  result = sub_1007468B4();
  if (v46)
  {
    sub_100744614();
    v20 = (*(v16 + 88))(v18, v15);
    if (v20 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
    {

      return (*(v16 + 8))(v18, v15);
    }

    else
    {
      if (v20 == enum case for ProductReview.ReviewSource.user(_:))
      {
        (*(v16 + 96))(v18, v15);
        v41 = *v18;
        v21 = v45;
        v22 = sub_1000300D4();
        sub_100746964();
        sub_100752EB4();
        swift_getKeyPath();
        sub_100746914();

        v23 = v46;
        v24 = [v46 horizontalSizeClass];

        v25 = (v24 == 1) & !sub_10028F878();
        v26 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shouldHandleTextSelection;
        v22[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shouldHandleTextSelection] = v25;
        [*&v22[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapGestureRecognizer] setEnabled:?];
        [*&v22[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapGestureRecognizer] setEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_bodyLabel] setUserInteractionEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseBodyLabel] setUserInteractionEnabled:v22[v26]];
        sub_1000E9564();
        v27 = v44;
        sub_100752E84();
        v28 = sub_10028F604(a1, v46);
        swift_getKeyPath();
        sub_100752E94();

        v29 = v46;
        v30 = sub_10007DC04();
        if (v28)
        {
          v31 = 256;
        }

        else
        {
          v31 = 0;
        }

        sub_100435ADC(v41, v31 | v28 & 1, v29, v30, v42);
        swift_unknownObjectRelease();
        [v22 setHidden:0];

        (*(v43 + 8))(v14, v27);
      }

      else
      {
        if (v20 == enum case for ProductReview.ReviewSource.reviewSummary(_:))
        {
          (*(v16 + 96))(v18, v15);
          v42 = *v18;
          v32 = sub_1000300F4();
          sub_100746964();
          sub_100752EB4();
          swift_getKeyPath();
          sub_1000E9564();
          v33 = v44;
          sub_100752E94();

          v34 = v46;
          if (v46 == 2)
          {
            sub_1007468A4();
            v35 = v39;
            sub_100749A14();
            sub_10028FAA8(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
            v36 = v41;
            v37 = sub_100754324();
            v38 = *(v40 + 8);
            v38(v35, v36);
            v38(v7, v36);
            v34 = v37 ^ 1;
          }

          sub_100690144(v42, v34 & 1, 0, 0);
          [v32 setHidden:0];

          (*(v43 + 8))(v11, v33);
        }

        else
        {
          (*(v16 + 8))(v18, v15);
        }

        v21 = v45;
      }

      [v21 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_10028E990@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10074EAB4();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v8 - 8);
  v42 = sub_10000C518(&unk_100929040);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = &v36 - v11;
  v12 = sub_10000C518(&qword_10092FE08);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  sub_100744624();
  sub_10028FAA8(&qword_100927FE0, &type metadata accessor for ProductReview);
  sub_1007468B4();
  if (!v43)
  {
    v21 = sub_100744604();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    sub_10000C8CC(v17, &qword_10092FE08);
    goto LABEL_15;
  }

  v40 = a1;

  sub_100744614();

  v18 = sub_100744604();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_10028FA14(v17, v14);
  v20 = (*(v19 + 88))(v14, v18);
  if (v20 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    (*(v19 + 8))(v14, v18);
LABEL_15:
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007A6580;
    sub_10074DCA4();
    sub_10074DC94();
    v43 = v32;
    sub_10028FAA8(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10000C518(&qword_10092A078);
    sub_100169778();
    sub_1007543A4();
  }

  if (v20 != enum case for ProductReview.ReviewSource.user(_:))
  {
    v27 = enum case for ProductReview.ReviewSource.reviewSummary(_:);
    v28 = v20;
    (*(v19 + 8))(v14, v18);
    if (v28 == v27)
    {
      swift_getKeyPath();
      sub_100746914();

      v29 = v43;
      v30 = sub_1007537D4();

      if (v30)
      {
        v31 = sub_1000300F4();
        if (([*(*&v31[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton) isHidden] & 1) == 0)
        {
          sub_1007468F4();
          v33 = v37;
          sub_100752994();
          sub_1000E9564();
          v34 = v42;
          sub_100752954();
          sub_10000C518(&qword_10092A068);
          sub_10074DCB4();
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_1007A5620;
          sub_10074DCA4();
          sub_10074DC94();
          sub_10074DC84();
          v43 = v35;
          sub_10028FAA8(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
          sub_10000C518(&qword_10092A078);
          sub_100169778();
          sub_1007543A4();

          return (*(v39 + 8))(v33, v34);
        }
      }
    }

    goto LABEL_15;
  }

  (*(v19 + 8))(v14, v18);
  sub_1007468F4();
  sub_100752994();
  swift_getKeyPath();
  sub_1000E9564();
  sub_100752974();

  v22 = v43;
  if (!sub_10028F878())
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074EA54();
    sub_10028FAA8(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
    v23 = sub_100754324();
    v24 = *(v38 + 8);
    v24(v4, v2);
    v24(v7, v2);
    if (v23)
    {
      if ((v22 == 2) | v22 & 1)
      {
        sub_100752954();
      }
    }
  }

  sub_10000C518(&qword_10092A068);
  sub_10074DCB4();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007A5620;
  sub_10074DCA4();
  sub_10074DC94();
  sub_10074DC84();
  v43 = v25;
  sub_10028FAA8(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10000C518(&qword_10092A078);
  sub_100169778();
  sub_1007543A4();

  return (*(v39 + 8))(v41, v42);
}

uint64_t sub_10028F3D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_10028F434(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10028F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_10028F5AC(uint64_t a1)
{
  result = sub_10028FAA8(&qword_10092FE00, type metadata accessor for GenericProductReviewCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028F604(uint64_t a1, int a2)
{
  v21 = a2;
  v2 = sub_10074F704();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100749A94();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  sub_1007468A4();
  sub_100749A14();
  sub_10028FAA8(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v13 = sub_100754324();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F594();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    if (v17 > 1.0 || v21 == 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = v21 ^ 1;
    }
  }

  return v15 & 1;
}

BOOL sub_10028F878()
{
  v0 = sub_10000C518(&unk_100930810);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  sub_100746944();
  sub_1007525C4();
  (*(v1 + 8))(v3, v0);
  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_100927558);
  if (swift_dynamicCast())
  {
    sub_100012160(v7, v9);
    sub_10000C888(v9, v9[3]);
    v4 = sub_100744C74();
    v5 = v4 != 0;
    if (v4)
    {
    }

    sub_10000C620(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_10000C8CC(v7, &qword_100927560);
    return 0;
  }

  return v5;
}

uint64_t sub_10028FA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092FE08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028FAA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s5StateVwet_0(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5StateVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10028FC64()
{
  result = qword_10092FE10;
  if (!qword_10092FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FE10);
  }

  return result;
}

unint64_t sub_10028FCBC()
{
  result = qword_10092FE18;
  if (!qword_10092FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FE18);
  }

  return result;
}

uint64_t sub_10028FD28@<X0>(objc_class *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v41 = a2;
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007504F4();
  __chkstk_darwin(v6 - 8);
  v40 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750504();
  if (qword_100921470 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100981A88);
  v10 = *(v8 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v36 = v9;
  v11(v5);
  v13 = enum case for FontSource.useCase(_:);
  v38 = v3[13];
  v38(v5);
  v45 = sub_100750B04();
  v58[3] = v45;
  v58[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v58);
  v56 = v2;
  v57 = &protocol witness table for FontSource;
  v14 = sub_10000D134(&v55);
  v37 = v3[2];
  v43 = v3 + 2;
  v37(v14, v5, v2);
  sub_100750B14();
  v15 = v3[1];
  v44 = v3 + 1;
  v34 = v15;
  v15(v5, v2);
  if (qword_100921478 != -1)
  {
    swift_once();
  }

  v35 = sub_10000D0FC(v8, qword_100981AA0);
  (v11)(v5, v35, v8);
  v42 = v13;
  v16 = v13;
  v17 = v38;
  (v38)(v5, v16, v2);
  v56 = v45;
  v33 = v3 + 13;
  v31 = v8;
  v57 = &protocol witness table for StaticDimension;
  sub_10000D134(&v55);
  v30 = v12;
  v32 = v11;
  v53 = v2;
  v54 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v52);
  v19 = v37;
  v37(v18, v5, v2);
  sub_100750B14();
  v20 = v34;
  v34(v5, v2);
  (v11)(v5, v36, v8);
  (v17)(v5, v42, v2);
  v53 = v45;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v21 = v20;
  v22 = v39;
  v23.super.isa = v39;
  isa = sub_1007502F4(v23).super.isa;
  [(objc_class *)isa lineHeight];
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v25 = sub_10000D134(v49);
  v19(v25, v5, v2);
  sub_100750B14();

  v21(v5, v2);
  v32(v5, v35, v31);
  (v17)(v5, v42, v2);
  v50 = v45;
  v51 = &protocol witness table for StaticDimension;
  sub_10000D134(v49);
  v26.super.isa = v22;
  v27 = sub_1007502F4(v26).super.isa;
  [(objc_class *)v27 lineHeight];
  v47 = v2;
  v48 = &protocol witness table for FontSource;
  v28 = sub_10000D134(v46);
  v19(v28, v5, v2);
  sub_100750B14();

  v21(v5, v2);
  v47 = sub_1007507D4();
  v48 = &protocol witness table for ZeroDimension;
  sub_10000D134(v46);
  sub_1007507C4();
  return sub_100748E74();
}

char *sub_100290320(double a1, double a2, double a3, double a4)
{
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v16 = sub_1007469A4();
  v17 = *(*(v16 - 8) + 56);
  v53 = v4;
  v17(&v4[v15], 1, 1, v16);
  v51 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_100921470 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_100981A88);
  v20 = *(v18 - 8);
  v50 = *(v20 + 16);
  v50(v14, v19, v18);
  v49 = *(v20 + 56);
  v49(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v22 = *(v10 + 104);
  v22(v52, enum case for DirectionalTextAlignment.leading(_:), v9);
  v23 = sub_100745C84();
  v48 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v53[v51] = sub_100745C74();
  v51 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_100921478 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v18, qword_100981AA0);
  v50(v14, v26, v18);
  v49(v14, 0, 1, v18);
  v22(v52, v21, v48);
  v27 = objc_allocWithZone(v24);
  v28 = sub_100745C74();
  v29 = v53;
  *&v53[v51] = v28;
  v30 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView;
  *&v29[v30] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageGrid;
  v32 = sub_10074F704();
  (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
  *&v29[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  v33 = type metadata accessor for BaseTodayBrickCollectionViewCell();
  v54.receiver = v29;
  v54.super_class = v33;
  v34 = objc_msgSendSuper2(&v54, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v36 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView] _setCornerRadius:20.0];
  [*&v34[v36] setClipsToBounds:1];
  v37 = *&v34[v36];
  sub_100016C60(0, &qword_100923500);
  v38 = v37;
  v39 = sub_100753E34();
  [v38 setBackgroundColor:v39];

  v40 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel;
  v41 = *&v34[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel];
  v42 = sub_100753DF4();
  [v41 setTextColor:v42];

  [*&v34[v40] setNumberOfLines:2];
  v43 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel] setNumberOfLines:2];
  v44 = [v34 contentView];
  [v44 addSubview:*&v34[v40]];

  v45 = [v34 contentView];
  [v45 addSubview:*&v34[v43]];

  v46 = [v34 contentView];
  [v46 addSubview:*&v34[v36]];

  return v34;
}

uint64_t sub_10029095C(uint64_t a1)
{
  v3 = sub_100748E94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView);
  v18 = sub_100016C60(0, &qword_100922300);
  v19 = &protocol witness table for UIView;
  v17 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel);
  v15 = sub_100745C84();
  v16 = &protocol witness table for UIView;
  v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel);
  v14[5] = &protocol witness table for UIView;
  v14[6] = v8;
  v14[4] = v15;
  v14[1] = v9;
  (*(v4 + 16))(v6, a1, v3);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  return sub_100748E44();
}

id sub_100290AC4()
{
  v1 = v0;
  v2 = sub_100750354();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100748EA4();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100748E94();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BaseTodayBrickCollectionViewCell();
  v20.receiver = v1;
  v20.super_class = v13;
  result = objc_msgSendSuper2(&v20, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits])
  {
    swift_unknownObjectRetain();
    v15 = [v1 traitCollection];
    v18 = v2;
    v16 = v15;
    sub_10028FD28(v15, v12);

    sub_10029095C(v12);
    v17 = [v1 contentView];
    sub_100016C60(0, &qword_100922300);
    sub_1007477B4();

    sub_100748E54();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v18);
    (*(v6 + 8))(v8, v19);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_100290DF8(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = sub_10074F704();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  swift_getKeyPath();
  sub_100746914();

  (*(v4 + 56))(v12, 0, 1, v3);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10006644C(v12, v2 + v13, &unk_100926C40);
  swift_endAccess();
  sub_10074FBB4();
  sub_100292258(&qword_100926C60, &type metadata accessor for TodayCard);
  result = sub_1007468B4();
  v15 = v17;
  if (v17)
  {
    sub_100016B4C(v2 + v13, v9, &unk_100926C40);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {

      return sub_10000C8CC(v9, &unk_100926C40);
    }

    else
    {
      (*(v4 + 32))(v6, v9, v3);
      (*((swift_isaMask & *v2) + 0xD8))(v15, v6, v16);
      [v2 setNeedsLayout];

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

id sub_100291110()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  swift_unknownObjectRelease();
  if (*&v0[v1])
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel] setText:0];
}

uint64_t sub_1002912D4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel) text];
  if (v1)
  {
    v2 = v1;
    sub_100753094();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v21[0] = v4;
  v5 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel) text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_100753094();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = 0;
  v21[1] = v7;
  v21[2] = v9;
  v11 = _swiftEmptyArrayStorage;
LABEL_8:
  v12 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1002554F8(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_1002554F8((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_8;
    }
  }

  sub_10000C518(&qword_10092FE70);
  swift_arrayDestroy();
  sub_10000C518(&unk_100928A70);
  sub_10010ABC4();
  v19 = sub_100752FF4();

  return v19;
}

id sub_1002915B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayBrickCollectionViewCell()
{
  result = qword_10092FE58;
  if (!qword_10092FE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002916E8()
{
  sub_100291800(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_100291800(319, qword_1009265D0, &type metadata accessor for PageGrid);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100291800(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100291854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1002918D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_100923200);
}

uint64_t sub_100291940(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_100923200);
  return swift_endAccess();
}

double sub_100291A90()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100748E94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100747B94();
  sub_10028FD28(v8, v7);

  sub_100747B84();
  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  v9 = sub_100747B94();
  sub_100748E64();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  return v11;
}

void sub_100291CA4()
{
  v1 = sub_10074AB44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v9 = sub_1007469A4();
  v10 = *(*(v9 - 8) + 56);
  v32 = v0;
  v10(v0 + v8, 1, 1, v9);
  v29 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_100921470 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_100981A88);
  v13 = *(v11 - 8);
  v28 = *(v13 + 16);
  v28(v7, v12, v11);
  v14 = *(v13 + 56);
  v14(v7, 0, 1, v11);
  v15 = enum case for DirectionalTextAlignment.leading(_:);
  v16 = v2 + 104;
  v17 = *(v2 + 104);
  v30 = v16;
  v31 = v1;
  v17(v4, enum case for DirectionalTextAlignment.leading(_:), v1);
  v18 = sub_100745C84();
  v19 = objc_allocWithZone(v18);
  *(v32 + v29) = sub_100745C74();
  v29 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_100921478 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v11, qword_100981AA0);
  v28(v7, v20, v11);
  v14(v7, 0, 1, v11);
  v17(v4, v15, v31);
  v21 = objc_allocWithZone(v18);
  v22 = sub_100745C74();
  v23 = v32;
  *(v32 + v29) = v22;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView;
  *(v23 + v24) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageGrid;
  v26 = sub_10074F704();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  *(v23 + OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits) = 0;
  sub_100754644();
  __break(1u);
}

id sub_1002920B8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel];
  sub_10074FA84();
  if (v3)
  {
    v4 = sub_100753064();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  sub_10074F5C4();
  v6 = v5;
  v7 = [v1 traitCollection];
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v18.receiver = v9;
  v18.super_class = v8;
  v11 = objc_msgSendSuper2(&v18, "init");
  v12 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits] = v11;
  v13 = v11;
  swift_unknownObjectRelease();
  if (*&v1[v12])
  {
    [v1 setNeedsLayout];
  }

  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel];
  sub_10074FAA4();
  if (v15)
  {
    v16 = sub_100753064();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  return [v1 setNeedsLayout];
}

uint64_t sub_100292258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002922A0()
{
  sub_10000C4F0(v0 + 16);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

double sub_100292308@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CondensedSearchEditorialBackgroundView();
  if (sub_1007539E4())
  {

    sub_1007539D4();
    *(a1 + 24) = sub_10000C518(&qword_10092FF68);
    *(a1 + 32) = sub_1002923DC();
    sub_10000D134(a1);
    sub_10074D744();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1002923DC()
{
  result = qword_10092FF70;
  if (!qword_10092FF70)
  {
    sub_10000C724(&qword_10092FF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FF70);
  }

  return result;
}

id sub_100292440()
{
  v35[1] = *v0;
  v1 = sub_10074F704();
  v36 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v4 - 8);
  v6 = v35 - v5;
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = 0.0;
  if (!Strong)
  {
    goto LABEL_10;
  }

  v16 = Strong;
  v35[0] = v1;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  sub_1000E061C(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_100746994();
    v17 = sub_100741714();
    v18 = *(v8 + 8);
    v18(v10, v7);
    if (v17)
    {
      v15 = sub_1000E0A6C(v16);
      swift_unknownObjectRelease();

      v18(v13, v7);
      goto LABEL_9;
    }

    v18(v13, v7);
    swift_unknownObjectRelease();
LABEL_8:

    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  sub_10000C8CC(v6, &unk_100923C00);
LABEL_9:
  v1 = v35[0];
LABEL_10:
  v19 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{0.0, v15}];
  v20 = objc_opt_self();
  v21 = [v20 fractionalWidthDimension:1.0];
  v22 = [v20 fractionalHeightDimension:1.0];
  v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

  type metadata accessor for CondensedSearchEditorialBackgroundView();
  v24 = v23;
  sub_1007539F4();
  v25 = v19;
  v26 = sub_100753064();

  v27 = [objc_opt_self() supplementaryItemWithLayoutSize:v24 elementKind:v26 containerAnchor:v25];

  sub_100742574();
  sub_100292C88();
  sub_1007468B4();
  if (v37)
  {
    v28 = sub_100462320();

    v29 = v28 + -10.0;
  }

  else
  {
    v29 = -10.0;
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_10074F664();
  v31 = v30;
  v33 = v32;
  (*(v36 + 8))(v3, v1);
  [v27 setContentInsets:{v29, v31 + -10.0, -10.0, v33 + -10.0}];
  [v27 setZIndex:-1];

  return v27;
}

void *sub_10029296C()
{
  v0 = sub_10000C518(&unk_100925330);
  __chkstk_darwin(v0 - 8);
  v2 = &v16[-1] - v1;
  v3 = sub_100744E64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16[-1] - v8;
  sub_10000C518(&qword_100923570);
  sub_1007468C4();
  if (!v17)
  {
    sub_10000C8CC(v16, &qword_100923578);
    (*(v4 + 56))(v2, 1, 1, v3);
    goto LABEL_6;
  }

  sub_10000C888(v16, v17);
  sub_10074A4F4();
  sub_10000C620(v16);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
LABEL_6:
    sub_10000C8CC(v2, &unk_100925330);
    return _swiftEmptyArrayStorage;
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v6, v9, v3);
  v10 = (*(v4 + 88))(v6, v3);
  v11 = *(v4 + 8);
  if (v10 == enum case for ItemBackground.condensedSearch(_:))
  {
    v11(v6, v3);
    v12 = sub_100292440();
    sub_10000C518(&unk_1009231A0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007A5CF0;
    *(v13 + 32) = v12;
    v11(v9, v3);
    return v13;
  }

  v11(v9, v3);
  v11(v6, v3);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_100292C88()
{
  result = qword_100923190;
  if (!qword_100923190)
  {
    sub_100742574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923190);
  }

  return result;
}

char *sub_100292D48(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v47 = swift_isaMask & *v4;
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074AB44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v18 - 8);
  v20 = &v40 - v19;
  v21 = &v5[qword_10097ED50];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[qword_10097ED58];
  *v22 = 0;
  *(v22 + 1) = 0;
  swift_weakInit();
  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_1009817B8);
  v25 = *(v23 - 8);
  v46 = *(v25 + 16);
  v46(v20, v24, v23);
  v45 = *(v25 + 56);
  v45(v20, 0, 1, v23);
  v26 = *(v15 + 104);
  v40 = v15 + 104;
  v44 = enum case for DirectionalTextAlignment.none(_:);
  v43 = v26;
  v26(v17);
  v42 = sub_100745C84();
  v27 = objc_allocWithZone(v42);
  v41 = v14;
  v28 = sub_100745C74();
  *&v5[qword_10097ED40] = v28;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v29 = v28;
  sub_100752A74();
  sub_10000C8CC(&v51, &unk_100923520);
  sub_10000C8CC(&v53, &unk_100923520);
  sub_100753C74();

  v30 = *(v49 + 8);
  v49 += 8;
  v30(v13, v48);
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v23, qword_1009817D0);
  v46(v20, v31, v23);
  v45(v20, 0, 1, v23);
  v43(v17, v44, v41);
  v32 = objc_allocWithZone(v42);
  v33 = sub_100745C74();
  *&v5[qword_10097ED48] = v33;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v34 = v33;
  sub_100752A74();
  sub_10000C8CC(&v51, &unk_100923520);
  sub_10000C8CC(&v53, &unk_100923520);
  sub_100753C74();

  v30(v13, v48);
  v35 = type metadata accessor for LegacyTodayCardCollectionViewCell();
  v50.receiver = v5;
  v50.super_class = v35;
  v36 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  v37 = [v36 contentView];
  [v37 addSubview:*&v36[qword_10097ED40]];

  v38 = [v36 contentView];
  [v38 addSubview:*&v36[qword_10097ED48]];

  return v36;
}

uint64_t sub_100293388(uint64_t result, char a2)
{
  v3 = v2 + qword_10097ED50;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1002933A4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_10097ED58);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

double sub_1002933D0()
{
  v1 = sub_100754724();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) == 1)
  {
    v6 = [v0 traitCollection];
    v7 = sub_100039CB4(v6, v0);
  }

  else
  {
    if (qword_10091FE08 != -1)
    {
      swift_once();
    }

    v8 = sub_100750B04();
    sub_10000D0FC(v8, qword_10097CA38);
    sub_1007502D4();
    sub_100750564();
    v7 = v9;
    (*(v2 + 8))(v5, v1);
  }

  return v7;
}

double sub_100293558()
{
  v0 = sub_100754724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10091FE18 != -1)
  {
    swift_once();
  }

  v4 = sub_100750B04();
  sub_10000D0FC(v4, qword_10097CA68);
  sub_1007502D4();
  sub_100750564();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_100293698()
{
  v1 = v0;
  v2 = sub_10074F704();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v6 - 8);
  v8 = v32 - v7 + 16;
  v9 = type metadata accessor for LegacyTodayCardCollectionViewCell();
  v35.receiver = v0;
  v35.super_class = v9;
  objc_msgSendSuper2(&v35, "layoutSubviews");
  v10 = [v0 contentView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v32[0] = v12;
  v32[1] = v14;
  v33 = v16;
  v34 = v18;
  sub_100293A9C(v32);
  v19 = [v1 contentView];
  [v19 layoutMargins];
  v21 = v20;
  v23 = v22;

  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) == 1)
  {
    v24 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100037990(v1 + v24, v8);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_10000C8CC(v8, &unk_100926C40);
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_10000C8CC(v8, &unk_100926C40);
      v25 = [v1 traitCollection];
      sub_10074F694();
      sub_10074F694();
      [v25 layoutDirection];
      sub_1007539B4();
      v21 = v26;
      v23 = v27;

      (*(v3 + 8))(v5, v2);
    }
  }

  v32[0] = v12 + v21;
  v33 = v16 - (v23 + v21);
  v28.n128_f64[0] = sub_100293F08(v32);
  v29 = (*((swift_isaMask & *v1) + 0x338))(v32, v28);
  return (*((swift_isaMask & *v1) + 0x1A8))(v29);
}

void sub_100293A54(void *a1)
{
  v1 = a1;
  sub_100293698();
}

void sub_100293A9C(CGFloat *a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  if (*&v1[qword_10097ED58])
  {
    v7 = *&v1[qword_10097ED58 + 8];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v50 = v9(ObjectType, v7);
    v10 = v9(ObjectType, v7);
    v11 = [v10 isHidden];

    if (v11)
    {
      swift_unknownObjectRelease();
      v12 = v50;
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) == 1)
      {
        if ((*(v7 + 72))(ObjectType, v7))
        {
          sub_1005F4B04();
          v14 = v13;
          v16 = v15;
        }

        else
        {
          v29 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_100037990(v2 + v29, v6);
          v30 = [v2 traitCollection];
          sub_1005F6CA0(v6, v30);
          v14 = v31;
          v16 = v32;

          sub_10000C8CC(v6, &unk_100926C40);
        }

        v33 = [v2 traitCollection];
        v34 = sub_1007537F4();

        [v50 layoutMargins];
        [v50 setLayoutMargins:?];
        [v50 layoutMargins];
        if ((v34 & 1) == 0)
        {
          v14 = v16;
        }
      }

      else
      {
        v17 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_100037990(v2 + v17, v6);
        LOBYTE(v17) = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
        v18 = [v2 traitCollection];
        sub_1005F7760(v6, v17, v18);
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v14 = v25;

        sub_10000C8CC(v6, &unk_100926C40);
        v26 = v24;
        v27 = v22;
        v28 = v20;
      }

      [v50 setLayoutMargins:{v28, v27, v26, v14}];
      v35 = [v2 contentView];
      [v35 bounds];
      v37 = v36;
      v39 = v38;

      [v50 sizeThatFits:{v37, v39}];
      v41 = v40;
      v42 = *a1;
      v43 = a1[1];
      v44 = a1[2];
      v45 = a1[3];
      v52.origin.x = *a1;
      v52.origin.y = v43;
      v52.size.width = v44;
      v52.size.height = v45;
      MinX = CGRectGetMinX(v52);
      v53.origin.x = v42;
      v53.origin.y = v43;
      v53.size.width = v44;
      v53.size.height = v45;
      v47 = CGRectGetMaxY(v53) - v41;
      v54.origin.x = v42;
      v54.origin.y = v43;
      v54.size.width = v44;
      v54.size.height = v45;
      Width = CGRectGetWidth(v54);
      [v50 setFrame:{MinX, v47, Width, v41}];
      v55.origin.x = MinX;
      v55.origin.y = v47;
      v55.size.width = Width;
      v55.size.height = v41;
      Height = CGRectGetHeight(v55);
      swift_unknownObjectRelease();

      a1[3] = v45 - Height;
    }
  }
}

double sub_100293F08(CGFloat *a1)
{
  v3 = sub_1002933D0();
  v36 = sub_100293558();
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    sub_1005F4B04();
    v9 = v8;
  }

  else
  {
    v10 = [v1 contentView];
    [v10 layoutMargins];
    v9 = v11;
  }

  v12 = v7 - v9;
  v13 = *&v1[qword_10097ED40];
  [v13 measurementsWithFitting:v1 in:{v12, v6}];
  v15 = v14;
  v17 = v16;
  v34 = v18;
  v37.origin.x = v5;
  v37.origin.y = v4;
  v37.size.width = v12;
  v37.size.height = v6;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v5;
  v38.origin.y = v4;
  v38.size.width = v12;
  v38.size.height = v6;
  v20 = CGRectGetMinY(v38) + v3 - v17;
  v39.origin.x = v5;
  v39.origin.y = v4;
  v39.size.width = v12;
  v39.size.height = v6;
  Width = CGRectGetWidth(v39);
  [v1 bounds];
  sub_100753B24();
  [v13 setFrame:?];
  v40.origin.x = MinX;
  v40.origin.y = v20;
  v40.size.width = Width;
  v40.size.height = v15;
  v22 = CGRectGetMaxY(v40) - v34;
  v23 = *&v1[qword_10097ED48];
  v41.origin.x = v5;
  v41.origin.y = v4;
  v41.size.width = v12;
  v41.size.height = v6;
  v24 = CGRectGetWidth(v41);
  v42.origin.x = v5;
  v42.origin.y = v4;
  v42.size.width = v12;
  v42.size.height = v6;
  [v23 measurementsWithFitting:v1 in:{v24, CGRectGetHeight(v42) - v22}];
  v26 = v25;
  v28 = v27;
  v35 = v29;
  v43.origin.x = v5;
  v43.origin.y = v4;
  v43.size.width = v12;
  v43.size.height = v6;
  v30 = CGRectGetMinX(v43);
  v44.origin.x = v5;
  v44.origin.y = v4;
  v44.size.width = v12;
  v44.size.height = v6;
  v31 = CGRectGetWidth(v44);
  [v1 bounds];
  sub_100753B24();
  [v23 setFrame:?];
  v45.origin.x = v30;
  v45.origin.y = v22 + v36 - v28;
  v45.size.width = v31;
  v45.size.height = v26;
  v32 = CGRectGetMaxY(v45) - v35;
  a1[1] = v4 + v32;
  result = v6 - v32;
  a1[3] = result;
  return result;
}

uint64_t sub_100294198()
{
  v1 = type metadata accessor for LegacyTodayCardCollectionViewCell();
  v3.receiver = v0;
  v3.super_class = v1;
  objc_msgSendSuper2(&v3, "prepareForReuse");
  return sub_10044F1CC(v1, &off_10086ECE8);
}

void sub_100294210(void *a1)
{
  v1 = a1;
  sub_100294198();
}

void sub_100294258()
{
  sub_1005F6EC0();
  if (*(v0 + qword_10097ED58))
  {
    v1 = *(v0 + qword_10097ED58 + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded);
    v4 = *(v1 + 32);
    swift_unknownObjectRetain();
    v4(v3, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  if (*(v0 + qword_10097ED58))
  {
    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 20.0;
    }

    v6 = *(v0 + qword_10097ED58 + 8);
    v7 = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = v8(v7, v6);
    swift_unknownObjectRelease();
    [v9 _setContinuousCornerRadius:v5];
  }
}

id sub_1002943C4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v54[1] = swift_isaMask & *v4;
  v9 = sub_10074FB54();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v13 - 8);
  v15 = v54 - v14;
  v16 = sub_10074F704();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v56 = a3;
  v18(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_100037710(v15, &v5[v19]);
  swift_endAccess();
  sub_1005F3E54(a2);
  v20 = [v5 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_10074FA74();
    if (!v22)
    {
      sub_100016C60(0, &qword_100923500);
      v22 = sub_100753E64();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v55 = a2;
  v24 = *&v5[qword_10097ED40];
  sub_10074FB94();
  if (v25)
  {
    v26 = sub_100753064();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  sub_10074FB74();
  v27 = sub_10074FB14();
  v28 = *(v10 + 8);
  v28(v12, v9);
  [v24 setTextColor:v27];

  v29 = a1;
  v30 = UIAccessibilityTraitButton;
  [v24 setAccessibilityTraits:UIAccessibilityTraitButton];
  v31 = *&v5[qword_10097ED48];
  v32 = v29;
  sub_10074FB84();
  if (v33)
  {
    v34 = sub_100753064();
  }

  else
  {
    v34 = 0;
  }

  v35 = v55;
  [v31 setText:v34];

  sub_10074FB74();
  v36 = sub_10074FB04();
  v28(v12, v9);
  [v31 setTextColor:v36];

  [v31 setAccessibilityTraits:v30];
  v37 = [v5 backgroundView];
  v38 = v56;
  if (v37)
  {
    v39 = v37;
    v40 = sub_10074FA74();
    if (!v40)
    {
      sub_100016C60(0, &qword_100923500);
      v40 = sub_100753E64();
    }

    v41 = v40;
    [v39 setBackgroundColor:v40];
  }

  v42 = [v5 contentView];
  v43 = [v5 traitCollection];
  if (v35 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v43 layoutDirection];
  sub_1007539B4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v42 setLayoutMargins:{v45, v47, v49, v51}];
  v52 = type metadata accessor for LegacyTodayCardCollectionViewCell();
  sub_10044F358(v32, v38, v35, v57, v52, &off_10086ECE8);
  return [v5 setNeedsLayout];
}

void sub_100294930(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100037710(v10, &v4[v12]);
    swift_endAccess();
    v13 = (*(a2 + 160))(ObjectType, a2);
    v4[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = v13;
    if (v13 == 4)
    {
      v14 = [v4 contentView];
      [v14 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v15 = (*(a2 + 136))(ObjectType, a2);
    sub_1005F3E54(v15);
  }

  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + qword_10097ED58);
    if (v18 && *&v4[qword_10097ED58])
    {
      v46 = *(v16 + qword_10097ED58 + 8);
      v19 = *&v4[qword_10097ED58 + 8];
      v20 = swift_getObjectType();
      v21 = *(v19 + 120);
      v22 = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21(v18, v46, a3 & 1, v20, v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = a1;
      if (a3)
      {
LABEL_14:

        return;
      }
    }

    v24 = qword_10097ED40;
    v25 = *&v4[qword_10097ED40];
    v26 = [*&v17[qword_10097ED40] text];
    [v25 setText:v26];

    v27 = [*&v17[v24] textColor];
    [v25 setTextColor:v27];

    v28 = qword_10097ED48;
    v29 = *&v4[qword_10097ED48];
    v30 = [*&v17[qword_10097ED48] text];
    [v29 setText:v30];

    v31 = [*&v17[v28] textColor];
    [v29 setTextColor:v31];

    v32 = [v4 backgroundView];
    if (v32)
    {
      v33 = v32;
      v34 = [v17 backgroundView];
      v35 = [v34 backgroundColor];

      [v33 setBackgroundColor:v35];
    }

    v36 = [v4 contentView];
    v37 = [v17 contentView];
    [v37 layoutMargins];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    [v36 setLayoutMargins:{v39, v41, v43, v45}];
    [v4 setNeedsLayout];
    goto LABEL_14;
  }
}

uint64_t sub_100294D70(uint64_t a1)
{
  sub_10000C824(a1, v7);
  sub_10000C518(&unk_100923100);
  sub_10074FBB4();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = sub_10074FBA4();
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + qword_10097ED58);
      if (v5)
      {
        v7[3] = sub_1007463B4();
        v7[4] = sub_100295B84();
        v7[0] = v4;
        v6[3] = swift_getObjectType();
        v6[0] = v5;
        swift_unknownObjectRetain_n();

        sub_1007430A4();
        swift_unknownObjectRelease();

        sub_10000C620(v6);
        return sub_10000C8CC(v7, &unk_1009297F0);
      }
    }
  }

  return result;
}

uint64_t sub_100294EB8(uint64_t result)
{
  if (*(v1 + qword_10097ED58))
  {
    v2 = result;
    v3 = *(v1 + qword_10097ED58 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(v2, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100294F5C(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LegacyTodayCardCollectionViewCell();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10091FE10 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90);
    sub_10000D0FC(v6, qword_10097CA50);
    v7 = v1;
    sub_100743464();

    sub_100753F54();
    if (qword_10091FE20 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v6, qword_10097CA80);
    v8 = v7;
    sub_100743464();

    return sub_100753F54();
  }

  return result;
}

void sub_100295130(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100294F5C(a3);
}

void sub_10029519C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = &selRef_viewSafeAreaInsetsDidChange;
  v9 = &stru_1008F2000;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v12 = *(a4 + 16);
    v13 = v12(ObjectType, a4);
    [v13 removeFromSuperview];

    v14 = swift_getObjectType();
    v15 = v12(v14, a4);
    [v15 _setContinuousCornerRadius:0.0];

    v9 = &stru_1008F2000;
    v16 = v12(v14, a4);
    v17 = [v16 layer];

    [v17 setMaskedCorners:15];
    v8 = &selRef_viewSafeAreaInsetsDidChange;
  }

  if (a1)
  {
    v18 = v8;
    v19 = swift_getObjectType();
    v20 = *(a2 + 16);
    swift_unknownObjectRetain();
    v21 = v20(v19, a2);
    v22 = v21;
    v23 = 20.0;
    if (v5[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v23 = 0.0;
    }

    [v21 v18[452]];
    v24 = [v22 v9[67].name];
    [v24 setMaskedCorners:12];

    v25 = [v5 contentView];
    [v25 addSubview:v22];
    swift_unknownObjectRelease();
  }
}

void sub_1002953BC()
{
  sub_1005F48BC();
  v1 = [v0 contentView];
  v2 = [*&v0[qword_10097ED40] text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100753094();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v33 = v4;
  v34 = v6;
  v7 = [*&v0[qword_10097ED48] text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100753094();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v35 = v9;
  v36 = v11;
  if (*&v0[qword_10097ED58])
  {
    v12 = *&v0[qword_10097ED58 + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    v15 = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    v16 = [v15 accessibilityLabel];

    if (v16)
    {
      v17 = sub_100753094();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v37 = v17;
    v38 = v19;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
LABEL_14:
  if (v20 <= 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 + 1;
  v24 = 16 * v20 + 40;
  while (1)
  {
    if (v20 == 3)
    {
      sub_10000C518(&qword_10092FE70);
      swift_arrayDestroy();
      sub_10000C518(&unk_100928A70);
      sub_10010ABC4();
      sub_100752FF4();

      v31 = sub_100753064();

      [v1 setAccessibilityLabel:v31];

      return;
    }

    if (v23 == ++v20)
    {
      break;
    }

    v25 = v24 + 16;
    v26 = *&v32[v24];
    v24 += 16;
    if (v26)
    {
      v27 = *&v32[v25 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1002554F8(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_1002554F8((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[16 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

Class sub_1002956C4(void *a1)
{
  v1 = a1;
  v2 = sub_100295734();

  if (v2)
  {
    v3.super.isa = sub_100753294().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t sub_100295734()
{
  sub_10000C518(&unk_1009259C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A5A00;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_100016C60(0, &qword_100922300);
  *(v1 + 32) = v2;
  if (*&v0[qword_10097ED58] && (v3 = *&v0[qword_10097ED58 + 8], ObjectType = swift_getObjectType(), v5 = *(v3 + 144), swift_unknownObjectRetain(), v6 = v5(ObjectType, v3), swift_unknownObjectRelease(), v6))
  {
    v7 = v6;
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  sub_1004A0110(v7);
  return v1;
}

void sub_100295854(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1007532A4();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_1002958CC(v4);
}

void sub_1002958CC(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_100753294().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3.receiver = v1;
  v3.super_class = type metadata accessor for LegacyTodayCardCollectionViewCell();
  objc_msgSendSuper2(&v3, "setAccessibilityElements:", v2.super.isa);
}

uint64_t sub_100295984()
{
  swift_unknownObjectRelease();

  return swift_weakDestroy();
}

id sub_1002959E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100295A40(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_weakDestroy();
}

uint64_t sub_100295B1C()
{
  sub_100295B70();
}

unint64_t sub_100295B84()
{
  result = qword_100930000;
  if (!qword_100930000)
  {
    sub_1007463B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930000);
  }

  return result;
}

__n128 sub_100295BDC(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_100295C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100295C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100295CF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100295D18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 72) = v3;
  return result;
}

uint64_t sub_100295D64(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = CGRectGetWidth(*&a1) * *(v4 + 56);
  v11 = v10 * *(v4 + 16);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v12 = *(v4 + 64) + v10 + (CGRectGetWidth(v16) - v10) * 0.5 - v11;
  v13 = *(v4 + 32);
  v17.origin.x = v12;
  v17.origin.y = v13;
  v17.size.width = v11;
  v17.size.height = v11;
  CGRectGetMidX(v17);
  v18.origin.x = v12;
  v18.origin.y = v13;
  v18.size.width = v11;
  v18.size.height = v11;
  CGRectGetMidY(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetWidth(v19);
  sub_10000C888((v4 + 72), *(v4 + 96));
  sub_100751244();
  sub_10000C888(v5 + 24, v5[27]);
  sub_100751244();
  sub_10000C888(v5 + 14, v5[17]);
  sub_100751244();
  sub_10000C888(v5 + 19, v5[22]);
  return sub_100751244();
}

__n128 sub_100295F68@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100295F84(void *a1)
{
  if (*v1 == *a1 && (sub_1007544C4() & 1) != 0 && (type metadata accessor for StringUserDefaultsDebugSetting(), (v2 = swift_dynamicCastClass()) != 0) && ((v3 = v2, *(v2 + 56) == *(v1 + 56)) ? (v4 = *(v2 + 64) == *(v1 + 64)) : (v4 = 0), (v4 || (sub_100754754() & 1) != 0) && (*(v3 + 72) == *(v1 + 72) && *(v3 + 80) == *(v1 + 80) || (sub_100754754() & 1) != 0)))
  {
    v5 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_100296084()
{
  sub_1007544D4();
  sub_100753174();
  sub_100753174();
  sub_100754854(*(v0 + 88));
}

uint64_t sub_1002960DC()
{
  sub_100016994(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_100296168(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for Accessory();
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_stackView;
  *&v3[v10] = [objc_allocWithZone(sub_10000C518(&unk_10093EC20)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_objectGraph] = a2;
  v11 = *(sub_10000C518(&qword_1009262D8) + 48);
  *v9 = 1;
  v12 = sub_100742A34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v40 = a1;
  v14(&v9[v11], a1, v12);
  (*(v13 + 56))(&v9[v11], 0, 1, v12);
  swift_storeEnumTagMultiPayload();

  sub_10050A2DC(v15);
  v17 = v16;
  sub_10007A554(v9);
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_accountButton] = v17;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setTintColor:v20];

  v21 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesButton());

  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_seeAllGamesButton] = sub_100555D88(v22);
  v42.receiver = v3;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = sub_10074F3E4();
  v41[3] = v24;
  v41[4] = sub_1002968B4();
  v25 = sub_10000D134(v41);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_see_all_games_uplift_navigation_bar_Future(_:), v24);
  v26 = v23;
  LOBYTE(v23) = sub_10074FC74();
  sub_10000C620(v41);
  if (v23)
  {
    [*&v26[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_seeAllGamesButton]];
  }

  v27 = OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_stackView;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_accountButton;
  [*&v26[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_accountButton]];
  v29 = *&v26[v27];
  *&v29[qword_10093A0F0] = 0;
  [v29 setNeedsLayout];
  v30 = *&v26[v27];
  *&v30[qword_10093A0F8] = 3;
  [v30 setNeedsLayout];
  v31 = *&v26[v27];
  *&v31[qword_10093A100] = 0x4034000000000000;
  [v31 setNeedsLayout];
  v32 = *&v26[v27];
  v33 = v26;
  [v33 addSubview:v32];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  sub_10000C518(&unk_1009249D0);
  v34 = swift_allocObject();
  v39 = xmmword_1007A5A00;
  *(v34 + 16) = xmmword_1007A5A00;
  *(v34 + 32) = sub_1007519E4();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D24();
  swift_unknownObjectRelease();

  v35 = swift_allocObject();
  *(v35 + 16) = v39;
  *(v35 + 32) = sub_1007516F4();
  *(v35 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100753D24();
  swift_unknownObjectRelease();

  v36 = *&v26[v28];
  v37 = [v33 traitCollection];
  LOBYTE(v35) = sub_1007537B4();

  [v36 setHidden:v35 & 1];

  (*(v13 + 8))(v40, v12);

  return v33;
}

unint64_t sub_1002968B4()
{
  result = qword_100926D40;
  if (!qword_100926D40)
  {
    sub_10074F3E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926D40);
  }

  return result;
}

uint64_t sub_100296994()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = (swift_isaMask & *v0);
  v4 = sub_10000C518(&qword_10092AB88);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = *((v2 & v1) + 0x3E0);
  v8 = *((v2 & v1) + 0x408);
  sub_1007450A4();
  sub_1005E561C();
  v9 = [v0 collectionView];
  [v9 reloadData];

  v10 = *((v2 & v1) + 0x3F8);
  if (sub_100748C04())
  {
    sub_100746BF4();
  }

  v11 = sub_10029AA28();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 2) = v7;
    *(v14 + 3) = v3[125];
    *(v14 + 4) = v3[126];
    *(v14 + 5) = v10;
    *(v14 + 6) = v3[128];
    *(v14 + 7) = v8;
    *(v14 + 8) = v13;
    v15 = &v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v16 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v15 = sub_10029CBA8;
    v15[1] = v14;

    sub_1000164A8(v16);
  }

  v17 = sub_10029AA28();
  v18 = sub_1007416B4();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_1005E5678(v6);

  sub_10000C8CC(v6, &qword_10092AB88);
  sub_100748BF4();
}

void sub_100296C50()
{
  v1 = sub_100741454();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_100930170))
  {

    sub_100741444();
    sub_1007456D4();

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_100296D38()
{
  v1 = v0;
  v2 = sub_100741454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100742964();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_10000C7B4(v1 + v10, v14);
  if (v15)
  {
    sub_10000C824(v14, v13);
    sub_10000C8CC(v14, &unk_100930240);
    sub_10000C888(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v6);
    sub_100742974();
    (*(v7 + 8))(v9, v6);
    result = sub_10000C620(v13);
  }

  else
  {
    result = sub_10000C8CC(v14, &unk_100930240);
  }

  if (*(v1 + qword_100930170))
  {

    sub_100741444();
    sub_1007456C4();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_100296FC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v27 = a3;
  v7 = sub_10074E984();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_10074E994();
  v14 = sub_10034E47C();
  if (v14)
  {
    v16 = v14;
    v26 = v15;
    if (sub_100745064())
    {
      v25 = sub_1005E5ABC(a2);
    }

    else
    {
      v25 = 0;
    }

    v17 = sub_10074E9C4();
    (*(v8 + 16))(v10, v13, v7);
    v18 = (*(v8 + 88))(v10, v7);
    if (v18 != enum case for Shelf.ContentType.smallLockup(_:) && v18 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v18 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_12:
        v20 = 1;
        goto LABEL_13;
      }

      if (v18 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v18 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v18 != enum case for Shelf.ContentType.action(_:))
      {
        if (v18 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_12;
        }

        if (v18 != enum case for Shelf.ContentType.editorialCard(_:) && v18 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v20 = 1;
          if (v18 == enum case for Shelf.ContentType.brick(_:) || v18 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_13;
          }

          if (v18 != enum case for Shelf.ContentType.reviews(_:) && v18 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v18 != enum case for Shelf.ContentType.framedVideo(_:) && v18 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v18 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v18 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v18 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_13;
            }

            if (v18 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v18 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v18 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v18 != enum case for Shelf.ContentType.posterLockup(_:) && v18 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v18 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v20 = v17;
                if (v18 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v8 + 8))(v10, v7);
                  v20 = 0;
                }
              }

              goto LABEL_13;
            }
          }
        }
      }
    }

    v20 = v17;
LABEL_13:
    sub_1005D5EE4(v13, v20 & 1, v25, v4, v27);
    (*(v26 + 24))(a1, v20 & 1, v4, *&v4[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_artworkLoader], v16);
  }

  return (*(v8 + 8))(v13, v7);
}

void *sub_10029742C()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_1007457B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v6);
  v9 = (&v34 - v8);
  v10 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v11 = (*(v1 + 1240))(v7);
  v12 = sub_10017C0B8(v11);
  if (v12)
  {
    v13 = v12;
    sub_100753284();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v10 = v35;
  }

  v14 = sub_1005D8C3C(v0);
  if (v14)
  {
    v15 = v14;
    sub_100753284();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v10 = v35;
  }

  if (sub_1007450A4() < 1)
  {
    goto LABEL_14;
  }

  sub_100745074();
  if ((*(v3 + 88))(v9, v2) != enum case for ShelfBackground.color(_:))
  {
    (*(v3 + 8))(v9, v2);
    goto LABEL_14;
  }

  (*(v3 + 96))(v9, v2);

  v16 = *(sub_10000C518(&unk_100930940) + 48);
  v17 = sub_100748E34();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);
  v18 = objc_opt_self();
  v19 = [v18 fractionalWidthDimension:1.0];
  v20 = [v18 absoluteDimension:2000.0];
  v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = sub_100753064();
  v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v23 setExtendsBoundary:0];
  v9 = v23;
  sub_100753284();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    sub_100753344();

    v10 = v35;
LABEL_14:
    if (sub_1007450A4() < 1)
    {
      break;
    }

    if (!__OFSUB__(sub_1007450A4(), 1))
    {
      sub_100745074();
      if ((*(v3 + 88))(v5, v2) == enum case for ShelfBackground.color(_:))
      {
        (*(v3 + 96))(v5, v2);

        v24 = *(sub_10000C518(&unk_100930940) + 48);
        v25 = sub_100748E34();
        (*(*(v25 - 8) + 8))(v5 + v24, v25);
        v26 = objc_opt_self();
        v27 = [v26 fractionalWidthDimension:1.0];
        v28 = [v26 absoluteDimension:2000.0];
        v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

        v30 = sub_100753064();
        v31 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v29 elementKind:v30 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v31 setExtendsBoundary:0];
        v32 = v31;
        sub_100753284();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();

        return v35;
      }

      else
      {
        (*(v3 + 8))(v5, v2);
      }

      return v10;
    }

    __break(1u);
LABEL_23:
    sub_100753304();
  }

  return v10;
}

void sub_100297B04()
{
  v0 = sub_10029AA28();
  if (v0)
  {
    v4 = v0;
    v1 = [v4 configuration];
    sub_100016C60(0, &unk_100930230);
    v2 = sub_100754244();

    sub_10029742C();
    sub_100016C60(0, &qword_10092E460);
    isa = sub_100753294().super.isa;

    [v2 setBoundarySupplementaryItems:isa];

    [v4 setConfiguration:v2];
  }
}

void sub_100297C20()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  if (v2)
  {
    sub_100750FC4();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_10074B974();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_10074B964();

        sub_100599B24();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100297D34(uint64_t a1)
{
  v3 = [v1 collectionView];
  sub_1005E5B78(a1, v3);

  sub_100297B04();
}

uint64_t sub_100297DEC(uint64_t a1)
{
  v3 = sub_10000C518(&qword_10092AB88);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v20 - v5;
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    sub_10000C518(&unk_1009405F0);
    v12 = sub_1007417F4();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1007A5A00;
    (*(v13 + 16))(v15 + v14, a1, v12);
    isa = sub_100753294().super.isa;

    [v11 reloadItemsAtIndexPaths:isa];
  }

  v17 = sub_10029AA28();
  v18 = sub_1007416B4();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_1005E5678(v6);

  return sub_10000C8CC(v6, &qword_10092AB88);
}

uint64_t sub_100298040(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v28 = swift_isaMask & *v1;
  v3 = sub_1007416B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = v5;
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_10092AB88);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v26 - v8;
  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 collectionViewLayout];

    [v12 invalidateLayout];
  }

  v13 = sub_10029AA28();
  v14 = *(v4 + 16);
  v15 = v29;
  v14(v9, v29, v3);
  (*(v4 + 56))(v9, 0, 1, v3);
  sub_1005E5678(v9);

  sub_10000C8CC(v9, &qword_10092AB88);
  v16 = objc_opt_self();
  v17 = v27;
  v14(v27, v15, v3);
  v18 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 16) = *(v28 + 992);
  *(v19 + 32) = *(v20 + 1008);
  *(v19 + 40) = *(v20 + 1016);
  *(v19 + 56) = *(v20 + 1032);
  *(v19 + 64) = v2;
  (*(v4 + 32))(v19 + v18, v17, v3);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10029CEDC;
  *(v21 + 24) = v19;
  aBlock[4] = sub_1000C0C28;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011B528;
  aBlock[3] = &unk_10086F128;
  v22 = _Block_copy(aBlock);
  v23 = v2;

  [v16 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1002983FC()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = *(v2 + 0x3E0);
  v4 = *(v2 + 0x408);
  if (sub_1007450A4())
  {
    if (qword_100921ED8 != -1)
    {
      swift_once();
    }

    v5 = sub_100752E44();
    sub_10000D0FC(v5, qword_100983300);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5620;
    v25 = v3;
    v26 = *(v2 + 1000);
    v27 = *(v2 + 1016);
    v28 = v4;
    *&v27 = type metadata accessor for BaseShelfViewController();
    v25 = v0;
    v6 = v0;
    sub_100752424();
    sub_10000C8CC(&v25, &unk_100923520);
    sub_1007523A4();
    swift_getErrorValue();
    *&v27 = v24;
    v7 = sub_10000D134(&v25);
    (*(*(v24 - 8) + 16))(v7);
    sub_100752444();
    sub_10000C8CC(&v25, &unk_100923520);
    sub_100752D04();
  }

  else
  {
    sub_100751094();
    swift_errorRetain();
    swift_unknownObjectRetain();
    v8 = sub_100751054();
    v9 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    v11 = v8;
    sub_10074B974();

    v12 = *&v1[v9];
    *&v1[v9] = v8;
    v23 = v11;

    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v25 = v16;
      *&v26 = v18;
      *(&v26 + 1) = v20;
      *&v27 = v22;
      BYTE8(v27) = 0;
      sub_10074B964();

      sub_100599B24();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002987F4()
{
  v1 = [v0 collectionView];
  sub_1005E5F88();

  sub_100297B04();
}

void sub_10029885C()
{
  v1 = [v0 collectionView];
  sub_1005D61E0(v1);

  sub_100297B04();
}

uint64_t sub_1002988C4()
{
  v1 = (swift_isaMask & *v0);
  if (qword_100921ED8 != -1)
  {
    swift_once();
  }

  v2 = sub_100752E44();
  sub_10000D0FC(v2, qword_100983300);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5620;
  v3 = v1[63];
  v8 = v1[62];
  v9 = v3;
  v10 = v1[64];
  *(&v9 + 1) = type metadata accessor for BaseShelfViewController();
  *&v8 = v0;
  v4 = v0;
  sub_100752424();
  sub_10000C8CC(&v8, &unk_100923520);
  sub_1007523A4();
  swift_getErrorValue();
  *(&v9 + 1) = v7;
  v5 = sub_10000D134(&v8);
  (*(*(v7 - 8) + 16))(v5);
  sub_100752444();
  sub_10000C8CC(&v8, &unk_100923520);
  sub_100752D04();
}

uint64_t sub_100298B28(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v7 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000C8CC(v5, &unk_100923960);
  }

  sub_1003C0E00(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_100298C78(uint64_t a1)
{
  if (a1)
  {
    v2 = swift_isaMask & *v1;
    sub_100745704();
    swift_allocObject();

    *(v1 + qword_100930170) = sub_1007456F4();

    if (!*(v1 + qword_100930170))
    {
      return result;
    }

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = *(v2 + 992);
    *(v5 + 32) = *(v2 + 1008);
    *(v5 + 40) = *(v2 + 1016);
    *(v5 + 56) = *(v2 + 1032);
    *(v5 + 64) = v4;

    sub_1007456A4();
  }

  else
  {
    *(v1 + qword_100930170) = 0;
  }
}

uint64_t sub_100298DF8()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v28 = swift_isaMask & *v0;
  v3 = sub_1007521E4();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100752244();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  aBlock[0] = *(v0 + qword_100930138);
  swift_unknownObjectRetain();
  sub_100746BD4();
  v13 = *((v2 & v1) + 0x3E0);
  v14 = *((v2 & v1) + 0x3E8);
  sub_1007474D4();
  swift_unknownObjectRelease();
  if (*(*(v0 + qword_100930140) + 112))
  {

    sub_100749574();
  }

  sub_10029C698();
  sub_100016C60(0, &qword_100926D00);
  v25 = sub_100753774();
  sub_100752234();
  sub_100746BE4();
  sub_1007522B4();
  v26 = *(v7 + 8);
  v15 = v27;
  v26(v9, v27);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  v18 = v28;
  *(v17 + 32) = *(v28 + 1008);
  *(v17 + 40) = *(v18 + 1016);
  *(v17 + 56) = *(v18 + 1032);
  *(v17 + 64) = v16;
  aBlock[4] = sub_10029CD88;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10086F088;
  v19 = _Block_copy(aBlock);

  v20 = v29;
  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10029CD9C(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750);
  sub_1000D83A4(&qword_1009236C0, &unk_10092F750);
  v21 = v32;
  v22 = v34;
  sub_1007543A4();
  v23 = v25;
  sub_100753734();
  _Block_release(v19);

  (*(v33 + 8))(v21, v22);
  (*(v30 + 8))(v20, v31);
  return (v26)(v12, v15);
}

void sub_1002992DC()
{
  v1 = v0;
  v16 = *((swift_isaMask & *v0) + 0x3F8);
  v17.receiver = v0;
  v17.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v2 = *(v0 + qword_100930168);
  if (v2)
  {
    sub_100016C60(0, &qword_100930228);
    type metadata accessor for FlowPreviewing();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = v2;
    v5 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDelegate:v4];
    v6 = [v1 collectionView];
    if (!v6)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 addInteraction:v5];
  }

  v8 = [v1 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = sub_100299550();
  [v9 setCollectionViewLayout:v10];

  sub_100747CC4();
  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 setAlwaysBounceVertical:1];
  }

  v13 = [v1 collectionView];
  if (v13)
  {
    v14 = v13;
    [v13 setPrefetchDataSource:v1];
  }

  v15 = [v1 collectionView];
  sub_1002C2870(v15);
}

id sub_100299550()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = swift_isaMask & *v0;
  v4 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  sub_10029742C();
  sub_100016C60(0, &qword_10092E460);
  isa = sub_100753294().super.isa;

  [v4 setBoundarySupplementaryItems:isa];

  v6 = type metadata accessor for BaseCollectionCompositionalLayout();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = *(v3 + 992);
  *(v8 + 32) = *((v2 & v1) + 0x3F0);
  *(v8 + 40) = *(v3 + 1016);
  *(v8 + 56) = *((v2 & v1) + 0x408);
  *(v8 + 64) = v7;
  v9 = objc_allocWithZone(v6);
  v13[4] = sub_10029CD54;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1002B6430;
  v13[3] = &unk_10086F038;
  v10 = _Block_copy(v13);

  v11 = [v9 initWithSectionProvider:v10 configuration:v4];

  _Block_release(v10);

  return v11;
}

void sub_100299774(void *a1)
{
  v1 = a1;
  sub_1002992DC();
}

uint64_t sub_1002997BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v2, "as_viewDidBecomeFullyVisible");
  if (*(*&v0[qword_100930140] + 112))
  {

    sub_1007495A4();
  }

  sub_100745584();
  sub_100745564();
  sub_100748C44();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

void sub_100299928(void *a1)
{
  v1 = a1;
  sub_1002997BC();
}

id sub_100299970()
{
  v1 = (swift_isaMask & *v0);
  v2 = sub_100741454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[63];
  v9[0] = v1[62];
  v9[1] = v6;
  v9[2] = v1[64];
  v7 = type metadata accessor for BaseShelfViewController();
  v10.receiver = v0;
  v10.super_class = v7;
  result = objc_msgSendSuper2(&v10, "as_viewWillBecomeFullyVisible");
  if (*(v0 + qword_100930170))
  {

    sub_100741444();
    sub_1007456B4();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_100299ACC(void *a1)
{
  v1 = a1;
  sub_100299970();
}

id sub_100299B14(char a1)
{
  v3 = (swift_isaMask & *v1);
  v4 = sub_100741454();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v3[63];
  v11[0] = v3[62];
  v11[1] = v8;
  v11[2] = v3[64];
  v9 = type metadata accessor for BaseShelfViewController();
  v12.receiver = v1;
  v12.super_class = v9;
  result = objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  if (*(v1 + qword_100930170))
  {

    sub_100741444();
    sub_1007456B4();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_100299C78(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100299B14(a3);
}

uint64_t sub_100299CCC(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = sub_100741454();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v5 & v4) + 0x3F0);
  v12 = *((v5 & v4) + 0x408);
  v16 = *(v6 + 992);
  v17 = v16;
  v18 = v11;
  v15 = *(v6 + 1016);
  v19 = v15;
  v20 = v12;
  v13 = type metadata accessor for BaseShelfViewController();
  v21.receiver = v2;
  v21.super_class = v13;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1);
  if (sub_100748C04())
  {
    sub_100741444();
    sub_100741424();
    (*(v8 + 8))(v10, v7);
    sub_100746C04();
  }

  if (*(*(v2 + qword_100930140) + 112))
  {

    sub_1007495A4();
  }

  sub_100745584();
  sub_100745564();
  sub_100748C44();
  sub_100745544();
}

void sub_100299F20(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100299CCC(a3);
}

uint64_t sub_100299F74()
{
  v1 = v0;
  v2 = (swift_isaMask & *v0);
  v3 = sub_100741454();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[63];
  v10[0] = v2[62];
  v10[1] = v7;
  v10[2] = v2[64];
  v8 = type metadata accessor for BaseShelfViewController();
  v11.receiver = v1;
  v11.super_class = v8;
  objc_msgSendSuper2(&v11, "as_viewWillBecomePartiallyVisible");
  if (*(*&v1[qword_100930140] + 112))
  {

    sub_1007495A4();
  }

  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();

  if (*&v1[qword_100930170])
  {

    sub_100741444();
    sub_1007456E4();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_10029A148(void *a1)
{
  v1 = a1;
  sub_100299F74();
}

uint64_t sub_10029A190(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = sub_100741454();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752BC4();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000C518(&qword_100930220);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = *((v5 & v4) + 0x3F0);
  v16 = *((v5 & v4) + 0x408);
  v22 = *(v6 + 992);
  v23 = v22;
  v24 = v15;
  v21 = *(v6 + 1016);
  v25 = v21;
  v26 = v16;
  v17 = type metadata accessor for BaseShelfViewController();
  v27.receiver = v2;
  v27.super_class = v17;
  objc_msgSendSuper2(&v27, "viewWillDisappear:", a1 & 1);
  if (sub_100748C04())
  {
    sub_100752BB4();
    sub_100741444();
    sub_100741424();
    (*(v8 + 8))(v10, v7);
    sub_100746C24();
    v18 = sub_100746C34();
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
    sub_100746C14();
  }

  if (*(v2 + qword_100930158) == 1)
  {
    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    v19 = v23;
    sub_10074B0D4();
  }

  if (*(*(v2 + qword_100930140) + 112))
  {

    sub_1007495A4();
  }

  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();

  if (*(v2 + qword_100930170))
  {

    sub_100741444();
    sub_1007456E4();

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_10029A570(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10029A190(a3);
}

void sub_10029A5C4()
{
  v1 = *((swift_isaMask & *v0) + 0x3E0);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v2, "as_viewDidBecomePartiallyVisible");
  if (*(v0 + qword_100930158) == 1)
  {
    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    sub_10074B0D4();
  }
}

void sub_10029A6A8(void *a1)
{
  v1 = a1;
  sub_10029A5C4();
}

void sub_10029A6F0(uint64_t a1)
{
  v4 = *((swift_isaMask & *v1) + 0x3E0);
  v5 = *((swift_isaMask & *v1) + 0x3F0);
  v6 = *((swift_isaMask & *v1) + 0x400);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1, v4, v5, v6);
  if ([v1 isViewLoaded])
  {
    sub_100297B04();
    v3 = [v1 collectionView];
    sub_1005E60B0(v3);
  }
}

void sub_10029A7D8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10029A6F0(a3);
}

void sub_10029A844(uint64_t a1, double a2, double a3)
{
  v7 = (swift_isaMask & *v3);
  v8 = v7[63];
  v15[1] = v7[62];
  v15[2] = v8;
  v15[3] = v7[64];
  v16.receiver = v3;
  v16.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v16, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v9 = [v3 traitCollection];
    v10 = type metadata accessor for SnapshotPageTraitEnvironment();
    v11 = objc_allocWithZone(v10);
    v12 = &v11[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v12 = a2;
    v12[1] = a3;
    *&v11[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v9;
    v15[0].receiver = v11;
    v15[0].super_class = v10;
    v13 = [(objc_super *)v15 init];
    v14 = [v3 collectionView];
    sub_1005E60F0(v14);
  }
}

void sub_10029A9A8(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_10029A844(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_10029AA28()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result collectionViewLayout];

    result = 0;
    if (v3)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      result = swift_dynamicCastClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_10029AAA4(uint64_t a1)
{
  v12 = [v1 collectionView];
  if (v12)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
        v11 = sub_100745154();
        sub_100296FC8(v11, v10, v12);

        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_10029AC58(void *a1, uint64_t a2, void *a3)
{
  sub_1007417F4();
  v5 = sub_1007532A4();
  v6 = a3;
  v7 = a1;
  sub_10029C4C4(v5);
}

id sub_10029ACD4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;

  v4 = v3;
  result = [v4 collectionView];
  if (result)
  {
    v6 = result;
    v7 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];

    v8 = sub_1005D6620(a1, v6, v4, v7);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10029ADC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100725158();
    sub_10029AAA4(v2);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRetain();

    v5 = sub_100748C04();
    result = swift_unknownObjectRelease();
    if (v5)
    {
      sub_100746BF4();
    }
  }

  return result;
}

void sub_10029AEB8(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v3 = v1;
    sub_100741674(v2);
    v5 = v4;
    [v3 reloadSections:v4];
  }
}

void sub_10029AF40(void *a1, uint64_t a2)
{
  v4 = sub_1007416B4();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 collectionView];
  if (v9)
  {
    v10 = v9;
    sub_10000C518(&qword_1009253E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007A5A00;
    *(v11 + 32) = a2;
    v15[1] = v11;
    sub_10029CD9C(&qword_100930200, &type metadata accessor for IndexSet);
    sub_10000C518(&qword_100930208);
    sub_1000D83A4(&unk_100930210, &qword_100930208);
    sub_1007543A4();
    sub_100741674(v12);
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    [v10 reloadSections:v14];
  }
}

void sub_10029B11C(void *a1)
{
  v1 = a1;
  sub_1002987F4();
}

void sub_10029B164(void *a1)
{
  v1 = a1;
  sub_10029885C();
}

void sub_10029B1AC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = a1;
  sub_1002988C4();
}

uint64_t sub_10029B204(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_10029CC20();

  return v6;
}

uint64_t sub_10029B250(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_10029CC4C(a4);

  return v8;
}

void sub_10029B2A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100298DF8();
  }
}

uint64_t sub_10029B300()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();

    sub_100747CB4();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10029B390(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  LOBYTE(a5) = sub_10029CBC0(a5);

  return a5 & 1;
}

double sub_10029B3FC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = sub_10029CBF0(a5);

  return v11;
}

id sub_10029B4D0(void *a1, uint64_t a2, void *a3)
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
  v14 = sub_10029B490(v12, v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v14;
}

uint64_t sub_10029B610(void *a1, uint64_t a2, void *a3, void *a4)
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
  sub_10029CC78(v15, v11, v13);

  return (*(v8 + 8))(v10, v7);
}

id sub_10029B788(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v9 = a3;
  v10 = a1;
  v11 = sub_10029B750(v9, v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

uint64_t sub_10029B8FC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_10029B89C(v11, v12, v10);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10029BA14(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100741744();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_10029CD04(v12, v10);

  return (*(v8 + 8))(v10, v7);
}

BOOL sub_10029BB28(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v9 = a3;
  v10 = a1;
  isa = sub_100741704().super.isa;
  v12 = [v9 cellForItemAtIndexPath:isa];

  if (v12)
  {
    swift_getObjectType();
    v13 = swift_conformsToProtocol2() == 0;

    v9 = v10;
    v10 = v12;
  }

  else
  {
    v13 = 0;
  }

  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_10029BCD8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v9 = a3;
  v10 = a1;
  sub_10029BC90(v9, v8);

  return (*(v6 + 8))(v8, v5);
}

void sub_10029BDF0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10029BDD4(v4);
}

void sub_10029BE74(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10029BE58(v4);
}

id sub_10029BEDC(uint64_t a1)
{
  v4 = *((swift_isaMask & *v1) + 0x3E0);
  v5 = *((swift_isaMask & *v1) + 0x3F0);
  v6 = *((swift_isaMask & *v1) + 0x400);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v7, "scrollViewDidScroll:", a1, v4, v5, v6);
  return [*(v1 + qword_100930148) scrollViewDidScroll:a1];
}

void sub_10029BF8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10029BEDC(v4);
}

void sub_10029C010(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10029BFF4(v4);
}

void sub_10029C09C(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_10029C078(v6, a4);
}

void sub_10029C10C(void *a1)
{
  v1 = a1;
  sub_100296C50();
}

void sub_10029C154(void *a1)
{
  v1 = a1;
  sub_100296D38();
}

uint64_t sub_10029C19C()
{
  swift_unknownObjectRelease();
}

id sub_10029C22C()
{
  v2 = *((swift_isaMask & *v0) + 0x3E0);
  v3 = *((swift_isaMask & *v0) + 0x3F0);
  v4 = *((swift_isaMask & *v0) + 0x400);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for BaseShelfViewController();
  return objc_msgSendSuper2(&v5, "dealloc", v2, v3, v4);
}

uint64_t sub_10029C2AC(uint64_t a1)
{
  swift_unknownObjectRelease();
}

uint64_t sub_10029C450(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100753494();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1001A7328(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10029C4C4(uint64_t a1)
{
  v22 = sub_1007417F4();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v19[1] = v1;
    v23 = _swiftEmptyArrayStorage;
    sub_10001E5D4(0, v6, 0);
    v7 = v23;
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v20 = *(v8 + 56);
    v21 = v9;
    v11 = (v8 - 8);
    do
    {
      v12 = v22;
      v13 = v8;
      v21(v5, v10, v22);
      v14 = sub_100741784();
      (*v11)(v5, v12);
      v23 = v7;
      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        sub_10001E5D4((v15 > 1), v16 + 1, 1);
        v7 = v23;
      }

      v7[2] = v16 + 1;
      v7[v16 + 4] = v14;
      v10 += v20;
      --v6;
      v8 = v13;
    }

    while (v6);
  }

  v17 = sub_10029C450(v7);

  sub_10029AAA4(v17);
}

void sub_10029C698()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1007450A4();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  if (!v3)
  {
    if (v5)
    {
      sub_100750FC4();
      if (swift_dynamicCastClass())
      {
        return;
      }
    }

    sub_100748BF4();
    sub_100750F94();
    v10 = objc_allocWithZone(sub_100750FC4());
    v11 = sub_100750FB4();
    v12 = *&v1[v4];
    v13 = v11;
    sub_10074B974();

    v14 = *&v1[v4];
    *&v1[v4] = v11;
    v15 = v13;

    v16 = [v1 view];
    if (v16)
    {
      v17 = v16;
      [v16 bounds];

      sub_10074B964();
      sub_100599B24();

      return;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_10074B974();

  v7 = *&v1[v4];
  *&v1[v4] = 0;

  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  [v8 bounds];

  sub_10074B964();

  sub_100599B24();
}

void *sub_10029C96C(void *result)
{
  if (result)
  {
    v2 = [result integerValue];
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_10029CB18;
    *(v5 + 24) = v4;
    v9[4] = sub_100045E0C;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10011B528;
    v9[3] = &unk_10086EF98;
    v6 = _Block_copy(v9);
    v7 = v1;

    [v3 performWithoutAnimation:v6];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10029CAE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10029CB20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10029CB38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10029CB70()
{

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10029CC78(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_100741794() < 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_100741784();
  }

  sub_1005DD194(a1, a2, a3, v7, v3, *&v3[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph]);
}

uint64_t sub_10029CD9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10029CE18()
{
  v1 = sub_1007416B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10029CEDC()
{
  sub_1007416B4();
  v1 = *(v0 + 64);

  sub_10029AEB8(v1);
}

uint64_t sub_10029CF78(uint64_t result)
{
  *(result + 344) = 0x4053000000000000;
  *(result + 352) = 0;
  return result;
}

char *sub_10029CF88(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v9 - 8);
  v11 = v52 - v10 + 16;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  sub_1007433C4();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  v53.receiver = v4;
  v53.super_class = v14;
  v15 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  [v15 setClipsToBounds:1];
  [v15 _setContinuousCornerRadius:20.0];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  [*&v15[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView] setClipsToBounds:1];
  [v15 addSubview:*&v15[v16]];
  v17 = sub_10029D6F8();
  [v15 addSubview:v17];

  v18 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  [*(*&v15[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v19 = qword_100920850;
  v20 = *&v15[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_10029F304();
  sub_10074F4B4();
  v21 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_100055DA8(v52, v20 + v21);
  swift_endAccess();

  v22 = qword_100920858;
  v23 = *&v15[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  sub_10074F4B4();
  v24 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_100055DA8(v52, v23 + v24);
  swift_endAccess();

  v25 = qword_1009204F8;
  v26 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = sub_10074F0C4();
  v28 = sub_10000D0FC(v27, qword_10097E2A8);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v11, v28, v27);
  (*(v29 + 56))(v11, 0, 1, v27);
  sub_100743374();

  v30 = *&v15[v18];
  v31 = objc_opt_self();
  v32 = v30;
  sub_1005A3470([v31 whiteColor]);

  v33 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel);
  v34 = [v31 whiteColor];
  [v33 setTextColor:v34];

  v35 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  sub_10000D198();
  v36 = v35;
  v37 = sub_100753DF4();
  v38 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v39 = [v37 resolvedColorWithTraitCollection:v38];

  [v36 setTextColor:v39];
  v40 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  v41 = [v31 whiteColor];
  [v40 setTintColor:v41];

  v42 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  v43 = [v31 whiteColor];
  [v42 setTextColor:v43];

  v44 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v45 = [v31 whiteColor];
  [v44 setTextColor:v45];

  v46 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v47 = [v31 whiteColor];
  [v46 setTextColor:v47];

  sub_100753094();
  v48 = sub_100753064();

  v49 = [*(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) layer];
  [v49 setCompositingFilter:v48];

  [v15 addSubview:*&v15[v18]];
  return v15;
}

char *sub_10029D6F8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v6 = sub_1000F744C(&off_100861958);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10029D820()
{
  v1 = v0;
  v2 = sub_1007479B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v27[-v8 - 8];

  [v0 bounds];
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  if (qword_100920858 != -1)
  {
    swift_once();
  }

  v10 = [v0 traitCollection];
  [v0 bounds];
  Width = CGRectGetWidth(v31);
  if (sub_100753804())
  {
    v12 = &xmmword_10097F540;
  }

  else
  {
    v12 = &xmmword_10097F3D0;
  }

  sub_100055CF8(v12, v27);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v13 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v13 = qword_10093FF58;
  }

  v14 = sub_10000D0FC(v2, v13);
  (*(v3 + 16))(v5, v14, v2);
  (*(v3 + 32))(v9, v5, v2);
  if ((v30 & 1) == 0 && v28 == 0.0 && v29 == 0.0)
  {
    sub_100747964();
    v16 = v15;
    sub_100747964();
    v28 = v16;
    v29 = v17;
    v30 = 0;
  }

  _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v27, v10, Width);
  v19 = v18;

  (*(v3 + 8))(v9, v2);
  sub_100055D54(v27);
  v20 = v19 + 12.0 + 16.0;
  [v0 bounds];
  MinX = CGRectGetMinX(v32);
  sub_100743314();
  v22 = CGRectGetMaxY(v33) - v20;
  [v0 bounds];
  v23 = CGRectGetWidth(v34);
  v24 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] setLayoutMargins:{12.0, 20.0, 16.0, 20.0}];
  return [v24 setFrame:{MinX, v22, v23, v20}];
}

uint64_t sub_10029DBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v107 = a2;
  v106 = sub_10074F284();
  v98 = *(v106 - 8);
  __chkstk_darwin(v106);
  v97 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v8 - 8);
  v10 = &v90 - v9;
  v11 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v11 - 8);
  v104 = &v90 - v12;
  v13 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v13 - 8);
  v103 = &v90 - v14;
  v15 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v15 - 8);
  v102 = &v90 - v16;
  v17 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v17 - 8);
  v101 = &v90 - v18;
  v19 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v19 - 8);
  v21 = &v90 - v20;
  v22 = sub_10074D734();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v99 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v25 - 8);
  v100 = &v90 - v26;
  v27 = sub_10074F314();
  __chkstk_darwin(v27 - 8);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007442C4();
  sub_100752764();
  v105 = a3;
  sub_100752D34();
  v108 = a1;
  v109 = v110[0];
  v30 = sub_10074E144();
  if (v30)
  {
    v31 = v30;
    v91 = v10;
    v32 = [v3 traitCollection];
    sub_10029EB54(v107, v32);

    v33 = sub_10074F374();
    v34 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
    sub_10074F324();
    v94 = v29;
    sub_100743364();
    [v34 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    v107 = v31;
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();
    [v34 setContentMode:2];
    v35 = sub_1007433C4();
    v36 = sub_10029F358(&qword_100925570, &type metadata accessor for ArtworkView);
    v95 = v33;
    v92 = v36;
    v93 = v35;
    sub_100744204();
    v96 = v4;
    v37 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
    [*&v37[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:0];
    v38 = sub_10074E154();
    v39 = *(v23 + 104);
    v39(v99, enum case for OfferButtonPresenterViewAlignment.right(_:), v22);
    v39(v21, enum case for OfferButtonPresenterViewAlignment.left(_:), v22);
    (*(v23 + 56))(v21, 0, 1, v22);
    sub_10029F358(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
    v40 = v100;
    sub_10074A9C4();
    v41 = sub_10000C518(&unk_10092EEA0);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    v42 = sub_100742E24();
    v43 = v101;
    (*(*(v42 - 8) + 56))(v101, 1, 1, v42);
    v44 = sub_100745E94();
    v45 = v102;
    (*(*(v44 - 8) + 56))(v102, 1, 1, v44);
    v46 = sub_10074F8B4();
    v47 = v103;
    (*(*(v46 - 8) + 56))(v103, 1, 1, v46);
    v48 = sub_10000C518(&unk_100925560);
    v49 = v104;
    (*(*(v48 - 8) + 56))(v104, 1, 1, v48);
    sub_100656038(v38, v37, v40, v105, 0, 0, v43, v45, v47, v49);
    v37[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_1002F3D3C();
    [v37 setNeedsLayout];
    sub_1002F3D3C();

    sub_10000C8CC(v49, &unk_100925990);
    sub_10000C8CC(v47, &unk_100925520);
    sub_10000C8CC(v45, &unk_1009259A0);
    sub_10000C8CC(v43, &unk_100925530);
    sub_10000C8CC(v40, &unk_100925540);
    v50 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
    if (v50)
    {
      v51 = objc_opt_self();
      v52 = v50;
      v53 = [v51 whiteColor];
      [v52 setTextColor:v53];
    }

    v54 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
    v55 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v55)
    {
      v56 = objc_opt_self();
      v57 = v55;
      v58 = [v56 whiteColor];
      [v57 setTextColor:v58];

      v59 = *&v37[v54];
      if (v59)
      {
        v60 = qword_100920F28;
        v61 = v59;
        if (v60 != -1)
        {
          swift_once();
        }

        v62 = sub_100750534();
        v63 = sub_10000D0FC(v62, qword_100980AC8);
        v64 = *(v62 - 8);
        v65 = v91;
        (*(v64 + 16))(v91, v63, v62);
        (*(v64 + 56))(v65, 0, 1, v62);
        sub_100745BA4();

        v66 = *&v37[v54];
        if (v66)
        {
          [v66 setAccessibilityIgnoresInvertColors:1];
        }
      }
    }

    v67 = sub_10074F1E4();
    if (v67)
    {
      v68 = v67;
      v69 = sub_100753EE4();

      if (v69)
      {
        v70 = 2;
      }

      else
      {
        v70 = 1;
      }
    }

    else
    {
      v70 = 2;
    }

    v71 = v106;
    v72 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v73 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
    v74 = objc_opt_self();
    v75 = v73;
    v76 = [v74 systemGray5Color];
    v77 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v70];
    v78 = [v76 resolvedColorWithTraitCollection:v77];

    v79 = [v78 colorWithAlphaComponent:0.35];
    sub_100743224();

    sub_10074E154();
    v80 = sub_10074EF24();

    if (v80)
    {
      if (qword_100920850 != -1)
      {
        swift_once();
      }

      sub_10029F304();
      sub_10074F4B4();
      sub_100055D54(v110);
      v81 = v97;
      sub_10074F294();
      sub_10074F254();
      (*(v98 + 8))(v81, v71);
      sub_10074F374();
      v82 = *&v37[v72];
      sub_10074F324();
      sub_100743364();
      [v82 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_10000D198();
        sub_100753E34();
      }

      sub_100743224();

      [*&v37[v72] setContentMode:1];
      v83 = *&v37[v72];
      sub_100744204();
    }

    v4 = v96;
  }

  v84 = sub_10029D6F8();
  v85 = [v4 backgroundColor];
  v86 = sub_1000F86DC(v85);
  v88 = v87;

  sub_1000F6CC8(2, v86, v88);

  [v4 setNeedsLayout];
}

id sub_10029EA54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10029EB54(uint64_t a1, void *a2)
{
  v3 = sub_1007479B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  sub_10074F5A4();
  v11 = v10;
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  sub_10029F304();
  sub_10074F4B4();
  if (qword_100920858 != -1)
  {
    swift_once();
  }

  sub_10074F4B4();
  if (sub_100753804())
  {
    v12 = v24;
  }

  else
  {
    v12 = v25;
  }

  sub_100055CF8(v12, v20);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v13 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v13 = qword_10093FF58;
  }

  v14 = sub_10000D0FC(v3, v13);
  (*(v4 + 16))(v6, v14, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    sub_100747964();
    v16 = v15;
    sub_100747964();
    v21 = v16;
    v22 = v17;
    v23 = 0;
  }

  v18 = _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, a2, v11);
  (*(v4 + 8))(v9, v3, v18);
  sub_100055D54(v20);
  sub_100055D54(v24);
  sub_100055D54(v25);
  return v11;
}

void sub_10029EE94()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  sub_1007433C4();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100754644();
  __break(1u);
}

uint64_t sub_10029EF5C()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074E164();
  sub_10029F358(&qword_100930290, &type metadata accessor for MediumAdLockupWithAlignedRegionBackground);
  result = sub_1007468B4();
  if (v11)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5A4();
    v5 = *(v1 + 8);
    v5(v3, v0);
    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    sub_100746914();

    v6 = v11;
    sub_10029EB54(v3, v11);

    v5(v3, v0);
    v7 = _swiftEmptyArrayStorage;
    v12 = _swiftEmptyArrayStorage;
    if (sub_10074E144())
    {
      sub_10074F374();
      sub_100753284();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();

      v7 = v12;
    }

    sub_10074E154();
    v8 = sub_10074EF24();

    if (v8)
    {
      if (qword_100920850 != -1)
      {
        swift_once();
      }

      sub_10029F304();
      sub_10074F4B4();
      sub_100055D54(&v11);
      sub_10074F374();

      sub_100753284();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();

      v7 = v12;
    }

    v9._rawValue = v7;
    sub_100744224(v9);
  }

  return result;
}

unint64_t sub_10029F304()
{
  result = qword_100930298;
  if (!qword_100930298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930298);
  }

  return result;
}

uint64_t sub_10029F358(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10029F49C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for VisualEffectContainerView();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25VisualEffectContainerView_embeddedView];
  [v0 bounds];
  [v1 sizeThatFits:{CGRectGetWidth(v10), 1.79769313e308}];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  if (Width < v3)
  {
    v3 = Width;
  }

  [v0 bounds];
  v7 = CGRectGetMidX(v12) - v3 * 0.5;
  [v0 bounds];
  return [v1 setFrame:{v7, CGRectGetMidY(v13) - v5 * 0.5, v3, v5}];
}

id sub_10029F628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualEffectContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10029F690(void *a1, double a2, double a3)
{
  v7 = *(*v3 + OBJC_IVAR____TtC22SubscribePageExtension25VisualEffectContainerView_embeddedView);
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007A5CF0;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_100751044();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

uint64_t sub_10029F770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(void, void, void)@<X8>)
{
  v56 = a3;
  v49 = a2;
  v48 = sub_100746CC4();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100745FF4();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100754724();
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100750304();
  v52 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100750B04();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009207C0 != -1)
  {
    swift_once();
  }

  v20 = sub_100746D34();
  v21 = sub_10000D0FC(v20, qword_10097ED68);
  v22 = *(*(v20 - 8) + 16);
  v53 = a4;
  v22(a4, v21, v20);
  if (!a1)
  {
    goto LABEL_14;
  }

  if (sub_10074F1A4())
  {
    if (qword_1009207B0 != -1)
    {
      swift_once();
    }

    v23 = qword_1009302D8;
    if (sub_10074F1D4())
    {
      v24 = sub_100743AC4();
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((sub_10074F1C4() & 1) == 0)
      {
        goto LABEL_13;
      }

      v24 = sub_10056028C(a1, v23);
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    [v24 size];
    v25 = v53;
    sub_100746D24();
    sub_100753F34();
    sub_100746C84();
    v26 = v25;

    v27 = v52;
    goto LABEL_17;
  }

LABEL_13:

LABEL_14:
  if (qword_100921250 != -1)
  {
    swift_once();
  }

  v28 = sub_100750534();
  v29 = sub_10000D0FC(v28, qword_100981428);
  (*(*(v28 - 8) + 16))(v15, v29, v28);
  v27 = v52;
  v52[13](v15, enum case for FontSource.useCase(_:), v13);
  v61 = v13;
  v62 = &protocol witness table for FontSource;
  v30 = sub_10000D134(v60);
  (v27)[2](v30, v15, v13);
  sub_100750B14();
  (v27[1])(v15, v13);
  sub_1007502D4();
  sub_100750564();
  v54[1](v12, v55);
  v26 = v53;
  sub_100746D24();
  (*(v17 + 8))(v19, v16);
LABEL_17:
  v31 = v50;
  v32 = v51;
  (*(v50 + 16))(v9, v49, v51);
  v33 = (*(v31 + 88))(v9, v32);
  if (v33 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_1002A3144(v26, v56);
  }

  if (v33 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v33 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v61 = &type metadata for Double;
    v62 = &protocol witness table for Double;
    v60[0] = 0;
    sub_100746CD4();
    if (qword_100921710 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v16, qword_1009820B0);
    sub_1007502D4();
    sub_100750564();
    v36 = v35;
    v54[1](v12, v55);
    v61 = &type metadata for CGFloat;
    v62 = &protocol witness table for CGFloat;
    v60[0] = v36;
    sub_100746D04();
    (*(v47 + 104))(v46, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:), v48);
    sub_100746CF4();
    if (qword_1009207A8 != -1)
    {
      swift_once();
    }

    v37 = qword_1009302D0;
    *v15 = qword_1009302D0;
    v56 = v27[13];
    (v56)(v15, enum case for FontSource.textStyle(_:), v13);
    v61 = v16;
    v62 = &protocol witness table for StaticDimension;
    sub_10000D134(v60);
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v38 = sub_10000D134(v57);
    v55 = v27[2];
    v55(v38, v15, v13);
    v39 = v37;
    sub_100750B14();
    v54 = v27[1];
    (v54)(v15, v13);
    sub_100746C94();
    if (qword_100921260 != -1)
    {
      swift_once();
    }

    v40 = sub_100750534();
    v41 = sub_10000D0FC(v40, qword_100981458);
    v53 = *(*(v40 - 8) + 16);
    v53(v15, v41, v40);
    v42 = enum case for FontSource.useCase(_:);
    (v56)(v15, enum case for FontSource.useCase(_:), v13);
    v61 = v16;
    v62 = &protocol witness table for StaticDimension;
    sub_10000D134(v60);
    v52 = v16;
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v43 = sub_10000D134(v57);
    v55(v43, v15, v13);
    sub_100750B14();
    (v54)(v15, v13);
    sub_100746CA4();
    if (qword_100921268 != -1)
    {
      swift_once();
    }

    v44 = sub_10000D0FC(v40, qword_100981470);
    v53(v15, v44, v40);
    (v56)(v15, v42, v13);
    v61 = v52;
    v62 = &protocol witness table for StaticDimension;
    sub_10000D134(v60);
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v45 = sub_10000D134(v57);
    v55(v45, v15, v13);
    sub_100750B14();
    (v54)(v15, v13);
    return sub_100746CB4();
  }

  else
  {
    sub_1002A3144(v26, v56);
    return (*(v31 + 8))(v9, v32);
  }
}

void sub_1002A0224()
{
  if (qword_1009207A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1009302D0;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2];

  qword_1009302D8 = v3;
}

UIColor sub_1002A02BC()
{
  sub_100016C60(0, &qword_100923500);
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_100753EC4(v3, v2).super.isa;
  qword_1009302E0 = result.super.isa;
  return result;
}

uint64_t sub_1002A0350()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100746CC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100746D34();
  sub_100039C50(v8, qword_10097ED68);
  v33 = sub_10000D0FC(v8, qword_10097ED68);
  v9 = *(v5 + 104);
  v34 = v7;
  v9(v7, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:), v4);
  if (qword_1009207A8 != -1)
  {
    swift_once();
  }

  v10 = qword_1009302D0;
  *v3 = qword_1009302D0;
  v11 = v1[13];
  v32 = enum case for FontSource.textStyle(_:);
  v11(v3);
  v38 = sub_100750B04();
  v67[3] = v38;
  v67[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v64);
  v13 = v1 + 2;
  v37 = v1[2];
  v37(v12, v3, v0);
  v14 = v10;
  sub_100750B14();
  v15 = v1[1];
  v35 = v1 + 1;
  v36 = v15;
  v15(v3, v0);
  if (qword_100921258 != -1)
  {
    swift_once();
  }

  v16 = sub_100750534();
  v17 = sub_10000D0FC(v16, qword_100981440);
  v18 = *(*(v16 - 8) + 16);
  v18(v3, v17, v16);
  v19 = enum case for FontSource.useCase(_:);
  (v11)(v3, enum case for FontSource.useCase(_:), v0);
  v65 = v38;
  v66 = &protocol witness table for StaticDimension;
  sub_10000D134(v64);
  v31 = v11;
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v61);
  v37(v20, v3, v0);
  sub_100750B14();
  v36(v3, v0);
  if (qword_100921268 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v16, qword_100981470);
  v18(v3, v21, v16);
  v22 = v31;
  (v31)(v3, v19, v0);
  v23 = v38;
  v62 = v38;
  v63 = &protocol witness table for StaticDimension;
  sub_10000D134(v61);
  *(&v59 + 1) = v0;
  v60 = &protocol witness table for FontSource;
  v24 = sub_10000D134(&v58);
  v25 = v37;
  v37(v24, v3, v0);
  sub_100750B14();
  v30 = v13;
  v26 = v36;
  v36(v3, v0);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  *v3 = UIFontTextStyleBody;
  (v22)(v3, v32, v0);
  v57[3] = v23;
  v57[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v0;
  v56 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v54);
  v25(v27, v3, v0);
  v28 = UIFontTextStyleBody;
  sub_100750B14();
  v26(v3, v0);
  v55 = &type metadata for Double;
  v56 = &protocol witness table for Double;
  v53 = &protocol witness table for Double;
  v54[0] = 0x402A000000000000;
  v52 = &type metadata for Double;
  v50 = &protocol witness table for Double;
  v51 = 0x4034000000000000;
  v49 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  v48 = 0x4034000000000000;
  v46 = &type metadata for Double;
  v44 = &protocol witness table for Double;
  v45 = 0x4034000000000000;
  v43 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v42 = 0x4024000000000000;
  v40 = &type metadata for Double;
  v39 = 0x403E000000000000;
  return sub_100746CE4();
}

id sub_1002A0934()
{
  v1 = v0;
  v24 = sub_10074AB44();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100745FF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v22[-v11];
  v13 = [v0 traitCollection];
  v14 = sub_100753804();

  if ((v14 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v6 + 16))(v12, &v1[v15], v5);
    (*(v6 + 104))(v8, enum case for PrivacyTypeStyle.detailPage(_:), v5);
    sub_1002A3A68();
    sub_100753274();
    sub_100753274();
    if (v27 == v25 && v28 == v26)
    {
      v16 = *(v6 + 8);
      v16(v8, v5);
      v16(v12, v5);
    }

    else
    {
      v23 = sub_100754754();
      v17 = *(v6 + 8);
      v17(v8, v5);
      v17(v12, v5);

      if ((v23 & 1) == 0)
      {
        [*&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_titleLabel] setTextAlignment:1];
        [*&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_detailLabel] setTextAlignment:1];
        return [v1 setNeedsLayout];
      }
    }
  }

  v18 = enum case for DirectionalTextAlignment.leading(_:);
  v19 = *(v2 + 104);
  v20 = v24;
  v19(v4, enum case for DirectionalTextAlignment.leading(_:), v24);
  sub_100745BF4();
  v19(v4, v18, v20);
  sub_100745BF4();
  return [v1 setNeedsLayout];
}

id sub_1002A0CFC(void *a1)
{
  v2 = v1;
  v4 = sub_100743584();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100932560);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_shadowView];
  if (v12)
  {
    v13 = qword_1009204A8;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_10074F0C4();
    v16 = sub_10000D0FC(v15, qword_10097E1B8);
    v17 = *(v15 - 8);
    (*(v17 + 16))(v11, v16, v15);
    (*(v17 + 56))(v11, 0, 1, v15);
    sub_100743014();
    (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
    sub_100743024();
    (*(v5 + 8))(v7, v4);
    v18 = [v2 contentView];
    [v18 insertSubview:v14 atIndex:0];
  }

  return [v2 setNeedsLayout];
}

id sub_1002A0F7C(void *a1)
{
  v2 = v1;
  v4 = sub_100743584();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (v9)
  {
    v10 = qword_1009207B8;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    [v11 setBackgroundColor:qword_1009302E0];
    (*(v5 + 104))(v8, enum case for CornerStyle.continuous(_:), v4);
    sub_100746E34();
    (*(v5 + 8))(v8, v4);
    v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_shadowView];
    if (v12)
    {
      v13 = v12;
      v14 = [v2 contentView];
      [v14 insertSubview:v11 aboveSubview:v13];
    }

    else
    {
      v14 = [v2 contentView];
      [v14 insertSubview:v11 atIndex:0];
    }
  }

  return [v2 setNeedsLayout];
}

void sub_1002A1184()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categories];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:
    [v0 setNeedsLayout];
    return;
  }

  v2 = sub_100754664();
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categoryViews;
    v7 = v1 & 0xC000000000000001;
    v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_contentContainerView];

    v4 = 0;
    do
    {
      if (v7)
      {
        v5 = sub_100754574();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_10000C518(&qword_100930370);
      sub_1007512B4();
      swift_endAccess();
      *&v9[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category] = v5;
      swift_retain_n();

      sub_1002E8FB4();

      [v8 addSubview:v9];
      swift_beginAccess();
      v6 = v9;
      sub_100753284();
      if (*((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      ++v4;
      sub_100753344();
      swift_endAccess();
    }

    while (v2 != v4);

    goto LABEL_12;
  }

  __break(1u);
}

id sub_1002A13B4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_1002A1400()
{
  v1 = v0;
  v2 = sub_100751344();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v4 - 8);
  v57 = &v50 - v5;
  v6 = sub_10000C518(&qword_100933250);
  __chkstk_darwin(v6 - 8);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v50 - v9;
  v10 = sub_100745FF4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  v17 = *(v11 + 16);
  v17(v15, &v1[v16], v10);
  v54 = v11;
  v18 = *(v11 + 88);
  v19 = v18(v15, v10);
  v20 = enum case for PrivacyTypeStyle.productPage(_:);
  if (v19 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    sub_1002A3654(v1);
    v21 = v1;
  }

  else if (v19 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v19 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v21 = v1;
    sub_1002A1C1C(v1);
  }

  else
  {
    sub_1002A3654(v1);
    v23 = v15;
    v21 = v1;
    (*(v54 + 8))(v23, v10);
  }

  v24 = v56;
  v17(v56, &v21[v16], v10);
  v25 = v18(v24, v10);
  if (v25 == v20)
  {
    v26 = sub_100751374();
    v27 = v55;
    (*(*(v26 - 8) + 56))(v55, 1, 1, v26);
    v28 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_separator;
    swift_beginAccess();
    sub_1002A39F8(v27, &v21[v28]);
    swift_endAccess();
    sub_1002A1CE0();
    sub_10000C8CC(v27, &qword_100933250);
    if (qword_100921258 != -1)
    {
      swift_once();
    }

    v29 = sub_100750534();
    v30 = v29;
    v31 = qword_100981440;
LABEL_23:
    v46 = sub_10000D0FC(v29, v31);
    v47 = *(v30 - 8);
    v48 = v57;
    (*(v47 + 16))(v57, v46, v30);
    (*(v47 + 56))(v48, 0, 1, v30);
    sub_100745BA4();
    goto LABEL_24;
  }

  if (v25 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v25 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v39 = v21;
    v40 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_separator;
    swift_beginAccess();
    v41 = v53;
    sub_100229A24(&v39[v40], v53);
    v42 = sub_100751374();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v41, 1, v42);
    sub_10000C8CC(v41, &qword_100933250);
    if (v44 == 1)
    {
      (*(v50 + 104))(v52, enum case for Separator.Position.top(_:), v51);
      v58[3] = sub_1007507D4();
      v58[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v58);
      sub_1007507C4();
      v45 = v55;
      sub_100751354();
      (*(v43 + 56))(v45, 0, 1, v42);
      swift_beginAccess();
      sub_1002A39F8(v45, &v39[v40]);
      swift_endAccess();
      sub_1002A1CE0();
      sub_10000C8CC(v45, &qword_100933250);
    }

    v21 = v39;
    if (qword_100921260 != -1)
    {
      swift_once();
    }

    v29 = sub_100750534();
    v30 = v29;
    v31 = qword_100981458;
    goto LABEL_23;
  }

  v32 = sub_100751374();
  v33 = v55;
  (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
  v34 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_separator;
  swift_beginAccess();
  sub_1002A39F8(v33, &v21[v34]);
  swift_endAccess();
  sub_1002A1CE0();
  sub_10000C8CC(v33, &qword_100933250);
  if (qword_100921258 != -1)
  {
    swift_once();
  }

  v35 = sub_100750534();
  v36 = sub_10000D0FC(v35, qword_100981440);
  v37 = *(v35 - 8);
  v38 = v57;
  (*(v37 + 16))(v57, v36, v35);
  (*(v37 + 56))(v38, 0, 1, v35);
  sub_100745BA4();
  (*(v54 + 8))(v24, v10);
LABEL_24:
  sub_1002A0934();
  return [v21 setNeedsLayout];
}

id sub_1002A1C1C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_shadowView);
  *(a1 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_shadowView) = 0;
  sub_1002A0CFC(v2);

  v3 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_roundedCornerView);
  if (v3)
  {
    [v3 setHidden:1];
  }

  v4 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_contentContainerView);
  sub_100016C60(0, &qword_100923500);
  v5 = sub_100753E04();
  [v4 setBackgroundColor:v5];

  return [v4 _setContinuousCornerRadius:0.0];
}

id sub_1002A1CE0()
{
  v1 = sub_10000C518(&qword_100933250);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_100751374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_separator;
  swift_beginAccess();
  sub_100229A24(&v0[v11], v3);
  v12 = &stru_1008F2000;
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000C8CC(v3, &qword_100933250);
    v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_separatorView];
    if (v13)
    {
      [v13 setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v14 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_separatorView;
    v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_separatorView];
    if (v15)
    {
      (*(v5 + 16))(v7, v10, v4);
      v16 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
      swift_beginAccess();
      v17 = *(v5 + 24);
      v18 = v15;
      v17(&v15[v16], v7, v4);
      swift_endAccess();
      v19 = v18;
      v12 = &stru_1008F2000;
      [v19 setNeedsLayout];
      v20 = *(v5 + 8);
      v20(v7, v4);
      [v19 setHidden:0];

      v20(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v21 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v22 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
      swift_beginAccess();
      v29 = *(v5 + 40);
      v23 = v21;
      v29(&v21[v22], v7, v4);
      swift_endAccess();

      v24 = *&v0[v14];
      if (v24)
      {
        [v24 removeFromSuperview];
        v25 = *&v0[v14];
      }

      else
      {
        v25 = 0;
      }

      *&v0[v14] = v23;
      v26 = v23;

      [*&v0[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_contentContainerView] addSubview:v26];
      v12 = &stru_1008F2000;
      [v0 setNeedsLayout];

      (*(v5 + 8))(v10, v4);
    }
  }

  return [v0 v12[51].attr];
}

uint64_t sub_1002A20C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100745FF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100746D34();
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100746D54();
  v53 = *(v55 - 8);
  *&v12 = __chkstk_darwin(v55).n128_u64[0];
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v12);
  v14 = [v1 contentView];
  v15 = sub_100016C60(0, &qword_100922300);
  sub_1007477B4();

  v16 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  v17 = *(v6 + 16);
  v49 = v6 + 16;
  v50 = v16;
  v48 = v17;
  v17(v8, &v1[v16], v5);

  v52 = v11;
  sub_10029F770(v18, v8, v1, v11);

  v19 = *(v6 + 8);
  v54 = v5;
  v19(v8, v5);
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_shadowView];
  v47 = v20;
  if (v20)
  {
    v21 = sub_100743034();
    v22 = &protocol witness table for UIView;
    v23 = v20;
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v82 = 0;
    v83 = 0;
  }

  v81 = v23;
  v84 = v21;
  v85 = v22;
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (v24)
  {
    v25 = sub_100746ED4();
    v26 = &protocol witness table for UIView;
    v27 = v24;
  }

  else
  {
    v27 = 0;
    v25 = 0;
    v26 = 0;
    v77 = 0;
    v78 = 0;
  }

  v76 = v27;
  v79 = v25;
  v80 = v26;
  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_contentContainerView];
  v74 = v15;
  v75 = &protocol witness table for UIView;
  v73 = v28;
  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_separatorView];
  if (v29)
  {
    v30 = type metadata accessor for SeparatorView();
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v29;
  v71 = v30;
  v72 = v31;
  v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_iconView];
  v66 = sub_1007433C4();
  v67 = &protocol witness table for UIView;
  v65 = v32;
  v33 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_titleLabel];
  v63 = sub_100745C84();
  v64 = &protocol witness table for UILabel;
  v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_detailLabel];
  v61 = &protocol witness table for UILabel;
  v62 = v33;
  v60 = v63;
  v59 = v34;
  v35 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categoryViews;
  swift_beginAccess();
  v36 = *&v1[v35];
  v37 = v24;
  v38 = v28;
  v39 = v29;
  v40 = v32;
  v41 = v33;
  v42 = v34;

  v43 = v47;
  sub_1001580AC(v36);

  v48(v8, &v1[v50], v54);
  v44 = v51;
  sub_100746D44();
  v45 = v56;
  sub_100746C74();
  (*(v57 + 8))(v45, v58);
  return (*(v53 + 8))(v44, v55);
}

id sub_1002A2820(uint64_t a1, double a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_roundedCornerView);
  if (v4)
  {
    [v4 setAlpha:a2];
  }

  result = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_shadowView);
  if (result)
  {

    return [result setAlpha:a2];
  }

  return result;
}

uint64_t type metadata accessor for PrivacyTypeCollectionViewCell()
{
  result = qword_100930348;
  if (!qword_100930348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A2B28()
{
  sub_1002296F8(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_1002A2CD0();
    if (v1 <= 0x3F)
    {
      sub_100745FF4();
      if (v2 <= 0x3F)
      {
        sub_1002296F8(319, &qword_10092F000, &type metadata accessor for Separator);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1002A2CD0()
{
  if (!qword_100930358)
  {
    sub_10000C724(&qword_100930360);
    sub_1002A2D40();
    v0 = sub_1007512F4();
    if (!v1)
    {
      atomic_store(v0, &qword_100930358);
    }
  }
}

unint64_t sub_1002A2D40()
{
  result = qword_100930368;
  if (!qword_100930368)
  {
    sub_10000C724(&qword_100930360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930368);
  }

  return result;
}

void sub_1002A2DA4()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1002A3B30;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000CF7B0;
  v5[3] = &unk_10086F1F8;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_1002A2E8C()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1002A3AF8;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000CF7B0;
  v5[3] = &unk_10086F1A8;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.4];
  _Block_release(v3);
}

void *sub_1002A2F78()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_contentContainerView);
  v2 = v1;
  return v1;
}

id sub_1002A2FA8(char *a1)
{
  v2 = sub_100745FF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  (*(v3 + 16))(v5, &a1[v6], v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_1002A3654(a1);
  }

  if (v7 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v7 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    return sub_1002A1C1C(a1);
  }

  sub_1002A3654(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1002A3144(uint64_t a1, void *a2)
{
  v4 = sub_100750304();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100746CC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v35[0] = 0x4024000000000000;
  sub_100746CD4();
  v36 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v35[0] = 0x402E000000000000;
  sub_100746D04();
  v11 = [a2 traitCollection];
  LOBYTE(a2) = sub_100753804();

  v12 = &enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:);
  if ((a2 & 1) == 0)
  {
    v12 = &enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:);
  }

  (*(v8 + 104))(v10, *v12, v7);
  sub_100746CF4();
  if (qword_1009207A8 != -1)
  {
    swift_once();
  }

  v13 = qword_1009302D0;
  *v6 = qword_1009302D0;
  v14 = v31;
  v30 = *(v31 + 104);
  v30(v6, enum case for FontSource.textStyle(_:), v4);
  v29 = sub_100750B04();
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000D134(v32);
  v28 = *(v14 + 16);
  v28(v15, v6, v4);
  v16 = v13;
  sub_100750B14();
  v17 = *(v14 + 8);
  v31 = v14 + 8;
  v27 = v17;
  v17(v6, v4);
  sub_100746C94();
  v26 = a1;
  if (qword_100921258 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_100981440);
  v20 = *(*(v18 - 8) + 16);
  v20(v6, v19, v18);
  v21 = enum case for FontSource.useCase(_:);
  v30(v6, enum case for FontSource.useCase(_:), v4);
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v32);
  v28(v22, v6, v4);
  sub_100750B14();
  v27(v6, v4);
  sub_100746CA4();
  if (qword_100921268 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v18, qword_100981470);
  v20(v6, v23, v18);
  v30(v6, v21, v4);
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v24 = sub_10000D134(v32);
  v28(v24, v6, v4);
  sub_100750B14();
  v27(v6, v4);
  return sub_100746CB4();
}

id sub_1002A3654(char *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_shadowView;
  v3 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_shadowView];
  if (v3)
  {
    goto LABEL_2;
  }

  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v8 != 2)
  {
    sub_100743034();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *&a1[v2];
    *&a1[v2] = v9;
    v10 = v9;
    sub_1002A0CFC(v4);

    goto LABEL_7;
  }

  v3 = *&a1[v2];
  if (v3)
  {
LABEL_2:
    v4 = v3;
    v5 = [a1 traitCollection];
    v6 = [v5 userInterfaceStyle];

    [v4 setHidden:v6 == 2];
LABEL_7:
  }

  v11 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_contentContainerView];
  if (qword_1009207B8 != -1)
  {
    swift_once();
  }

  [v11 setBackgroundColor:qword_1009302E0];
  [v11 _setContinuousCornerRadius:20.0];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_roundedCornerView;
  result = *&a1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (result || (sub_100746ED4(), v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], v15 = *&a1[v12], *&a1[v12] = v14, v16 = v14, sub_1002A0F7C(v15), v16, v15, (result = *&a1[v12]) != 0))
  {

    return [result setHidden:0];
  }

  return result;
}

uint64_t sub_1002A3850()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categoryViews;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = sub_100754664();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {

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
      swift_beginAccess();
      sub_10000C518(&qword_100930370);
      sub_1007512D4();
      swift_endAccess();
      *&v8[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category] = 0;

      sub_1002E8FB4();
      v10.value.super.isa = 0;
      v10.is_nil = 0;
      sub_100743384(v10, v9);
      [v8 removeFromSuperview];
    }

    while (v5 != v6);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}