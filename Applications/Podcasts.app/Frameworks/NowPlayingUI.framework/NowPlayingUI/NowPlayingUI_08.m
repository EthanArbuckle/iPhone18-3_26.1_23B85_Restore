void sub_CF7C8()
{
  v1 = *&v0[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryImageView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStrokeView];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStyle];
      v13 = v2;
      v4 = v1;
      sub_CFFC8(v3);
      v5 = [v0 traitCollection];
      sub_144DCC();
      v7 = v6;

      sub_B65B4(v3);
      v8 = 0.0;
      if (v3 >= 3)
      {
        v8 = 2.0 / fmax(v7, 1.0);
      }

      [v4 frame];
      [v13 setFrame:{UIEdgeInsetsInsetRect_0(v9, v10, v11, v12, -v8, -v8)}];
    }
  }
}

id sub_CFB20(void *a1)
{
  swift_weakInit();
  *&v1[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryArtworkCatalog] = 0;
  v3 = &v1[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStyle];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v3[24] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryImageView] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStrokeView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ArtworkComponentImageView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_CFC00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkComponentImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_CFCE0(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 56) = 0;
  v4 = objc_opt_self();
  *(v2 + 64) = [v4 clearColor];
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = 1;
  *(v2 + 136) = -2;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  *(v2 + 224) = [v4 clearColor];
  *(v2 + 232) = 0x1000000;
  *(v2 + 236) = 0;
  *(v2 + 240) = 0x3FF0000000000000;
  *(v2 + 248) = 0;
  v5 = a1;
  [v5 setClipsToBounds:1];
  *(v2 + 104) = v5;
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [objc_allocWithZone(UIImageView) init];
  [v14 setFrame:{v7, v9, v11, v13}];
  [v14 setAutoresizingMask:18];
  [v14 setHidden:1];
  [v5 addSubview:v14];
  *(v2 + 216) = v14;
  type metadata accessor for ArtworkComponentImageView();
  if (swift_dynamicCastClass())
  {
    swift_weakAssign();
    v15 = v14;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_14A710;
    v17 = v14;
    sub_1451EC(81);
    v19._countAndFlagsBits = 0xD000000000000028;
    v19._object = 0x8000000000165D50;
    sub_14494C(v19);
    v20._countAndFlagsBits = sub_1454BC();
    sub_14494C(v20);

    v21._object = 0x8000000000165D80;
    v21._countAndFlagsBits = 0xD000000000000027;
    sub_14494C(v21);
    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0xE000000000000000;
    sub_14518C();
  }

  sub_CE8C4(0);

  return v2;
}

id sub_CFFC8(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_D0004()
{
  v1 = *(v0 + 216);
  [v1 setImage:0];
  [v1 setBackgroundColor:0];

  return [v1 setHidden:1];
}

void sub_D006C(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0x20) != 0)
  {
    sub_990B4(a1, a2, a3 & 0xDF);
  }

  else
  {
  }
}

void sub_D007C(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_14400C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2B860(0, &qword_1C2160);
  *v9 = sub_144D8C();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_14402C();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    return;
  }

  *(v3 + 233) = 1;
  *(v3 + 235) = a2 & 1;
  if (a1)
  {
    v11 = a1;
    sub_CEB20(a1, 1);

    return;
  }

  v12 = *(v3 + 136);
  if (v12 <= 0xFD)
  {
    v13 = *(v3 + 120);
    v14 = *(v3 + 128);
    v16 = *(v3 + 88);
    v15 = *(v3 + 96);
    v17 = swift_allocObject();
    swift_weakInit();
    if (v12 >> 6)
    {
      if (v12 >> 6 == 1)
      {
      }

      else if (!(v14 | v13) && v12 == 128 || v13 != 1 || v14 || v12 != 128)
      {
        sub_2B860(0, &qword_1C5350);
        v19 = [swift_getObjCClassFromMetadata() defaultStore];
        v18 = [v19 imageForKey:kMTLibraryDefaultImageKey size:{v16, v15}];

        goto LABEL_13;
      }
    }

    else
    {
      sub_990D4(v13, v14, v12);
    }

    v18 = 0;
LABEL_13:
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = v18;
    v21 = v18;

    sub_140D7C();

    sub_990A0(v13, v14, v12);
  }
}

uint64_t sub_D03E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D041C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D0460()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_D04A8(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_990D4(result, a2, a3);
  }

  return result;
}

uint64_t sub_D04CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77C0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController____lazy_storage___viewProvider;
  swift_beginAccess();
  sub_D85AC(v1 + v10, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2438);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_15340(v9, &qword_1C77C0);
  v13 = sub_14142C();
  v15[0] = v3;
  v15[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26C8);
  sub_D86E4(&qword_1C1D80, &type metadata accessor for NowPlayingLookupID);
  sub_1D4A4(&qword_1C26D0, &qword_1C26C8);
  sub_14119C();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_D861C(v7, v1 + v10);
  return swift_endAccess();
}

void sub_D07A4()
{
  v59 = *v0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77C8);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = v55 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77D0);
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77D8);
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v66 = v55 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77E0);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v7 - 8);
  v9 = v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77E8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77F0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v55 - v16;
  v69 = v0;
  sub_D1518();
  sub_D1964(v13);
  v18 = sub_20FCC();
  v19 = sub_144D8C();
  v80 = v19;
  v20 = sub_144D3C();
  v21 = *(v20 - 8);
  v72 = *(v21 + 56);
  v73 = v20;
  v71 = v21 + 56;
  v72(v9, 1, 1);
  sub_1D4A4(&qword_1C77F8, &qword_1C77E8);
  v22 = sub_D86E4(&qword_1C1740, sub_20FCC);
  v74 = v18;
  v70 = v22;
  sub_14283C();
  v75 = v9;
  sub_15340(v9, &qword_1C16E0);

  (*(v11 + 8))(v13, v10);
  v23 = v69;
  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&qword_1C7800, &qword_1C77F0);
  sub_14289C();

  (*(v15 + 8))(v17, v14);
  v24 = v23 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_subscriptions;
  swift_beginAccess();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1910);
  v26 = sub_1D4A4(&qword_1C1918, &qword_1C1910);
  sub_14258C();
  swift_endAccess();

  v27 = [objc_opt_self() currentDevice];
  v28 = [v27 userInterfaceIdiom];

  if (v28 != &dword_0 + 1)
  {
    v80 = *(v23 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_playerStylePublisher);

    v29 = sub_144D8C();
    v55[2] = v26;
    v30 = v29;
    v79 = v29;
    v31 = v75;
    (v72)(v75, 1, 1, v73);
    v55[1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C00F0);
    sub_1D4A4(&qword_1C21A8, &unk_1C00F0);
    v32 = v56;
    sub_14283C();
    sub_15340(v31, &qword_1C16E0);

    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    v35 = v59;
    *(v34 + 16) = v33;
    *(v34 + 24) = v35;
    v55[3] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_1D4A4(&qword_1C7808, &qword_1C77E0);
    v36 = v58;
    sub_14289C();

    (*(v57 + 8))(v32, v36);
    swift_beginAccess();
    sub_14258C();
    swift_endAccess();

    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2460);
    swift_allocObject();
    v39 = sub_14267C();
    v58 = v25;
    v80 = v39;
    sub_1D4A4(&qword_1C2470, &qword_1C2460);
    v40 = sub_14273C();

    v80 = v40;
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v35;
    swift_allocObject();
    v79 = sub_14267C();
    v43 = sub_14273C();

    v79 = v43;
    v78 = sub_D34BC();
    v77 = sub_D3C9C();
    swift_weakInit();
    swift_weakDestroy();
    *(swift_allocObject() + 16) = v35;
    swift_allocObject();
    v76 = sub_14267C();
    v44 = sub_14273C();

    v76 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9310);
    sub_1D4A4(&qword_1C2020, &unk_1C9310);
    v45 = v60;
    sub_14253C();
    sub_1D4A4(&qword_1C7810, &qword_1C77C8);
    v46 = v62;
    v47 = v63;
    sub_1427FC();
    (*(v61 + 8))(v45, v46);
    v48 = sub_144D8C();
    v80 = v48;
    v49 = v75;
    (v72)(v75, 1, 1, v73);
    sub_1D4A4(&qword_1C7818, &qword_1C77D0);
    v51 = v65;
    v50 = v66;
    sub_14283C();
    sub_15340(v49, &qword_1C16E0);

    (*(v64 + 8))(v47, v51);
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = swift_allocObject();
    *(v53 + 16) = sub_D7D3C;
    *(v53 + 24) = v52;
    sub_1D4A4(&qword_1C7820, &qword_1C77D8);
    v54 = v68;
    sub_14289C();

    (*(v67 + 8))(v50, v54);
    swift_beginAccess();
    sub_14258C();
    swift_endAccess();
  }
}

uint64_t sub_D1518()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_144ADC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_144ABC();

  v6 = sub_144AAC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_C8D08(0, 0, v4, &unk_152FA8, v7);

  v8 = OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_subscriptions;
  result = swift_beginAccess();
  v10 = *(v1 + v8);
  if (!(v10 >> 62))
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v8) = _swiftEmptyArrayStorage;
  }

  result = sub_14531C();
  v11 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 >= 1)
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        sub_1451FC();
      }

      else
      {
      }

      sub_14259C();
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_D171C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingTipViewModel();
  sub_D86E4(&qword_1C1358, type metadata accessor for NowPlayingTipViewModel);

  result = sub_142B9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_D17AC()
{
  v0 = sub_14142C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_14141C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7990);
  sub_D8690();
  sub_14183C();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_D18D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingTipViewModel();
  sub_D86E4(&qword_1C1358, type metadata accessor for NowPlayingTipViewModel);

  result = sub_142B9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_D1964@<X0>(uint64_t a1@<X8>)
{
  v38 = *v1;
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v2 - 8);
  v31 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C78D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C78D8);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C78E0);
  v13 = *(v12 - 8);
  v34 = v12;
  v35 = v13;
  __chkstk_darwin(v12);
  v28 = &v27 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C78E8);
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  __chkstk_darwin(v15);
  v29 = &v27 - v17;
  v40 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_nowPlayingItemPublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1400);
  v30 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_1D4A4(&qword_1C78A0, &qword_1C7890);
  sub_1427BC();

  sub_1D4A4(&qword_1C78F0, &qword_1C78D0);
  sub_D81F8(&qword_1C78F8, &qword_1C1400);
  sub_14286C();
  (*(v5 + 8))(v7, v4);
  sub_20FCC();
  v18 = sub_144D8C();
  v40 = v18;
  v19 = sub_144D3C();
  v20 = v31;
  (*(*(v19 - 8) + 56))(v31, 1, 1, v19);
  sub_1D4A4(&qword_1C7900, &qword_1C78D8);
  sub_D86E4(&qword_1C1740, sub_20FCC);
  v21 = v28;
  v22 = v32;
  sub_14283C();
  sub_15340(v20, &qword_1C16E0);

  (*(v33 + 8))(v11, v22);
  *(swift_allocObject() + 16) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7908);
  sub_1D4A4(&qword_1C7910, &qword_1C78E0);
  v23 = v29;
  v24 = v34;
  sub_1427BC();

  (*(v35 + 8))(v21, v24);
  sub_1D4A4(&qword_1C7918, &qword_1C78E8);
  sub_1D4A4(&qword_1C7920, &qword_1C7908);
  v25 = v36;
  sub_14287C();
  return (*(v37 + 8))(v23, v25);
}

void sub_D1FC4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_tipViewModel);
      v4 = v1;

      swift_beginAccess();
      v5 = swift_weakLoadStrong();
      if (v5)
      {
        v6 = *(v5 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_artworkViewModel);
      }

      else
      {
        v6 = 0;
      }

      *(v3 + OBJC_IVAR____TtC12NowPlayingUI22NowPlayingTipViewModel_artworkViewModel) = v6;
    }

    else
    {
      v7 = v1;
    }

    swift_beginAccess();
    v8 = swift_weakLoadStrong();
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_tipViewModel);

      swift_beginAccess();
      v10 = swift_weakLoadStrong();
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_objectGraph);
      }

      else
      {
        v11 = 0;
      }

      *(v9 + OBJC_IVAR____TtC12NowPlayingUI22NowPlayingTipViewModel_objectGraph) = v11;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v12 = v1;
      sub_D21A8(v1);
    }
  }
}

uint64_t sub_D21A8(void *a1)
{
  v2 = v1;
  v4 = sub_14243C();
  v5 = *(v4 - 8);
  v89 = v4;
  v90 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v86 = v82 - v10;
  v11 = __chkstk_darwin(v9);
  v83 = v82 - v12;
  __chkstk_darwin(v11);
  v87 = v82 - v13;
  v88 = sub_140D5C();
  v85 = *(v88 - 8);
  v14 = __chkstk_darwin(v88);
  v82[1] = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = v82 - v17;
  __chkstk_darwin(v16);
  v20 = v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  __chkstk_darwin(v21 - 8);
  v23 = v82 - v22;

  sub_1414EC();

  v24 = sub_1417CC();
  v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
  sub_15340(v23, &unk_1C1DA0);
  if (v25 != 1)
  {
    sub_1423CC();
    sub_20F8C(a1);
    v33 = sub_14242C();
    v34 = sub_144C3C();
    sub_20F9C(a1);
    if (!os_log_type_enabled(v33, v34))
    {
LABEL_42:

      return (*(v90 + 1))(v8, v89);
    }

    v35 = a1;
    v36 = 0xD000000000000010;
    v37 = swift_slowAlloc();
    *&v99 = swift_slowAlloc();
    *v37 = 136315394;
    *(v37 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v99);
    *(v37 + 12) = 2082;
    if (v35 <= 1)
    {
      if (!v35)
      {
        v36 = 0x6575657571;
        v38 = 0xE500000000000000;
        goto LABEL_41;
      }

      if (v35 == 1)
      {
        v38 = 0xE800000000000000;
        v36 = 0x7372657470616863;
        goto LABEL_41;
      }
    }

    else
    {
      switch(v35)
      {
        case 2:
          v36 = 0x4E65646F73697065;
          v38 = 0xEC0000007365746FLL;
          goto LABEL_41;
        case 3:
          v36 = 0x697263736E617274;
          v38 = 0xEB00000000737470;
          goto LABEL_41;
        case 4:
          v36 = 0x6E6F436F69647561;
          v38 = 0xED0000736C6F7274;
LABEL_41:
          v59 = sub_ED2A4(v36, v38, &v99);

          *(v37 + 14) = v59;
          _os_log_impl(&dword_0, v33, v34, "%s Attempted to display tip for %{public}s while there is already a selected tab.", v37, 0x16u);
          swift_arrayDestroy();

          goto LABEL_42;
      }
    }

    v38 = 0x8000000000165EF0;
    goto LABEL_41;
  }

  v84 = a1;
  if (*(v2 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_isTipVisible))
  {
    v26 = v86;
    sub_1423CC();
    v27 = v84;
    sub_20F8C(v84);
    v28 = sub_14242C();
    v29 = sub_144C3C();
    sub_20F9C(v27);
    if (!os_log_type_enabled(v28, v29))
    {
LABEL_51:

      return (*(v90 + 1))(v26, v89);
    }

    v30 = 0xD000000000000010;
    v31 = swift_slowAlloc();
    *&v99 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v99);
    *(v31 + 12) = 2082;
    if (v27 <= 1)
    {
      if (!v27)
      {
        v30 = 0x6575657571;
        v32 = 0xE500000000000000;
        goto LABEL_50;
      }

      if (v27 == (&dword_0 + 1))
      {
        v32 = 0xE800000000000000;
        v30 = 0x7372657470616863;
        goto LABEL_50;
      }
    }

    else
    {
      if (v27 == (&dword_0 + 2))
      {
        v30 = 0x4E65646F73697065;
        v32 = 0xEC0000007365746FLL;
        goto LABEL_50;
      }

      if (v27 == (&dword_0 + 3))
      {
        v30 = 0x697263736E617274;
        v32 = 0xEB00000000737470;
        goto LABEL_50;
      }

      if (v27 == &dword_4)
      {
        v30 = 0x6E6F436F69647561;
        v32 = 0xED0000736C6F7274;
LABEL_50:
        v61 = sub_ED2A4(v30, v32, &v99);

        *(v31 + 14) = v61;
        _os_log_impl(&dword_0, v28, v29, "%s Attempted to display tip for %{public}s while another is already on screen.", v31, 0x16u);
        swift_arrayDestroy();

        goto LABEL_51;
      }
    }

    v32 = 0x8000000000165EF0;
    goto LABEL_50;
  }

  v39 = v2;
  v86 = OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_isTipVisible;

  sub_1425FC();

  v40 = v85;
  v41 = v88;
  (*(v85 + 104))(v18, enum case for NowPlayingPlayerStyle.fullScreen(_:), v88);
  sub_D86E4(&qword_1C2498, &type metadata accessor for NowPlayingPlayerStyle);
  sub_1449AC();
  sub_1449AC();
  v82[0] = v39;
  if (v99 == v91)
  {
    v42 = *(v40 + 8);
    v42(v18, v41);
    v42(v20, v41);

    v43 = v87;
    goto LABEL_18;
  }

  v44 = sub_1453BC();
  v45 = *(v40 + 8);
  v45(v18, v41);
  v45(v20, v41);

  v43 = v87;
  if ((v44 & 1) == 0)
  {
    v52 = v83;
    sub_1423CC();
    v53 = v84;
    sub_20F8C(v84);

    v54 = sub_14242C();
    v55 = sub_144C3C();
    sub_20F9C(v53);

    if (!os_log_type_enabled(v54, v55))
    {
LABEL_69:

      return (*(v90 + 1))(v52, v89);
    }

    v56 = 0xD000000000000010;
    v57 = swift_slowAlloc();
    *&v99 = swift_slowAlloc();
    *v57 = 136315650;
    *(v57 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v99);
    *(v57 + 12) = 2082;
    if (v53 <= 1)
    {
      if (!v53)
      {
        v56 = 0x6575657571;
        v58 = 0xE500000000000000;
        goto LABEL_68;
      }

      if (v53 == (&dword_0 + 1))
      {
        v58 = 0xE800000000000000;
        v56 = 0x7372657470616863;
        goto LABEL_68;
      }
    }

    else
    {
      if (v53 == (&dword_0 + 2))
      {
        v56 = 0x4E65646F73697065;
        v58 = 0xEC0000007365746FLL;
        goto LABEL_68;
      }

      if (v53 == (&dword_0 + 3))
      {
        v56 = 0x697263736E617274;
        v58 = 0xEB00000000737470;
        goto LABEL_68;
      }

      if (v53 == &dword_4)
      {
        v56 = 0x6E6F436F69647561;
        v58 = 0xED0000736C6F7274;
LABEL_68:
        v78 = sub_ED2A4(v56, v58, &v99);

        *(v57 + 14) = v78;
        *(v57 + 22) = 2080;

        sub_1425FC();

        v79 = sub_14490C();
        v81 = sub_ED2A4(v79, v80, &v99);

        *(v57 + 24) = v81;
        _os_log_impl(&dword_0, v54, v55, "%s Attempted to display tip for %{public}s outside of the full screen player. Current player style: %s.", v57, 0x20u);
        swift_arrayDestroy();

        goto LABEL_69;
      }
    }

    v58 = 0x8000000000165EF0;
    goto LABEL_68;
  }

LABEL_18:
  sub_1423CC();
  v46 = v84;
  sub_20F8C(v84);
  v47 = sub_14242C();
  v48 = sub_144C5C();
  sub_20F9C(v46);
  if (os_log_type_enabled(v47, v48))
  {
    v49 = 0xD000000000000010;
    v50 = swift_slowAlloc();
    *&v99 = swift_slowAlloc();
    *v50 = 136315394;
    *(v50 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v99);
    *(v50 + 12) = 2082;
    if (v46 <= 1)
    {
      if (!v46)
      {
        v49 = 0x6575657571;
        v51 = 0xE500000000000000;
        goto LABEL_56;
      }

      if (v46 == (&dword_0 + 1))
      {
        v51 = 0xE800000000000000;
        v49 = 0x7372657470616863;
        goto LABEL_56;
      }
    }

    else
    {
      if (v46 == (&dword_0 + 2))
      {
        v49 = 0x4E65646F73697065;
        v51 = 0xEC0000007365746FLL;
        goto LABEL_56;
      }

      if (v46 == (&dword_0 + 3))
      {
        v49 = 0x697263736E617274;
        v51 = 0xEB00000000737470;
        goto LABEL_56;
      }

      if (v46 == &dword_4)
      {
        v49 = 0x6E6F436F69647561;
        v51 = 0xED0000736C6F7274;
LABEL_56:
        v62 = sub_ED2A4(v49, v51, &v99);

        *(v50 + 14) = v62;
        _os_log_impl(&dword_0, v47, v48, "%s Attempting to display tip for %{public}s.", v50, 0x16u);
        swift_arrayDestroy();

        (*(v90 + 1))(v43, v89);
        v46 = v84;
        goto LABEL_57;
      }
    }

    v51 = 0x8000000000165EF0;
    goto LABEL_56;
  }

  (*(v90 + 1))(v43, v89);
LABEL_57:
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v46;
  v65 = swift_allocObject();
  swift_weakInit();
  if (v46 >= 5)
  {
    v69 = swift_allocObject();
    swift_weakInit();
    v68 = swift_allocObject();
    *(v68 + 16) = v46;
    *(v68 + 24) = v69;
    sub_20F8C(v46);

    v67 = sub_D7E5C;
    v90 = sub_D7E0C;
    v66 = v65;
  }

  else
  {
    v90 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
  }

  sub_20F8C(v46);

  v70 = sub_D9F78(v46);
  v71 = v46;
  v73 = v72;
  v74 = sub_DA238(v71);
  *&v99 = v71;
  *(&v99 + 1) = v70;
  *&v100 = v73;
  *(&v100 + 1) = v74;
  *&v101[0] = v75;
  v76 = vdup_n_s32(v71 == &dword_4);
  v77.i64[0] = v76.u32[0];
  v77.i64[1] = v76.u32[1];
  *(v101 + 8) = vandq_s8(vcltzq_s64(vshlq_n_s64(v77, 0x3FuLL)), xmmword_152D50);
  *(&v101[1] + 1) = 2;
  *&v102 = sub_D7E04;
  *(&v102 + 1) = v64;
  *&v103 = sub_D7E0C;
  *(&v103 + 1) = v65;
  *&v104 = v67;
  *(&v104 + 1) = v68;
  *&v105 = v90;
  *(&v105 + 1) = v66;
  UIScreen.Dimensions.size.getter(&v99);
  swift_getKeyPath();
  swift_getKeyPath();
  v95 = v102;
  v96 = v103;
  v97 = v104;
  v98 = v105;
  v91 = v99;
  v92 = v100;
  v93 = v101[0];
  v94 = v101[1];
  sub_20F8C(v71);
  result = sub_1426EC();
  v86[v82[0]] = 1;
  return result;
}

