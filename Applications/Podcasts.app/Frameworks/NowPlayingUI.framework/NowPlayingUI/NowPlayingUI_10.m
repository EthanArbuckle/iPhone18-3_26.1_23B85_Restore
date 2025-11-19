uint64_t sub_FEA34(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v2 = sub_1442EC();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_14236C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D78);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = *(v16 + 56);
  sub_FEDF4(v28, &v26 - v17, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
  sub_FEDF4(v29, &v18[v19], type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_FEDF4(v18, v12, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v26;
      v20 = v27;
      (*(v26 + 32))(v4, &v18[v19], v27);
      v22 = sub_1442CC();
      v23 = *(v21 + 8);
      v23(v4, v20);
      v23(v12, v20);
LABEL_9:
      sub_FEE5C(v18);
      return v22 & 1;
    }

    (*(v26 + 8))(v12, v27);
  }

  else
  {
    sub_FEDF4(v18, v14, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v18[v19], v5);
      v22 = sub_14235C();
      v24 = *(v6 + 8);
      v24(v8, v5);
      v24(v14, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v5);
  }

  sub_15340(v18, &qword_1C8D78);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_FEDF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_FEE5C(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FEEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8510);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1D19C(a1, &v20 - v13, &qword_1C41C8);
  sub_1D19C(a2, &v14[v15], &qword_1C41C8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D19C(v14, v10, &qword_1C41C8);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_FF260(&v14[v15], v7, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
      v18 = sub_FEA34(v10, v7);
      sub_FEE5C(v7);
      sub_FEE5C(v10);
      sub_15340(v14, &qword_1C41C8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_FEE5C(v10);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_15340(v14, &qword_1C8510);
    v17 = 1;
    return v17 & 1;
  }

  sub_15340(v14, &qword_1C41C8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_FF16C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_FF1F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_FF260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_FF2CC()
{
  result = qword_1C8D88;
  if (!qword_1C8D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8D90);
    sub_FC648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8D88);
  }

  return result;
}

uint64_t Array.item(where:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_144A5C();
  swift_getWitnessTable();
  sub_144BBC();
  if (v6)
  {
    v4 = 1;
  }

  else
  {
    sub_144A6C();
    v4 = 0;
  }

  return (*(*(a1 - 8) + 56))(a2, v4, 1, a1);
}

Swift::Void __swiftcall Array.moveItem(at:to:)(Swift::Int at, Swift::Int to)
{
  v3 = *(v2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(at);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v10 - v8;
  sub_144A4C();
  (*(v4 + 16))(v6, v9, v3);
  sub_144A3C();
  (*(v4 + 8))(v9, v3);
}

id sub_FF5CC(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent] = 0;
  v4 = OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textView;
  v5 = [objc_allocWithZone(UITextView) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setEditable:0];
  [v7 setScrollEnabled:0];
  [v7 setSelectable:1];
  [v7 setDataDetectorTypes:2];
  *&v2[v4] = v7;
  v9 = OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText;
  v10 = sub_14247C();
  sub_14246C();
  sub_14245C();
  v11 = objc_allocWithZone(v10);
  *&v2[v9] = sub_14248C();
  sub_1DB40(a1, &v2[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics]);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for LyricsTextViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

void sub_FF794()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent);
  }

  else
  {
    v3 = sub_14247C();
    sub_14246C();
    sub_14245C();
    v4 = objc_allocWithZone(v3);
    v2 = sub_14248C();
    v1 = 0;
  }

  v7 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText);
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText) = v2;
  v5 = v1;
  v6 = v2;
  sub_FFDC8();
}

void sub_FF874()
{
  v1 = v0;
  v47.receiver = v0;
  v47.super_class = type metadata accessor for LyricsTextViewController();
  objc_msgSendSuper2(&v47, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  [v3 addSubview:v2];

  v5 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent];
  if (v5)
  {
    v6 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText];
    *&v1[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText] = v5;
    v7 = v5;
    sub_FFDC8();
  }

  [v2 setDelegate:v1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_14D1C0;
  v9 = [v2 leadingAnchor];
  v10 = [v1 view];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToAnchor:v12];
  *(v8 + 32) = v13;
  v14 = [v2 trailingAnchor];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [v15 trailingAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v8 + 40) = v18;
  v19 = [v2 topAnchor];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v19 constraintEqualToAnchor:v22];
  *(v8 + 48) = v23;
  v24 = [v2 bottomAnchor];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = [v26 bottomAnchor];

  v29 = [v24 constraintEqualToAnchor:v28];
  *(v8 + 56) = v29;
  sub_1000A4();
  isa = sub_1449CC().super.isa;

  [v27 activateConstraints:isa];

  v31 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics + 24];
  v32 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics], v31);
  v33 = (*(v32 + 96))(v31, v32);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [v1 view];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 effectiveUserInterfaceLayoutDirection];

    if (v42)
    {
      if (v42 == &dword_0 + 1)
      {
        v43 = v39;
        v39 = v35;
LABEL_14:
        [v2 setTextContainerInset:{v33, v43, v37, v39, v46[0]}];
        sub_14114C();
        v45 = sub_14113C();
        [v2 setTintColor:v45];

        return;
      }

      type metadata accessor for UIUserInterfaceLayoutDirection(0);
      v46[3] = v44;
      v46[0] = v42;
      sub_140EBC();
      __swift_destroy_boxed_opaque_existential_0(v46);
    }

    v43 = v35;
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
}

void sub_FFDC8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText;
  v3 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText);
  sub_14247C();
  v4 = v3;
  v5 = sub_144FFC();

  if ((v5 & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics + 24);
    v7 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics), v6);
    v8 = (*(v7 + 144))(v6, v7);
    v9 = *(v1 + v2);
    v10 = sub_14244C();

    v11 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
    v15 = v11;
    v12 = [v15 length];
    v13 = [v8 preferredFont];
    [v15 addAttribute:NSFontAttributeName value:v13 range:{0, v12}];

    sub_14114C();
    v14 = sub_14104C();
    [v15 addAttribute:NSForegroundColorAttributeName value:v14 range:{0, v12}];

    [*(v1 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textView) setAttributedText:v15];
  }
}

id sub_FFFE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyricsTextViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000A4()
{
  result = qword_1C8190;
  if (!qword_1C8190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C8190);
  }

  return result;
}

void sub_1000F0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent) = 0;
  v2 = OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textView;
  v3 = [objc_allocWithZone(UITextView) init];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor:v6];

  [v5 setEditable:0];
  [v5 setScrollEnabled:0];
  [v5 setSelectable:1];
  [v5 setDataDetectorTypes:2];
  *(v1 + v2) = v5;
  v7 = OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText;
  v8 = sub_14247C();
  sub_14246C();
  sub_14245C();
  v9 = objc_allocWithZone(v8);
  *(v1 + v7) = sub_14248C();
  sub_1452FC();
  __break(1u);
}

uint64_t sub_100290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10037C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for NowPlayingPreciseControlSlider()
{
  result = qword_1C8EA0;
  if (!qword_1C8EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100490()
{
  sub_C3F0C();
  if (v0 <= 0x3F)
  {
    sub_F0ADC();
    if (v1 <= 0x3F)
    {
      sub_5C96C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100550@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NowPlayingPreciseControlSlider();
  v5 = v4 - 8;
  v50 = *(v4 - 8);
  v53 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  sub_143E3C();
  swift_getKeyPath();
  sub_143E5C();

  v15 = *(v9 + 8);
  v48 = v9 + 8;
  v49 = v15;
  v15(v14, v8);
  v51 = v58;
  v52 = v57;
  v16 = v59;
  v17 = (v1 + *(v5 + 28));
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v1 + *(v5 + 32));
  sub_143E2C();
  v21 = v54;
  swift_getKeyPath();
  v54 = v21;
  sub_100F18();
  sub_141A4C();

  v22 = *(v21 + 128);

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8EE0);
  v24 = (a1 + v23[17]);
  v24[3] = type metadata accessor for NowPlayingSpeedControlsAnimationViewModel(0);
  v24[4] = &protocol witness table for NowPlayingSpeedControlsAnimationViewModel;
  *v24 = v22;
  sub_100F70(v2, v7);
  v25 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v50 = swift_allocObject();
  sub_100FD8(v7, v50 + v25);
  sub_100F70(v2, v7);
  v47 = swift_allocObject();
  sub_100FD8(v7, v47 + v25);
  sub_143E3C();
  swift_getKeyPath();
  sub_143E5C();

  v49(v11, v8);
  v26 = v54;
  v27 = v55;
  LOBYTE(v8) = v56;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128);
  swift_storeEnumTagMultiPayload();
  v28 = (a1 + v23[9]);
  v29 = v51;
  *v28 = v52;
  v28[1] = v29;
  v28[2] = v16;
  v30 = (a1 + v23[11]);
  *v30 = v18;
  v30[1] = v19;
  *(a1 + v23[12]) = v20;
  v31 = (a1 + v23[13]);
  *v31 = UIScreen.Dimensions.size.getter;
  v31[1] = 0;
  v32 = a1 + v23[14];
  strcpy(v32, "tortoise.fill");
  *(v32 + 7) = -4864;
  *(v32 + 2) = 0x6C69662E65726168;
  *(v32 + 3) = 0xE90000000000006CLL;
  v33 = (a1 + v23[15]);
  v34 = v50;
  *v33 = sub_10103C;
  v33[1] = v34;
  v35 = (a1 + v23[16]);
  v36 = v47;
  *v35 = sub_101054;
  v35[1] = v36;
  v37 = a1 + v23[10];
  *v37 = v26;
  *(v37 + 1) = v27;
  v37[16] = v8;
  v38 = sub_143BDC();
  KeyPath = swift_getKeyPath();
  v40 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8EE8) + 36));
  *v40 = KeyPath;
  v40[1] = v38;
  sub_100F70(v2, v7);
  v41 = swift_allocObject();
  sub_100FD8(v7, v41 + v25);
  v42 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8EF0) + 36));
  *v42 = sub_1010D4;
  v42[1] = v41;
  v42[2] = 0;
  v42[3] = 0;
  sub_100F70(v2, v7);
  v43 = swift_allocObject();
  sub_100FD8(v7, v43 + v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8EF8);
  v45 = (a1 + *(result + 36));
  *v45 = 0;
  v45[1] = 0;
  v45[2] = sub_1011E4;
  v45[3] = v43;
  return result;
}

uint64_t sub_100AAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0);
  sub_143E2C();
  if ((((*(v2 + 16) | (*(v2 + 20) << 32)) + 0x100000000) >> 32) >= 3uLL)
  {
    *(v2 + 16) = 0;
    *(v2 + 20) = 2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100F18();
    sub_141A3C();
  }
}

uint64_t sub_100BE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0);
  sub_143E2C();
  sub_1140EC(1);
}

uint64_t sub_100C38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0);
  sub_143E2C();
  swift_getKeyPath();
  sub_100F18();
  sub_141A4C();

  type metadata accessor for NowPlayingPreciseControlSlider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3810);
  return sub_143CCC();
}

uint64_t sub_100D28(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for NowPlayingPreciseControlSlider() + 28);
  LODWORD(v9) = *v1;
  BYTE4(v9) = *(v1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3810);
  sub_143CBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0);
  sub_143E2C();
  swift_getKeyPath();
  sub_100F18();
  sub_141A4C();

  v2 = *(v9 + 24);

  if ((v8 & 1) != 0 || v7 != v2)
  {
    sub_143E2C();
    swift_getKeyPath();
    sub_141A4C();

    swift_getKeyPath();
    sub_141A6C();

    v4 = *(v9 + 120);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v9 + 120) = v6;
      swift_getKeyPath();
      sub_141A5C();
    }
  }

  return result;
}

unint64_t sub_100F18()
{
  result = qword_1C93E0;
  if (!qword_1C93E0)
  {
    type metadata accessor for NowPlayingPlaybackControlsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C93E0);
  }

  return result;
}

uint64_t sub_100F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingPreciseControlSlider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingPreciseControlSlider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10107C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_142E2C();
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = *(type metadata accessor for NowPlayingPreciseControlSlider() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1011FC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NowPlayingPreciseControlSlider() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1012FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101380()
{
  result = qword_1C8F10;
  if (!qword_1C8F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8EE8);
    sub_1D4A4(qword_1C8F18, &qword_1C8EE0);
    sub_1D4A4(&qword_1C5690, &qword_1C5698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8F10);
  }

  return result;
}

BOOL == infix(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (!a1)
  {
    return (a4 & 1) != 0 && !a3;
  }

  if (a1 == 1)
  {
    return (a4 & 1) != 0 && a3 == 1;
  }

  return (a4 & 1) != 0 && a3 > 1;
}

BOOL sub_1014D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t CollectionComparisonOperationType.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x747265736E69;
    if (a1 != 1)
    {
      v2 = 0x7574697473627573;
    }

    if (a1)
    {
      return v2;
    }

    else
    {
      return 0x6574656C6564;
    }
  }

  else
  {
    v4._countAndFlagsBits = sub_14538C();
    sub_14494C(v4);

    return 0x6F72662065766F6DLL;
  }
}

uint64_t sub_101618()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1016A0(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
  }

  v8 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_101804(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 24) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *(a1 + v9) = v14;
              }

              else
              {
                *(a1 + v9) = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        *(a1 + 2) = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *(a1 + v9) = 0;
  }

  else if (v12)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 24) & ~v8;

  v18(v19);
}

id sub_101A54(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9068);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  v20 = sub_14100C();
  __chkstk_darwin(v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (a4)
        {
          if (a4 == 3)
          {
            if (*&a3 == 0.0)
            {
              v24 = v21;
              sub_140F8C();
              goto LABEL_61;
            }

            if (a3 == 1)
            {
              v24 = v21;
              sub_140FAC();
              goto LABEL_61;
            }

            if (a3 == 2)
            {
              v24 = v21;
              sub_140F9C();
LABEL_61:
              v32 = sub_140FBC();
              (*(v24 + 8))(v23, v20);
              return v32;
            }
          }

          return 0;
        }

        v33 = v21;
        sub_140F7C();
        if ((*(v33 + 48))(v10, 1, v20) != 1)
        {
          v32 = sub_140FBC();
          (*(v33 + 8))(v10, v20);
          return v32;
        }

        v26 = v10;
      }

      else
      {
        if (a4)
        {
          if (a4 == 3)
          {
            if (*&a3 == 0.0)
            {
              v24 = v21;
              sub_140FDC();
              goto LABEL_61;
            }

            if (a3 == 1)
            {
              v24 = v21;
              sub_140FFC();
              goto LABEL_61;
            }

            if (a3 == 2)
            {
              v24 = v21;
              sub_140FEC();
              goto LABEL_61;
            }
          }

          return 0;
        }

        v34 = v21;
        sub_140FCC();
        if ((*(v34 + 48))(v13, 1, v20) != 1)
        {
          v32 = sub_140FBC();
          (*(v34 + 8))(v13, v20);
          return v32;
        }

        v26 = v13;
      }

      goto LABEL_44;
    }

    if (a4 <= 1u)
    {
      if (a4 || *&a3 <= 0.0)
      {
        return 0;
      }

      v29 = v21;
      sub_140ECC();
      if ((*(v29 + 48))(v19, 1, v20) != 1)
      {
        v32 = sub_140FBC();
        (*(v29 + 8))(v19, v20);
        return v32;
      }

      v26 = v19;
      goto LABEL_44;
    }

    if (a4 != 2)
    {
      if (*&a3 == 0.0)
      {
        v24 = v21;
        sub_140EDC();
      }

      else
      {
        v24 = v21;
        if (a3 == 1)
        {
          sub_140EFC();
        }

        else
        {
          sub_140EEC();
        }
      }

      goto LABEL_61;
    }

    if (a3 != 1)
    {
      return 0;
    }

    sub_2B860(0, &qword_1C2F20);
    v38._object = 0x80000000001676E0;
    v38._countAndFlagsBits = 0xD000000000000019;
    v27.super.isa = sub_144FDC(v38).super.isa;
    v28 = [(objc_class *)v27.super.isa imageWithRenderingMode:2];
