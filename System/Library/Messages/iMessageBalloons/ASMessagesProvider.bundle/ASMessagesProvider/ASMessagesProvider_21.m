void sub_25CE34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v17 = sub_765240();
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

        sub_765250();
        sub_765210();
        (*(v6 + 8))(v8, v17);
        sub_765330();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = v11;
        v15 = a2;
        sub_75A040();

        sub_10A2C(v20, &unk_9443A0);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

void sub_25D054(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1)
  {
    v7 = a1;
    sub_44C804(v7, a6);
  }
}

uint64_t sub_25D0AC(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_765240();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_764CF0();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_766690();
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766EB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v75);
  sub_BD88(&unk_93F520);
  sub_75F330();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v63 = v6;
  v64 = v5;
  v17 = v74;
  sub_75D310();
  sub_7688F0();
  v66 = v2;
  v67 = *&v75[0];
  v18 = [v2 traitCollection];
  if (qword_93C790 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v19 = v70;
    v20 = sub_BE38(v70, qword_99BC40);
    (*(v69 + 2))(v11, v20, v19);
    sub_766EC0();
    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_77D9F0;
    *(v21 + 32) = v18;
    v22 = v18;
    v23 = sub_7671E0();
    sub_7665A0();
    v25 = v24;
    v27 = v26;

    (*(v13 + 8))(v15, v12);
    v28 = sub_75F2C0();
    v30 = v66;
    if (!v28)
    {
      goto LABEL_11;
    }

    v13 = v28;
    v31 = *&v66[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_artworkGrid];
    if (!v31)
    {

LABEL_11:
      if (sub_75F280())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v42 = Strong;
          sub_764BC0();
          sub_765330();

          type metadata accessor for VideoView();
          v43 = &unk_93F530;
          v44 = type metadata accessor for VideoView;
LABEL_40:
          sub_25F468(v43, 255, v44);
          sub_75A050();

          goto LABEL_41;
        }
      }

      if (sub_75F2B0())
      {
        v51 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialArtworkView];
        if (v51)
        {
          v52 = v51;
          [v52 setContentMode:2];
          sub_765320();
          sub_759210();
          sub_25F468(&qword_945810, 255, &type metadata accessor for ArtworkView);
          sub_75A050();

          goto LABEL_41;
        }
      }

      if (!sub_75F270())
      {
LABEL_42:
      }

      v61 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconArtworkView];
      if (v61)
      {
        v42 = v61;
        sub_765260();
        sub_7666A0();
        sub_766610();
        (*(v69 + 1))(v11, v70);
        v62 = v65;
        sub_765250();
        sub_765210();
        (*(v63 + 8))(v62, v64);
        sub_765330();
        sub_7652E0();
        sub_7591B0();
        [v42 setContentMode:sub_765140()];
        sub_75DEF0();
        sub_7591F0();
        if (!sub_7651A0())
        {
          sub_BE70(0, &qword_93E540);
          sub_76A030();
        }

        sub_759070();
        sub_759210();
        v43 = &qword_945810;
        v44 = &type metadata accessor for ArtworkView;
        goto LABEL_40;
      }

LABEL_41:

      goto LABEL_42;
    }

    v32 = v31[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType];
    v29.f64[0] = v25;
    v33 = sub_44C77C(v32, v29, v27);
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
    v39 = sub_7B800(0, v15 + 1, 1, v13);
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
        v39 = sub_7B800(v49 > 1, v12 + 1, 1, v39);
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
  v35 = sub_44C77C(v32, v34, v27);
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
    sub_4A61D4(v13, v13 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), 0, (2 * v35) | 1);
    v39 = v38;
    v40 = v31;
  }

LABEL_30:
  *&v31[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages] = *(v39 + 16);
  sub_44CD50();
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
    sub_25F468(&qword_94B8A8, v57, type metadata accessor for EditorialSearchResultContentView);
    v58 = v31;
    swift_retain_n();
    v59 = v58;

    v60 = v30;
    sub_76A6E0();
    sub_75D2E0();

    sub_10A2C(&v74, &unk_9443A0);
  }

  else
  {

    v76 = 0;
    memset(v75, 0, sizeof(v75));
  }

  return sub_10A2C(v75, &unk_9443A0);
}

id sub_25DC18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_25DD5C(void *a1)
{
  sub_25ECB0();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 addSubview:Strong];
  }

  [v1 setNeedsLayout];
}

uint64_t (*sub_25DDE8(uint64_t **a1))()
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
  v2[4] = sub_2592F0(v2);
  return sub_21028;
}

uint64_t sub_25DE5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_25DEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_25DF1C(uint64_t *a1))()
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

uint64_t sub_25E0DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_25F468(&qword_94B898, a2, type metadata accessor for EditorialSearchResultContentView);
  result = sub_25F468(&qword_94B8A0, v3, type metadata accessor for EditorialSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25E160()
{
  v0 = sub_76A920();
  v40 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_766CA0();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7666D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75DAB0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_7656C0();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v46 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F330();
  sub_25F468(&qword_956680, 255, &type metadata accessor for EditorialSearchResult);
  result = sub_75C750();
  v45 = v47[0];
  if (v47[0])
  {
    sub_75C720();
    if (qword_93D050 != -1)
    {
      swift_once();
    }

    v36 = v0;

    sub_765660();
    v35[2] = sub_75F2A0();
    v42 = v13;
    v35[0] = sub_75F300();
    v15 = v14;
    v35[1] = sub_75F310();
    v43 = v16;
    v17 = sub_527DE4();
    sub_765630();
    sub_769DA0();
    if (qword_93C7B0 != -1)
    {
      swift_once();
    }

    sub_BE38(v6, qword_99BC80);
    if (qword_93C7C8 != -1)
    {
      swift_once();
    }

    sub_BE38(v3, qword_99BCC8);
    v41 = v15;
    if (v15)
    {
      v18 = sub_7653B0();
      v48 = v18;
      v49 = sub_25F468(&qword_93F9B0, 255, &type metadata accessor for Feature);
      v19 = sub_B1B4(v47);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
      sub_765C30();
      sub_BEB8(v47);
      sub_762CB0();
      sub_766720();
    }

    v20 = v43;
    v21 = v37;
    if (qword_93C7B8 != -1)
    {
      swift_once();
    }

    v22 = sub_BE38(v6, qword_99BC98);
    (*(v7 + 16))(v44, v22, v6);
    if (qword_93C7D0 != -1)
    {
      swift_once();
    }

    v23 = sub_BE38(v3, qword_99BCE0);
    (*(v21 + 16))(v5, v23, v3);
    if (v20)
    {
      v24 = sub_7653B0();
      v48 = v24;
      v49 = sub_25F468(&qword_93F9B0, 255, &type metadata accessor for Feature);
      v25 = sub_B1B4(v47);
      (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
      sub_765C30();
      sub_BEB8(v47);
      v26 = v44;
      sub_762CB0();
      sub_766720();
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v26, v6);
    }

    else
    {
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v44, v6);
    }

    if (qword_93C7A8 != -1)
    {
      swift_once();
    }

    sub_BE38(v6, qword_99BC68);
    v27 = v42;
    if (qword_93C7C0 != -1)
    {
      swift_once();
    }

    sub_BE38(v3, qword_99BCB0);
    if (v27)
    {
      v28 = sub_7653B0();
      v48 = v28;
      v49 = sub_25F468(&qword_93F9B0, 255, &type metadata accessor for Feature);
      v29 = sub_B1B4(v47);
      (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
      sub_765C30();
      sub_BEB8(v47);
      sub_762CB0();
      sub_766720();
    }

    v30 = [v17 traitCollection];
    sub_766470();
    sub_BE70(0, &qword_93F900);
    v31 = sub_769E10();
    sub_766C70();
    sub_769E20();

    v32 = *(v40 + 8);
    v33 = v36;
    v32(v2, v36);
    if (qword_93DCE0 != -1)
    {
      swift_once();
    }

    sub_BE38(v3, qword_99FDE8);
    sub_766470();
    sub_766700();
    v32(v2, v33);
    if (qword_93C790 != -1)
    {
      swift_once();
    }

    v34 = sub_766690();
    sub_BE38(v34, qword_99BC40);
    sub_766650();
    sub_766660();
    swift_unknownObjectRelease();

    return (*(v38 + 8))(v46, v39);
  }

  return result;
}

void sub_25ECB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_25F468(&qword_93F500, 255, type metadata accessor for VideoView);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_BE70(0, &qword_93E550);
      v4 = v0;
      v5 = sub_76A1C0();

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

id sub_25EDE8(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconBackingView;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconBackingView];
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
    if (qword_93C7A0 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_99BC60];

    [v1 addSubview:v7];
    v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconArtworkView];
    if (v8)
    {
      v9 = v8;
      [v1 addSubview:v9];
    }
  }

  return [v1 setNeedsLayout];
}

id sub_25EF14(void *a1)
{
  v2 = v1;
  v4 = sub_7593D0();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconArtworkView];
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
    sub_75CD70();
    (*(v5 + 104))(v8, enum case for CornerStyle.arc(_:), v4);
    v13 = sub_75CD60();
    sub_25EDE8(v13);

    v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconBackingView];
    if (v14)
    {
      v15 = v14;
      [v15 addSubview:v12];
    }
  }

  else
  {
    v16 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconBackingView;
    v17 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconBackingView];
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

id sub_25F0DC(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_artworkGrid;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_artworkGrid];
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
    v6[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_showBorder] = 1;
    [*&v6[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_imageBorderView] setHidden:0];
    v7 = v6;
    [v7 _setCornerRadius:20.0];
    [v7 setNeedsLayout];
    if (qword_93C798 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_99BC58];

    [v1 addSubview:v7];
  }

  return [v1 setNeedsLayout];
}

void sub_25F218()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView____lazy_storage___editorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_showEditorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_editorialArtworkView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_iconBackingView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_artworkGrid) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_appEventStoryFormattedDateView) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_25F2DC()
{
  sub_75D310();
  sub_7688F0();
  if (v6[0])
  {
    type metadata accessor for EditorialSearchResultContentView();
    sub_25F468(&qword_94B8A8, v1, type metadata accessor for EditorialSearchResultContentView);

    v2 = v0;
    sub_76A6E0();
    sub_75D300();

    sub_1EB60(v6);
  }

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32EditorialSearchResultContentView_artworkGrid];
  if (v3)
  {
    v4 = v3;
    sub_432010();
  }
}

uint64_t sub_25F3E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_25F42C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_25F468(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_25F4B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_25F508()
{
  v0 = sub_768E60();
  sub_161DC(v0, qword_99BCF8);
  sub_BE38(v0, qword_99BCF8);
  return sub_768E50();
}

uint64_t sub_25F5C0()
{
  v22 = sub_764A60();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765580();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = sub_75DA30();
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v16 = v11;
  *(v16 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v15[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v13;
  v23.receiver = v15;
  v23.super_class = v14;
  v17 = objc_msgSendSuper2(&v23, "init");
  sub_75DA20();
  sub_765630();
  v12(v9, v6);
  sub_218A74(v17);

  sub_75DA70();
  sub_764A30();
  sub_25F8AC(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v18 = v22;
  sub_76A520();
  v19 = *(v0 + 8);
  v19(v2, v18);
  return (v19)(v5, v18);
}

uint64_t sub_25F8AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F8F4()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_99BD10);
  sub_BE38(v0, qword_99BD10);
  return sub_768800();
}

char *sub_25F96C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_7689F0();
  sub_7689C0();
  if (qword_93C7E0 != -1)
  {
    swift_once();
  }

  v10 = sub_BD88(&unk_945000);
  sub_BE38(v10, qword_99BD10);
  sub_7686D0();

  if (v25 == 2 || (v25 & 1) == 0)
  {
    v11 = type metadata accessor for SemiLightMaterialView();
  }

  else
  {
    v11 = type metadata accessor for AccessoryDarkMaterialView();
  }

  v12 = [objc_allocWithZone(v11) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_materialView] = v12;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_topBackgroundView;
  type metadata accessor for InteractiveBackgroundContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_bottomBackgroundView;
  *&v5[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_currentState;
  v17 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  v24.receiver = v5;
  v24.super_class = type metadata accessor for InteractiveSectionBackgroundView();
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  sub_BE70(0, &qword_93E540);
  v19 = v18;
  v20 = sub_76A000();
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_bottomBackgroundView;
  [*&v19[OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_bottomBackgroundView] setBackgroundColor:0];
  [v19 addSubview:*&v19[v21]];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_topBackgroundView;
  [*&v19[OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_topBackgroundView] setBackgroundColor:0];
  [*&v19[v22] setAlpha:1.0];
  [v19 addSubview:*&v19[v22]];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_materialView]];

  return v19;
}

id sub_25FC68()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for InteractiveSectionBackgroundView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_materialView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_topBackgroundView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_bottomBackgroundView];
  [v0 bounds];
  return [v3 setFrame:?];
}

uint64_t sub_25FD6C()
{
  v1 = v0;
  v2 = sub_BD88(&qword_94A490);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for InteractiveSectionBackgroundView();
  v10.receiver = v0;
  v10.super_class = v5;
  objc_msgSendSuper2(&v10, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_topBackgroundView] setBackgroundColor:0];
  sub_759190();
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_bottomBackgroundView] setBackgroundColor:0];
  sub_759190();
  v6 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  sub_11CBF0(v4, &v1[v7]);
  return swift_endAccess();
}

uint64_t sub_25FF24(uint64_t a1)
{
  v136 = a1;
  v113 = sub_766690();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v107 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_75B660();
  v130 = *(v2 - 8);
  __chkstk_darwin(v2);
  v114 = (&v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v115 = (&v107 - v5);
  __chkstk_darwin(v6);
  v110 = &v107 - v7;
  v131 = sub_BD88(&qword_94B998);
  __chkstk_darwin(v131);
  v128 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v107 - v10;
  v12 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&qword_94A490);
  __chkstk_darwin(v16 - 8);
  v123 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v122 = &v107 - v19;
  __chkstk_darwin(v20);
  v22 = &v107 - v21;
  v23 = sub_BD88(&qword_94B9A0);
  __chkstk_darwin(v23 - 8);
  v109 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v127 = &v107 - v26;
  __chkstk_darwin(v27);
  v126 = &v107 - v28;
  __chkstk_darwin(v29);
  v108 = &v107 - v30;
  __chkstk_darwin(v31);
  v33 = &v107 - v32;
  __chkstk_darwin(v34);
  v36 = &v107 - v35;
  sub_75A110();
  sub_768900();
  v37 = v137;
  sub_768ED0();
  v129 = v138;
  v38 = OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  v132 = v38;
  sub_1ED18(&v37[v38], v22, &qword_94A490);
  v124 = v13;
  v39 = *(v13 + 48);
  v134 = v12;
  v119 = v13 + 48;
  v118 = v39;
  v40 = v39(v22, 1, v12);
  v125 = v15;
  if (v40)
  {
    sub_10A2C(v22, &qword_94A490);
    v41 = v130;
    v42 = *(v130 + 56);
    v43 = (v130 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v36, 1, 1, v2);
    v44 = *(v41 + 16);
    v45 = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    sub_11CB8C(v22, v15);
    sub_10A2C(v22, &qword_94A490);
    v41 = v130;
    v44 = *(v130 + 16);
    v45 = (v130 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v36, v15, v2);
    sub_205CA0(v15);
    v42 = *(v41 + 56);
    v43 = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v36, 0, 1, v2);
  }

  v133 = v44;
  v135 = v45;
  v44(v33, v136, v2);
  v121 = v42;
  v120 = v43;
  v42(v33, 0, 1, v2);
  v46 = *(v131 + 48);
  sub_1ED18(v36, v11, &qword_94B9A0);
  sub_1ED18(v33, &v11[v46], &qword_94B9A0);
  v47 = v41;
  v48 = *(v41 + 48);
  v49 = v48(v11, 1, v2);
  v117 = v48;
  v116 = v41 + 48;
  if (v49 == 1)
  {
    sub_10A2C(v33, &qword_94B9A0);
    sub_10A2C(v36, &qword_94B9A0);
    v50 = v41;
    if (v48(&v11[v46], 1, v2) == 1)
    {
      sub_10A2C(v11, &qword_94B9A0);
      v51 = v127;
      v52 = v128;
      v53 = v125;
      v54 = v126;
      v55 = v133;
      v56 = v134;
      goto LABEL_18;
    }
  }

  else
  {
    v107 = v36;
    v57 = v108;
    sub_1ED18(v11, v108, &qword_94B9A0);
    if (v48(&v11[v46], 1, v2) != 1)
    {
      v69 = v41;
      v70 = v110;
      (*(v41 + 32))(v110, &v11[v46], v2);
      sub_262140(&qword_9439F8, &type metadata accessor for ShelfBackground);
      v71 = sub_7691C0();
      v72 = *(v47 + 8);
      v72(v70, v2);
      sub_10A2C(v33, &qword_94B9A0);
      sub_10A2C(v107, &qword_94B9A0);
      v72(v57, v2);
      v50 = v69;
      v56 = v134;
      sub_10A2C(v11, &qword_94B9A0);
      v51 = v127;
      v52 = v128;
      v53 = v125;
      v54 = v126;
      v55 = v133;
      if (v71)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    sub_10A2C(v33, &qword_94B9A0);
    sub_10A2C(v107, &qword_94B9A0);
    v50 = v41;
    (*(v41 + 8))(v57, v2);
  }

  sub_10A2C(v11, &qword_94B998);
  v51 = v127;
  v52 = v128;
  v54 = v126;
  v55 = v133;
LABEL_10:
  v58 = *&v137[OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_topBackgroundView];
  v59 = v115;
  v55(v115, v136, v2);
  v60 = (*(v50 + 88))(v59, v2);
  if (v60 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v50 + 96))(v59, v2);
    v61 = *(sub_BD88(&qword_94B9A8) + 48);
    type metadata accessor for InteractiveBackgroundContentView();
    sub_262140(&qword_94B9B0, type metadata accessor for InteractiveBackgroundContentView);
    sub_75A0C0();
    sub_759190();
    [v137 frame];
    v62 = v111;
    sub_7666A0();
    sub_766610();
    (*(v112 + 8))(v62, v113);
    sub_765330();
    v63 = sub_7651A0();
    [v58 setBackgroundColor:v63];

    v56 = v134;
    v54 = v126;
    v51 = v127;
    sub_75A050();
    v53 = v125;
    v55 = v133;

    v52 = v128;

    v64 = sub_75EDA0();
    (*(*(v64 - 8) + 8))(v115 + v61, v64);
  }

  else
  {
    if (v60 == enum case for ShelfBackground.color(_:))
    {
      (*(v50 + 96))(v59, v2);
      v65 = *v59;
      v66 = *(sub_BD88(&unk_959640) + 48);
      sub_759190();
      [v58 setBackgroundColor:v65];

      v55 = v133;
      v67 = sub_75EDA0();
      v68 = v59 + v66;
      v56 = v134;
      v51 = v127;
      (*(*(v67 - 8) + 8))(v68, v67);
    }

    else
    {
      v73 = v59;
      sub_759190();
      sub_BE70(0, &qword_93E540);
      v74 = sub_76A000();
      [v58 setBackgroundColor:v74];

      v75 = v73;
      v56 = v134;
      (*(v50 + 8))(v75, v2);
    }

    v53 = v125;
  }