uint64_t sub_D30E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v0 - 8);
  v2 = &v22[-1] - v1;
  v3 = sub_14243C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_140D5C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for NowPlayingPlayerStyle.fullScreen(_:), v7);
  sub_D86E4(&qword_1C21D0, &type metadata accessor for NowPlayingPlayerStyle);
  v11 = sub_14486C();
  result = (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    sub_1423CC();
    v13 = sub_14242C();
    v14 = sub_144C5C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, v22);
      _os_log_impl(&dword_0, v13, v14, "%s Do not show any tips outside of the full screen player. Hide any tips that have been shown.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    (*(v4 + 8))(v6, v3);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v17 = result;
      v18 = sub_144ADC();
      (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
      sub_144ABC();

      v19 = sub_144AAC();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      v20[4] = v17;
      sub_C8D08(0, 0, v2, &unk_152EC0, v20);
    }
  }

  return result;
}

uint64_t sub_D34BC()
{
  v1 = v0;
  v51 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v2 - 8);
  v46 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7860);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7868);
  v9 = *(v8 - 8);
  v40 = v8;
  v41 = v9;
  __chkstk_darwin(v8);
  v36 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7870);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v37 = &v36 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7878);
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = &v36 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7880);
  v16 = *(v15 - 8);
  v48 = v15;
  v49 = v16;
  __chkstk_darwin(v15);
  v43 = &v36 - v17;
  v18 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];

  v19 = sub_144C6C();

  v53 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_nowPlayingItemPublisher);
  v54 = v19;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B30);
  sub_1426AC();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7890);
  sub_1D4A4(&qword_1C7898, &qword_1C7888);
  sub_1D4A4(&qword_1C78A0, &qword_1C7890);
  sub_1D4A4(&qword_1C78A8, &qword_1C7860);
  v20 = v36;
  v21 = v38;
  sub_14277C();
  (*(v39 + 8))(v7, v21);

  sub_1D4A4(&qword_1C78B0, &qword_1C7868);
  v22 = v37;
  v23 = v40;
  sub_1427FC();
  (*(v41 + 8))(v20, v23);
  sub_20FCC();
  v24 = sub_144D8C();
  v52 = v24;
  v25 = sub_144D3C();
  v26 = v46;
  (*(*(v25 - 8) + 56))(v46, 1, 1, v25);
  sub_1D4A4(&qword_1C78B8, &qword_1C7870);
  sub_D86E4(&qword_1C1740, sub_20FCC);
  v27 = v42;
  v28 = v44;
  sub_14283C();
  sub_15340(v26, &qword_1C16E0);

  (*(v45 + 8))(v22, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = v51;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_D80EC;
  *(v30 + 24) = v29;
  sub_1D4A4(&qword_1C78C0, &qword_1C7878);
  v31 = v43;
  v32 = v47;
  sub_1427BC();

  (*(v50 + 8))(v27, v32);
  sub_1D4A4(&qword_1C78C8, &qword_1C7880);
  v33 = v48;
  v34 = sub_14273C();
  (*(v49 + 8))(v31, v33);
  return v34;
}

uint64_t sub_D3C9C()
{
  v27 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7830);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7838);
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7840);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v28 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_isTranscriptAvailablePublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9310);
  sub_1D4A4(&qword_1C2020, &unk_1C9310);
  sub_1427FC();
  sub_20FCC();
  v14 = sub_144D8C();
  v28 = v14;
  v15 = sub_144D3C();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_1D4A4(&qword_1C7848, &qword_1C7830);
  sub_D86E4(&qword_1C1740, sub_20FCC);
  sub_14283C();
  sub_15340(v3, &qword_1C16E0);

  (*(v5 + 8))(v7, v4);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = v27;
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  sub_1D4A4(&qword_1C7850, &qword_1C7838);
  v19 = v23;
  sub_1427BC();

  (*(v26 + 8))(v9, v19);
  sub_1D4A4(&qword_1C7858, &qword_1C7840);
  v20 = v24;
  v21 = sub_14273C();
  (*(v25 + 8))(v13, v20);
  return v21;
}

uint64_t sub_D4190(uint64_t result, char a2, char a3, char a4, char a5)
{
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v5 = 0;
    goto LABEL_16;
  }

  if (a2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v5 = &dword_0 + 1;
    goto LABEL_16;
  }

  if (a3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v5 = &dword_0 + 2;
    goto LABEL_16;
  }

  if (a4)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v5 = &dword_0 + 3;
    goto LABEL_16;
  }

  if (a5)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v5 = &dword_4;
LABEL_16:
      sub_D21A8(v5);
    }
  }

  return result;
}

uint64_t sub_D42B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v1;
}

uint64_t sub_D4324(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v4 = sub_14243C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v38 - v10;
  __chkstk_darwin(v9);
  v13 = v38 - v12;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_4:
    sub_1423CC();
    v15 = sub_14242C();
    v16 = sub_144C5C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v41);
      _os_log_impl(&dword_0, v15, v16, "%s [Queue Tip] Not eligible to be shown, no items is the queue.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    (*(v5 + 8))(v8, v4);
    LOWORD(v41) = 0;
    return a1(&v41);
  }

  v40 = v4;

  v14 = sub_1441DC();

  if (v14)
  {

    v4 = v40;
    goto LABEL_4;
  }

  v38[1] = a2;
  v39 = a1;
  v20 = objc_opt_self();
  v21 = [v20 _applePodcastsFoundationSharedUserDefaults];

  v22 = sub_14489C();

  v23 = [v21 BOOLForKey:v22];

  v24 = [v20 _applePodcastsFoundationSharedUserDefaults];

  v25 = sub_14489C();

  v26 = [v24 BOOLForKey:v25];

  if (v23 & 1) != 0 || (v26)
  {
    sub_1423CC();
    v33 = sub_14242C();
    v34 = sub_144C5C();
    v35 = os_log_type_enabled(v33, v34);
    v30 = v39;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v36 = 136315650;
      *(v36 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v41);
      *(v36 + 12) = 1024;
      *(v36 + 14) = v23;
      *(v36 + 18) = 1024;
      *(v36 + 20) = v26;
      _os_log_impl(&dword_0, v33, v34, "%s [Queue Tip] Not eligible to be shown, hasOpenedQueueTab: %{BOOL}d, hasSeenQueueTip: %{BOOL}d.", v36, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v37);
    }

    (*(v5 + 8))(v11, v40);
    LOWORD(v41) = 0;
  }

  else
  {
    sub_1423CC();
    v27 = sub_14242C();
    v28 = sub_144C5C();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v39;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v41);
      _os_log_impl(&dword_0, v27, v28, "%s [Queue Tip] Eligible to be shown.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    (*(v5 + 8))(v13, v40);
    LOWORD(v41) = 1;
  }

  v30(&v41);
}

uint64_t sub_D487C(void (*a1)(uint64_t *), uint64_t a2)
{
  v4 = sub_14243C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v38 - v10;
  __chkstk_darwin(v9);
  v13 = v38 - v12;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v40 = v4;

    v14 = sub_1441EC();

    if (v14)
    {
      v38[1] = a2;
      v39 = a1;
      v15 = objc_opt_self();
      v16 = [v15 _applePodcastsFoundationSharedUserDefaults];

      v17 = sub_14489C();

      v18 = [v16 BOOLForKey:v17];

      v19 = [v15 _applePodcastsFoundationSharedUserDefaults];

      v20 = sub_14489C();

      v21 = [v19 BOOLForKey:v20];

      if (v18 & 1) != 0 || (v21)
      {
        sub_1423CC();
        v33 = sub_14242C();
        v34 = sub_144C5C();
        v35 = os_log_type_enabled(v33, v34);
        v25 = v39;
        if (v35)
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v41 = v37;
          *v36 = 136315650;
          *(v36 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v41);
          *(v36 + 12) = 1024;
          *(v36 + 14) = v18;
          *(v36 + 18) = 1024;
          *(v36 + 20) = v21;
          _os_log_impl(&dword_0, v33, v34, "%s [Chapters Tip] Not eligible to be shown, hasOpenedQueueTab: %{BOOL}d, hasSeenChaptersTip: %{BOOL}d.", v36, 0x18u);
          __swift_destroy_boxed_opaque_existential_0(v37);
        }

        (*(v5 + 8))(v11, v40);
        LOWORD(v41) = 0;
      }

      else
      {
        sub_1423CC();
        v22 = sub_14242C();
        v23 = sub_144C5C();
        v24 = os_log_type_enabled(v22, v23);
        v25 = v39;
        if (v24)
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v41 = v27;
          *v26 = 136315138;
          *(v26 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v41);
          _os_log_impl(&dword_0, v22, v23, "%s [Chapters Tip] Eligible to be shown.", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
        }

        (*(v5 + 8))(v13, v40);
        LOWORD(v41) = 1;
      }

      v25(&v41);
    }

    v4 = v40;
  }

  sub_1423CC();
  v28 = sub_14242C();
  v29 = sub_144C5C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v41);
    _os_log_impl(&dword_0, v28, v29, "%s [Chapters Tip] Not eligible to be shown, no chapter in the current playing item.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  (*(v5 + 8))(v8, v4);
  LOWORD(v41) = 0;
  return (a1)(&v41);
}

uint64_t sub_D4DD4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_14243C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v56 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v56 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v56 - v18;
  __chkstk_darwin(v17);
  v21 = &v56 - v20;
  if ((a3 & 1) == 0)
  {
    sub_1423CC();
    v28 = sub_14242C();
    v29 = sub_144C5C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v57 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v57);
      _os_log_impl(&dword_0, v28, v29, "%s [Episodes Notes Tip] Not eligible to be shown, metadata style is not supported.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    v26 = *(v7 + 8);
    v27 = v10;
    goto LABEL_9;
  }

  if (a1 < 10)
  {
    sub_1423CC();
    v22 = sub_14242C();
    v23 = sub_144C5C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v57 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v57);
      *(v24 + 12) = 2048;
      *(v24 + 14) = a1;
      _os_log_impl(&dword_0, v22, v23, "%s [Episodes Notes Tip] Not eligible to be shown, playerOpenCount: %ld.", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    v26 = *(v7 + 8);
    v27 = v13;
LABEL_9:
    v26(v27, v6);
    return 0;
  }

  v56 = v6;
  v33 = objc_opt_self();
  v34 = [v33 _applePodcastsFoundationSharedUserDefaults];

  v35 = sub_14489C();

  v36 = [v34 BOOLForKey:v35];

  v37 = [v33 _applePodcastsFoundationSharedUserDefaults];

  v38 = sub_14489C();
  v39 = v36;

  v40 = [v37 BOOLForKey:v38];

  if (v36 & 1) != 0 || (v40)
  {
    sub_1423CC();
    v46 = sub_14242C();
    v47 = sub_144C5C();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v56;
    if (v48)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v57 = v51;
      *v50 = 136315650;
      *(v50 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v57);
      *(v50 + 12) = 1024;
      *(v50 + 14) = v39;
      *(v50 + 18) = 1024;
      *(v50 + 20) = v40;
      _os_log_impl(&dword_0, v46, v47, "%s [Episodes Notes Tip] Not eligible to be shown, hasTappedMetadata: %{BOOL}d, hasSeenEpisodeNotesTip: %{BOOL}d.", v50, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v51);
    }

    (*(v7 + 8))(v16, v49);
    return 0;
  }

  v41 = v56;
  if (!a2)
  {
    sub_1423CC();
    v52 = sub_14242C();
    v53 = sub_144C5C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v57 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v57);
      _os_log_impl(&dword_0, v52, v53, "%s [Episodes Notes Tip] Not eligible to be shown, no item in the player.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
    }

    (*(v7 + 8))(v19, v41);
    return 0;
  }

  sub_1423CC();
  v42 = sub_14242C();
  v43 = sub_144C5C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v57 = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v57);
    _os_log_impl(&dword_0, v42, v43, "%s [Episodes Notes Tip] Eligible to be shown.", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  (*(v7 + 8))(v21, v41);
  return 1;
}

uint64_t sub_D54B4@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_14243C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v44 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v44 - v13;
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v17 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  if (*(Strong + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_areTranscriptsSupportedInNowPlaying) != 1)
  {

LABEL_9:
    sub_1423CC();
    v30 = sub_14242C();
    v31 = sub_144C5C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v46 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v46);
      _os_log_impl(&dword_0, v30, v31, "%s [Transcripts Tip] Not eligible to be shown, transcripts not enabled.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    result = (*(v5 + 8))(v8, v4);
    goto LABEL_12;
  }

  if (!v17)
  {
    sub_1423CC();
    v36 = sub_14242C();
    v37 = sub_144C5C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v46);
      _os_log_impl(&dword_0, v36, v37, "%s [Transcripts Tip] Not eligible to be shown, transcript tab is currently unavailable", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
    }

    else
    {
    }

    result = (*(v5 + 8))(v11, v4);
LABEL_12:
    v35 = 0;
    goto LABEL_13;
  }

  v45 = a2;
  v19 = objc_opt_self();
  v20 = [v19 _applePodcastsFoundationSharedUserDefaults];
  v21 = sub_144C7C();

  v22 = [v19 _applePodcastsFoundationSharedUserDefaults];

  v23 = sub_14489C();

  v24 = [v22 BOOLForKey:v23];

  if (v21 & 1) != 0 || (v24)
  {
    sub_1423CC();
    v40 = sub_14242C();
    v41 = sub_144C5C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v42 = 136315650;
      *(v42 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v46);
      *(v42 + 12) = 1024;
      *(v42 + 14) = v21 & 1;
      *(v42 + 18) = 1024;
      *(v42 + 20) = v24;
      _os_log_impl(&dword_0, v40, v41, "%s [Transcripts Tip] Not eligible to be shown, hasTappedTranscriptsTab: %{BOOL}d, hasSeenTranscriptsTip: %{BOOL}d.", v42, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    else
    {
    }

    result = (*(v5 + 8))(v14, v4);
    v35 = 0;
    a2 = v45;
  }

  else
  {
    sub_1423CC();
    v25 = sub_14242C();
    v26 = sub_144C5C();
    v27 = os_log_type_enabled(v25, v26);
    a2 = v45;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v46);
      _os_log_impl(&dword_0, v25, v26, "%s [Transcripts Tip] Eligible to be shown.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    else
    {
    }

    result = (*(v5 + 8))(v16, v4);
    v35 = 1;
  }

LABEL_13:
  *a2 = v35;
  return result;
}

uint64_t sub_D5AD4(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v24[1] = a2;
  v25 = a1;
  v24[0] = sub_14243C();
  v2 = *(v24[0] - 8);
  v3 = __chkstk_darwin(v24[0]);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v24 - v6;
  v8 = objc_opt_self();
  v9 = [v8 _applePodcastsFoundationSharedUserDefaults];

  v10 = sub_14489C();

  v11 = [v9 BOOLForKey:v10];

  v12 = [v8 _applePodcastsFoundationSharedUserDefaults];

  v13 = sub_14489C();

  v14 = [v12 BOOLForKey:v13];

  if (v11 & 1) != 0 || (v14)
  {
    sub_1423CC();
    v19 = sub_14242C();
    v20 = sub_144C5C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315650;
      *(v21 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v26);
      *(v21 + 12) = 1024;
      *(v21 + 14) = v11;
      *(v21 + 18) = 1024;
      *(v21 + 20) = v14;
      _os_log_impl(&dword_0, v19, v20, "%s [Audio Controls Tip] Not eligible to be shown, hasOpenedAudioControls: %{BOOL}d, hasSeenAudioControlsTip: %{BOOL}d.", v21, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    (*(v2 + 8))(v5, v24[0]);
    LOWORD(v26) = 0;
  }

  else
  {
    sub_1423CC();
    v15 = sub_14242C();
    v16 = sub_144C5C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v26);
      _os_log_impl(&dword_0, v15, v16, "%s [Audio Controls Tip] Eligible to be shown.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    (*(v2 + 8))(v7, v24[0]);
    LOWORD(v26) = 1;
  }

  return v25(&v26);
}

void sub_D5E90(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3 && (v4 = [v3 podcast]) != 0)
  {
    v5 = v4;
    v6 = sub_144BFC();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_D5EF8(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7928);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_14243C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  if (v14)
  {
    v15 = *a1;
    v16 = [objc_opt_self() sharedInstance];
    v17 = [v16 mainQueueContext];

    __chkstk_darwin(v18);
    *(&v25 - 4) = v17;
    *(&v25 - 3) = v15;
    *(&v25 - 2) = v14;
    *(&v25 - 1) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7908);
    sub_144E4C();
  }

  else
  {
    sub_1423CC();
    v19 = sub_14242C();
    v20 = sub_144C5C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = a3;
      v26 = v22;
      v23 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v26);
      _os_log_impl(&dword_0, v19, v20, "%s [Save Custom Show Settings Tip] Not eligible to be shown, no podcastUUID found.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      a3 = v25;
    }

    (*(v11 + 8))(v13, v10);
    v26 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7930);
    sub_14264C();
    sub_1D4A4(&qword_1C7938, &qword_1C7928);
    v24 = sub_14273C();
    (*(v7 + 8))(v9, v6);
    *a3 = v24;
  }
}

uint64_t sub_D6270@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v51 = a3;
  v57 = a2;
  v58 = a1;
  v59 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7928);
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v43 - v5;
  v6 = sub_14243C();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7940);
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7948);
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7950);
  v47 = *(v15 - 8);
  v48 = v15;
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7958);
  v49 = *(v18 - 8);
  v50 = v18;
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v21 = kMTPodcastEntityName;
  v22 = objc_opt_self();
  v23 = v21;
  v24 = sub_14489C();
  v25 = [v22 predicateForPodcastUUID:v24];

  v26 = [v58 objectInEntity:v23 predicate:v25];
  if (v26)
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      swift_getKeyPath();
      sub_1409FC();

      sub_1D4A4(&qword_1C7960, &qword_1C7940);
      sub_D81F8(&qword_1C7968, &qword_1C7970);
      sub_14286C();
      (*(v44 + 8))(v11, v9);
      sub_1D4A4(&qword_1C7978, &qword_1C7948);
      v29 = v46;
      sub_14285C();
      (*(v45 + 8))(v14, v29);
      v30 = swift_allocObject();
      v31 = v51;
      *(v30 + 16) = v28;
      *(v30 + 24) = v31;
      v32 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7930);
      sub_1D4A4(&qword_1C7980, &qword_1C7950);
      v33 = v48;
      sub_1427BC();

      (*(v47 + 8))(v17, v33);
      sub_1D4A4(&qword_1C7988, &qword_1C7958);
      v34 = v50;
      v35 = sub_14273C();

      result = (*(v49 + 8))(v20, v34);
      goto LABEL_8;
    }
  }

  sub_1423CC();
  v37 = sub_14242C();
  v38 = sub_144C5C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v60 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v60);
    _os_log_impl(&dword_0, v37, v38, "%s [Save Custom Show Settings Tip] Not eligible to be shown, no MTPodcast found.", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  (*(v52 + 8))(v8, v53);
  v60 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7930);
  v41 = v54;
  sub_14264C();
  sub_1D4A4(&qword_1C7938, &qword_1C7928);
  v42 = v56;
  v35 = sub_14273C();
  result = (*(v55 + 8))(v41, v42);
LABEL_8:
  *v59 = v35;
  return result;
}

uint64_t sub_D6A14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_D6A74(a2);
  }

  return result;
}

void sub_D6A74(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 <= 1)
    {
LABEL_7:
      v14 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];

      v2 = sub_14489C();

      v3 = [v14 BOOLForKey:v2];

      if ((v3 & 1) == 0)
      {
        isa = sub_144A7C().super.super.isa;

        v5 = sub_14489C();

        [v14 setValue:isa forKey:v5];
      }

      return;
    }
  }

  else if (a1 == 2 || a1 == 3 || a1 == 4)
  {
    goto LABEL_7;
  }

  v6 = a1;
  v7 = *v1;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 mainQueueContext];

  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v6;
  v10[4] = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_D8010;
  *(v11 + 24) = v10;
  aBlock[4] = sub_77B4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_D78F4;
  aBlock[3] = &block_descriptor_15;
  v12 = _Block_copy(aBlock);
  v13 = v9;
  sub_20F8C(v6);

  [v13 performBlockAndWait:v12];

  _Block_release(v12);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

uint64_t sub_D6E20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_144ADC();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_144ABC();

    v6 = sub_144AAC();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v4;
    sub_C8D08(0, 0, v2, &unk_152E58, v7);
  }

  return result;
}

uint64_t sub_D6F74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_14208C();
  sub_14200C();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_144ADC();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_144ABC();

    v6 = sub_144AAC();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v4;
    sub_C8D08(0, 0, v2, &unk_152E50, v7);
  }

  return result;
}

uint64_t sub_D70EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 272) = a4;
  sub_144ABC();
  *(v4 + 280) = sub_144AAC();
  v6 = sub_144A8C();

  return _swift_task_switch(sub_D7184, v6, v5);
}

uint64_t sub_D7184()
{
  v1 = *(v0 + 272);

  sub_42908((v0 + 16));
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v2;
  v3 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v3;
  v4 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v4;
  v5 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v5;

  sub_1426EC();
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_isTipVisible) = 0;
  v6 = *(v0 + 8);

  return v6();
}