LABEL_47:
    v32 = v28;

    return v32;
  }

  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (*&a3 == 0.0)
      {
        v24 = v21;
        sub_140F1C();
      }

      else
      {
        v24 = v21;
        if (a3 == 1)
        {
          sub_140F3C();
        }

        else
        {
          sub_140F2C();
        }
      }

      goto LABEL_61;
    }

    if (*&a3 == NAN)
    {
      sub_2B860(0, &qword_1C2F20);
      v39._countAndFlagsBits = 0xD00000000000001DLL;
      v39._object = 0x8000000000167080;
      v27.super.isa = sub_144FDC(v39).super.isa;
      v28 = [(objc_class *)v27.super.isa imageWithRenderingMode:2];
    }

    else
    {
      if (a3 != 1)
      {
        return 0;
      }

      sub_2B860(0, &qword_1C2F20);
      v37._object = 0x80000000001670A0;
      v37._countAndFlagsBits = 0xD000000000000019;
      v27.super.isa = sub_144FDC(v37).super.isa;
      v28 = [(objc_class *)v27.super.isa imageWithRenderingMode:2];
    }

    goto LABEL_47;
  }

  if (a4)
  {
    sub_2B860(0, &qword_1C2F20);
    v30 = "configurationsChangedHandler";
    if (a3)
    {
      v30 = "NowPlaying-Radio-Star";
      v31._countAndFlagsBits = 0xD00000000000001CLL;
    }

    else
    {
      v31._countAndFlagsBits = 0xD000000000000015;
    }

    v31._object = (v30 | 0x8000000000000000);
    v27.super.isa = sub_144FDC(v31).super.isa;
    v28 = [(objc_class *)v27.super.isa imageWithRenderingMode:2];
    goto LABEL_47;
  }

  v25 = v21;
  sub_140F0C();
  if ((*(v25 + 48))(v16, 1, v20) == 1)
  {
    v26 = v16;
LABEL_44:
    sub_103478(v26);
    return 0;
  }

  v32 = sub_140FBC();
  (*(v25 + 8))(v16, v20);
  return v32;
}

void sub_102060(void *a1)
{
  v2 = v1;
  v97 = sub_140C2C();
  v4 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v93 = &v89 - v7;
  if (!a1)
  {
    v2[2] = 0;
    v2[3] = 0;
    v2[4] = 0;

    v2[5] = 0;
    v2[6] = 0;
    v2[7] = 0;

    v2[8] = 0;
    v2[9] = 0;
    v2[10] = 0;

    v2[11] = 0;
    v2[12] = 0;
    v2[13] = 0;

    v2[14] = 0;
    v2[15] = 0;
    v2[16] = 0;

    v22 = v2[17];
    if (v22)
    {

      v22(v23);

      sub_2173C(v22);
    }

    return;
  }

  v8 = a1;
  v9 = [v8 tracklist];
  v10 = sub_AB9C0();

  v11 = [v10 seekCommand];
  v12 = v8;
  v13 = sub_103184(v12, -1, 2u);

  *(v2 + 1) = xmmword_1544E0;
  v2[4] = v13;

  v91 = v10;
  v92 = v2;
  v90 = v11;
  if (v11)
  {
    v14 = [v11 preferredBackwardJumpIntervals];
    sub_2B860(0, &qword_1C8220);
    v15 = sub_1449DC();

    if (v15 >> 62)
    {
      if (sub_14531C())
      {
        goto LABEL_5;
      }
    }

    else if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_5:
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = sub_1451FC();
      }

      else
      {
        if (!*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_79:
          v79 = sub_1451FC();
LABEL_68:
          v80 = v79;

          [v80 doubleValue];
          v82 = v81;

          v83 = v12;
          v84 = sub_103184(v83, v82, 0);

          v2[11] = v82;
          v2[12] = 0;
          v2[13] = v84;
LABEL_73:

          v85 = v12;
          v86 = sub_103184(v85, 1, 2u);

          *(v2 + 7) = xmmword_14A710;
          v2[16] = v86;

          v87 = v2[17];
          if (v87)
          {

            v87(v88);
            swift_unknownObjectRelease();

            sub_2173C(v87);
          }

          else
          {
            swift_unknownObjectRelease();
          }

          return;
        }

        v16 = *(v15 + 32);
      }

      v17 = v16;

      [v17 doubleValue];
      v19 = v18;

      v20 = v12;
      v21 = sub_103184(v20, v19, 0);

      v2[5] = v19;
      v2[6] = 0;
      v2[7] = v21;
      goto LABEL_16;
    }
  }

  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0;
LABEL_16:

  v102 = _swiftEmptyArrayStorage;
  v24 = 3;
  sub_92C8C(0, 3, 0);
  v96 = (v4 + 8);
  v25 = &byte_19E2C8;
  v26 = v102;
  v95 = v12;
  do
  {
    v27 = *(v25 - 1);
    v28 = *v25;
    v29 = &_swiftEmptyDictionarySingleton;
    if (v28 == 1)
    {
      goto LABEL_44;
    }

    v30 = v12;
    v100 = v27;
    v31 = sub_102B54(v30, 0, v27, v28);
    if (!v31)
    {

      v29 = &_swiftEmptyDictionarySingleton;
LABEL_27:
      v27 = v100;
      goto LABEL_44;
    }

    v32 = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    v98 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = &_swiftEmptyDictionarySingleton;
    sub_13819C(sub_103664, v33, 0, isUniquelyReferenced_nonNull_native);
    v29 = v101;
    v99 = v30;
    v35 = [v30 tracklist];
    v36 = [v35 playingItemIndexPath];
    if (v36)
    {
      v37 = v93;
      v38 = v36;
      sub_140BAC();

      v39 = [v35 items];
      isa = sub_140B9C().super.isa;
      v41 = [v39 itemAtIndexPath:isa];

      (*v96)(v37, v97);
      v27 = v100;
      if (!v28)
      {
        goto LABEL_29;
      }
    }

    else
    {

      v41 = 0;
      v27 = v100;
      if (!v28)
      {
LABEL_29:

        v42 = v99;
        goto LABEL_33;
      }
    }

    if (v28 == 2)
    {
      v42 = v99;
      if (v41)
      {
        v43 = [v41 seekCommand];
        if (v43)
        {
          v44 = [v43 beginSeekWithDirection:v100];
          swift_unknownObjectRelease();

          if (v44)
          {
            v45 = swift_allocObject();
            *(v45 + 16) = v44;
            v46 = swift_isUniquelyReferenced_nonNull_native();
            v101 = v29;
            sub_13819C(sub_103518, v45, 1u, v46);
            v29 = v101;
          }
        }

        else
        {
        }

        v27 = v100;
      }
    }

    else
    {
      v42 = v99;
    }

LABEL_33:
    v47 = [v42 tracklist];
    v48 = [v47 playingItemIndexPath];
    if (v48)
    {
      v49 = v94;
      v50 = v48;
      sub_140BAC();

      v51 = [v47 items];
      v52 = sub_140B9C().super.isa;
      v53 = [v51 itemAtIndexPath:v52];

      v27 = v100;
      v42 = v99;
      (*v96)(v49, v97);
    }

    else
    {

      v53 = 0;
    }

    v12 = v95;
    if (v28 == 2)
    {
      if (v53)
      {
        v54 = [v53 seekCommand];
        if (v54)
        {
          v55 = [v54 endSeek];
          swift_unknownObjectRelease();

          if (v55)
          {
            v56 = swift_allocObject();
            *(v56 + 16) = v55;
            v57 = v42;
            v58 = v55;
            v59 = swift_isUniquelyReferenced_nonNull_native();
            v101 = v29;
            sub_13819C(sub_103664, v56, 2u, v59);

            v29 = v101;
          }

          else
          {
          }

          v12 = v95;
          goto LABEL_27;
        }
      }
    }

    else
    {
    }

LABEL_44:
    v102 = v26;
    v61 = v26[2];
    v60 = v26[3];
    if (v61 >= v60 >> 1)
    {
      sub_92C8C((v60 > 1), v61 + 1, 1);
      v26 = v102;
    }

    v26[2] = v61 + 1;
    v62 = &v26[3 * v61];
    v62[4] = v27;
    v25 += 16;
    *(v62 + 40) = v28;
    v62[6] = v29;
    --v24;
  }

  while (v24);
  v63 = 0;
  v2 = (v61 + 1);
  v64 = _swiftEmptyArrayStorage;
  v10 = &dword_18;
LABEL_50:
  v65 = 3 * v63;
  while (1)
  {
    if (v2 == v63)
    {

      if (*(v64 + 16))
      {
        v74 = *(v64 + 32);
        v75 = *(v64 + 40);
        v76 = *(v64 + 48);
      }

      else
      {
        v74 = 0;
        v75 = 0;
        v76 = 0;
      }

      v10 = v91;
      v2 = v92;
      v77 = v90;

      v2[8] = v74;
      v2[9] = v75;
      v2[10] = v76;

      if (v77)
      {
        v78 = [v77 preferredForwardJumpIntervals];
        sub_2B860(0, &qword_1C8220);
        v64 = sub_1449DC();

        if (v64 >> 62)
        {
          goto LABEL_70;
        }

        if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_65;
        }

LABEL_71:
      }

      v2[11] = 0;
      v2[12] = 0;
      v2[13] = 0;
      goto LABEL_73;
    }

    if (v63 >= v26[2])
    {
      break;
    }

    ++v63;
    v66 = v65 * 8 + 24;
    v67 = v26[v65 + 6];
    v65 += 3;
    if (*(v67 + 16))
    {
      v68 = *(v26 + v66 + 8);
      v69 = *(v26 + v66 + 16);

      v70 = swift_isUniquelyReferenced_nonNull_native();
      v102 = v64;
      if ((v70 & 1) == 0)
      {
        sub_92C8C(0, *(v64 + 16) + 1, 1);
        v64 = v102;
      }

      v72 = *(v64 + 16);
      v71 = *(v64 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_92C8C((v71 > 1), v72 + 1, 1);
        v64 = v102;
      }

      *(v64 + 16) = v72 + 1;
      v73 = v64 + 24 * v72;
      *(v73 + 32) = v68;
      *(v73 + 40) = v69;
      *(v73 + 48) = v67;
      v12 = v95;
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_70:
  if (!sub_14531C())
  {
    goto LABEL_71;
  }

LABEL_65:
  if ((v64 & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)))
  {
    v79 = *(v64 + 32);
    goto LABEL_68;
  }

  __break(1u);
}

uint64_t sub_102B54(void *a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = [a1 tracklist];
  v9 = sub_AB9C0();

  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a2)
      {
        goto LABEL_86;
      }

      if (a3)
      {
        if (!v9)
        {
          return 0;
        }

        v13 = [v9 dislikeCommand];
        if (!v13)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (!v9)
        {
          return 0;
        }

        v13 = [v9 likeCommand];
        if (!v13)
        {
          goto LABEL_86;
        }
      }

      v11 = [v13 changeValue:1];
      goto LABEL_41;
    }

    if (!a2)
    {
      if (v9)
      {
        v10 = [v9 seekCommand];
        if (v10)
        {
          v11 = [v10 jumpByInterval:*&a3];
LABEL_41:
          v22 = v11;
          swift_unknownObjectRelease();

          return v22;
        }

        goto LABEL_86;
      }

      return 0;
    }

LABEL_86:

    return 0;
  }

  if (a4 != 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a2)
        {
          goto LABEL_86;
        }

        if (!v9)
        {
          return 0;
        }

        v9 = v9;
        [v9 duration];
        if (v34 != 1)
        {

          goto LABEL_86;
        }

        v19 = [a1 stop];

LABEL_30:
        return v19;
      }

      if (a2)
      {
        goto LABEL_86;
      }

      v14 = [a1 pause];
    }

    else
    {
      if (a2)
      {
        goto LABEL_86;
      }

      v14 = [a1 play];
    }

    v19 = v14;
    goto LABEL_30;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (v9)
      {
        v12 = [v9 seekCommand];
        if (v12)
        {
          v11 = [v12 beginSeekWithDirection:a3];
          goto LABEL_41;
        }

        goto LABEL_86;
      }

      return 0;
    }

    if (!v9)
    {
      return 0;
    }

    v21 = [v9 seekCommand];
    if (v21)
    {
      v11 = [v21 endSeek];
      goto LABEL_41;
    }

    goto LABEL_86;
  }

  if (!v9)
  {
    return 0;
  }

  v15 = [a1 tracklist];
  v16 = [v15 changeItemCommand];

  if (a3 != 1)
  {
    if (a3 != -1)
    {
      swift_unknownObjectRelease();
      goto LABEL_86;
    }

    v17 = v35;
    if (v16)
    {
      v36 = [v16 previousChapter];
      v37 = [v16 previousSection];
      v18 = [v16 previousItem];
    }

    else
    {
      v18 = 0;
      v36 = 0;
      v37 = 0;
    }

    v24 = 0;
    v38 = v18;
LABEL_48:
    if (v24 <= 3)
    {
      v25 = 3;
    }

    else
    {
      v25 = v24;
    }

    while (v24 != 3)
    {
      if (v25 == v24)
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v26 = v35[v24++ + 4];
      if (v26)
      {
        v27 = v26;
        sub_1449BC();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_1449FC();
        }

        sub_144A2C();
        goto LABEL_48;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9070);
    swift_arrayDestroy();
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (!sub_14531C())
      {
        goto LABEL_85;
      }
    }

    else if (!*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_85;
    }

    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      goto LABEL_81;
    }

    if (!*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_62;
    }

    goto LABEL_77;
  }

  v17 = v39;
  if (v16)
  {
    v39[4] = [v16 nextChapter];
    v39[5] = [v16 nextSection];
    v23 = [v16 nextItem];
  }

  else
  {
LABEL_62:
    v23 = 0;
    v17[4] = 0;
    v17[5] = 0;
  }

  v28 = 0;
  v39[6] = v23;
LABEL_64:
  if (v28 <= 3)
  {
    v29 = 3;
  }

  else
  {
    v29 = v28;
  }

  while (v28 != 3)
  {
    if (v29 == v28)
    {
      goto LABEL_80;
    }

    v30 = v39[v28++ + 4];
    if (v30)
    {
      v31 = v30;
      sub_1449BC();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_1449FC();
      }

      sub_144A2C();
      goto LABEL_64;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9070);
  result = swift_arrayDestroy();
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_75;
    }

LABEL_85:
    swift_unknownObjectRelease();

    goto LABEL_86;
  }

  result = sub_14531C();
  if (!result)
  {
    goto LABEL_85;
  }

LABEL_75:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
LABEL_81:
    v32 = sub_1451FC();
    goto LABEL_78;
  }

  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_77:
    v32 = _swiftEmptyArrayStorage[4];
LABEL_78:
    v33 = v32;
    swift_unknownObjectRelease();

    return v33;
  }

  __break(1u);
  return result;
}