LABEL_18:
  v76 = v122;
  sub_1ED18(&v137[v132], v122, &qword_94A490);
  if (v118(v76, 1, v56))
  {
    sub_10A2C(v76, &qword_94A490);
    v77 = 1;
  }

  else
  {
    sub_11CB8C(v76, v53);
    sub_10A2C(v76, &qword_94A490);
    v55(v54, v53 + *(v56 + 28), v2);
    sub_205CA0(v53);
    v77 = 0;
  }

  v78 = v121;
  v121(v54, v77, 1, v2);
  v127 = *(v56 + 28);
  v55(v51, v136 + v127, v2);
  v78(v51, 0, 1, v2);
  v79 = *(v131 + 48);
  sub_1ED18(v54, v52, &qword_94B9A0);
  sub_1ED18(v51, v52 + v79, &qword_94B9A0);
  v80 = v117;
  if (v117(v52, 1, v2) == 1)
  {
    sub_10A2C(v51, &qword_94B9A0);
    sub_10A2C(v54, &qword_94B9A0);
    v81 = v80(v52 + v79, 1, v2);
    v82 = v130;
    if (v81 == 1)
    {
      sub_10A2C(v52, &qword_94B9A0);
      goto LABEL_35;
    }
  }

  else
  {
    v83 = v109;
    sub_1ED18(v52, v109, &qword_94B9A0);
    if (v80(v52 + v79, 1, v2) != 1)
    {
      v82 = v130;
      v94 = v52 + v79;
      v95 = v110;
      (*(v130 + 32))(v110, v94, v2);
      sub_262140(&qword_9439F8, &type metadata accessor for ShelfBackground);
      v96 = v54;
      v97 = sub_7691C0();
      v98 = *(v82 + 8);
      v98(v95, v2);
      sub_10A2C(v51, &qword_94B9A0);
      sub_10A2C(v96, &qword_94B9A0);
      v98(v83, v2);
      sub_10A2C(v128, &qword_94B9A0);
      v84 = v114;
      if (v97)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    sub_10A2C(v51, &qword_94B9A0);
    sub_10A2C(v54, &qword_94B9A0);
    v82 = v130;
    (*(v130 + 8))(v83, v2);
  }

  sub_10A2C(v52, &qword_94B998);
  v84 = v114;
LABEL_27:
  v85 = *&v137[OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_bottomBackgroundView];
  v133(v84, (v136 + v127), v2);
  v86 = (*(v82 + 88))(v84, v2);
  if (v86 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v82 + 96))(v84, v2);
    v87 = *(sub_BD88(&qword_94B9A8) + 48);
    type metadata accessor for InteractiveBackgroundContentView();
    sub_262140(&qword_94B9B0, type metadata accessor for InteractiveBackgroundContentView);
    sub_75A0C0();
    sub_759190();
    [v137 frame];
    v88 = v111;
    sub_7666A0();
    sub_766610();
    (*(v112 + 8))(v88, v113);
    sub_765330();
    v89 = sub_7651A0();
    [v85 setBackgroundColor:v89];

    sub_75A050();

    v90 = sub_75EDA0();
    (*(*(v90 - 8) + 8))(v84 + v87, v90);
  }

  else if (v86 == enum case for ShelfBackground.color(_:))
  {
    (*(v82 + 96))(v84, v2);
    v91 = *v84;
    v92 = *(sub_BD88(&unk_959640) + 48);
    sub_759190();
    [v85 setBackgroundColor:v91];

    v93 = sub_75EDA0();
    (*(*(v93 - 8) + 8))(v84 + v92, v93);
  }

  else
  {
    sub_759190();
    sub_BE70(0, &qword_93E540);
    v99 = sub_76A000();
    [v85 setBackgroundColor:v99];

    (*(v82 + 8))(v84, v2);
  }

LABEL_35:
  v100 = v136;
  v101 = v137;
  v102 = v134;
  [*&v137[OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_topBackgroundView] setAlpha:*(v136 + *(v134 + 20))];

  v103 = v100;
  v104 = v123;
  sub_11CB8C(v103, v123);
  (*(v124 + 56))(v104, 0, 1, v102);
  v105 = v132;
  swift_beginAccess();
  sub_11CBF0(v104, &v101[v105]);
  return swift_endAccess();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundView()
{
  result = qword_94B900;
  if (!qword_94B900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2613A0()
{
  sub_11C704();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_261444@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  return sub_1ED18(v3 + v4, a1, &qword_94A490);
}

char *sub_2614D4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProviderP33_CA50C1B270CA71294BF32D54EF49CF7332InteractiveBackgroundContentView_artworkView;
  sub_759210();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InteractiveBackgroundContentView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC18ASMessagesProviderP33_CA50C1B270CA71294BF32D54EF49CF7332InteractiveBackgroundContentView_artworkView;
  v12 = *&v10[OBJC_IVAR____TtC18ASMessagesProviderP33_CA50C1B270CA71294BF32D54EF49CF7332InteractiveBackgroundContentView_artworkView];
  v13 = v10;
  [v12 setContentMode:4];
  v14 = [*&v10[v11] layer];
  CGAffineTransformMakeScale(&v16, 3.0, 3.0);
  [v14 setAffineTransform:&v16];

  [v13 addSubview:*&v10[v11]];
  return v13;
}

void (*sub_2618C8(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProviderP33_CA50C1B270CA71294BF32D54EF49CF7332InteractiveBackgroundContentView_artworkView);
  *a1 = sub_759180();
  return sub_26191C;
}

void sub_26191C(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_759190();
  }

  else
  {
    sub_759190();
  }
}

id sub_2619B0()
{
  v1 = [objc_opt_self() effectWithBlurRadius:90.0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for SemiLightMaterialView();
  v2 = objc_msgSendSuper2(&v19, "initWithEffect:", v1);

  v3 = kCAFilterColorSaturate;
  v4 = objc_allocWithZone(CAFilter);
  v5 = v2;
  v6 = [v4 initWithType:v3];
  isa = sub_765BD0().super.super.isa;
  [v6 setValue:isa forKey:kCAFilterInputAmount];

  v8 = [v5 layer];
  sub_BD88(&qword_941C10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_77B6D0;
  *(v9 + 56) = sub_BE70(0, &qword_945278);
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = sub_769450().super.isa;

  [v8 setFilters:v11];

  v12 = [v5 layer];
  sub_BE70(0, &qword_93E540);
  v13 = sub_76A120(1.0, 1.0, 1.0, 0.4).super.isa;
  v14 = [(objc_class *)v13 CGColor];

  [v12 setBackgroundColor:v14];
  v15 = [v5 layer];

  v16 = [v15 mask];
  LODWORD(v17) = 1.0;
  [v16 setOpacity:v17];

  return v5;
}

id sub_261D30()
{
  v1 = [objc_opt_self() effectWithBlurRadius:90.0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for AccessoryDarkMaterialView();
  v2 = objc_msgSendSuper2(&v19, "initWithEffect:", v1);

  v3 = kCAFilterColorSaturate;
  v4 = objc_allocWithZone(CAFilter);
  v5 = v2;
  v6 = [v4 initWithType:v3];
  isa = sub_765BD0().super.super.isa;
  [v6 setValue:isa forKey:kCAFilterInputAmount];

  v8 = [v5 layer];
  sub_BD88(&qword_941C10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_77B6D0;
  *(v9 + 56) = sub_BE70(0, &qword_945278);
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = sub_769450().super.isa;

  [v8 setFilters:v11];

  v12 = [v5 layer];
  sub_BE70(0, &qword_93E540);
  v13 = sub_76A120(0.58824, 0.58824, 0.58824, 0.15).super.isa;
  v14 = [(objc_class *)v13 CGColor];

  [v12 setBackgroundColor:v14];
  v15 = [v5 layer];

  v16 = [v15 mask];
  if (v16)
  {
    LODWORD(v17) = 1.0;
    [v16 setOpacity:v17];
  }

  return v5;
}

id sub_262094(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_262140(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_262188()
{
  v1 = v0;
  sub_7689F0();
  sub_7689C0();
  if (qword_93C7E0 != -1)
  {
    swift_once();
  }

  v2 = sub_BD88(&unk_945000);
  sub_BE38(v2, qword_99BD10);
  sub_7686D0();

  if (v11 == 2 || (v11 & 1) == 0)
  {
    v3 = type metadata accessor for SemiLightMaterialView();
  }

  else
  {
    v3 = type metadata accessor for AccessoryDarkMaterialView();
  }

  v4 = [objc_allocWithZone(v3) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_materialView) = v4;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_topBackgroundView;
  type metadata accessor for InteractiveBackgroundContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_bottomBackgroundView;
  *(v1 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = OBJC_IVAR____TtC18ASMessagesProvider32InteractiveSectionBackgroundView_currentState;
  v9 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  result = sub_76A840();
  __break(1u);
  return result;
}

uint64_t sub_262344(uint64_t a1)
{
  v54 = a1;
  v59 = sub_BD88(&qword_94B9B8);
  v64 = *(v59 - 8);
  __chkstk_darwin(v59);
  v53 = v46 - v1;
  v2 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v2 - 8);
  v65 = v46 - v3;
  v66 = sub_765610();
  v4 = *(v66 - 8);
  __chkstk_darwin(v66);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v7 - 8);
  v67 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v46 - v10;
  __chkstk_darwin(v12);
  v14 = v46 - v13;
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  sub_BD88(&qword_940A70);
  v18 = *(sub_765540() - 8);
  v58 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v50 = v20;
  *(v20 + 16) = xmmword_780120;
  v62 = v20 + v19;
  v73 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v73 = 0x4020000000000000;
  v71 = 0x4030000000000000;
  sub_7655B0();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v57 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v4 + 104);
  v61 = v4 + 104;
  v63 = v26;
  v26(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v73) = 0;
  sub_7655D0();
  v73 = 0;
  sub_7655D0();
  v60 = v14;
  v46[0] = v11;
  sub_765500();
  v73 = 0x3FF0000000000000;
  sub_7655D0();
  v73 = 0x4024000000000000;
  v71 = 0x4034000000000000;
  sub_7655B0();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v56 = v6;
  v29 = v57;
  v30 = v66;
  v63(v6, v57, v66);
  LOBYTE(v73) = 0;
  sub_7655D0();
  v73 = 0;
  sub_7655D0();
  v31 = v58;
  v55 = v17;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  sub_765500();
  v52 = 2 * v31;
  v73 = 0x3FF8000000000000;
  v71 = 0x4000000000000000;
  sub_7655B0();
  v73 = 0x4034000000000000;
  sub_7655D0();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_7655B0();
  v47 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = v56;
  *v56 = v47;
  v33 = v63;
  v63(v32, v29, v30);
  LOBYTE(v73) = 0;
  sub_7655D0();
  v73 = 0;
  sub_7655D0();
  v34 = v52;
  sub_765500();
  v46[1] = v34 + v31;
  v75 = 0x4000000000000000;
  v73 = 0;
  v74 = 1;
  v71 = 0x3FF0000000000000;
  v72 = 0;
  v52 = sub_263040();
  v35 = v53;
  sub_760920();
  v36 = v59;
  sub_760930();
  v37 = *(v64 + 8);
  v64 += 8;
  v51 = v37;
  v37(v35, v36);
  v71 = v73;
  sub_7655D0();
  v73 = 0x4034000000000000;
  sub_7655D0();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_7655B0();
  v38 = v56;
  *v56 = v47;
  v39 = v57;
  v33(v38, v57, v66);
  sub_7697A0();
  LOBYTE(v73) = 0;
  sub_7655D0();
  v73 = 0;
  sub_7655D0();
  sub_765500();
  v75 = 0x4000000000000000;
  v40 = 4 * v58;
  v73 = 0;
  v74 = 1;
  v71 = 0x3FF0000000000000;
  v72 = 0;
  v41 = v53;
  sub_760920();
  v42 = v59;
  sub_760930();
  v51(v41, v42);
  v71 = v73;
  sub_7655D0();
  v73 = 0x4038000000000000;
  sub_7655D0();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_7655B0();
  v47 = vdupq_n_s64(0x404A000000000000uLL);
  v43 = v56;
  *v56 = v47;
  v63(v43, v39, v66);
  LOBYTE(v73) = 0;
  sub_7655D0();
  v73 = 0;
  sub_7655D0();
  sub_765500();
  v73 = 0x4008000000000000;
  v58 += v40;
  v75 = 0x4000000000000000;
  v70 = 0x4000000000000000;
  v71 = 0x4008000000000000;
  v68 = 0x4000000000000000;
  v69 = 0x4000000000000000;
  sub_760950();
  v44 = v59;
  sub_760930();
  v51(v41, v44);
  v71 = v73;
  sub_7655D0();
  v73 = 0x4038000000000000;
  sub_7655D0();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_7655B0();
  *v43 = v47;
  v63(v43, v57, v66);
  LOBYTE(v73) = 0;
  sub_7655D0();
  v73 = 0;
  sub_7655D0();
  sub_765500();
  return v50;
}

unint64_t sub_263040()
{
  result = qword_94B9C0;
  if (!qword_94B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94B9C0);
  }

  return result;
}

double sub_2630E4(uint64_t a1, void *a2, double a3)
{
  v118 = sub_76A920();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_766EA0();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_766E90();
  v8 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_766E50();
  v10 = *(v121 - 8);
  __chkstk_darwin(v121);
  v109 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_766E60();
  v125 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_766E00();
  v13 = *(v110 - 8);
  __chkstk_darwin(v110);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_762D10();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = a1;
  v20 = sub_26F08();
  if (qword_93D850 != -1)
  {
    swift_once();
  }

  v98 = sub_7666D0();
  sub_BE38(v98, qword_99F0E8);
  v122 = a2;
  v21 = [a2 traitCollection];
  v100 = v20;
  sub_769E10();

  v22 = sub_7653B0();
  v135 = v22;
  v97 = sub_2640D0(&qword_93F9B0, &type metadata accessor for Feature);
  v136 = v97;
  v23 = sub_B1B4(&v134);
  v24 = *(v22 - 8);
  v25 = *(v24 + 104);
  v96 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v99 = v22;
  v95 = v25;
  v94 = v24 + 104;
  v25(v23);
  sub_765C30();
  sub_BEB8(&v134);
  sub_762D00();
  sub_762CE0();
  v26 = *(v17 + 8);
  v102 = v19;
  v104 = v16;
  v103 = v17 + 8;
  v93 = v26;
  v26(v19, v16);
  sub_BD88(&qword_93F458);
  v27 = *(v8 + 72);
  v107 = v8;
  v120 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v101 = v27;
  v123 = swift_allocObject();
  v119 = xmmword_77B6D0;
  *(v123 + 1) = xmmword_77B6D0;
  v28 = v135;
  v29 = v136;
  v30 = sub_B170(&v134, v135);
  v132 = v28;
  v133 = *(v29 + 8);
  v31 = sub_B1B4(&v131);
  (*(*(v28 - 8) + 16))(v31, v30, v28);
  v129 = &type metadata for Double;
  v130 = &protocol witness table for Double;
  v128 = 0;
  v32 = *(v13 + 104);
  v33 = v15;
  v91 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v34 = v110;
  v92 = v13 + 104;
  v90 = v32;
  v32(v15);
  v35 = v125;
  v36 = *(v125 + 104);
  v37 = v111;
  v88 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v38 = v112;
  v89 = v125 + 104;
  v87 = v36;
  v36(v111);
  v39 = sub_BD88(&unk_960ED0);
  v40 = *(v10 + 72);
  v41 = v10;
  v42 = *(v10 + 80);
  v43 = (v42 + 32) & ~v42;
  v84 = v42;
  v85 = v39;
  v83 = v43 + v40;
  v44 = swift_allocObject();
  *(v44 + 16) = v119;
  v86 = v43;
  sub_766E20();
  v127[0] = v44;
  v45 = sub_2640D0(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v46 = sub_BD88(&unk_960EE0);
  v47 = sub_1EDC8();
  v48 = v109;
  v81 = v46;
  v80 = v47;
  v49 = v121;
  v82 = v45;
  sub_76A5A0();
  v50 = v124;
  sub_766E80();
  v51 = *(v41 + 8);
  v105 = v41 + 8;
  v79 = v51;
  v51(v48, v49);
  v52 = *(v35 + 8);
  v125 = v35 + 8;
  v52(v37, v38);
  v78 = *(v13 + 8);
  v78(v33, v34);
  sub_34630(&v128);
  sub_BEB8(&v131);
  if (*(v50 + 176) == 1)
  {
    v53 = v38;
    v54 = v52;
    v55 = v33;
    if (qword_93D858 != -1)
    {
      swift_once();
    }

    sub_BE38(v98, qword_99F100);
    v56 = [v122 traitCollection];
    sub_769E10();

    v57 = v99;
    v132 = v99;
    v133 = v97;
    v58 = sub_B1B4(&v131);
    v95(v58, v96, v57);
    sub_765C30();
    sub_BEB8(&v131);
    v59 = v102;
    sub_762D00();
    sub_762CE0();
    v93(v59, v104);
    v60 = v132;
    v61 = v133;
    v62 = sub_B170(&v131, v132);
    v129 = v60;
    v130 = *(v61 + 8);
    v63 = sub_B1B4(&v128);
    (*(*(v60 - 8) + 16))(v63, v62, v60);
    v127[4] = &protocol witness table for Double;
    v127[3] = &type metadata for Double;
    v127[0] = 0;
    v90(v55, v91, v34);
    v87(v37, v88, v53);
    v64 = swift_allocObject();
    *(v64 + 16) = v119;
    sub_766E20();
    v126 = v64;
    v65 = v48;
    v66 = v121;
    sub_76A5A0();
    v67 = v124;
    v68 = v34;
    v69 = v106;
    sub_766E80();
    v79(v65, v66);
    v54(v37, v53);
    v78(v55, v68);
    sub_34630(v127);
    sub_BEB8(&v128);
    v70 = v123;
    v72 = v123[2];
    v71 = v123[3];
    if (v72 >= v71 >> 1)
    {
      v70 = sub_7AC70(v71 > 1, v72 + 1, 1, v123);
    }

    *(v70 + 2) = v72 + 1;
    (*(v107 + 32))(&v70[v120 + v72 * v101], v69, v108);
    sub_BEB8(&v131);
  }

  else
  {
    v67 = v124;
  }

  v73 = v113;
  sub_766E70();
  v74 = v116;
  sub_7665A0();
  sub_B170((v67 + 96), *(v67 + 120));
  v75 = v115;
  sub_33964();
  sub_766700();
  (*(v117 + 8))(v75, v118);
  (*(v114 + 8))(v73, v74);
  sub_BEB8(&v134);
  return a3;
}

double sub_263EF8()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  v5 = v4;
  v6 = *(v1 + 8);
  v6(v3, v0);
  if (qword_93C7E8 != -1)
  {
    swift_once();
  }

  sub_75DA20();
  sub_765580();
  v8 = v7;
  v6(v3, v0);
  v9 = sub_75DA30();
  v10 = type metadata accessor for SnapshotPageTraitEnvironment();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v12 = v8;
  *(v12 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v9;
  v17.receiver = v11;
  v17.super_class = v10;
  v13 = objc_msgSendSuper2(&v17, "init");
  sub_2630E4(&xmmword_99BD40, v13, v5);
  v15 = v14;

  return v15;
}

uint64_t sub_2640D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_595214();
  result = sub_264388(a1);
  if (result)
  {
    v8 = sub_765A30();
    if (!v8)
    {
      v9 = sub_7651A0();
      if (!v9)
      {
LABEL_6:
        v12[3] = sub_765B70();
        v12[4] = &protocol witness table for TodayCard;
        v12[0] = a1;
        sub_75A110();

        sub_768880();
        (*(&stru_B8.size + (swift_isaMask & *v4)))(v12, v11, a3);

        return sub_BEB8(v12);
      }

      v10 = v9;
      [*(v4 + OBJC_IVAR____TtC18ASMessagesProvider42TodayBrickCollectionViewCellWithBackground_imageBackgroundView) setBackgroundColor:v9];
      v8 = v10;
    }

    goto LABEL_6;
  }

  return result;
}

id sub_264258()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
  [v1 setImage:0];

  return [v1 setBackgroundColor:0];
}

uint64_t sub_2642B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
  [v1 setImage:0];
  sub_22AFB8();
  sub_265554(&qword_94BA00, sub_22AFB8);
  v2 = v1;
  sub_76A6E0();
  sub_75A0B0();
  return sub_1EB60(v4);
}

uint64_t sub_264388(uint64_t a1)
{
  if (!a1 || (v2 = v1, v12[0] = sub_765B20(), sub_75B090(), sub_BD88(&qword_947B48), (swift_dynamicCast() & 1) == 0))
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_8;
  }

  if (!*(&v10 + 1))
  {
LABEL_8:
    sub_10A2C(&v9, &qword_947B50);
    return 0;
  }

  sub_10914(&v9, v12);
  sub_B170(v12, v13);
  v3 = [v1 traitCollection];
  v4 = sub_7618B0();

  v5 = v4;
  if (!v4)
  {
    sub_B170(v12, v13);
    v6 = [v2 traitCollection];
    v7 = sub_7618A0();

    if (v7)
    {
      v5 = sub_764BC0();
    }

    else
    {
      v5 = 0;
    }
  }

  sub_BEB8(v12);
  return v5;
}