void sub_D7268(void *a1, uint64_t a2)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7828);
  v4 = __chkstk_darwin(v55);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v51 - v7;
  v57 = sub_14243C();
  v9 = *(v57 - 8);
  v10 = __chkstk_darwin(v57);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = sub_140ABC();
  v56 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[0] = 0;
  v18 = [a1 existingObjectWithID:a2 error:v58];
  v19 = v58[0];
  if (v18)
  {
    v20 = v18;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    v22 = v19;
    if (v21)
    {
      v23 = [v21 advancedPlaybackSettings];
      if (v23)
      {
        v24 = v23;
        sub_140A9C();
        isa = sub_140A6C().super.isa;
        (*(v56 + 8))(v17, v15);
        [v24 setTipLastShownDate:isa];
      }

      sub_1423CC();
      v26 = v20;
      v27 = sub_14242C();
      v28 = sub_144C5C();

      if (os_log_type_enabled(v27, v28))
      {
        v52 = v28;
        v53 = v27;
        v54 = v26;
        v29 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v59 = v51;
        *v29 = 136315650;
        *(v29 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v59);
        *(v29 + 12) = 2080;
        v30 = [v21 uuid];
        if (v30)
        {
          v31 = v30;
          v32 = sub_1448DC();
          v34 = v33;
        }

        else
        {
          v32 = 0;
          v34 = 0;
        }

        v58[0] = v32;
        v58[1] = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1400);
        v40 = sub_14490C();
        v42 = sub_ED2A4(v40, v41, &v59);

        *(v29 + 14) = v42;
        *(v29 + 22) = 2080;
        v43 = [v21 advancedPlaybackSettings];
        if (v43)
        {
          v44 = v43;
          v45 = [v43 tipLastShownDate];

          v26 = v54;
          if (v45)
          {
            sub_140A8C();

            v46 = 0;
          }

          else
          {
            v46 = 1;
          }

          (*(v56 + 56))(v6, v46, 1, v15);
          sub_D8044(v6, v8);
        }

        else
        {
          (*(v56 + 56))(v8, 1, 1, v15);
          v26 = v54;
        }

        v47 = sub_14490C();
        v49 = sub_ED2A4(v47, v48, &v59);

        *(v29 + 24) = v49;
        v27 = v53;
        _os_log_impl(&dword_0, v53, v52, "%s [Save Show Settings Tip] Marked tip as seen for podcast with UUID: %s as of date: %s", v29, 0x20u);
        swift_arrayDestroy();
      }

      (*(v9 + 8))(v14, v57);
      v50 = [v21 managedObjectContext];
      [v50 saveInCurrentBlock];

      return;
    }
  }

  else
  {
    v35 = v58[0];
    sub_1409EC();

    swift_willThrow();
  }

  sub_1423CC();
  v36 = sub_14242C();
  v37 = sub_144C3C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v58[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, v58);
    _os_log_impl(&dword_0, v36, v37, "%s [Save Show Settings Tip] Cannot mark tip as seen since no podcast can be found.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  (*(v9 + 8))(v12, v57);
}

uint64_t sub_D791C()
{
  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController____lazy_storage___viewProvider, &qword_1C77C0);
  v1 = OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController__metadataStyleSupportsEpisodeNotesTip;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_D7A38()
{
  sub_D791C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NowPlayingTipController()
{
  result = qword_1C76D0;
  if (!qword_1C76D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_D7AE4()
{
  sub_D7BE0();
  if (v0 <= 0x3F)
  {
    sub_D7C44();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_D7BE0()
{
  if (!qword_1C76E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2438);
    v0 = sub_1450CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C76E0);
    }
  }
}

void sub_D7C44()
{
  if (!qword_1C27F8)
  {
    v0 = sub_1426FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C27F8);
    }
  }
}

uint64_t sub_D7C94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D7CE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D7D44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D7DBC()
{

  v1 = *(v0 + 24);
  if (v1 >= 5)
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D7E1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D7E68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD10;

  return sub_D70EC(a1, v4, v5, v6);
}

uint64_t sub_D7F1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0A8;

  return sub_D70EC(a1, v4, v5, v6);
}

uint64_t sub_D7FD0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_D8044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D80B4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_D80F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result & 1;
  return result;
}

id sub_D8154@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 advancedPlaybackSettings];
  *a2 = result;
  return result;
}

id sub_D81B0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 settingsAdjustedCount];
  *a2 = result;
  return result;
}

uint64_t sub_D81F8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_D8260()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_D8298@<X0>(void *a1@<X8>)
{
  result = sub_D82C4(*(v1 + 16));
  *a1 = result;
  return result;
}

id sub_D82C4(void *a1)
{
  v2 = sub_14243C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  sub_14208C();
  if (sub_14204C())
  {
    sub_1423CC();
    v9 = sub_14242C();
    v10 = sub_144C5C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v19);
      _os_log_impl(&dword_0, v9, v10, "%s [Save Custom Show Settings Tip] Eligible to be shown.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    (*(v3 + 8))(v8, v2);
    return [a1 objectID];
  }

  else
  {
    sub_1423CC();
    v14 = sub_14242C();
    v15 = sub_144C5C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v19);
      _os_log_impl(&dword_0, v14, v15, "%s [Save Custom Show Settings Tip] Not eligible to be shown.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t sub_D85AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D861C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_D8690()
{
  result = qword_1C7998;
  if (!qword_1C7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7998);
  }

  return result;
}

uint64_t sub_D86E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_D8750(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for CubicSpringTimingParameters();
  v10.receiver = v2;
  v10.super_class = v5;
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_14514C();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v6 = *&v2[OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters];
  v7 = *(v9 + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters);
  *(v9 + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters) = v6;
  v8 = v6;

  a2[3] = v5;
  *a2 = v9;
}

id sub_D8B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_14489C();
  }

  else
  {
    v5 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for CubicSpringPropertyAnimator();
  v6 = objc_msgSendSuper2(&v13, "_basicAnimationForView:withKeyPath:", a1, v5);

  if ([v3 timingParameters])
  {
    type metadata accessor for CubicSpringTimingParameters();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters);
      if (v8)
      {
        v9 = [v8 _mediaTimingFunction];
        if (v9)
        {
          v10 = v9;
          if (!v6)
          {
            swift_unknownObjectRelease();

            return v6;
          }

          v11 = v6;
          [v11 setTimingFunction:v10];
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return v6;
}

id sub_D8D3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t NotificationObserver.__allocating_init(name:object:dispatchOnMainThread:handler:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v9 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  v10 = objc_opt_self();
  v11 = a1;

  v12 = [v10 defaultCenter];
  v13 = *(v9 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();

  v15 = v13;
  [v12 addObserver:v9 selector:"handleNotification:" name:v15 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v9;
}

uint64_t NotificationObserver.init(name:object:dispatchOnMainThread:handler:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  *(v5 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  v10 = objc_opt_self();
  v11 = a1;

  v12 = [v10 defaultCenter];
  v13 = *(v5 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();

  v15 = v13;
  [v12 addObserver:v5 selector:"handleNotification:" name:v15 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v5;
}

uint64_t NotificationObserver.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v2;
  [v1 removeObserver:v0 name:v4 object:Strong];

  swift_unknownObjectRelease();
  sub_15468(v0 + 24);

  return v0;
}

uint64_t NotificationObserver.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v2;
  [v1 removeObserver:v0 name:v4 object:Strong];

  swift_unknownObjectRelease();
  sub_15468(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_D9158(uint64_t a1)
{
  v3 = sub_14099C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  if (*(v1 + 32) != 1)
  {
    return (*(v1 + 40))(a1, v6);
  }

  v7 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_140D7C();
}

uint64_t sub_D92E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);

    v4(a2);
  }

  return result;
}

uint64_t sub_D9478()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D94B0()
{
  v1 = sub_14099C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_D9574()
{
  v1 = *(sub_14099C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_D92E8(v2, v3);
}

void sub_D95D8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_phaseXPosition] = 0;
  v9 = OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_patternLayer;
  *&v4[v9] = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_defaultSpeed] = 4;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_displayLink] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_speed] = 0x4010000000000000;
  v4[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_animating] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for PlayerIndeterminateActivityIndicator();
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  [v10 setClipsToBounds:1];
  v11 = OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_patternLayer;
  v12 = *&v10[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_patternLayer];
  v13 = sub_14489C();
  v14 = [objc_opt_self() imageNamed:v13];

  if (v14)
  {
    v15 = [objc_allocWithZone(UIColor) initWithPatternImage:v14];

    v16 = [v15 CGColor];
    [v12 setBackgroundColor:v16];

    v17 = [v10 layer];
    [v17 addSublayer:*&v10[v11]];
  }

  else
  {
    __break(1u);
  }
}

id sub_D9944()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerIndeterminateActivityIndicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_D99E8()
{
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_phaseXPosition) = 0;
  v1 = OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_patternLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_defaultSpeed) = 4;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_displayLink) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_speed) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_animating) = 0;
  sub_1452FC();
  __break(1u);
}

void *sub_D9AB0(void *a1)
{
  v2 = v1;
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = a1;
  if (([v3 isSystemPodcastsPath] & 1) != 0 || (v4 = objc_msgSend(v3, "bundleID")) == 0)
  {

LABEL_7:
    type metadata accessor for NowPlayingMetadataPlaceholder();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v5 = objc_opt_self();
  sub_AC71C();
  v14._object = 0x8000000000166210;
  v14._countAndFlagsBits = 0xD00000000000001ELL;
  isa = sub_144FDC(v14).super.isa;
  v7 = [v5 staticArtworkCatalogWithImage:isa];

  v2[2] = v7;
  v8 = [v3 representedBundleDisplayName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1448DC();
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0;
  }

  v2[3] = v10;
  v2[4] = v12;
  return v2;
}

uint64_t sub_D9BFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_D9C60(uint64_t a1)
{
  v2 = sub_14142C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_14138C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (qword_1BFF10 != -1)
      {
        swift_once();
      }

      v10 = qword_1D1768;
      goto LABEL_16;
    }

LABEL_12:
    sub_1413EC();
    sub_14186C();
    return (*(v3 + 8))(v5, v2);
  }

  if (a1 < 2)
  {
    if (qword_1BFF18 != -1)
    {
      swift_once();
    }

    v10 = qword_1D1780;
LABEL_16:
    __swift_project_value_buffer(v2, v10);
    sub_14136C();
    sub_14133C();
    return (*(v7 + 8))(v9, v6);
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  return sub_14185C();
}

uint64_t sub_D9EBC(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return v3 == 2;
      case 3:
        return v3 == 3;
      case 4:
        return v3 == 4;
    }
  }

  if (v3 < 5)
  {
    return 0;
  }

  sub_DA560();
  return sub_144FFC() & 1;
}

uint64_t sub_D9F78(uint64_t a1)
{
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        v1 = [objc_opt_self() mainBundle];
        v2._countAndFlagsBits = 0xD000000000000017;
        v8._countAndFlagsBits = 0x8000000000166680;
        v2._object = 0x8000000000166660;
        goto LABEL_14;
      case 3:
        v1 = [objc_opt_self() mainBundle];
        v2._countAndFlagsBits = 0xD000000000000015;
        v8._countAndFlagsBits = 0x8000000000166630;
        v2._object = 0x8000000000166610;
        goto LABEL_14;
      case 4:
        v1 = [objc_opt_self() mainBundle];
        v2._countAndFlagsBits = 0xD000000000000018;
        v8._countAndFlagsBits = 0x80000000001665E0;
        v2._object = 0x80000000001665C0;
LABEL_14:
        v3.value._countAndFlagsBits = 0;
        v3.value._object = 0;
        v4.super.isa = v1;
        v5._countAndFlagsBits = 0;
        v5._object = 0xE000000000000000;
        goto LABEL_15;
    }

LABEL_13:
    v1 = [objc_opt_self() mainBundle];
    v8._countAndFlagsBits = 0x8000000000166550;
    v2._countAndFlagsBits = 0xD000000000000023;
    v2._object = 0x8000000000166520;
    goto LABEL_14;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_13;
    }

    v1 = [objc_opt_self() mainBundle];
    v2._countAndFlagsBits = 0xD000000000000012;
    v8._countAndFlagsBits = 0x80000000001666D0;
    v2._object = 0x80000000001666B0;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v8._countAndFlagsBits = 0x80000000001666D0;
    v2._countAndFlagsBits = 0x49545F4555455551;
    v2._object = 0xEF454C5449545F50;
  }

  v3.value._countAndFlagsBits = 0;
  v3.value._object = 0;
  v4.super.isa = v1;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
LABEL_15:
  v6 = sub_1409DC(v2, v3, v4, v5, v8);

  return v6;
}

uint64_t sub_DA238(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return v1;
      }

      v4 = " episode notes help tip.";
      v2 = [objc_opt_self() mainBundle];
      v3._countAndFlagsBits = 0xD000000000000015;
    }

    else
    {
      v4 = " queue help tip.";
      v2 = [objc_opt_self() mainBundle];
      v3._countAndFlagsBits = 0xD000000000000012;
    }

    v9._countAndFlagsBits = 0x80000000001664D0;
    v3._object = (v4 | 0x8000000000000000);
    v5.value._countAndFlagsBits = 0;
    v5.value._object = 0;
    v6.super.isa = v2;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    goto LABEL_14;
  }

  switch(a1)
  {
    case 2:
      v2 = [objc_opt_self() mainBundle];
      v3._countAndFlagsBits = 0xD00000000000001ALL;
      v9._countAndFlagsBits = 0x8000000000166480;
      v3._object = 0x8000000000166460;
      goto LABEL_11;
    case 3:
      v2 = [objc_opt_self() mainBundle];
      v3._countAndFlagsBits = 0xD000000000000018;
      v9._countAndFlagsBits = 0x8000000000166430;
      v3._object = 0x8000000000166410;
      goto LABEL_11;
    case 4:
      v2 = [objc_opt_self() mainBundle];
      v9._countAndFlagsBits = 0x80000000001663E0;
      v3._object = 0x8000000000166390;
      v3._countAndFlagsBits = 0x1000000000000044;
LABEL_11:
      v5.value._countAndFlagsBits = 0;
      v5.value._object = 0;
      v6.super.isa = v2;
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
LABEL_14:
      v1 = sub_1409DC(v3, v5, v6, v7, v9);

      break;
  }

  return v1;
}

uint64_t sub_DA4A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_DA500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_DA560()
{
  result = qword_1C95B0;
  if (!qword_1C95B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C95B0);
  }

  return result;
}

uint64_t sub_DA5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_14307C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DC8);
  sub_DA820(a1, (a2 + *(v4 + 44)));
  sub_143EAC();
  sub_142A9C();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DD0) + 36));
  *v5 = v29;
  v5[1] = v30;
  v5[2] = v31;
  if (qword_1C0048 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DD8);
  v7 = __swift_project_value_buffer(v6, qword_1C7D90);
  v8 = sub_14362C();
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DE0) + 36);
  sub_DB910(v7, v9);
  *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DE8) + 36)) = v8;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DF0) + 36));
  v11 = *(sub_142D2C() + 20);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = sub_14310C();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #20.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1460) + 36)] = 256;
  LOBYTE(v12) = sub_14361C();
  sub_14290C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DF8);
  v28 = a2 + *(result + 36);
  *v28 = v12;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_DA820@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = sub_140AEC();
  __chkstk_darwin(v3 - 8);
  v84 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_14488C();
  __chkstk_darwin(v5 - 8);
  v78 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1220);
  v72 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v63 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E00);
  __chkstk_darwin(v74);
  v9 = &v63 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E08);
  v82 = *(v79 - 8);
  __chkstk_darwin(v79);
  v73 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E10);
  __chkstk_darwin(v11 - 8);
  v85 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v63 - v14;
  v15 = sub_1432AC();
  v90 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E18);
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E20);
  v80 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v89 = &v63 - v23;
  __chkstk_darwin(v24);
  v77 = &v63 - v25;
  __chkstk_darwin(v26);
  v88 = &v63 - v27;

  sub_143CFC();
  swift_getKeyPath();
  v70 = OBJC_IVAR____TtC12NowPlayingUI35NowPlayingPlaybackControlsViewModel___observationRegistrar;
  *&v97 = a1;
  v69 = sub_DBEF0(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v28 = *(a1 + 66);
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = (v28 & 1) == 0;
  v67 = v18;
  v31 = &v20[*(v18 + 36)];
  *v31 = KeyPath;
  v31[1] = sub_691B4;
  v31[2] = v30;
  sub_142D9C();
  v68 = sub_DBD2C();
  v64 = sub_DBEF0(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect);
  v66 = v20;
  sub_1438CC();
  v32 = v90 + 8;
  v87 = *(v90 + 8);
  v87(v17, v15);
  v90 = v32;
  sub_15340(v20, &qword_1C7E18);

  v33 = v71;
  sub_143CFC();
  sub_143EAC();
  sub_142D4C();
  v34 = v9;
  (*(v72 + 32))(v9, v33, v75);
  v35 = v74;
  v36 = &v9[*(v74 + 36)];
  v37 = v102;
  v38 = v103;
  *(v36 + 4) = v101;
  *(v36 + 5) = v37;
  *(v36 + 6) = v38;
  v39 = v98;
  *v36 = v97;
  *(v36 + 1) = v39;
  v40 = v100;
  *(v36 + 2) = v99;
  *(v36 + 3) = v40;
  sub_142D9C();
  v41 = sub_DBF48();
  v42 = v73;
  v43 = v64;
  sub_1438CC();
  v65 = v15;
  v87(v17, v15);
  sub_15340(v34, &qword_1C7E00);
  sub_14487C();
  sub_140ADC();
  v95 = sub_1448FC();
  v96 = v44;
  v91 = v35;
  v92 = v15;
  v93 = v41;
  v94 = v43;
  swift_getOpaqueTypeConformance2();
  sub_9CCC();
  v45 = v76;
  v46 = v79;
  sub_1439CC();

  (*(v82 + 8))(v42, v46);

  v47 = v66;
  sub_143CFC();
  swift_getKeyPath();
  v91 = a1;
  sub_141A4C();

  LOBYTE(v35) = *(a1 + 65);
  v48 = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = (v35 & 1) == 0;
  v50 = (v47 + *(v67 + 36));
  *v50 = v48;
  v50[1] = sub_DC654;
  v50[2] = v49;
  sub_142D9C();
  v51 = v77;
  v52 = v65;
  sub_1438CC();
  v87(v17, v52);
  sub_15340(v47, &qword_1C7E18);
  v53 = v80;
  v54 = *(v80 + 16);
  v55 = v89;
  v56 = v83;
  v54(v89, v88, v83);
  v57 = v85;
  sub_DC010(v45, v85);
  v58 = v81;
  v54(v81, v51, v56);
  v59 = v86;
  v54(v86, v55, v56);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E60);
  sub_DC010(v57, &v59[*(v60 + 48)]);
  v54(&v59[*(v60 + 64)], v58, v56);
  v61 = *(v53 + 8);
  v61(v51, v56);
  sub_DC080(v45);
  v61(v88, v56);
  v61(v58, v56);
  sub_DC080(v57);
  return (v61)(v89, v56);
}

uint64_t sub_DB404(uint64_t result)
{
  if ((((*(result + 16) | (*(result + 20) << 32)) + 0x100000000) >> 32) >= 3uLL)
  {
    *(result + 16) = 0;
    *(result + 20) = 2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_DBEF0(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_DB538@<X0>(uint64_t *a1@<X8>)
{
  result = sub_143C2C();
  *a1 = result;
  return result;
}

uint64_t sub_DB580(uint64_t result)
{
  if (*(result + 20) || (v1 = *(result + 16), (v1 & 0x100) == 0) || (v1 & 1) != 0)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_DBEF0(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  else
  {
    *(result + 20) = 0;
    *(result + 16) = 256;
  }

  return result;
}

uint64_t sub_DB6B0@<X0>(uint64_t a1@<X8>)
{
  sub_141F5C();
  swift_getKeyPath();
  sub_DBEF0(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  result = sub_141EFC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_DB784(uint64_t result)
{
  if (*(result + 20) || (v1 = *(result + 16), (v1 & 0x100) != 0) || (v1 & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_DBEF0(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  else
  {
    *(result + 20) = 0;
    *(result + 16) = 1;
  }

  return result;
}

uint64_t sub_DB8B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_143C2C();
  *a1 = result;
  return result;
}

uint64_t sub_DB910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DB99C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_143F3C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DD8);
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  sub_143BDC();
  v9 = sub_143BEC();

  (*(v4 + 104))(v6, enum case for BlendMode.plusLighter(_:), v3);
  (*(v4 + 16))(&v8[*(v7 + 36)], v6, v3);
  *v8 = v9;
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_DBB10()
{
  result = sub_14368C();
  qword_1C7DC0 = result;
  return result;
}

uint64_t sub_DBB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_143EAC();
  sub_142A9C();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7EB0) + 36));
  *v5 = v15;
  v5[1] = v16;
  v5[2] = v17;
  if (qword_1C0058 != -1)
  {
    swift_once();
  }

  v6 = qword_1C7DC0;
  KeyPath = swift_getKeyPath();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7EB8) + 36));
  *v8 = KeyPath;
  v8[1] = v6;
  v9 = qword_1C0050;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DD8);
  v11 = __swift_project_value_buffer(v10, qword_1C7DA8);
  v12 = sub_14362C();
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7EC0) + 36);
  sub_DB910(v11, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DE8);
  *(v13 + *(result + 36)) = v12;
  return result;
}

unint64_t sub_DBD2C()
{
  result = qword_1C7E28;
  if (!qword_1C7E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7E18);
    sub_DBDE4();
    sub_1D4A4(&qword_1C2740, &qword_1C2748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E28);
  }

  return result;
}

unint64_t sub_DBDE4()
{
  result = qword_1C7E30;
  if (!qword_1C7E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7E38);
    sub_1D4A4(&qword_1C7E40, &qword_1C7E48);
    sub_DBE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E30);
  }

  return result;
}

unint64_t sub_DBE9C()
{
  result = qword_1C7E50;
  if (!qword_1C7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E50);
  }

  return result;
}

uint64_t sub_DBEF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_DBF48()
{
  result = qword_1C7E58;
  if (!qword_1C7E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7E00);
    sub_1D4A4(&qword_1C1218, &qword_1C1220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E58);
  }

  return result;
}