unint64_t sub_103184(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = a3;
  v7 = sub_13A704(_swiftEmptyArrayStorage);
  if (v6 != 1)
  {
    v8 = sub_102B54(a1, 0, a2, a3);
    if (v8)
    {
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      v11 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_13819C(sub_103664, v10, 0, isUniquelyReferenced_nonNull_native);
      v13 = sub_102B54(a1, 1, a2, a3);
      if (v13)
      {
        v14 = v13;
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        v16 = swift_isUniquelyReferenced_nonNull_native();
        sub_13819C(sub_103664, v15, 1u, v16);
      }

      v17 = sub_102B54(a1, 2, a2, a3);
      if (v17)
      {
        v18 = v17;
        v19 = swift_allocObject();
        *(v19 + 16) = v18;
        v20 = v18;
        v21 = swift_isUniquelyReferenced_nonNull_native();
        sub_13819C(sub_103664, v19, 2u, v21);
      }
    }
  }

  return v7;
}

uint64_t sub_10335C()
{

  sub_2173C(*(v0 + 136));

  return swift_deallocClassInstance();
}

uint64_t sub_1033E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_103428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_103478(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1034E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for TransportControlsController.ButtonConfiguration.Description(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TransportControlsController.ButtonConfiguration.Description(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1035B8(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1035D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1035FC()
{
  result = qword_1C9078;
  if (!qword_1C9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9078);
  }

  return result;
}

uint64_t sub_103668(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = v1[6];
  if (v8)
  {
    [v8 invalidate];
  }

  if (v1[5])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4228);
    sub_144AEC();
  }

  v9 = sub_144ADC();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_144ABC();

  v10 = sub_144AAC();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = a1;
  *(v11 + 36) = BYTE4(a1);
  *(v11 + 40) = v2;
  *(v11 + 48) = v4;
  v2[5] = sub_43A50(0, 0, v7, &unk_154A10, v11);
}

id sub_103838()
{
  v1 = sub_14243C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = *(v0 + 16);
  swift_getKeyPath();
  v18 = v6;
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v7 = v6[10];
  v18 = 0;
  v8 = [v5 setEnhanceDialogueLevel:v7 error:&v18];
  v9 = v18;
  if (v8)
  {

    return v9;
  }

  else
  {
    v17 = v18;
    v11 = v18;
    sub_1409EC();

    swift_willThrow();
    sub_1423CC();
    swift_errorRetain();
    v12 = sub_14242C();
    v13 = sub_144C3C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_0, v12, v13, "Error setting enhance dialogue level: %@", v14, 0xCu);
      sub_15340(v15, &qword_1C2580);
    }

    else
    {
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_103B38(int a1)
{
  v2 = v1;
  v4 = sub_14243C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  if (a1 >= 1)
  {
    v11 = *(v2 + 16);
    swift_getKeyPath();
    v12 = OBJC_IVAR____TtC12NowPlayingUI35NowPlayingPlaybackControlsViewModel___observationRegistrar;
    v38 = v11;
    v36 = sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    v37 = v12;
    sub_141A4C();

    sub_14208C();

    sub_14203C();

    sub_1423CC();
    v13 = sub_14242C();
    v14 = sub_144C5C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v38 = v16;
      *v15 = 136315138;
      v17 = sub_1454BC();
      v19 = sub_ED2A4(v17, v18, &v38);
      v35 = v4;
      v20 = v19;

      *(v15 + 4) = v20;
      _os_log_impl(&dword_0, v13, v14, "[%s] Saved settings adjusted count settings.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);

      result = (*(v5 + 8))(v10, v35);
    }

    else
    {

      result = (*(v5 + 8))(v10, v4);
    }

    if (*(v11 + 120))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v34 - 2) = v11;
      *(&v34 - 2) = 0;
      v38 = v11;
      sub_141A3C();
    }

    if ((*(v11 + 124) & 1) == 0)
    {
      *(v11 + 124) = 0;
      return result;
    }

    v31 = swift_getKeyPath();
    __chkstk_darwin(v31);
    *(&v34 - 2) = v11;
    *(&v34 - 8) = 0;
    v38 = v11;
    goto LABEL_15;
  }

  sub_1423CC();
  v22 = sub_14242C();
  v23 = sub_144C5C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 136315138;
    v26 = sub_1454BC();
    v28 = sub_ED2A4(v26, v27, &v38);
    v35 = v4;
    v29 = v28;

    *(v24 + 4) = v29;
    _os_log_impl(&dword_0, v22, v23, "[%s] No settings adjusted count to store. Skipping.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);

    result = (*(v5 + 8))(v7, v35);
  }

  else
  {

    result = (*(v5 + 8))(v7, v4);
  }

  v32 = *(v2 + 16);
  if (*(v32 + 124))
  {
    v33 = swift_getKeyPath();
    __chkstk_darwin(v33);
    *(&v34 - 2) = v32;
    *(&v34 - 8) = 0;
    v38 = v32;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
LABEL_15:
    sub_141A3C();
  }

  *(v32 + 124) = 0;
  return result;
}

void sub_1040E8()
{
  v1 = *(v0 + 16);
  sub_141FDC();
  v2 = sub_141FCC();
  v3 = sub_141FBC() & 1;

  if (v3 == *(v1 + 89))
  {
    *(v1 + 89) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v5 = sub_141FCC();
  sub_141FAC();
  v7 = v6;

  sub_1140EC(v7 | 0x100000000);
  if (*(v1 + 67))
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  else
  {
    *(v1 + 67) = 0;
  }

  if (*(v1 + 125) == 1)
  {
    *(v1 + 125) = 1;
  }

  else
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v10 = *(v1 + 112);
  if (v10)
  {
    sub_14208C();
    v11 = v10;
    sub_14201C();

    if (*(v1 + 125))
    {
LABEL_12:
      v12 = swift_getKeyPath();
      __chkstk_darwin(v12);
      sub_141A3C();

      return;
    }
  }

  else
  {
    swift_getKeyPath();
    sub_141A4C();

    sub_14208C();

    sub_14201C();

    if (*(v1 + 125))
    {
      goto LABEL_12;
    }
  }

  *(v1 + 125) = 0;
}

void sub_104584()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 112);
  if (v2)
  {
    sub_14208C();
    v3 = v2;
    sub_14200C();

    if (*(v1 + 126))
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_141A3C();

      return;
    }
  }

  else
  {
    swift_getKeyPath();
    sub_141A4C();

    sub_14208C();

    sub_14200C();

    if (*(v1 + 126))
    {
      goto LABEL_3;
    }
  }

  *(v1 + 126) = 0;
}

uint64_t sub_10476C()
{
  v0 = sub_14357C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_143EDC();
  sub_143EDC();
  sub_143EEC();
  sub_143EDC();

  sub_142B7C();

  sub_14356C();
  sub_142B6C();

  (*(v1 + 8))(v3, v0);
  sub_143EFC();
  sub_142B7C();

  sub_143EFC();
  sub_142B7C();
}

uint64_t sub_104A1C()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  swift_beginAccess();
  if (*(v2 + 24) == 0.0)
  {
    *(v2 + 24) = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v4 = *(v1 + 128);
  swift_beginAccess();
  if (*(v4 + 32) == 0.0)
  {
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = swift_getKeyPath();
    __chkstk_darwin(v5);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v6 = *(v1 + 128);
  swift_beginAccess();
  if (*(v6 + 40) == 15.0)
  {
    *(v6 + 40) = 0x402E000000000000;
  }

  else
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v8 = *(v1 + 128);
  swift_beginAccess();
  if (*(v8 + 48) == 0.0)
  {
    *(v8 + 48) = 0;
  }

  else
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v10 = *(v1 + 128);
  swift_beginAccess();
  if (*(v10 + 56) == 1.0)
  {
    *(v10 + 56) = 0x3FF0000000000000;
  }

  else
  {
    v11 = swift_getKeyPath();
    __chkstk_darwin(v11);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v12 = *(v1 + 128);
  result = swift_beginAccess();
  if (*(v12 + 64) == 1.0)
  {
    *(v12 + 64) = 0x3FF0000000000000;
  }

  else
  {
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  return result;
}

uint64_t sub_1051D4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = LODWORD(v3) == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_105250()
{
  v190 = *v0;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9168);
  v180 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v117 - v1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9170);
  v181 = *(v179 - 8);
  __chkstk_darwin(v179);
  v174 = &v117 - v2;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9178);
  v183 = *(v182 - 8);
  __chkstk_darwin(v182);
  v175 = &v117 - v3;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9180);
  v185 = *(v184 - 8);
  __chkstk_darwin(v184);
  v177 = &v117 - v4;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20F0);
  v173 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v117 - v5;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C91F0);
  v166 = *(v165 - 8);
  __chkstk_darwin(v165);
  v162 = &v117 - v6;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C91F8);
  v168 = *(v167 - 8);
  __chkstk_darwin(v167);
  v163 = &v117 - v7;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9200);
  v170 = *(v169 - 8);
  __chkstk_darwin(v169);
  v164 = &v117 - v8;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9208);
  v197 = *(v188 - 8);
  __chkstk_darwin(v188);
  v153 = &v117 - v9;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9210);
  v157 = *(v156 - 8);
  __chkstk_darwin(v156);
  v152 = &v117 - v10;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9218);
  v159 = *(v158 - 8);
  __chkstk_darwin(v158);
  v154 = &v117 - v11;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9220);
  v161 = *(v160 - 8);
  __chkstk_darwin(v160);
  v155 = &v117 - v12;
  v141 = sub_144DFC();
  v142 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9228);
  v144 = *(v143 - 1);
  __chkstk_darwin(v143);
  v140 = &v117 - v14;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9230);
  v134 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v117 - v15;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9238);
  v133 = *(v131 - 8);
  __chkstk_darwin(v131);
  v127 = &v117 - v16;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9240);
  v136 = *(v135 - 8);
  __chkstk_darwin(v135);
  v128 = &v117 - v17;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9248);
  v138 = *(v137 - 8);
  __chkstk_darwin(v137);
  v130 = &v117 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v19 - 8);
  v195 = &v117 - v20;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9258);
  v201 = *(v198 - 8);
  __chkstk_darwin(v198);
  v118 = &v117 - v21;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9260);
  v186 = *(v126 - 1);
  __chkstk_darwin(v126);
  v23 = &v117 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9268);
  v25 = *(v24 - 8);
  v193 = v24;
  v194 = v25;
  __chkstk_darwin(v24);
  v117 = &v117 - v26;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9270);
  v192 = *(v121 - 8);
  v27 = __chkstk_darwin(v121);
  v119 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v120 = &v117 - v29;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9278);
  v125 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v117 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9280);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v117 - v33;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9288);
  v189 = *(v202 - 8);
  v35 = __chkstk_darwin(v202);
  v123 = &v117 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v117 - v37;
  v145 = v0[3];
  sub_141B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9290);
  v146 = &protocol conformance descriptor for Published<A>.Publisher;
  v151 = sub_1D4A4(&qword_1C6258, &qword_1C9280);
  v199 = v38;
  v148 = v31;
  v147 = v34;
  sub_1427BC();
  v39 = *(v32 + 8);
  v149 = v32 + 8;
  v150 = v39;
  v39(v34, v31);
  v191 = v0;
  v203 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9160);
  sub_1D4A4(&qword_1C92A0, &qword_1C9160);
  sub_10FBA8();
  sub_14286C();
  v203 = *(v0[2] + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C92C0);
  sub_1D4A4(&qword_1C92C8, &qword_1C92C0);
  v40 = v118;
  sub_14286C();
  v187 = &protocol conformance descriptor for Publishers.Map<A, B>;
  v196 = sub_1D4A4(&qword_1C92D0, &qword_1C9288);
  v200 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_1D4A4(&qword_1C92D8, &qword_1C9260);
  sub_1D4A4(&qword_1C92E0, &qword_1C9258);
  v41 = v117;
  v42 = v126;
  v43 = v198;
  sub_14277C();
  (*(v201 + 8))(v40, v43);
  (v186)[1](v23, v42);
  sub_1D4A4(&unk_1C92E8, &qword_1C9268);
  v44 = v119;
  v45 = v193;
  sub_14274C();
  (*(v194 + 8))(v41, v45);
  v46 = v120;
  v47 = v121;
  sub_14250C();
  v48 = *(v192 + 8);
  v48(v44, v47);
  v198 = sub_2B860(0, &qword_1C2160);
  v49 = sub_144D8C();
  v203 = v49;
  v192 = sub_144D3C();
  v50 = *(v192 - 8);
  v193 = *(v50 + 56);
  v194 = v50 + 56;
  v51 = v195;
  v193(v195, 1, 1, v192);
  v126 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_1D4A4(&unk_1C92F8, &qword_1C9270);
  v201 = sub_4236C(&qword_1C1740, &qword_1C2160);
  v52 = v122;
  sub_14283C();
  sub_15340(v51, &qword_1C16E0);

  v48(v46, v47);
  v53 = swift_allocObject();
  v54 = v191;
  swift_weakInit();
  v55 = swift_allocObject();
  v56 = v190;
  *(v55 + 16) = v53;
  *(v55 + 24) = v56;
  v186 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1D4A4(&qword_1C9308, &qword_1C9278);
  v57 = v124;
  sub_14289C();

  (*(v125 + 8))(v52, v57);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  (*(v189 + 16))(v123, v199, v202);
  v203 = v54[9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9310);
  sub_1D4A4(&qword_1C2020, &unk_1C9310);
  v58 = v129;
  sub_1424EC();
  sub_1D4A4(&qword_1C9320, &qword_1C9230);
  v59 = v127;
  v60 = v132;
  sub_1427BC();
  (*(v134 + 8))(v58, v60);
  sub_1D4A4(&qword_1C9328, &qword_1C9238);
  v61 = v128;
  v62 = v131;
  sub_14286C();
  (*(v133 + 8))(v59, v62);
  v63 = sub_144D8C();
  v203 = v63;
  v64 = v192;
  v65 = v193;
  v193(v51, 1, 1, v192);
  sub_1D4A4(&qword_1C9330, &qword_1C9240);
  v66 = v130;
  v67 = v135;
  sub_14283C();
  sub_15340(v51, &qword_1C16E0);

  (*(v136 + 8))(v61, v67);
  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&qword_1C9338, &unk_1C9248);
  v68 = v137;
  sub_14289C();

  (*(v138 + 8))(v66, v68);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  v69 = sub_144DDC();
  v70 = v139;
  sub_144E0C();

  v71 = sub_144D8C();
  v203 = v71;
  v72 = v195;
  v65(v195, 1, 1, v64);
  sub_10FCC8(&qword_1C9340, &type metadata accessor for NSNotificationCenter.Publisher);
  v73 = v140;
  v74 = v141;
  sub_14283C();
  sub_15340(v72, &qword_1C16E0);

  (*(v142 + 8))(v70, v74);
  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&qword_1C9348, &qword_1C9228);
  v75 = v143;
  sub_14289C();

  (*(v144 + 8))(v73, v75);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9350);
  v76 = v153;
  sub_14274C();
  v142 = sub_1D4A4(&qword_1C9358, &qword_1C9208);
  v77 = v152;
  v78 = v188;
  sub_14282C();
  v79 = *(v197 + 8);
  v197 += 8;
  v143 = v79;
  (v79)(v76, v78);
  sub_1D4A4(&qword_1C9360, &qword_1C9210);
  sub_10FD18();
  v80 = v154;
  v81 = v156;
  sub_14286C();
  (*(v157 + 8))(v77, v81);
  v82 = sub_144D8C();
  v203 = v82;
  v83 = v72;
  v84 = v72;
  v85 = v192;
  v86 = v193;
  v193(v84, 1, 1, v192);
  sub_1D4A4(&qword_1C9380, &qword_1C9218);
  v87 = v155;
  v88 = v158;
  sub_14283C();
  sub_15340(v83, &qword_1C16E0);

  (*(v159 + 8))(v80, v88);
  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&qword_1C9388, &qword_1C9220);
  v89 = v160;
  sub_14289C();

  (*(v161 + 8))(v87, v89);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  sub_14274C();
  swift_getKeyPath();
  v90 = v162;
  v91 = v188;
  sub_1427AC();

  (v143)(v76, v91);
  sub_1D4A4(&qword_1C9398, &qword_1C91F0);
  v92 = v163;
  v93 = v165;
  sub_14286C();
  (*(v166 + 8))(v90, v93);
  v94 = sub_144D8C();
  v203 = v94;
  v95 = v195;
  v86(v195, 1, 1, v85);
  sub_1D4A4(&qword_1C93A0, &qword_1C91F8);
  v96 = v164;
  v97 = v167;
  sub_14283C();
  v98 = v95;
  sub_15340(v95, &qword_1C16E0);

  (*(v168 + 8))(v92, v97);
  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&unk_1C93A8, &qword_1C9200);
  v99 = v169;
  sub_14289C();

  (*(v170 + 8))(v96, v99);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  v100 = v171;
  sub_141BEC();
  v101 = swift_allocObject();
  swift_weakInit();
  v102 = swift_allocObject();
  v103 = v190;
  *(v102 + 16) = v101;
  *(v102 + 24) = v103;
  sub_1D4A4(&qword_1C2100, &qword_1C20F0);
  v104 = v172;
  sub_14289C();

  (*(v173 + 8))(v100, v104);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  v105 = v147;
  sub_141B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C93B8);
  v106 = v176;
  v107 = v148;
  sub_1427BC();
  v150(v105, v107);
  v108 = v174;
  v109 = v178;
  sub_14254C();
  (*(v180 + 8))(v106, v109);
  sub_1D4A4(&qword_1C93C0, &qword_1C9170);
  sub_10FE60();
  v110 = v175;
  v111 = v179;
  sub_14286C();
  (*(v181 + 8))(v108, v111);
  v112 = sub_144D8C();
  v203 = v112;
  v193(v98, 1, 1, v192);
  sub_1D4A4(&qword_1C93D0, &qword_1C9178);
  v113 = v177;
  v114 = v182;
  sub_14283C();
  sub_15340(v98, &qword_1C16E0);

  (*(v183 + 8))(v110, v114);
  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&qword_1C93D8, &unk_1C9180);
  v115 = v184;
  sub_14289C();

  (*(v185 + 8))(v113, v115);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  return (*(v189 + 8))(v199, v202);
}