char *sub_26450C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider42TodayBrickCollectionViewCellWithBackground_imageBackgroundView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for TodayBrickCollectionViewCellWithBackground();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider42TodayBrickCollectionViewCellWithBackground_imageBackgroundView;
  v12 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  v13 = v10;
  [v12 setContentMode:4];
  [*&v10[v11] setAccessibilityIgnoresInvertColors:1];
  [*&v13[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView] insertSubview:*&v10[v11] atIndex:0];

  return v13;
}

void sub_2646CC(uint64_t a1)
{
  v2 = sub_765240();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);

    sub_75DEE0();
    v9 = sub_765210();
    (*(v3 + 8))(v5, v2);
    [v8 setContentMode:v9];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);

    [v12 setImage:a1];
  }
}

id sub_264874()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayBrickCollectionViewCellWithBackground();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TodayBrickCollectionViewCellWithBackground()
{
  result = qword_94B9F0;
  if (!qword_94B9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264910(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = sub_765240();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766690();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75EE00();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_7656C0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_5FC64(v2 + v20, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10A2C(v15, &unk_955AA0);
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_134D8(a1, v41);
  sub_BD88(&unk_93F520);
  sub_765B70();
  if (swift_dynamicCast())
  {
    v32 = v40;
    sub_134D8(a1, v41);
    if (swift_dynamicCast())
    {
      v22 = v40;
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_264388(v22);

    if (v23)
    {
      v31 = v2;
      v24 = [v2 traitCollection];
      sub_593770(v24, v12);
      sub_765630();
      sub_75EDF0();
      sub_766660();
      (*(v33 + 8))(v9, v34);
      sub_765250();
      sub_765210();
      (*(v37 + 8))(v6, v38);
      v25 = sub_765330();

      (*(v35 + 8))(v12, v36);
      v40 = *(v31 + OBJC_IVAR____TtC18ASMessagesProvider42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
      v26 = v40;
      sub_22AFB8();
      sub_265554(&qword_94BA00, sub_22AFB8);
      v27 = v26;
      sub_76A6E0();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v25;

      sub_75A040();

      sub_10A2C(v41, &unk_9443A0);
      (*(v17 + 8))(v19, v16);
    }

    (*&stru_108.segname[(swift_isaMask & *v2) + 8])(v32, v39);
  }

  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_264F38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_264F70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_264FB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_765240();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_766690();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75EE00();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_7656C0();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765B70();
  sub_265554(&qword_94CAB0, &type metadata accessor for TodayCard);
  sub_75C750();
  if (v37[0])
  {
    v28 = v9;
    v14 = sub_765B20();

    v37[0] = v14;
    sub_75B090();
    sub_BD88(&qword_947B48);
    if (swift_dynamicCast())
    {
      if (*(&v35 + 1))
      {
        v25 = v4;
        v26 = v3;
        v27 = a2;
        sub_10914(&v34, v37);
        sub_B170(v37, v38);
        swift_getKeyPath();
        sub_75C7B0();

        v15 = v34;
        v16 = sub_7618B0();

        if (!v16)
        {
          sub_B170(v37, v38);
          swift_getKeyPath();
          sub_75C7B0();

          v17 = v34;
          v18 = sub_7618A0();

          if (!v18)
          {
            return sub_BEB8(v37);
          }

          sub_764BC0();
        }

        swift_getKeyPath();
        sub_75C7B0();

        swift_getKeyPath();
        sub_75C7B0();

        v19 = v34;
        sub_593770(v34, v11);
        sub_765630();
        sub_75EDF0();
        sub_766660();
        (*(v30 + 8))(v8, v32);
        sub_765250();
        sub_765210();
        (*(v25 + 8))(v6, v26);
        v20 = sub_765330();

        (*(v33 + 8))(v11, v28);
        (*(v29 + 8))(v13, v31);
        sub_BD88(&unk_93F5C0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_77D9F0;
        *(v21 + 32) = v20;

        v22._rawValue = v21;
        sub_75A070(v22);

        return sub_BEB8(v37);
      }
    }

    else
    {
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
    }
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  return sub_10A2C(&v34, &qword_947B50);
}

uint64_t sub_265554(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2655A4(uint64_t a1)
{
  v2 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v56 = sub_765610();
  v60 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  __chkstk_darwin(v16);
  v59 = &v44 - v17;
  sub_BD88(&qword_940A70);
  v18 = *(sub_765540() - 8);
  v57 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v49 = v20;
  *(v20 + 16) = xmmword_780120;
  v21 = v20 + v19;
  v22 = a1;
  v61 = a1;
  sub_62634();
  sub_7655D0();
  v61 = 15.0;
  sub_7655D0();
  v61 = 0.0;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v54 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v28 = *(v60 + 104);
  v60 += 104;
  v55 = v28;
  v29 = v56;
  (v28)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v61) = 0;
  sub_7655D0();
  v61 = 0.0;
  sub_7655D0();
  v58 = v15;
  v52 = v12;
  sub_765500();
  v61 = a1;
  sub_7655D0();
  v61 = 15.0;
  sub_7655D0();
  v61 = 0.0;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v32 = v54;
  v55(v6, v54, v29);
  LOBYTE(v61) = 0;
  v50 = v4;
  sub_7655D0();
  v61 = 0.0;
  v53 = v9;
  sub_7655D0();
  v33 = v57;
  v51 = v21;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  sub_765500();
  v45 = 2 * v33;
  v61 = v22;
  sub_7655D0();
  v61 = 20.0;
  sub_7655D0();
  v61 = 0.0;
  sub_7655D0();
  v46 = vdupq_n_s64(0x4041000000000000uLL);
  v34 = v6;
  *v6 = v46;
  v35 = v32;
  v36 = v32;
  v37 = v55;
  v38 = v56;
  v55(v6, v36, v56);
  LOBYTE(v61) = 0;
  sub_7655D0();
  v61 = 0.0;
  sub_7655D0();
  v39 = v45;
  v40 = v34;
  sub_765500();
  v41 = v57;
  v45 = v39 + v57;
  v61 = v22;
  sub_7655D0();
  v61 = 20.0;
  sub_7655D0();
  v61 = 0.0;
  sub_7655D0();
  *v40 = v46;
  v37(v40, v35, v38);
  sub_7697A0();
  LOBYTE(v61) = 0;
  sub_7655D0();
  v61 = 0.0;
  sub_7655D0();
  sub_765500();
  v45 = 4 * v41;
  v61 = 3.0;
  sub_7655D0();
  v61 = 24.0;
  sub_7655D0();
  v61 = 0.0;
  sub_7655D0();
  v46 = vdupq_n_s64(0x404A000000000000uLL);
  *v40 = v46;
  v42 = v56;
  v37(v40, v54, v56);
  LOBYTE(v61) = 0;
  sub_7655D0();
  v61 = 0.0;
  sub_7655D0();
  sub_765500();
  v61 = 3.0;
  sub_7655D0();
  v61 = 24.0;
  sub_7655D0();
  v61 = 0.0;
  sub_7655D0();
  *v40 = v46;
  v55(v40, v54, v42);
  LOBYTE(v61) = 0;
  sub_7655D0();
  v61 = 0.0;
  sub_7655D0();
  sub_765500();
  return v49;
}

uint64_t sub_265F70()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D848 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99F0D0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v16[1] = v6 + 16;
  v17 = v7;
  v7(v3, v5, v4);
  v8 = enum case for FontSource.useCase(_:);
  v16[0] = v1[13];
  (v16[0])(v3, enum case for FontSource.useCase(_:), v0);
  v9 = sub_766CA0();
  v25 = v9;
  v26 = &protocol witness table for StaticDimension;
  sub_B1B4(&v24);
  v22 = v0;
  v23 = &protocol witness table for FontSource;
  v10 = sub_B1B4(&v21);
  v11 = v1[2];
  v11(v10, v3, v0);
  sub_766CB0();
  v12 = v1[1];
  v12(v3, v0);
  if (qword_93D858 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v4, qword_99F100);
  v17(v3, v13, v4);
  (v16[0])(v3, v8, v0);
  v22 = v9;
  v23 = &protocol witness table for StaticDimension;
  sub_B1B4(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v14 = sub_B1B4(&v18);
  v11(v14, v3, v0);
  sub_766CB0();
  v12(v3, v0);
  v19 = sub_766970();
  v20 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v18);
  sub_766960();
  qword_99BDE0 = &type metadata for Double;
  unk_99BDE8 = &protocol witness table for Double;
  qword_99BDC8 = 0x4028000000000000;
  xmmword_99BD40 = vdupq_n_s64(0x4064000000000000uLL);
  sub_34698(&v24, &unk_99BD50);
  sub_34698(&v21, &unk_99BD78);
  result = sub_34698(&v18, &unk_99BDA0);
  byte_99BDF0 = 1;
  return result;
}

char *sub_2662BC(double a1, double a2, double a3, double a4)
{
  v9 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v9 - 8);
  v66 = &v58 - v10;
  v11 = sub_7593D0();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760AD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v17 - 8);
  v19 = &v58 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v21 = sub_75C840();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_93C7E8 != -1)
  {
    swift_once();
  }

  *&v4[v22] = xmmword_99BD40;
  v62 = OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_alias;
  v67 = v4;
  if (qword_93D848 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99F0D0);
  v25 = *(v23 - 8);
  v61 = *(v25 + 16);
  v61(v19, v24, v23);
  v60 = *(v25 + 56);
  v60(v19, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v27 = *(v14 + 104);
  v27(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v28 = sub_75BB20();
  v59 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v67[v62] = sub_75BB10();
  v62 = OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_displayName;
  if (qword_93D858 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v23, qword_99F100);
  v61(v19, v31, v23);
  v60(v19, 0, 1, v23);
  v27(v16, v26, v59);
  v32 = objc_allocWithZone(v29);
  v33 = sub_75BB10();
  v34 = v67;
  *&v67[v62] = v33;
  *&v34[OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_artworkView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v35 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  v68.receiver = v34;
  v68.super_class = v35;
  v36 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  v37 = OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_artworkView;
  v38 = *&v36[OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_artworkView];
  sub_396E8();
  v39 = v36;
  v40 = v38;
  sub_76A030();
  sub_759070();

  v41 = *&v36[v37];
  v42 = v63;
  sub_75CD20();
  sub_759200();

  (*(v64 + 8))(v42, v65);
  v43 = qword_93C5C0;
  v44 = *&v36[v37];
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = sub_765080();
  v46 = sub_BE38(v45, qword_99B6A0);
  v47 = *(v45 - 8);
  v48 = v66;
  (*(v47 + 16))(v66, v46, v45);
  (*(v47 + 56))(v48, 0, 1, v45);
  sub_7591C0();

  v49 = [v39 contentView];
  [v49 addSubview:*&v36[v37]];

  v50 = OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_alias;
  v51 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_alias];
  sub_76A150();

  [*&v39[v50] setNumberOfLines:1];
  v52 = [v39 contentView];
  [v52 addSubview:*&v39[v50]];

  v53 = OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_displayName;
  v54 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_displayName];
  v55 = sub_769FF0();
  [v54 setTextColor:v55];

  [*&v39[v53] setNumberOfLines:1];
  v56 = [v39 contentView];

  [v56 addSubview:*&v39[v53]];
  return v39;
}

uint64_t sub_266A64()
{
  v1 = v0;
  v2 = sub_7664F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  v24.receiver = v0;
  v24.super_class = v6;
  objc_msgSendSuper2(&v24, "layoutSubviews");
  if (qword_93C7E8 != -1)
  {
    swift_once();
  }

  sub_266F94(&xmmword_99BD40, v18);
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_artworkView];
  v18[26] = sub_759210();
  v18[27] = &protocol witness table for UIView;
  v18[23] = v7;
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_alias];
  v19 = sub_75BB20();
  v20 = &protocol witness table for UILabel;
  v18[28] = v8;
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_displayName];
  v22 = v19;
  v23 = &protocol witness table for UILabel;
  v21 = v9;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  [v1 bounds];
  LargeGameCenterPlayerLayout.placeChildren(relativeTo:in:)(v1, v5, v13, v14, v15, v16);
  (*(v3 + 8))(v5, v2);
  return sub_266FF0(v18);
}

id sub_266C74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LargeGameCenterPlayerCollectionViewCell()
{
  result = qword_94BA30;
  if (!qword_94BA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266D6C()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_266E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1D6CAC(a1, a2, a3, WitnessTable);
}

void sub_266EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1D6BD8(a1, a2, a3, WitnessTable);
}

unint64_t sub_266F14(uint64_t a1)
{
  result = sub_266F3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_266F3C()
{
  result = qword_94BA40;
  if (!qword_94BA40)
  {
    type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94BA40);
  }

  return result;
}

void sub_267044()
{
  v1 = sub_760AD0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v8 = sub_75C840();
  v9 = *(*(v8 - 8) + 56);
  v27 = v0;
  v9(v0 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_93C7E8 != -1)
  {
    swift_once();
  }

  *(v27 + v10) = xmmword_99BD40;
  v23 = OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_alias;
  if (qword_93D848 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99F0D0);
  v13 = *(v11 - 8);
  v22 = *(v13 + 16);
  v22(v6, v12, v11);
  v14 = *(v13 + 56);
  v14(v6, 0, 1, v11);
  v15 = enum case for DirectionalTextAlignment.none(_:);
  v16 = v2 + 104;
  v17 = *(v2 + 104);
  v24 = v16;
  v25 = v1;
  v17(v26, enum case for DirectionalTextAlignment.none(_:), v1);
  v18 = sub_75BB20();
  v19 = objc_allocWithZone(v18);
  *(v27 + v23) = sub_75BB10();
  v23 = OBJC_IVAR____TtC18ASMessagesProvider39LargeGameCenterPlayerCollectionViewCell_displayName;
  if (qword_93D858 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v11, qword_99F100);
  v22(v6, v20, v11);
  v14(v6, 0, 1, v11);
  v17(v26, v15, v25);
  v21 = objc_allocWithZone(v18);
  *(v27 + v23) = sub_75BB10();
  sub_76A840();
  __break(1u);
}

uint64_t sub_267448(uint64_t a1, uint64_t *a2)
{
  v3 = sub_BD88(&unk_94BAA0);
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  __asm { FMOV            V0.2D, #16.0 }

  sub_BD88(&qword_93FBE0);
  type metadata accessor for UIEdgeInsets(0);
  return sub_7592D0();
}

uint64_t sub_2674F4()
{
  v0 = sub_BD88(&unk_94BAB0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_BD88(&unk_94BAA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = sub_7609A0();
  sub_161DC(v5, qword_99BE50);
  sub_BE38(v5, qword_99BE50);
  if (qword_93C7F0 != -1)
  {
    swift_once();
  }

  v6 = sub_BE38(v1, qword_99BE20);
  (*(v2 + 16))(v4, v6, v1);
  v8[24] = &type metadata for Double;
  v8[25] = &protocol witness table for Double;
  v8[20] = &protocol witness table for Double;
  v8[21] = 0x4000000000000000;
  v8[19] = &type metadata for Double;
  v8[15] = &protocol witness table for Double;
  v8[16] = 0x4028000000000000;
  v8[14] = &type metadata for Double;
  v8[10] = &protocol witness table for Double;
  v8[11] = 0x4028000000000000;
  v8[9] = &type metadata for Double;
  v8[5] = &protocol witness table for Double;
  v8[6] = 0x406B800000000000;
  v8[4] = &type metadata for Double;
  v8[1] = 0x4066800000000000;
  sub_BD88(&qword_93FBE0);
  sub_BD88(&qword_95FAA0);
  sub_7592D0();
  return sub_760980();
}

char *sub_267738(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v10 - 8);
  v71 = &v68 - v11;
  v12 = sub_760AD0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_itemLayoutContext;
  v20 = sub_75C840();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_shadowView;
  sub_758E80();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_containerView;
  *&v4[v22] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView] = 0;
  v69 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  if (qword_93D830 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99F088);
  v25 = *(v23 - 8);
  v75 = *(v25 + 16);
  v75(v18, v24, v23);
  v74 = *(v25 + 56);
  v74(v18, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.leading(_:);
  v73 = *(v13 + 104);
  v73(v15, enum case for DirectionalTextAlignment.leading(_:), v12);
  v27 = sub_75BB20();
  v72 = v12;
  v28 = v27;
  v29 = objc_allocWithZone(v27);
  *&v4[v69] = sub_75BB10();
  v69 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  if (qword_93D838 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v23, qword_99F0A0);
  v75(v18, v30, v23);
  v74(v18, 0, 1, v23);
  v73(v15, v26, v72);
  v31 = objc_allocWithZone(v28);
  *&v4[v69] = sub_75BB10();
  v69 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_completedLabel;
  if (qword_93D840 != -1)
  {
    swift_once();
  }

  v32 = sub_BE38(v23, qword_99F0B8);
  v75(v18, v32, v23);
  v74(v18, 0, 1, v23);
  v73(v15, v26, v72);
  v33 = objc_allocWithZone(v28);
  *&v4[v69] = sub_75BB10();
  if (qword_93C800 != -1)
  {
    swift_once();
  }

  v34 = sub_7609A0();
  v35 = sub_BE38(v34, qword_99BE50);
  (*(*(v34 - 8) + 16))(v5 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_metrics, v35, v34);
  v76.receiver = v5;
  v76.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v76, "initWithFrame:", a1, a2, a3, a4);
  v37 = [v36 contentView];
  [v37 _setContinuousCornerRadius:20.0];

  v38 = [v36 contentView];
  [v38 setClipsToBounds:0];

  v39 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_shadowView;
  v40 = qword_93C5B8;
  v41 = *&v36[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_765080();
  v43 = sub_BE38(v42, qword_99B688);
  v44 = *(v42 - 8);
  v45 = v71;
  (*(v44 + 16))(v71, v43, v42);
  (*(v44 + 56))(v45, 0, 1, v42);
  sub_758E60();

  [*&v36[v39] _setContinuousCornerRadius:20.0];
  v46 = [v36 contentView];
  [v46 addSubview:*&v36[v39]];

  v47 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_containerView;
  [*&v36[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_containerView] setClipsToBounds:1];
  v48 = [v36 contentView];
  [v48 addSubview:*&v36[v47]];

  v49 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  v50 = *&v36[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_numberCompletedLabel];
  sub_396E8();
  v51 = v50;
  v52 = sub_769FD0();
  [v51 setTextColor:v52];

  v53 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  v54 = *&v36[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_outOfTotalLabel];
  v55 = sub_769FD0();
  [v54 setTextColor:v55];

  v56 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_completedLabel;
  v57 = *&v36[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_completedLabel];
  v58 = sub_769FD0();
  [v57 setTextColor:v58];

  [*&v36[v49] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v56] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v53] setAdjustsFontSizeToFitWidth:1];
  [*&v36[v49] _setMinimumFontSize:20.0];
  [*&v36[v56] _setMinimumFontSize:11.0];
  [*&v36[v53] _setMinimumFontSize:11.0];
  v59 = [v36 contentView];
  [v59 addSubview:*&v36[v53]];

  v60 = [v36 contentView];
  [v60 addSubview:*&v36[v49]];

  v61 = [v36 contentView];
  [v61 addSubview:*&v36[v56]];

  v62 = [v36 traitCollection];
  v63 = [v62 userInterfaceStyle];

  if (v63 == &dword_0 + 2)
  {
    v64 = sub_76A030();
  }

  else
  {
    v64 = sub_76A000();
  }

  v65 = v64;
  [*&v36[v39] setBackgroundColor:v64];

  sub_BD88(&qword_9477F0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_77B6D0;
  *(v66 + 32) = sub_7677C0();
  *(v66 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_769F20();

  swift_unknownObjectRelease();

  return v36;
}

void sub_268118()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  sub_396E8();
  if (v3 == &dword_0 + 2)
  {
    v4 = sub_76A030();
  }

  else
  {
    v4 = sub_76A000();
  }

  v5 = v4;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_shadowView] setBackgroundColor:?];
}