uint64_t sub_DC010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DC080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_DC134()
{
  result = qword_1C7E68;
  if (!qword_1C7E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7DF8);
    sub_DC1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E68);
  }

  return result;
}

unint64_t sub_DC1C0()
{
  result = qword_1C7E70;
  if (!qword_1C7E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7DF0);
    sub_DC278();
    sub_1D4A4(&qword_1C7EA0, &qword_1C1460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E70);
  }

  return result;
}

unint64_t sub_DC278()
{
  result = qword_1C7E78;
  if (!qword_1C7E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7DE0);
    sub_DC330();
    sub_1D4A4(&qword_1C7E98, &qword_1C7DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E78);
  }

  return result;
}

unint64_t sub_DC330()
{
  result = qword_1C7E80;
  if (!qword_1C7E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7DD0);
    sub_1D4A4(&qword_1C7E88, &qword_1C7E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E80);
  }

  return result;
}

unint64_t sub_DC410()
{
  result = qword_1C7EC8;
  if (!qword_1C7EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7EC0);
    sub_DC4C8();
    sub_1D4A4(&qword_1C7E98, &qword_1C7DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7EC8);
  }

  return result;
}

unint64_t sub_DC4C8()
{
  result = qword_1C7ED0;
  if (!qword_1C7ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7EB8);
    sub_DC580();
    sub_1D4A4(&qword_1C12A8, &qword_1C2BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7ED0);
  }

  return result;
}

unint64_t sub_DC580()
{
  result = qword_1C7ED8;
  if (!qword_1C7ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7EB0);
    sub_1D4A4(&unk_1C7EE0, &qword_1C7EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7ED8);
  }

  return result;
}

uint64_t sub_DC658(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_DC7AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImagelessMPButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_DC8E4()
{
  v1 = objc_opt_self();
  v2 = &selRef_metadataObject;
  v3 = [v1 mainBundle];
  v28._countAndFlagsBits = 0xE000000000000000;
  v31._object = 0x80000000001670F0;
  v31._countAndFlagsBits = 0xD000000000000012;
  v36.value._countAndFlagsBits = 0;
  v36.value._object = 0;
  v4.super.isa = v3;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_1409DC(v31, v36, v4, v41, v28);

  if (*(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlScrubSpeed + 8))
  {

    sub_DCD80();
    return;
  }

  v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlScrubSpeed);
  if (v5 <= 1)
  {
    if (!v5)
    {
      v16 = [v1 mainBundle];
      v29._countAndFlagsBits = 0xE000000000000000;
      v34._object = 0x8000000000167150;
      v34._countAndFlagsBits = 0xD000000000000012;
      v39.value._countAndFlagsBits = 0;
      v39.value._object = 0;
      v17.super.isa = v16;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      sub_1409DC(v34, v39, v17, v44, v29);
      v1 = v18;

      v19 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
      if (!v19)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v2 = v19;
      v20 = sub_14489C();
      [(SEL *)v2 setText:v20];

      v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
      if (v5)
      {
        goto LABEL_24;
      }

      __break(1u);
LABEL_22:
      v21 = [v1 v2[7]];
      v29._countAndFlagsBits = 0xE000000000000000;
      v35._countAndFlagsBits = 0xD000000000000017;
      v35._object = 0x8000000000167110;
      v40.value._countAndFlagsBits = 0;
      v40.value._object = 0;
      v22.super.isa = v21;
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      sub_1409DC(v35, v40, v22, v45, v29);

      v23 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
      if (v23)
      {
        v24 = v23;
        v25 = sub_14489C();
        [v24 setText:v25];

        v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
        if (v5)
        {
          goto LABEL_24;
        }

LABEL_31:
        __break(1u);
        return;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v5 != &dword_0 + 1)
    {
LABEL_16:

      return;
    }

    v6 = [v1 mainBundle];
    v29._countAndFlagsBits = 0xE000000000000000;
    v32._countAndFlagsBits = 0xD000000000000014;
    v32._object = 0x8000000000167130;
    v37.value._countAndFlagsBits = 0;
    v37.value._object = 0;
    v7.super.isa = v6;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    sub_1409DC(v32, v37, v7, v42, v29);
    v1 = v8;

    v9 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
    if (!v9)
    {
      __break(1u);
      goto LABEL_28;
    }

    v2 = v9;
    v10 = sub_14489C();
    [(SEL *)v2 setText:v10];

    v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
    if (v5)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  if (v5 == &dword_0 + 2)
  {
    goto LABEL_22;
  }

  if (v5 != &dword_0 + 3)
  {
    goto LABEL_16;
  }

  v11 = [v1 v2[7]];
  v29._countAndFlagsBits = 0xE000000000000000;
  v33._countAndFlagsBits = 0x72635320656E6946;
  v33._object = 0xEE00676E69626275;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v12.super.isa = v11;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_1409DC(v33, v38, v12, v43, v29);

  v13 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
  if (!v13)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v14 = v13;
  v15 = sub_14489C();
  [v14 setText:v15];

  v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_24:
  v26 = v5;

  v27 = sub_14489C();

  [v26 setTitle:v27 forState:0];

  sub_E7308();
}

void sub_DCD80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse;
  v3 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse);
  if (v3 && (v4 = [v3 tracklist], v5 = sub_AB9C0(), v4, v5) && (v6 = objc_msgSend(v5, "metadataObject"), v5, v6) && (v7 = objc_msgSend(v6, "flattenedGenericObject"), v8 = objc_msgSend(v7, "anyObject"), v6, v7, v8))
  {
    v9 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel;
    v10 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
    if (!v10)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    sub_14114C();
    v11 = v10;
    v12 = sub_14104C();
    [v11 setTextColor:v12];

    v13 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl);
    if (!v13)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    [v13 setHidden:0];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = v8;
      sub_E5BB8(v15);
    }

    else
    {
      objc_opt_self();
      v93 = swift_dynamicCastObjCClass();
      if (v93)
      {
        v94 = v93;
        v16 = v8;
        sub_E60D8(v94);
      }

      else
      {
        objc_opt_self();
        v95 = swift_dynamicCastObjCClass();
        if (v95)
        {
          v96 = *(v1 + v9);
          if (!v96)
          {
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          v97 = v95;
          v117._object = v8;
          v98 = v96;
          v99 = [v97 title];
          if (v99)
          {
            v100 = v99;
            sub_1448DC();
          }

          else
          {
            v100 = [objc_opt_self() mainBundle];
            v117._countAndFlagsBits = 0xE000000000000000;
            v122._countAndFlagsBits = 0x5F4E574F4E4B4E55;
            v122._object = 0xED0000454C544954;
            v126.value._countAndFlagsBits = 0;
            v126.value._object = 0;
            v106.super.isa = v100;
            v130._countAndFlagsBits = 0;
            v130._object = 0xE000000000000000;
            sub_1409DC(v122, v126, v106, v130, v117);
          }

          v107 = sub_14489C();

          [v98 setText:v107];

          v108 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
          if (!v108)
          {
            goto LABEL_104;
          }
        }

        else
        {
          objc_opt_self();
          v101 = swift_dynamicCastObjCClass();
          if (!v101)
          {
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v102 = *(v1 + v9);
          if (!v102)
          {
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            return;
          }

          v97 = v101;
          v117._object = v8;
          v103 = v102;
          v104 = [v97 title];
          if (v104)
          {
            v105 = v104;
            sub_1448DC();
          }

          else
          {
            v105 = [objc_opt_self() mainBundle];
            v117._countAndFlagsBits = 0xE000000000000000;
            v123._countAndFlagsBits = 0x5F4E574F4E4B4E55;
            v123._object = 0xED0000454C544954;
            v127.value._countAndFlagsBits = 0;
            v127.value._object = 0;
            v109.super.isa = v105;
            v131._countAndFlagsBits = 0;
            v131._object = 0xE000000000000000;
            sub_1409DC(v123, v127, v109, v131, v117);
          }

          v110 = sub_14489C();

          [v103 setText:v110];

          v108 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
          if (!v108)
          {
            goto LABEL_107;
          }
        }

        v111 = v108;
        v112 = sub_14489C();
        [v111 setTitle:v112 forState:0];

        v16 = [v97 artworkCatalog];
        sub_E6578(v16);
      }
    }

    v113 = *(v1 + v2);
    if (v113)
    {
      v114 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView);
      if (v114)
      {
        v68 = v113;
        v115 = v114;
        sub_C820C([v68 playerPath]);

LABEL_33:
        goto LABEL_34;
      }
    }
  }

  else
  {
    v17 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__placeholder);
    if (v17)
    {
      v18 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
      if (!v18)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v19 = objc_opt_self();
      v20 = v18;

      v21 = [v19 systemGrayColor];
      [v20 setTextColor:v21];

      v22 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl);
      if (!v22)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      [v22 setHidden:1];
      v23 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
      if (!v23)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v24 = v17[3];
      if (v17[4])
      {
        v25 = v23;
      }

      else
      {
        v52 = objc_opt_self();
        v53 = v23;
        v54 = [v52 mainBundle];
        v116._countAndFlagsBits = 0xE000000000000000;
        v121._object = 0x80000000001671A0;
        v121._countAndFlagsBits = 0xD000000000000019;
        v125.value._countAndFlagsBits = v24;
        v125.value._object = 0;
        v55.super.isa = v54;
        v129._countAndFlagsBits = 0;
        v129._object = 0xE000000000000000;
        sub_1409DC(v121, v125, v55, v129, v116);
      }

      v56 = sub_14489C();

      [v23 setTitle:v56 forState:0];

      v57 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView;
      v58 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView);
      if (v58)
      {
        v59 = *(v58 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent);
        v60 = v17[2];
        v61 = *(v59 + 80);
        *(v59 + 80) = v60;
        v62 = v60;

        sub_CD5A8(v61);

        v63 = *(v1 + v57);
        if (v63)
        {
          v64 = *&v63[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_playerPath];
          *&v63[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_playerPath] = 0;
          if (v64)
          {
            v65 = v63;
            sub_C5E80();
            sub_C6C8C();
          }
        }
      }

      v66 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel);
      if (!v66)
      {
        goto LABEL_93;
      }

      v67 = v66;
      v68 = sub_14489C();
      [v67 setText:v68];

      goto LABEL_33;
    }

    v26 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel;
    v27 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
    if (!v27)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    sub_14114C();
    v28 = v27;
    v29 = sub_14104C();
    [v28 setTextColor:v29];

    v30 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl);
    if (!v30)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    [v30 setHidden:0];
    v31 = *(v1 + v26);
    if (!v31)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v32 = objc_opt_self();
    v33 = v31;
    v34 = [v32 mainBundle];
    v116._countAndFlagsBits = 0xE000000000000000;
    v120._countAndFlagsBits = 0xD000000000000020;
    v120._object = 0x8000000000167170;
    v124.value._countAndFlagsBits = 0;
    v124.value._object = 0;
    v35.super.isa = v34;
    v128._countAndFlagsBits = 0;
    v128._object = 0xE000000000000000;
    sub_1409DC(v120, v124, v35, v128, v116);

    v36 = sub_14489C();

    [v33 setText:v36];

    v37 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
    if (!v37)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v38 = v37;
    v39 = sub_14489C();
    [v38 setTitle:v39 forState:0];

    v40 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView;
    v41 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView);
    if (v41)
    {
      v42 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent);
      v43 = *(v42 + 80);
      *(v42 + 80) = 0;

      sub_CD5A8(v43);
    }

    v44 = *(v1 + v2);
    if (v44)
    {
      v45 = *(v1 + v40);
      if (v45)
      {
        v46 = v44;
        v47 = v45;
        sub_C820C([v46 playerPath]);
      }
    }

    v48 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel);
    if (!v48)
    {
      goto LABEL_100;
    }

    v49 = v48;
    v50 = sub_14489C();
    [v49 setText:v50];

    *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible) = 0;
    sub_DD99C();
    *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_episodeUpsellBannerProvider) = 0;

    v51 = (v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView);
    *v51 = 0;
    v51[1] = 0;
  }

LABEL_34:
  v69 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
  if (!v69)
  {
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v70 = [v69 text];
  if (v70)
  {
    v71 = v70;
    sub_1448DC();

    v72 = sub_14489C();

    v73 = [v72 _isNaturallyRTL];
  }

  else
  {
    v73 = 0;
  }

  v74 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView;
  v75 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView);
  if (!v75)
  {
    goto LABEL_82;
  }

  [v75 setAnimationDirection:v73];
  v76 = *(v1 + v74);
  if (!v76)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v73)
  {
    v77 = 4;
  }

  else
  {
    v77 = 3;
  }

  [v76 setSemanticContentAttribute:v77];
  v78 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton;
  v79 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
  if (!v79)
  {
    goto LABEL_84;
  }

  v80 = [v79 titleForState:0];
  if (v80)
  {
    v81 = v80;
    v82 = [v80 _isNaturallyRTL];
  }

  else
  {
    v82 = 0;
  }

  v83 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView;
  v84 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView);
  if (!v84)
  {
    goto LABEL_85;
  }

  [v84 setAnimationDirection:v82];
  v85 = *(v1 + v83);
  if (!v85)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v82)
  {
    v86 = 4;
  }

  else
  {
    v86 = 3;
  }

  [v85 setSemanticContentAttribute:v86];
  v87 = *(v1 + v83);
  if (!v87)
  {
    goto LABEL_87;
  }

  v88 = [v87 contentView];
  if (!v88)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v89 = v88;
  [v88 intrinsicContentSize];

  v90 = *(v1 + v78);
  if (!v90)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  [v90 intrinsicContentSize];
  if (sub_144F5C())
  {
    return;
  }

  v91 = *(v1 + v83);
  if (!v91)
  {
    goto LABEL_94;
  }

  v92 = [v91 contentView];
  if (!v92)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v118 = v92;
  [v92 invalidateIntrinsicContentSize];
}

void sub_DD99C()
{
  v29 = sub_143FBC();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_143FDC();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_143FFC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  if (*(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible) == 1)
  {
    v15 = v12;
    v26 = v12;
    sub_2B860(0, &qword_1C2160);
    v24 = sub_144D8C();
    sub_143FEC();
    sub_14401C();
    v16 = *(v8 + 8);
    v25 = v8 + 8;
    v27 = v16;
    v16(v10, v15);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_E7A04;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_11D5C0;
    aBlock[3] = &block_descriptor_33;
    v23 = _Block_copy(aBlock);

    sub_143FCC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_E7C58(&qword_1C81A0, &type metadata accessor for DispatchWorkItemFlags);
    v18 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C13A8);
    v19 = v29;
    sub_1D4A4(&qword_1C81B0, &qword_1C13A8);
    sub_14515C();
    v21 = v23;
    v20 = v24;
    sub_144D2C();
    _Block_release(v21);

    (*(v1 + 8))(v3, v19);
    (*(v4 + 8))(v18, v28);
    v27(v14, v26);
  }

  else
  {

    sub_DDE5C(0);
  }
}

void sub_DDDCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible];
    }

    else
    {
      v3 = 1;
    }

    sub_DDE5C(v3);
  }
}

void sub_DDE5C(char a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerView);
  if ([v4 isUserInteractionEnabled] == (a1 & 1))
  {
    return;
  }

  v5 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverTopConstraint;
  v6 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverTopConstraint);
  v7 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlTopAnchor;
  v8 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlTopAnchor);
  v49[4] = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverTopConstraint);
  v49[5] = v8;
  aBlock[0] = _swiftEmptyArrayStorage;
  v9 = v8;
  v10 = v6;
  for (i = 0; i != 2; ++i)
  {
    v12 = v49[i + 4];
    if (v12)
    {
      v13 = v12;
      sub_1449BC();
      if (*(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_1449FC();
      }

      sub_144A2C();
    }
  }

  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81B8);
  swift_arrayDestroy();
  sub_2B860(0, &qword_1C8190);
  isa = sub_1449CC().super.isa;

  v45 = v14;
  [v14 deactivateConstraints:isa];

  if (v3)
  {
    v44 = v3;
    v16 = [*(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverView) topAnchor];
    v17 = [v4 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:20.0];

    v19 = *(v2 + v5);
    *(v2 + v5) = v18;

    v20 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl);
    if (v20)
    {
      v21 = [v20 topAnchor];
      v22 = [v4 bottomAnchor];
      v23 = [v21 constraintEqualToAnchor:v22 constant:8.0];
      v3 = v44;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_23;
  }

  v24 = [v4 topAnchor];
  v25 = [*(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverView) topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  v27 = *(v2 + v5);
  *(v2 + v5) = v26;

  v28 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl);
  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = [v28 topAnchor];
  v29 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titlesStackView);
  if (!v29)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v22 = [v29 lastBaselineAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:10.0];
LABEL_14:
  v30 = v23;

  v31 = *(v2 + v7);
  *(v2 + v7) = v30;

  v32 = *(v2 + v7);
  v47 = *(v2 + v5);
  v48 = v32;
  aBlock[0] = _swiftEmptyArrayStorage;
  v33 = v32;
  v34 = v47;
  for (j = 0; j != 2; ++j)
  {
    v36 = aBlock[j + 10];
    if (v36)
    {
      v37 = v36;
      sub_1449BC();
      if (*(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_1449FC();
      }

      sub_144A2C();
    }
  }

  swift_arrayDestroy();
  v38 = sub_1449CC().super.isa;

  [v45 activateConstraints:v38];

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v3 & 1;
  v41 = objc_allocWithZone(UIViewPropertyAnimator);
  aBlock[4] = sub_E7A44;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11D5C0;
  aBlock[3] = &block_descriptor_40;
  v42 = _Block_copy(aBlock);

  v43 = [v41 initWithDuration:0 curve:v42 animations:0.3];
  _Block_release(v42);

  [v43 startAnimation];
}