void sub_1075D0(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3 && (v4 = [v3 playingItem]) != 0)
  {
    v5 = v4;
    v6 = [v4 playbackRateCommand];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

id *sub_107644@<X0>(id *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    result = [*result preferredPlaybackRate];
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v3 == 0;
  return result;
}

_DWORD *sub_107694@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1076A4(float *a1)
{
  v2 = sub_14243C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;

  sub_1425FC();

  if ((v39 & 0x10000000000) == 0)
  {
    v13 = v39;
    if (((v39 | (BYTE4(v39) << 32)) & 0x100000000) != 0)
    {
      v15 = *(v8 + 16);
      swift_getKeyPath();
      if (v13)
      {
        v39 = v15;
        sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);

        sub_141A4C();

        v16 = *(v15 + 24);

        if (v6 < v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v39 = v15;
        sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);

        sub_141A4C();

        v17 = *(v15 + 24);

        if (v17 < v6)
        {
          goto LABEL_10;
        }
      }
    }

    else if (v6 == *&v39)
    {
LABEL_10:
      LODWORD(v39) = 0;
      WORD2(v39) = 256;

      sub_1425EC();
    }
  }

  v9 = *(v8 + 16);
  swift_getKeyPath();
  v39 = v9;
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if ((*(v9 + 69) & 1) != 0 || (, sub_1425FC(), , BYTE5(v39) != 1))
  {
    v14 = 1;
  }

  else
  {
    v10 = *(v8 + 16);
    swift_getKeyPath();
    v39 = v10;

    sub_141A4C();

    v11 = *(v10 + 24);

    if (v11 != v6)
    {
      v12 = *(v8 + 16);
      if (*(v12 + 24) == v6)
      {
        *(v12 + 24) = v6;

        sub_114488();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v37 = v33;
        __chkstk_darwin(KeyPath);
        *&v33[-16] = v12;
        *&v33[-8] = v6;
        v39 = v12;

        sub_141A3C();
      }

      sub_107D88();
    }

    v14 = 0;
  }

  sub_14241C();
  swift_retain_n();
  v19 = sub_14242C();
  v20 = sub_144C5C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = v14;
    v22 = v21;
    v37 = swift_slowAlloc();
    v39 = v37;
    *v22 = 136316162;
    v23 = sub_1454BC();
    v36 = v20;
    v25 = sub_ED2A4(v23, v24, &v39);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9410);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_14A710;
    *(v26 + 56) = &type metadata for Float;
    *(v26 + 64) = &protocol witness table for Float;
    *(v26 + 32) = v6;
    v27 = sub_1448EC();
    v29 = sub_ED2A4(v27, v28, &v39);

    *(v22 + 14) = v29;
    v35 = v2;
    *(v22 + 22) = 1024;
    *(v22 + 24) = v34;
    *(v22 + 28) = 1024;
    v30 = v3;
    v31 = *(v8 + 16);
    swift_getKeyPath();
    v38 = v31;
    sub_141A4C();

    v32 = *(v31 + 69);

    *(v22 + 30) = v32;

    *(v22 + 34) = 1024;

    sub_1425FC();

    LOBYTE(v32) = BYTE5(v38);

    *(v22 + 36) = (v32 & 1) == 0;

    _os_log_impl(&dword_0, v19, v36, "[%s] Publisher received rate change: %s, isEditing: %{BOOL}d, isScrolling: %{BOOL}d, is pending rate: %{BOOL}d", v22, 0x28u);
    swift_arrayDestroy();

    return (*(v30 + 8))(v5, v35);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_107D88()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  v10[0] = v1;
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if ((v1[69] & 1) == 0)
  {
    v3 = sub_141C0C();
    v11 = v3;
    v12 = &protocol witness table for PlaybackController.TransportCommand;
    *__swift_allocate_boxed_opaque_existential_1(v10) = 1;
    v4 = *(*(v3 - 8) + 104);
    v4();
    v5 = sub_141B7C() & 1;
    __swift_destroy_boxed_opaque_existential_0(v10);
    if (v5 == v1[65])
    {
      v1[65] = v5;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v9[1] = v9;
      __chkstk_darwin(KeyPath);
      v10[0] = v1;
      sub_141A3C();
    }

    v11 = v3;
    v12 = &protocol witness table for PlaybackController.TransportCommand;
    *__swift_allocate_boxed_opaque_existential_1(v10) = 1;
    v4();
    v7 = sub_141B7C() & 1;
    result = __swift_destroy_boxed_opaque_existential_0(v10);
    if (v7 == v1[66])
    {
      v1[66] = v7;
    }

    else
    {
      v8 = swift_getKeyPath();
      __chkstk_darwin(v8);
      v10[0] = v1;
      sub_141A3C();
    }
  }

  return result;
}

uint64_t sub_108068(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    if (v1 == *(v3 + 64))
    {
      *(v3 + 64) = v1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }
  }

  return result;
}

uint64_t sub_1081C4(uint64_t a1)
{
  v2 = sub_14099C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_14243C();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C93F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_14210C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14096C();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_15340(v11, &qword_1C93F0);
    sub_1423EC();
    (*(v3 + 16))(v5, a1, v2);
    v16 = sub_14242C();
    v17 = sub_144C3C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27[0] = v19;
      *v18 = 136315138;
      v27[3] = sub_14098C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C93F8);
      v20 = sub_14490C();
      v22 = v21;
      (*(v3 + 8))(v5, v2);
      v23 = sub_ED2A4(v20, v22, v27);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_0, v16, v17, "Unexpected user info dictionary: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    return (*(v25 + 8))(v8, v26);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1085E8(v15);
    }

    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_1085E8(uint64_t a1)
{
  v2 = v1;
  v114 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v4 - 8);
  v110 = &v104[-v5];
  v6 = sub_14210C();
  v7 = *(v6 - 8);
  v116 = v6;
  v117 = v7;
  v8 = __chkstk_darwin(v6);
  v111 = &v104[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v115 = &v104[-v11];
  __chkstk_darwin(v10);
  v13 = &v104[-v12];
  v14 = sub_14243C();
  v119 = *(v14 - 8);
  v120 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v104[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v112 = &v104[-v19];
  v20 = __chkstk_darwin(v18);
  v109 = &v104[-v21];
  __chkstk_darwin(v20);
  v23 = &v104[-v22];
  v118 = a1;
  v24 = sub_1420FC();
  v26 = v25;
  v27 = v2[2];
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC12NowPlayingUI35NowPlayingPlaybackControlsViewModel___observationRegistrar;
  v123[0] = v27;
  v29 = sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  v121 = v28;
  sub_141A4C();

  v30 = *(v27 + 104);
  if (v30)
  {
    if (v24 == *(v27 + 96) && v30 == v26)
    {

      v31 = v118;
LABEL_7:
      v108 = v2;
      v113 = v29;
      sub_14208C();
      v33 = v31;
      sub_1420FC();
      v34 = sub_14206C() & 1;

      if (v34 == *(v27 + 68))
      {
        v107 = 0;
        *(v27 + 68) = v34;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *&v104[-16] = v27;
        v104[-8] = v34;
        v123[0] = v27;
        sub_141A3C();
        v107 = 0;
      }

      v44 = v33;
      v45 = sub_1420DC() & 1;
      swift_getKeyPath();
      v123[0] = v27;
      sub_141A4C();

      v46 = v115;
      if (v45 != *(v27 + 67))
      {
        sub_1423EC();
        v47 = v116;
        v48 = v117;
        (*(v117 + 16))(v13, v33, v116);
        swift_retain_n();
        v49 = sub_14242C();
        v50 = sub_144C5C();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v123[0] = v106;
          *v51 = 136315650;
          v52 = sub_1454BC();
          v53 = v47;
          v105 = v50;
          v55 = sub_ED2A4(v52, v54, v123);

          *(v51 + 4) = v55;
          *(v51 + 12) = 1024;
          swift_getKeyPath();
          v122 = v27;
          sub_141A4C();

          v56 = *(v27 + 67);

          *(v51 + 14) = v56;

          *(v51 + 18) = 2080;
          v57 = sub_1420DC();
          if (v57)
          {
            v58 = 1702195828;
          }

          else
          {
            v58 = 0x65736C6166;
          }

          if (v57)
          {
            v59 = 0xE400000000000000;
          }

          else
          {
            v59 = 0xE500000000000000;
          }

          (*(v48 + 8))(v13, v53);
          v60 = sub_ED2A4(v58, v59, v123);

          *(v51 + 20) = v60;
          _os_log_impl(&dword_0, v49, v105, "[%s] Received notification that custom settings should be updated. Current value: %{BOOL}d, incoming value: %s.", v51, 0x1Cu);
          swift_arrayDestroy();

          v61 = v118;

          (*(v119 + 8))(v23, v120);
        }

        else
        {

          (*(v48 + 8))(v13, v47);
          (*(v119 + 8))(v23, v120);
          v61 = v33;
        }

        v44 = v61;
        v62 = sub_1420DC() & 1;
        if (v62 == *(v27 + 67))
        {
          *(v27 + 67) = v62;
        }

        else
        {
          v63 = swift_getKeyPath();
          __chkstk_darwin(v63);
          *&v104[-16] = v27;
          v104[-8] = v62;
          v123[0] = v27;
          sub_141A3C();
        }

        v46 = v115;
      }

      sub_1420CC();
      v65 = v64;
      swift_getKeyPath();
      v123[0] = v27;
      sub_141A4C();

      v66 = v117;
      v67 = v108;
      if (v65 != *(v27 + 24))
      {
        v68 = v109;
        sub_1423EC();
        v69 = v44;
        v70 = v116;
        (*(v66 + 16))(v46, v69, v116);

        v71 = sub_14242C();
        v72 = sub_144C5C();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = v46;
          v74 = swift_slowAlloc();
          v123[0] = swift_slowAlloc();
          *v74 = 136315650;
          v75 = sub_1454BC();
          v77 = sub_ED2A4(v75, v76, v123);

          *(v74 + 4) = v77;
          *(v74 + 12) = 2048;
          swift_getKeyPath();
          v122 = v27;
          sub_141A4C();

          *(v74 + 14) = *(v27 + 24);
          *(v74 + 22) = 2080;
          sub_1420CC();
          v78 = sub_144B2C();
          v80 = v79;
          (*(v117 + 8))(v73, v116);
          v81 = sub_ED2A4(v78, v80, v123);

          *(v74 + 24) = v81;
          _os_log_impl(&dword_0, v71, v72, "[%s] Received notification that playback rate should be updated. Current value: %f, incoming value: %s.", v74, 0x20u);
          swift_arrayDestroy();
          v66 = v117;
        }

        else
        {

          (*(v66 + 8))(v46, v70);
        }

        (*(v119 + 8))(v68, v120);
        v44 = v118;
        sub_1420CC();
        sub_103668(v82 | 0x100000000);
      }

      v83 = sub_1420EC() & 1;
      swift_getKeyPath();
      v123[0] = v27;
      sub_141A4C();

      if (v83 != *(v27 + 89))
      {
        v84 = v112;
        sub_1423EC();
        v85 = v111;
        v86 = v44;
        v87 = v116;
        (*(v66 + 16))(v111, v86, v116);
        swift_retain_n();
        v88 = sub_14242C();
        v89 = sub_144C5C();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v123[0] = swift_slowAlloc();
          *v90 = 136315650;
          v91 = sub_1454BC();
          v93 = sub_ED2A4(v91, v92, v123);

          *(v90 + 4) = v93;
          *(v90 + 12) = 1024;
          swift_getKeyPath();
          v122 = v27;
          sub_141A4C();

          v94 = *(v27 + 89);

          *(v90 + 14) = v94;

          *(v90 + 18) = 2080;
          v95 = v111;
          v96 = sub_1420EC();
          if (v96)
          {
            v97 = 1702195828;
          }

          else
          {
            v97 = 0x65736C6166;
          }

          if (v96)
          {
            v98 = 0xE400000000000000;
          }

          else
          {
            v98 = 0xE500000000000000;
          }

          (*(v66 + 8))(v95, v116);
          v99 = sub_ED2A4(v97, v98, v123);

          *(v90 + 20) = v99;
          _os_log_impl(&dword_0, v88, v89, "[%s] Received notification that enhance dialogue should be updated. Current value: %{BOOL}d, incoming value: %s.", v90, 0x1Cu);
          swift_arrayDestroy();

          (*(v119 + 8))(v112, v120);
        }

        else
        {

          (*(v66 + 8))(v85, v87);
          (*(v119 + 8))(v84, v120);
        }

        v100 = sub_1420EC();
        v101 = sub_144ADC();
        v102 = v110;
        (*(*(v101 - 8) + 56))(v110, 1, 1, v101);
        v103 = swift_allocObject();
        *(v103 + 16) = 0;
        *(v103 + 24) = 0;
        *(v103 + 32) = v67;
        *(v103 + 40) = v100 & 1;

        sub_43CFC(0, 0, v102, &unk_14F9B0, v103);
      }

      return result;
    }

    v32 = sub_1453BC();

    v31 = v118;
    if (v32)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  sub_1423EC();
  v36 = sub_14242C();
  v37 = sub_144C5C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v123[0] = v39;
    *v38 = 136315138;
    v40 = sub_1454BC();
    v42 = sub_ED2A4(v40, v41, v123);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v36, v37, "[%s] Per show setting changed, but not for current item. Ignoring...", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  return (*(v119 + 8))(v17, v120);
}