id sub_268218()
{
  ObjectType = swift_getObjectType();
  v25 = sub_7664F0();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7609A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_7609C0();
  v26 = *(v27 - 8);
  *&v9 = __chkstk_darwin(v27).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43.receiver = v0;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, "layoutSubviews", v9);
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_shadowView];
  [v0 bounds];
  [v12 setFrame:?];
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_containerView];
  [v0 bounds];
  result = [v13 setFrame:?];
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView];
  if (v15)
  {
    v16 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_metrics;
    swift_beginAccess();
    (*(v6 + 16))(v8, &v0[v16], v5);
    v41 = sub_75E8A0();
    v42 = &protocol witness table for UIView;
    v40 = v15;
    v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_numberCompletedLabel];
    v38 = sub_75BB20();
    v39 = &protocol witness table for UILabel;
    v36 = &protocol witness table for UILabel;
    v37 = v17;
    v18 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_outOfTotalLabel];
    v35 = v38;
    v33 = &protocol witness table for UILabel;
    v34 = v18;
    v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_completedLabel];
    v32 = v38;
    v31 = v19;
    v30 = 0;
    v29 = 0u;
    v28 = 0u;
    v20 = v15;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    sub_7609B0();
    [v0 bounds];
    sub_760960();

    (*(v2 + 8))(v4, v25);
    return (*(v26 + 8))(v11, v27);
  }

  return result;
}

uint64_t type metadata accessor for AchievementSummaryCollectionViewCell()
{
  result = qword_94BA88;
  if (!qword_94BA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26876C()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    sub_7609A0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_268858()
{
  v29 = sub_760AD0();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_itemLayoutContext;
  v8 = sub_75C840();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_shadowView;
  sub_758E80();
  *(v0 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_containerView;
  *(v0 + v10) = [objc_allocWithZone(UIView) init];
  v30 = v0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView) = 0;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_numberCompletedLabel;
  if (qword_93D830 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99F088);
  v14 = *(v12 - 8);
  v27 = *(v14 + 16);
  v27(v6, v13, v12);
  v26 = *(v14 + 56);
  v26(v6, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.leading(_:);
  v16 = *(v1 + 104);
  v28 = v1 + 104;
  v16(v3, enum case for DirectionalTextAlignment.leading(_:), v29);
  v17 = sub_75BB20();
  v18 = objc_allocWithZone(v17);
  *(v30 + v11) = sub_75BB10();
  v19 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_outOfTotalLabel;
  if (qword_93D838 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v12, qword_99F0A0);
  v27(v6, v20, v12);
  v26(v6, 0, 1, v12);
  v16(v3, v15, v29);
  v21 = objc_allocWithZone(v17);
  *(v30 + v19) = sub_75BB10();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_completedLabel;
  if (qword_93D840 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v12, qword_99F0B8);
  v27(v6, v23, v12);
  v26(v6, 0, 1, v12);
  v16(v3, v15, v29);
  v24 = objc_allocWithZone(v17);
  *(v30 + v22) = sub_75BB10();
  sub_76A840();
  __break(1u);
}

id sub_268CFC(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
  result = [v5 text];
  if (result)
  {
    v7 = result;
    v8 = sub_769240();
    v10 = v9;

    if (!a2)
    {
      v13 = 0;
      goto LABEL_12;
    }

    if (v8 == a1 && v10 == a2)
    {

LABEL_16:
    }

    v12 = sub_76A950();

    if (v12)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v13 = sub_769210();
LABEL_12:

  [v5 setText:v13];

  return [v2 setNeedsLayout];
}

void sub_268E5C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_updateTimer;
    v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_updateTimer);

    if (v4)
    {
      [v4 invalidate];
      v4 = *(v2 + v3);
    }

    *(v2 + v3) = 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView);
    if (v6)
    {
      swift_beginAccess();
      v7 = v6;
      v8 = v5;
      v9 = sub_26FD98(v7);
      swift_endAccess();
    }

    else
    {
      v10 = v5;
    }

    v11 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v12 = *&v5[v11];
    if ((v12 & 0xC000000000000001) != 0)
    {

      v13 = sub_76A630();

      if (v13)
      {
LABEL_12:

        return;
      }
    }

    else if (*(v12 + 16))
    {
      goto LABEL_12;
    }

    sub_19F2DC();
    goto LABEL_12;
  }
}

uint64_t sub_268FDC(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for AppEventFormattedDatePresenter(0);
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_currentFormattedDate;
  v6 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v4 + 16) = a1;
  swift_beginAccess();
  *(v4 + 32) = &off_88A688;
  swift_unknownObjectWeakAssign();
  sub_6E7BE4();
  v7 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *(v2 + v7) = v4;
}

uint64_t sub_2690E8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DB88 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v23 = sub_BE38(v4, qword_99FA90);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_766CA0();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_B1B4(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_B1B4(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_766CB0();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_B1B4(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v25);
  v9(v11, v3, v0);
  sub_766CB0();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_7697A0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10914(&v31, &unk_99BE98);
  sub_10914(&v28, &unk_99BEC0);
  result = sub_10914(&v25, &unk_99BEE8);
  qword_99BF10 = 0;
  unk_99BF18 = 0;
  qword_99BF20 = v13;
  unk_99BF28 = v15;
  qword_99BF30 = v17;
  unk_99BF38 = v19;
  return result;
}

uint64_t sub_26940C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DBA8 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v23 = sub_BE38(v4, qword_99FAF0);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_766CA0();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_B1B4(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_B1B4(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_766CB0();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_B1B4(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v25);
  v9(v11, v3, v0);
  sub_766CB0();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_7697A0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10914(&v31, &unk_99BF40);
  sub_10914(&v28, &unk_99BF68);
  result = sub_10914(&v25, &unk_99BF90);
  qword_99BFB8 = 0;
  unk_99BFC0 = 0;
  qword_99BFC8 = v13;
  unk_99BFD0 = v15;
  qword_99BFD8 = v17;
  unk_99BFE0 = v19;
  return result;
}

uint64_t sub_269730()
{
  v0 = sub_75D510();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93CD48 != -1)
  {
    swift_once();
  }

  v4 = sub_BE38(v0, qword_99D278);
  (*(v1 + 16))(v3, v4, v0);
  sub_75D4F0();
  (*(v1 + 8))(v3, v0);
  v19 = sub_766970();
  v20 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v18);
  sub_766960();
  v16 = &type metadata for Double;
  v17 = &protocol witness table for Double;
  *&v15 = 0x4018000000000000;
  sub_7697A0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_10914(&v21, &unk_99BFE8);
  sub_10914(&v18, &unk_99C010);
  result = sub_10914(&v15, &unk_99C038);
  qword_99C060 = 0;
  unk_99C068 = 0;
  qword_99C070 = v6;
  unk_99C078 = v8;
  qword_99C080 = v10;
  unk_99C088 = v12;
  return result;
}