void sub_DE3E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_14100C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v739 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_14506C();
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v770 = &v739 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v775.receiver = v1;
  v775.super_class = ObjectType;
  objc_msgSendSuper2(&v775, "viewDidLoad", v8);
  v10 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerView);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_260;
  }

  v12 = v11;
  v761 = v6;
  v753 = v10;
  [v11 addSubview:v10];

  v13 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverView);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  v15 = v14;
  [v14 addSubview:v13];

  sub_2B860(0, &qword_1C8160);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_14501C();
  v17 = [objc_allocWithZone(_UIGrabber) init];
  v18 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_chevronView;
  v19 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_chevronView);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_chevronView) = v17;
  v20 = v17;

  if (!v20)
  {
LABEL_261:
    __break(1u);
    goto LABEL_262;
  }

  [v20 addAction:v16 forControlEvents:64];

  v21 = *(v1 + v18);
  if (!v21)
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  v749 = v16;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = *(v1 + v18);
  if (!v22)
  {
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  v23 = v22;
  v24 = sub_14489C();
  [v23 _setLayoutDebuggingIdentifier:v24];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v760 = v4;
  if (!*(v1 + v18))
  {
LABEL_265:
    __break(1u);
    goto LABEL_266;
  }

  v26 = v25;
  [v25 addSubview:?];

  v27 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkLayoutGuide;
  v28 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkLayoutGuide);
  v29 = sub_14489C();
  [v28 setIdentifier:v29];

  v30 = [v1 view];
  if (!v30)
  {
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  v31 = v30;
  v754 = v3;
  v758 = v18;
  [v30 addLayoutGuide:*(v1 + v27)];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_267:
    __break(1u);
    goto LABEL_268;
  }

  v33 = v32;
  v34 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLayoutGuide;
  [v32 addLayoutGuide:*(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLayoutGuide)];

  v35 = [objc_allocWithZone(UILabel) init];
  v36 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel;
  v37 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel) = v35;
  v38 = v35;

  if (!v38)
  {
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = *(v1 + v36);
  if (!v40)
  {
LABEL_269:
    __break(1u);
    goto LABEL_270;
  }

  v752 = v13;
  v767 = v34;
  LODWORD(v39) = 1148846080;
  [v40 setContentCompressionResistancePriority:0 forAxis:v39];
  v41 = *(v1 + v36);
  if (!v41)
  {
LABEL_270:
    __break(1u);
    goto LABEL_271;
  }

  v42 = objc_opt_self();
  v43 = v41;
  v773 = v42;
  v44 = [v42 secondaryLabelColor];
  [v43 setTextColor:v44];

  v45 = *(v1 + v36);
  if (!v45)
  {
LABEL_271:
    __break(1u);
    goto LABEL_272;
  }

  sub_2B860(0, &qword_1C5360);
  v46 = v45;
  v47 = sub_144F6C();
  [v46 setFont:v47];

  v48 = *(v1 + v36);
  if (!v48)
  {
LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  [v48 setNumberOfLines:1];
  v49 = [v1 view];
  if (!v49)
  {
LABEL_273:
    __break(1u);
    goto LABEL_274;
  }

  v757 = v36;
  if (!*(v1 + v36))
  {
LABEL_274:
    __break(1u);
    goto LABEL_275;
  }

  v50 = v49;
  [v49 addSubview:?];

  v51 = [objc_allocWithZone(UILabel) init];
  v52 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel;
  v53 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel) = v51;
  v54 = v51;

  if (!v54)
  {
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];

  v56 = *(v1 + v52);
  if (!v56)
  {
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  LODWORD(v55) = 1148846080;
  [v56 setContentCompressionResistancePriority:0 forAxis:v55];
  v57 = *(v1 + v52);
  if (!v57)
  {
LABEL_277:
    __break(1u);
    goto LABEL_278;
  }

  v58 = sub_14114C();
  v59 = v57;
  v772 = v58;
  v60 = sub_14104C();
  [v59 setTextColor:v60];

  v61 = *(v1 + v52);
  if (!v61)
  {
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  [v61 setTextAlignment:4];
  v62 = *(v1 + v52);
  if (!v62)
  {
LABEL_279:
    __break(1u);
    goto LABEL_280;
  }

  [v62 setNumberOfLines:1];
  v63 = [v1 view];
  if (!v63)
  {
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  v64 = v63;
  [v63 bounds];
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v781.origin.x = v66;
  v781.origin.y = v68;
  v781.size.width = v70;
  v781.size.height = v72;
  CGRectGetWidth(v781);
  sub_14115C();
  v73 = [v1 view];
  if (!v73)
  {
LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  v74 = v73;
  [v73 bounds];
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;

  v782.origin.x = v76;
  v782.origin.y = v78;
  v782.size.width = v80;
  v782.size.height = v82;
  CGRectGetWidth(v782);
  sub_14116C();
  v84 = v83;
  v85 = [objc_allocWithZone(MTMPUMarqueeView) init];
  v86 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView;
  v87 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView) = v85;
  v88 = v85;

  if (!v88)
  {
LABEL_282:
    __break(1u);
    goto LABEL_283;
  }

  v748 = v27;
  [v88 setContentGap:32.0];

  v89 = *(v1 + v86);
  if (!v89)
  {
LABEL_283:
    __break(1u);
    goto LABEL_284;
  }

  v771 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titlesStackView;
  [v89 setAnimationReferenceView:*(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titlesStackView)];
  v90 = *(v1 + v86);
  if (!v90)
  {
LABEL_284:
    __break(1u);
    goto LABEL_285;
  }

  [v90 setFadeEdgeInsets:{0.0, v84, 0.0, v84}];
  v91 = *(v1 + v86);
  if (!v91)
  {
LABEL_285:
    __break(1u);
    goto LABEL_286;
  }

  v92 = [v91 contentView];
  if (!v92)
  {
LABEL_286:
    __break(1u);
    goto LABEL_287;
  }

  if (!*(v1 + v52))
  {
LABEL_287:
    __break(1u);
    goto LABEL_288;
  }

  v93 = v92;
  [v92 addSubview:?];

  v759 = v86;
  v94 = *(v1 + v86);
  if (!v94)
  {
LABEL_288:
    __break(1u);
    goto LABEL_289;
  }

  v763 = v52;
  [v94 setViewForContentSize:*(v1 + v52)];
  v95 = [objc_opt_self() buttonWithType:1];
  v96 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton;
  v97 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton) = v95;
  v98 = v95;

  if (!v98)
  {
LABEL_289:
    __break(1u);
    goto LABEL_290;
  }

  v99 = sub_1410FC();
  [v98 setTintColor:v99];

  v100 = *(v1 + v96);
  if (!v100)
  {
LABEL_290:
    __break(1u);
    goto LABEL_291;
  }

  [v100 setExclusiveTouch:1];
  v101 = *(v1 + v96);
  if (!v101)
  {
LABEL_291:
    __break(1u);
    goto LABEL_292;
  }

  [v101 setTranslatesAutoresizingMaskIntoConstraints:0];
  v103 = *(v1 + v96);
  if (!v103)
  {
LABEL_292:
    __break(1u);
    goto LABEL_293;
  }

  LODWORD(v102) = 1148846080;
  [v103 setContentCompressionResistancePriority:0 forAxis:v102];
  v104 = *(v1 + v96);
  if (!v104)
  {
LABEL_293:
    __break(1u);
    goto LABEL_294;
  }

  v105 = v104;
  v106 = [v773 systemGrayColor];
  [v105 setTitleColor:v106 forState:2];

  v107 = *(v1 + v96);
  if (!v107)
  {
LABEL_294:
    __break(1u);
    goto LABEL_295;
  }

  v108 = v96;
  v109 = [v107 titleLabel];
  [v109 setNumberOfLines:1];

  v110 = *(v1 + v96);
  v111 = v759;
  if (!v110)
  {
LABEL_295:
    __break(1u);
    goto LABEL_296;
  }

  [v110 setContentHorizontalAlignment:4];
  v765 = v108;
  v112 = *(v1 + v108);
  if (!v112)
  {
LABEL_296:
    __break(1u);
    goto LABEL_297;
  }

  v113 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v114 = v112;
  sub_11EB24(64, sub_E7840, v113);

  v115 = [objc_allocWithZone(MTMPUMarqueeView) init];
  v116 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView;
  v117 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView) = v115;
  v118 = v115;

  if (!v118)
  {
LABEL_297:
    __break(1u);
    goto LABEL_298;
  }

  [v118 setContentGap:32.0];

  v119 = *(v1 + v116);
  v120 = v771;
  if (!v119)
  {
LABEL_298:
    __break(1u);
    goto LABEL_299;
  }

  [v119 setAnimationReferenceView:*(v1 + v771)];
  v121 = *(v1 + v116);
  v122 = v765;
  if (!v121)
  {
LABEL_299:
    __break(1u);
    goto LABEL_300;
  }

  [v121 setFadeEdgeInsets:{0.0, v84, 0.0, v84}];
  v123 = *(v1 + v116);
  if (!v123)
  {
LABEL_300:
    __break(1u);
    goto LABEL_301;
  }

  v124 = [v123 contentView];
  if (!v124)
  {
LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  if (!*(v1 + v122))
  {
LABEL_302:
    __break(1u);
    goto LABEL_303;
  }

  v125 = v124;
  [v124 addSubview:?];

  v126 = *(v1 + v116);
  if (!v126)
  {
LABEL_303:
    __break(1u);
    goto LABEL_304;
  }

  [v126 setViewForContentSize:*(v1 + v122)];
  v127 = *(v1 + v111);
  if (!v127)
  {
LABEL_304:
    __break(1u);
    goto LABEL_305;
  }

  [v127 addCoordinatedMarqueeView:*(v1 + v116)];
  v766 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_14D1E0;
  v129 = *(v1 + v111);
  if (!v129)
  {
LABEL_305:
    __break(1u);
    goto LABEL_306;
  }

  v130 = v128;
  *(v128 + 32) = v129;
  v751 = v116;
  v131 = *(v1 + v116);
  if (!v131)
  {
LABEL_306:
    __break(1u);
    goto LABEL_307;
  }

  *(v128 + 40) = v131;
  v132 = objc_allocWithZone(UIStackView);
  sub_2B860(0, &qword_1C47C0);

  v133 = v131;
  v134 = v129;
  isa = sub_1449CC().super.isa;

  v136 = [v132 initWithArrangedSubviews:isa];

  v137 = *(v1 + v120);
  *(v1 + v120) = v136;
  v138 = v136;

  if (!v138)
  {
LABEL_307:
    __break(1u);
    goto LABEL_308;
  }

  [v138 setTranslatesAutoresizingMaskIntoConstraints:0];

  v139 = *(v1 + v120);
  if (!v139)
  {
LABEL_308:
    __break(1u);
    goto LABEL_309;
  }

  [v139 setAxis:1];
  v140 = *(v1 + v120);
  if (!v140)
  {
LABEL_309:
    __break(1u);
    goto LABEL_310;
  }

  [v140 setAlignment:1];
  v141 = *(v1 + v120);
  if (!v141)
  {
LABEL_310:
    __break(1u);
    goto LABEL_311;
  }

  [v141 setBaselineRelativeArrangement:1];
  v142 = [v1 view];
  if (!v142)
  {
LABEL_311:
    __break(1u);
    goto LABEL_312;
  }

  if (!*(v1 + v120))
  {
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v143 = v142;
  [v142 addSubview:?];

  type metadata accessor for NowPlayingTransportButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v145 = [ObjCClassFromMetadata buttonWithType:0];
  v146 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButton;
  v147 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButton);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButton) = v145;
  v148 = v145;

  [v148 setExclusiveTouch:1];
  v769 = v146;
  v149 = *(v1 + v146);
  if (!v149)
  {
LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
LABEL_315:
    __break(1u);
    goto LABEL_316;
  }

  sub_2B860(0, &qword_1C2F20);
  v150 = v149;
  v777._countAndFlagsBits = 0xD00000000000001DLL;
  v777._object = 0x8000000000167080;
  v151 = sub_144FDC(v777).super.isa;
  v152 = [(objc_class *)v151 imageWithRenderingMode:2];

  v153 = _swiftEmptyArrayStorage[2];
  v747 = v130;
  v154 = 0;
  if (v153)
  {
    v155 = &_swiftEmptyArrayStorage[4];
    do
    {
      v157 = *v155++;
      v156 = v157;
      if ((v157 & ~v154) == 0)
      {
        v156 = 0;
      }

      v154 |= v156;
      --v153;
    }

    while (v153);
  }

  [v150 setImage:v152 forState:v154];

  v158 = v769;
  v159 = *(v1 + v769);
  if (!v159)
  {
    goto LABEL_314;
  }

  v160 = [v159 imageView];
  if (v160)
  {
    v161 = v160;
    v162 = sub_1410DC();
    [v161 setTintColor:v162];

    v158 = v769;
  }

  v163 = *(v1 + v158);
  if (!v163)
  {
    goto LABEL_315;
  }

  [v163 setHitRectInsets:{-25.0, -30.0, -25.0, 0.0}];
  v164 = *(v1 + v158);
  if (!v164)
  {
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  v165 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v166 = v164;
  sub_11EE08(64, sub_E7848, v165);

  v167 = *(v1 + v158);
  if (!v167)
  {
LABEL_317:
    __break(1u);
    goto LABEL_318;
  }

  v168 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v169 = v167;
  sub_11EE08(0x1000000, sub_E7874, v168);

  v170 = *(v1 + v158);
  if (!v170)
  {
LABEL_318:
    __break(1u);
    goto LABEL_319;
  }

  v171 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v172 = v170;
  sub_11EE08(0x2000000, sub_E789C, v171);

  v173 = [ObjCClassFromMetadata buttonWithType:0];
  v174 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButton;
  v175 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButton);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButton) = v173;
  v176 = v173;

  [v176 setExclusiveTouch:1];
  v764 = v174;
  v177 = *(v1 + v174);
  if (!v177)
  {
LABEL_319:
    __break(1u);
LABEL_320:
    __break(1u);
LABEL_321:
    __break(1u);
    goto LABEL_322;
  }

  v178 = v177;
  v778._countAndFlagsBits = 0xD000000000000019;
  v778._object = 0x80000000001670A0;
  v179 = sub_144FDC(v778).super.isa;
  v180 = [(objc_class *)v179 imageWithRenderingMode:2];

  v181 = _swiftEmptyArrayStorage[2];
  if (v181)
  {
    v182 = 0;
    v183 = &_swiftEmptyArrayStorage[4];
    do
    {
      v185 = *v183++;
      v184 = v185;
      if ((v185 & ~v182) == 0)
      {
        v184 = 0;
      }

      v182 |= v184;
      --v181;
    }

    while (v181);
  }

  else
  {
    v182 = 0;
  }

  [v178 setImage:v180 forState:v182];

  v186 = v764;
  v187 = *(v1 + v764);
  if (!v187)
  {
    goto LABEL_320;
  }

  v188 = [v187 imageView];
  if (v188)
  {
    v189 = v188;
    v190 = sub_1410DC();
    [v189 setTintColor:v190];
  }

  v191 = *(v1 + v186);
  if (!v191)
  {
    goto LABEL_321;
  }

  [v191 setHitRectInsets:{-25.0, 0.0, -25.0, -30.0}];
  v192 = *(v1 + v186);
  if (!v192)
  {
LABEL_322:
    __break(1u);
    goto LABEL_323;
  }

  v193 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v194 = v192;
  sub_11EE08(64, sub_E78C4, v193);

  v195 = *(v1 + v186);
  if (!v195)
  {
LABEL_323:
    __break(1u);
    goto LABEL_324;
  }

  v196 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v197 = v195;
  sub_11EE08(0x1000000, sub_E78F0, v196);

  v198 = *(v1 + v186);
  if (!v198)
  {
LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
    goto LABEL_326;
  }

  v199 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v200 = v198;
  sub_11EE08(0x2000000, sub_E7918, v199);

  v201 = [ObjCClassFromMetadata buttonWithType:0];
  v202 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButton;
  v203 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButton);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButton) = v201;
  v204 = v201;

  v205 = [v204 imageView];
  if (v205)
  {
    v206 = sub_1410DC();
    [v205 setTintColor:v206];
  }

  v207 = *(v1 + v202);
  if (!v207)
  {
    goto LABEL_325;
  }

  [v207 setExclusiveTouch:1];
  v208 = *(v1 + v202);
  if (!v208)
  {
LABEL_326:
    __break(1u);
    goto LABEL_327;
  }

  v209 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v210 = v208;
  sub_11EE08(64, sub_E7940, v209);

  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_1535E0;
  v212 = *(v1 + v769);
  if (!v212)
  {
LABEL_327:
    __break(1u);
    goto LABEL_328;
  }

  v213 = v211;
  *(v211 + 32) = v212;
  v756 = v202;
  v214 = *(v1 + v202);
  if (!v214)
  {
LABEL_328:
    __break(1u);
    goto LABEL_329;
  }

  *(v211 + 40) = v214;
  v215 = *(v1 + v186);
  if (!v215)
  {
LABEL_329:
    __break(1u);
    goto LABEL_330;
  }

  type metadata accessor for NowPlayingTransportControlStackView();
  *(v213 + 48) = v215;
  v216 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v217 = v215;
  v218 = v214;
  v219 = v212;
  v220 = sub_1449CC().super.isa;

  v221 = [v216 initWithArrangedSubviews:v220];

  v222 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsStackView;
  v223 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsStackView);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsStackView) = v221;
  v224 = v221;

  v225 = [v773 blackColor];
  [v224 setTintColor:v225];

  v226 = *(v1 + v222);
  if (!v226)
  {
LABEL_330:
    __break(1u);
    goto LABEL_331;
  }

  [v226 setTranslatesAutoresizingMaskIntoConstraints:0];
  v227 = *(v1 + v222);
  if (!v227)
  {
LABEL_331:
    __break(1u);
    goto LABEL_332;
  }

  [v227 setSemanticContentAttribute:1];
  v228 = *(v1 + v222);
  if (!v228)
  {
LABEL_332:
    __break(1u);
    goto LABEL_333;
  }

  [v228 setAxis:0];
  v229 = *(v1 + v222);
  if (!v229)
  {
LABEL_333:
    __break(1u);
    goto LABEL_334;
  }

  [v229 setDistribution:3];
  v230 = *(v1 + v222);
  if (!v230)
  {
LABEL_334:
    __break(1u);
    goto LABEL_335;
  }

  [v230 setAlignment:3];
  v231 = *(v1 + v222);
  if (!v231)
  {
LABEL_335:
    __break(1u);
    goto LABEL_336;
  }

  [v231 setSpacing:62.0];
  v232 = [v1 view];
  if (!v232)
  {
LABEL_336:
    __break(1u);
    goto LABEL_337;
  }

  if (!*(v1 + v222))
  {
LABEL_337:
    __break(1u);
    goto LABEL_338;
  }

  v233 = v232;
  [v232 addSubview:?];

  v234 = (v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics);
  v235 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics + 24);
  v236 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics), v235);
  (*(v236 + 120))(aBlock, v235, v236);
  v237 = objc_allocWithZone(type metadata accessor for PlayerTimeControl());
  v238 = sub_49384(aBlock);
  v239 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl;
  v240 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl) = v238;
  v241 = v238;

  [v241 setExclusiveTouch:1];
  v242 = *&v239[v1];
  if (!v242)
  {
LABEL_338:
    __break(1u);
    goto LABEL_339;
  }

  [v242 setTranslatesAutoresizingMaskIntoConstraints:0];
  v243 = *&v239[v1];
  if (!v243)
  {
LABEL_339:
    __break(1u);
    goto LABEL_340;
  }

  v762 = v222;
  v244 = swift_allocObject();
  swift_unknownObjectUnownedInit();

  v245 = v243;
  sub_11EE28(4096, sub_E79A0, v244);

  v773 = v239;
  v246 = *&v239[v1];
  if (!v246)
  {
LABEL_340:
    __break(1u);
    goto LABEL_341;
  }

  v247 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v248 = &v246[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubbingDidChangeHandler];
  v249 = *&v246[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubbingDidChangeHandler];
  *v248 = sub_E79A8;
  v248[1] = v247;

  v250 = v246;
  sub_2173C(v249);

  v251 = [v1 view];
  if (!v251)
  {
LABEL_341:
    __break(1u);
    goto LABEL_342;
  }

  if (!*&v773[v1])
  {
LABEL_342:
    __break(1u);
    goto LABEL_343;
  }

  v252 = v251;
  [v251 addSubview:?];

  v253 = [objc_allocWithZone(UILayoutGuide) init];
  v254 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryTransportControlsGuide);
  v768 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryTransportControlsGuide;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryTransportControlsGuide) = v253;
  v255 = v253;

  if (!v255)
  {
LABEL_343:
    __break(1u);
    goto LABEL_344;
  }

  v256 = sub_14489C();
  [v255 setIdentifier:v256];

  v257 = [v1 view];
  if (!v257)
  {
LABEL_344:
    __break(1u);
    goto LABEL_345;
  }

  v750 = v234;
  if (!*(v1 + v768))
  {
LABEL_345:
    __break(1u);
    goto LABEL_346;
  }

  v258 = v257;
  [v257 addLayoutGuide:?];

  type metadata accessor for ImagelessMPButton();
  v259 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v260 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playbackSpeedButton;
  v261 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playbackSpeedButton);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playbackSpeedButton) = v259;
  v262 = v259;

  v263 = sub_1410CC();
  [v262 setTintColor:v263];

  v264 = *(v1 + v260);
  if (!v264)
  {
LABEL_346:
    __break(1u);
    goto LABEL_347;
  }

  [v264 setExclusiveTouch:1];
  v265 = *(v1 + v260);
  if (!v265)
  {
LABEL_347:
    __break(1u);
    goto LABEL_348;
  }

  [v265 setTranslatesAutoresizingMaskIntoConstraints:0];
  v267 = *(v1 + v260);
  if (!v267)
  {
LABEL_348:
    __break(1u);
    goto LABEL_349;
  }

  LODWORD(v266) = 1148846080;
  [v267 setContentHuggingPriority:0 forAxis:v266];
  v269 = *(v1 + v260);
  if (!v269)
  {
LABEL_349:
    __break(1u);
    goto LABEL_350;
  }

  LODWORD(v268) = 1148846080;
  [v269 setContentCompressionResistancePriority:0 forAxis:v268];
  v270 = *(v1 + v260);
  if (!v270)
  {
LABEL_350:
    __break(1u);
LABEL_351:
    __break(1u);
    goto LABEL_352;
  }

  v271 = [v270 titleLabel];
  if (v271)
  {
    v272 = v271;
    v273 = [objc_opt_self() systemFontOfSize:20.0 weight:UIFontWeightRegular];
    [v272 setFont:v273];
  }

  v274 = *(v1 + v260);
  if (!v274)
  {
    goto LABEL_351;
  }

  [v274 _setDisableAutomaticTitleAnimations:1];
  v275 = *(v1 + v260);
  if (!v275)
  {
LABEL_352:
    __break(1u);
    goto LABEL_353;
  }

  [v275 setHitRectInsets:{-10.0, -28.0, -20.0, -28.0}];
  v276 = *(v1 + v260);
  if (!v276)
  {
LABEL_353:
    __break(1u);
    goto LABEL_354;
  }

  [v276 _setLineBreakMode:2];
  v277 = *(v1 + v260);
  if (!v277)
  {
LABEL_354:
    __break(1u);
    goto LABEL_355;
  }

  [v277 setShowsMenuAsPrimaryAction:1];
  v278 = [v1 view];
  if (!v278)
  {
LABEL_355:
    __break(1u);
    goto LABEL_356;
  }

  if (!*(v1 + v260))
  {
LABEL_356:
    __break(1u);
    goto LABEL_357;
  }

  v279 = v278;
  [v278 addSubview:?];

  v280 = [objc_allocWithZone(type metadata accessor for RouteButton_iOS()) init];
  v281 = (v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton);
  v282 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton);
  *v281 = v280;
  *(v281 + 1) = &off_1A2758;
  v283 = v280;

  v284 = v1;
  sub_A4250(v1, &off_1A42C0);

  if (!*v281)
  {
LABEL_357:
    __break(1u);
    goto LABEL_358;
  }

  v285 = *v281;
  v286 = sub_1410CC();
  [v285 setTintColor:v286];

  v755 = v281;
  if (!*v281)
  {
LABEL_358:
    __break(1u);
    goto LABEL_359;
  }

  [*v281 setTranslatesAutoresizingMaskIntoConstraints:0];
  v287 = [v284 view];
  if (!v287)
  {
LABEL_359:
    __break(1u);
    goto LABEL_360;
  }

  if (!*v755)
  {
LABEL_360:
    __break(1u);
    goto LABEL_361;
  }

  v288 = v287;
  [v287 addSubview:?];

  sub_2B860(0, &qword_1C8168);
  sub_E3860();
  v289 = sub_14507C();
  v290 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepButton;
  v291 = *(v284 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepButton);
  *(v284 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepButton) = v289;
  v292 = v289;

  [v292 setExclusiveTouch:1];
  v293 = *(v284 + v290);
  if (!v293)
  {
LABEL_361:
    __break(1u);
    goto LABEL_362;
  }

  [v293 setTranslatesAutoresizingMaskIntoConstraints:0];
  v295 = *(v284 + v290);
  if (!v295)
  {
LABEL_362:
    __break(1u);
    goto LABEL_363;
  }

  LODWORD(v294) = 1148846080;
  [v295 setContentCompressionResistancePriority:0 forAxis:v294];
  v297 = *(v284 + v290);
  if (!v297)
  {
LABEL_363:
    __break(1u);
    goto LABEL_364;
  }

  LODWORD(v296) = 1148846080;
  [v297 setContentHuggingPriority:0 forAxis:v296];
  v298 = *(v284 + v290);
  if (!v298)
  {
LABEL_364:
    __break(1u);
    goto LABEL_365;
  }

  [v298 setShowsMenuAsPrimaryAction:1];
  v299 = [v284 view];
  if (!v299)
  {
LABEL_365:
    __break(1u);
    goto LABEL_366;
  }

  if (!*(v284 + v290))
  {
LABEL_366:
    __break(1u);
    goto LABEL_367;
  }

  v300 = v299;
  [v299 addSubview:?];

  v301 = [objc_opt_self() buttonWithType:1];
  v302 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton;
  v303 = *(v284 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton);
  *(v284 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton) = v301;
  v304 = v301;

  if (!v304)
  {
LABEL_367:
    __break(1u);
    goto LABEL_368;
  }

  [v304 setExclusiveTouch:1];

  v305 = *(v284 + v302);
  if (!v305)
  {
LABEL_368:
    __break(1u);
    goto LABEL_369;
  }

  [v305 setTranslatesAutoresizingMaskIntoConstraints:0];
  v770 = v302;
  v306 = *(v284 + v302);
  if (!v306)
  {
LABEL_369:
    __break(1u);
LABEL_370:
    __break(1u);
    goto LABEL_371;
  }

  v307 = v306;
  v308 = v761;
  sub_140F6C();
  v309 = sub_140FBC();
  (*(v760 + 8))(v308, v754);
  v310 = _swiftEmptyArrayStorage[2];
  if (v310)
  {
    v311 = 0;
    v312 = &_swiftEmptyArrayStorage[4];
    v313 = v770;
    do
    {
      v315 = *v312++;
      v314 = v315;
      if ((v315 & ~v311) == 0)
      {
        v314 = 0;
      }

      v311 |= v314;
      --v310;
    }

    while (v310);
  }

  else
  {
    v311 = 0;
    v313 = v770;
  }

  [v307 setImage:v309 forStates:v311];

  v316 = *&v313[v284];
  if (!v316)
  {
    goto LABEL_370;
  }

  v317 = v316;
  v318 = sub_1410CC();
  [v317 setTintColor:v318];

  v319 = *&v313[v284];
  if (!v319)
  {
LABEL_371:
    __break(1u);
    goto LABEL_372;
  }

  sub_2B860(0, &unk_1C8170);
  v320 = v319;
  v321 = sub_E3A74(sub_E39FC, 0);
  [v320 setBackgroundColor:v321];

  v322 = *&v313[v284];
  if (!v322)
  {
LABEL_372:
    __break(1u);
    goto LABEL_373;
  }

  v323 = [v322 layer];
  [v323 setCornerRadius:14.0];

  v325 = *&v313[v284];
  if (!v325)
  {
LABEL_373:
    __break(1u);
    goto LABEL_374;
  }

  LODWORD(v324) = 1148846080;
  [v325 setContentCompressionResistancePriority:0 forAxis:v324];
  v326 = *&v313[v284];
  if (!v326)
  {
LABEL_374:
    __break(1u);
    goto LABEL_375;
  }

  [v326 setHitRectInsets:{-20.0, -20.0, -20.0, -20.0}];
  v327 = *&v313[v284];
  if (!v327)
  {
LABEL_375:
    __break(1u);
    goto LABEL_376;
  }

  v760 = v290;
  [v327 setShowsMenuAsPrimaryAction:1];
  v328 = *&v313[v284];
  if (!v328)
  {
LABEL_376:
    __break(1u);
    goto LABEL_377;
  }

  v329 = objc_opt_self();
  v330 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_E79B4;
  aBlock[5] = v330;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9B9D0;
  aBlock[3] = &block_descriptor_22;
  v331 = _Block_copy(aBlock);
  v332 = v328;

  v333 = [v329 elementWithUncachedProvider:v331];
  _Block_release(v331);
  sub_2B860(0, &qword_1C4878);
  v334 = swift_allocObject();
  *(v334 + 16) = xmmword_14F0E0;
  *(v334 + 32) = v333;
  v737 = v334;
  v779._countAndFlagsBits = 0;
  v779._object = 0xE000000000000000;
  v780.value._countAndFlagsBits = 0;
  v780.value._object = 0;
  v776.value.super.isa = 0;
  v776.is_nil = 0;
  v335.value = 0;
  v336 = sub_144F7C(v779, v780, v776, v335, 0xFFFFFFFFFFFFFFFFLL, v737, v738).super.super.isa;
  [v332 setMenu:v336];

  v337 = [v284 view];
  if (!v337)
  {
LABEL_377:
    __break(1u);
    goto LABEL_378;
  }

  if (!*&v770[v284])
  {
LABEL_378:
    __break(1u);
LABEL_379:
    __break(1u);
    goto LABEL_380;
  }

  v338 = v337;
  [v337 addSubview:?];

  v339 = [objc_allocWithZone(type metadata accessor for NowPlayingQueueControlsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v340 = *(v284 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_queueControlsView);
  *(v284 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_queueControlsView) = v339;

  v341 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsController;
  v342 = *(v284 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsController);
  v343 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v344 = *(v342 + 136);
  *(v342 + 136) = sub_E79BC;
  *(v342 + 144) = v343;

  sub_2173C(v344);

  v345 = *(*(v284 + v341) + 136);
  if (v345)
  {

    v345(v346);
    sub_2173C(v345);
  }

  v347 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v348 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoTapGestureRecognizer;
  v349 = *(v284 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoTapGestureRecognizer);
  *(v284 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoTapGestureRecognizer) = v347;
  v350 = v347;

  if (!v350)
  {
    goto LABEL_379;
  }

  [v350 setDelegate:v284];

  v351 = [v284 view];
  if (!v351)
  {
LABEL_380:
    __break(1u);
    goto LABEL_381;
  }

  v761 = v260;
  if (!*(v284 + v348))
  {
LABEL_381:
    __break(1u);
    goto LABEL_382;
  }

  v352 = v351;
  [v351 addGestureRecognizer:?];

  v353 = *(v284 + v348);
  if (!v353)
  {
LABEL_382:
    __break(1u);
    goto LABEL_383;
  }

  *(swift_allocObject() + 16) = v284;
  sub_2B860(0, &qword_1C8180);
  v354 = v284;
  v355 = v353;
  sub_14226C();

  v356 = [objc_allocWithZone(UIPinchGestureRecognizer) init];
  v357 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoPinchGestureRecognizer;
  v358 = *&v354[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoPinchGestureRecognizer];
  *&v354[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoPinchGestureRecognizer] = v356;
  v359 = v356;

  if (!v359)
  {
LABEL_383:
    __break(1u);
    goto LABEL_384;
  }

  [v359 setDelegate:v354];

  v360 = [v354 view];
  v361 = v771;
  if (!v360)
  {
LABEL_384:
    __break(1u);
    goto LABEL_385;
  }

  if (!*&v354[v357])
  {
LABEL_385:
    __break(1u);
    goto LABEL_386;
  }

  v362 = v360;
  [v360 addGestureRecognizer:?];

  v363 = *&v354[v357];
  if (!v363)
  {
LABEL_386:
    __break(1u);
    goto LABEL_387;
  }

  *(swift_allocObject() + 16) = v354;
  sub_2B860(0, &qword_1C8188);
  v364 = v354;
  v365 = v363;
  sub_14226C();

  v366 = *(v1 + v768);
  if (!v366)
  {
LABEL_387:
    __break(1u);
    goto LABEL_388;
  }

  v367 = [v366 bottomAnchor];
  v368 = [v364 view];
  if (!v368)
  {
LABEL_388:
    __break(1u);
    goto LABEL_389;
  }

  v369 = v368;
  v370 = [v368 safeAreaLayoutGuide];

  v371 = [v370 bottomAnchor];
  v372 = [v367 constraintEqualToAnchor:v371];

  v373 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryControlsBottomMargin;
  v374 = *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryControlsBottomMargin];
  *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryControlsBottomMargin] = v372;

  v375 = *&v773[v1];
  if (!v375)
  {
LABEL_389:
    __break(1u);
    goto LABEL_390;
  }

  v376 = [*(v375 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackLayoutGuide) topAnchor];
  v377 = *(v1 + v361);
  if (!v377)
  {
LABEL_390:
    __break(1u);
    goto LABEL_391;
  }

  v378 = [v377 lastBaselineAnchor];
  v379 = [v376 constraintGreaterThanOrEqualToAnchor:v378];

  v380 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlLayoutGuideTopAnchor;
  v381 = *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlLayoutGuideTopAnchor];
  *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlLayoutGuideTopAnchor] = v379;

  v382 = *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSlider];
  if (!v382)
  {
LABEL_391:
    __break(1u);
    goto LABEL_392;
  }

  v754 = &v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSlider];
  v383 = *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSlider + 8];
  v384 = swift_getObjectType();
  v385 = *(v383 + 32);
  v386 = v382;
  v387 = v385(v384, v383);

  v388 = [v387 bottomAnchor];
  v389 = *(v1 + v768);
  if (!v389)
  {
LABEL_392:
    __break(1u);
    goto LABEL_393;
  }

  v746 = v380;
  v740 = v373;
  v390 = [v389 topAnchor];
  v391 = [v388 constraintEqualToAnchor:v390];

  v392 = *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSliderBottomConstraint];
  v742 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSliderBottomConstraint;
  *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSliderBottomConstraint] = v391;

  v393 = *(v1 + v769);
  v394 = v767;
  v395 = v756;
  if (!v393)
  {
LABEL_393:
    __break(1u);
    goto LABEL_394;
  }

  v396 = [v393 widthAnchor];
  v397 = [v396 constraintEqualToConstant:40.0];

  v398 = *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonWidthConstraint];
  v745 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonWidthConstraint;
  *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonWidthConstraint] = v397;

  v399 = *(v1 + v395);
  if (!v399)
  {
LABEL_394:
    __break(1u);
    goto LABEL_395;
  }

  v400 = [v399 widthAnchor];
  v401 = [v400 constraintEqualToConstant:40.0];

  v402 = *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonWidthConstraint];
  v744 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonWidthConstraint;
  *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonWidthConstraint] = v401;

  v403 = *(v1 + v764);
  if (!v403)
  {
LABEL_395:
    __break(1u);
    goto LABEL_396;
  }

  v404 = [v403 widthAnchor];
  v405 = [v404 constraintEqualToConstant:40.0];

  v406 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonWidthConstraint;
  v407 = *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonWidthConstraint];
  *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonWidthConstraint] = v405;

  v408 = *(v1 + v762);
  if (!v408)
  {
LABEL_396:
    __break(1u);
    goto LABEL_397;
  }

  v409 = [v408 heightAnchor];
  v410 = [v409 constraintEqualToConstant:171.0];

  v411 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsHeightConstraint;
  v412 = *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsHeightConstraint];
  *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsHeightConstraint] = v410;

  v414 = *(v1 + v771);
  if (!v414)
  {
LABEL_397:
    __break(1u);
    goto LABEL_398;
  }

  v743 = v406;
  v741 = v411;
  LODWORD(v413) = 1148846080;
  [v414 setContentCompressionResistancePriority:1 forAxis:v413];
  v415 = [*(v1 + v394) leadingAnchor];
  v416 = [v364 view];
  if (!v416)
  {
LABEL_398:
    __break(1u);
    goto LABEL_399;
  }

  v417 = v416;
  v418 = [v416 leadingAnchor];

  v419 = [v415 constraintEqualToAnchor:v418];
  v420 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLeadingConstraint;
  v421 = *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLeadingConstraint];
  *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLeadingConstraint] = v419;

  v422 = [*(v1 + v394) trailingAnchor];
  v423 = [v364 view];
  if (!v423)
  {
LABEL_399:
    __break(1u);
    goto LABEL_400;
  }

  v424 = v423;
  v425 = [v423 trailingAnchor];

  v426 = [v422 constraintEqualToAnchor:v425];
  v427 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTrailingConstraint;
  v428 = *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTrailingConstraint];
  *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTrailingConstraint] = v426;

  v429 = [*(v1 + v394) topAnchor];
  v430 = [v364 view];
  if (!v430)
  {
LABEL_400:
    __break(1u);
    goto LABEL_401;
  }

  v431 = v430;
  v772 = v284;
  v432 = [v430 safeAreaLayoutGuide];

  v433 = [v432 topAnchor];
  v434 = v750[3];
  v435 = v750[4];
  __swift_project_boxed_opaque_existential_1(v750, v434);
  (*(v435 + 16))(v434, v435);
  v436 = [v429 constraintEqualToAnchor:v433 constant:?];

  v437 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTopMarginConstraint;
  v438 = *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTopMarginConstraint];
  *&v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTopMarginConstraint] = v436;

  v439 = [objc_allocWithZone(UILayoutGuide) init];
  v440 = [v364 view];
  if (!v440)
  {
LABEL_401:
    __break(1u);
    goto LABEL_402;
  }

  v441 = v440;
  [v440 addLayoutGuide:v439];

  v442 = swift_allocObject();
  *(v442 + 16) = xmmword_1535F0;
  v443 = [v439 centerYAnchor];
  v444 = *(v1 + v763);
  if (!v444)
  {
LABEL_402:
    __break(1u);
    goto LABEL_403;
  }

  v445 = [v444 lastBaselineAnchor];
  v446 = [v443 constraintEqualToAnchor:v445];

  *(v442 + 32) = v446;
  v766 = v439;
  v447 = [v439 topAnchor];
  v448 = [*(v1 + v767) bottomAnchor];
  v449 = [v447 constraintEqualToAnchor:v448 constant:66.0];

  *(v442 + 40) = v449;
  v450 = *&v364[v420];
  if (!v450)
  {
LABEL_403:
    __break(1u);
    goto LABEL_404;
  }

  *(v442 + 48) = v450;
  v451 = *&v364[v427];
  if (!v451)
  {
LABEL_404:
    __break(1u);
    goto LABEL_405;
  }

  *(v442 + 56) = v451;
  v452 = *&v364[v437];
  if (!v452)
  {
LABEL_405:
    __break(1u);
    goto LABEL_406;
  }

  *(v442 + 64) = v452;
  v453 = *(v1 + v758);
  v454 = v767;
  if (!v453)
  {
LABEL_406:
    __break(1u);
    goto LABEL_407;
  }

  v455 = v452;
  v456 = v451;
  v457 = v450;
  v458 = [v453 topAnchor];
  v459 = [v364 view];
  if (!v459)
  {
LABEL_407:
    __break(1u);
    goto LABEL_408;
  }

  v460 = v459;
  v461 = [v459 safeAreaLayoutGuide];

  v462 = [v461 topAnchor];
  v463 = [v458 constraintEqualToAnchor:v462 constant:_UISheetGrabberTopSpacing];

  *(v442 + 72) = v463;
  v464 = *(v1 + v758);
  if (!v464)
  {
LABEL_408:
    __break(1u);
    goto LABEL_409;
  }

  v465 = [v464 centerXAnchor];
  v466 = [v364 view];
  v467 = v746;
  if (!v466)
  {
LABEL_409:
    __break(1u);
    goto LABEL_410;
  }

  v468 = v466;
  v469 = [v466 centerXAnchor];

  v470 = [v465 constraintEqualToAnchor:v469];
  *(v442 + 80) = v470;
  v471 = *&v364[v467];
  if (!v471)
  {
LABEL_410:
    __break(1u);
    goto LABEL_411;
  }

  *(v442 + 88) = v471;
  v472 = v773;
  v473 = *&v773[v1];
  if (!v473)
  {
LABEL_411:
    __break(1u);
    goto LABEL_412;
  }

  v474 = v471;
  v475 = [v473 widthAnchor];
  v476 = [*(v1 + v454) widthAnchor];
  v477 = [v475 constraintLessThanOrEqualToAnchor:v476];

  LODWORD(v478) = 1144750080;
  v479 = [v477 withPriority:v478];

  *(v442 + 96) = v479;
  v480 = *&v472[v1];
  if (!v480)
  {
LABEL_412:
    __break(1u);
    goto LABEL_413;
  }

  v481 = [v480 widthAnchor];
  v482 = [v364 view];
  if (!v482)
  {
LABEL_413:
    __break(1u);
    goto LABEL_414;
  }

  v483 = v482;
  v484 = [v482 layoutMarginsGuide];

  v485 = [v484 widthAnchor];
  v486 = [v481 constraintEqualToAnchor:v485];

  *(v442 + 104) = v486;
  v487 = *&v773[v1];
  if (!v487)
  {
LABEL_414:
    __break(1u);
    goto LABEL_415;
  }

  v488 = [v487 centerXAnchor];
  v489 = [v364 view];
  if (!v489)
  {
LABEL_415:
    __break(1u);
    goto LABEL_416;
  }

  v490 = v489;
  v491 = [v489 centerXAnchor];

  v492 = [v488 constraintEqualToAnchor:v491];
  *(v442 + 112) = v492;
  v493 = *(v1 + v757);
  if (!v493)
  {
LABEL_416:
    __break(1u);
    goto LABEL_417;
  }

  v494 = [v493 lastBaselineAnchor];
  v495 = *(v1 + v771);
  if (!v495)
  {
LABEL_417:
    __break(1u);
    goto LABEL_418;
  }

  v496 = [v495 firstBaselineAnchor];
  v497 = [v494 constraintEqualToAnchor:v496 constant:-24.0];

  *(v442 + 120) = v497;
  v498 = *(v1 + v757);
  if (!v498)
  {
LABEL_418:
    __break(1u);
    goto LABEL_419;
  }

  v499 = [v498 leadingAnchor];
  v500 = v763;
  v501 = *(v1 + v763);
  if (!v501)
  {
LABEL_419:
    __break(1u);
    goto LABEL_420;
  }

  v502 = [v501 leadingAnchor];
  v503 = [v499 constraintEqualToAnchor:v502];

  *(v442 + 128) = v503;
  v504 = *(v1 + v500);
  if (!v504)
  {
LABEL_420:
    __break(1u);
    goto LABEL_421;
  }

  v505 = [v504 topAnchor];
  v506 = *(v1 + v759);
  if (!v506)
  {
LABEL_421:
    __break(1u);
    goto LABEL_422;
  }

  v507 = [v506 topAnchor];
  v508 = [v505 constraintEqualToAnchor:v507];

  *(v442 + 136) = v508;
  v509 = *(v1 + v763);
  if (!v509)
  {
LABEL_422:
    __break(1u);
    goto LABEL_423;
  }

  v510 = [v509 leadingAnchor];
  v511 = [v364 view];
  if (!v511)
  {
LABEL_423:
    __break(1u);
    goto LABEL_424;
  }

  v512 = v511;
  v513 = [v511 layoutMarginsGuide];

  v514 = [v513 leadingAnchor];
  v515 = [v510 constraintGreaterThanOrEqualToAnchor:v514];

  *(v442 + 144) = v515;
  v516 = *(v1 + v765);
  if (!v516)
  {
LABEL_424:
    __break(1u);
    goto LABEL_425;
  }

  v517 = [v516 topAnchor];
  v518 = *(v1 + v751);
  if (!v518)
  {
LABEL_425:
    __break(1u);
    goto LABEL_426;
  }

  v519 = [v518 topAnchor];
  v520 = [v517 constraintEqualToAnchor:v519];

  *(v442 + 152) = v520;
  v521 = *(v1 + v765);
  if (!v521)
  {
LABEL_426:
    __break(1u);
    goto LABEL_427;
  }

  v522 = [v521 leadingAnchor];
  v523 = [v364 view];
  if (!v523)
  {
LABEL_427:
    __break(1u);
    goto LABEL_428;
  }

  v524 = v523;
  v525 = [v523 layoutMarginsGuide];

  v526 = [v525 leadingAnchor];
  v527 = [v522 constraintGreaterThanOrEqualToAnchor:v526];

  *(v442 + 160) = v527;
  v528 = v771;
  v529 = *(v1 + v771);
  if (!v529)
  {
LABEL_428:
    __break(1u);
    goto LABEL_429;
  }

  v530 = [v529 leadingAnchor];
  v531 = [v364 view];
  v532 = v752;
  if (!v531)
  {
LABEL_429:
    __break(1u);
    goto LABEL_430;
  }

  v533 = v531;
  v534 = [v531 leadingAnchor];

  v535 = [v530 constraintEqualToAnchor:v534];
  *(v442 + 168) = v535;
  v536 = *(v1 + v528);
  if (!v536)
  {
LABEL_430:
    __break(1u);
    goto LABEL_431;
  }

  v537 = [v536 trailingAnchor];
  v538 = *&v770[v772];
  if (!v538)
  {
LABEL_431:
    __break(1u);
    goto LABEL_432;
  }

  v539 = [v538 leadingAnchor];
  v540 = [v537 constraintEqualToAnchor:v539 constant:-8.0];

  *(v442 + 176) = v540;
  v541 = *(v1 + v528);
  if (!v541)
  {
LABEL_432:
    __break(1u);
    goto LABEL_433;
  }

  v542 = [v541 lastBaselineAnchor];
  v543 = [v532 topAnchor];
  v544 = [v542 constraintLessThanOrEqualToAnchor:v543];

  *(v442 + 184) = v544;
  v545 = [v532 leadingAnchor];
  v546 = [v364 view];
  if (!v546)
  {
LABEL_433:
    __break(1u);
    goto LABEL_434;
  }

  v547 = v546;
  v548 = [v546 leadingAnchor];

  v549 = [v545 constraintEqualToAnchor:v548];
  *(v442 + 192) = v549;
  v550 = [v532 trailingAnchor];
  v551 = [v364 view];
  if (!v551)
  {
LABEL_434:
    __break(1u);
    goto LABEL_435;
  }

  v552 = v551;
  v553 = [v551 trailingAnchor];

  v554 = [v550 constraintEqualToAnchor:v553];
  *(v442 + 200) = v554;
  v555 = [v532 bottomAnchor];
  v556 = [v364 view];
  if (!v556)
  {
LABEL_435:
    __break(1u);
    goto LABEL_436;
  }

  v557 = v556;
  v558 = [v556 bottomAnchor];

  v559 = [v555 constraintEqualToAnchor:v558];
  *(v442 + 208) = v559;
  v560 = v753;
  v561 = [v753 topAnchor];
  v562 = *(v1 + v528);
  v563 = v773;
  if (!v562)
  {
LABEL_436:
    __break(1u);
    goto LABEL_437;
  }

  v564 = [v562 lastBaselineAnchor];
  v565 = [v561 constraintEqualToAnchor:v564 constant:20.0];

  *(v442 + 216) = v565;
  v566 = [v560 leadingAnchor];
  v567 = *&v563[v1];
  if (!v567)
  {
LABEL_437:
    __break(1u);
    goto LABEL_438;
  }

  v568 = [v567 leadingAnchor];
  v569 = [v566 constraintEqualToAnchor:v568];

  *(v442 + 224) = v569;
  v570 = [v560 trailingAnchor];
  v571 = *&v563[v1];
  if (!v571)
  {
LABEL_438:
    __break(1u);
    goto LABEL_439;
  }

  v572 = [v571 trailingAnchor];
  v573 = [v570 constraintEqualToAnchor:v572];

  *(v442 + 232) = v573;
  v574 = v770;
  v575 = v772;
  v576 = *&v770[v772];
  if (!v576)
  {
LABEL_439:
    __break(1u);
    goto LABEL_440;
  }

  v577 = [v576 widthAnchor];
  v578 = [v577 constraintEqualToConstant:28.0];

  *(v442 + 240) = v578;
  v579 = *&v574[v575];
  if (!v579)
  {
LABEL_440:
    __break(1u);
    goto LABEL_441;
  }

  v580 = [v579 heightAnchor];
  v581 = [v580 constraintEqualToConstant:28.0];

  *(v442 + 248) = v581;
  v582 = *&v574[v575];
  if (!v582)
  {
LABEL_441:
    __break(1u);
    goto LABEL_442;
  }

  v583 = [v582 trailingAnchor];
  v584 = *&v563[v1];
  if (!v584)
  {
LABEL_442:
    __break(1u);
    goto LABEL_443;
  }

  v585 = [v584 trailingAnchor];
  v586 = [v583 constraintEqualToAnchor:v585];

  *(v442 + 256) = v586;
  v587 = *&v770[v772];
  if (!v587)
  {
LABEL_443:
    __break(1u);
    goto LABEL_444;
  }

  v588 = [v587 centerYAnchor];
  v589 = [v766 centerYAnchor];
  v590 = [v588 constraintEqualToAnchor:v589];

  *(v442 + 264) = v590;
  v591 = *&v364[v745];
  if (!v591)
  {
LABEL_444:
    __break(1u);
    goto LABEL_445;
  }

  *(v442 + 272) = v591;
  v592 = *&v364[v744];
  v593 = v769;
  if (!v592)
  {
LABEL_445:
    __break(1u);
    goto LABEL_446;
  }

  *(v442 + 280) = v592;
  v594 = *&v364[v743];
  if (!v594)
  {
LABEL_446:
    __break(1u);
    goto LABEL_447;
  }

  *(v442 + 288) = v594;
  v595 = *(v1 + v593);
  if (!v595)
  {
LABEL_447:
    __break(1u);
    goto LABEL_448;
  }

  v596 = v594;
  v597 = v592;
  v598 = v591;
  v599 = [v595 heightAnchor];
  v600 = *(v1 + v593);
  if (!v600)
  {
LABEL_448:
    __break(1u);
    goto LABEL_449;
  }

  v601 = [v600 widthAnchor];
  v602 = [v599 constraintEqualToAnchor:v601];

  *(v442 + 296) = v602;
  v603 = v756;
  v604 = *(v1 + v756);
  if (!v604)
  {
LABEL_449:
    __break(1u);
    goto LABEL_450;
  }

  v605 = [v604 heightAnchor];
  v606 = *(v1 + v603);
  if (!v606)
  {
LABEL_450:
    __break(1u);
    goto LABEL_451;
  }

  v607 = [v606 widthAnchor];
  v608 = [v605 constraintEqualToAnchor:v607];

  *(v442 + 304) = v608;
  v609 = v764;
  v610 = *(v1 + v764);
  if (!v610)
  {
LABEL_451:
    __break(1u);
    goto LABEL_452;
  }

  v611 = [v610 heightAnchor];
  v612 = *(v1 + v609);
  if (!v612)
  {
LABEL_452:
    __break(1u);
    goto LABEL_453;
  }

  v613 = [v612 widthAnchor];
  v614 = [v611 constraintEqualToAnchor:v613];

  *(v442 + 312) = v614;
  v615 = v762;
  v616 = *(v1 + v762);
  if (!v616)
  {
LABEL_453:
    __break(1u);
    goto LABEL_454;
  }

  v617 = [v616 topAnchor];
  v618 = *&v563[v1];
  if (!v618)
  {
LABEL_454:
    __break(1u);
    goto LABEL_455;
  }

  v619 = v617;
  v620 = [*(v618 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackLayoutGuide) bottomAnchor];
  v621 = [v619 constraintEqualToAnchor:v620];

  *(v442 + 320) = v621;
  v622 = *(v1 + v615);
  if (!v622)
  {
LABEL_455:
    __break(1u);
    goto LABEL_456;
  }

  v623 = [v622 bottomAnchor];
  v624 = *v754;
  if (!*v754)
  {
LABEL_456:
    __break(1u);
    goto LABEL_457;
  }

  v625 = v623;
  v626 = *(v754 + 1);
  v627 = swift_getObjectType();
  v628 = *(v626 + 32);
  v629 = v624;
  v630 = v628(v627, v626);

  v631 = [v630 topAnchor];
  v632 = [v625 constraintEqualToAnchor:v631];

  *(v442 + 328) = v632;
  v633 = *(v1 + v762);
  if (!v633)
  {
LABEL_457:
    __break(1u);
    goto LABEL_458;
  }

  v634 = [v633 centerXAnchor];
  v635 = [v364 view];
  v636 = v768;
  v637 = v741;
  if (!v635)
  {
LABEL_458:
    __break(1u);
    goto LABEL_459;
  }

  v638 = v635;
  v639 = [v635 centerXAnchor];

  v640 = [v634 constraintEqualToAnchor:v639];
  *(v442 + 336) = v640;
  v641 = *&v364[v637];
  v642 = v773;
  v643 = v754;
  if (!v641)
  {
LABEL_459:
    __break(1u);
    goto LABEL_460;
  }

  *(v442 + 344) = v641;
  v644 = *&v364[v742];
  if (!v644)
  {
LABEL_460:
    __break(1u);
    goto LABEL_461;
  }

  *(v442 + 352) = v644;
  v645 = *v643;
  if (!*v643)
  {
LABEL_461:
    __break(1u);
    goto LABEL_462;
  }

  v646 = v644;
  v647 = v641;
  v648 = [v645 leadingAnchor];
  v649 = *&v642[v1];
  if (!v649)
  {
LABEL_462:
    __break(1u);
    goto LABEL_463;
  }

  v650 = [v649 leadingAnchor];
  v651 = [v648 constraintEqualToAnchor:v650];

  *(v442 + 360) = v651;
  if (!*v643)
  {
LABEL_463:
    __break(1u);
    goto LABEL_464;
  }

  v652 = [*v643 trailingAnchor];
  v653 = *&v642[v1];
  v654 = v772;
  if (!v653)
  {
LABEL_464:
    __break(1u);
    goto LABEL_465;
  }

  v655 = [v653 trailingAnchor];
  v656 = [v652 constraintEqualToAnchor:v655];

  *(v442 + 368) = v656;
  v657 = *(v1 + v636);
  if (!v657)
  {
LABEL_465:
    __break(1u);
    goto LABEL_466;
  }

  v658 = [v657 leadingAnchor];
  v659 = *&v642[v1];
  if (!v659)
  {
LABEL_466:
    __break(1u);
    goto LABEL_467;
  }

  v660 = [v659 leadingAnchor];
  v661 = [v658 constraintEqualToAnchor:v660];

  *(v442 + 376) = v661;
  v662 = *(v1 + v636);
  if (!v662)
  {
LABEL_467:
    __break(1u);
    goto LABEL_468;
  }

  v663 = [v662 trailingAnchor];
  v664 = *&v642[v1];
  if (!v664)
  {
LABEL_468:
    __break(1u);
    goto LABEL_469;
  }

  v665 = [v664 trailingAnchor];
  v666 = [v663 constraintEqualToAnchor:v665];

  *(v442 + 384) = v666;
  v667 = *(v1 + v636);
  v668 = v755;
  if (!v667)
  {
LABEL_469:
    __break(1u);
    goto LABEL_470;
  }

  v669 = [v667 heightAnchor];
  v670 = [v669 constraintEqualToConstant:28.0];

  *(v442 + 392) = v670;
  v671 = *&v364[v740];
  if (!v671)
  {
LABEL_470:
    __break(1u);
    goto LABEL_471;
  }

  *(v442 + 400) = v671;
  v672 = *&v761[v1];
  if (!v672)
  {
LABEL_471:
    __break(1u);
    goto LABEL_472;
  }

  v673 = v671;
  v674 = [v672 centerYAnchor];
  v675 = *(v1 + v636);
  if (!v675)
  {
LABEL_472:
    __break(1u);
    goto LABEL_473;
  }

  v676 = [v675 centerYAnchor];
  v677 = [v674 constraintEqualToAnchor:v676];

  *(v442 + 408) = v677;
  v678 = *&v761[v1];
  if (!v678)
  {
LABEL_473:
    __break(1u);
    goto LABEL_474;
  }

  v679 = [v678 leadingAnchor];
  v680 = *(v1 + v636);
  if (!v680)
  {
LABEL_474:
    __break(1u);
    goto LABEL_475;
  }

  v681 = [v680 leadingAnchor];
  v682 = [v679 constraintEqualToAnchor:v681];

  *(v442 + 416) = v682;
  v683 = *(v654 + v760);
  if (!v683)
  {
LABEL_475:
    __break(1u);
    goto LABEL_476;
  }

  v684 = [v683 trailingAnchor];
  v685 = *(v1 + v636);
  if (!v685)
  {
LABEL_476:
    __break(1u);
    goto LABEL_477;
  }

  v686 = [v685 trailingAnchor];
  v687 = [v684 constraintEqualToAnchor:v686];

  *(v442 + 424) = v687;
  v688 = *(v654 + v760);
  if (!v688)
  {
LABEL_477:
    __break(1u);
    goto LABEL_478;
  }

  v689 = [v688 centerYAnchor];
  v690 = *(v1 + v636);
  if (!v690)
  {
LABEL_478:
    __break(1u);
    goto LABEL_479;
  }

  v691 = [v690 centerYAnchor];
  v692 = [v689 constraintEqualToAnchor:v691];

  *(v442 + 432) = v692;
  if (!*v668)
  {
LABEL_479:
    __break(1u);
    goto LABEL_480;
  }

  v693 = [*v668 leadingAnchor];
  v694 = *&v761[v1];
  if (!v694)
  {
LABEL_480:
    __break(1u);
    goto LABEL_481;
  }

  v695 = [v694 trailingAnchor];
  v696 = [v693 constraintGreaterThanOrEqualToAnchor:v695 constant:4.0];

  *(v442 + 440) = v696;
  if (!*v668)
  {
LABEL_481:
    __break(1u);
    goto LABEL_482;
  }

  v697 = [*v668 trailingAnchor];
  v698 = *(v772 + v760);
  if (!v698)
  {
LABEL_482:
    __break(1u);
    goto LABEL_483;
  }

  v699 = [v698 leadingAnchor];
  v700 = [v697 constraintLessThanOrEqualToAnchor:v699 constant:-4.0];

  *(v442 + 448) = v700;
  if (!*v668)
  {
LABEL_483:
    __break(1u);
    goto LABEL_484;
  }

  v701 = [*v668 centerYAnchor];
  v702 = *(v1 + v636);
  if (!v702)
  {
LABEL_484:
    __break(1u);
    goto LABEL_485;
  }

  v703 = [v702 centerYAnchor];
  v704 = [v701 constraintEqualToAnchor:v703];

  *(v442 + 456) = v704;
  if (!*v668)
  {
LABEL_485:
    __break(1u);
    goto LABEL_486;
  }

  v705 = [*v668 centerXAnchor];
  v706 = *(v1 + v636);
  if (v706)
  {
    v707 = v705;
    v708 = v706;

    v709 = [v708 centerXAnchor];

    v710 = [v707 constraintEqualToAnchor:v709];
    *(v442 + 464) = v710;
    v711 = v748;
    v712 = [*(v1 + v748) topAnchor];
    v713 = v767;
    v714 = [*(v1 + v767) topAnchor];
    v715 = [v712 constraintGreaterThanOrEqualToAnchor:v714];

    *(v442 + 472) = v715;
    v716 = [*(v1 + v711) bottomAnchor];
    v717 = [*(v1 + v713) bottomAnchor];
    v718 = [v716 constraintLessThanOrEqualToAnchor:v717];

    *(v442 + 480) = v718;
    v719 = [*(v1 + v711) widthAnchor];
    v720 = [*(v1 + v713) widthAnchor];
    v721 = [v719 constraintLessThanOrEqualToAnchor:v720];

    *(v442 + 488) = v721;
    v722 = [*(v1 + v711) heightAnchor];
    v723 = [*(v1 + v711) widthAnchor];
    v724 = [v722 constraintEqualToAnchor:v723];

    *(v442 + 496) = v724;
    v725 = [*(v1 + v711) heightAnchor];
    v726 = [v725 constraintEqualToConstant:449.0];

    LODWORD(v727) = 1132068864;
    v728 = [v726 withPriority:v727];

    *(v442 + 504) = v728;
    v729 = [*(v1 + v711) centerXAnchor];
    v730 = [*(v1 + v713) centerXAnchor];
    v731 = [v729 constraintEqualToAnchor:v730];

    *(v442 + 512) = v731;
    v732 = [*(v1 + v711) centerYAnchor];
    v733 = [*(v1 + v713) centerYAnchor];
    v734 = [v732 constraintEqualToAnchor:v733];

    *(v442 + 520) = v734;
    v735 = objc_opt_self();
    sub_2B860(0, &qword_1C8190);
    v736 = sub_1449CC().super.isa;

    [v735 activateConstraints:v736];

    v364[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible] = 0;
    sub_DD99C();
    sub_E3E60();

    return;
  }