uint64_t sub_10940C@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9350);
  sub_1D4A4(&qword_1C9390, &qword_1C9350);
  result = sub_144B8C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1094A4()
{
  swift_getKeyPath();

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_109510(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    if (v1 >> 62)
    {
      v3 = sub_14531C();
    }

    else
    {
      v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    if (v3)
    {
      result = sub_92DCC(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v3; ++i)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = sub_1451FC();
        }

        else
        {
          v5 = *(v1 + 8 * i + 32);
        }

        v6 = v5;
        [v5 floatValue];
        v8 = v7;

        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          sub_92DCC((v9 > 1), v10 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v10 + 1;
        *(&_swiftEmptyArrayStorage[4] + v10) = v8;
      }
    }

    sub_114B38(_swiftEmptyArrayStorage);
  }

  return result;
}

void sub_1096A4(void *a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a1)
  {
    v4 = [swift_unknownObjectRetain_n() *a2];
    sub_2B860(0, &qword_1C8220);
    v5 = sub_1449DC();
    swift_unknownObjectRelease_n();
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_10973C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    swift_getKeyPath();
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A4C();

    v4 = *(v3 + 128);

    swift_beginAccess();
    if (v1 == *(v4 + 16))
    {
      *(v4 + 16) = v1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
      sub_141A3C();
    }
  }

  return result;
}

void sub_10992C(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v4 && (v7 = [v4 podcast]) != 0)
    {
      v8 = v7;
      v9 = sub_144BFC();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = *(v6 + 16);
    swift_getKeyPath();
    aBlock[0] = v12;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A4C();

    v13 = *(v12 + 104);
    if (v11)
    {
      if (v13)
      {
        v14 = v9 == *(v12 + 96) && v11 == v13;
        if (v14 || (sub_1453BC() & 1) != 0)
        {

LABEL_24:

          return;
        }
      }
    }

    else if (!v13)
    {
      goto LABEL_24;
    }

    sub_116B84(v9, v11);

    v15 = *(v6 + 16);
    if (*(v15 + 112))
    {
      KeyPath = swift_getKeyPath();
      v28 = &v27;
      __chkstk_darwin(KeyPath);
      aBlock[0] = v15;

      sub_141A3C();
    }

    v28 = v9;
    v17 = *(v6 + 16);
    if (*(v17 + 68))
    {
      v18 = swift_getKeyPath();
      __chkstk_darwin(v18);
      aBlock[0] = v17;

      sub_141A3C();
    }

    else
    {
      *(v17 + 68) = 0;
    }

    v19 = *(v6 + 16);
    if (*(v19 + 67))
    {
      v20 = swift_getKeyPath();
      __chkstk_darwin(v20);
      aBlock[0] = v19;

      sub_141A3C();

      if (!v11)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *(v19 + 67) = 0;
      if (!v11)
      {
        goto LABEL_24;
      }
    }

    v21 = [objc_opt_self() sharedInstance];
    v22 = [v21 playbackContext];

    v23 = swift_allocObject();
    v24 = v28;
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v11;
    v23[5] = v6;
    v23[6] = a3;
    aBlock[4] = sub_10FF5C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_11D5C0;
    aBlock[3] = &block_descriptor_18;
    v25 = _Block_copy(aBlock);
    v26 = v22;

    [v26 performBlock:v25];
    _Block_release(v25);
  }
}

void sub_109DFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_14243C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v53 - v13;
  v15 = sub_14489C();
  v16 = [a1 podcastForUuid:v15];

  if (!v16)
  {
    return;
  }

  v56 = a4;
  v57 = a5;
  sub_1423EC();
  v17 = v16;
  v18 = sub_14242C();
  v19 = sub_144C5C();

  v20 = os_log_type_enabled(v18, v19);
  v58 = v9;
  if (v20)
  {
    v54 = v12;
    v21 = v8;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v22 = 136315651;
    v23 = sub_1454BC();
    v25 = sub_ED2A4(v23, v24, &v59);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    v26 = [v17 title];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1448DC();
      v30 = v29;
    }

    else
    {
      v30 = 0xEA00000000002965;
      v28 = 0x6C746974206F6E28;
    }

    v31 = sub_ED2A4(v28, v30, &v59);

    *(v22 + 24) = v31;
    _os_log_impl(&dword_0, v18, v19, "[%s] Observing incoming podcast: %{private,mask.hash}s.", v22, 0x20u);
    swift_arrayDestroy();

    v8 = v21;
    v55 = *(v58 + 8);
    v55(v14, v21);
    v12 = v54;
  }

  else
  {

    v55 = *(v9 + 8);
    v55(v14, v8);
  }

  v32 = *(v56 + 16);
  sub_116E84([v17 objectID]);
  v33 = sub_14208C();
  v34 = sub_14205C() & 1;
  if (v34 == *(v32 + 68))
  {
    *(v32 + 68) = v34;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v53 - 2) = v32;
    *(&v53 - 8) = v34;
    v59 = v32;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v36 = [v17 advancedPlaybackSettings];
  v56 = v33;
  if (!v36)
  {
    LOBYTE(v38) = 0;
    if (*(v32 + 67))
    {
      goto LABEL_13;
    }

LABEL_15:
    *(v32 + 67) = v38;
    goto LABEL_16;
  }

  v37 = v36;
  v38 = [v36 hasCustomSettings];

  if (v38 == *(v32 + 67))
  {
    goto LABEL_15;
  }

LABEL_13:
  v39 = swift_getKeyPath();
  __chkstk_darwin(v39);
  *(&v53 - 2) = v32;
  *(&v53 - 8) = v38;
  v59 = v32;
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A3C();

LABEL_16:
  sub_1423EC();
  v40 = sub_14242C();
  v41 = sub_144C5C();
  v42 = os_log_type_enabled(v40, v41);
  v54 = 0;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v59 = v44;
    *v43 = 136315138;
    v45 = sub_1454BC();
    v47 = v17;
    v48 = v8;
    v49 = sub_ED2A4(v45, v46, &v59);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_0, v40, v41, "[%s] Taking a snapshot of global settings.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);

    v50 = v12;
    v51 = v48;
    v17 = v47;
  }

  else
  {

    v50 = v12;
    v51 = v8;
  }

  v55(v50, v51);
  sub_14207C();
  if (*(v32 + 120))
  {
    v52 = swift_getKeyPath();
    __chkstk_darwin(v52);
    *(&v53 - 2) = v32;
    *(&v53 - 2) = 0;
    v59 = v32;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  sub_14202C();
}

id sub_10A538@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    result = [result enhanceDialogueCommand];
  }

  *a2 = result;
  return result;
}

id sub_10A578@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    result = [*a1 isActive];
  }

  else
  {
    result = 0;
  }

  *a2 = v3 != 0;
  a2[1] = result;
  return result;
}

uint64_t sub_10A5C8(unsigned __int8 *a1)
{
  v2 = sub_14243C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  sub_1423CC();
  v8 = sub_14242C();
  v9 = sub_144C5C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = v6;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v7;
    _os_log_impl(&dword_0, v8, v9, "Enhance dialogue supported: %{BOOL}d, active: %{BOOL}d", v10, 0xEu);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 16);

    if (v6 == *(v12 + 88))
    {
      *(v12 + 88) = v6;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v17[-2] = v12;
      LOBYTE(v17[-1]) = v6;
      v17[1] = v12;
      sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 16);

    if (v7 == *(v15 + 89))
    {
      *(v15 + 89) = v7;
    }

    else
    {
      v16 = swift_getKeyPath();
      __chkstk_darwin(v16);
      v17[-2] = v15;
      LOBYTE(v17[-1]) = v7;
      v17[0] = v15;
      sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }
  }

  return result;
}

uint64_t sub_10A978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  v7 = sub_14243C();
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();
  v8 = sub_14528C();
  v6[30] = v8;
  v6[31] = *(v8 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  sub_144ABC();
  v6[35] = sub_144AAC();
  v10 = sub_144A8C();
  v6[36] = v10;
  v6[37] = v9;

  return _swift_task_switch(sub_10AAE4, v10, v9);
}

uint64_t sub_10AAE4()
{
  v1 = *(v0 + 192);
  if (!BYTE4(v1))
  {
    sub_14541C();
    v4 = swift_task_alloc();
    *(v0 + 304) = v4;
    *v4 = v0;
    v4[1] = sub_10AD4C;
LABEL_11:
    v6 = 50000000000000000;
    goto LABEL_13;
  }

  if (BYTE4(v1) != 1)
  {
    sub_14541C();
    v5 = swift_task_alloc();
    *(v0 + 336) = v5;
    *v5 = v0;
    v5[1] = sub_10BB88;
    goto LABEL_11;
  }

  sub_1425FC();

  if ((*(v0 + 405) & 1) == 0 && ((*(v0 + 400) | (*(v0 + 404) << 32)) & 0x100000000) == 0 && *&v1 == *(v0 + 400))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  sub_14541C();
  v7 = swift_task_alloc();
  *(v0 + 368) = v7;
  *v7 = v0;
  v7[1] = sub_10C9A4;
  v6 = 100000000000000000;
LABEL_13:

  return sub_10F4DC(v6, 0, 0, 0, 1);
}