double sub_2698F8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D9E0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v15 = sub_BE38(v4, qword_99F598);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_766CA0();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_B1B4(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_B1B4(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_766CB0();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_B1B4(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v17);
  v9(v11, v3, v0);
  sub_766CB0();
  v10(v3, v0);
  qword_99C0F8 = &type metadata for Double;
  unk_99C100 = &protocol witness table for Double;
  qword_99C0E0 = 0x4018000000000000;
  sub_10914(&v21, &unk_99C090);
  sub_10914(&v18, &unk_99C0B8);
  qword_99C108 = 0;
  unk_99C110 = 0;
  unk_99C118 = xmmword_78EDC0;
  result = 6.0;
  unk_99C128 = xmmword_78EDD0;
  return result;
}

double sub_269BE4()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D9E0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v15 = sub_BE38(v4, qword_99F598);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_766CA0();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_B1B4(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_B1B4(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_766CB0();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_B1B4(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v17);
  v9(v11, v3, v0);
  sub_766CB0();
  v10(v3, v0);
  qword_99C1A0 = &type metadata for Double;
  unk_99C1A8 = &protocol witness table for Double;
  qword_99C188 = 0x4018000000000000;
  sub_10914(&v21, &unk_99C138);
  sub_10914(&v18, &unk_99C160);
  qword_99C1B0 = 0;
  unk_99C1B8 = 0;
  unk_99C1C0 = xmmword_78EDE0;
  result = 3.0;
  unk_99C1D0 = xmmword_78EDF0;
  return result;
}

double sub_269ED0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D9E0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v15 = sub_BE38(v4, qword_99F598);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_766CA0();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_B1B4(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_B1B4(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_766CB0();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_B1B4(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v17);
  v9(v11, v3, v0);
  sub_766CB0();
  v10(v3, v0);
  qword_99C248 = &type metadata for Double;
  unk_99C250 = &protocol witness table for Double;
  qword_99C230 = 0x4018000000000000;
  sub_10914(&v21, &unk_99C1E0);
  sub_10914(&v18, &unk_99C208);
  qword_99C258 = 0;
  unk_99C260 = 0;
  unk_99C268 = xmmword_78EE00;
  result = 7.0;
  unk_99C278 = xmmword_78EDE0;
  return result;
}

uint64_t sub_26A1BC()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D9E0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v23 = sub_BE38(v4, qword_99F598);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_766CA0();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_B1B4(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_B1B4(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_766CB0();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_B1B4(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v25);
  v9(v11, v3, v0);
  sub_766CB0();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_7697A0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10914(&v31, &unk_99C288);
  sub_10914(&v28, &unk_99C2B0);
  result = sub_10914(&v25, &unk_99C2D8);
  qword_99C300 = 0;
  unk_99C308 = 0;
  qword_99C310 = v13;
  unk_99C318 = v15;
  qword_99C320 = v17;
  unk_99C328 = v19;
  return result;
}

uint64_t sub_26A4E0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D9E0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v23 = sub_BE38(v4, qword_99F598);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_766CA0();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_B1B4(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_B1B4(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_766CB0();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_B1B4(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v25);
  v9(v11, v3, v0);
  sub_766CB0();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_7697A0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10914(&v31, &unk_99C330);
  sub_10914(&v28, &unk_99C358);
  result = sub_10914(&v25, &unk_99C380);
  qword_99C3A8 = 0;
  unk_99C3B0 = 0;
  qword_99C3B8 = v13;
  unk_99C3C0 = v15;
  qword_99C3C8 = v17;
  unk_99C3D0 = v19;
  return result;
}

uint64_t sub_26A804()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_94BAC8);
  sub_BE38(v4, qword_94BAC8);
  if (qword_93DB88 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99FA90);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

id sub_26A9D8()
{
  result = [objc_opt_self() systemRedColor];
  qword_94BAE0 = result;
  return result;
}

void sub_26AA14()
{
  v0 = [objc_opt_self() systemRedColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  qword_94BAE8 = v1;
}

id sub_26AAA0(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

char *sub_26AAEC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_760AD0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v18 - 8);
  v20 = &v37 - v19;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_showLiveIndicator] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_vibrancyView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_appEventFormattedDatePresenter] = 0;
  if (qword_93DB88 != -1)
  {
    swift_once();
  }

  v21 = sub_7666D0();
  v22 = sub_BE38(v21, qword_99FA90);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, v22, v21);
  (*(v23 + 56))(v20, 0, 1, v21);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v24 = objc_allocWithZone(sub_75BB20());
  v25 = sub_75BB10();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel] = v25;
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  v26 = v25;
  sub_768C10();
  sub_10A2C(v40, &unk_93FBD0);
  sub_10A2C(v41, &unk_93FBD0);
  sub_769E70();

  (*(v11 + 8))(v13, v10);
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setClipsToBounds:0];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel;
  v33 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
  sub_BE70(0, &qword_93E540);
  v34 = v33;
  v35 = sub_76A0F0();
  [v34 setTextColor:v35];

  [v31 addSubview:*&v31[v32]];
  return v31;
}

id sub_26AFF4()
{
  ObjectType = swift_getObjectType();
  sub_268E5C();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_26B140(id result)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_showLiveIndicator;
  v3 = v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_showLiveIndicator];
  if (v3 != (result & 1))
  {
    v4 = v1;
    v5 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView;
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_showLiveIndicator])
    {
      if (!*&v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView])
      {
        sub_75CD70();
        v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_270B48();
        v12 = *&v1[v5];
        *&v1[v5] = v11;
        v13 = v11;

        v14 = qword_93C850;
        v15 = v13;
        if (v14 != -1)
        {
          swift_once();
        }

        [v15 setBackgroundColor:qword_94BAE0];

        if (qword_93C858 != -1)
        {
          swift_once();
        }

        v16 = qword_94BAE8;
        sub_75CD00();
        sub_75CD10();
        [v4 addSubview:v15];

        [v4 setNeedsLayout];
        v5 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView;
        v3 = v4[v2];
        v6 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView];
        if (v6)
        {
LABEL_6:
          [v6 setHidden:v3 ^ 1u];
          if (v4[v2])
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }

LABEL_14:
        if (v3)
        {
LABEL_7:
          v7 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
          if (v7)
          {
            v8 = *&v4[v5];
            v9 = v7;
            v10 = v8;
            sub_19EF70(v8);
          }

          return [v4 setNeedsLayout];
        }

LABEL_15:
        v17 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        if (!v17)
        {
          return [v4 setNeedsLayout];
        }

        v18 = *&v4[v5];
        if (v18)
        {
          swift_beginAccess();
          v19 = v18;
          v20 = v17;
          v21 = sub_26FD98(v19);
          swift_endAccess();
        }

        else
        {
          v22 = v17;
        }

        v23 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
        swift_beginAccess();
        v24 = *&v17[v23];
        if ((v24 & 0xC000000000000001) != 0)
        {

          v25 = sub_76A630();

          if (v25)
          {
LABEL_22:

            return [v4 setNeedsLayout];
          }
        }

        else if (*(v24 + 16))
        {
          goto LABEL_22;
        }

        sub_19F2DC();
        goto LABEL_22;
      }

      v3 = 1;
    }

    v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView];
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  return result;
}

void sub_26B40C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_7593D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_BD88(&unk_93E530);
  *&v9 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v11 = &v73[-v10];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style;
  v13 = v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style];
  if (v13 != a1)
  {
    v14 = &OBJC_METACLASS____TtC18ASMessagesProvider23SearchAdsAdvertPipeline;
    if (v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] > 3u)
    {
      if ((v13 - 5) >= 2)
      {
        if (v13 != 4)
        {
          v52 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView];
          if (v52)
          {
            [v52 setHidden:{1, v9}];
          }

          v53 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
          swift_beginAccess();
          v54 = *&v2[v53];
          if (v54)
          {
            [v54 setHidden:1];
          }

          v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
          sub_BE70(0, &qword_93E540);
          v55 = sub_76A0F0();
          [v18 setTextColor:v55];

          if (qword_93DC00 != -1)
          {
            swift_once();
          }

          v20 = sub_7666D0();
          v21 = v20;
          v22 = qword_99FBF8;
          goto LABEL_52;
        }

        v23 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView];
        if (v23)
        {
          [v23 setHidden:{1, v9}];
        }

        v24 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v25 = *&v2[v24];
        if (v25 || (v26 = [objc_allocWithZone(sub_75CD70()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], sub_26C2A0(v26), (v25 = *&v2[v24]) != 0))
        {
          [v25 setHidden:0];
        }

        v27 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
        sub_BE70(0, &qword_93E540);
        v28 = sub_769FD0();
        [v27 setTextColor:v28];

        if (qword_93D5F8 != -1)
        {
          swift_once();
        }

        v29 = sub_7666D0();
        sub_BE38(v29, qword_99E9E0);
        v30.super.isa = [v2 traitCollection];
        isa = v30.super.isa;
        v32 = sub_7666B0(v30).super.isa;

        v33 = [(objc_class *)v32 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
        if (v33)
        {
          v34 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
          [v27 setFont:v34];
        }

        else
        {
          sub_BE70(0, &qword_93F900);
          v71 = [v2 traitCollection];
          v34 = sub_769E10();

          [v27 setFont:v34];
        }

        if (v2[v12] == 5)
        {
          v72 = 2;
        }

        else
        {
          v72 = 1;
        }

        [v27 setNumberOfLines:v72];
        v14 = &OBJC_METACLASS____TtC18ASMessagesProvider23SearchAdsAdvertPipeline;
        goto LABEL_53;
      }
    }

    else
    {
      if (v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] <= 1u)
      {
        if (!v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style])
        {
          v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView];
          if (v15)
          {
            [v15 setHidden:{1, v9}];
          }

          v16 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
          swift_beginAccess();
          v17 = *&v2[v16];
          if (v17)
          {
            [v17 setHidden:1];
          }

          v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
          sub_BE70(0, &qword_93E540);
          v19 = sub_76A0F0();
          [v18 setTextColor:v19];

          if (qword_93DB88 != -1)
          {
            swift_once();
          }

          v20 = sub_7666D0();
          v21 = v20;
          v22 = qword_99FA90;
LABEL_52:
          v56 = sub_BE38(v20, v22);
          v57 = *(v21 - 8);
          (*(v57 + 16))(v11, v56, v21);
          (*(v57 + 56))(v11, 0, 1, v21);
          sub_75BA40();
          [v18 setNumberOfLines:1];
          goto LABEL_53;
        }

        v46 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v47 = *&v2[v46];
        if (v47)
        {
          [v47 setHidden:1];
        }

        v48 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
        if (qword_93DBA8 != -1)
        {
          swift_once();
        }

        v49 = sub_7666D0();
        v50 = sub_BE38(v49, qword_99FAF0);
        v51 = *(v49 - 8);
        (*(v51 + 16))(v11, v50, v49);
        (*(v51 + 56))(v11, 0, 1, v49);
        sub_75BA40();
        sub_26BFA0();
        [v48 setNumberOfLines:2];
LABEL_53:
        sub_26C33C();
        v58 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView];
        if (!v58)
        {
LABEL_72:
          info = v14[71].info;
          swift_beginAccess();
          v65 = *(&info->flags + v2);
          if (!v65)
          {
            goto LABEL_82;
          }

          (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
          v66 = v65;
          sub_75CCE0();

          (*(v5 + 8))(v7, v4);
          v67 = *(&info->flags + v2);
          if (!v67)
          {
            goto LABEL_82;
          }

          v68 = v2[v12];
          if (v68 <= 2)
          {
            goto LABEL_80;
          }

          if (v2[v12] > 5u)
          {
            if (v68 != 6)
            {
LABEL_80:
              v69 = v67;
              goto LABEL_81;
            }
          }

          else if (v68 - 3 >= 2)
          {
            goto LABEL_80;
          }

          v69 = v67;
          v70 = [v2 traitCollection];
          sub_7699F0();

LABEL_81:
          sub_75CD50();

LABEL_82:
          [v2 setNeedsLayout];
          return;
        }

        v59 = v2[v12];
        v60 = 0.0;
        if (v59 > 3)
        {
          if (v2[v12] <= 5u)
          {
            v61 = 8.0;
            v60 = 10.0;
            if (v59 == 4)
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }

          if (v59 != 6)
          {
LABEL_56:
            if (v2[v12] > 2u)
            {
LABEL_57:
              if (v2[v12] <= 5u)
              {
                v61 = v60;
                if (v59 - 3 >= 2)
                {
                  goto LABEL_67;
                }

LABEL_69:
                v62 = v58;
                v63 = [v2 traitCollection];
                sub_7699F0();

                goto LABEL_71;
              }

              if (v59 == 6)
              {
                goto LABEL_69;
              }

LABEL_70:
              v62 = v58;
              goto LABEL_71;
            }

            if (v59 != 1)
            {
              goto LABEL_70;
            }

            v61 = 0.0;
LABEL_67:
            v62 = v58;
            v60 = v61;
LABEL_71:
            [v62 _setCornerRadius:1 continuous:sub_7697E0() maskedCorners:v60];

            goto LABEL_72;
          }
        }

        else if (v59 < 3)
        {
          goto LABEL_56;
        }

        v60 = 20.0;
        goto LABEL_57;
      }

      if (v13 == 2)
      {
        v35 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView];
        if (v35)
        {
          [v35 setHidden:{1, v9}];
        }

        v36 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v37 = *&v2[v36];
        if (v37)
        {
          [v37 setHidden:1];
        }

        v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
        sub_BE70(0, &qword_93E540);
        v38 = sub_76A0F0();
        [v18 setTextColor:v38];

        if (qword_93D5E0 != -1)
        {
          swift_once();
        }

        v20 = sub_7666D0();
        v21 = v20;
        v22 = qword_99E998;
        goto LABEL_52;
      }
    }

    v39 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView];
    if (v39)
    {
      [v39 setHidden:{1, v9}];
    }

    v40 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v41 = *&v2[v40];
    if (v41 || (v42 = [objc_allocWithZone(sub_75CD70()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], sub_26C2A0(v42), (v41 = *&v2[v40]) != 0))
    {
      [v41 setHidden:0];
    }

    v43 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
    sub_BE70(0, &qword_93E540);
    v44 = sub_769FD0();
    [v43 setTextColor:v44];

    if (v2[v12] == 5)
    {
      v45 = 2;
    }

    else
    {
      v45 = 1;
    }

    [v43 setNumberOfLines:v45];
    goto LABEL_53;
  }
}

void sub_26BFA0()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] != 1)
  {
    return;
  }

  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == &dword_0 + 2)
  {
    if (qword_93C868 != -1)
    {
      swift_once();
    }

    v3 = &qword_94BAF8;
  }

  else
  {
    if (qword_93C860 != -1)
    {
      swift_once();
    }

    v3 = &qword_94BAF0;
  }

  v4 = *v3;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView;
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView];
  if (!v6)
  {
    sub_26C840([objc_allocWithZone(UIVisualEffectView) initWithEffect:v4]);
    v7 = *&v0[v5];
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [v6 setEffect:v4];
  v7 = *&v0[v5];
  if (v7)
  {
LABEL_12:
    [v7 setHidden:0];
  }

LABEL_13:
  v8 = [v0 traitCollection];
  v9 = [v8 userInterfaceStyle] != &dword_0 + 2;

  v10 = [objc_opt_self() effectForBlurEffect:v4 style:4 * v9];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_vibrancyView;
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_vibrancyView];
  if (v12)
  {
    [v12 setEffect:v10];
  }

  else
  {
    v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];
    v14 = *&v0[v11];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v11];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v11] = v13;
    v16 = v13;

    sub_26C8EC();
  }

  v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
  v18 = [v0 traitCollection];
  v19 = [v18 userInterfaceStyle];

  if (v19 == &dword_0 + 2)
  {
    v20 = [objc_opt_self() whiteColor];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  [v17 setTextColor:?];
}

void sub_26C2A0(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v4 = *&v1[v3];
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
    [v1 insertSubview:v6 atIndex:0];
  }
}

void sub_26C33C()
{
  v1 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style];
  if (v4 > 3)
  {
    if (v4 - 5 >= 2)
    {
      if (v4 != 4)
      {
        if (qword_93DC00 != -1)
        {
          swift_once();
        }

        v5 = sub_7666D0();
        v6 = v5;
        v7 = qword_99FBF8;
        goto LABEL_28;
      }

      if (qword_93D5F8 != -1)
      {
        swift_once();
      }

      v8 = sub_7666D0();
      sub_BE38(v8, qword_99E9E0);
      v9.super.isa = [v0 traitCollection];
      isa = v9.super.isa;
      v11 = sub_7666B0(v9).super.isa;

      v12 = [(objc_class *)v11 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
      v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
      if (v12)
      {
        goto LABEL_20;
      }

LABEL_29:
      sub_BE70(0, &qword_93F900);
      v20 = [v0 traitCollection];
      v23 = sub_769E10();

      [v13 setFont:v23];
      goto LABEL_30;
    }
  }

  else
  {
    if (v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] <= 1u)
    {
      if (v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style])
      {
        if (qword_93DBA8 != -1)
        {
          swift_once();
        }

        v5 = sub_7666D0();
        v6 = v5;
        v7 = qword_99FAF0;
      }

      else
      {
        if (qword_93DB88 != -1)
        {
          swift_once();
        }

        v5 = sub_7666D0();
        v6 = v5;
        v7 = qword_99FA90;
      }

LABEL_28:
      v18 = sub_BE38(v5, v7);
      v19 = *(v6 - 8);
      (*(v19 + 16))(v3, v18, v6);
      (*(v19 + 56))(v3, 0, 1, v6);
      sub_75BA40();
      return;
    }

    if (v4 == 2)
    {
      if (qword_93D5E0 != -1)
      {
        swift_once();
      }

      v5 = sub_7666D0();
      v6 = v5;
      v7 = qword_99E998;
      goto LABEL_28;
    }
  }

  if (qword_93D9E0 != -1)
  {
    swift_once();
  }

  v14 = sub_7666D0();
  sub_BE38(v14, qword_99F598);
  v15.super.isa = [v0 traitCollection];
  v16 = v15.super.isa;
  v17 = sub_7666B0(v15).super.isa;

  v12 = [(objc_class *)v17 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
  if (!v12)
  {
    goto LABEL_29;
  }

LABEL_20:
  v23 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  [v13 setFont:v23];

LABEL_30:
  v21 = v23;
}