LABEL_486:
  __break(1u);
}

void sub_E2900()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_E2964()
{
  v0 = sub_14453C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C47D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C8210);
  __chkstk_darwin(v7 - 8);
  v9 = (&v28 - v8);
  v10 = sub_140D0C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (sub_E2DBC())
    {
      v30 = v3;
      v31 = v1;
      v32 = v0;
      v16 = *&v15[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton];
      if (v16)
      {
        v17 = v16;
        [v17 frame];
        *v9 = v17;
        v9[1] = v18;
        v9[2] = v19;
        v9[3] = v20;
        v9[4] = v21;
        v22 = enum case for PresentationSource.Position.view(_:);
        v23 = sub_140CFC();
        v24 = *(v23 - 8);
        (*(v24 + 104))(v9, v22, v23);
        (*(v24 + 56))(v9, 0, 1, v23);
        v29 = v15;
        sub_140CDC();
        (*(v11 + 16))(v6, v13, v10);
        (*(v11 + 56))(v6, 0, 1, v10);
        sub_14457C();
        if (qword_1BFFE8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        sub_1D19C(&static NowPlayingDataProvider.shared, v34, &qword_1C1510);
        if (v35)
        {
          sub_1DB40(v34, v33);
          sub_7D29C(v34);
          __swift_project_boxed_opaque_existential_1(v33, v33[3]);
          v25 = v30;
          v26 = v31;
          v27 = v32;
          (*(v31 + 104))(v30, enum case for PerformableContextActions.presentPodcast(_:), v32);
          sub_1444AC();

          (*(v26 + 8))(v25, v27);
          (*(v11 + 8))(v13, v10);
          __swift_destroy_boxed_opaque_existential_0(v33);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void *sub_E2DBC()
{
  v1 = sub_140CAC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_140C8C();
  __chkstk_darwin(v5);
  v6 = sub_140CBC();
  __chkstk_darwin(v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C47D0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v18 - v9;
  result = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse);
  if (result)
  {
    v12 = [result tracklist];
    v13 = sub_AB9C0();

    if (v13)
    {
      v14 = [v13 metadataObject];

      if (v14)
      {
        v19 = v2;
        v15 = [v14 flattenedGenericObject];
        v16 = [v15 anyObject];

        if (v16)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v17 = sub_140D0C();
            (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
            swift_storeEnumTagMultiPayload();
            (*(v19 + 104))(v4, enum case for InteractionContext.Origin.none(_:), v1);

            sub_140C9C();
            sub_1445DC();
            swift_allocObject();
            return sub_1445CC();
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_E3100(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + *a3);
    if (v9)
    {
      if ([v9 isHolding] & 1) == 0 && (v10 = *&v8[*a4 + 16]) != 0 && *(v10 + 16) && (v11 = sub_F7F40(0), (v12))
      {
        v13 = *(*(v10 + 56) + 16 * v11);
        v14 = a1;

        v13(&v14);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_E31DC(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *&Strong[*a3 + 16];
    if (v9)
    {

      if (*(v9 + 16) && (v10 = sub_F7F40(a4), (v11 & 1) != 0))
      {
        v12 = *(*(v9 + 56) + 16 * v10);

        v13 = a1;
        v12(&v13);
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

void sub_E32B8(void *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse];
  v14 = v3;

  if (!v3)
  {
    return;
  }

  type metadata accessor for PlayerTimeControl();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v14 tracklist];
    v8 = sub_AB9C0();

    v9 = [v8 seekCommand];
    if (v9)
    {
      v10 = [v9 changePositionToElapsedInterval:*(v5 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_selectedElapsedTime)];
      if (v10)
      {
        v11 = v10;
        v12 = objc_opt_self();
        v13 = v11;
        [v12 performRequest:v13 completion:0];

        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
    }
  }

LABEL_9:
}

void sub_E342C(uint64_t a1, uint64_t a2, char a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = &Strong[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlScrubSpeed];
  *v6 = a2;
  v6[8] = a3 & 1;
  sub_DC8E4();

  v7 = swift_unknownObjectUnownedLoadStrong();
  v8 = *&v7[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView];
  v9 = v8;

  if (v8)
  {
    v10 = swift_unknownObjectUnownedLoadStrong();
    sub_E3504(v9);
  }
}

void sub_E3504(_BYTE *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_deferArtworkModeUpdates))
  {
    return;
  }

  v3 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse);
  v4 = v3 ? [v3 state] == &dword_0 + 2 : *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__placeholder) != 0;
  v5 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_mode;
  v6 = a1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_mode];
  if (v6 != 2 && ((v4 ^ v6) & 1) == 0)
  {
    return;
  }

  v7 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:2.0 stiffness:500.0 damping:1000.0 initialVelocity:{0.0, 0.0}];
  if (v6 == 2)
  {
    v8 = a1[v5];
    if (v8 == 2 || ((v4 ^ v8) & 1) != 0)
    {
      a1[v5] = v4;
      v17 = v7;
      sub_C5E80();
      v7 = v17;
    }

    return;
  }

  v18 = v7;
  v9 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.1878 controlPoint2:{0.0023, 0.5399, 0.9629}];
  if (v6)
  {
    if (!v4)
    {
      v10 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:5.0 stiffness:500.0 damping:1000.0 initialVelocity:{0.0, 0.0}];

      [v10 setSpringCubicTimingParameters:v9];
      v18 = v10;
    }
  }

  else if (!v4)
  {
    goto LABEL_19;
  }

  v11 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:2.0 stiffness:300.0 damping:28.0 initialVelocity:{0.0, 0.0}];

  v18 = v11;
LABEL_19:
  v12 = [objc_allocWithZone(MPCubicSpringAnimator) initWithDuration:v18 timingParameters:0.0];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v4;
  aBlock[4] = sub_E7A88;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11D5C0;
  aBlock[3] = &block_descriptor_49;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  a1;

  [v15 addAnimations:v14];
  _Block_release(v14);
  [v15 setInterruptible:0];

  [v15 startAnimation];
  v16 = a1[v5];
  if (v16 == 2 || ((v4 ^ v16) & 1) != 0)
  {
    a1[v5] = v4;
    sub_C5E80();
  }
}

uint64_t sub_E3860()
{
  v0 = sub_14100C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_14503C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14505C();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.Size.small(_:), v4);
  sub_14502C();
  sub_140F5C();
  sub_140FBC();
  (*(v1 + 8))(v3, v0);
  return sub_14504C();
}

id sub_E39FC(void *a1)
{
  v1 = [a1 userInterfaceStyle] == &dword_0 + 2;
  sub_14114C();
  v2 = sub_14113C();
  v3 = [v2 colorWithAlphaComponent:dbl_153600[v1]];

  return v3;
}

id sub_E3A74(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_E74C0;
  v8[3] = &block_descriptor_43_0;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider:v5];
  _Block_release(v5);

  return v6;
}

uint64_t sub_E3B38()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsController);
    v3 = v2[7];
    v4 = v2[8];
    v6 = v2[9];
    v5 = v2[10];
    v7 = v2[11];
    v8 = v2[12];
    v9 = v2[13];
    v38 = v2[6];
    v39 = v2[5];
    v46 = v39;
    v47 = v38;
    v48 = v3;
    v49[0] = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButton];
    v10 = qword_1C0098;
    v37 = v3;
    swift_bridgeObjectRetain_n();

    v11 = v49[0];
    if (v10 != -1)
    {
      swift_once();
    }

    v49[1] = qword_1D1958;
    v50 = 0;
    v51 = v4;
    v52 = v6;
    v53 = v5;
    v54 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButton];
    v55 = 0;
    v56 = 3;
    v40 = v7;
    v57 = v7;
    v58 = v8;
    v59 = v9;
    v60 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButton];
    v61 = 0x10000000000000;
    v62 = 0;
    v42 = v1;
    v43 = &v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics];

    v41 = v9;

    v12 = v54;
    v13 = v60;
    v14 = 0;
    v44 = v6;
    do
    {
      v21 = &v45[v14 * 8];
      v22 = v49[v14];
      if (v22)
      {
        v23 = v4;
        v24 = v5;
        v25 = *(v21 + 6);
        if (v25)
        {
          v26 = *(v21 + 4);
          v27 = *(v21 + 5);
          v28 = *(v43 + 8);
          v29 = v8;
          v30 = v22;

          v31 = sub_101A54(v28, 0, v26, v27);
          v32 = v30;
          v8 = v29;
          [v32 setImage:v31 forState:0];

          v33 = *(v25 + 16);

          v20 = v33 != 0;
        }

        else
        {
          v15 = *(v21 + 8);
          v16 = v21[72];
          v17 = *(v43 + 8);
          v18 = v22;
          v19 = sub_101A54(v17, 0, v15, v16);
          [v18 setImage:v19 forState:0];

          v20 = 0;
        }

        [v22 setEnabled:{v20, v37, v38, v39}];

        v5 = v24;
        v4 = v23;
        v6 = v44;
      }

      v14 += 6;
    }

    while (v14 != 18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C81C0);
    swift_arrayDestroy();
    v34 = &v42[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonConfiguration];
    *v34 = v39;
    *(v34 + 1) = v38;
    *(v34 + 2) = v37;

    v35 = &v42[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonConfiguration];
    *v35 = v4;
    *(v35 + 1) = v6;
    *(v35 + 2) = v5;

    v36 = &v42[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonConfiguration];
    *v36 = v40;
    *(v36 + 1) = v8;
    *(v36 + 2) = v41;
  }

  return result;
}