uint64_t sub_10AD4C()
{
  v2 = *v1;
  v2[39] = v0;

  v3 = v2[34];
  v4 = v2[31];
  v5 = v2[30];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_10B338;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_10AEE4;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10AEE4()
{
  v27 = v0;
  v1 = *(v0 + 312);
  sub_144B0C();
  if (v1)
  {

    sub_14241C();
    swift_errorRetain();
    v2 = sub_14242C();
    v3 = sub_144C3C();

    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);
    if (v4)
    {
      v24 = *(v0 + 216);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v8 = 136315394;
      v11 = sub_1454BC();
      v23 = v5;
      v13 = sub_ED2A4(v11, v12, &v26);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v14;
      *v9 = v14;
      _os_log_impl(&dword_0, v2, v3, "[%s] Error while handling playback rate action: %@", v8, 0x16u);
      sub_15340(v9, &qword_1C2580);

      __swift_destroy_boxed_opaque_existential_0(v10);

      (*(v6 + 8))(v23, v24);
    }

    else
    {

      (*(v6 + 8))(v5, v7);
    }

    v20 = *(*(v0 + 200) + 16);
    if (*(v20 + 20) == 255)
    {
      *(v20 + 16) = 0;
      *(v20 + 20) = -1;
    }

    else
    {
      swift_getKeyPath();
      v21 = swift_task_alloc();
      *(v21 + 16) = v20;
      *(v21 + 28) = -1;
      *(v21 + 24) = 0;
      *(v0 + 184) = v20;
      sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v15 = *(v0 + 192);
    *(v0 + 424) = 0;
    *(v0 + 428) = 1;

    sub_1425EC();

    v16 = sub_141C0C();
    *(v0 + 168) = v16;
    *(v0 + 176) = &protocol witness table for PlaybackController.TransportCommand;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
    *boxed_opaque_existential_1 = v15 & 1;
    *(boxed_opaque_existential_1 + 1) = BYTE1(v15) & 1;
    (*(*(v16 - 8) + 104))();
    v25 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
    v18 = swift_task_alloc();
    *(v0 + 320) = v18;
    *v18 = v0;
    v18[1] = sub_10B78C;

    return (v25)(v0 + 144, 0);
  }
}

uint64_t sub_10B338()
{
  sub_144B0C();
  v1 = *(v0 + 192);
  *(v0 + 424) = 0;
  *(v0 + 428) = 1;

  sub_1425EC();

  v2 = sub_141C0C();
  *(v0 + 168) = v2;
  *(v0 + 176) = &protocol witness table for PlaybackController.TransportCommand;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  *boxed_opaque_existential_1 = v1 & 1;
  *(boxed_opaque_existential_1 + 1) = BYTE1(v1) & 1;
  (*(*(v2 - 8) + 104))();
  v6 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v0;
  v4[1] = sub_10B78C;

  return (v6)(v0 + 144, 0);
}

uint64_t sub_10B78C(void *a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = *(v4 + 288);
    v6 = *(v4 + 296);
    v7 = sub_10D7B8;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 144);
    v5 = *(v4 + 288);
    v6 = *(v4 + 296);
    v7 = sub_10B8B8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10B8B8()
{
  v1 = v0[25];
  v2 = v0[26];

  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[6] = sub_110254;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10E460;
  v0[5] = &block_descriptor_87;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:2.5];
  _Block_release(v5);

  v8 = [objc_opt_self() mainRunLoop];
  [v8 addTimer:v7 forMode:NSDefaultRunLoopMode];

  v9 = *(v1 + 48);
  *(v1 + 48) = v7;

  v10 = *(v0[25] + 16);
  if (*(v10 + 20) == 255)
  {
    *(v10 + 16) = 0;
    *(v10 + 20) = -1;
  }

  else
  {
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 28) = -1;
    *(v11 + 24) = 0;
    v0[23] = v10;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10BB88()
{
  v2 = *v1;
  v2[43] = v0;

  v3 = v2[33];
  v4 = v2[31];
  v5 = v2[30];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_10C164;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_10BD20;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10BD20()
{
  v25 = v0;
  v1 = *(v0 + 344);
  sub_144B0C();
  if (v1)
  {

    sub_14241C();
    swift_errorRetain();
    v2 = sub_14242C();
    v3 = sub_144C3C();

    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);
    if (v4)
    {
      v22 = *(v0 + 216);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v8 = 136315394;
      v11 = sub_1454BC();
      v21 = v5;
      v13 = sub_ED2A4(v11, v12, &v24);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v14;
      *v9 = v14;
      _os_log_impl(&dword_0, v2, v3, "[%s] Error while handling playback rate action: %@", v8, 0x16u);
      sub_15340(v9, &qword_1C2580);

      __swift_destroy_boxed_opaque_existential_0(v10);

      (*(v6 + 8))(v21, v22);
    }

    else
    {

      (*(v6 + 8))(v5, v7);
    }

    v18 = *(*(v0 + 200) + 16);
    if (*(v18 + 20) == 255)
    {
      *(v18 + 16) = 0;
      *(v18 + 20) = -1;
    }

    else
    {
      swift_getKeyPath();
      v19 = swift_task_alloc();
      *(v19 + 16) = v18;
      *(v19 + 28) = -1;
      *(v19 + 24) = 0;
      *(v0 + 184) = v18;
      sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    *(v0 + 416) = 1;
    *(v0 + 420) = 1;

    sub_1425EC();

    v15 = sub_141C0C();
    *(v0 + 128) = v15;
    *(v0 + 136) = &protocol witness table for PlaybackController.TransportCommand;
    *__swift_allocate_boxed_opaque_existential_1((v0 + 104)) = 1;
    (*(*(v15 - 8) + 104))();
    v23 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
    v16 = swift_task_alloc();
    *(v0 + 352) = v16;
    *v16 = v0;
    v16[1] = sub_10C5A8;

    return (v23)(v0 + 104, 0);
  }
}

uint64_t sub_10C164()
{
  sub_144B0C();
  *(v0 + 416) = 1;
  *(v0 + 420) = 1;

  sub_1425EC();

  v1 = sub_141C0C();
  *(v0 + 128) = v1;
  *(v0 + 136) = &protocol witness table for PlaybackController.TransportCommand;
  *__swift_allocate_boxed_opaque_existential_1((v0 + 104)) = 1;
  (*(*(v1 - 8) + 104))();
  v4 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v2 = swift_task_alloc();
  *(v0 + 352) = v2;
  *v2 = v0;
  v2[1] = sub_10C5A8;

  return (v4)(v0 + 104, 0);
}

uint64_t sub_10C5A8(void *a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = *(v4 + 288);
    v6 = *(v4 + 296);
    v7 = sub_10DAD4;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 104);
    v5 = *(v4 + 288);
    v6 = *(v4 + 296);
    v7 = sub_10C6D4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10C6D4()
{
  v1 = v0[25];
  v2 = v0[26];

  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[6] = sub_110254;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10E460;
  v0[5] = &block_descriptor_87;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:2.5];
  _Block_release(v5);

  v8 = [objc_opt_self() mainRunLoop];
  [v8 addTimer:v7 forMode:NSDefaultRunLoopMode];

  v9 = *(v1 + 48);
  *(v1 + 48) = v7;

  v10 = *(v0[25] + 16);
  if (*(v10 + 20) == 255)
  {
    *(v10 + 16) = 0;
    *(v10 + 20) = -1;
  }

  else
  {
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 28) = -1;
    *(v11 + 24) = 0;
    v0[23] = v10;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10C9A4()
{
  v2 = *v1;
  v2[47] = v0;

  v3 = v2[32];
  v4 = v2[31];
  v5 = v2[30];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_10CF7C;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_10CB3C;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10CB3C()
{
  v26 = v0;
  v1 = *(v0 + 376);
  sub_144B0C();
  if (v1)
  {

    sub_14241C();
    swift_errorRetain();
    v2 = sub_14242C();
    v3 = sub_144C3C();

    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 216);
    if (v4)
    {
      v23 = *(v0 + 216);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v8 = 136315394;
      v11 = sub_1454BC();
      v22 = v5;
      v13 = sub_ED2A4(v11, v12, &v25);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v14;
      *v9 = v14;
      _os_log_impl(&dword_0, v2, v3, "[%s] Error while handling playback rate action: %@", v8, 0x16u);
      sub_15340(v9, &qword_1C2580);

      __swift_destroy_boxed_opaque_existential_0(v10);

      (*(v6 + 8))(v22, v23);
    }

    else
    {

      (*(v6 + 8))(v5, v7);
    }

    v19 = *(*(v0 + 200) + 16);
    if (*(v19 + 20) == 255)
    {
      *(v19 + 16) = 0;
      *(v19 + 20) = -1;
    }

    else
    {
      swift_getKeyPath();
      v20 = swift_task_alloc();
      *(v20 + 16) = v19;
      *(v20 + 28) = -1;
      *(v20 + 24) = 0;
      *(v0 + 184) = v19;
      sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v15 = *(v0 + 192);
    *(v0 + 408) = v15;
    *(v0 + 412) = 0;

    sub_1425EC();

    v16 = sub_141C0C();
    *(v0 + 88) = v16;
    *(v0 + 96) = &protocol witness table for PlaybackController.TransportCommand;
    *__swift_allocate_boxed_opaque_existential_1((v0 + 64)) = v15;
    (*(*(v16 - 8) + 104))();
    v24 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
    v17 = swift_task_alloc();
    *(v0 + 384) = v17;
    *v17 = v0;
    v17[1] = sub_10D3BC;

    return (v24)(v0 + 64, 0);
  }
}

uint64_t sub_10CF7C()
{
  sub_144B0C();
  v1 = *(v0 + 192);
  *(v0 + 408) = v1;
  *(v0 + 412) = 0;

  sub_1425EC();

  v2 = sub_141C0C();
  *(v0 + 88) = v2;
  *(v0 + 96) = &protocol witness table for PlaybackController.TransportCommand;
  *__swift_allocate_boxed_opaque_existential_1((v0 + 64)) = v1;
  (*(*(v2 - 8) + 104))();
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *v3 = v0;
  v3[1] = sub_10D3BC;

  return (v5)(v0 + 64, 0);
}

uint64_t sub_10D3BC(void *a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = *(v4 + 288);
    v6 = *(v4 + 296);
    v7 = sub_10DDF0;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 64);
    v5 = *(v4 + 288);
    v6 = *(v4 + 296);
    v7 = sub_10D4E8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10D4E8()
{
  v1 = v0[25];
  v2 = v0[26];

  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[6] = sub_110254;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10E460;
  v0[5] = &block_descriptor_87;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:2.5];
  _Block_release(v5);

  v8 = [objc_opt_self() mainRunLoop];
  [v8 addTimer:v7 forMode:NSDefaultRunLoopMode];

  v9 = *(v1 + 48);
  *(v1 + 48) = v7;

  v10 = *(v0[25] + 16);
  if (*(v10 + 20) == 255)
  {
    *(v10 + 16) = 0;
    *(v10 + 20) = -1;
  }

  else
  {
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 28) = -1;
    *(v11 + 24) = 0;
    v0[23] = v10;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10D7B8()
{
  v21 = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 18));
  sub_14241C();
  swift_errorRetain();
  v1 = sub_14242C();
  v2 = sub_144C3C();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  if (v3)
  {
    v19 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v10 = sub_1454BC();
    v18 = v4;
    v12 = sub_ED2A4(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_0, v1, v2, "[%s] Error while handling playback rate action: %@", v7, 0x16u);
    sub_15340(v8, &qword_1C2580);

    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v5 + 8))(v18, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = *(v0[25] + 16);
  if (*(v14 + 20) == 255)
  {
    *(v14 + 16) = 0;
    *(v14 + 20) = -1;
  }

  else
  {
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 28) = -1;
    *(v15 + 24) = 0;
    v0[23] = v14;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10DAD4()
{
  v21 = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 13));
  sub_14241C();
  swift_errorRetain();
  v1 = sub_14242C();
  v2 = sub_144C3C();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  if (v3)
  {
    v19 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v10 = sub_1454BC();
    v18 = v4;
    v12 = sub_ED2A4(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_0, v1, v2, "[%s] Error while handling playback rate action: %@", v7, 0x16u);
    sub_15340(v8, &qword_1C2580);

    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v5 + 8))(v18, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = *(v0[25] + 16);
  if (*(v14 + 20) == 255)
  {
    *(v14 + 16) = 0;
    *(v14 + 20) = -1;
  }

  else
  {
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 28) = -1;
    *(v15 + 24) = 0;
    v0[23] = v14;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10DDF0()
{
  v21 = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 8));
  sub_14241C();
  swift_errorRetain();
  v1 = sub_14242C();
  v2 = sub_144C3C();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  if (v3)
  {
    v19 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v10 = sub_1454BC();
    v18 = v4;
    v12 = sub_ED2A4(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_0, v1, v2, "[%s] Error while handling playback rate action: %@", v7, 0x16u);
    sub_15340(v8, &qword_1C2580);

    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v5 + 8))(v18, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = *(v0[25] + 16);
  if (*(v14 + 20) == 255)
  {
    *(v14 + 16) = 0;
    *(v14 + 20) = -1;
  }

  else
  {
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 28) = -1;
    *(v15 + 24) = 0;
    v0[23] = v14;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10E10C()
{
  v0 = sub_14243C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14241C();

  v4 = sub_14242C();
  v5 = sub_144C3C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_1454BC();
    v9 = sub_ED2A4(v7, v8, &v19);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    swift_beginAccess();
    if (swift_weakLoadStrong() && (, , sub_1425FC(), , (v18 & 1) == 0))
    {
      if (((v16 | (v17 << 32)) & 0x100000000) != 0)
      {
        if (v16)
        {
          v10 = 0x6573616572636564;
        }

        else
        {
          v10 = 0x6573616572636E69;
        }

        v11 = 0xEF6E776F6E6B6E55;
      }

      else
      {
        v20 = 0;
        v21 = 0xE000000000000000;
        v22._countAndFlagsBits = 0x2865746172;
        v22._object = 0xE500000000000000;
        sub_14494C(v22);
        sub_144B3C();
        v10 = v20;
        v11 = v21;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v20 = v10;
    v21 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1400);
    v12 = sub_14490C();
    v14 = sub_ED2A4(v12, v13, &v19);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_0, v4, v5, "[%s] Pending playback rate timer timed out, expected rate of %s but never got it", v6, 0x16u);
    swift_arrayDestroy();
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    LODWORD(v19) = 0;
    WORD2(v19) = 256;
    sub_1425EC();
  }

  return result;
}

void sub_10E460(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10E4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 56) = a1;
  *(v5 + 64) = a4;
  return _swift_task_switch(sub_10E4EC, 0, 0);
}

uint64_t sub_10E4EC()
{
  v1 = *(v0 + 96);
  v2 = sub_141D0C();
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for PlaybackController.EnhanceDialogueCommand;
  *__swift_allocate_boxed_opaque_existential_1((v0 + 16)) = v1;
  (*(*(v2 - 8) + 104))();
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_10E608;

  return (v5)(v0 + 16, 0);
}

uint64_t sub_10E608(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_10E75C;
  }

  else
  {
    *(v4 + 88) = a1;
    __swift_destroy_boxed_opaque_existential_0(v4 + 16);
    v5 = sub_10E738;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10E75C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10E7C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  result = swift_beginAccess();
  if (*(v2 + 56) == 0.8)
  {
    *(v2 + 56) = 0x3FE999999999999ALL;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  return result;
}

uint64_t sub_10E990(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  result = swift_beginAccess();
  if (*(v2 + 64) == 0.0)
  {
    *(v2 + 64) = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  return result;
}

uint64_t sub_10EB40(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  result = swift_beginAccess();
  if (*(v2 + 56) == 0.0)
  {
    *(v2 + 56) = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  return result;
}

uint64_t sub_10ECE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  swift_beginAccess();
  if (*(v2 + 24) == 1.0)
  {
    *(v2 + 24) = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v4 = *(v1 + 128);
  result = swift_beginAccess();
  if (*(v4 + 40) == 0.0)
  {
    *(v4 + 40) = 0;
  }

  else
  {
    v6 = swift_getKeyPath();
    __chkstk_darwin(v6);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  return result;
}

uint64_t sub_10EFE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  swift_beginAccess();
  if (*(v2 + 32) == 1.0)
  {
    *(v2 + 32) = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v4 = *(v1 + 128);
  result = swift_beginAccess();
  if (*(v4 + 48) == 1.0)
  {
    *(v4 + 48) = 0x3FF0000000000000;
  }

  else
  {
    v6 = swift_getKeyPath();
    __chkstk_darwin(v6);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  return result;
}

uint64_t sub_10F2F8()
{

  return v0;
}

uint64_t sub_10F350()
{
  sub_10F2F8();

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NowPlayingPlaybackControlsController.PendingPlaybackRate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NowPlayingPlaybackControlsController.PendingPlaybackRate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10F408(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10F424(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_10F454()
{
  sub_141F5C();
  sub_141F3C();
  v1 = v0;
  result = sub_141F4C();
  if (v1 > v3)
  {
    __break(1u);
  }

  else
  {
    *&qword_1D1960 = v1;
    *(&qword_1D1960 + 1) = v3;
  }

  return result;
}

uint64_t sub_10F4A8()
{
  sub_141F5C();
  result = sub_141F2C();
  dword_1D1968 = v1;
  return result;
}

uint64_t sub_10F4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_14527C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10F5DC, 0, 0);
}

uint64_t sub_10F5DC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_14528C();
  v5 = sub_10FCC8(&qword_1C9400, &type metadata accessor for ContinuousClock);
  sub_1453FC();
  sub_10FCC8(&qword_1C9408, &type metadata accessor for ContinuousClock.Instant);
  sub_14529C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10F76C;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10F76C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10F928, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10F928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10F994(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10F9CC(void (*a1)(void))
{
  a1();

  return sub_1454BC();
}

void sub_10FA08(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *sub_10FAD0(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for NowPlayingPlaybackControlsViewModel(0);
  swift_allocObject();
  v3[2] = sub_117DF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9160);
  swift_allocObject();
  v7 = sub_14260C();
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0x4004000000000000;
  v3[8] = &_swiftEmptySetSingleton;
  v3[3] = a1;
  v3[4] = v7;
  v3[9] = a2;
  v3[10] = a3;

  v8 = a3;
  sub_105250();
  return v3;
}

unint64_t sub_10FBA8()
{
  result = qword_1C92A8;
  if (!qword_1C92A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C92B0);
    sub_10FC2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C92A8);
  }

  return result;
}

unint64_t sub_10FC2C()
{
  result = qword_1C92B8;
  if (!qword_1C92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C92B8);
  }

  return result;
}

uint64_t sub_10FC80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10FCC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10FD18()
{
  result = qword_1C9368;
  if (!qword_1C9368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C9350);
    sub_4236C(&unk_1C9370, &qword_1C8220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9368);
  }

  return result;
}

uint64_t sub_10FE20()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10FE60()
{
  result = qword_1C93C8;
  if (!qword_1C93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C93C8);
  }

  return result;
}

uint64_t sub_10FF14()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_110038()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_110078(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DD10;

  return sub_10E4C8(a1, v4, v5, v6, v7);
}

uint64_t sub_11013C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_11017C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32) | (*(v1 + 36) << 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D0A8;

  return sub_10A978(a1, v4, v5, v6, v8, v7);
}

uint64_t getEnumTagSinglePayload for NowPlayingPlaybackControlsController.EnhanceDialogueFeature(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for NowPlayingPlaybackControlsController.EnhanceDialogueFeature(_WORD *result, unsigned int a2, unsigned int a3)
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
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_11070C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C95C8);
  v13 = objc_allocWithZone(v12);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14 = &v13[qword_1C2C08];
  *v14 = a2;
  *(v14 + 1) = a3;
  v15 = &v13[qword_1C2C10];
  *v15 = a5;
  *(v15 + 1) = a6;
  v22.receiver = v13;
  v22.super_class = v12;

  v16 = objc_msgSendSuper2(&v22, "init");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = v16;

    v20 = sub_14489C();

    [v18 addObserver:v19 forKeyPath:v20 options:a4 context:{0, v22.receiver, v22.super_class}];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v16;
}

void sub_11093C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view;
  v3 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view);
  if (v3)
  {
    if (v3 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_accessoryViewFrameObserver;
  v5 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_accessoryViewFrameObserver);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_accessoryViewFrameObserver) = 0;

  v6 = *(v1 + v2);
  if (v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v1 + v4) = sub_11070C(v6, 0x656D617266, 0xE500000000000000, 1, sub_1120B0, v7);

    _objc_release_x1();
  }
}

void sub_110A1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_presentedViewController);
    if (v2)
    {
      v3 = v2;
      v4 = [v3 presentationController];
      v5 = [v4 containerView];

      if (v5 || (v6 = [v3 presentingViewController], v5 = objc_msgSend(v6, "view"), v6, v5))
      {
        [v5 bounds];
        Width = CGRectGetWidth(v10);
        [v5 bounds];
        Height = CGRectGetHeight(v11);
        _UISheetMinimumTopInset();
        [v3 setPreferredContentSize:{Width, Height - v9}];

        v1 = v3;
        v3 = v5;
      }

      v1 = v3;
    }
  }
}

void sub_110B68(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController);
    if (!v4)
    {
LABEL_10:

      return;
    }

    v5 = v4;
    v6 = [v5 isReversed] | a1;
    if ([v5 isReversed])
    {
      if ((v6 & 1) != 0 && (a1 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v6)
    {
LABEL_9:
      sub_110C38(0);

      v3 = v5;
      goto LABEL_10;
    }

    v7 = *&v3[OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_presentedViewController];
    *&v3[OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_presentedViewController] = 0;

    goto LABEL_9;
  }
}