void sub_26C840(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView];
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
    [v1 insertSubview:v6 atIndex:0];
  }
}

void sub_26C8EC()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_vibrancyView];
  if (v1)
  {
    v6 = v1;
    v2 = [v6 contentView];
    [v2 addSubview:*&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel]];

    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView];
    if (v3)
    {
      v4 = [v3 contentView];
      [v4 addSubview:v6];
    }
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];

    [v0 addSubview:v5];
  }
}

void sub_26CAC0(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v4)
  {
    if (!a1 || (type metadata accessor for AppEventLiveIndicatorAnimationCoordinator(), v6 = v4, v7 = a1, v8 = sub_76A1C0(), v6, v7, (v8 & 1) == 0) && (v4 = *(v2 + v3)) != 0)
    {
      v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView);
      if (v9)
      {
        swift_beginAccess();
        v10 = v9;
        v11 = v4;
        v12 = sub_26FD98(v10);
        swift_endAccess();
      }

      else
      {
        v13 = v4;
      }

      v14 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
      swift_beginAccess();
      v15 = *&v4[v14];
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = sub_76A630();

        if (v16)
        {
LABEL_11:

          return;
        }
      }

      else if (*(v15 + 16))
      {
        goto LABEL_11;
      }

      sub_19F2DC();
      goto LABEL_11;
    }
  }
}

void sub_26CC24(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
      v6 = v5;
      v7 = a1;
      v8 = sub_76A1C0();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = *(v2 + v4);
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_showLiveIndicator) != 1)
  {
    if (!v9)
    {
      return;
    }

    v12 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView);
    if (v12)
    {
      swift_beginAccess();
      v13 = v12;
      v14 = v9;
      v15 = sub_26FD98(v13);
      swift_endAccess();
    }

    else
    {
      v16 = v9;
    }

    v17 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v18 = *&v9[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v19 = sub_76A630();

      if (v19)
      {
LABEL_18:

        return;
      }
    }

    else if (*(v18 + 16))
    {
      goto LABEL_18;
    }

    sub_19F2DC();
    goto LABEL_18;
  }

  if (v9)
  {
    v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView);
    v11 = v9;
    v20 = v10;
    sub_19EF70(v10);
  }
}

void sub_26CDFC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7593D0();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7664F0();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v99 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7573C0();
  v97 = *(v7 - 8);
  v98 = v7;
  __chkstk_darwin(v7);
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_76A920();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v1;
  v109.super_class = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v11);
  v81 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView;
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView];
  if (v14)
  {
    v15 = v14;
    if (![v15 isHidden])
    {
      goto LABEL_7;
    }
  }

  v16 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v14 = *&v1[v16];
  if (v14)
  {
    v17 = v14;
    if ([v17 isHidden])
    {

      v14 = 0;
    }
  }

LABEL_7:
  v103 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style;
  v18 = v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style];
  if (v18 > 3)
  {
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] > 5u)
    {
      if (v18 == 6)
      {
        if (qword_93C838 != -1)
        {
          swift_once();
        }

        v19 = &unk_99C288;
      }

      else
      {
        if (qword_93C840 != -1)
        {
          swift_once();
        }

        v19 = &unk_99C330;
      }
    }

    else if (v18 == 4)
    {
      if (qword_93C828 != -1)
      {
        swift_once();
      }

      v19 = &unk_99C138;
    }

    else
    {
      if (qword_93C830 != -1)
      {
        swift_once();
      }

      v19 = &unk_99C1E0;
    }
  }

  else if (v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style] > 1u)
  {
    if (v18 == 2)
    {
      if (qword_93C818 != -1)
      {
        swift_once();
      }

      v19 = &unk_99BFE8;
    }

    else
    {
      if (qword_93C820 != -1)
      {
        swift_once();
      }

      v19 = &unk_99C090;
    }
  }

  else if (v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style])
  {
    if (qword_93C810 != -1)
    {
      swift_once();
    }

    v19 = &unk_99BF40;
  }

  else
  {
    if (qword_93C808 != -1)
    {
      swift_once();
    }

    v19 = &unk_99BE98;
  }

  sub_1261A0(v19, v107);
  if (qword_93C848 != -1)
  {
    swift_once();
  }

  v20 = sub_766CA0();
  v21 = sub_BE38(v20, qword_94BAC8);
  sub_766470();
  v83 = v21;
  v84 = v20;
  sub_766700();
  v23 = v22;
  v25 = *(v10 + 8);
  v24 = v10 + 8;
  v82 = v25;
  v25(v13, v9);
  v107[15] = v23;
  v107[16] = v23;
  v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
  v27 = sub_75BB20();
  v106[4] = &protocol witness table for UILabel;
  v106[3] = v27;
  v106[0] = v26;
  v95 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView;
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView];
  if (v28)
  {
    v94 = sub_75CD70();
    v93 = &protocol witness table for UIView;
  }

  else
  {
    v93 = 0;
    v94 = 0;
  }

  v104 = v14;
  v85 = v13;
  if (v14)
  {
    v92 = sub_BE70(0, &qword_93E550);
    v91 = &protocol witness table for UIView;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v86 = v24;
  v87 = v9;
  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_vibrancyView];
  if (v29)
  {
    v30 = sub_BE70(0, &unk_944FA0);
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  sub_1261A0(v107, v105);
  v32 = v29;
  v33 = v26;
  v34 = v28;
  v102 = v104;
  v35 = v96;
  sub_757390();
  v36 = sub_7573A0();
  (*(v97 + 8))(v35, v98);
  if (v36)
  {
    sub_766A20();
    sub_1261FC(v107);
  }

  else
  {
    sub_1261FC(v107);
    sub_134D8(v106, &v105[21]);
  }

  v105[26] = v28;
  v105[27] = 0;
  v105[28] = 0;
  v105[29] = v94;
  v105[30] = v93;
  v105[31] = v104;
  v105[32] = 0;
  v105[33] = 0;
  v105[34] = v92;
  v105[35] = v91;
  v105[36] = v29;
  v105[37] = 0;
  v105[38] = 0;
  v105[39] = v30;
  v105[40] = v31;
  memcpy(v108, v105, sizeof(v108));
  sub_BEB8(v106);
  [v1 bounds];
  v37 = v99;
  AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(v38, v39, v40, v41);
  (*(v100 + 8))(v37, v101);
  v42 = *&v1[v95];
  v43 = v103;
  if (v42)
  {
    v44 = v1[v103];
    if (v44 > 3)
    {
      v45 = v85;
      if (v1[v103] > 5u)
      {
        if (v44 == 6)
        {
          v53 = qword_93C838;
          v54 = v42;
          if (v53 != -1)
          {
            swift_once();
          }

          v48 = &unk_99C288;
        }

        else
        {
          v61 = qword_93C840;
          v62 = v42;
          if (v61 != -1)
          {
            swift_once();
          }

          v48 = &unk_99C330;
        }
      }

      else if (v44 == 4)
      {
        v49 = qword_93C828;
        v50 = v42;
        if (v49 != -1)
        {
          swift_once();
        }

        v48 = &unk_99C138;
      }

      else
      {
        v57 = qword_93C830;
        v58 = v42;
        if (v57 != -1)
        {
          swift_once();
        }

        v48 = &unk_99C1E0;
      }
    }

    else
    {
      v45 = v85;
      if (v1[v103] > 1u)
      {
        if (v44 == 2)
        {
          v51 = qword_93C818;
          v52 = v42;
          if (v51 != -1)
          {
            swift_once();
          }

          v48 = &unk_99BFE8;
        }

        else
        {
          v59 = qword_93C820;
          v60 = v42;
          if (v59 != -1)
          {
            swift_once();
          }

          v48 = &unk_99C090;
        }
      }

      else if (v1[v103])
      {
        v55 = qword_93C810;
        v56 = v42;
        if (v55 != -1)
        {
          swift_once();
        }

        v48 = &unk_99BF40;
      }

      else
      {
        v46 = qword_93C808;
        v47 = v42;
        if (v46 != -1)
        {
          swift_once();
        }

        v48 = &unk_99BE98;
      }
    }

    sub_1261A0(v48, v105);
    sub_766470();
    sub_766700();
    v64 = v63;
    v82(v45, v87);
    v105[15] = v64;
    v105[16] = v64;
    sub_1261FC(v105);
    v66 = v88;
    v65 = v89;
    v67 = v90;
    (*(v89 + 104))(v88, enum case for CornerStyle.arc(_:), v90);
    sub_75CCE0();

    (*(v65 + 8))(v66, v67);
  }

  v68 = v102;
  if (v1[v43] != 1)
  {

    goto LABEL_100;
  }

  if (!v104)
  {
LABEL_100:
    sub_37538(v108);
    return;
  }

  [v102 bounds];
  v70 = v69 * 0.5;
  v71 = *&v1[v81];
  if (!v71)
  {
    goto LABEL_98;
  }

  v72 = v1[v43];
  if (v72 <= 2)
  {
    goto LABEL_96;
  }

  if (v1[v43] <= 5u)
  {
    if (v72 - 3 < 2)
    {
      goto LABEL_95;
    }

LABEL_96:
    v73 = v71;
    goto LABEL_97;
  }

  if (v72 != 6)
  {
    goto LABEL_96;
  }

LABEL_95:
  v73 = v71;
  v74 = [v1 traitCollection];
  sub_7699F0();

LABEL_97:
  [v73 _setCornerRadius:1 continuous:sub_7697E0() maskedCorners:v70];

LABEL_98:
  v75 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v76 = *&v1[v75];
  if (v76)
  {
    swift_endAccess();
    v78 = v88;
    v77 = v89;
    v79 = v90;
    (*(v89 + 104))(v88, enum case for CornerStyle.continuous(_:), v90);
    v80 = v76;
    sub_75CCE0();

    (*(v77 + 8))(v78, v79);
    goto LABEL_100;
  }

  sub_37538(v108);
  swift_endAccess();
}

uint64_t sub_26DAA8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_7573C0();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style);
  if (v10 > 3)
  {
    if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style) > 5u)
    {
      if (v10 == 6)
      {
        if (qword_93C838 != -1)
        {
          swift_once();
        }

        v11 = &unk_99C288;
      }

      else
      {
        if (qword_93C840 != -1)
        {
          swift_once();
        }

        v11 = &unk_99C330;
      }
    }

    else if (v10 == 4)
    {
      if (qword_93C828 != -1)
      {
        swift_once();
      }

      v11 = &unk_99C138;
    }

    else
    {
      if (qword_93C830 != -1)
      {
        swift_once();
      }

      v11 = &unk_99C1E0;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style) > 1u)
  {
    if (v10 == 2)
    {
      if (qword_93C818 != -1)
      {
        swift_once();
      }

      v11 = &unk_99BFE8;
    }

    else
    {
      if (qword_93C820 != -1)
      {
        swift_once();
      }

      v11 = &unk_99C090;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style))
  {
    if (qword_93C810 != -1)
    {
      swift_once();
    }

    v11 = &unk_99BF40;
  }

  else
  {
    if (qword_93C808 != -1)
    {
      swift_once();
    }

    v11 = &unk_99BE98;
  }

  sub_1261A0(v11, v37);
  if (qword_93C848 != -1)
  {
    swift_once();
  }

  v12 = sub_766CA0();
  sub_BE38(v12, qword_94BAC8);
  sub_766470();
  sub_766700();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v37[15] = v14;
  v37[16] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel);
  v36[3] = sub_75BB20();
  v36[4] = &protocol witness table for UILabel;
  v36[0] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView);
  if (v16)
  {
    v31 = sub_75CD70();
    v30 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v17 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView);
  if (v17)
  {
    v18 = sub_BE70(0, &unk_944FA0);
    v29 = &protocol witness table for UIView;
  }

  else
  {
    v18 = 0;
    v29 = 0;
  }

  v19 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_vibrancyView);
  if (v19)
  {
    v20 = sub_BE70(0, &unk_944FA0);
    v21 = &protocol witness table for UIView;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_1261A0(v37, v35);
  v22 = v19;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v5;
  sub_757390();
  v27 = sub_7573A0();
  (*(v32 + 8))(v26, v33);
  if (v27)
  {
    sub_766A20();
    sub_1261FC(v37);
  }

  else
  {
    sub_1261FC(v37);
    sub_134D8(v36, &v35[21]);
  }

  v35[26] = v16;
  v35[27] = 0;
  v35[28] = 0;
  v35[29] = v31;
  v35[30] = v30;
  v35[31] = v17;
  v35[32] = 0;
  v35[33] = 0;
  v35[34] = v18;
  v35[35] = v29;
  v35[36] = v19;
  v35[37] = 0;
  v35[38] = 0;
  v35[39] = v20;
  v35[40] = v21;
  memcpy(v34, v35, 0x148uLL);
  return sub_BEB8(v36);
}

uint64_t sub_26E0F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_7685A0();
  __chkstk_darwin(v8 - 8);

  sub_268CFC(a1, a2);
  v9 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_showLiveIndicator);
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_showLiveIndicator) = a3;
  sub_26B140(v9);
  v10 = v4 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v4, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v14 = sub_768FF0();
    sub_BE38(v14, qword_9A0400);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v16._object = 0x80000000007D7280;
    v16._countAndFlagsBits = 0xD000000000000014;
    sub_768580(v16);
    sub_768570();
    v17._countAndFlagsBits = 0xD000000000000050;
    v17._object = 0x80000000007D72A0;
    sub_768580(v17);
    sub_7685B0();
    sub_768EB0();
  }
}

void sub_26E3E4(void *a1)
{
  v2 = v1;
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_769A00();

  if (!a1 || ((sub_769A00() ^ v5) & 1) != 0)
  {
    goto LABEL_3;
  }

  v6 = [v2 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = [a1 preferredContentSizeCategory];
  v9 = sub_769240();
  v11 = v10;
  if (v9 == sub_769240() && v11 == v12)
  {
  }

  else
  {
    v13 = sub_76A950();

    if ((v13 & 1) == 0)
    {
LABEL_3:
      sub_26C33C();
    }
  }
}

void sub_26E5C0()
{
  v1 = v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_showLiveIndicator];
  v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_showLiveIndicator] = 0;
  sub_26B140(v1);
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v0 setNeedsLayout];
  }

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView];
    if (v5)
    {
      swift_beginAccess();
      v6 = v5;
      v7 = v4;
      v8 = sub_26FD98(v6);
      swift_endAccess();
    }

    else
    {
      v9 = v4;
    }

    v10 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v11 = *&v4[v10];
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = sub_76A630();

      if (v12)
      {
LABEL_10:

        return;
      }
    }

    else if (*(v11 + 16))
    {
      goto LABEL_10;
    }

    sub_19F2DC();
    goto LABEL_10;
  }
}

uint64_t getEnumTagSinglePayload for AppPromotionFormattedDateView.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppPromotionFormattedDateView.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26E8C0()
{
  result = qword_94BB78;
  if (!qword_94BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94BB78);
  }

  return result;
}

uint64_t sub_26E95C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_26EA1C(void *a1)
{
  sub_26DAA8(v8);
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_77D9F0;
  *(v2 + 32) = a1;
  v3 = a1;
  v4 = sub_7671E0();
  sub_27084C(v4, v8);
  v6 = v5;

  sub_37538(v8);
  return v6;
}