void sub_E3E60()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    v2 = [v0 view];
    v3 = [v0 traitCollection];
    v4 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics + 24];
    v5 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics + 32];
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics], v4);
    (*(v5 + 160))(v19, v2, v3, v4, v5);

    v6 = &v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics];
    v7 = v19[3];
    *(v6 + 2) = v19[2];
    *(v6 + 3) = v7;
    v8 = v19[5];
    *(v6 + 4) = v19[4];
    *(v6 + 5) = v8;
    v9 = v19[1];
    *v6 = v19[0];
    *(v6 + 1) = v9;
    sub_E5764();
    v10 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton];
    if (v10)
    {
      v11 = objc_opt_self();
      v12 = v10;
      v13 = [v11 sharedApplication];
      v14 = [v13 preferredContentSizeCategory];

      LODWORD(v13) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
      v15 = 13.0;
      if (v13)
      {
        v15 = sub_13EA2C(UIContentSizeCategoryAccessibilityLarge, UIFontTextStyleBody, 13.0);
      }

      v16 = [objc_opt_self() systemFontOfSize:v15 weight:UIFontWeightSemibold];
      [v12 setFont:v16];

      v17 = *(*&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsController] + 136);
      if (v17)
      {

        v17(v18);

        sub_2173C(v17);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_E40F8(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  v3 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController;
  if (!*&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController])
  {
    v4 = [objc_allocWithZone(NPUIMediaControlsStandaloneViewController) init];
    v5 = *&v1[v3];
    *&v1[v3] = v4;

    v6 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton];
    if (v6)
    {
      v7 = *&v6[OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_controlsViewController];
      *&v6[OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_controlsViewController] = v4;
      v8 = v4;
      v9 = v6;

      sub_A4018();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_E41CC()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController;
  if (!*(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController))
  {
    v2 = [objc_allocWithZone(NPUIMediaControlsStandaloneViewController) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton);
    if (v5)
    {
      v6 = *&v5[OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_controlsViewController];
      *&v5[OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_controlsViewController] = v2;
      v8 = v4;
      v7 = v5;

      sub_A4018();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_E42F8(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  sub_14434C();
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 removeObserver:v2 name:MTApplicationDidBecomeActiveNotification object:0];

  v6 = [v4 defaultCenter];
  [v6 removeObserver:v2 name:MTApplicationDidEnterBackgroundNotification object:0];
}

void *sub_E4440(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  v3 = [objc_opt_self() sharedInstance];
  [v3 setNeedsUpdate];

  sub_E41CC();
  result = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  [result setMarqueeEnabled:1 withOptions:0];
  result = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  [result setMarqueeEnabled:1 withOptions:0];
  v5 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController];
  if (v5)
  {
    [v5 prepareRemoteViewController];
  }

  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  [v7 addObserver:v1 selector:"appExitedWhileAppeared" name:MTApplicationDidEnterBackgroundNotification object:0];

  v8 = [v6 defaultCenter];
  [v8 addObserver:v1 selector:"appEnteredWhileAppeared" name:MTApplicationDidBecomeActiveNotification object:0];

  return sub_14434C();
}

void sub_E4888()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v1 = &v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contentViewSize];
  v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contentViewSize];
  v3 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contentViewSize + 8];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;

  if (v2 != v7 || v3 != v9)
  {
    sub_E3E60();
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      [v11 bounds];
      v14 = v13;
      v16 = v15;

      *v1 = v14;
      *(v1 + 1) = v16;
      return;
    }