void sub_110C38(void *a1)
{
  v2 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController;
  v3 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController) = a1;
  v14 = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_112044;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_completionBlocks;
    swift_beginAccess();
    v8 = *&v4[v7];
    v9 = v4;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v4[v7] = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_134820(0, v8[2] + 1, 1, v8);
      *&v4[v7] = v8;
    }

    v12 = v8[2];
    v11 = v8[3];
    if (v12 >= v11 >> 1)
    {
      v8 = sub_134820((v11 > 1), v12 + 1, 1, v8);
    }

    v8[2] = v12 + 1;
    v13 = &v8[2 * v12];
    v13[4] = sub_112084;
    v13[5] = v6;
    *&v4[v7] = v8;
    swift_endAccess();
  }

  else
  {
  }
}

void sub_110F28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v21 = (*(v7 + 16))(v2, ObjectType, v7);
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v6 + 8);
      v10 = swift_getObjectType();
      v11 = (*(v9 + 8))(v2, v10, v9);
      swift_unknownObjectRelease();
      [v21 setModalPresentationStyle:1];
      [v21 setTransitioningDelegate:v3];
      v12 = [v21 presentationController];
      if (v12)
      {
        v13 = v12;
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
          [v14 _setWantsBottomAttached:1];
          [v15 _setCornerRadiusForPresentationAndDismissal:0.0];
          [v15 _setShouldDismissWhenTappedOutside:1];
          v16 = [*(v3 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view) superview];
          [v15 setSourceView:v16];

          v13 = v16;
        }
      }

      if (a1)
      {
        aBlock[4] = a1;
        aBlock[5] = a2;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_11D5C0;
        aBlock[3] = &block_descriptor_19;
        v17 = _Block_copy(aBlock);
        v18 = v21;
        sub_2172C(a1);
      }

      else
      {
        v19 = v21;
        v17 = 0;
      }

      [v11 presentViewController:v21 animated:1 completion:v17];

      _Block_release(v17);
      v20 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_presentedViewController);
      *(v3 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_presentedViewController) = v21;
    }

    else
    {
    }
  }
}

id sub_11121C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PalettePresentationInteraction();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_111320(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view;
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view);
  if (v4)
  {
    if (!a1 || (sub_2B860(0, &qword_1C47C0), v6 = v4, v7 = a1, v8 = sub_144FFC(), v6, v7, (v8 & 1) == 0) && (v4 = *(v2 + v3)) != 0)
    {
      [v4 removeGestureRecognizer:*(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_tapGestureRecognizer)];
      v9 = *(v2 + v3);
      if (v9)
      {
        v10 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_panGestureRecognizer);

        [v9 removeGestureRecognizer:v10];
      }
    }
  }
}

void sub_111480(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view;
  v5 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v5 = 0;
    *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view) = a1;
    goto LABEL_13;
  }

  if (!a1)
  {
    *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view) = 0;
LABEL_13:
    v11 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_accessoryViewFrameObserver;
    v12 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_accessoryViewFrameObserver);
    *(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_accessoryViewFrameObserver) = 0;
    v13 = a1;

    v14 = *(v2 + v4);
    if (v14)
    {
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = sub_11070C(v14, 0x656D617266, 0xE500000000000000, 1, sub_112024, v15);
      v17 = *(v2 + v11);
      *(v2 + v11) = v16;

      v5 = v17;
    }

    goto LABEL_15;
  }

  sub_2B860(0, &qword_1C47C0);
  v6 = v5;
  v7 = a1;
  v8 = sub_144FFC();

  if (v8)
  {
    return;
  }

  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  if (v5)
  {
    v9 = v5 == a1;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v7;
LABEL_15:

  v18 = *(v2 + v4);
  if (v18)
  {
    [v18 addGestureRecognizer:*(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_tapGestureRecognizer)];
    v19 = *(v2 + v4);
    if (v19)
    {
      v20 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_panGestureRecognizer);

      [v19 addGestureRecognizer:v20];
    }
  }
}

BOOL sub_111730()
{
  v1 = v0;
  sub_2B860(0, &qword_1C95B0);
  v2 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_panGestureRecognizer;
  v3 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_panGestureRecognizer);
  v4 = sub_144FFC();

  v5 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController);
  result = (v4 ^ 1) & (v5 == 0);
  if (((v4 ^ 1) & 1) == 0 && !v5)
  {
    v7 = *(v1 + v2);
    v8 = [v7 view];
    [v7 translationInView:v8];
    v10 = v9;
    v12 = v11;

    v13 = fabs(v12);
    return v13 > 2.22044605e-16 && fabs(v10 * 0.5) < v13 && v12 < 2.22044605e-16;
  }

  return result;
}

void sub_1118AC(id a1@<X1>, void *a2@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v8 = [a1 view];
    if (v8)
    {
      v9 = v8;
      [v8 bounds];
      v39 = v10;

      v11 = [a2 view];
      if (v11)
      {
        v12 = v11;
        [v11 bounds];
        v37 = v13;
        v15 = v14;

        v16 = 0;
        *&v17 = v39;
        *(&v17 + 1) = v37;
        v18 = 0;
LABEL_9:
        *a4 = v18;
        *(a4 + 8) = v17;
        *(a4 + 24) = v15;
        *(a4 + 32) = v16;
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
    v19 = *(v4 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view);
    if (!v19)
    {
      v17 = 0uLL;
      v16 = 1;
      v18 = 0;
      v15 = 0.0;
      goto LABEL_9;
    }

    v20 = v19;
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [a1 view];
    [v20 convertRect:v29 toView:{v22, v24, v26, v28}];
    v18 = v30;
    v40 = v31;

    v32 = [a1 view];
    if (v32)
    {
      v33 = v32;
      [v32 bounds];
      Width = CGRectGetWidth(v41);
      [v33 bounds];
      Height = CGRectGetHeight(v42);
      _UISheetMinimumTopInset();
      v36 = v35;

      v16 = 0;
      v15 = Height - v36;
      *&v17 = v40;
      *(&v17 + 1) = Width;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_111B1C(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_transitioningDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v8 = *((*(v6 + 24))(v2, ObjectType, v6) + 16);

    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = [a1 presentingViewController];
    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = v9;
    v11 = *(v6 + 32);
    v12 = v11(ObjectType, v6);
    sub_1118AC(v10, a1, v12 & 1, v27);
    if (v28)
    {

LABEL_6:
      swift_unknownObjectRelease();
      return 0;
    }

    v14 = *v27;
    v13 = *&v27[1];
    v16 = *&v27[2];
    v15 = *&v27[3];
    if (v11(ObjectType, v6))
    {
      v17 = type metadata accessor for NowPlayingFormSheetAnimationController();
      v18 = objc_allocWithZone(v17);
      *&v18[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_completionBlocks] = _swiftEmptyArrayStorage;
      v18[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_hasDonated] = 0;
      *&v18[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_interaction] = v2;
      v26.receiver = v18;
      v26.super_class = v17;
      v19 = v2;
      v20 = objc_msgSendSuper2(&v26, "init");
      [v20 setIsReversed:1];
      [v20 setSourceFrame:{v14, v13, v16, v15}];

      swift_unknownObjectRelease();
      return v20;
    }

    else
    {
      v21 = objc_allocWithZone(type metadata accessor for PalettePresentationAnimationController());
      v22 = v2;
      v23 = sub_7B3F0(v22);

      v24 = v23;
      [v24 setIsReversed:1];
      [v24 setSourceFrame:{v14, v13, v16, v15}];

      v25 = v24;
      sub_110C38(v24);
      swift_unknownObjectRelease();

      return v24;
    }
  }

  return result;
}

uint64_t sub_111DF4(void *a1, void *a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_transitioningDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v10 = *((*(v8 + 24))(v3, ObjectType, v8) + 16);

    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = *(v8 + 32);
    if (v11(ObjectType, v8))
    {
      v12 = type metadata accessor for NowPlayingFormSheetAnimationController();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_completionBlocks] = _swiftEmptyArrayStorage;
      v13[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_hasDonated] = 0;
      *&v13[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_interaction] = v3;
      v25.receiver = v13;
      v25.super_class = v12;
      v14 = v3;
      v15 = objc_msgSendSuper2(&v25, "init");
      swift_unknownObjectRelease();
      return v15;
    }

    v16 = v11(ObjectType, v8);
    sub_1118AC(a2, a1, v16 & 1, v26);
    if ((v27 & 1) == 0)
    {
      v18 = *&v26[2];
      v17 = *&v26[3];
      v20 = *v26;
      v19 = *&v26[1];
      v21 = objc_allocWithZone(type metadata accessor for PalettePresentationAnimationController());
      v22 = v3;
      v23 = sub_7B3F0(v22);

      [v23 setSourceFrame:{v20, v19, v18, v17}];
      v24 = v23;
      sub_110C38(v23);
      swift_unknownObjectRelease();
      return v23;
    }

    else
    {
LABEL_6:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_111FEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_11204C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *SleepTimerController.__allocating_init(isLocalPublisher:playbackController:playbackRatePublisher:activeScrubPositionPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_141C9C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[6] = &_swiftEmptySetSingleton;
  (*(v9 + 104))(v11, enum case for PlaybackController.SleepTimerStopMode.off(_:), v8);
  v13 = sub_141C7C();
  type metadata accessor for NowPlayingSleepTimer.ViewModel(0);
  swift_allocObject();
  v12[2] = sub_46774(v11, v13, 1);
  type metadata accessor for NowPlayingSleepTimerRemaining.ViewModel();
  swift_allocObject();
  v12[3] = sub_B9B14();
  v12[4] = a1;
  v12[5] = a3;
  v12[7] = a2;
  v12[8] = a4;
  return v12;
}

void *SleepTimerController.init(isLocalPublisher:playbackController:playbackRatePublisher:activeScrubPositionPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_141C9C();
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[6] = &_swiftEmptySetSingleton;
  (*(v14 + 104))(v13, enum case for PlaybackController.SleepTimerStopMode.off(_:), v11);
  v15 = sub_141C7C();
  type metadata accessor for NowPlayingSleepTimer.ViewModel(0);
  swift_allocObject();
  v5[2] = sub_46774(v13, v15, 1);
  type metadata accessor for NowPlayingSleepTimerRemaining.ViewModel();
  swift_allocObject();
  v5[3] = sub_B9B14();
  v5[4] = a1;
  v5[5] = a3;
  v5[7] = a2;
  v5[8] = a4;
  return v5;
}

uint64_t sub_112378()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7860);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v58 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v59 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C96D0);
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v55 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C96D8);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = __chkstk_darwin(v8);
  v48 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C96E0);
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v45 = &v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20E8);
  v53 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20F0);
  v52 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C96E8);
  v54 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  result = os_feature_enabled_red_sun();
  if (result)
  {
    result = swift_beginAccess();
    v60 = v0;
    v24 = *(v0 + 48);
    if ((v24 & 0xC000000000000001) != 0)
    {

      v25 = sub_14517C();

      v26 = v60;
      if (v25)
      {
        return result;
      }
    }

    else
    {
      v26 = v60;
      if (*(v24 + 16))
      {
        return result;
      }
    }

    v43 = v2;
    v44 = v1;
    v42 = *(v26 + 56);
    v41 = sub_141CBC();
    v61 = v41;
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9750);
    sub_1D4A4(&qword_1C9758, &qword_1C9750);
    sub_14289C();

    swift_beginAccess();
    sub_14257C();
    swift_endAccess();

    sub_141BEC();
    sub_141C2C();
    sub_1D4A4(&qword_1C2100, &qword_1C20F0);
    sub_1D4A4(&qword_1C2108, &qword_1C20E8);
    sub_14278C();
    (*(v53 + 8))(v16, v14);
    (*(v52 + 8))(v19, v17);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_113958;
    *(v28 + 24) = v27;
    sub_1D4A4(&qword_1C9760, &qword_1C96E8);
    sub_14289C();

    (*(v54 + 8))(v22, v20);
    swift_beginAccess();
    sub_14257C();
    swift_endAccess();
    v29 = v60;

    if (*(v29 + 40))
    {
      v61 = *(v29 + 40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9788);
      sub_1D4A4(&unk_1C9790, &qword_1C9788);
      v30 = v45;
      sub_1427BC();

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6848);
      v31 = v49;
      sub_1426AC();
      swift_endAccess();
      sub_1D4A4(&qword_1C97A0, &qword_1C96E0);
      v32 = v47;
      sub_1428BC();
      (*(v46 + 8))(v30, v32);
      v34 = v50;
      v33 = v51;
      (*(v50 + 16))(v48, v31, v51);
      swift_beginAccess();
      sub_1426BC();
      v29 = v60;
      swift_endAccess();
      (*(v34 + 8))(v31, v33);
    }

    v61 = *(v29 + 64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9768);
    sub_1D4A4(&unk_1C9770, &qword_1C9768);
    v35 = v55;
    sub_1427BC();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B30);
    v36 = v59;
    sub_1426AC();
    swift_endAccess();
    sub_1D4A4(&qword_1C9780, &qword_1C96D0);
    v37 = v57;
    sub_1428BC();
    (*(v56 + 8))(v35, v37);
    v38 = v43;
    v39 = v44;
    (*(v43 + 16))(v58, v36, v44);
    swift_beginAccess();
    sub_1426BC();
    swift_endAccess();
    return (*(v38 + 8))(v36, v39);
  }

  return result;
}

uint64_t sub_112E6C(void **a1)
{
  v2 = sub_141C9C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - v8;
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v12)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_144DEC();
      sub_144DEC();
      KeyPath = swift_getKeyPath();
      v19 = swift_getKeyPath();
      v21 = *(v3 + 16);
      v22 = v3 + 16;
      v23 = v12;
      v21(v6, v9, v2);

      sub_1426EC();
      KeyPath = *(v3 + 8);
      KeyPath(v9, v2);

      [v12 fireDate];
      v15 = v14;
      swift_getKeyPath();
      swift_getKeyPath();
      v25 = v15;
      sub_1426EC();
      (*(v3 + 104))(v9, enum case for PlaybackController.SleepTimerStopMode.off(_:), v2);
      sub_113C18();

      v20 = v11;
      v16 = sub_14486C();
      KeyPath(v9, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v25) = (v16 & 1) == 0;
      sub_1426EC();
      v17 = v21;
      v21(v9, v11, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      v17(v6, v9, v2);

      sub_1426EC();
      swift_unknownObjectRelease();
      v18 = KeyPath;
      KeyPath(v9, v2);
      v18(v20, v2);
    }
  }

  return result;
}

void sub_113220(uint64_t a1, uint64_t a2)
{
  v4 = sub_140ABC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (*(a2 + 48) == 2)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 40);
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    v11 = *a2;
    sub_140AAC();
    sub_140A4C();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    if (!a1)
    {
      goto LABEL_8;
    }

    v14 = v10 + (v13 - v11) * v8;
    if (v14 >= v9)
    {
      v14 = v9;
    }

    v15 = sub_F7710(COERCE_UNSIGNED_INT64(round(fmax(v14, 0.0) * 1000.0) / 1000.0), 0);
    if (v15)
    {
      v16 = v15;

      *&v17 = COERCE_DOUBLE(sub_141C7C());
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C97A8);
      v18 = sub_141C9C();
      v19 = *(v18 - 8);
      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_14A710;
      (*(v19 + 104))(v21 + v20, enum case for PlaybackController.SleepTimerStopMode.chapterEnd(_:), v18);
      v29 = *&v17;
      sub_A7558(v21);
      v22 = v29;
      swift_getKeyPath();
      swift_getKeyPath();
      v29 = v22;
      sub_1426EC();

      [v16 startTime];
      v24 = v23;
      [v16 duration];
      v26 = v24 + v25;
      swift_getKeyPath();
      swift_getKeyPath();
      v29 = v26;
      v30 = 0;
      sub_1426EC();
    }

    else
    {
LABEL_8:

      *&v27 = COERCE_DOUBLE(sub_141C7C());
      swift_getKeyPath();
      swift_getKeyPath();
      v29 = *&v27;
      sub_1426EC();
    }
  }
}