Swift::Int sub_26EAFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_BD88(&qword_948100);
    v2 = sub_76A710();
    v14 = v2;
    sub_76A5F0();
    if (sub_76A660())
    {
      sub_BE70(0, &qword_93E550);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_26ECEC();
        }

        v2 = v14;
        result = sub_76A1B0(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_76A660());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_26ECEC()
{
  v1 = v0;
  v2 = *v0;
  sub_BD88(&qword_948100);
  result = sub_76A700();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_76A1B0(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_26EF14()
{
  v1 = v0;
  v2 = *v0;
  sub_BD88(&qword_948128);
  result = sub_76A700();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_769240();
      sub_76AA30();
      sub_769330();
      v17 = sub_76AA80();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_26F190()
{
  v1 = v0;
  v2 = *v0;
  sub_BD88(&qword_948140);
  result = sub_76A700();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_76AA20();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_26F3B4()
{
  v1 = v0;
  v35 = sub_764CF0();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_BD88(&qword_9520F0);
  result = sub_76A700();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_270D44(&qword_948180);
      result = sub_769150();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

unint64_t sub_26F6FC(uint64_t a1, void *a2)
{
  sub_76A1B0(a2[5]);
  result = sub_76A5D0();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

id sub_26F780()
{
  v1 = v0;
  sub_BD88(&qword_948100);
  v2 = *v0;
  v3 = sub_76A6F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_26F8D0()
{
  v1 = v0;
  sub_BD88(&qword_948128);
  v2 = *v0;
  v3 = sub_76A6F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_26FA20()
{
  v1 = v0;
  sub_BD88(&qword_948140);
  v2 = *v0;
  v3 = sub_76A6F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_26FB60()
{
  v1 = v0;
  v2 = sub_764CF0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_9520F0);
  v6 = *v0;
  v7 = sub_76A6F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_26FD98(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_76A670();

    if (v5)
    {
      v6 = sub_2701B0();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_BE70(0, &qword_93E550);
  v9 = sub_76A1B0(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_76A1C0();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26F780();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_270318(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_26FF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_764CF0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_270D44(&qword_948180);
  v31 = a1;
  v10 = sub_769150();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_270D44(&qword_945868);
      v19 = sub_7691C0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26FB60();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_2704B8(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_2701B0()
{
  v1 = v0;

  v2 = sub_76A630();
  v3 = swift_unknownObjectRetain();
  v4 = sub_26EAFC(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_76A1B0(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_BE70(0, &qword_93E550);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = sub_76A1C0();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_270318(v8);
  result = sub_76A1C0();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_270318(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_76A5C0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_76A1B0(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_2704B8(int64_t a1)
{
  v3 = sub_764CF0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_76A5C0();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v34 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v15 = v11;
      v16 = *(v13 + 56);
      v35 = v13;
      v32 = (v13 - 8);
      v33 = v14;
      do
      {
        v17 = v8;
        v18 = v16;
        v19 = v16 * v10;
        v33(v6, *(v7 + 48) + v16 * v10, v3);
        v20 = v7;
        v21 = v15;
        v22 = v20;
        sub_270D44(&qword_948180);
        v23 = sub_769150();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v15 = v21;
        if (a1 >= v34)
        {
          if (v24 >= v34 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v18;
            v28 = v18 * a1;
            if (v18 * a1 < v19 || v27 + v18 * a1 >= (v27 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v34 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v18;
LABEL_5:
        v10 = (v10 + 1) & v15;
        v8 = v17;
      }

      while (((*(v17 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

double sub_2707B0(uint64_t a1)
{
  sub_26DAA8(v5);
  sub_53DD74(a1, v5);
  v3 = v2;
  sub_37538(v5);
  return v3;
}

uint64_t sub_27084C(uint64_t a1, void *a2)
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
    sub_10A2C(&v10, &unk_943B10);
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

void sub_270B48()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView);
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v3)
  {
    v4 = *(v0 + v1);
    if (v4)
    {
      swift_beginAccess();
      v5 = v4;
      v6 = v3;
      v7 = sub_26FD98(v5);
      swift_endAccess();
    }

    else
    {
      v8 = v3;
    }

    v9 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v10 = *&v3[v9];
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = sub_76A630();

      if (v11)
      {
LABEL_10:

        return;
      }
    }

    else if (*(v10 + 16))
    {
      goto LABEL_10;
    }

    sub_19F2DC();
    goto LABEL_10;
  }
}

void sub_270C70()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_showLiveIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_blurredBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_vibrancyView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_appEventFormattedDatePresenter) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_270D44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_764CF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_270D8C()
{
  v0 = sub_BD88(&qword_94A558);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_7689F0();
  sub_7689E0();
  if (qword_93C878 != -1)
  {
    swift_once();
  }

  v4 = sub_BE38(v0, qword_94BB98);
  (*(v1 + 16))(v3, v4, v0);
  v8 = 1;
  v9 = 0;
  sub_7686E0();

  if (qword_93C870 != -1)
  {
    swift_once();
  }

  v5 = sub_768FF0();
  sub_BE38(v5, qword_94BB80);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  sub_7689E0();
  sub_7686D0();

  v6 = v8;
  if (v9)
  {
    v6 = 0;
  }

  v10 = &type metadata for Int;
  v8 = v6;
  sub_7685C0();
  sub_BDD0(&v8);
  sub_768E80();
}

uint64_t sub_271078()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_94BB80);
  sub_BE38(v4, qword_94BB80);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

uint64_t sub_2711CC()
{
  v0 = sub_BD88(&qword_94A558);
  sub_161DC(v0, qword_94BB98);
  sub_BE38(v0, qword_94BB98);
  return sub_768800();
}

uint64_t sub_271244()
{
  if (sub_762470())
  {
    if (qword_93C870 == -1)
    {
LABEL_3:
      v0 = sub_768FF0();
      sub_BE38(v0, qword_94BB80);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768540();
      sub_768E80();
LABEL_21:

LABEL_22:
      v4 = 0;
      return v4 & 1;
    }

LABEL_37:
    swift_once();
    goto LABEL_3;
  }

  sub_7689F0();
  sub_7689E0();
  if (qword_93C878 != -1)
  {
    swift_once();
  }

  v1 = sub_BD88(&qword_94A558);
  sub_BE38(v1, qword_94BB98);
  sub_7686D0();

  if (v11 != 1 && v10 > 0 || (sub_75A800() & 1) == 0)
  {
    if (qword_93C870 != -1)
    {
      swift_once();
    }

    v5 = sub_768FF0();
    sub_BE38(v5, qword_94BB80);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    sub_7689E0();
    sub_7686D0();

    v6 = v10;
    if (v11)
    {
      v6 = 0;
    }

    v12 = &type metadata for Int;
    v10 = v6;
    sub_7685C0();
    sub_BDD0(&v10);
    sub_768E80();
    goto LABEL_21;
  }

  if (([objc_opt_self() locationServicesEnabled] & 1) == 0)
  {
    if (qword_93C870 == -1)
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
      if (qword_93C870 != -1)
      {
        swift_once();
      }

      v8 = sub_768FF0();
      sub_BE38(v8, qword_94BB80);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77E280;
      sub_768540();
      v12 = &type metadata for Bool;
      LOBYTE(v10) = sub_75A790() & 1;
      sub_7685C0();
      sub_BDD0(&v10);
      sub_768E80();

      v4 = sub_75A790();
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (qword_93C870 == -1)
        {
LABEL_31:
          v9 = sub_768FF0();
          sub_BE38(v9, qword_94BB80);
          sub_BD88(&qword_93FD00);
          sub_7685F0();
          *(swift_allocObject() + 16) = xmmword_77B6D0;
          sub_768540();
          sub_768E80();

          sub_270D8C();
          goto LABEL_22;
        }

LABEL_36:
        swift_once();
        goto LABEL_31;
      case 1:
        if (qword_93C870 == -1)
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      case 2:
        if (qword_93C870 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
    }
  }

  return v4 & 1;
}

Swift::Int sub_271BE8()
{
  sub_76AA30();
  sub_769160();
  return sub_76AA80();
}

uint64_t sub_271C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_17538();

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_271C8C()
{
  sub_76AA30();
  sub_769160();
  return sub_76AA80();
}

uint64_t sub_271CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_17538();

  return static OnboardingStep.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_271D34(uint64_t *a1, int a2)
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

uint64_t sub_271D7C(uint64_t result, int a2, int a3)
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

unint64_t sub_271DDC()
{
  result = qword_94BBB0;
  if (!qword_94BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94BBB0);
  }

  return result;
}

unint64_t sub_271E34()
{
  result = qword_94BBB8;
  if (!qword_94BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94BBB8);
  }

  return result;
}

uint64_t sub_271E94(unsigned __int8 *a1, unsigned __int8 *a2)
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

uint64_t sub_271EDC(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_75FA00();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = sub_BD88(&qword_946810);
  __chkstk_darwin(v8 - 8);
  v9 = sub_BD88(&qword_944CF8);
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = sub_75A430();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_75A450();
  sub_273700(&qword_944D00, &type metadata accessor for ProductReview);
  result = sub_75C750();
  if (v46)
  {
    sub_75A440();
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
        v22 = sub_39BA0();
        sub_75C800();
        sub_769060();
        swift_getKeyPath();
        sub_75C7B0();

        v23 = v46;
        v24 = [v46 horizontalSizeClass];

        v25 = (v24 == &dword_0 + 1) & !sub_27348C();
        v26 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shouldHandleTextSelection;
        v22[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shouldHandleTextSelection] = v25;
        [*&v22[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapGestureRecognizer] setEnabled:?];
        [*&v22[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapGestureRecognizer] setEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_bodyLabel] setUserInteractionEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseBodyLabel] setUserInteractionEnabled:v22[v26]];
        sub_EECB0();
        v27 = v44;
        sub_769030();
        v28 = sub_273218(a1, v46);
        swift_getKeyPath();
        sub_769040();

        v29 = v46;
        v30 = sub_527DE4();
        if (v28)
        {
          v31 = 256;
        }

        else
        {
          v31 = 0;
        }

        sub_40F004(v41, v31 | v28 & 1, v29, v30, v42);
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
          v32 = sub_39BC0();
          sub_75C800();
          sub_769060();
          swift_getKeyPath();
          sub_EECB0();
          v33 = v44;
          sub_769040();

          v34 = v46;
          if (v46 == 2)
          {
            sub_75C740();
            v35 = v39;
            sub_75F980();
            sub_273700(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
            v36 = v41;
            v37 = sub_76A520();
            v38 = *(v40 + 8);
            v38(v35, v36);
            v38(v7, v36);
            v34 = v37 ^ 1;
          }

          sub_16EFE0(v42, v34 & 1, 0, 0);
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

uint64_t sub_2725C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_764A60();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v8 - 8);
  v42 = sub_BD88(&qword_948DF0);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = &v36 - v11;
  v12 = sub_BD88(&qword_94BBD8);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  sub_75A450();
  sub_273700(&qword_944D00, &type metadata accessor for ProductReview);
  sub_75C750();
  if (!v43)
  {
    v21 = sub_75A430();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    sub_10A2C(v17, &qword_94BBD8);
    goto LABEL_15;
  }

  v40 = a1;

  sub_75A440();

  v18 = sub_75A430();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_27368C(v17, v14);
  v20 = (*(v19 + 88))(v14, v18);
  if (v20 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    (*(v19 + 8))(v14, v18);
LABEL_15:
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_77E280;
    sub_763CC0();
    sub_763CB0();
    v43 = v32;
    sub_273700(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_BD88(&qword_943A60);
    sub_273628();
    sub_76A5A0();
  }

  if (v20 != enum case for ProductReview.ReviewSource.user(_:))
  {
    v27 = enum case for ProductReview.ReviewSource.reviewSummary(_:);
    v28 = v20;
    (*(v19 + 8))(v14, v18);
    if (v28 == v27)
    {
      swift_getKeyPath();
      sub_75C7B0();

      v29 = v43;
      v30 = sub_7699D0();

      if (v30)
      {
        v31 = sub_39BC0();
        if (([*(*&v31[OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton) isHidden] & 1) == 0)
        {
          sub_75C790();
          v33 = v37;
          sub_768B30();
          sub_EECB0();
          v34 = v42;
          sub_768AF0();
          sub_BD88(&qword_943A50);
          sub_763CD0();
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_77DC20;
          sub_763CC0();
          sub_763CB0();
          sub_763CA0();
          v43 = v35;
          sub_273700(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
          sub_BD88(&qword_943A60);
          sub_273628();
          sub_76A5A0();

          return (*(v39 + 8))(v33, v34);
        }
      }
    }

    goto LABEL_15;
  }

  (*(v19 + 8))(v14, v18);
  sub_75C790();
  sub_768B30();
  swift_getKeyPath();
  sub_EECB0();
  sub_768B10();

  v22 = v43;
  if (!sub_27348C())
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_764A00();
    sub_273700(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
    v23 = sub_76A520();
    v24 = *(v38 + 8);
    v24(v4, v2);
    v24(v7, v2);
    if (v23)
    {
      if ((v22 == 2) | v22 & 1)
      {
        sub_768AF0();
      }
    }
  }

  sub_BD88(&qword_943A50);
  sub_763CD0();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_77DC20;
  sub_763CC0();
  sub_763CB0();
  sub_763CA0();
  v43 = v25;
  sub_273700(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_BD88(&qword_943A60);
  sub_273628();
  sub_76A5A0();

  return (*(v39 + 8))(v41, v42);
}

uint64_t sub_272FEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_273048(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_273118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_2731C0(uint64_t a1)
{
  result = sub_273700(&qword_94BBC0, type metadata accessor for GenericProductReviewCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_273218(uint64_t a1, int a2)
{
  v21 = a2;
  v2 = sub_7656C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_75FA00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  sub_75C740();
  sub_75F980();
  sub_273700(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v13 = sub_76A520();
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
    sub_75C7B0();

    sub_765550();
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

BOOL sub_27348C()
{
  v0 = sub_BD88(&unk_959540);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  sub_75C7E0();
  sub_768760();
  (*(v1 + 8))(v3, v0);
  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_94BBC8);
  if (swift_dynamicCast())
  {
    sub_10914(v7, v9);
    sub_B170(v9, v9[3]);
    v4 = sub_75AAD0();
    v5 = v4 != 0;
    if (v4)
    {
    }

    sub_BEB8(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_10A2C(v7, &qword_94BBD0);
    return 0;
  }

  return v5;
}

unint64_t sub_273628()
{
  result = qword_943A68;
  if (!qword_943A68)
  {
    sub_133D8(&qword_943A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943A68);
  }

  return result;
}

uint64_t sub_27368C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94BBD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_273700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s5StateVwet_1(unsigned __int16 *a1, unsigned int a2)
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

uint64_t _s5StateVwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2738BC()
{
  result = qword_94BBE0;
  if (!qword_94BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94BBE0);
  }

  return result;
}

unint64_t sub_273914()
{
  result = qword_94BBE8;
  if (!qword_94BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94BBE8);
  }

  return result;
}

double sub_273980()
{
  v0 = sub_75DAB0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  v4 = sub_273AA8(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_273AA8(uint64_t a1)
{
  v2 = sub_76A920();
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v66 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_943D30);
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v62 = &v52 - v5;
  v58 = sub_760730();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v52 - v8;
  v9 = sub_766AF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  __chkstk_darwin(v22);
  v24 = &v52 - v23;
  __chkstk_darwin(v25);
  v54 = &v52 - v26;
  v60 = sub_766D70();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v53 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v28 = sub_75DA30();
  sub_26F08();
  if (qword_93DAA8 != -1)
  {
    swift_once();
  }

  v29 = sub_7666D0();
  sub_BE38(v29, qword_99F7F0);
  v30 = sub_769E10();
  sub_766AE0();
  v55 = v30;
  sub_766AD0();
  v31 = *(v10 + 8);
  v31(v12, v9);
  sub_766A30();
  v31(v15, v9);
  sub_766A90();
  v31(v18, v9);
  sub_766A80();
  v31(v21, v9);
  sub_766AA0();
  v31(v24, v9);
  sub_766D50();
  v32 = v53;
  sub_766D80();
  v33 = v28;
  if (sub_769A00())
  {
    v34 = v56;
    sub_173BE4(v28, v56);
  }

  else
  {
    v34 = v56;
    sub_173F1C();
  }

  (*(v57 + 32))(v61, v34, v58);
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v35 = v60;
  v69[3] = v60;
  v69[4] = &protocol witness table for LabelPlaceholder;
  v36 = sub_B1B4(v69);
  v37 = v59;
  (*(v59 + 16))(v36, v32, v35);
  sub_760750();
  swift_allocObject();
  *&v70 = sub_760740();
  sub_274270(&qword_943D38, &type metadata accessor for RibbonBarItemCellLayout);
  v38 = v62;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v39 = v64;
  sub_7673F0();
  v41 = v40;

  (*(v63 + 8))(v38, v39);
  (*(v37 + 8))(v32, v35);
  sub_7606E0();
  *&v70 = v42;
  sub_75DA40();
  v43 = v66;
  sub_766470();
  sub_766700();
  v45 = v44;
  swift_unknownObjectRelease();
  v46 = v68;
  v47 = *(v67 + 8);
  v47(v43, v68);
  sub_7606F0();
  *&v70 = v48;
  sub_75DA40();
  sub_766470();
  sub_766700();
  v50 = v49;
  swift_unknownObjectRelease();
  v47(v43, v46);
  return v41 + v45 + v50;
}

uint64_t sub_274270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MSODiffablePageViewController()
{
  result = qword_94BC18;
  if (!qword_94BC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274358(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_BE70(0, &qword_9434E0);
  v4 = v3;
  sub_BD88(&qword_93FD18);
  if (swift_dynamicCast())
  {
    v5 = *(&v10 + 1);
    v6 = v11;
    sub_B170(&v9, *(&v10 + 1));
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_BEB8(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_10A2C(&v9, &unk_93FD20);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_27445C(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_BE70(0, &qword_9434E0);
  v4 = v3;
  sub_BD88(&qword_93FD08);
  if (swift_dynamicCast())
  {
    v5 = *(&v10 + 1);
    v6 = v11;
    sub_B170(&v9, *(&v10 + 1));
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_BEB8(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_10A2C(&v9, &qword_93FD10);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_274568(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_760280();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v29 = &v26 - v6;
  v7 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for FlowDestination();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;

  sub_764BF0();
  sub_146CF0(a1, v32, v12);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v20(v12, 1, v13) != 1)
    {
      sub_10A2C(v12, &unk_9442D0);
    }
  }

  else
  {
    sub_61AE8(v12, v19);
  }

  sub_61B4C(v19, v16);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_68DF8(v19, type metadata accessor for FlowDestination);
    v21 = 1;
  }

  else
  {
    sub_758AA0();
    sub_758A90();
    sub_D2028(v29);
    v23 = v27;
    v22 = v28;
    (*(v28 + 104))(v27, enum case for FlowPresentationContext.select(_:), v3);
    sub_2762B0();
    sub_769430();
    sub_769430();
    if (v32[0] == v30 && v32[1] == v31)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_76A950();
    }

    v24 = *(v22 + 8);
    v24(v23, v3);
    v24(v29, v3);
    sub_68DF8(v9, type metadata accessor for FlowPresentationHints);
    sub_68DF8(v19, type metadata accessor for FlowDestination);
  }

  sub_68DF8(v16, type metadata accessor for FlowDestination);
  return v21 & 1;
}

void sub_2749B4(void *a1)
{
  v2 = sub_BD88(&unk_95D560);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_BD88(&qword_945018);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_75A3A0();
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
  sub_BE70(0, &unk_95D570);
  v18 = sub_769460();

  if ((sub_769490() & 1) == 0 || (v19 = [a1 selectedIndex], v19 == sub_756C80()))
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

    else if (v20 < *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
    {
      v21 = v9;
      v22 = *(v18 + 8 * v20 + 32);
      goto LABEL_11;
    }

    __break(1u);
    return;
  }

  v22 = sub_76A770();
  v21 = v9;
LABEL_11:

  [v22 tag];

  sub_75A380();
  if ((*(v21 + 48))(v7, 1, v8) == 1)
  {
    sub_10A2C(v7, &qword_945018);
  }

  else
  {
    (*(v21 + 32))(v15, v7, v8);
    sub_75B430();
    sub_75B410();
    sub_75A370();
    sub_75B380();

    v23 = [objc_opt_self() standardUserDefaults];
    (*(v21 + 16))(v11, v15, v8);
    v24 = v26;
    sub_7587D0();
    sub_38ECB4(v24);

    sub_758960();
    sub_7688F0();
    v25 = v27;
    if (v27)
    {
      sub_758940();
    }

    (*(v21 + 8))(v15, v8);
  }
}

uint64_t sub_274DD4(uint64_t a1, void *a2, uint64_t a3)
{
  v140 = sub_BD88(&qword_94C200);
  __chkstk_darwin(v140);
  v143 = &v125 - v6;
  v142 = sub_75F340();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v8 - 8);
  v138 = &v125 - v9;
  v10 = sub_7687B0();
  __chkstk_darwin(v10 - 8);
  v127 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_945018);
  __chkstk_darwin(v12 - 8);
  v130 = &v125 - v13;
  v131 = sub_75A3A0();
  v133 = *(v131 - 8);
  __chkstk_darwin(v131);
  v126 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v150 = &v125 - v16;
  v17 = sub_7687C0();
  v147 = *(v17 - 8);
  v148 = v17;
  __chkstk_darwin(v17);
  v146 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v19 - 8);
  v128 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v132 = &v125 - v22;
  v23 = sub_760280();
  v149 = *(v23 - 8);
  __chkstk_darwin(v23);
  v154 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v25);
  v27 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_BD88(&unk_9442D0);
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
      sub_BD88(&qword_94DDC0);
      sub_27621C();
      swift_allocError();
      return sub_768F20();
    }
  }

  v144 = a3;
  sub_BD88(&qword_94DDC0);
  v145 = sub_768F90();

  sub_764BF0();
  sub_146CF0(a1, v157, v32);
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
      sub_10A2C(v32, &unk_9442D0);
    }
  }

  else
  {
    sub_61AE8(v32, v40);
    v46 = v23;
  }

  sub_758AA0();
  sub_758A90();
  v47 = [v152 traitCollection];
  sub_D2028(v154);

  v48 = [v155 viewControllers];
  v49 = v150;
  v151 = v46;
  if (v48)
  {
    v50 = v48;
    v51 = v27;
    sub_BE70(0, &qword_9434E0);
    v52 = sub_769460();

    __chkstk_darwin(v53);
    *(&v125 - 2) = v40;
    v54 = sub_4E9848(sub_276290, (&v125 - 4), v52);

    if (v54)
    {
      v55 = v155;
      [v155 setTransientViewController:0 animated:0];
      [v55 setSelectedViewController:v54];
      v56 = v144;
      sub_2749B4(v55);
      v57 = v40;
      sub_61B4C(v40, v37);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v58 = v51;
        v59 = v145;
        if (*v37)
        {
          v60 = sub_BD88(&unk_93F630);

          v61 = v132;
          sub_768860();
          v62 = *(v60 - 8);
          v63 = (*(v62 + 48))(v61, 1, v60);
          v64 = v151;
          if (v63 == 1)
          {

            (*(v149 + 8))(v154, v64);
            sub_68DF8(v58, type metadata accessor for FlowPresentationHints);
            sub_10A2C(v61, &unk_93F980);
LABEL_32:
            v84 = v57;
LABEL_56:
            sub_68DF8(v84, type metadata accessor for FlowDestination);
            return v59;
          }

          sub_32AC7C(v85, 1, v56, v61);

          (*(v62 + 8))(v61, v60);
          sub_768F00();

          (*(v149 + 8))(v154, v64);
LABEL_31:
          sub_68DF8(v58, type metadata accessor for FlowPresentationHints);
          goto LABEL_32;
        }
      }

      else
      {
        sub_68DF8(v37, type metadata accessor for FlowDestination);
        v58 = v51;
        v59 = v145;
      }

      v82 = v146;
      v81 = v147;
      v83 = v148;
      (*(v147 + 104))(v146, enum case for ActionOutcome.performed(_:), v148);
      sub_768F60();

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
  sub_BE70(0, &qword_9434E0);
  v67 = sub_769460();

  __chkstk_darwin(v68);
  *(&v125 - 2) = v40;
  v69 = sub_4E9848(sub_276270, (&v125 - 4), v67);

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
  v72 = sub_769460();

  if (v72 >> 62)
  {
    result = sub_76A860();
  }

  else
  {
    result = *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8));
  }

  v74 = v133;
  if (!result)
  {

    goto LABEL_40;
  }

  if ((v72 & 0xC000000000000001) != 0)
  {
    v75 = sub_76A770();
LABEL_25:
    v76 = v75;

    type metadata accessor for TabPlaceholderViewController();
    if (swift_dynamicCastClass())
    {
      v77 = sub_725904();
      if (v77)
      {
        v133 = v76;
        v78 = v77;
        [v77 tag];
        v79 = v130;
        sub_75A380();

        v80 = v131;
        if ((v74[6])(v79, 1, v131) != 1)
        {
          (v74)[4](v49, v79, v80);
          (v74)[2](v126, v49, v80);
          sub_BD88(&unk_93F5C0);
          v116 = swift_allocObject();
          *(v116 + 16) = xmmword_77D9F0;
          *(v116 + 32) = a1;

          sub_768790();
          sub_75B6B0();
          swift_allocObject();
          sub_75B690();
          v117 = sub_BD88(&unk_93F630);
          v118 = v128;
          v119 = v144;
          sub_768860();
          v120 = v74;
          v121 = *(v117 - 8);
          if ((*(v121 + 48))(v118, 1, v117) == 1)
          {

            (v120[1])(v49, v131);
            (*(v149 + 8))(v154, v46);
            sub_68DF8(v27, type metadata accessor for FlowPresentationHints);
            sub_10A2C(v118, &unk_93F980);
            v84 = v129;
            v59 = v145;
            goto LABEL_56;
          }

          sub_32ACB0(v122, 1, v119, v118);

          (*(v121 + 8))(v118, v117);
          v123 = v145;
          sub_768F00();

          (v120[1])(v49, v131);
          v124 = v46;
          v59 = v123;
          (*(v149 + 8))(v154, v124);
          sub_68DF8(v27, type metadata accessor for FlowPresentationHints);
          goto LABEL_55;
        }
      }

      else
      {

        v79 = v130;
        (v74[7])(v130, 1, 1, v131);
      }

      sub_10A2C(v79, &qword_945018);
    }

    else
    {
    }

LABEL_40:
    v86 = v152;
    v87 = sub_32CB94(v152);
    if (!v87 || (v156 = v87, sub_BE70(0, &unk_94DCA0), sub_BD88(&qword_940BF8), (swift_dynamicCast() & 1) == 0))
    {
      v158 = 0;
      memset(v157, 0, sizeof(v157));
    }

    v88 = [v86 traitCollection];

    sub_764BF0();
    v89 = v136;
    sub_146CF0(a1, &v156, v136);
    v90 = v153;
    v91 = v134;
    if (v134(v89, 1, v153) == 1)
    {
      v92 = v137;
      swift_storeEnumTagMultiPayload();
      if (v91(v89, 1, v90) != 1)
      {
        sub_10A2C(v89, &unk_9442D0);
      }
    }

    else
    {
      v92 = v137;
      sub_61AE8(v89, v137);
    }

    v93 = sub_758A60();
    v95 = v94;
    v96 = v138;
    sub_758A80();
    v97 = sub_471418(v92, v88, v93, v95, v96, v157, v144, 1);

    sub_10A2C(v96, &unk_944FF0);
    sub_68DF8(v92, type metadata accessor for FlowDestination);
    v98 = v139;
    sub_758A90();
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
        sub_10A2C(v101, &qword_94C200);
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
    sub_768F60();

    v115 = v113;
    v59 = v108;
    (*(v112 + 8))(v115, v114);
    (*(v103 + 8))(v154, v109);
    sub_68DF8(v106, type metadata accessor for FlowPresentationHints);
    sub_10A2C(v157, &unk_9442E0);
LABEL_55:
    v84 = v129;
    goto LABEL_56;
  }

  if (*(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8)))
  {
    v75 = *(v72 + 32);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

unint64_t sub_27621C()
{
  result = qword_94C208;
  if (!qword_94C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94C208);
  }

  return result;
}

unint64_t sub_2762B0()
{
  result = qword_943AF8;
  if (!qword_943AF8)
  {
    sub_760280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943AF8);
  }

  return result;
}

unint64_t sub_27631C()
{
  result = qword_94C210;
  if (!qword_94C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94C210);
  }

  return result;
}

uint64_t sub_276370(void *a1)
{
  if (*v1 == *a1 && (sub_76A6C0() & 1) != 0 && (type metadata accessor for StringUserDefaultsDebugSetting(), (v2 = swift_dynamicCastClass()) != 0) && ((v3 = v2, *(v2 + 56) == *(v1 + 56)) ? (v4 = *(v2 + 64) == *(v1 + 64)) : (v4 = 0), (v4 || (sub_76A950() & 1) != 0) && (*(v3 + 72) == *(v1 + 72) && *(v3 + 80) == *(v1 + 80) || (sub_76A950() & 1) != 0)))
  {
    v5 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_276470()
{
  sub_76A6D0();
  sub_769330();
  sub_769330();
  sub_76AA50(*(v0 + 88));
}

uint64_t sub_2764C8()
{
  sub_1EB60(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_276554(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_itemLayoutContext;
  v15 = sub_75C840();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separatorView] = 0;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separator;
  v18 = sub_767510();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v4[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = 0;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v20 = [v19 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v19 setClipsToBounds:0];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v24 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView;
  v25 = *(*&v19[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = v25;
  sub_768C10();
  sub_10A2C(&v43, &unk_93FBD0);
  sub_10A2C(&v45, &unk_93FBD0);
  sub_769E70();

  v27 = *(v11 + 8);
  v27(v13, v10);
  v28 = *(*&v19[v24] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v28;
  sub_768C10();
  sub_10A2C(&v43, &unk_93FBD0);
  sub_10A2C(&v45, &unk_93FBD0);
  sub_769E70();

  v27(v13, v10);
  v30 = *(*&v19[v24] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v30;
  sub_768C10();
  sub_10A2C(&v43, &unk_93FBD0);
  sub_10A2C(&v45, &unk_93FBD0);
  sub_769E70();

  v27(v13, v10);
  v32 = *(*&v19[v24] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v32;
  sub_768C10();
  sub_10A2C(&v43, &unk_93FBD0);
  sub_10A2C(&v45, &unk_93FBD0);
  sub_769E70();

  v27(v13, v10);
  v34 = *&v19[v24];
  v35 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (v35)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v36 = v35;
    sub_768C10();
    sub_10A2C(&v43, &unk_93FBD0);
    sub_10A2C(&v45, &unk_93FBD0);
    sub_769E70();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v37 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (v37)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v37;
    sub_768C10();
    sub_10A2C(&v43, &unk_93FBD0);
    sub_10A2C(&v45, &unk_93FBD0);
    sub_769E70();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v39 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = v39;
  sub_768C10();
  sub_10A2C(&v43, &unk_93FBD0);
  sub_10A2C(&v45, &unk_93FBD0);
  sub_769E70();

  v27(v13, v10);
  v41 = [v19 contentView];

  [v41 addSubview:*&v19[v24]];
  return v19;
}

id sub_276DA8()
{
  v1 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_767510();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_847A4(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10A2C(v3, &qword_94C3F0);
    result = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separatorView];
    if (v14)
    {
      (*(v5 + 16))(v7, v10, v4);
      v15 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
      swift_beginAccess();
      v16 = *(v5 + 24);
      v17 = v14;
      v16(&v14[v15], v7, v4);
      swift_endAccess();
      v18 = v17;
      [v18 setNeedsLayout];
      v19 = *(v5 + 8);
      v19(v7, v4);
      [v18 setHidden:0];

      return (v19)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v20 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v21 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v5 + 40);
      v22 = v20;
      v28(&v20[v21], v7, v4);
      swift_endAccess();

      v23 = *&v0[v13];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v0[v13];
      }

      else
      {
        v24 = 0;
      }

      *&v0[v13] = v22;
      v25 = v22;

      v26 = [v0 contentView];
      [v26 addSubview:v25];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

uint64_t sub_27718C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_767510();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_2630C();
  sub_75D650();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v30 = v10;
  v31 = v12;
  v32 = v14;
  v33 = v16;
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separatorView];
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = v17;
  if ([v18 isHidden])
  {

LABEL_4:
    v19 = 0;
LABEL_7:
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView] setFrame:{v10, v12, v14, v16}];
    return sub_F704(v19);
  }

  v28 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = &v30;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_277CD8;
  *(v21 + 24) = v20;
  aBlock[4] = sub_2EC28;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1EB578;
  aBlock[3] = &unk_88A920;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  [v28 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v26 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v23[v26], v3);
    sub_769D40();

    (*(v4 + 8))(v7, v3);
    v10 = v30;
    v12 = v31;
    v14 = v32;
    v16 = v33;
    v19 = sub_277CD8;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_2774E0(char *a1)
{
  v2 = sub_767510();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  (*(v3 + 16))(v5, &a1[v6], v2);
  sub_7674C0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  return [a1 setFrame:{v8, v10, v12, v14}];
}

uint64_t type metadata accessor for SmallLockupCollectionViewCell()
{
  result = qword_94C318;
  if (!qword_94C318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_277800()
{
  sub_839FC(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_839FC(319, &qword_94C3E0, &type metadata accessor for Separator);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_277940()
{
  v1 = sub_75CF00();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_75CDD0();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_277A74()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759050();

  v4 = *(v1 + v2);
  sub_759210();
  sub_277BB0(&qword_945810, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_75A0C0();
}

uint64_t sub_277B58(uint64_t a1)
{
  result = sub_277BB0(&qword_94C328, type metadata accessor for SmallLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_277BB0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_277BF8(void *a1)
{
  type metadata accessor for SmallLockupView();
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v2 = sub_75CF00();
  v3 = sub_BE38(v2, qword_99B898);
  sub_1FE304(v3, a1);
  return v4;
}

uint64_t sub_277CA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_277CF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_277ED0(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_278BEC(&qword_93F500, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView];
    sub_2630C();
    v8 = v7;
    v9 = sub_76A1C0();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_27806C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35AppPromotionOfferCollectionViewCell_appPromotionView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_2780E0;
}

void sub_2780E0(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    v6 = v4;
    sub_216B98();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [*&v5[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView]];
      [v5 setNeedsLayout];
    }

    v10 = v6;
  }

  else
  {
    v10 = v4;
    sub_216B98();
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      goto LABEL_8;
    }

    v6 = v9;
    [*&v5[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:v9 aboveSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView]];
    [v5 setNeedsLayout];
  }

LABEL_8:
}

id sub_278224()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35AppPromotionOfferCollectionViewCell_appPromotionView];
  sub_26E5C0();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView;
  sub_2151C0();
  v3 = &v1[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer] setEnabled:1];
  return [v1 addSubview:*&v1[v2]];
}

uint64_t type metadata accessor for AppPromotionOfferCollectionViewCell()
{
  result = qword_94C358;
  if (!qword_94C358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_27841C(uint64_t **a1))()
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
  v2[4] = sub_27806C(v2);
  return sub_21028;
}

double sub_278500()
{
  [*(*(*v0 + OBJC_IVAR____TtC18ASMessagesProvider35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppPromotionView();
  sub_75D650();
  CGRectGetHeight(v3);
  sub_75D650();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_27858C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider35AppPromotionOfferCollectionViewCell_appPromotionView);
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppPromotionView();
  sub_75D650();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_27861C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_278674(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_27873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_278BEC(&qword_94C390, type metadata accessor for AppPromotionOfferCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_2787DC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_278BEC(&qword_94C398, type metadata accessor for AppPromotionOfferCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_278850(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_278BEC(&qword_94C398, type metadata accessor for AppPromotionOfferCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}