LABEL_10:
    __break(1u);
  }
}

id sub_E49C4()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewDidLayoutSubviews");
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (v3)
    {
      goto LABEL_5;
    }
  }

  result = [v0 view];
  if (result)
  {
    v3 = result;
LABEL_5:
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    CGRectGetWidth(v24);
    sub_14115C();
    sub_14116C();
    if (*&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics + 80] > v13)
    {
      v14 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics + 80];
    }

    else
    {
      v14 = v13;
    }

    if (v13 > *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics + 88])
    {
      v15 = v13;
    }

    else
    {
      v15 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics + 88];
    }

    result = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLeadingConstraint];
    if (result)
    {
      [result setConstant:v14];
      result = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTrailingConstraint];
      if (result)
      {
        [result setConstant:-v14];
        result = [v0 view];
        if (result)
        {
          v16 = result;
          result = [v0 view];
          if (result)
          {
            v17 = result;
            [result layoutMargins];
            v19 = v18;

            result = [v0 view];
            if (result)
            {
              v20 = result;
              [result layoutMargins];
              v22 = v21;

              [v16 setLayoutMargins:{v19, v15, v22, v15}];
              result = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView];
              if (result)
              {
                [result setFadeEdgeInsets:{0.0, v15, 0.0, v15}];
                result = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView];
                if (result)
                {
                  return [result setFadeEdgeInsets:{0.0, v15, 0.0, v15}];
                }

                goto LABEL_25;
              }

LABEL_24:
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_E4C7C(void *a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = v4;
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v4 || (sub_2B860(0, &qword_1C0D68), v6 = a1, v7 = sub_144FFC(), v6, v5, (v7 & 1) == 0))
  {
LABEL_7:
    sub_E3E60();
  }
}

void sub_E4F08()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse;
  v3 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse];
  v4 = &selRef_metadataObject;
  p_ivar_lyt = &SongCell.ivar_lyt;
  v6 = &OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView;
  if (v3 && (v7 = [v3 tracklist], v8 = sub_AB9C0(), v7, v8))
  {
    [v8 duration];
    v9 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl];
    if (!v9)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v10 = v59;
    [v9 setEnabled:1];
    v11 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepButton];
    if (!v11)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    [v11 setHidden:0];

    v13 = v57;
    v12 = v56;
    v14 = v58;
  }

  else
  {
    v15 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl];
    if (!v15)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    [v15 setEnabled:0];
    v16 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepButton];
    if (!v16)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    [v16 setHidden:1];
    v12 = 0uLL;
    v10 = 2;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v56 = v12;
  v57 = v13;
  v58 = v14;
  v59 = v10;
  v17 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl];
  if (!v17)
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v18 = v17;
  sub_4E180(&v56);

  v19 = *&v1[v2];
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = [v19 tracklist];
  v21 = sub_AB9C0();

  if (v21)
  {
    v22 = [v21 playbackRateCommand];
    if (v22)
    {
      [v22 preferredPlaybackRate];
      swift_unknownObjectRelease();
    }
  }

  v23 = *&v1[v2];
  if (!v23)
  {
    goto LABEL_21;
  }

  v24 = [v23 tracklist];
  v25 = sub_AB9C0();

  if (!v25)
  {
    goto LABEL_22;
  }

  v26 = [v25 metadataObject];

  if (!v26 || (v27 = [v26 flattenedGenericObject], v28 = objc_msgSend(v27, "anyObject"), v26, v27, !v28))
  {
LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
  }

LABEL_22:
  v29 = [v25 podcast];
  v30 = v29;
  if (!v29 || ([v29 supportsSubscription] & 1) == 0)
  {
    v34 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton];
    if (!v34)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    [v34 setHidden:1];
    v32 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton];
    if (!v32)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v33 = 0;
    goto LABEL_30;
  }

  v31 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton];
  if (!v31)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  [v31 setHidden:0];
  v32 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton];
  if (v32)
  {
    v33 = 1;
LABEL_30:
    [v32 setEnabled:v33];
    v35 = *&v1[v2];
    if (!v35 || (v36 = [v35 tracklist], v37 = sub_AB9C0(), v36, !v37) || (v38 = objc_msgSend(v37, "playbackRateCommand"), v37, !v38))
    {
      v42 = 1;
      goto LABEL_37;
    }

    v39 = [v38 supportedPlaybackRates];
    swift_unknownObjectRelease();
    sub_2B860(0, &qword_1C8220);
    v40 = sub_1449DC();

    if (v40 >> 62)
    {
      goto LABEL_48;
    }

    for (i = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)); ; i = sub_14531C())
    {

      v42 = i < 2;
LABEL_37:
      v43 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playbackSpeedButton];
      if (!v43)
      {
        break;
      }

      [v43 p:v42 ivar:?lyt[496]];
      v44 = *&v1[v2];
      if (v44)
      {
        v45 = [v44 playerPath];
        v46 = [v45 route];
      }

      else
      {
        v46 = 0;
      }

      v47 = sub_1450AC();

      v48 = *&v1[v6[16]];
      if (!v48)
      {
        goto LABEL_51;
      }

      [v48 v4[111]];
      v49 = objc_opt_self();
      v50 = swift_allocObject();
      *(v50 + 16) = v1;
      v6 = swift_allocObject();
      v6[2] = sub_E8388;
      v6[3] = v50;
      aBlock[4] = sub_7B6EC;
      aBlock[5] = v6;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_D78F4;
      aBlock[3] = &block_descriptor_67;
      p_ivar_lyt = _Block_copy(aBlock);
      v4 = v1;

      [v49 performWithoutEnforcement:p_ivar_lyt];
      _Block_release(p_ivar_lyt);
      LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

      if ((v49 & 1) == 0)
      {
        v51 = *&v1[v2];
        v52 = v51;

        sub_102060(v51);

        v53 = *(v4 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView);
        if (v53)
        {
          v54 = v53;
          sub_E3504(v54);
        }

        else
        {
        }

        return;
      }

      __break(1u);
LABEL_48:
      ;
    }

    goto LABEL_50;
  }

LABEL_59:
  __break(1u);
}

void sub_E5564(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C47D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (sub_E2DBC())
    {
      v7 = *&v6[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton];
      if (v7)
      {
        v8 = v7;
        v9 = v6;
        [v8 bounds];
        sub_144F2C();
        sub_140CCC();
        v10 = sub_140D0C();
        (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
        sub_14457C();
        isa = ContextActionsConfiguration.menu(extraContextMenuElements:)(_swiftEmptyArrayStorage).super.super.isa;
        v12 = [(objc_class *)isa children];
        sub_2B860(0, &qword_1C4870);
        v13 = sub_1449DC();

        a1(v13);
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

void sub_E5764()
{
  if (![v0 isViewLoaded])
  {
    return;
  }

  v1 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel];
  if (!v1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v2 = objc_opt_self();
  v3 = &v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics];
  v4 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics];
  v5 = v1;
  v6 = [v2 systemFontOfSize:v4 weight:UIFontWeightSemibold];
  [v5 setFont:v6];

  v7 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton];
  if (!v7)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = [v7 titleLabel];
  if (v8)
  {
    v9 = v8;
    v10 = [v2 systemFontOfSize:*v3 weight:UIFontWeightRegular];
    [v9 setFont:v10];
  }

  v11 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton];
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = v3[1];
  v13 = v11;
  v14 = [v2 systemFontOfSize:v12 weight:UIFontWeightSemibold];
  [v13 setFont:v14];

  v15 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titlesStackView];
  if (!v15)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v15 setSpacing:v3[4]];
  v16 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryControlsBottomMargin];
  if (!v16)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v16 setConstant:v3[5]];
  v17 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSliderBottomConstraint];
  if (!v17)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v17 setConstant:v3[6]];
  v18 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonWidthConstraint];
  if (!v18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v18 setConstant:v3[2]];
  v19 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonWidthConstraint];
  if (!v19)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v19 setConstant:v3[2]];
  v20 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonWidthConstraint];
  if (!v20)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v20 setConstant:v3[2]];
  v21 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButton];
  if (!v21)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v22 = v3[2] + 8.0;
  *&v21[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidth] = v22;
  v23 = *&v21[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!v23)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v24 = v21;
  [v23 setConstant:v22];
  [v24 invalidateIntrinsicContentSize];

  v25 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButton];
  if (!v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = v3[2] + 8.0;
  *&v25[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidth] = v26;
  v27 = *&v25[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!v27)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v28 = v25;
  [v27 setConstant:v26];
  [v28 invalidateIntrinsicContentSize];

  v29 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButton];
  if (!v29)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v30 = v3[2] + 8.0;
  *&v29[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidth] = v30;
  v31 = *&v29[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!v31)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v32 = v29;
  [v31 setConstant:v30];
  [v32 invalidateIntrinsicContentSize];

  v33 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsHeightConstraint];
  if (!v33)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v33 setConstant:v3[9]];
  v34 = [v0 view];
  if (!v34)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v35 = v34;
  [v34 setNeedsUpdateConstraints];

  v36 = [v0 view];
  if (!v36)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v37 = v36;
  [v36 setNeedsLayout];
}

void sub_E5BB8(void *a1)
{
  v2 = v1;
  v4 = [a1 title];
  if (v4)
  {
    v5 = v4;
    sub_1448DC();
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v22._countAndFlagsBits = 0xE000000000000000;
    v23._countAndFlagsBits = 0x5F4E574F4E4B4E55;
    v23._object = 0xED0000454C544954;
    v24.value._countAndFlagsBits = 0;
    v24.value._object = 0;
    v6.super.isa = v5;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_1409DC(v23, v24, v6, v25, v22);
  }

  v7 = objc_allocWithZone(NSMutableAttributedString);
  v8 = sub_14489C();

  v9 = [v7 initWithString:v8];

  v10 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
  if (!v10)
  {
    __break(1u);
    goto LABEL_16;
  }

  [v10 setAttributedText:v9];
  v11 = [a1 podcast];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 author];

    if (v13)
    {
      v14 = [v13 name];

      if (v14)
      {
        sub_1448DC();

        v15 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel);
        if (!v15)
        {
LABEL_17:
          __break(1u);
          return;
        }

        sub_9CCC();
        v16 = v15;
        sub_14511C();
        v17 = sub_14489C();

        [v16 setText:v17];
      }
    }
  }

  v18 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v18;
  sub_144E1C();
  if (v20)
  {
    v21 = sub_14489C();
  }

  else
  {
    v21 = 0;
  }

  [v19 setTitle:v21 forState:0];

  sub_E5E5C(a1);
}

void sub_E5E5C(void *a1)
{
  v2 = v1;
  v3 = [a1 podcast];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = sub_144C0C();
  v7 = v6;

  if (v7)
  {
    goto LABEL_5;
  }

  if (v5 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v8 = sub_144C0C();
  if (v9)
  {
LABEL_5:
    *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible) = 0;
    sub_DD99C();
    *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_episodeUpsellBannerProvider) = 0;

    v10 = (v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView);
    *v10 = 0;
    v10[1] = 0;

LABEL_16:

    return;
  }

  if (v8 < 0)
  {
    goto LABEL_21;
  }

  v11 = sub_14538C();
  v13 = v11;
  v14 = v12;
  v15 = (v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView);
  v16 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView + 8);
  if (v16)
  {
    v17 = v11 == *v15 && v16 == v12;
    if (v17 || (sub_1453BC()) && *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_episodeUpsellBannerProvider))
    {
      goto LABEL_16;
    }
  }

  *v15 = v13;
  v15[1] = v14;

  sub_1423AC();
  swift_allocObject();

  v18 = sub_14239C();
  v19 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_episodeUpsellBannerProvider;
  *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_episodeUpsellBannerProvider) = v18;

  if (*(v2 + v19))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_14237C();
  }
}

void sub_E60D8(void *a1)
{
  v2 = v1;
  v4 = [a1 title];
  if (v4)
  {
    v5 = v4;
    sub_1448DC();
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v32._countAndFlagsBits = 0xE000000000000000;
    v33._countAndFlagsBits = 0x5F4E574F4E4B4E55;
    v33._object = 0xED0000454C544954;
    v34.value._countAndFlagsBits = 0;
    v34.value._object = 0;
    v6.super.isa = v5;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_1409DC(v33, v34, v6, v35, v32);
  }

  v7 = objc_allocWithZone(NSMutableAttributedString);
  v8 = sub_14489C();

  v9 = [v7 initWithString:v8];

  if ([a1 isExplicitSong])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5358);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_14A710;
    *(inited + 32) = NSForegroundColorAttributeName;
    sub_14114C();
    v11 = NSForegroundColorAttributeName;
    v12 = sub_14106C();
    *(inited + 64) = sub_2B860(0, &unk_1C8170);
    *(inited + 40) = v12;
    sub_13A814(inited);
    swift_setDeallocating();
    sub_15340(inited + 32, &unk_1C8200);
    v13 = objc_allocWithZone(NSAttributedString);
    v14 = sub_14489C();
    type metadata accessor for Key(0);
    sub_E7C58(&qword_1C0430, type metadata accessor for Key);
    isa = sub_1447EC().super.isa;

    v16 = [v13 initWithString:v14 attributes:isa];

    [v9 appendAttributedString:v16];
  }

  v17 = [a1 album];
  if (!v17 || (v18 = v17, v19 = [v17 title], v18, !v19))
  {
    if (!_swiftEmptyArrayStorage[2])
    {
      goto LABEL_14;
    }

LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81E8);
    sub_1D4A4(&unk_1C81F0, &qword_1C81E8);
    sub_14483C();

    goto LABEL_14;
  }

  v20 = sub_1448DC();
  v22 = v21;

  v23 = sub_134FDC(0, 1, 1, _swiftEmptyArrayStorage);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_134FDC((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[16 * v25];
  *(v26 + 4) = v20;
  *(v26 + 5) = v22;
  if (*(v23 + 2))
  {
    goto LABEL_13;
  }

LABEL_14:
  v27 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
  if (v27)
  {
    [v27 setAttributedText:v9];
    v28 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
    if (v28)
    {
      v29 = v28;

      v30 = sub_14489C();

      [v29 setTitle:v30 forState:0];

      v31 = [a1 artworkCatalog];
      sub_E6578(v31);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_E6578(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent);
    v5 = *(v3 + 80);
    *(v3 + 80) = a1;
    v4 = a1;

    sub_CD5A8(v5);
  }
}

void sub_E6AC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_14236C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  sub_1D19C(a1, v4, &qword_1C81D0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_15340(v4, &qword_1C81D0);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      *(Strong + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible) = 0;
      sub_DD99C();
    }
  }

  else
  {
    v41 = *(v6 + 32);
    v42 = v6 + 32;
    v41(v11, v4, v5);
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      *(v14 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible) = 1;
      sub_DD99C();
    }

    v16 = swift_allocObject();
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v38 = *(v6 + 16);
    v39 = v6;
    v38(v8, v11, v5);
    v18 = v5;
    v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    v40 = v20;
    v41((v20 + v19), v8, v18);
    v21 = swift_allocObject();
    v22 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v38(v8, v11, v18);
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    v41((v23 + v19), v8, v18);
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = *(v24 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerView);

      sub_1422FC();
      v27 = sub_14228C();
      v37 = v11;
      v28 = v27;
      v30 = v29;
      sub_1422CC();
      v42 = v31;
      v32 = sub_1422DC();
      if (v30)
      {
        v43 = v28;
        v44 = v30;
        sub_78BDC();
        sub_144B8C();
      }

      v33 = v39;
      sub_140DDC();
      [*&v26[qword_1C45B8] setImage:v32];

      (*(v33 + 8))(v37, v18);
      v34 = &v26[qword_1C45C0];
      v35 = *&v26[qword_1C45C0];
      *v34 = 0;
      *(v34 + 1) = 0;
      sub_2173C(v35);
    }

    else
    {

      (*(v39 + 8))(v11, v18);
    }
  }
}

void sub_E6FE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1422EC();
    if (v2)
    {
      v3 = v2;
      if (sub_1422BC())
      {
        v4 = type metadata accessor for NowPlayingControlsViewController();
        v9 = v4;
        v8[0] = v1;

        v5 = v1;
        sub_E7528(v3);

        sub_15340(v8, &qword_1C2F30);
        v9 = v4;
        v8[0] = v5;
        v6 = v5;

        sub_E7528(v7);

        sub_15340(v8, &qword_1C2F30);
        v6[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible] = 0;
        sub_DD99C();
      }
    }
  }
}

void sub_E7138()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_14229C();
    if (v2)
    {
      v3 = v2;
      v5[3] = type metadata accessor for NowPlayingControlsViewController();
      v5[0] = v1;
      v4 = v1;
      sub_E7528(v3);

      sub_15340(v5, &qword_1C2F30);
      v4[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible] = 0;
      sub_DD99C();
    }
  }
}

void sub_E71FC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerView;
    v6 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerView);
    if (a2)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    [v6 setAlpha:v7];
    [*&v4[v5] setUserInteractionEnabled:a2 & 1];
    v8 = *&v4[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel];
    if (v8)
    {
      if (a2)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      [v8 setAlpha:v9];
      v10 = [v4 view];
      if (v10)
      {
        v11 = v10;
        [v10 layoutIfNeeded];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_E7308()
{
  result = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
  if (!result)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = [result text];
  if (v2)
  {
    v3 = v2;
    sub_1448DC();

    v4 = sub_14489C();

    v5 = [v4 _isNaturallyRTL];
  }

  else
  {
    v5 = 0;
  }

  v6 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView;
  result = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView);
  if (!result)
  {
    goto LABEL_25;
  }

  [result setAnimationDirection:v5];
  result = *(v0 + v6);
  if (!result)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  [result setSemanticContentAttribute:v7];
  result = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
  if (!result)
  {
    goto LABEL_27;
  }

  v8 = [result titleForState:0];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _isNaturallyRTL];
  }

  else
  {
    v10 = 0;
  }

  v11 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView;
  result = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView);
  if (!result)
  {
    goto LABEL_28;
  }

  [result setAnimationDirection:v10];
  result = *(v0 + v11);
  if (!result)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v10)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  [result setSemanticContentAttribute:v12];
  result = *(v0 + v6);
  if (!result)
  {
    goto LABEL_30;
  }

  [result invalidateIntrinsicContentSize];
  result = *(v0 + v11);
  if (!result)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  return [result invalidateIntrinsicContentSize];
}