double sub_113590@<D0>(float *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t sub_1135B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  return _swift_task_switch(sub_1135D8, 0, 0);
}

uint64_t sub_1135D8()
{
  v0[5] = sub_141C3C();
  v0[6] = &protocol witness table for PlaybackController.SleepTimerCommand;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_141C5C();
  v3 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1136B8;

  return (v3)(v0 + 2, 0);
}

uint64_t sub_1136B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_11380C;
  }

  else
  {
    *(v4 + 96) = a1;
    __swift_destroy_boxed_opaque_existential_0(v4 + 16);
    v5 = sub_1137E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_11380C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SleepTimerController.deinit()
{

  return v0;
}

uint64_t SleepTimerController.__deallocating_deinit()
{
  SleepTimerController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_113918()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_113960()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_113998(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  v7 = a1[7];
  return v2(v3, v6);
}

double sub_1139F8@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_113A78()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t sub_113AF4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_113B80()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

unint64_t sub_113C18()
{
  result = qword_1C2B10;
  if (!qword_1C2B10)
  {
    sub_141C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2B10);
  }

  return result;
}

uint64_t sub_113C80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 89);
  return result;
}

double sub_113D50@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

uint64_t sub_113E20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 69);
  return result;
}

uint64_t sub_113EF0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) == 1)
    {
      return v4 == 1 && v2 == v3;
    }

    return v4 == 2 && LODWORD(v3) == 0;
  }

  else
  {
    if (*(a2 + 4) || ((LODWORD(v3) ^ LODWORD(v2)) & 1) != 0)
    {
      return 0;
    }

    return ((*a2 & 0x100) == 0) ^ ((*a1 & 0x100u) >> 8);
  }
}

unint64_t sub_113F64()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 16) | (*(v0 + 20) << 32);
}

uint64_t sub_11400C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v5 = *(v3 + 16);
  *(a2 + 4) = *(v3 + 20);
  *a2 = v5;
  return result;
}

uint64_t sub_1140EC(uint64_t result)
{
  if (*(v1 + 20) == 255)
  {
    if (BYTE4(result) == 255)
    {
LABEL_3:
      *(v1 + 16) = result;
      *(v1 + 20) = BYTE4(result);
      return result;
    }
  }

  else if (BYTE4(result) != 255)
  {
    if (*(v1 + 20))
    {
      if (*(v1 + 20) == 1)
      {
        if (BYTE4(result) == 1 && *(v1 + 16) == *&result)
        {
          goto LABEL_3;
        }
      }

      else if (BYTE4(result) == 2 && !result)
      {
        goto LABEL_3;
      }
    }

    else if (!BYTE4(result) && ((result ^ *(v1 + 16)) & 1) == 0 && (((result ^ *(v1 + 16)) >> 8) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A3C();
}

uint64_t sub_114288(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 20) = BYTE4(a2);
  return result;
}

float sub_114298@<S0>(uint64_t a1@<X2>, float *a2@<X8>)
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  result = *(a1 + 24);
  *a2 = result;
  return result;
}

_DWORD *sub_114340(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 20) != 255 && (*(a4 + 16) | (*(a4 + 20) << 32)) >> 32 == 1 && *result == *(a4 + 16))
  {
    *(a4 + 16) = *result;
    *(a4 + 20) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_114488()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v1 = *(v0 + 40);
  swift_getKeyPath();
  sub_141A4C();

  if (v1 != *(v0 + 24))
  {
    swift_getKeyPath();
    sub_141A4C();

    if ((*(v0 + 69) & 1) == 0)
    {
      swift_getKeyPath();
      sub_141A4C();

      v2 = *(v0 + 24);
      v3 = *(v0 + 40);
      if (v3 == v2)
      {
        *(v0 + 40) = v2;
        sub_114CBC(v3);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_141A3C();
      }
    }
  }

  swift_getKeyPath();
  sub_141A4C();

  return sub_1425CC();
}

float sub_1146DC()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 24);
}

float sub_11477C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_11484C(float a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;

    return sub_114488();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_1149BC()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();
}

uint64_t sub_114A60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 32);
}

uint64_t sub_114B38(uint64_t result)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 32) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_114CBC(double a1)
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if (*(v1 + 40) != a1)
  {
    swift_getKeyPath();
    sub_141A4C();

    v4 = *(v1 + 24);
    swift_getKeyPath();
    sub_141A4C();

    v5 = *(v1 + 40);
    if (v4 != v5)
    {
      swift_getKeyPath();
      sub_141A4C();

      *&v6 = *(v1 + 40);
      sub_1140EC(v6 | 0x100000000);
      swift_getKeyPath();
      sub_141A4C();

      v8 = *(v1 + 40);
      if (*(v1 + 24) == v8)
      {
        *(v1 + 24) = v8;
        return sub_114488(v7);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_141A3C();
      }
    }
  }

  return result;
}

double sub_114F10()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 40);
}

uint64_t sub_114FB0(double a1)
{
  v3 = *(v1 + 40);
  if (v3 == a1)
  {
    *(v1 + 40) = a1;

    return sub_114CBC(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_1150F0()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 64);
}

uint64_t sub_115190@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_115260(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_115378()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 65);
}

uint64_t sub_115418@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 65);
  return result;
}

uint64_t sub_1154E8(uint64_t result)
{
  if (*(v1 + 65) == (result & 1))
  {
    *(v1 + 65) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_115600()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 66);
}

uint64_t sub_1156A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 66);
  return result;
}

uint64_t sub_115770(uint64_t result)
{
  if (*(v1 + 66) == (result & 1))
  {
    *(v1 + 66) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_115888()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 67);
}

uint64_t sub_115928@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 67);
  return result;
}

uint64_t sub_1159F8(uint64_t result)
{
  if (*(v1 + 67) == (result & 1))
  {
    *(v1 + 67) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_115B10()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 68);
}

uint64_t sub_115BB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 68);
  return result;
}

uint64_t sub_115C80(uint64_t result)
{
  if (*(v1 + 68) == (result & 1))
  {
    *(v1 + 68) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_115D98()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 69);
}

uint64_t sub_115E38(char a1)
{
  if (*(v1 + 69) == (a1 & 1))
  {
    *(v1 + 69) = a1 & 1;
    swift_getKeyPath();
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A4C();

    return sub_1425EC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_115FD0(uint64_t a1, char a2)
{
  *(a1 + 69) = a2;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return sub_1425EC();
}

uint64_t sub_116098()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 80);
}

uint64_t sub_116138@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_116208(uint64_t result)
{
  if (*(v1 + 80) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_11630C()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 88);
}

uint64_t sub_1163AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_11647C(uint64_t result)
{
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_116594()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 89);
}

uint64_t sub_116634(uint64_t result)
{
  if (*(v1 + 89) == (result & 1))
  {
    *(v1 + 89) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_11674C@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(a1 + 89);
  return result;
}

uint64_t sub_1167F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (v5 == *(a4 + 89))
  {
    *(a4 + 89) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  swift_getKeyPath();
  sub_141A6C();

  v8 = *(a4 + 120);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 120) = v10;
    swift_getKeyPath();
    sub_141A5C();
  }

  return result;
}

uint64_t sub_1169E8()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_116A98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_116B44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_116B84(v1, v2);
}

uint64_t sub_116B84(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 96) == a1 && v5 == a2;
      if (v6 || (sub_1453BC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

void *sub_116CF4()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

id sub_116D9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

void sub_116E54(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_116E84(v1);
}

void sub_116E84(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 112);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_11B858();
  v5 = v4;
  v6 = a1;
  v7 = sub_144FFC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 112);
LABEL_8:
  *(v2 + 112) = a1;
}

void sub_117004(uint64_t a1, void *a2)
{
  v2 = *(a1 + 112);
  *(a1 + 112) = a2;
  v3 = a2;
}

uint64_t sub_117038()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 120);
}

uint64_t sub_1170D8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_1171A8(uint64_t result)
{
  if (*(v1 + 120) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_1172B8()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 124);
}

uint64_t sub_117358@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 124);
  return result;
}

uint64_t sub_117428(uint64_t result)
{
  if (*(v1 + 124) == (result & 1))
  {
    *(v1 + 124) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_117540()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 125);
}

uint64_t sub_1175E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 125);
  return result;
}

uint64_t sub_1176B0(uint64_t result)
{
  if (*(v1 + 125) == (result & 1))
  {
    *(v1 + 125) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_1177C8()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 126);
}

uint64_t sub_117868@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 126);
  return result;
}

uint64_t sub_117938(uint64_t result)
{
  if (*(v1 + 126) == (result & 1))
  {
    *(v1 + 126) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_117A50()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();
}

uint64_t sub_117AF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 128);
}

uint64_t sub_117BCC(uint64_t a1)
{
  if (*(v1 + 128) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t NowPlayingPlaybackControlsViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC12NowPlayingUI35NowPlayingPlaybackControlsViewModel___observationRegistrar;
  v2 = sub_141A8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NowPlayingPlaybackControlsViewModel.__deallocating_deinit()
{
  NowPlayingPlaybackControlsViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_117DF0()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 20) = -1;
  sub_141F5C();
  sub_141EDC();
  *(v0 + 24) = v2;
  *(v0 + 32) = sub_141F0C();
  sub_141EDC();
  *(v0 + 40) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C0130);
  swift_allocObject();
  *(v0 + 48) = sub_1425DC();
  *(v0 + 56) = sub_141F0C();
  *(v0 + 64) = 65793;
  *(v0 + 68) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C92C0);
  swift_allocObject();
  *(v0 + 72) = sub_14260C();
  *(v0 + 80) = 2;
  *(v0 + 88) = 0;
  type metadata accessor for NowPlayingSpeedControlsAnimationViewModel(0);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 96) = 0;
  *(v0 + 119) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = xmmword_149810;
  __asm { FMOV            V0.2D, #1.0 }

  *(v4 + 56) = _Q0;
  _s12NowPlayingUI0aB25PlaybackControlsViewModelC22__observationRegistrar33_BBABE4AA5745F1C18638BEFD3E39EDD411Observation0qI0Vvpfi_0();
  *(v1 + 128) = v4;
  _s12NowPlayingUI0aB25PlaybackControlsViewModelC22__observationRegistrar33_BBABE4AA5745F1C18638BEFD3E39EDD411Observation0qI0Vvpfi_0();
  return v1;
}

Swift::Void __swiftcall NowPlayingSpeedControlsAnimationViewModel.showSlider()()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    swift_beginAccess();
    if (*(v0 + 17) == 1)
    {
      *(v0 + 17) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_141A3C();
    }
  }
}

Swift::Void __swiftcall NowPlayingSpeedControlsAnimationViewModel.hideSlider()()
{
  swift_beginAccess();
  if (*(v0 + 17))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }

  else
  {
    *(v0 + 17) = 0;
  }
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.isPreciseControlSliderSupported.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1182E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.isPreciseControlSliderSupported.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_1184EC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

void (*NowPlayingSpeedControlsAnimationViewModel.isPreciseControlSliderSupported.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_1181E0();
  return sub_118678;
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.shouldShowSlider.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t sub_118788@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.shouldShowSlider.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_118A08(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 17) = a2;
  return result;
}

uint64_t sub_118A74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_118AC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

void (*NowPlayingSpeedControlsAnimationViewModel.shouldShowSlider.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_118684();
  return sub_118C54;
}

double NowPlayingSpeedControlsAnimationViewModel.sliderScaleY.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 24);
}

double sub_118D14@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.sliderScaleY.setter(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_118F50(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 24) = a2;
  return result;
}

uint64_t sub_118FA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

void (*NowPlayingSpeedControlsAnimationViewModel.sliderScaleY.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = NowPlayingMediaPlayerController.controlsInteractionTracker.modify();
  return sub_119130;
}

double NowPlayingSpeedControlsAnimationViewModel.sliderOpacity.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 32);
}

double sub_119240@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.sliderOpacity.setter(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_11947C(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 32) = a2;
  return result;
}

uint64_t sub_1194D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

void (*NowPlayingSpeedControlsAnimationViewModel.sliderOpacity.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_11913C();
  return sub_11965C;
}

double NowPlayingSpeedControlsAnimationViewModel.sliderIconsOffset.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 40);
}

double sub_11976C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  result = *(v3 + 40);
  *a2 = result;
  return result;
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.sliderIconsOffset.setter(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_1199A8(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 40) = a2;
  return result;
}

uint64_t sub_1199FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

void (*NowPlayingSpeedControlsAnimationViewModel.sliderIconsOffset.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_119668();
  return sub_119B88;
}

double NowPlayingSpeedControlsAnimationViewModel.sliderIconsOpacity.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 48);
}

double sub_119C98@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  result = *(v3 + 48);
  *a2 = result;
  return result;
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.sliderIconsOpacity.setter(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_119ED4(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 48) = a2;
  return result;
}

uint64_t sub_119F28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  return result;
}

void (*NowPlayingSpeedControlsAnimationViewModel.sliderIconsOpacity.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_119B94();
  return sub_11A0B4;
}

double NowPlayingSpeedControlsAnimationViewModel.buttonsScale.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 56);
}

double sub_11A1C4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  result = *(v3 + 56);
  *a2 = result;
  return result;
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.buttonsScale.setter(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_11A400(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 56) = a2;
  return result;
}

uint64_t sub_11A454()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

void (*NowPlayingSpeedControlsAnimationViewModel.buttonsScale.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_11A0C0();
  return sub_11A5E0;
}

double NowPlayingSpeedControlsAnimationViewModel.buttonsOpacity.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 64);
}

double sub_11A6F0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  result = *(v3 + 64);
  *a2 = result;
  return result;
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.buttonsOpacity.setter(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 64) == a1)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_11A92C(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 64) = a2;
  return result;
}

uint64_t sub_11A980()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

void (*NowPlayingSpeedControlsAnimationViewModel.buttonsOpacity.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_11A5EC();
  return sub_11AB0C;
}

void sub_11AB18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_141A5C();

  free(v1);
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  v2 = sub_141A8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  v2 = sub_141A8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_11ACA8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v1 + 24);
}

void (*sub_11AD80(uint64_t **a1))(void *)
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
  v2[4] = NowPlayingSpeedControlsAnimationViewModel.sliderScaleY.modify(v2);
  return sub_11ADF4;
}

double sub_11ADF8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v1 + 32);
}

void (*sub_11AED0(uint64_t **a1))(void *)
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
  v2[4] = NowPlayingSpeedControlsAnimationViewModel.sliderOpacity.modify(v2);
  return sub_11BD1C;
}

double sub_11AF44()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v1 + 40);
}

void (*sub_11B01C(uint64_t **a1))(void *)
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
  v2[4] = NowPlayingSpeedControlsAnimationViewModel.sliderIconsOffset.modify(v2);
  return sub_11BD1C;
}

double sub_11B090()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v1 + 48);
}

void (*sub_11B168(uint64_t **a1))(void *)
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
  v2[4] = NowPlayingSpeedControlsAnimationViewModel.sliderIconsOpacity.modify(v2);
  return sub_11BD1C;
}

uint64_t sub_11B1DC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_11B290()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v1 + 17);
}

uint64_t sub_11B3B4()
{
  result = sub_141A8C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_11B4C8()
{
  result = sub_141A8C();
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

uint64_t getEnumTagSinglePayload for NowPlayingPlaybackControlsViewModel.PlaybackRateAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NowPlayingPlaybackControlsViewModel.PlaybackRateAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_11B608(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_11B620(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_11B678()
{
  *(*(v0 + 16) + 128) = *(v0 + 24);
}