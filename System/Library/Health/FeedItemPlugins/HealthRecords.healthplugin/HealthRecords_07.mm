uint64_t sub_29D5571E0()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_29D557218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_29D5B4C7C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000029D5BCB10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29D5B4C7C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_29D5572FC(uint64_t a1)
{
  v2 = sub_29D557584();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D557338(uint64_t a1)
{
  v2 = sub_29D557584();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t RemovedCategoryFeedItemData.encode(to:)(void *a1)
{
  sub_29D557A54(0, &qword_2A17A4C80, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29D499EC0(a1, a1[3]);
  sub_29D557584();
  sub_29D5B4DCC();
  v9[15] = 0;
  sub_29D5B1C2C();
  sub_29D557AB8(&qword_2A17A4C90, MEMORY[0x29EDC4018]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for RemovedCategoryFeedItemData();
    v9[14] = 1;
    sub_29D5B1D6C();
    sub_29D557AB8(&qword_2A17A4120, MEMORY[0x29EDC4098]);
    sub_29D5B4C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_29D557584()
{
  result = qword_2A17A4C88;
  if (!qword_2A17A4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4C88);
  }

  return result;
}

uint64_t type metadata accessor for RemovedCategoryFeedItemData()
{
  result = qword_2A1A18160;
  if (!qword_2A1A18160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemovedCategoryFeedItemData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_29D5B1D6C();
  v22 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D5B1C2C();
  v24 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v26 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D557A54(0, &qword_2A17A4C98, MEMORY[0x29EDC9E80]);
  v29 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for RemovedCategoryFeedItemData();
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D557584();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v21 = v10;
  v13 = v12;
  v15 = v24;
  v14 = v25;
  v31 = 0;
  sub_29D557AB8(&qword_2A17A4CA0, MEMORY[0x29EDC4018]);
  v16 = v26;
  sub_29D5B4B6C();
  v17 = *(v15 + 32);
  v20 = v13;
  v17(v13, v16, v28);
  v30 = 1;
  sub_29D557AB8(&qword_2A17A4110, MEMORY[0x29EDC4098]);
  sub_29D5B4B6C();
  (*(v27 + 8))(v9, v29);
  v18 = v20;
  (*(v22 + 32))(v20 + *(v21 + 20), v5, v14);
  sub_29D557B00(v18, v23);
  sub_29D48F668(a1);
  return sub_29D557B64(v18);
}

void sub_29D557A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D557584();
    v7 = a3(a1, &type metadata for RemovedCategoryFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D557AB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D557B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemovedCategoryFeedItemData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D557B64(uint64_t a1)
{
  v2 = type metadata accessor for RemovedCategoryFeedItemData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D557C18()
{
  result = sub_29D5B1C2C();
  if (v1 <= 0x3F)
  {
    result = sub_29D5B1D6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29D557CB0()
{
  result = qword_2A17A4CA8;
  if (!qword_2A17A4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4CA8);
  }

  return result;
}

unint64_t sub_29D557D08()
{
  result = qword_2A17A4CB0;
  if (!qword_2A17A4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4CB0);
  }

  return result;
}

unint64_t sub_29D557D60()
{
  result = qword_2A17A4CB8;
  if (!qword_2A17A4CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4CB8);
  }

  return result;
}

uint64_t sub_29D557DB4()
{
  v0 = sub_29D5B200C();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x29EDB9C70];
  v5 = MEMORY[0x29EDC9C68];
  sub_29D55D86C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_29D5B0EFC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_29D5B1FBC();
  v10 = sub_29D5B2A0C();
  v12 = v11;
  (*(v1 + 8))(v3, v0);
  result = sub_29D55DB38(v8, &qword_2A1A19588, v4, v5, sub_29D55D86C);
  qword_2A17A4CC0 = v10;
  *algn_2A17A4CC8 = v12;
  return result;
}

uint64_t sub_29D557FC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___factory;
  swift_beginAccess();
  sub_29D55DC2C(v1 + v4, &v9, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
  if (v10)
  {
    return sub_29D497868(&v9, a1);
  }

  sub_29D55DCB0(&v9, &unk_2A17A4DB0, &unk_2A17A4570, MEMORY[0x29EDC4218]);
  v6 = sub_29D5B21EC();
  v7 = sub_29D5B21DC();
  v8 = MEMORY[0x29EDC4178];
  a1[3] = v6;
  a1[4] = v8;
  *a1 = v7;
  sub_29D48F564(a1, &v9);
  swift_beginAccess();
  sub_29D4B9800(&v9, v2 + v4);
  return swift_endAccess();
}

id sub_29D5580C8()
{
  v1 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D558170()
{
  sub_29D5B2D5C();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 labelColor];
  [v2 setTextColor_];

  v4 = *MEMORY[0x29EDC80E0];
  sub_29D5B2D4C();
  sub_29D5B2D3C();
  [v2 setNumberOfLines_];
  [v2 setLineBreakMode_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  return v2;
}

id sub_29D558260()
{
  v1 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView;
  v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView);
  }

  else
  {
    v4 = v0;
    sub_29D5B2D5C();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 secondaryLabelColor];
    [v7 setTextColor_];

    v9 = *MEMORY[0x29EDC80F8];
    sub_29D5B2D4C();
    sub_29D5B2D3C();
    [v7 setNumberOfLines_];
    [v7 setLineBreakMode_];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];

    v10 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_29D5583A8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29D558408()
{
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() configurationWithFont:result scale:1];
    v3 = sub_29D5B3E1C();
    v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

    v5 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v6 = [objc_opt_self() tertiaryLabelColor];
    [v5 setTintColor_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D55858C()
{
  v1 = v0;
  v79.receiver = v0;
  v79.super_class = type metadata accessor for ClinicalSharingFeedItemViewController();
  objc_msgSendSuper2(&v79, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = sub_29D5580C8();
  [v6 addSubview_];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  v10 = sub_29D558150();
  [v9 addSubview_];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  v13 = sub_29D558260();
  [v12 addSubview_];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  v16 = sub_29D558388();
  [v15 addSubview_];

  sub_29D502718(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29D5BA820;
  v18 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView;
  v19 = [*&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView] widthAnchor];
  v20 = [v19 constraintEqualToConstant_];

  *(v17 + 32) = v20;
  v21 = [*&v1[v18] heightAnchor];
  v22 = [v21 constraintEqualToConstant_];

  *(v17 + 40) = v22;
  v23 = [*&v1[v18] leadingAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintEqualToAnchor:v26 constant:20.0];
  *(v17 + 48) = v27;
  v28 = [*&v1[v18] centerYAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  v31 = [v29 centerYAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v17 + 56) = v32;
  v33 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___titleView;
  v34 = [*&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___titleView] leadingAnchor];
  v35 = [*&v1[v18] trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:16.0];

  *(v17 + 64) = v36;
  v37 = [*&v1[v33] trailingAnchor];
  v77 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___disclosureIndicator;
  v38 = [*&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___disclosureIndicator] leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-16.0];

  *(v17 + 72) = v39;
  v40 = [*&v1[v33] topAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 &selRef:v43 setSound:10.0 + 6];
  *(v17 + 80) = v44;
  v45 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView;
  v46 = [*&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView] leadingAnchor];
  v47 = [*&v1[v33] leadingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v17 + 88) = v48;
  v49 = [*&v1[v45] trailingAnchor];
  v50 = [*&v1[v33] trailingAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v17 + 96) = v51;
  v52 = [*&v1[v45] topAnchor];
  v53 = [*&v1[v33] bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:2.0];

  *(v17 + 104) = v54;
  v55 = [*&v1[v45] bottomAnchor];
  v56 = [v1 view];
  if (!v56)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v57 = v56;
  v58 = [v56 bottomAnchor];

  v59 = [v55 constraintEqualToAnchor:v58 constant:-10.0];
  *(v17 + 112) = v59;
  v60 = [*&v1[v77] centerYAnchor];
  v61 = [v1 view];
  if (!v61)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v62 = v61;
  v63 = [v61 centerYAnchor];

  v64 = [v60 constraintEqualToAnchor_];
  *(v17 + 120) = v64;
  v65 = [*&v1[v77] trailingAnchor];
  v66 = [v1 view];
  if (!v66)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v67 = v66;
  v68 = objc_opt_self();
  v69 = [v67 trailingAnchor];

  v70 = [v65 constraintEqualToAnchor:v69 constant:-22.0];
  *(v17 + 128) = v70;
  sub_29D48F51C(0, &qword_2A17A3F80);
  v71 = sub_29D5B401C();

  [v68 activateConstraints_];

  v72 = *&v1[v77];
  type metadata accessor for UILayoutPriority(0);
  sub_29D55DD20(&unk_2A17A4DC0, type metadata accessor for UILayoutPriority);
  v73 = v72;
  sub_29D5B372C();
  LODWORD(v74) = v78;
  [v73 setContentHuggingPriority:0 forAxis:v74];

  v75 = *&v1[v77];
  sub_29D5B372C();
  LODWORD(v76) = v78;
  [v75 setContentHuggingPriority:1 forAxis:v76];

  if (v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_shouldUpdateViewAtViewDidLoad] == 1)
  {
    sub_29D559A40();
  }
}

void sub_29D558EE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  v81 = v2;
  v82 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v78 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v74 - v7;
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v79 = &v74 - v10;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v74 - v11;
  v13 = type metadata accessor for ClinicalSharingFeedItemData();
  v77 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v75 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
  v16 = MEMORY[0x2A1C7C4A8](v15 - 8);
  v76 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v74 - v18;
  v20 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_context;
  swift_beginAccess();
  v21 = MEMORY[0x29EDC2808];
  sub_29D55DC2C(v1 + v20, v83, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  v22 = v84;
  sub_29D55DCB0(v83, &qword_2A1A19460, &qword_2A1A19470, v21);
  if (v22)
  {
    v74 = v12;
    sub_29D55DC2C(v1 + v20, v83, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
    v23 = v84;
    if (v84)
    {
      v24 = sub_29D499EC0(v83, v84);
      v25 = *(v23 - 8);
      MEMORY[0x2A1C7C4A8](v24);
      v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v27);
      v28 = sub_29D5B317C();
      v30 = v29;
      (*(v25 + 8))(v27, v23);
      sub_29D48F668(v83);
      if (v30 >> 60 == 15)
      {
        v31 = v79;
        sub_29D5B36DC();
        v32 = sub_29D5B370C();
        v33 = sub_29D5B427C();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v83[0] = v35;
          *v34 = 136315138;
          v36 = sub_29D5B4DFC();
          v38 = sub_29D501890(v36, v37, v83);

          *(v34 + 4) = v38;
          _os_log_impl(&dword_29D48C000, v32, v33, "%s userData nil", v34, 0xCu);
          sub_29D48F668(v35);
          MEMORY[0x29ED5FB80](v35, -1, -1);
          MEMORY[0x29ED5FB80](v34, -1, -1);
        }

        (*(v82 + 8))(v31, v81);
        return;
      }

      sub_29D5B0BDC();
      swift_allocObject();
      sub_29D5B0BCC();
      sub_29D55DD20(&qword_2A17A4DA8, type metadata accessor for ClinicalSharingFeedItemData);
      sub_29D5B0BBC();
      v46 = v28;

      v47 = v77;
      (*(v77 + 56))(v19, 0, 1, v13);
      v48 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
      swift_beginAccess();
      sub_29D55DB98(v19, v1 + v48);
      swift_endAccess();
      v49 = v1 + v48;
      v50 = v76;
      sub_29D55D774(v49, v76);
      if ((*(v47 + 48))(v50, 1, v13) == 1)
      {
        sub_29D55DB38(v50, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68], sub_29D55D86C);
        v51 = v74;
        sub_29D5B36DC();
        v52 = sub_29D5B370C();
        v53 = sub_29D5B427C();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v83[0] = v55;
          *v54 = 136315138;
          v56 = sub_29D5B4DFC();
          v58 = v30;
          v59 = sub_29D501890(v56, v57, v83);

          *(v54 + 4) = v59;
          _os_log_impl(&dword_29D48C000, v52, v53, "%s Feed item data nil", v54, 0xCu);
          sub_29D48F668(v55);
          MEMORY[0x29ED5FB80](v55, -1, -1);
          MEMORY[0x29ED5FB80](v54, -1, -1);
          v60 = v28;
          v61 = v58;
        }

        else
        {
          v60 = v28;
          v61 = v30;
        }

        sub_29D4A96BC(v60, v61);

        (*(v82 + 8))(v51, v81);
        return;
      }

      v62 = v75;
      sub_29D55D808(v50, v75);
      sub_29D55DC2C(v1 + v20, v83, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
      v63 = v84;
      if (v84)
      {
        v64 = sub_29D499EC0(v83, v84);
        v65 = *(v63 - 8);
        MEMORY[0x2A1C7C4A8](v64);
        v67 = &v74 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v65 + 16))(v67);
        v68 = sub_29D5B314C();
        (*(v65 + 8))(v67, v63);
        sub_29D5B0E8C();
        v69 = objc_allocWithZone(MEMORY[0x29EDBADC8]);
        v70 = sub_29D5B3E1C();

        v71 = [v69 initForClinicalAccountIdentifier_];

        v72 = [objc_allocWithZone(MEMORY[0x29EDBADC0]) initWithHealthStore:v68 recipientIdentifier:v71];
        sub_29D48F668(v83);
        [v72 addObserver_];
        sub_29D4A96BC(v46, v30);
        sub_29D513964(v62);
        v73 = *(v1 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_authStore);
        *(v1 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_authStore) = v72;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_29D5B36DC();
  v39 = sub_29D5B370C();
  v40 = sub_29D5B427C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v83[0] = v42;
    *v41 = 136315138;
    v43 = sub_29D5B4DFC();
    v45 = sub_29D501890(v43, v44, v83);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_29D48C000, v39, v40, "%s context nil", v41, 0xCu);
    sub_29D48F668(v42);
    MEMORY[0x29ED5FB80](v42, -1, -1);
    MEMORY[0x29ED5FB80](v41, -1, -1);
  }

  (*(v82 + 8))(v8, v81);
}

uint64_t sub_29D559A40()
{
  v1 = v0;
  v45[1] = swift_getObjectType();
  v49 = sub_29D5B371C();
  v47 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v3 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B200C();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v48 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29D55D86C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v46 = v45 - v8;
  sub_29D55D86C(0, &unk_2A1A19450, MEMORY[0x29EDCA398], v6);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v45 - v10;
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, v6);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = v45 - v13;
  v15 = type metadata accessor for ClinicalSharingFeedItemData();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v19 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = v45 - v20;
  v22 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
  swift_beginAccess();
  sub_29D55D774(v1 + v22, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_29D55DB38(v14, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68], sub_29D55D86C);
    sub_29D5B36DC();
    v23 = sub_29D5B370C();
    v24 = sub_29D5B427C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v52 = v26;
      *v25 = 136315138;
      v27 = sub_29D5B4DFC();
      v29 = sub_29D501890(v27, v28, &v52);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_29D48C000, v23, v24, "%s Feed item data nil", v25, 0xCu);
      sub_29D48F668(v26);
      MEMORY[0x29ED5FB80](v26, -1, -1);
      MEMORY[0x29ED5FB80](v25, -1, -1);
    }

    return (*(v47 + 8))(v3, v49);
  }

  else
  {
    sub_29D55D808(v14, v21);
    v31 = sub_29D5B410C();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    sub_29D513900(v21, v19);
    sub_29D5B40EC();
    v32 = v1;
    v33 = sub_29D5B40DC();
    v34 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v35 = (v17 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = MEMORY[0x29EDCA390];
    *(v36 + 16) = v33;
    *(v36 + 24) = v37;
    sub_29D55D808(v19, v36 + v34);
    *(v36 + v35) = v32;
    sub_29D57657C(0, 0, v11, &unk_29D5BAA10, v36);

    v38 = sub_29D558150();
    v39 = sub_29D5B3E1C();
    [v38 setText_];

    v40 = sub_29D558260();
    v41 = sub_29D5B0EFC();
    v42 = v46;
    (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
    v43 = v48;
    sub_29D5B1FDC();
    sub_29D5B2A0C();
    (*(v50 + 8))(v43, v51);
    sub_29D55DB38(v42, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68], sub_29D55D86C);
    v44 = sub_29D5B3E1C();

    [v40 setText_];

    sub_29D55B00C();
    sub_29D55B334();
    return sub_29D513964(v21);
  }
}

uint64_t sub_29D55A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_29D5B371C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_29D55D86C(0, &qword_2A17A4430, MEMORY[0x29EDC3EE0], MEMORY[0x29EDC9C68]);
  v5[7] = swift_task_alloc();
  v7 = sub_29D5B0EDC();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v8 = sub_29D5B1A6C();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = sub_29D5B40EC();
  v5[17] = sub_29D5B40DC();
  v10 = sub_29D5B40CC();
  v5[18] = v10;
  v5[19] = v9;

  return MEMORY[0x2A1C73D48](sub_29D55A37C, v10, v9);
}

uint64_t sub_29D55A37C()
{
  *(v0 + 160) = sub_29D5B208C();
  sub_29D5B207C();
  type metadata accessor for ClinicalSharingFeedItemData();
  *(v0 + 168) = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_preferredIconSize;
  sub_29D5B205C();

  return MEMORY[0x2A1C73D48](sub_29D55A438, 0, 0);
}

uint64_t sub_29D55A438()
{
  *(v0 + 176) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D55A4C4, v2, v1);
}

uint64_t sub_29D55A4C4()
{

  v1 = sub_29D5580C8();
  v2 = sub_29D5B1A5C();
  [v1 setImage_];

  v3 = *(v0 + 144);
  v4 = *(v0 + 152);

  return MEMORY[0x2A1C73D48](sub_29D55A568, v3, v4);
}

uint64_t sub_29D55A568()
{
  v1 = v0[21];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v4 + 16);
  v0[23] = v7;
  v0[24] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);
  v0[25] = sub_29D5B207C();
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_29D55A648;
  v9 = v0[7];
  v10 = v0[2];

  return MEMORY[0x2A1C65D58](v9, v10, v6 + v1);
}

uint64_t sub_29D55A648()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2A1C73D48](sub_29D55A78C, v3, v2);
}

uint64_t sub_29D55A78C()
{
  v36 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[23];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[8];

    sub_29D55DB38(v3, &qword_2A17A4430, MEMORY[0x29EDC3EE0], MEMORY[0x29EDC9C68], sub_29D55D86C);
    sub_29D5B36DC();
    v4(v6, v5, v7);
    v8 = sub_29D5B370C();
    v9 = sub_29D5B427C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[10];
    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[5];
    v33 = v0[6];
    v34 = v0[11];
    v32 = v0[4];
    if (v10)
    {
      v28 = v9;
      v18 = swift_slowAlloc();
      v31 = v12;
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315138;
      sub_29D55DD20(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
      v29 = v13;
      v30 = v11;
      v20 = sub_29D5B4C4C();
      v22 = v21;
      v23 = *(v16 + 8);
      v23(v14, v15);
      v24 = sub_29D501890(v20, v22, &v35);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_29D48C000, v8, v28, "Error retrieving logo for account identifier: %s", v18, 0xCu);
      sub_29D48F668(v19);
      MEMORY[0x29ED5FB80](v19, -1, -1);
      MEMORY[0x29ED5FB80](v18, -1, -1);

      (*(v17 + 8))(v33, v32);
      v23(v34, v15);
      (*(v31 + 8))(v30, v29);
    }

    else
    {

      v25 = *(v16 + 8);
      v25(v14, v15);
      (*(v17 + 8))(v33, v32);
      v25(v34, v15);
      (*(v12 + 8))(v11, v13);
    }

    v26 = v0[1];

    return v26();
  }

  else
  {
    (*(v2 + 32))(v0[14], v3, v1);

    return MEMORY[0x2A1C73D48](sub_29D55AB44, 0, 0);
  }
}

uint64_t sub_29D55AB44()
{
  *(v0 + 216) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D55ABD0, v2, v1);
}

uint64_t sub_29D55ABD0()
{
  v1 = v0[3];

  sub_29D55AD84(v1);
  v2 = v0[18];
  v3 = v0[19];

  return MEMORY[0x2A1C73D48](sub_29D55AC80, v2, v3);
}

uint64_t sub_29D55AC80()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];

  v8 = *(v4 + 8);
  v8(v1, v3);
  (*(v7 + 8))(v5, v6);
  v8(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D55AD84(uint64_t a1)
{
  v19 = a1;
  v20 = sub_29D5B420C();
  v1 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_29D5B1A1C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v19 - v9;
  v11 = sub_29D5580C8();
  v12 = sub_29D5B1A5C();
  [v11 setImage_];

  sub_29D5B1A3C();
  (*(v5 + 104))(v8, *MEMORY[0x29EDC3EC0], v4);
  LOBYTE(v11) = sub_29D5B1A0C();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  v14 = *(v19 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView);
  if (v11)
  {
    *v3 = 0x4008000000000000;
    v15 = MEMORY[0x29EDC4278];
  }

  else
  {
    v15 = MEMORY[0x29EDC4280];
  }

  v16 = v20;
  (*(v1 + 104))(v3, *v15, v20);
  v17 = v14;
  sub_29D5B41FC();

  return (*(v1 + 8))(v3, v16);
}

void sub_29D55B00C()
{
  v1 = v0;
  v15 = sub_29D5B3E5C();
  v16 = v2;

  MEMORY[0x29ED5E510](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x29ED5E510](0x6E696F6774754F2ELL, 0xE900000000000067);

  MEMORY[0x29ED5E510](0x656469766F72502ELL, 0xE900000000000072);

  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = sub_29D5B3E1C();
    [v4 setAccessibilityIdentifier_];

    v6 = &v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_baseIdentifier];
    swift_beginAccess();
    *v6 = v15;
    v6[1] = v16;

    v7 = sub_29D5580C8();

    MEMORY[0x29ED5E510](0x6567616D492ELL, 0xE600000000000000);
    v8 = sub_29D5B3E1C();

    [v7 setAccessibilityIdentifier_];

    v9 = sub_29D558150();

    MEMORY[0x29ED5E510](0x746E65746E6F432ELL, 0xEC00000077656956);
    v10 = sub_29D5B3E1C();

    [v9 setAccessibilityIdentifier_];

    v11 = sub_29D558260();

    MEMORY[0x29ED5E510](0x746E65746E6F432ELL, 0xEC00000077656956);
    v12 = sub_29D5B3E1C();

    [v11 setAccessibilityIdentifier_];

    v13 = sub_29D558388();

    MEMORY[0x29ED5E510](0x6F7373656363412ELL, 0xEA00000000007972);

    v14 = sub_29D5B3E1C();

    [v13 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

id sub_29D55B334()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29D5B200C();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29D55D86C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_29D5B0EDC();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, v5);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for ClinicalSharingFeedItemData();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (result && *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_authStore])
  {
    v37 = *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_authStore];
    v38 = v17;
    v19 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
    swift_beginAccess();
    sub_29D55D774(&v1[v19], v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      return sub_29D55DB38(v13, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68], sub_29D55D86C);
    }

    else
    {
      v20 = v38;
      sub_29D55D808(v13, v38);
      if (*(v20 + *(v14 + 24)) == 4)
      {
        v21 = v37;
        v22 = sub_29D558260();
        v23 = sub_29D5B0EFC();
        (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
        sub_29D5B1FDC();
        v24 = sub_29D5B2A0C();
        v26 = v25;
        (*(v40 + 8))(v4, v41);
        sub_29D55DB38(v8, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68], sub_29D55D86C);
        v27 = MEMORY[0x29ED5E4B0](v24, v26);

        [v22 setAttributedText_];

        v28 = v20;
      }

      else
      {
        v29 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v30 = v39;
        (*(v39 + 16))(&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v9);
        v31 = v20;
        v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = v29;
        (*(v30 + 32))(v33 + v32, &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
        *(v33 + ((v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
        aBlock[4] = sub_29D55D8D0;
        aBlock[5] = v33;
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_29D54B08C;
        aBlock[3] = &unk_2A242A390;
        v34 = _Block_copy(aBlock);
        v35 = v37;

        [v35 fetchSharingAuthorizationsWithCompletion_];

        _Block_release(v34);
        v28 = v31;
      }

      return sub_29D513964(v28);
    }
  }

  return result;
}

void sub_29D55B940(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v71 = a4;
  v61 = a1;
  v6 = sub_29D5B3C8C();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v64 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_29D5B3CAC();
  v63 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v70 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClinicalSharingFeedItemData();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v58 - v16;
  v18 = sub_29D5B0EDC();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v58 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v59 = a2;
    v27 = v18;
    v28 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
    swift_beginAccess();
    sub_29D55D774(v26 + v28, v17);
    if ((*(v12 + 48))(v17, 1, v11))
    {

      sub_29D55DB38(v17, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68], sub_29D55D86C);
      return;
    }

    sub_29D513900(v17, v14);
    sub_29D55DB38(v17, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68], sub_29D55D86C);
    v29 = v27;
    v30 = v19;
    (*(v19 + 16))(v22, v14, v29);
    sub_29D513964(v14);
    v31 = *(v19 + 32);
    v32 = v24;
    v31(v24, v22, v29);
    if (sub_29D5B0EAC())
    {
      v33 = v59;
      if (v59)
      {
        v34 = v59;
        v35 = v70;
        sub_29D5B36CC();
        v36 = v33;
        v37 = sub_29D5B370C();
        v38 = sub_29D5B427C();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          aBlock[0] = v40;
          *v39 = 136315394;
          v41 = sub_29D5B4DFC();
          v71 = v29;
          v43 = v32;
          v44 = sub_29D501890(v41, v42, aBlock);

          *(v39 + 4) = v44;
          *(v39 + 12) = 2080;
          v72 = v33;
          v45 = v33;
          sub_29D4A02FC(0, &qword_2A1A1A410);
          v46 = sub_29D5B3E7C();
          v48 = sub_29D501890(v46, v47, aBlock);

          *(v39 + 14) = v48;
          _os_log_impl(&dword_29D48C000, v37, v38, "[%s] Failed to fetch autorization identifiers: %s", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED5FB80](v40, -1, -1);
          MEMORY[0x29ED5FB80](v39, -1, -1);

          (*(v68 + 8))(v70, v69);
          (*(v30 + 8))(v43, v71);
          return;
        }

        (*(v68 + 8))(v35, v69);
      }

      else
      {
        v49 = MEMORY[0x29EDCA190];
        if (v61)
        {
          v50 = v61;
        }

        else
        {
          v50 = MEMORY[0x29EDCA190];
        }

        sub_29D48F51C(0, &qword_2A1A1A420);

        v71 = sub_29D5B43FC();
        v51 = swift_allocObject();
        *(v51 + 16) = v26;
        *(v51 + 24) = v50;
        aBlock[4] = sub_29D55D988;
        aBlock[5] = v51;
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_29D49ACEC;
        aBlock[3] = &unk_2A242A3E0;
        v52 = _Block_copy(aBlock);
        v53 = v26;

        v54 = v62;
        sub_29D5B3C9C();
        aBlock[0] = v49;
        sub_29D55DD20(&qword_2A1A19700, MEMORY[0x29EDCA248]);
        sub_29D55D86C(0, &qword_2A1A196B0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
        sub_29D55D990();
        v55 = v64;
        v56 = v67;
        sub_29D5B47CC();
        v57 = v71;
        MEMORY[0x29ED5E9E0](0, v54, v55, v52);
        _Block_release(v52);

        (*(v66 + 8))(v55, v56);
        (*(v63 + 8))(v54, v65);
      }

      (*(v30 + 8))(v32, v29);
    }

    else
    {
      (*(v30 + 8))(v24, v29);
    }
  }
}

void sub_29D55C200(uint64_t a1, unint64_t a2)
{
  v3 = sub_29D558260();
  if (qword_2A17A39F0 != -1)
  {
    swift_once();
  }

  sub_29D55CE30(0, &qword_2A1A195B0, &qword_2A1A19590, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D5B62A0;
  if (a2 >> 62)
  {
    v7 = v4;
    v5 = sub_29D5B485C();
    v4 = v7;
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x29EDC9C10];
  *(v4 + 56) = MEMORY[0x29EDC9BA8];
  *(v4 + 64) = v6;
  *(v4 + 32) = v5;
  sub_29D5B3E2C();

  v8 = sub_29D5B3E1C();

  [v3 setText_];
}

id sub_29D55C378(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___factory];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = &v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_baseIdentifier];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_shouldUpdateViewAtViewDidLoad] = 0;
  v8 = &v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_context];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = &v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_preferredIconSize];
  *v9 = xmmword_29D5BA830;
  *(v9 + 2) = 0x4008000000000000;
  v10 = *MEMORY[0x29EDC3ED0];
  v11 = sub_29D5B1A2C();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  v12 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
  v13 = type metadata accessor for ClinicalSharingFeedItemData();
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  *&v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_authStore] = 0;
  *&v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView] = 0;
  *&v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___titleView] = 0;
  *&v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView] = 0;
  *&v3[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___disclosureIndicator] = 0;
  if (a2)
  {
    v14 = sub_29D5B3E1C();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for ClinicalSharingFeedItemViewController();
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, v14, a3);

  return v15;
}

id sub_29D55C5A4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___factory];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = &v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_baseIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_shouldUpdateViewAtViewDidLoad] = 0;
  v5 = &v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_context];
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = &v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_preferredIconSize];
  *v6 = xmmword_29D5BA830;
  *(v6 + 2) = 0x4008000000000000;
  v7 = *MEMORY[0x29EDC3ED0];
  v8 = sub_29D5B1A2C();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  v9 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
  v10 = type metadata accessor for ClinicalSharingFeedItemData();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_authStore] = 0;
  *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___iconView] = 0;
  *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___titleView] = 0;
  *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___subtitleView] = 0;
  *&v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController____lazy_storage___disclosureIndicator] = 0;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ClinicalSharingFeedItemViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_29D55C76C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalSharingFeedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ClinicalSharingFeedItemViewController()
{
  result = qword_2A17A4D18;
  if (!qword_2A17A4D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D55C96C()
{
  sub_29D5B1A2C();
  if (v0 <= 0x3F)
  {
    sub_29D55D86C(319, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29D55CA94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_context;
  swift_beginAccess();
  return sub_29D55DC2C(v1 + v3, a1, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
}

uint64_t sub_29D55CB04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_context;
  swift_beginAccess();
  sub_29D4A92B4(a1, &v1[v3]);
  swift_endAccess();
  sub_29D558EE0();
  if ([v1 isViewLoaded])
  {
    sub_29D559A40();
    return sub_29D55DCB0(a1, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  }

  else
  {
    result = sub_29D55DCB0(a1, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
    v1[OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_shouldUpdateViewAtViewDidLoad] = 1;
  }

  return result;
}

uint64_t (*sub_29D55CBD4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D55CC38;
}

uint64_t sub_29D55CC38(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    sub_29D558EE0();
    result = [v5 isViewLoaded];
    if (result)
    {
      return sub_29D559A40();
    }

    else
    {
      *(*(a1 + 24) + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_shouldUpdateViewAtViewDidLoad) = 1;
    }
  }

  return result;
}

uint64_t sub_29D55CCC0()
{
  v1 = (*v0 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_29D55CD1C(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_29D55CE30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D4A02FC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D55CE98(void *a1)
{
  v19[6] = a1;
  v2 = sub_29D5B371C();
  v19[2] = *(v2 - 1);
  v19[3] = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v19[1] = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B20DC();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D557FC8(v22);
  v19[4] = v22[4];
  v19[5] = sub_29D499EC0(v22, v22[3]);
  sub_29D5B1CBC();
  v8 = sub_29D5B1C8C();
  v9 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_context;
  swift_beginAccess();
  v19[0] = v1;
  sub_29D55DC2C(v1 + v9, v20, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808]);
  v10 = v21;
  if (v21)
  {
    v11 = sub_29D499EC0(v20, v21);
    v12 = *(v10 - 8);
    MEMORY[0x2A1C7C4A8](v11);
    v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_29D5B314C();
    (*(v12 + 8))(v14, v10);
    v16 = sub_29D5B1C9C();

    sub_29D48F668(v20);
    (*(v5 + 104))(v7, *MEMORY[0x29EDC4148], v4);
    v17 = sub_29D5B24CC();
    (*(v5 + 8))(v7, v4);

    sub_29D48F668(v22);
    v18 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v19[0] presentViewController:v18 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D55D3B0(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v25[-1] - v8;
  v10 = type metadata accessor for ClinicalSharingFeedItemData();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC13HealthRecords37ClinicalSharingFeedItemViewController_clinicalSharingFeedItemData;
  swift_beginAccess();
  sub_29D55D774(v1 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29D55DB38(v9, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68], sub_29D55D86C);
    sub_29D5B36DC();
    v15 = sub_29D5B370C();
    v16 = sub_29D5B427C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136315138;
      v19 = sub_29D5B4DFC();
      v21 = sub_29D501890(v19, v20, v25);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_29D48C000, v15, v16, "%s Feed item data nil", v17, 0xCu);
      sub_29D48F668(v18);
      MEMORY[0x29ED5FB80](v18, -1, -1);
      MEMORY[0x29ED5FB80](v17, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_29D55D808(v9, v13);
    v25[3] = sub_29D48F51C(0, &qword_2A17A43C0);
    v25[0] = a1;
    v23 = a1;
    sub_29D55CE98(v13);
    sub_29D513964(v13);
    return sub_29D55DB38(v25, &qword_2A17A4DA0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D502718);
  }
}

uint64_t sub_29D55D774(uint64_t a1, uint64_t a2)
{
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D55D808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingFeedItemData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D55D86C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D55D8D0(uint64_t a1, void *a2)
{
  v5 = *(sub_29D5B0EDC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_29D55B940(a1, a2, v8, v2 + v6, v7);
}

unint64_t sub_29D55D990()
{
  result = qword_2A1A196A0;
  if (!qword_2A1A196A0)
  {
    sub_29D55D86C(255, &qword_2A1A196B0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A196A0);
  }

  return result;
}

uint64_t sub_29D55DA18(uint64_t a1)
{
  v4 = *(type metadata accessor for ClinicalSharingFeedItemData() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D4E7B8C;

  return sub_29D55A158(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_29D55DB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D55DB98(uint64_t a1, uint64_t a2)
{
  sub_29D55D86C(0, &qword_2A17A4A20, type metadata accessor for ClinicalSharingFeedItemData, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D55DC2C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_29D55CE30(0, a3, a4, a5, MEMORY[0x29EDC9C68]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_29D55DCB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29D55CE30(0, a2, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29D55DD20(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_29D55DD78(uint64_t a1)
{
  v82 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext();
  v80 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v81 = v4;
  v89 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55F6DC(0, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v75 = &v67 - v6;
  v76 = sub_29D5B43DC();
  v74 = *(v76 - 8);
  MEMORY[0x2A1C7C4A8](v76);
  v72 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F7688();
  v73 = v8;
  v71 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v70 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55F364();
  v79 = v10;
  v78 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v77 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55F430();
  v87 = v12;
  v85 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v83 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D55F540();
  v88 = v14;
  v86 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v84 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29D5B13CC();
  v68 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_29D5B13EC();
  v18 = *(v67 - 8);
  MEMORY[0x2A1C7C4A8](v67);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords28ConceptSharableModelPipeline_context);
  sub_29D48F51C(0, &qword_2A1A162E0);
  v21 = [swift_getObjCClassFromMetadata() diagnosticTestResultTypeForIdentifier_];
  v96 = v21;
  v22 = MEMORY[0x29EDCA190];
  v94[0] = MEMORY[0x29EDCA190];
  if (v21)
  {
    v23 = v21;
    MEMORY[0x29ED5E5E0]();
    if (*((v94[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D5B408C();
    }

    sub_29D5B40AC();
    v22 = v94[0];
  }

  sub_29D55F7C8(&v96, &unk_2A1A162D8, &qword_2A1A162E0, 0x29EDBAB68, sub_29D55F274);
  v90 = a1;
  sub_29D5B143C();
  sub_29D55F6DC(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v24 = sub_29D5B104C();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v91 = xmmword_29D5B62A0;
  *(v27 + 16) = xmmword_29D5B62A0;
  (*(v25 + 104))(v27 + v26, *MEMORY[0x29EDC36E0], v24);
  if (v22 >> 62)
  {
    sub_29D48F51C(0, &qword_2A1A16370);

    sub_29D5B4A4C();
  }

  else
  {

    sub_29D5B4C8C();
    sub_29D48F51C(0, &qword_2A1A16370);
  }

  (v68)[13](v17, *MEMORY[0x29EDC38A0], v69);
  sub_29D5B13DC();
  (*(v18 + 32))(v92 + OBJC_IVAR____TtC13HealthRecords28ConceptSharableModelPipeline_domain, v20, v67);
  sub_29D5B1CBC();
  v28 = sub_29D5B1C8C();
  v29 = v90;
  sub_29D5B140C();
  sub_29D499EC0(v94, v95);
  v30 = sub_29D5B136C();
  v31 = [v30 profileIdentifier];

  sub_29D5B1C6C();
  sub_29D48F668(v94);
  v32 = MEMORY[0x29EDC9E90];
  sub_29D55F6DC(0, &qword_2A1A161E8, MEMORY[0x29EDC4098], MEMORY[0x29EDC9E90]);
  v33 = sub_29D5B1D6C();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v91;
  (*(v34 + 104))(v36 + v35, *MEMORY[0x29EDC4068], v33);
  v37 = sub_29D5B260C();
  v69 = v37;

  v38 = sub_29D5B146C();
  v68 = v38;
  v39 = sub_29D5B1C8C();
  v40 = v29;
  sub_29D5B140C();
  sub_29D499EC0(v94, v95);
  v41 = sub_29D5B136C();
  v42 = [v41 profileIdentifier];

  sub_29D5B1C3C();
  sub_29D48F668(v94);
  v43 = sub_29D5B363C();

  v93 = v37;
  v94[0] = v43;
  v44 = MEMORY[0x29EDC82A0];
  sub_29D55F8DC(0, &qword_2A1A167F8, MEMORY[0x29EDC82A0]);
  sub_29D4F77D8();
  sub_29D55F2CC(&qword_2A1A16800, &qword_2A1A167F8, v44);
  sub_29D55F31C(&qword_2A1A166A0, sub_29D4F77D8);
  v45 = v70;
  sub_29D5B3B6C();

  v46 = v72;
  sub_29D5B43CC();
  v94[0] = v38;
  v47 = sub_29D5B43BC();
  v48 = v75;
  (*(*(v47 - 8) + 56))(v75, 1, 1, v47);
  sub_29D48F51C(0, &qword_2A1A1A420);
  sub_29D55F31C(&qword_2A1A172E0, sub_29D4F7688);
  sub_29D5127AC();
  v49 = v77;
  v50 = v73;
  sub_29D5B3C2C();
  sub_29D55F7C8(v48, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68], sub_29D55F6DC);
  (*(v74 + 8))(v46, v76);
  (*(v71 + 8))(v45, v50);
  v51 = v89;
  sub_29D499E5C(v29, v89);
  v52 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v53 = (v81 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  sub_29D499F90(v51, v54 + v52);
  *(v54 + v53) = v82;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_29D55F828;
  *(v55 + 24) = v54;
  sub_29D55F4DC();
  sub_29D55F31C(&qword_2A1A16970, sub_29D55F364);
  v56 = v83;
  v57 = v79;
  sub_29D5B3B2C();

  (*(v78 + 8))(v49, v57);
  sub_29D55F6DC(0, &qword_2A1A16200, sub_29D55F4DC, v32);
  v58 = swift_allocObject();
  *(v58 + 16) = v91;
  sub_29D499E5C(v40, v51);
  v59 = type metadata accessor for ConceptSharableModelGenerator();
  swift_allocObject();
  v60 = sub_29D551834(v51);
  *(v58 + 56) = v59;
  *(v58 + 64) = sub_29D55F31C(qword_2A1A17FF8, type metadata accessor for ConceptSharableModelGenerator);
  *(v58 + 32) = v60;
  sub_29D55F31C(&qword_2A1A17198, sub_29D55F430);
  v61 = v84;
  v62 = v87;
  sub_29D5B3C0C();

  (*(v85 + 8))(v56, v62);
  sub_29D55F31C(&qword_2A1A17168, sub_29D55F540);
  v63 = v88;
  v64 = sub_29D5B3AFC();
  (*(v86 + 8))(v61, v63);
  v94[0] = v64;
  sub_29D55F8DC(0, &qword_2A1A16828, sub_29D55F4DC);
  sub_29D55F2CC(&qword_2A1A16830, &qword_2A1A16828, sub_29D55F4DC);
  v65 = sub_29D5B3B1C();

  sub_29D49A104(v40);

  result = v92;
  v92[2] = v65;
  return result;
}

uint64_t sub_29D55ED48@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext();
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v35 - v10;
  v39 = sub_29D5B371C();
  v12 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  sub_29D499E5C(a1, v11);
  v15 = sub_29D5B370C();
  v16 = sub_29D5B426C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = a1;
    v18 = v17;
    v36 = swift_slowAlloc();
    v41 = v36;
    *v18 = 136446722;
    v40 = a2;
    swift_getMetatypeMetadata();
    v19 = sub_29D5B3E7C();
    v21 = sub_29D501890(v19, v20, &v41);

    *(v18 + 4) = v21;
    v38 = a3;
    *(v18 + 12) = 2082;
    v40 = type metadata accessor for ConceptSharableModelGenerator();
    sub_29D55F940();
    v22 = sub_29D5B3E7C();
    v24 = sub_29D501890(v22, v23, &v41);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v40 = sub_29D5B143C();
    sub_29D5B4CAC();
    v25 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v26 = sub_29D5B3E7C();
    v28 = v27;
    sub_29D49A104(v11);
    v29 = sub_29D501890(v26, v28, &v41);

    *(v18 + 24) = v29;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s]: Emitting %{public}s, for profile: %{public}s", v18, 0x20u);
    a3 = v38;
    v30 = v36;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v30, -1, -1);
    v31 = v18;
    a1 = v37;
    MEMORY[0x29ED5FB80](v31, -1, -1);
  }

  else
  {

    sub_29D49A104(v11);
  }

  (*(v12 + 8))(v14, v39);
  sub_29D499E5C(a1, v9);
  v32 = type metadata accessor for ConceptSharableModelGenerator();
  swift_allocObject();
  v33 = sub_29D551834(v9);
  a3[3] = v32;
  result = sub_29D55F31C(qword_2A1A17FF8, type metadata accessor for ConceptSharableModelGenerator);
  a3[4] = result;
  *a3 = v33;
  return result;
}

uint64_t sub_29D55F0F0()
{

  v1 = OBJC_IVAR____TtC13HealthRecords28ConceptSharableModelPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords28ConceptSharableModelPipeline_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConceptSharableModelPipeline()
{
  result = qword_2A1A180C8;
  if (!qword_2A1A180C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D55F1F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords28ConceptSharableModelPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D55F274(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D48F51C(255, a3);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D55F2CC(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D55F8DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D55F31C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D55F364()
{
  if (!qword_2A1A16968)
  {
    sub_29D4F7688();
    sub_29D48F51C(255, &qword_2A1A1A420);
    sub_29D55F31C(&qword_2A1A172E0, sub_29D4F7688);
    sub_29D5127AC();
    v0 = sub_29D5B390C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16968);
    }
  }
}

void sub_29D55F430()
{
  if (!qword_2A1A17190)
  {
    sub_29D55F364();
    sub_29D55F4DC();
    sub_29D55F31C(&qword_2A1A16970, sub_29D55F364);
    v0 = sub_29D5B37CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17190);
    }
  }
}

unint64_t sub_29D55F4DC()
{
  result = qword_2A1A17378;
  if (!qword_2A1A17378)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A17378);
  }

  return result;
}

void sub_29D55F540()
{
  if (!qword_2A1A17160)
  {
    sub_29D55F62C();
    sub_29D55F430();
    sub_29D55F31C(&qword_2A1A16900, sub_29D55F62C);
    sub_29D55F31C(&qword_2A1A17198, sub_29D55F430);
    v0 = sub_29D5B37DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17160);
    }
  }
}

void sub_29D55F62C()
{
  if (!qword_2A1A168F8)
  {
    sub_29D55F6DC(255, &qword_2A1A16458, sub_29D55F4DC, MEMORY[0x29EDC9A40]);
    sub_29D55F740();
    v0 = sub_29D5B392C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A168F8);
    }
  }
}

void sub_29D55F6DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D55F740()
{
  result = qword_2A1A16450;
  if (!qword_2A1A16450)
  {
    sub_29D55F6DC(255, &qword_2A1A16458, sub_29D55F4DC, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16450);
  }

  return result;
}

uint64_t sub_29D55F7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D55F828@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D55ED48(v1 + v4, v5, a1);
}

void sub_29D55F8DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B398C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D55F940()
{
  result = qword_2A1A17F18[0];
  if (!qword_2A1A17F18[0])
  {
    type metadata accessor for ConceptSharableModelGenerator();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A17F18);
  }

  return result;
}

void *sub_29D55F988(uint64_t a1)
{
  v2 = v1;
  v21 = *v1;
  v20 = sub_29D5B13CC();
  v4 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B13EC();
  v7 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13HealthRecords45ClinicalNotificationSettingsGeneratorPipeline_context;
  v11 = sub_29D5B148C();
  (*(*(v11 - 8) + 16))(v2 + v10, a1, v11);
  v18 = sub_29D5B143C();
  sub_29D561550(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v12 = sub_29D5B104C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D5B62A0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x29EDC3780], v12);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC3898], v20);
  sub_29D5B13DC();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords45ClinicalNotificationSettingsGeneratorPipeline_domain, v9, v19);
  v16 = sub_29D55FCB8(a1);
  sub_29D561618(a1, type metadata accessor for HealthRecordsGeneratorContext);
  *(v2 + OBJC_IVAR____TtC13HealthRecords45ClinicalNotificationSettingsGeneratorPipeline_publisher) = v16;
  return v2;
}

uint64_t sub_29D55FCB8(uint64_t a1)
{
  v28 = a1;
  v32 = sub_29D5B148C();
  v1 = *(v32 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v32);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53AF40();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D561198();
  v10 = *(v9 - 8);
  v35 = v9;
  v36 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v33 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D561254();
  v30 = v13;
  v31 = v12;
  sub_29D5B140C();
  sub_29D499EC0(v37, v37[3]);
  v14 = sub_29D5B136C();
  v15 = [objc_allocWithZone(MEMORY[0x29EDC3E10]) initWithHealthStore_];

  sub_29D48F668(v37);
  *(swift_allocObject() + 16) = v15;
  sub_29D53AFD4(0);
  sub_29D5613DC(&qword_2A1A166C0, sub_29D53AFD4);
  v29 = v15;
  sub_29D5B3A9C();
  sub_29D5613DC(&qword_2A1A16550, sub_29D53AF40);
  v16 = sub_29D5B3B1C();
  (*(v6 + 8))(v8, v5);
  v37[0] = v16;
  v17 = v32;
  (*(v1 + 16))(v3, v28, v32);
  v18 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v19 = (v2 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v1 + 32))(v20 + v18, v3, v17);
  v21 = (v20 + v19);
  v22 = v30;
  *v21 = v31;
  v21[1] = v22;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_29D561424;
  *(v23 + 24) = v20;
  sub_29D4A02FC(0, &qword_2A1A19818);
  v24 = v33;
  sub_29D5B3B7C();

  sub_29D5613DC(&qword_2A1A16F00, sub_29D561198);
  v25 = v35;
  v26 = sub_29D5B3B1C();

  (*(v36 + 8))(v24, v25);
  return v26;
}

uint64_t sub_29D560150@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v39 = a3;
  v40 = a4;
  v36 = a5;
  sub_29D56151C(0);
  v38 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29D5B13CC();
  v9 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B13EC();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D5B148C();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4AD4(0);
  v33 = v18;
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v33 - v22;
  if (a1)
  {
    sub_29D5605FC(a2, &v33 - v22);
  }

  else
  {
    v24 = sub_29D5B134C();
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  }

  (*(v15 + 16))(v17, a2, v14);
  sub_29D5B143C();
  sub_29D561550(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v25 = sub_29D5B104C();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29D5B62A0;
  (*(v26 + 104))(v28 + v27, *MEMORY[0x29EDC3780], v25);
  (*(v9 + 104))(v11, *MEMORY[0x29EDC3898], v34);
  sub_29D5B13DC();
  sub_29D5615B4(v23, v21);

  sub_29D5B3A2C();
  v29 = sub_29D5B14AC();
  v30 = MEMORY[0x29EDC38C8];
  v31 = v36;
  v36[3] = v29;
  v31[4] = v30;
  sub_29D4A0410(v31);
  sub_29D5613DC(&qword_2A1A16608, sub_29D56151C);
  sub_29D5B149C();
  return sub_29D561618(v23, sub_29D4B4AD4);
}

uint64_t sub_29D5605FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v54 = a2;
  v2 = sub_29D5B371C();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v55 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B2AAC();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29D5B104C();
  v38 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_29D5B2C6C();
  v41 = *(v42 - 8);
  MEMORY[0x2A1C7C4A8](v42);
  v56 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B2E3C();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v51 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B200C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D3710();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B0EFC();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  sub_29D5B1FFC();
  v19 = sub_29D5B2A0C();
  v49 = v20;
  v50 = v19;
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_29D561618(v16, sub_29D4D3710);
  v18(v16, 1, 1, v17);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  v21(v13, v10);
  v22 = v51;
  sub_29D561618(v16, sub_29D4D3710);
  sub_29D5B2C4C();
  sub_29D5B2E0C();
  v23 = sub_29D5B2E2C();
  v25 = v24;
  sub_29D561254();
  type metadata accessor for ClinicalNotificationSettingsSwitchCellViewController();
  sub_29D5B10EC();
  (*(v38 + 104))(v40, *MEMORY[0x29EDC3780], v39);
  sub_29D4F357C(v23, v25);
  sub_29D5B143C();
  v26 = v23;
  v27 = v54;
  v28 = v26;
  sub_29D5B125C();
  v29 = v56;
  sub_29D5B2E1C();
  sub_29D5B2C5C();
  (*(v41 + 8))(v29, v42);
  sub_29D5B124C();
  sub_29D4FC460();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B62A0;
  *(inited + 32) = sub_29D5B15EC();
  *(inited + 40) = v31;
  sub_29D50CE80(inited);
  swift_setDeallocating();
  sub_29D4B4B58(inited + 32);
  sub_29D5B131C();
  v33 = v45;
  v32 = v46;
  v34 = v44;
  (*(v45 + 104))(v44, *MEMORY[0x29EDC1978], v46);
  sub_29D5B2A9C();
  (*(v33 + 8))(v34, v32);
  sub_29D5B132C();
  sub_29D5B123C();
  sub_29D4A96D0(v28, v25);
  (*(v52 + 8))(v22, v53);
  v35 = sub_29D5B134C();
  return (*(*(v35 - 8) + 56))(v27, 0, 1, v35);
}

uint64_t sub_29D560EF0()
{
  v1 = OBJC_IVAR____TtC13HealthRecords45ClinicalNotificationSettingsGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13HealthRecords45ClinicalNotificationSettingsGeneratorPipeline_context;
  v4 = sub_29D5B148C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalNotificationSettingsGeneratorPipeline()
{
  result = qword_2A1A17478;
  if (!qword_2A1A17478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D561030()
{
  result = sub_29D5B13EC();
  if (v1 <= 0x3F)
  {
    result = sub_29D5B148C();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D56111C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords45ClinicalNotificationSettingsGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D561198()
{
  if (!qword_2A1A16EF8)
  {
    sub_29D53AFD4(255);
    sub_29D4A02FC(255, &qword_2A1A19818);
    sub_29D5613DC(&qword_2A1A166C0, sub_29D53AFD4);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16EF8);
    }
  }
}

unint64_t sub_29D561254()
{
  v0 = sub_29D5B0EDC();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B143C();
  v5 = sub_29D5B10AC();

  if (v5)
  {
    v6 = [v5 identifier];

    sub_29D5B0EBC();
    v7 = sub_29D5B0E8C();
    v9 = v8;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v9 = 0xE800000000000000;
    v7 = 0x636974736F6E6761;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_29D5B494C();

  v11 = 0xD000000000000025;
  v12 = 0x800000029D5BE380;
  MEMORY[0x29ED5E510](v7, v9);

  return v11;
}

uint64_t sub_29D5613DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D561424@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_29D560150(a1, v2 + v6, v8, v9, a2);
}

void sub_29D561550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D5615B4(uint64_t a1, uint64_t a2)
{
  sub_29D4B4AD4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D561618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_29D561678(uint64_t a1)
{
  v131 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext();
  v130 = *(v3 - 8);
  v128 = *(v130 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v123 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6D20(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v119 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_29D5B43DC();
  v121 = *(v122 - 8);
  MEMORY[0x2A1C7C4A8](v122);
  v116 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6E4C();
  v124 = v8;
  v126 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v118 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6F80();
  v125 = v10;
  v127 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v120 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B6DB8();
  v117 = v12;
  v129 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v138 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_29D5B23CC();
  v139 = *(v135 - 8);
  MEMORY[0x2A1C7C4A8](v135);
  v113 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_29D5B446C();
  v140 = *(v136 - 8);
  MEMORY[0x2A1C7C4A8](v136);
  v111 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499DC0();
  v114 = v16;
  v115 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v112 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B7310(0);
  v105 = v18;
  v107 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v103 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B7378(0);
  v106 = v20;
  v133 = *(v20 - 1);
  MEMORY[0x2A1C7C4A8](v20);
  v102 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B73D4(0);
  v99 = v22;
  v104 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v97 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B743C(0);
  v100 = v24;
  v101 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v98 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D5B13CC();
  v27 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29D5B13EC();
  v110 = v30;
  v109 = *(v30 - 8);
  v31 = v109;
  MEMORY[0x2A1C7C4A8](v30);
  v134 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v1;
  *(v1 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_observerToken) = 0;
  v137 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_context);
  sub_29D5B143C();
  v108 = MEMORY[0x29EDC9E90];
  sub_29D563294(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v33 = sub_29D5B104C();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_29D5B62A0;
  (*(v34 + 104))(v36 + v35, *MEMORY[0x29EDC3790], v33);
  (*(v27 + 104))(v29, *MEMORY[0x29EDC3898], v26);
  v37 = v134;
  sub_29D5B13DC();
  v38 = *(v31 + 32);
  v39 = v132;
  v38(v132 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_domain, v37, v30);
  v40 = objc_allocWithZone(sub_29D5B247C());
  v41 = sub_29D5B246C();
  *(v39 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_accountStateChangeListener) = v41;
  v42 = v41;
  v43 = v97;
  sub_29D5B245C();

  sub_29D5633A4(&qword_2A1A19728, sub_29D4B73D4);
  v44 = v98;
  v45 = v99;
  sub_29D5B3B7C();
  (*(v104 + 8))(v43, v45);
  v46 = MEMORY[0x29EDB8908];
  sub_29D5633A4(&qword_2A1A197C8, sub_29D4B743C);
  v47 = v100;
  v48 = sub_29D5B3B1C();
  (*(v101 + 8))(v44, v47);
  *(v39 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_accountStateChangePublisher) = v48;
  v49 = objc_allocWithZone(sub_29D5B19DC());
  v50 = sub_29D5B19CC();
  *(v39 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_healthRecordsSupportedListener) = v50;
  v51 = v39;
  v52 = v50;
  v53 = v103;
  sub_29D5B19BC();

  sub_29D5633A4(&qword_2A1A19738, sub_29D4B7310);
  v54 = v102;
  v55 = v105;
  sub_29D5B3B7C();
  (*(v107 + 8))(v53, v55);
  v104 = v46;
  sub_29D5633A4(&qword_2A1A197D8, sub_29D4B7378);
  v56 = v106;
  v57 = sub_29D5B3B1C();
  (*(v133 + 8))(v54, v56);
  *(v51 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_healthRecordsSupportedPublisher) = v57;
  sub_29D5B140C();
  sub_29D499EC0(v141, v141[3]);
  sub_29D5B136C();
  sub_29D5B26AC();
  swift_allocObject();
  v133 = sub_29D5B269C();
  sub_29D48F668(v141);
  v58 = *MEMORY[0x29EDC41B0];
  v59 = v139;
  v107 = *(v139 + 104);
  v60 = v113;
  v61 = v135;
  (v107)(v113, v58, v135);
  v62 = v111;
  sub_29D5B267C();
  v63 = *(v59 + 8);
  v139 = v59 + 8;
  v106 = v63;
  v63(v60, v61);
  v105 = sub_29D5633A4(&qword_2A1A19608, MEMORY[0x29EDB9DF8]);
  v64 = v112;
  v65 = v136;
  sub_29D5B3B7C();
  v66 = *(v140 + 8);
  v140 += 8;
  v103 = v66;
  (v66)(v62, v65);
  v102 = sub_29D5633A4(&qword_2A1A197B8, sub_29D499DC0);
  v67 = v114;
  v68 = sub_29D5B3B1C();
  v69 = *(v115 + 8);
  v69(v64, v67);
  v70 = v132;
  *(v132 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_genericTilePublisher) = v68;
  v71 = v135;
  (v107)(v60, *MEMORY[0x29EDC41D8], v135);
  sub_29D5B267C();
  v106(v60, v71);
  v72 = v136;
  sub_29D5B3B7C();
  (v103)(v62, v72);
  v73 = sub_29D5B3B1C();
  v69(v64, v67);
  *(v70 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_labsTilePublisher) = v73;
  sub_29D563294(0, &qword_2A1A195C8, sub_29D499998, v108);
  v74 = swift_allocObject();
  v75 = *(v70 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_accountStateChangePublisher);
  *(v74 + 16) = xmmword_29D5B8060;
  v76 = *(v70 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_healthRecordsSupportedPublisher);
  *(v74 + 32) = v75;
  *(v74 + 40) = v76;
  *(v74 + 48) = *(v70 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_genericTilePublisher);
  *(v74 + 56) = v73;
  v141[0] = v74;
  sub_29D499998();
  sub_29D4B7180(0);
  sub_29D5633A4(&qword_2A1A19778, sub_29D499998);
  sub_29D5633A4(&qword_2A1A196B8, sub_29D4B7180);

  sub_29D5B394C();
  v77 = v109;
  v78 = v134;
  v79 = v110;
  (*(v109 + 16))(v134, v70 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_domain, v110);
  v80 = v137;
  v81 = sub_29D5B146C();
  (*(v77 + 8))(v78, v79);
  v82 = v116;
  sub_29D5B43CC();
  v141[0] = v81;
  v83 = sub_29D5B43BC();
  v84 = v119;
  (*(*(v83 - 8) + 56))(v119, 1, 1, v83);
  sub_29D4999F8();
  sub_29D5633A4(&qword_2A1A19788, sub_29D4B6DB8);
  sub_29D5633A4(&qword_2A1A19620, sub_29D4999F8);
  v85 = v118;
  v86 = v117;
  sub_29D5B3C2C();
  sub_29D4B71B4(v84, sub_29D4B6D20);
  (*(v121 + 8))(v82, v122);
  v87 = v123;
  sub_29D499E5C(v80, v123);
  v88 = (*(v130 + 80) + 16) & ~*(v130 + 80);
  v89 = (v128 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  sub_29D499F90(v87, v90 + v88);
  *(v90 + v89) = v131;
  sub_29D499B38();
  sub_29D5633A4(&qword_2A1A16920, sub_29D4B6E4C);
  v91 = v120;
  v92 = v124;
  sub_29D5B3B7C();

  (*(v126 + 8))(v85, v92);
  sub_29D5633A4(&qword_2A1A16E20, sub_29D4B6F80);
  v93 = v125;
  v94 = sub_29D5B3B1C();
  (*(v127 + 8))(v91, v93);
  v70[2] = v94;
  v95 = sub_29D562D4C();

  sub_29D4B71B4(v80, type metadata accessor for HealthRecordsGeneratorContext);
  (*(v129 + 8))(v138, v86);
  *(v70 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_observerToken) = v95;

  return v70;
}

uint64_t sub_29D562A60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v13 = sub_29D5B370C();
  v14 = sub_29D5B426C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v17;
    v33 = a2;
    *v16 = 136446466;
    swift_getMetatypeMetadata();
    v18 = sub_29D5B3E7C();
    v20 = sub_29D501890(v18, v19, &v32);
    v30 = v9;
    v21 = a1;
    v22 = v20;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v33 = type metadata accessor for AddAccountGenerator();
    sub_29D4C1C34(0);
    v23 = sub_29D5B3E7C();
    v25 = sub_29D501890(v23, v24, &v32);
    a1 = v21;

    *(v16 + 14) = v25;
    _os_log_impl(&dword_29D48C000, v13, v14, "[%{public}s]: Emitting %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v17, -1, -1);
    v26 = v16;
    a3 = v31;
    MEMORY[0x29ED5FB80](v26, -1, -1);

    (*(v10 + 8))(v12, v30);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_29D499E5C(a1, v8);
  v27 = type metadata accessor for AddAccountGenerator();
  swift_allocObject();
  v28 = sub_29D4BC710(v8);
  a3[3] = v27;
  result = sub_29D5633A4(qword_2A1A19F90, type metadata accessor for AddAccountGenerator);
  a3[4] = result;
  *a3 = v28;
  return result;
}

uint64_t sub_29D562D4C()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_context + *(type metadata accessor for HealthRecordsGeneratorContext() + 20)) addAccountStateChangeListener_];
  sub_29D5B140C();
  v2 = v7;
  v3 = v8;
  sub_29D499EC0(v6, v7);
  v4 = sub_29D4C9C8C(v2, v3);
  [v4 addHealthRecordsSupportedChangeListener_];

  sub_29D48F668(v6);
  swift_allocObject();
  swift_weakInit();
  sub_29D5B1EEC();
  swift_allocObject();
  return sub_29D5B1ECC();
}

uint64_t sub_29D562E60()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    [*(result + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_context + *(type metadata accessor for HealthRecordsGeneratorContext() + 20)) removeAccountStateChangeListener_];
    sub_29D5B140C();
    v2 = v6;
    v3 = v7;
    sub_29D499EC0(v5, v6);
    v4 = sub_29D4C9C8C(v2, v3);
    [v4 removeHealthRecordsSupportedChangeListener_];

    return sub_29D48F668(v5);
  }

  return result;
}

uint64_t sub_29D562F44()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_observerToken))
  {

    sub_29D5B1EDC();
  }

  v2 = OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_domain;
  v3 = sub_29D5B13EC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_29D4B71B4(v1 + OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);

  return v1;
}

uint64_t sub_29D563068()
{
  sub_29D562F44();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AddAccountGeneratorPipeline()
{
  result = qword_2A1A19B08;
  if (!qword_2A1A19B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D563114()
{
  result = sub_29D5B13EC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_29D563210@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords27AddAccountGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D563294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D5632F8@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D562A60(v1 + v4, v5, a1);
}

uint64_t sub_29D5633A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AddAccountFeedItemViewController()
{
  result = qword_2A1A1A428;
  if (!qword_2A1A1A428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D563478()
{
  v1 = sub_29D5B371C();
  v45 = *(v1 - 8);
  v46 = v1;
  v2 = MEMORY[0x2A1C7C4A8](v1);
  v44 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v40 = v37 - v4;
  v5 = sub_29D5B23CC();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v43 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B319C();
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B221C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D563C98(0, &qword_2A17A4DD0, MEMORY[0x29EDC4180]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = v37 - v16;
  sub_29D563C98(0, &qword_2A1A17330, MEMORY[0x29EDC4210]);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v20 = v37 - v19;
  v21 = sub_29D5B25DC();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B286C();
  if ((*(v12 + 48))(v17, 1, v11))
  {
    sub_29D563CEC(v17, &qword_2A17A4DD0, MEMORY[0x29EDC4180]);
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_4:
    sub_29D563CEC(v20, &qword_2A1A17330, MEMORY[0x29EDC4210]);
    v27 = v44;
    sub_29D5B36DC();
    v28 = sub_29D5B370C();
    v29 = sub_29D5B427C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_29D48C000, v28, v29, "didTapDismiss invoked for tile without a dismiss button!", v30, 2u);
      MEMORY[0x29ED5FB80](v30, -1, -1);
    }

    return (*(v45 + 8))(v27, v46);
  }

  v37[0] = v24;
  v37[1] = v0;
  v25 = v43;
  (*(v12 + 16))(v14, v17, v11);
  sub_29D563CEC(v17, &qword_2A17A4DD0, MEMORY[0x29EDC4180]);
  sub_29D5B220C();
  (*(v12 + 8))(v14, v11);
  v26 = v21;
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  v32 = v37[0];
  (*(v22 + 32))(v37[0], v20, v26);
  sub_29D5B331C();
  sub_29D5B318C();
  (*(v39 + 8))(v10, v38);
  sub_29D499EC0(v47, v47[3]);
  sub_29D5B314C();
  sub_29D5B26AC();
  swift_allocObject();
  sub_29D5B269C();
  sub_29D48F668(v47);
  sub_29D5B259C();
  sub_29D5B266C();

  (*(v41 + 8))(v25, v42);
  v33 = v40;
  sub_29D5B36DC();
  v34 = sub_29D5B370C();
  v35 = sub_29D5B429C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_29D48C000, v34, v35, "User dismissed Onboarding tile", v36, 2u);
    MEMORY[0x29ED5FB80](v36, -1, -1);
  }

  (*(v45 + 8))(v33, v46);
  return (*(v22 + 8))(v32, v26);
}

uint64_t sub_29D563B54(uint64_t a1)
{
  v3 = sub_29D5B319C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_29D5B285C();
  (*(v4 + 8))(a1, v3);
  return v8;
}

id sub_29D563C54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddAccountFeedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D563C98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D563CEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D563C98(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D563D48()
{
  sub_29D563E70();
  v13[0] = v0;
  v1 = 0;
  v13[1] = sub_29D5B151C();
  v13[2] = v2;
  v3 = MEMORY[0x29EDCA190];
LABEL_2:
  v4 = &v13[2 * v1];
  while (++v1 != 3)
  {
    v5 = v4 + 2;
    v6 = *v4;
    v4 += 2;
    if (v6)
    {
      v7 = *(v5 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_29D514C4C(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_29D514C4C((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[16 * v9];
      *(v10 + 4) = v7;
      *(v10 + 5) = v6;
      goto LABEL_2;
    }
  }

  sub_29D4E03E8();
  swift_arrayDestroy();
  v11 = sub_29D5959C4(v3);

  return v11;
}

uint64_t sub_29D563E70()
{
  v1 = v0;
  v2 = sub_29D5B1D6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x29EDC4078])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x29EDC4050])
  {
    return sub_29D5B14FC();
  }

  if (v6 == *MEMORY[0x29EDC4068])
  {
    return sub_29D5B14DC();
  }

  if (v6 == *MEMORY[0x29EDC4070])
  {
    return sub_29D5B153C();
  }

  if (v6 == *MEMORY[0x29EDC4040])
  {
    return sub_29D5B14CC();
  }

  if (v6 == *MEMORY[0x29EDC4048])
  {
    return sub_29D5B14EC();
  }

  if (v6 == *MEMORY[0x29EDC4060])
  {
    return sub_29D5B152C();
  }

  if (v6 != *MEMORY[0x29EDC4088])
  {
    if (v6 != *MEMORY[0x29EDC4080])
    {
      if (v6 == *MEMORY[0x29EDC4090])
      {
        return sub_29D5B157C();
      }

      if (v6 == *MEMORY[0x29EDC4058])
      {
        return sub_29D5B150C();
      }

      (*(v3 + 8))(v5, v2);
    }

    return 0;
  }

  return sub_29D5B156C();
}

uint64_t sub_29D564098(uint64_t a1)
{
  v78 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext();
  v76 = *(v3 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v73 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_29D5B23CC();
  v64 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29D5B446C();
  v71 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D565024();
  v72 = v7;
  v74 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v68 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D565158();
  v10 = *(v9 - 8);
  v79 = v9;
  v80 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v70 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D565204();
  v13 = *(v12 - 8);
  v81 = v12;
  v82 = v13;
  MEMORY[0x2A1C7C4A8](v12);
  v77 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_29D5B13CC();
  v15 = *(v61 - 8);
  MEMORY[0x2A1C7C4A8](v61);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D5B13EC();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords24LabTipsGeneratorPipeline_context);
  sub_29D5B143C();
  v67 = MEMORY[0x29EDC9E90];
  sub_29D4A3924(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v22 = sub_29D5B104C();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v66 = xmmword_29D5B62A0;
  *(v25 + 16) = xmmword_29D5B62A0;
  (*(v23 + 104))(v25 + v24, *MEMORY[0x29EDC3730], v22);
  (*(v15 + 104))(v17, *MEMORY[0x29EDC3898], v61);
  sub_29D5B13DC();
  v26 = v59;
  (*(v19 + 32))(v59 + OBJC_IVAR____TtC13HealthRecords24LabTipsGeneratorPipeline_domain, v21, v18);
  v27 = v60;
  sub_29D5B140C();
  sub_29D499EC0(v83, v84);
  v28 = sub_29D5B136C();
  [v28 supportsHealthRecords];

  sub_29D48F668(v83);
  sub_29D5B140C();
  sub_29D499EC0(v83, v84);
  sub_29D5B136C();
  sub_29D5B26AC();
  swift_allocObject();
  v29 = sub_29D5B269C();
  sub_29D48F668(v83);
  v30 = v26;
  *(v26 + OBJC_IVAR____TtC13HealthRecords24LabTipsGeneratorPipeline_onboardingManager) = v29;
  v31 = v63;
  sub_29D5B0ECC();
  v32 = v64;
  v33 = v65;
  (*(v64 + 104))(v31, *MEMORY[0x29EDC41C8], v65);
  v34 = v62;
  sub_29D5B267C();
  (*(v32 + 8))(v31, v33);
  sub_29D5B1CBC();
  v35 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(v83, v84);
  v36 = sub_29D5B136C();
  v37 = [v36 profileIdentifier];

  v38 = sub_29D5B1C7C();
  sub_29D48F668(v83);
  v39 = sub_29D5B35BC();

  v83[0] = v39;
  sub_29D4A36DC();
  sub_29D565110(&qword_2A1A19608, MEMORY[0x29EDB9DF8]);
  sub_29D565110(&qword_2A1A16660, sub_29D4A36DC);
  v41 = v68;
  v40 = v69;
  sub_29D5B3B6C();

  (*(v71 + 8))(v34, v40);
  v42 = v73;
  sub_29D499E5C(v27, v73);
  v43 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v44 = (v75 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v45 + v43;
  v47 = v42;
  sub_29D499F90(v42, v46);
  *(v45 + v44) = v78;
  sub_29D499B38();
  sub_29D565110(&qword_2A1A17230, sub_29D565024);
  v48 = v70;
  v49 = v72;
  sub_29D5B3B2C();

  (*(v74 + 8))(v41, v49);
  sub_29D4A3924(0, &qword_2A1A195D8, sub_29D499B38, v67);
  v50 = swift_allocObject();
  *(v50 + 16) = v66;
  sub_29D499E5C(v27, v47);
  v51 = type metadata accessor for LabTipsGenerator();
  swift_allocObject();
  v52 = sub_29D507D3C(v47);
  *(v50 + 56) = v51;
  *(v50 + 64) = sub_29D565110(&unk_2A1A18E28, type metadata accessor for LabTipsGenerator);
  *(v50 + 32) = v52;
  sub_29D565110(&qword_2A1A171C8, sub_29D565158);
  v53 = v77;
  v54 = v79;
  sub_29D5B3C0C();

  (*(v80 + 8))(v48, v54);
  sub_29D565110(&qword_2A1A17148, sub_29D565204);
  v55 = v81;
  v56 = sub_29D5B3B1C();
  sub_29D49A104(v27);
  (*(v82 + 8))(v53, v55);
  result = v30;
  *(v30 + 16) = v56;
  return result;
}

uint64_t sub_29D564BA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v13 = sub_29D5B370C();
  v14 = sub_29D5B426C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v17;
    v33 = a2;
    *v16 = 136446466;
    swift_getMetatypeMetadata();
    v18 = sub_29D5B3E7C();
    v20 = sub_29D501890(v18, v19, &v32);
    v30 = v9;
    v21 = a1;
    v22 = v20;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v33 = type metadata accessor for LabTipsGenerator();
    sub_29D50CABC(0);
    v23 = sub_29D5B3E7C();
    v25 = sub_29D501890(v23, v24, &v32);
    a1 = v21;

    *(v16 + 14) = v25;
    _os_log_impl(&dword_29D48C000, v13, v14, "[%{public}s]: Emitting %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v17, -1, -1);
    v26 = v16;
    a3 = v31;
    MEMORY[0x29ED5FB80](v26, -1, -1);

    (*(v10 + 8))(v12, v30);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_29D499E5C(a1, v8);
  v27 = type metadata accessor for LabTipsGenerator();
  swift_allocObject();
  v28 = sub_29D507D3C(v8);
  a3[3] = v27;
  result = sub_29D565110(&unk_2A1A18E28, type metadata accessor for LabTipsGenerator);
  a3[4] = result;
  *a3 = v28;
  return result;
}

uint64_t sub_29D564E90()
{

  v1 = OBJC_IVAR____TtC13HealthRecords24LabTipsGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords24LabTipsGeneratorPipeline_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LabTipsGeneratorPipeline()
{
  result = qword_2A1A186F0;
  if (!qword_2A1A186F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D564FA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords24LabTipsGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D565024()
{
  if (!qword_2A1A17228)
  {
    sub_29D5B446C();
    sub_29D4A36DC();
    sub_29D565110(&qword_2A1A19608, MEMORY[0x29EDB9DF8]);
    sub_29D565110(&qword_2A1A16660, sub_29D4A36DC);
    v0 = sub_29D5B379C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17228);
    }
  }
}

uint64_t sub_29D565110(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D565158()
{
  if (!qword_2A1A171C0)
  {
    sub_29D565024();
    sub_29D499B38();
    sub_29D565110(&qword_2A1A17230, sub_29D565024);
    v0 = sub_29D5B37CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A171C0);
    }
  }
}

void sub_29D565204()
{
  if (!qword_2A1A17140)
  {
    sub_29D499C88();
    sub_29D565158();
    sub_29D565110(&qword_2A1A197A8, sub_29D499C88);
    sub_29D565110(&qword_2A1A171C8, sub_29D565158);
    v0 = sub_29D5B37DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17140);
    }
  }
}

uint64_t sub_29D5652F0@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D564BA4(v1 + v4, v5, a1);
}

uint64_t sub_29D56539C(uint64_t a1)
{
  v89 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext();
  v88 = *(v3 - 8);
  v87 = *(v88 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v85 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_29D5B23CC();
  v74 = *(v76 - 8);
  MEMORY[0x2A1C7C4A8](v76);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B446C();
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v70 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D566BE8();
  v80 = v9;
  v82 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v75 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D566D1C();
  v12 = *(v11 - 8);
  v83 = v11;
  v84 = v12;
  MEMORY[0x2A1C7C4A8](v11);
  v77 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D566DB0();
  v15 = *(v14 - 8);
  v90 = v14;
  v91 = v15;
  MEMORY[0x2A1C7C4A8](v14);
  v81 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D566E5C();
  v18 = *(v17 - 8);
  v92 = v17;
  v93 = v18;
  MEMORY[0x2A1C7C4A8](v17);
  v86 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_29D5B13CC();
  v20 = *(v68 - 8);
  MEMORY[0x2A1C7C4A8](v68);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D5B13EC();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for HealthRecordsGeneratorContext;
  v67 = a1;
  sub_29D567064(a1, v1 + OBJC_IVAR____TtC13HealthRecords27OnboardingGeneratorPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D5B143C();
  v73 = MEMORY[0x29EDC9E90];
  sub_29D4A3924(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v27 = sub_29D5B104C();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  v71 = xmmword_29D5B62A0;
  *(v30 + 16) = xmmword_29D5B62A0;
  (*(v28 + 104))(v30 + v29, *MEMORY[0x29EDC3790], v27);
  (*(v20 + 104))(v22, *MEMORY[0x29EDC3898], v68);
  sub_29D5B13DC();
  v31 = v66;
  (*(v24 + 32))(v66 + OBJC_IVAR____TtC13HealthRecords27OnboardingGeneratorPipeline_domain, v26, v23);
  v32 = v67;
  sub_29D5B140C();
  sub_29D499EC0(v94, v95);
  v33 = sub_29D5B136C();
  [v33 supportsHealthRecords];

  sub_29D48F668(v94);
  sub_29D5B140C();
  sub_29D499EC0(v94, v95);
  sub_29D5B136C();
  sub_29D5B26AC();
  swift_allocObject();
  v34 = sub_29D5B269C();
  sub_29D48F668(v94);
  *(v31 + OBJC_IVAR____TtC13HealthRecords27OnboardingGeneratorPipeline_onboardingManager) = v34;
  sub_29D5B1CBC();
  v35 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(v94, v95);
  v36 = sub_29D5B136C();
  v37 = [v36 profileIdentifier];

  v38 = sub_29D5B1C7C();
  sub_29D48F668(v94);
  v39 = sub_29D5B35BC();

  v94[0] = v39;
  v40 = v74;
  v41 = v72;
  v42 = v76;
  (*(v74 + 104))(v72, *MEMORY[0x29EDC41C0], v76);
  v43 = v70;
  sub_29D5B267C();
  (*(v40 + 8))(v41, v42);
  sub_29D4A36DC();
  sub_29D566CD4(&qword_2A1A16660, sub_29D4A36DC);
  sub_29D566CD4(&qword_2A1A19608, MEMORY[0x29EDB9DF8]);
  v44 = v75;
  v45 = v78;
  sub_29D5B3B6C();
  (*(v79 + 8))(v43, v45);

  sub_29D566CD4(&qword_2A1A172A0, sub_29D566BE8);
  v46 = v80;
  v47 = v77;
  sub_29D5B3B3C();
  (*(v82 + 8))(v44, v46);
  v48 = v85;
  v49 = v69;
  sub_29D567064(v32, v85, v69);
  v50 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v51 = (v87 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v52 + v50;
  v54 = v48;
  sub_29D499F90(v48, v53);
  *(v52 + v51) = v89;
  sub_29D499B38();
  sub_29D566CD4(&qword_2A1A170D8, sub_29D566D1C);
  v55 = v81;
  v56 = v83;
  sub_29D5B3B2C();

  (*(v84 + 8))(v47, v56);
  sub_29D4A3924(0, &qword_2A1A195D8, sub_29D499B38, v73);
  v57 = swift_allocObject();
  *(v57 + 16) = v71;
  sub_29D567064(v32, v54, v49);
  v58 = type metadata accessor for OnboardingTileGenerator();
  swift_allocObject();
  v59 = sub_29D5714A4(v54);
  *(v57 + 56) = v58;
  *(v57 + 64) = sub_29D566CD4(&unk_2A1A18A18, type metadata accessor for OnboardingTileGenerator);
  *(v57 + 32) = v59;
  sub_29D566CD4(&qword_2A1A171A8, sub_29D566DB0);
  v60 = v86;
  v61 = v90;
  sub_29D5B3C0C();

  (*(v91 + 8))(v55, v61);
  sub_29D566CD4(&qword_2A1A17138, sub_29D566E5C);
  v62 = v92;
  v63 = sub_29D5B3B1C();
  sub_29D5670CC(v32, v49);
  (*(v93 + 8))(v60, v62);
  result = v31;
  *(v31 + 16) = v63;
  return result;
}

uint64_t sub_29D566010(uint64_t a1)
{
  v2 = sub_29D5B377C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B371C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  sub_29D48F564(a1, v28);
  v10 = sub_29D5B370C();
  v11 = sub_29D5B429C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v6;
    v13 = v12;
    v24 = swift_slowAlloc();
    v27 = v24;
    *v13 = 136446466;
    v26 = type metadata accessor for OnboardingGeneratorPipeline();
    sub_29D56712C(0, qword_2A1A18170, type metadata accessor for OnboardingGeneratorPipeline);
    v14 = sub_29D5B3E7C();
    v16 = sub_29D501890(v14, v15, &v27);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    sub_29D499EC0(v28, v28[3]);
    sub_29D5B376C();
    sub_29D566CD4(&qword_2A1A172E8, MEMORY[0x29EDB8858]);
    v17 = sub_29D5B4C4C();
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    sub_29D48F668(v28);
    v20 = sub_29D501890(v17, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_29D48C000, v10, v11, "[%{public}s] receivedSubscription %{public}s", v13, 0x16u);
    v21 = v24;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v21, -1, -1);
    MEMORY[0x29ED5FB80](v13, -1, -1);

    return (*(v7 + 8))(v9, v25);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    return sub_29D48F668(v28);
  }
}

uint64_t sub_29D566368(uint64_t a1)
{
  sub_29D566FF4();
  v3 = v2;
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v32 - v8;
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v32 - v10;
  v12 = sub_29D5B371C();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  sub_29D567064(a1, v11, sub_29D566FF4);
  v16 = sub_29D5B370C();
  v17 = sub_29D5B425C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = v17;
    v19 = v18;
    v35 = swift_slowAlloc();
    v37 = v35;
    *v19 = 136446466;
    v36 = type metadata accessor for OnboardingGeneratorPipeline();
    sub_29D56712C(0, qword_2A1A18170, type metadata accessor for OnboardingGeneratorPipeline);
    v20 = sub_29D5B3E7C();
    v33 = v12;
    v22 = sub_29D501890(v20, v21, &v37);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    sub_29D567064(v11, v9, sub_29D566FF4);
    v23 = *(v3 + 48);
    v24 = sub_29D5B35AC();
    (*(*(v24 - 8) + 32))(v6, v9, v24);
    v25 = sub_29D5B0C9C();
    (*(*(v25 - 8) + 32))(&v6[v23], &v9[v23], v25);
    v26 = sub_29D5B3E7C();
    v28 = v27;
    sub_29D5670CC(v11, sub_29D566FF4);
    v29 = sub_29D501890(v26, v28, &v37);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_29D48C000, v16, v34, "[%{public}s] receiveOutput: %{public}s", v19, 0x16u);
    v30 = v35;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v30, -1, -1);
    MEMORY[0x29ED5FB80](v19, -1, -1);

    return (*(v13 + 8))(v15, v33);
  }

  else
  {

    sub_29D5670CC(v11, sub_29D566FF4);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_29D566724@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v13 = sub_29D5B370C();
  v14 = sub_29D5B426C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v17;
    v33 = a2;
    *v16 = 136446466;
    swift_getMetatypeMetadata();
    v18 = sub_29D5B3E7C();
    v20 = sub_29D501890(v18, v19, &v32);
    v30 = v9;
    v21 = a1;
    v22 = v20;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v33 = type metadata accessor for OnboardingTileGenerator();
    sub_29D56712C(0, &qword_2A17A4DD8, type metadata accessor for OnboardingTileGenerator);
    v23 = sub_29D5B3E7C();
    v25 = sub_29D501890(v23, v24, &v32);
    a1 = v21;

    *(v16 + 14) = v25;
    _os_log_impl(&dword_29D48C000, v13, v14, "[%{public}s]: Emitting %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v17, -1, -1);
    v26 = v16;
    a3 = v31;
    MEMORY[0x29ED5FB80](v26, -1, -1);

    (*(v10 + 8))(v12, v30);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_29D567064(a1, v8, type metadata accessor for HealthRecordsGeneratorContext);
  v27 = type metadata accessor for OnboardingTileGenerator();
  swift_allocObject();
  v28 = sub_29D5714A4(v8);
  a3[3] = v27;
  result = sub_29D566CD4(&unk_2A1A18A18, type metadata accessor for OnboardingTileGenerator);
  a3[4] = result;
  *a3 = v28;
  return result;
}

uint64_t sub_29D566A40()
{

  v1 = OBJC_IVAR____TtC13HealthRecords27OnboardingGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D5670CC(v0 + OBJC_IVAR____TtC13HealthRecords27OnboardingGeneratorPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardingGeneratorPipeline()
{
  result = qword_2A1A18248;
  if (!qword_2A1A18248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D566B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords27OnboardingGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D566BE8()
{
  if (!qword_2A1A17298)
  {
    sub_29D4A36DC();
    sub_29D5B446C();
    sub_29D566CD4(&qword_2A1A16660, sub_29D4A36DC);
    sub_29D566CD4(&qword_2A1A19608, MEMORY[0x29EDB9DF8]);
    v0 = sub_29D5B379C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17298);
    }
  }
}

uint64_t sub_29D566CD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D566D1C()
{
  if (!qword_2A1A170D0)
  {
    sub_29D566BE8();
    sub_29D566CD4(&qword_2A1A172A0, sub_29D566BE8);
    v0 = sub_29D5B37EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A170D0);
    }
  }
}

void sub_29D566DB0()
{
  if (!qword_2A1A171A0)
  {
    sub_29D566D1C();
    sub_29D499B38();
    sub_29D566CD4(&qword_2A1A170D8, sub_29D566D1C);
    v0 = sub_29D5B37CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A171A0);
    }
  }
}

void sub_29D566E5C()
{
  if (!qword_2A1A17130)
  {
    sub_29D499C88();
    sub_29D566DB0();
    sub_29D566CD4(&qword_2A1A197A8, sub_29D499C88);
    sub_29D566CD4(&qword_2A1A171A8, sub_29D566DB0);
    v0 = sub_29D5B37DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17130);
    }
  }
}

uint64_t sub_29D566F48@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D566724(v1 + v4, v5, a1);
}

void sub_29D566FF4()
{
  if (!qword_2A17A4DE0)
  {
    sub_29D5B35AC();
    sub_29D5B0C9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A4DE0);
    }
  }
}

uint64_t sub_29D567064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D5670CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D56712C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_29D567178()
{
  v1 = qword_2A17A4DE8;
  v2 = *(v0 + qword_2A17A4DE8);
  if (v2)
  {
    v3 = *(v0 + qword_2A17A4DE8);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_29D5B236C();
    v6 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_29D56721C()
{
  sub_29D48F318(0, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = v24 - v2 + 16;
  v4 = qword_2A17A4E00;
  v5 = *(v0 + qword_2A17A4E00);
  if (v5)
  {
    v6 = *(v0 + qword_2A17A4E00);
LABEL_6:
    v22 = v5;
    return v6;
  }

  v7 = MEMORY[0x29EDCA1E8];
  v8 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
  swift_beginAccess();
  sub_29D569484(v0 + v8, v3);
  v9 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  result = (*(*(v9 - 8) + 48))(v3, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = *((*v7 & *v0) + 0x70);
    swift_beginAccess();
    v12 = v0;
    result = sub_29D5693B8(v0 + v11, v24, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
    v13 = v25;
    if (v25)
    {
      v14 = sub_29D499EC0(v24, v25);
      v15 = *(v13 - 8);
      MEMORY[0x2A1C7C4A8](v14);
      v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
      (*(v15 + 16))(v17);
      v18 = sub_29D5B314C();
      (*(v15 + 8))(v17, v13);
      v19 = objc_allocWithZone(type metadata accessor for ConceptDeltaHighlightFeedItemView());
      v20 = sub_29D57CCE8(v3, v18);
      sub_29D48F668(v24);
      [v20 setTranslatesAutoresizingMaskIntoConstraints_];
      v21 = *(v12 + v4);
      *(v12 + v4) = v20;
      v6 = v20;

      v5 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_29D5674F8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for ConceptDeltaHighlightFeedItemViewController();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_29D567560();
  sub_29D567780();
  sub_29D567E50();
}

void sub_29D567560()
{
  v1 = *&v0[qword_2A17A4DF0];
  [v1 setNumberOfLines_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setAdjustsFontForContentSizeCategory_];
  v2 = *&v0[qword_2A17A4DF8];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_opt_self() separatorColor];
  [v2 setBackgroundColor_];

  v4 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v1 setFont_];

  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = sub_29D567178();
  [v6 addSubview_];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  [v8 addSubview_];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v10 addSubview_];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_29D56721C();
  [v13 addSubview_];
}

void sub_29D567780()
{
  sub_29D502718(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D5BAC90;
  v2 = sub_29D567178();
  v3 = [v2 leadingAnchor];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 leadingAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = qword_2A17A4DE8;
  v9 = [*&v0[qword_2A17A4DE8] trailingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 trailingAnchor];

  v13 = [v9 &selRef:v12 initWithProfileIdentifier:? + 5];
  *(v1 + 40) = v13;
  v14 = [*&v0[v8] topAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 &selRef:v17 initWithProfileIdentifier:? + 5];
  *(v1 + 48) = v18;
  v19 = *&v0[qword_2A17A4DF0];
  v20 = [v19 leadingAnchor];
  v21 = [*&v0[v8] leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];

  *(v1 + 56) = v22;
  v23 = [v19 trailingAnchor];
  v24 = [*&v0[v8] trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-16.0];

  *(v1 + 64) = v25;
  v26 = [v19 topAnchor];
  v27 = [*&v0[v8] bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:8.0];

  *(v1 + 72) = v28;
  v29 = *&v0[qword_2A17A4DF8];
  v30 = [v29 leadingAnchor];
  v31 = [v19 leadingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v1 + 80) = v32;
  v33 = [v29 trailingAnchor];
  v34 = [v19 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v1 + 88) = v35;
  v36 = [v29 topAnchor];
  v37 = [v19 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:12.0];

  *(v1 + 96) = v38;
  v39 = [v29 heightAnchor];
  v40 = [v39 constraintEqualToConstant_];

  *(v1 + 104) = v40;
  v41 = sub_29D56721C();
  v42 = [v41 leadingAnchor];

  v43 = [v19 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v1 + 112) = v44;
  v45 = qword_2A17A4E00;
  v46 = [*&v0[qword_2A17A4E00] trailingAnchor];
  v47 = [v19 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v1 + 120) = v48;
  v49 = [*&v0[v45] topAnchor];
  v50 = [v29 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:16.0];

  *(v1 + 128) = v51;
  v52 = [*&v0[v45] bottomAnchor];
  v53 = [v0 view];
  if (!v53)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v54 = v53;
  v55 = objc_opt_self();
  v56 = [v54 bottomAnchor];

  v57 = [v52 &selRef:v56 setSound:-16.0 + 6];
  *(v1 + 136) = v57;
  sub_29D48F51C(0, &qword_2A17A3F80);
  v58 = sub_29D5B401C();

  [v55 activateConstraints_];
}

uint64_t sub_29D567E50()
{
  v1 = v0;
  v2 = sub_29D5B2C2C();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v48 = &v45 - v5;
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F318(0, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v52 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v45 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v45 - v20;
  v22 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D569484(v1 + v22, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_29D569874(v12, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  }

  sub_29D569504(v12, v21);
  v47 = sub_29D567178();
  v54 = sub_29D5B277C();
  v55 = MEMORY[0x29EDC4228];
  v45 = sub_29D4A0410(v53);
  v24 = sub_29D5B1D6C();
  (*(*(v24 - 8) + 16))(v9, v21, v24);
  (*(v7 + 104))(v9, *MEMORY[0x29EDC3F80], v6);

  sub_29D5B1AFC();
  v46 = v19;
  sub_29D5B1B9C();
  sub_29D5B275C();
  (*(v7 + 8))(v9, v6);
  v25 = v47;
  sub_29D5B237C();

  v26 = *(v1 + qword_2A17A4DF0);
  sub_29D569568(v21);
  v27 = sub_29D5B3E1C();

  [v26 setText_];

  v28 = sub_29D56721C();
  v29 = v46;
  sub_29D5697AC(v21, v46);
  v30 = OBJC_IVAR____TtC13HealthRecords33ConceptDeltaHighlightFeedItemView_viewModel;
  swift_beginAccess();
  sub_29D569810(v29, v28 + v30);
  swift_endAccess();
  v31 = v28 + v30;
  v32 = v52;
  sub_29D5697AC(v31, v52);
  sub_29D57D1D4(v32);

  sub_29D52A588(v32);
  sub_29D52A588(v29);
  v33 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D5693B8(v1 + v33, v53, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v34 = v54;
  if (v54)
  {
    v35 = sub_29D499EC0(v53, v54);
    v36 = *(v34 - 8);
    MEMORY[0x2A1C7C4A8](v35);
    v38 = &v45 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v38);
    v39 = v48;
    sub_29D5B315C();
    (*(v36 + 8))(v38, v34);
    v41 = v49;
    v40 = v50;
    v42 = v51;
    (*(v50 + 104))(v49, *MEMORY[0x29EDC1D80], v51);
    LOBYTE(v38) = sub_29D5B2C1C();
    v43 = *(v40 + 8);
    v43(v41, v42);
    v43(v39, v42);
    sub_29D48F668(v53);
    if (v38)
    {
      v44 = *(v1 + qword_2A17A4DE8);
      sub_29D5B234C();
    }

    return sub_29D52A588(v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D568530(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v31 = sub_29D5B2BAC();
  v28 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B2C2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v26 - v9;
  v11 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D5693B8(v1 + v11, v34, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v13 = v35;
  if (!v35)
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = sub_29D499EC0(v34, v35);
  v29 = &v26;
  v15 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17);
  sub_29D5B315C();
  (*(v15 + 8))(v17, v13);
  (*(v5 + 104))(v8, *MEMORY[0x29EDC1D80], v4);
  sub_29D56942C();
  LOBYTE(v17) = sub_29D5B3E0C();
  v18 = *(v5 + 8);
  v18(v8, v4);
  v18(v10, v4);
  result = sub_29D48F668(v34);
  if (v17)
  {
    return result;
  }

  sub_29D568A34(v27);
  v19 = v28;
  (*(v28 + 104))(v30, *MEMORY[0x29EDC1BA8], v31);
  result = sub_29D5693B8(v2 + v11, v34, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v20 = v35;
  if (!v35)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v27 = sub_29D5B2BCC();
  v21 = sub_29D499EC0(v34, v20);
  v29 = &v26;
  v22 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24);
  sub_29D5B315C();
  (*(v22 + 8))(v24, v20);
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v25 = v30;
  sub_29D5B2BBC();
  sub_29D4A0598(v32, &qword_2A17A4E28, &qword_2A17A4E30);
  v18(v10, v4);
  (*(v19 + 8))(v25, v31);
  return sub_29D48F668(v34);
}

uint64_t sub_29D568A34(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  sub_29D5698D0();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F318(0, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v32 - v13;
  v15 = MEMORY[0x29EDCA1E8];
  v16 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60);
  swift_beginAccess();
  sub_29D569484(v2 + v16, v14);
  if ((*(v9 + 48))(v14, 1, v8))
  {
    return sub_29D569874(v14, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  }

  v18 = v33;
  sub_29D5697AC(v14, v11);
  sub_29D569874(v14, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  (*(v5 + 16))(v7, &v11[*(v8 + 20)], v4);
  sub_29D52A588(v11);
  v19 = sub_29D5B3CEC();
  (*(v5 + 8))(v7, v4);
  v20 = *((*v15 & *v2) + 0x70);
  swift_beginAccess();
  sub_29D5693B8(v2 + v20, &v34, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  if (v35)
  {
    sub_29D497868(&v34, v36);
    sub_29D5B1CBC();
    v21 = sub_29D5B1C8C();
    sub_29D499EC0(v36, v36[3]);
    v22 = sub_29D5B314C();
    v23 = sub_29D5B1C9C();

    sub_29D5B21EC();
    v24 = sub_29D5B21DC();
    v25 = sub_29D5B219C();

    sub_29D5693B8(v18, &v34, &qword_2A17A4DA0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D502718);
    v26 = v35;
    if (v35)
    {
      v27 = sub_29D499EC0(&v34, v35);
      v28 = *(v26 - 8);
      MEMORY[0x2A1C7C4A8](v27);
      v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v30);
      v31 = sub_29D5B4C6C();
      (*(v28 + 8))(v30, v26);
      sub_29D48F668(&v34);
    }

    else
    {
      v31 = 0;
    }

    [v2 showViewController:v25 sender:v31];

    swift_unknownObjectRelease();
    return sub_29D48F668(v36);
  }

  else
  {

    return sub_29D4A0598(&v34, &qword_2A1A19460, &qword_2A1A19470);
  }
}

id sub_29D568F54(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[qword_2A17A4DE8] = 0;
  v6 = qword_2A17A4DF0;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v7 = qword_2A17A4DF8;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  *&v3[qword_2A17A4E00] = 0;
  v8 = &v3[qword_2A17A4E08];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  if (a2)
  {
    v9 = sub_29D5B3E1C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for ConceptDeltaHighlightFeedItemViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_29D569060(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D568F54(v5, v7, a4);
}

id sub_29D5690C0(void *a1)
{
  *&v1[qword_2A17A4DE8] = 0;
  v3 = qword_2A17A4DF0;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v4 = qword_2A17A4DF8;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  *&v1[qword_2A17A4E00] = 0;
  v5 = &v1[qword_2A17A4E08];
  v6 = type metadata accessor for ConceptDeltaHighlightFeedItemViewController();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_29D569244()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConceptDeltaHighlightFeedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConceptDeltaHighlightFeedItemViewController()
{
  result = qword_2A17A4E10;
  if (!qword_2A17A4E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5693B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_29D56942C()
{
  result = qword_2A17A4E20;
  if (!qword_2A17A4E20)
  {
    sub_29D5B2C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4E20);
  }

  return result;
}

uint64_t sub_29D569484(uint64_t a1, uint64_t a2)
{
  sub_29D48F318(0, &qword_2A17A4E38, type metadata accessor for ConceptDeltaHighlightFeedItemData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D569504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D569568(uint64_t a1)
{
  v2 = sub_29D5B200C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F318(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = v13 - v7;
  v9 = *(a1 + *(type metadata accessor for ConceptDeltaHighlightFeedItemData() + 32));
  if (v9 == -1 || !v9 || v9 == 1)
  {
    v10 = sub_29D5B0EFC();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    sub_29D5B1FFC();
    v11 = sub_29D5B2A0C();
    (*(v3 + 8))(v5, v2);
    sub_29D569874(v8, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    return v11;
  }

  else
  {
    type metadata accessor for ComparisonResult(0);
    v13[1] = v9;
    result = sub_29D5B4C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_29D5697AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D569810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConceptDeltaHighlightFeedItemData();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D569874(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D48F318(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D5698D0()
{
  if (!qword_2A1A164D8)
  {
    sub_29D48F51C(255, &qword_2A1A162D0);
    v0 = sub_29D5B3D0C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A164D8);
    }
  }
}

uint64_t sub_29D569938(uint64_t a1)
{
  v19 = a1;
  sub_29D56AE94();
  v3 = *(v2 - 8);
  v20 = v2;
  v21 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B181C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D56AF50();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0((v1 + 16), *(v1 + 40));
  sub_29D5B180C();
  v15 = sub_29D5B171C();
  (*(v7 + 8))(v9, v6);
  v22 = v15;
  *(swift_allocObject() + 16) = v19;
  sub_29D4B2E18();
  sub_29D571150(0, &qword_2A1A16448, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9A40]);
  sub_29D56B02C(&qword_2A1A167A0, sub_29D4B2E18);

  sub_29D5B3B7C();

  sub_29D4B3AF4();
  sub_29D56B02C(&qword_2A1A16F28, sub_29D56AF50);
  sub_29D5B3C3C();
  sub_29D56B02C(&qword_2A1A16F98, sub_29D56AE94);
  v16 = v20;
  v17 = sub_29D5B3B1C();
  (*(v21 + 8))(v5, v16);
  (*(v12 + 8))(v14, v11);
  return v17;
}

uint64_t sub_29D569D00@<X0>(unint64_t a1@<X0>, uint64_t isUniquelyReferenced_nonNull_native@<X1>, uint64_t *a3@<X8>)
{
  v8 = sub_29D5B17DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v125 - v13;
  v15 = sub_29D5B371C();
  v137 = *(v15 - 8);
  v138 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v139 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_29D5B16BC();
  v17 = MEMORY[0x2A1C7C4A8](v152);
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v19 = MEMORY[0x2A1C7C4A8](v18);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = MEMORY[0x2A1C7C4A8](&v125 - v20);
  v145 = &v125 - v22;
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v150 = &v125 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v144 = &v125 - v26;
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v149 = &v125 - v32;
  v33 = *a1;
  v143 = *(*a1 + 16);
  if (!v143)
  {
    sub_29D571150(0, &qword_2A1A161F8, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9E90]);
    v65 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_29D5B62A0;
    *(v66 + v65) = isUniquelyReferenced_nonNull_native;
    (*(v9 + 104))(v66 + v65, *MEMORY[0x29EDC3AE8], v8);
    *a3 = v66;
  }

  v134 = isUniquelyReferenced_nonNull_native;
  v133 = v14;
  v129 = v27;
  v127 = v31;
  v128 = v30;
  v126 = v29;
  v130 = v12;
  v135 = v9;
  v136 = v8;
  v132 = a3;
  v34 = 0;
  v131 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v142 = v33 + v131;
  v147 = (v28 + 1);
  v148 = v28 + 2;
  v140 = (v28 + 5);
  v141 = (v28 + 4);
  v35 = MEMORY[0x29EDCA198];
  do
  {
    v37 = *(v33 + 16);
    if (v34 >= v37)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v151 = v28[9];
    v3 = v28;
    v38 = v28[2];
    v39 = v149;
    v9 = v152;
    v38(v149, v142 + v151 * v34, v152);
    v4 = sub_29D5B168C();
    v12 = v40;
    v146 = v38;
    v38(v150, v39, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153 = v35;
    a1 = v35;
    v42 = sub_29D57A290(v4, v12);
    v37 = *(v35 + 16);
    v43 = (v41 & 1) == 0;
    v44 = v37 + v43;
    if (__OFADD__(v37, v43))
    {
      goto LABEL_92;
    }

    v9 = v41;
    if (*(v35 + 24) >= v44)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v41)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_29D593B90();
        if (v9)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_29D592FCC(v44, isUniquelyReferenced_nonNull_native);
      v45 = sub_29D57A290(v4, v12);
      if ((v9 & 1) != (v46 & 1))
      {
LABEL_100:
        result = sub_29D5B4CCC();
        __break(1u);
        return result;
      }

      v42 = v45;
      if (v9)
      {
LABEL_3:

        a1 = v152;
        v35 = v153;
        (*v140)(*(v153 + 7) + v42 * v151, v150, v152);
        v36 = *v147;
        (*v147)(v149, a1);
        goto LABEL_4;
      }
    }

    a1 = v152;
    v35 = v153;
    *&v153[8 * (v42 >> 6) + 64] |= 1 << v42;
    v47 = (*(v35 + 48) + 16 * v42);
    *v47 = v4;
    v47[1] = v12;
    (*v141)(*(v35 + 56) + v42 * v151, v150, a1);
    v36 = *v147;
    (*v147)(v149, a1);
    v48 = *(v35 + 16);
    v49 = __OFADD__(v48, 1);
    v37 = v48 + 1;
    if (v49)
    {
      goto LABEL_96;
    }

    *(v35 + 16) = v37;
LABEL_4:
    ++v34;
    v28 = v3;
  }

  while (v143 != v34);
  isUniquelyReferenced_nonNull_native = *(v134 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v33 = v134 + v131;
    v150 = MEMORY[0x29EDCA198];
    v4 = v146;
    while (1)
    {
      v54 = v144;
      v9 = v152;
      (v4)(v144, v33, v152);
      v3 = sub_29D5B168C();
      v56 = v55;
      (v4)(v145, v54, v9);
      a1 = v150;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v153 = a1;
      v57 = sub_29D57A290(v3, v56);
      v59 = *(a1 + 16);
      v60 = (v58 & 1) == 0;
      v49 = __OFADD__(v59, v60);
      v37 = v59 + v60;
      if (v49)
      {
        goto LABEL_95;
      }

      v61 = v58;
      if (*(a1 + 24) < v37)
      {
        break;
      }

      if (v12)
      {
        goto LABEL_26;
      }

      v12 = v57;
      sub_29D593B90();
      v57 = v12;
      if (v61)
      {
LABEL_19:
        v50 = v57;

        v150 = v153;
        v51 = v151;
        v52 = *(v153 + 7) + v50 * v151;
        v53 = v152;
        (*v140)(v52, v145, v152);
        v36(v144, v53);
        goto LABEL_20;
      }

LABEL_27:
      a1 = v152;
      v9 = v153;
      *&v153[8 * (v57 >> 6) + 64] |= 1 << v57;
      v63 = (*(v9 + 48) + 16 * v57);
      *v63 = v3;
      v63[1] = v56;
      v51 = v151;
      (*v141)(*(v9 + 56) + v57 * v151, v145, a1);
      v36(v144, a1);
      v64 = *(v9 + 16);
      v49 = __OFADD__(v64, 1);
      v37 = v64 + 1;
      if (v49)
      {
        goto LABEL_97;
      }

      v150 = v9;
      *(v9 + 16) = v37;
LABEL_20:
      v33 += v51;
      if (!--isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }
    }

    sub_29D592FCC(v37, v12);
    v57 = sub_29D57A290(v3, v56);
    if ((v61 & 1) != (v62 & 1))
    {
      goto LABEL_100;
    }

LABEL_26:
    if (v61)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  v150 = MEMORY[0x29EDCA198];
LABEL_35:
  v68 = sub_29D58C444(v35);
  v4 = v150;

  v70 = sub_29D58C444(v69);

  isUniquelyReferenced_nonNull_native = sub_29D570B20(v70, v68);
  if (*(isUniquelyReferenced_nonNull_native + 16) <= *(v70 + 16) >> 3)
  {
    v153 = v70;

    sub_29D56B07C(isUniquelyReferenced_nonNull_native);
    v149 = v153;
  }

  else
  {

    v149 = sub_29D56E84C(isUniquelyReferenced_nonNull_native, v70);
  }

  v71 = v139;
  if (*(isUniquelyReferenced_nonNull_native + 16) <= *(v68 + 16) >> 3)
  {
    v153 = v68;

    sub_29D56B07C(isUniquelyReferenced_nonNull_native);
    v72 = v153;
  }

  else
  {

    v72 = sub_29D56E84C(isUniquelyReferenced_nonNull_native, v68);
  }

  sub_29D5B36AC();
  v3 = v149;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  a1 = sub_29D5B370C();
  v73 = sub_29D5B429C();

  if (os_log_type_enabled(a1, v73))
  {
    v74 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v153 = v147;
    *v74 = 136316162;
    v75 = sub_29D5B41BC();
    LODWORD(v145) = v73;
    v76 = v75;
    v78 = v77;

    v79 = sub_29D501890(v76, v78, &v153);

    *(v74 + 4) = v79;
    *(v74 + 12) = 2048;
    v80 = *(v68 + 16);

    *(v74 + 14) = v80;

    *(v74 + 22) = 2080;
    v81 = sub_29D5B41BC();
    v83 = sub_29D501890(v81, v82, &v153);

    *(v74 + 24) = v83;
    *(v74 + 32) = 2048;
    v84 = v3[2];

    *(v74 + 34) = v84;

    *(v74 + 42) = 2048;
    v85 = *(v72 + 16);

    *(v74 + 44) = v85;

    _os_log_impl(&dword_29D48C000, a1, v145, "[SharableModelContextChangeGenerator] received %s new models, found %ld old models, %s of them intersects, %ld of them are new, %ld of them should be removed", v74, 0x34u);
    v86 = v147;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v86, -1, -1);
    MEMORY[0x29ED5FB80](v74, -1, -1);

    (*(v137 + 8))(v139, v138);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    (*(v137 + 8))(v71, v138);
  }

  v35 = v136;
  v9 = v135;
  v12 = v133;
  v33 = *(v72 + 16);
  if (v33)
  {
    a1 = sub_29D515968(*(v72 + 16), 0);
    v87 = sub_29D5A24A8(&v153, (a1 + 32), v33, v72);
    sub_29D4B30C0();
    if (v87 == v33)
    {
      *v12 = a1;
      (*(v9 + 104))(v12, *MEMORY[0x29EDC3AF8], v35);
      v3 = sub_29D515900(0, 1, 1, MEMORY[0x29EDCA190]);
      a1 = v3[2];
      v37 = v3[3];
      v33 = a1 + 1;
      if (a1 < v37 >> 1)
      {
LABEL_47:
        v3[2] = v33;
        (*(v9 + 32))(v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1, v12, v35);
        goto LABEL_49;
      }

LABEL_99:
      v3 = sub_29D515900(v37 > 1, v33, 1, v3);
      goto LABEL_47;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v3 = MEMORY[0x29EDCA190];
LABEL_49:
  v35 = isUniquelyReferenced_nonNull_native + 56;
  v88 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
  v89 = -1;
  if (v88 < 64)
  {
    v89 = ~(-1 << v88);
  }

  v90 = v89 & *(isUniquelyReferenced_nonNull_native + 56);
  v9 = (v88 + 63) >> 6;

  v12 = 0;
  v37 = MEMORY[0x29EDCA190];
  v147 = MEMORY[0x29EDCA190];
  v33 = v149;
  while (v90)
  {
    v37 = v90;
LABEL_58:
    v90 = (v37 - 1) & v37;
    if (*(v4 + 16))
    {
      v92 = (*(isUniquelyReferenced_nonNull_native + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v37)))));
      v93 = *v92;
      v94 = v92[1];

      v95 = v93;
      a1 = v4;
      v96 = sub_29D57A290(v95, v94);
      if (v97)
      {
        v98 = v152;
        v99 = v127;
        v146(v127, *(v4 + 56) + v96 * v151, v152);

        v145 = *v141;
        (v145)(v129, v99, v98);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_29D5158CC(0, *(v147 + 2) + 1, 1, v147);
        }

        v101 = *(v147 + 2);
        v100 = *(v147 + 3);
        a1 = v101 + 1;
        v33 = v149;
        if (v101 >= v100 >> 1)
        {
          v147 = sub_29D5158CC(v100 > 1, v101 + 1, 1, v147);
        }

        v102 = v147;
        *(v147 + 2) = a1;
        (v145)(v102 + v131 + v101 * v151, v129, v152);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v91 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_93;
    }

    if (v91 >= v9)
    {
      break;
    }

    v37 = *(v35 + 8 * v91);
    ++v12;
    if (v37)
    {
      v12 = v91;
      goto LABEL_58;
    }
  }

  v9 = v33 + 56;
  v103 = 1 << *(v33 + 32);
  v104 = -1;
  if (v103 < 64)
  {
    v104 = ~(-1 << v103);
  }

  isUniquelyReferenced_nonNull_native = v104 & *(v33 + 56);
  v12 = (v103 + 63) >> 6;

  v105 = 0;
  v106 = MEMORY[0x29EDCA190];
  while (isUniquelyReferenced_nonNull_native)
  {
    v37 = isUniquelyReferenced_nonNull_native;
LABEL_75:
    isUniquelyReferenced_nonNull_native = (v37 - 1) & v37;
    if (*(v4 + 16))
    {
      v108 = (*(v33 + 48) + ((v105 << 10) | (16 * __clz(__rbit64(v37)))));
      v109 = *v108;
      v35 = v108[1];

      v110 = v109;
      a1 = v4;
      v111 = sub_29D57A290(v110, v35);
      if (v112)
      {
        v113 = v152;
        v114 = v126;
        v146(v126, *(v4 + 56) + v111 * v151, v152);

        v115 = *v141;
        (*v141)(v128, v114, v113);
        v116 = swift_isUniquelyReferenced_nonNull_native();
        v145 = v115;
        if ((v116 & 1) == 0)
        {
          v106 = sub_29D5158CC(0, v106[2] + 1, 1, v106);
        }

        v35 = v106[2];
        v117 = v106[3];
        a1 = v35 + 1;
        v33 = v149;
        if (v35 >= v117 >> 1)
        {
          v106 = sub_29D5158CC(v117 > 1, v35 + 1, 1, v106);
        }

        v106[2] = a1;
        (v145)(v106 + v131 + v35 * v151, v128, v152);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v107 = v105 + 1;
    if (__OFADD__(v105, 1))
    {
      goto LABEL_94;
    }

    if (v107 >= v12)
    {
      break;
    }

    v37 = *(v9 + 8 * v107);
    ++v105;
    if (v37)
    {
      v105 = v107;
      goto LABEL_75;
    }
  }

  v153 = v147;
  sub_29D54FB2C(v106);
  if (*(v153 + 2))
  {
    v118 = v130;
    *v130 = v153;
    v119 = v135;
    v120 = v136;
    (*(v135 + 104))(v118, *MEMORY[0x29EDC3AE8], v136);
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v132;
    if ((v121 & 1) == 0)
    {
      v3 = sub_29D515900(0, v3[2] + 1, 1, v3);
    }

    v124 = v3[2];
    v123 = v3[3];
    if (v124 >= v123 >> 1)
    {
      v3 = sub_29D515900(v123 > 1, v124 + 1, 1, v3);
    }

    v3[2] = v124 + 1;
    result = (*(v119 + 32))(v3 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v124, v118, v120);
  }

  else
  {

    v122 = v132;
  }

  *v122 = v3;
  return result;
}

uint64_t sub_29D56AE38()
{
  sub_29D48F668(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_29D56AE94()
{
  if (!qword_2A1A16F90)
  {
    sub_29D56AF50();
    sub_29D4B3AF4();
    sub_29D56B02C(&qword_2A1A16F28, sub_29D56AF50);
    v0 = sub_29D5B382C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16F90);
    }
  }
}

void sub_29D56AF50()
{
  if (!qword_2A1A16F20)
  {
    sub_29D4B2E18();
    sub_29D571150(255, &qword_2A1A16448, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9A40]);
    sub_29D56B02C(&qword_2A1A167A0, sub_29D4B2E18);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16F20);
    }
  }
}

uint64_t sub_29D56B02C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D56B07C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_29D56BF70(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_29D56B1A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v98 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v91 = &v87 - v6;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48();
  v97 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v96 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for SharedConceptCodedValue(0);
  v102 = *(v103 - 1);
  v12 = MEMORY[0x2A1C7C4A8](v103);
  v109 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v108 = &v87 - v14;
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v16 = v15;
  v118 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v117 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v87 - v19;
  v87 = v2;
  v21 = *v2;
  sub_29D5B4D4C();
  v114 = a1;
  sub_29D4D62E4(v121);
  result = sub_29D5B4D9C();
  v23 = v21 + 56;
  v24 = -1 << *(v21 + 32);
  v25 = result & ~v24;
  if (((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
  {
LABEL_65:
    v80 = v92;
    *(v92 + 80) = 0;
    v80[3] = 0u;
    v80[4] = 0u;
    v80[1] = 0u;
    v80[2] = 0u;
    *v80 = 0u;
    return result;
  }

  v26 = ~v24;
  v27 = *v114;
  v115 = v118 + 16;
  v116 = (v118 + 8);
  v104 = v27;
  v119 = *(v27 + 16);
  v95 = (v5 + 48);
  v88 = (v5 + 32);
  v89 = (v5 + 8);
  v90 = v9;
  v107 = v21;
  v106 = v21 + 56;
  v105 = ~v24;
  while (1)
  {
    v29 = *(v21 + 48) + 88 * v25;
    v30 = *(v29 + 16);
    *v121 = *v29;
    *&v121[16] = v30;
    v31 = *(v29 + 32);
    v32 = *(v29 + 48);
    v33 = *(v29 + 64);
    *&v124[16] = *(v29 + 80);
    v123 = v32;
    *v124 = v33;
    v122 = v31;
    v34 = *v121;
    if (*(*v121 + 16) != v119)
    {
      goto LABEL_7;
    }

    v112 = v25;
    if (v119 && *v121 != v104)
    {
      v35 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v25 = *v121 + v35;
      v36 = v104 + v35;
      sub_29D4B4604(v121, &v120);
      v37 = 0;
      while (v37 < *(v34 + 2))
      {
        v38 = *(v118 + 72) * v37;
        v39 = *(v118 + 16);
        v39(v20, v25 + v38, v16);
        if (v119 == v37)
        {
          goto LABEL_67;
        }

        v40 = v117;
        v39(v117, v36 + v38, v16);
        sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0);
        v41 = sub_29D5B3E0C();
        v42 = *v116;
        (*v116)(v40, v16);
        v42(v20, v16);
        if ((v41 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (v119 == ++v37)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      sub_29D4B4660(v121);
      v25 = v112;
LABEL_69:
      v34 = v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = *v34;
      v120 = *v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_70;
    }

    sub_29D4B4604(v121, &v120);
LABEL_18:
    if (*&v121[8] != *(v114 + 1) && (sub_29D5B4C7C() & 1) == 0 || (*&v121[24] != v114[3] || v122 != v114[4]) && (sub_29D5B4C7C() & 1) == 0 || (v43 = *(&v122 + 1), v44 = v114[5], v45 = *(*(&v122 + 1) + 16), v45 != *(v44 + 16)))
    {
LABEL_6:
      result = sub_29D4B4660(v121);
      v25 = v112;
      v21 = v107;
      v23 = v106;
      v26 = v105;
      goto LABEL_7;
    }

    if (v45 && *(&v122 + 1) != v44)
    {
      break;
    }

LABEL_59:
    if (v123 != *(v114 + 3) && (sub_29D5B4C7C() & 1) == 0 || *v124 != *(v114 + 8))
    {
      goto LABEL_6;
    }

    if (*&v124[8] == *(v114 + 9))
    {
      goto LABEL_68;
    }

    v79 = sub_29D5B4C7C();
    result = sub_29D4B4660(v121);
    v25 = v112;
    v21 = v107;
    v23 = v106;
    v26 = v105;
    if (v79)
    {
      goto LABEL_69;
    }

LABEL_7:
    v25 = (v25 + 1) & v26;
    if (((*(v23 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v46 = 0;
  v47 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v100 = *(&v122 + 1) + v47;
  v99 = v44 + v47;
  v94 = *(&v122 + 1);
  v93 = v45;
  while (v46 < *(v43 + 16))
  {
    v34 = (*(v102 + 72) * v46);
    v25 = v108;
    sub_29D4F55C4(v34 + v100, v108, type metadata accessor for SharedConceptCodedValue);
    if (v46 == v45)
    {
      goto LABEL_74;
    }

    v101 = v46;
    v48 = v109;
    sub_29D4F55C4(v34 + v99, v109, type metadata accessor for SharedConceptCodedValue);
    v34 = *v25;
    v49 = *v48;
    v50 = *(*v48 + 16);
    v113 = *(*v25 + 16);
    v25 = v115;
    if (v113 != v50)
    {
      goto LABEL_5;
    }

    if (v113 && v34 != v49)
    {
      v51 = 0;
      v52 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v111 = v34 + v52;
      v110 = v49 + v52;
      while (v51 < *(v34 + 2))
      {
        v53 = *(v118 + 72) * v51;
        v54 = *(v118 + 16);
        v54(v20, &v111[v53], v16);
        if (v51 >= *(v49 + 16))
        {
          goto LABEL_72;
        }

        v55 = v117;
        v54(v117, (v110 + v53), v16);
        sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0);
        v56 = sub_29D5B3E0C();
        v57 = *v116;
        (*v116)(v55, v16);
        v57(v20, v16);
        if ((v56 & 1) == 0)
        {
          goto LABEL_5;
        }

        if (v113 == ++v51)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
      break;
    }

LABEL_37:
    v58 = v103[5];
    v59 = *(v97 + 48);
    v60 = v96;
    sub_29D4F55C4(v108 + v58, v96, sub_29D4A05F4);
    sub_29D4F55C4(v109 + v58, v60 + v59, sub_29D4A05F4);
    v61 = *v95;
    v62 = v98;
    if ((*v95)(v60, 1, v98) == 1)
    {
      v63 = v61(v60 + v59, 1, v62) == 1;
      v28 = v60;
      if (!v63)
      {
        goto LABEL_4;
      }

      sub_29D571248(v60, sub_29D4A05F4);
    }

    else
    {
      v64 = v90;
      sub_29D4F55C4(v60, v90, sub_29D4A05F4);
      if (v61(v60 + v59, 1, v62) == 1)
      {
        (*v89)(v64, v62);
        v28 = v60;
LABEL_4:
        sub_29D571248(v28, sub_29D4DCD48);
LABEL_5:
        sub_29D571248(v109, type metadata accessor for SharedConceptCodedValue);
        sub_29D571248(v108, type metadata accessor for SharedConceptCodedValue);
        goto LABEL_6;
      }

      v65 = v91;
      (*v88)(v91, v60 + v59, v62);
      sub_29D5712A8();
      v66 = sub_29D5B3E0C();
      v67 = *v89;
      (*v89)(v65, v62);
      v67(v64, v62);
      sub_29D571248(v60, sub_29D4A05F4);
      if ((v66 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v68 = v103[6];
    v69 = (v108 + v68);
    v70 = *(v108 + v68 + 8);
    v71 = (v109 + v68);
    v72 = v71[1];
    if (v70)
    {
      if (!v72 || (*v69 != *v71 || v70 != v72) && (sub_29D5B4C7C() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (v72)
    {
      goto LABEL_5;
    }

    v73 = v103[7];
    v25 = v108;
    v74 = (v108 + v73);
    v75 = *(v108 + v73 + 8);
    v76 = (v109 + v73);
    v77 = v76[1];
    v78 = v77 == 0;
    if (!v75)
    {
      v43 = v94;
      goto LABEL_57;
    }

    if (!v77)
    {
      goto LABEL_5;
    }

    v43 = v94;
    if (*v74 != *v76 || v75 != v77)
    {
      v78 = sub_29D5B4C7C();
      v25 = v108;
LABEL_57:
      v45 = v93;
      v34 = type metadata accessor for SharedConceptCodedValue;
      sub_29D571248(v109, type metadata accessor for SharedConceptCodedValue);
      sub_29D571248(v25, type metadata accessor for SharedConceptCodedValue);
      if ((v78 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_58;
    }

    v34 = type metadata accessor for SharedConceptCodedValue;
    sub_29D571248(v109, type metadata accessor for SharedConceptCodedValue);
    sub_29D571248(v108, type metadata accessor for SharedConceptCodedValue);
    v45 = v93;
LABEL_58:
    v46 = v101 + 1;
    if (v101 + 1 == v45)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  sub_29D59CE7C();
  v82 = v120;
LABEL_70:
  v83 = *(v82 + 48) + 88 * v25;
  v84 = *(v83 + 48);
  v85 = v92;
  *(v92 + 32) = *(v83 + 32);
  *(v85 + 48) = v84;
  *(v85 + 64) = *(v83 + 64);
  *(v85 + 80) = *(v83 + 80);
  v86 = *(v83 + 16);
  *v85 = *v83;
  *(v85 + 16) = v86;
  result = sub_29D56C0AC(v25);
  *v34 = v120;
  return result;
}

uint64_t sub_29D56BF70(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  v6 = sub_29D5B4D9C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_29D5B4C7C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_29D59CB30();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_29D56C48C(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_29D56C0AC(unint64_t a1)
{
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v4 = v3;
  v39 = *(v3 - 8);
  result = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v38 - v6;
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_29D5B47EC();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v45 = a1;
      v40 = (v13 + 1) & v12;
      v41 = v12;
      v14 = (v39 + 8);
      v42 = v9;
      v43 = v8;
      v38 = v39 + 16;
      while (1)
      {
        v15 = *(v8 + 48);
        v44 = v11;
        v16 = v15 + 88 * v11;
        v18 = *(v16 + 48);
        v17 = *(v16 + 64);
        v19 = *(v16 + 32);
        v52 = *(v16 + 80);
        v50 = v18;
        v51 = v17;
        v49 = v19;
        v20 = *(v16 + 16);
        v48[0] = *v16;
        v48[1] = v20;
        sub_29D5B4D4C();
        v21 = *&v48[0];
        MEMORY[0x29ED5F330](*(*&v48[0] + 16));
        v22 = *(v21 + 16);
        if (v22)
        {
          v23 = v39;
          v24 = v21 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
          sub_29D4B4604(v48, v46);
          v25 = *(v23 + 72);
          v26 = *(v23 + 16);
          do
          {
            v26(v7, v24, v4);
            sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8);
            sub_29D5B3D9C();
            (*v14)(v7, v4);
            v24 += v25;
            --v22;
          }

          while (v22);
        }

        else
        {
          sub_29D4B4604(v48, v46);
        }

        sub_29D5B3EFC();
        sub_29D5B3EFC();
        sub_29D4DB620(&v47, *(&v49 + 1));
        sub_29D5B3EFC();
        v27 = *&v51;
        if (*&v51 == 0.0)
        {
          v27 = 0.0;
        }

        MEMORY[0x29ED5F360](*&v27);
        sub_29D5B3EFC();
        v28 = sub_29D5B4D9C();
        sub_29D4B4660(v48);
        v29 = v41;
        v30 = v28 & v41;
        a1 = v45;
        v9 = v42;
        if (v45 >= v40)
        {
          break;
        }

        v8 = v43;
        v31 = v44;
        if (v30 < v40)
        {
          goto LABEL_15;
        }

LABEL_16:
        v32 = *(v8 + 48);
        v33 = (v32 + 88 * v45);
        v34 = (v32 + 88 * v31);
        if (v45 != v31 || v33 >= v34 + 88)
        {
          memmove(v33, v34, 0x58uLL);
          a1 = v31;
        }

LABEL_19:
        v11 = (v31 + 1) & v29;
        if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_21;
        }

        v45 = a1;
      }

      v8 = v43;
      v31 = v44;
      if (v30 < v40)
      {
        goto LABEL_19;
      }

LABEL_15:
      if (v45 < v30)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

LABEL_21:

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v35 = *(v8 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v37;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_29D56C48C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_29D5B47EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_29D5B4D4C();

        sub_29D5B3EFC();
        v10 = sub_29D5B4D9C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_29D56C650(unint64_t a1, unint64_t a2)
{
  v278 = *MEMORY[0x29EDCA608];
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v222 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v210 = &v201 - v6;
  sub_29D4A05F4();
  v8 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v208 = &v201 - v11;
  sub_29D4DCD48();
  v221 = v12;
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v204 = &v201 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v217 = &v201 - v15;
  v16 = type metadata accessor for SharedConceptCodedValue(0);
  v228 = *(v16 - 8);
  v229 = v16;
  v17 = MEMORY[0x2A1C7C4A8](v16);
  v215 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v211 = (&v201 - v20);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v237 = &v201 - v22;
  MEMORY[0x2A1C7C4A8](v21);
  v233 = &v201 - v23;
  v203 = 0;
  v24 = a2;
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v26 = v25;
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v247 = &v201 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v31 = &v201 - v30;
  if (!*(a2 + 16))
  {

    return MEMORY[0x29EDCA1A0];
  }

  v32 = *(a1 + 56);
  v214 = a1 + 56;
  v33 = -1 << *(a1 + 32);
  v212 = ~v33;
  if (-v33 < 64)
  {
    v34 = ~(-1 << -v33);
  }

  else
  {
    v34 = -1;
  }

  v226 = v34 & v32;
  v213 = (63 - v33) >> 6;
  v35 = (a2 + 56);
  v249 = v29;
  v245 = (v29 + 8);
  v246 = v29 + 16;
  v220 = (v5 + 48);
  v205 = (v5 + 32);
  v206 = (v5 + 8);

  v37 = 0;
  v38 = 88;
  v238 = (v24 + 56);
  v239 = v24;
  v202 = v10;
  v250 = v31;
  for (i = a1; ; a1 = i)
  {
    v39 = v226;
    if (!v226)
    {
      v42 = v37;
      v41 = v214;
      while (1)
      {
        v40 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v40 >= v213)
        {
          goto LABEL_83;
        }

        v39 = *(v214 + 8 * v40);
        ++v42;
        if (v39)
        {
          goto LABEL_13;
        }
      }

LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
      goto LABEL_192;
    }

    v40 = v37;
    v41 = v214;
LABEL_13:
    v43 = *(a1 + 48) + 88 * (__clz(__rbit64(v39)) | (v40 << 6));
    v44 = *(v43 + 16);
    v267 = *v43;
    v268 = v44;
    v46 = *(v43 + 48);
    v45 = *(v43 + 64);
    v47 = *(v43 + 32);
    v272 = *(v43 + 80);
    v273 = a1;
    v270 = v46;
    v271 = v45;
    v269 = v47;
    v274 = v41;
    v275 = v212;
    v216 = v40;
    v276 = v40;
    v277 = (v39 - 1) & v39;
    v226 = v277;
    v48 = v24;
    sub_29D5B4D4C();
    v49 = v267;
    v50 = *(v267 + 16);
    MEMORY[0x29ED5F330](v50);
    v244 = v49;
    if (v50)
    {
      v51 = v249;
      v52 = v49 + ((*(v249 + 80) + 32) & ~*(v249 + 80));
      sub_29D4B4604(&v267, v262);
      v53 = *(v51 + 72);
      sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8);
      do
      {
        sub_29D5B3D9C();
        v52 += v53;
        --v50;
      }

      while (v50);
    }

    else
    {
      sub_29D4B4604(&v267, v262);
    }

    *&v240 = *(&v267 + 1);
    v236 = v268;
    sub_29D5B3EFC();
    *&v230 = v269;
    *(&v230 + 1) = *(&v268 + 1);
    sub_29D5B3EFC();
    v231 = *(&v269 + 1);
    sub_29D4DB620(&v256, *(&v269 + 1));
    *&v223 = *(&v270 + 1);
    *(&v223 + 1) = v270;
    sub_29D5B3EFC();
    v54 = *&v271;
    v55 = *&v271 == 0.0 ? 0.0 : *&v271;
    MEMORY[0x29ED5F360](*&v55);
    v10 = *(&v271 + 1);
    v56 = v272;
    sub_29D5B3EFC();
    v57 = sub_29D5B4D9C();
    v24 = v48;
    v58 = -1 << *(v48 + 32);
    a1 = v57 & ~v58;
    v59 = a1 >> 6;
    v60 = 1 << a1;
    if (((1 << a1) & v35[a1 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_29D4B4660(&v267);
    v37 = v216;
  }

  *&v207 = v56;
  *(&v207 + 1) = v10;
  v61 = ~v58;
  v248 = *(v244 + 16);
  v232 = ~v58;
LABEL_28:
  v62 = *(v24 + 48) + 88 * a1;
  v63 = *(v62 + 16);
  *v262 = *v62;
  *&v262[16] = v63;
  v64 = *(v62 + 32);
  v65 = *(v62 + 48);
  v66 = *(v62 + 64);
  v266 = *(v62 + 80);
  v264 = v65;
  v265 = v66;
  v263 = v64;
  v67 = *v262;
  if (*(*v262 + 16) != v248)
  {
    goto LABEL_27;
  }

  v242 = a1;
  v234 = v60;
  v235 = v59;
  if (v248 && *v262 != v244)
  {
    v68 = (*(v249 + 80) + 32) & ~*(v249 + 80);
    v69 = *v262 + v68;
    v38 = v244 + v68;
    sub_29D4B4604(v262, &v256);
    v70 = 0;
    while (v70 < *(v67 + 16))
    {
      v71 = *(v249 + 72) * v70;
      v72 = *(v249 + 16);
      v72(v31, v69 + v71, v26);
      if (v70 >= *(v244 + 16))
      {
        goto LABEL_87;
      }

      v73 = v247;
      v72(v247, v38 + v71, v26);
      sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0);
      v74 = sub_29D5B3E0C();
      v10 = v26;
      v75 = *v245;
      v76 = v73;
      v31 = v250;
      (*v245)(v76, v26);
      v75(v31, v26);
      if ((v74 & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v248 == ++v70)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  sub_29D4B4604(v262, &v256);
LABEL_38:
  if (*&v262[8] != __PAIR128__(v236, v240) && (sub_29D5B4C7C() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (__PAIR128__(*&v262[24], v263) != v230 && (sub_29D5B4C7C() & 1) == 0)
  {
    goto LABEL_26;
  }

  a1 = *(&v263 + 1);
  v10 = *(*(&v263 + 1) + 16);
  if (v10 != *(v231 + 16))
  {
    goto LABEL_26;
  }

  if (v10 && *(&v263 + 1) != v231)
  {
    v77 = 0;
    v78 = (*(v228 + 80) + 32) & ~*(v228 + 80);
    v225 = *(&v263 + 1) + v78;
    v224 = v231 + v78;
    v218 = v10;
    v219 = *(&v263 + 1);
    while (1)
    {
      if (v77 >= *(a1 + 16))
      {
        goto LABEL_190;
      }

      v79 = *(v228 + 72) * v77;
      v80 = v233;
      sub_29D4F55C4(v225 + v79, v233, type metadata accessor for SharedConceptCodedValue);
      if (v77 >= *(v231 + 16))
      {
        goto LABEL_191;
      }

      v227 = v77;
      v81 = v224 + v79;
      v82 = v237;
      sub_29D4F55C4(v81, v237, type metadata accessor for SharedConceptCodedValue);
      v83 = *v80;
      a1 = *v82;
      v84 = *(*v82 + 16);
      v243 = *(*v80 + 16);
      if (v243 != v84)
      {
        goto LABEL_25;
      }

      if (v243 && v83 != a1)
      {
        v85 = 0;
        v86 = (*(v249 + 80) + 32) & ~*(v249 + 80);
        *(&v240 + 1) = a1 + v86;
        v241 = v83 + v86;
        while (v85 < *(v83 + 16))
        {
          v10 = v250;
          v87 = *(v249 + 72) * v85;
          v88 = *(v249 + 16);
          v38 = v246;
          v88(v250, v241 + v87, v26);
          if (v85 >= *(a1 + 16))
          {
            goto LABEL_186;
          }

          v89 = v247;
          v88(v247, *(&v240 + 1) + v87, v26);
          sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0);
          v90 = sub_29D5B3E0C();
          v38 = v245;
          v91 = *v245;
          (*v245)(v89, v26);
          v91(v10, v26);
          if ((v90 & 1) == 0)
          {
            goto LABEL_25;
          }

          if (v243 == ++v85)
          {
            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_186:
        __break(1u);
        goto LABEL_187;
      }

LABEL_56:
      v92 = v229[5];
      v93 = *(v221 + 48);
      v94 = v217;
      sub_29D4F55C4(v233 + v92, v217, sub_29D4A05F4);
      sub_29D4F55C4(v237 + v92, v94 + v93, sub_29D4A05F4);
      v10 = v220;
      v95 = *v220;
      v96 = v222;
      if ((*v220)(v94, 1, v222) == 1)
      {
        if (v95(v94 + v93, 1, v96) != 1)
        {
          goto LABEL_24;
        }

        sub_29D571248(v94, sub_29D4A05F4);
      }

      else
      {
        v38 = v208;
        sub_29D4F55C4(v94, v208, sub_29D4A05F4);
        if (v95(v94 + v93, 1, v96) == 1)
        {
          (*v206)(v38, v96);
LABEL_24:
          sub_29D571248(v94, sub_29D4DCD48);
LABEL_25:
          sub_29D571248(v237, type metadata accessor for SharedConceptCodedValue);
          sub_29D571248(v233, type metadata accessor for SharedConceptCodedValue);
          v31 = v250;
LABEL_26:
          sub_29D4B4660(v262);
          v35 = v238;
          v24 = v239;
          v38 = 88;
          a1 = v242;
          v61 = v232;
LABEL_27:
          a1 = (a1 + 1) & v61;
          v59 = a1 >> 6;
          v60 = 1 << a1;
          if ((v35[a1 >> 6] & (1 << a1)) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_28;
        }

        v97 = v210;
        (*v205)(v210, v94 + v93, v96);
        sub_29D5712A8();
        v98 = sub_29D5B3E0C();
        v10 = v206;
        v99 = *v206;
        (*v206)(v97, v96);
        v99(v38, v96);
        sub_29D571248(v94, sub_29D4A05F4);
        if ((v98 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v100 = v229[6];
      v101 = (v233 + v100);
      v102 = *(v233 + v100 + 8);
      v103 = (v237 + v100);
      v104 = v103[1];
      if (v102)
      {
        if (!v104 || (*v101 != *v103 || v102 != v104) && (sub_29D5B4C7C() & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v104)
      {
        goto LABEL_25;
      }

      v105 = v229[7];
      v106 = v233;
      v107 = (v233 + v105);
      v108 = *(v233 + v105 + 8);
      v109 = (v237 + v105);
      v110 = v109[1];
      v111 = v110 == 0;
      if (!v108)
      {
        break;
      }

      if (!v110)
      {
        goto LABEL_25;
      }

      a1 = v219;
      if (*v107 != *v109 || v108 != v110)
      {
        v111 = sub_29D5B4C7C();
        v31 = v250;
        v106 = v233;
LABEL_75:
        sub_29D571248(v237, type metadata accessor for SharedConceptCodedValue);
        sub_29D571248(v106, type metadata accessor for SharedConceptCodedValue);
        v10 = v218;
        if ((v111 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_76;
      }

      sub_29D571248(v237, type metadata accessor for SharedConceptCodedValue);
      sub_29D571248(v233, type metadata accessor for SharedConceptCodedValue);
      v31 = v250;
      v10 = v218;
LABEL_76:
      v77 = v227 + 1;
      if (v227 + 1 == v10)
      {
        goto LABEL_77;
      }
    }

    v31 = v250;
    a1 = v219;
    goto LABEL_75;
  }

LABEL_77:
  if (__PAIR128__(v264, *(&v264 + 1)) != v223 && (sub_29D5B4C7C() & 1) == 0 || *&v265 != v54)
  {
    goto LABEL_26;
  }

  if (__PAIR128__(*(&v265 + 1), v266) == v207)
  {
LABEL_88:
    sub_29D4B4660(v262);
    v35 = v238;
    v24 = v239;
    a1 = v242;
    v113 = v234;
    v10 = v235;
    goto LABEL_89;
  }

  v112 = sub_29D5B4C7C();
  sub_29D4B4660(v262);
  v35 = v238;
  v24 = v239;
  v38 = 88;
  a1 = v242;
  v113 = v234;
  v10 = v235;
  v61 = v232;
  if ((v112 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_89:
  v38 = v113;
  v115 = sub_29D4B4660(&v267);
  v116 = *(v24 + 32);
  v208 = ((1 << v116) + 63) >> 6;
  v36 = 8 * v208;
  if ((v116 & 0x3Fu) > 0xD)
  {
    goto LABEL_197;
  }

  while (2)
  {
    *(&v207 + 1) = &v201;
    MEMORY[0x2A1C7C4A8](v115);
    v118 = &v201 - ((v117 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v118, v35, v117);
    *&v118[8 * v10] &= ~v38;
    v38 = v24;
    v217 = *(v24 + 16) - 1;
    v218 = v118;
    v119 = i;
    v120 = v249;
    v122 = v213;
    v121 = v214;
    v123 = v226;
    v124 = v216;
    while (1)
    {
LABEL_91:
      if (!v123)
      {
        v126 = v124;
        while (1)
        {
          v125 = v126 + 1;
          if (__OFADD__(v126, 1))
          {
            goto LABEL_194;
          }

          if (v125 >= v122)
          {
            break;
          }

          v123 = *(v121 + 8 * v125);
          ++v126;
          if (v123)
          {
            goto LABEL_97;
          }
        }

        if (v122 <= v124 + 1)
        {
          v196 = v124 + 1;
        }

        else
        {
          v196 = v122;
        }

        v273 = v119;
        v274 = v121;
        v275 = v212;
        v276 = v196 - 1;
        v277 = 0;
        v24 = sub_29D5701F8(v218, v208, v217, v38);
LABEL_83:
        sub_29D4B30C0();
        return v24;
      }

      v125 = v124;
LABEL_97:
      v127 = *(v119 + 48) + 88 * (__clz(__rbit64(v123)) | (v125 << 6));
      v128 = *(v127 + 16);
      v256 = *v127;
      v257 = v128;
      v130 = *(v127 + 48);
      v129 = *(v127 + 64);
      v131 = *(v127 + 32);
      v261 = *(v127 + 80);
      v259 = v130;
      v260 = v129;
      v258 = v131;
      v273 = v119;
      v274 = v121;
      v275 = v212;
      v276 = v125;
      v216 = v125;
      v226 = (v123 - 1) & v123;
      v277 = v226;
      sub_29D5B4D4C();
      v10 = v256;
      a1 = *(v256 + 16);
      MEMORY[0x29ED5F330](a1);
      v248 = v10;
      if (a1)
      {
        v132 = v10 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
        sub_29D4B4604(&v256, &v252);
        v133 = *(v120 + 72);
        v10 = sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8);
        do
        {
          sub_29D5B3D9C();
          v132 += v133;
          --a1;
        }

        while (a1);
      }

      else
      {
        sub_29D4B4604(&v256, &v252);
      }

      *&v240 = v257;
      *(&v240 + 1) = *(&v256 + 1);
      sub_29D5B3EFC();
      v236 = *(&v257 + 1);
      v233 = v258;
      sub_29D5B3EFC();
      v232 = *(&v258 + 1);
      sub_29D4DB620(v251, *(&v258 + 1));
      v225 = *(&v259 + 1);
      v227 = v259;
      sub_29D5B3EFC();
      v134 = *&v260;
      if (*&v260 == 0.0)
      {
        v135 = 0.0;
      }

      else
      {
        v135 = *&v260;
      }

      MEMORY[0x29ED5F360](*&v135);
      v224 = *(&v260 + 1);
      v219 = v261;
      sub_29D5B3EFC();
      v136 = v251;
      v137 = sub_29D5B4D9C();
      v138 = -1 << *(v38 + 32);
      v139 = v137 & ~v138;
      v140 = v139 >> 6;
      v141 = 1 << v139;
      if (((1 << v139) & v35[v139 >> 6]) == 0)
      {
        goto LABEL_175;
      }

      v142 = v38;
      v143 = ~v138;
      v38 = *(v248 + 16);
      v244 = v38;
      v237 = ~v138;
      while (1)
      {
        v144 = *(v142 + 48) + 88 * v139;
        v145 = *(v144 + 16);
        v252 = *v144;
        *v253 = v145;
        v146 = *(v144 + 32);
        v147 = *(v144 + 48);
        v148 = *(v144 + 64);
        *&v255[16] = *(v144 + 80);
        v254 = v147;
        *v255 = v148;
        *&v253[16] = v146;
        v149 = v252;
        if (*(v252 + 16) != v38)
        {
          goto LABEL_110;
        }

        v243 = v139;
        v234 = v141;
        v235 = v140;
        if (v38 && v252 != v248)
        {
          v150 = (*(v249 + 80) + 32) & ~*(v249 + 80);
          v151 = v252 + v150;
          a1 = v248 + v150;
          sub_29D4B4604(&v252, v251);
          v152 = 0;
          while (1)
          {
            if (v152 >= *(v149 + 16))
            {
              goto LABEL_188;
            }

            v38 = *(v249 + 72) * v152;
            v153 = *(v249 + 16);
            v10 = v246;
            v153(v31, v151 + v38, v26);
            if (v152 >= *(v248 + 16))
            {
              goto LABEL_189;
            }

            v154 = v247;
            v153(v247, a1 + v38, v26);
            sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0);
            v136 = sub_29D5B3E0C();
            v10 = v245;
            v155 = *v245;
            v156 = v154;
            v31 = v250;
            (*v245)(v156, v26);
            v155(v31, v26);
            if ((v136 & 1) == 0)
            {
              break;
            }

            ++v152;
            v38 = v244;
            if (v244 == v152)
            {
              goto LABEL_121;
            }
          }

          v35 = v238;
          v142 = v239;
          v38 = v244;
          goto LABEL_108;
        }

        sub_29D4B4604(&v252, v251);
LABEL_121:
        if (__PAIR128__(*(&v252 + 1), *v253) == v240 || (sub_29D5B4C7C() & 1) != 0)
        {
          break;
        }

        v35 = v238;
        v142 = v239;
LABEL_108:
        sub_29D4B4660(&v252);
LABEL_109:
        v139 = v243;
        v143 = v237;
LABEL_110:
        v139 = (v139 + 1) & v143;
        v140 = v139 >> 6;
        v141 = 1 << v139;
        if ((v35[v139 >> 6] & (1 << v139)) == 0)
        {
          v38 = v142;
LABEL_175:
          sub_29D4B4660(&v256);
LABEL_176:
          v124 = v216;
          v119 = i;
          v120 = v249;
          v122 = v213;
          v121 = v214;
          v123 = v226;
          goto LABEL_91;
        }
      }

      v35 = v238;
      v142 = v239;
      if (*&v253[8] != __PAIR128__(v233, v236) && (sub_29D5B4C7C() & 1) == 0)
      {
        goto LABEL_108;
      }

      v157 = *&v253[24];
      v158 = *(*&v253[24] + 16);
      if (v158 != *(v232 + 16))
      {
        goto LABEL_108;
      }

      if (v158 && *&v253[24] != v232)
      {
        break;
      }

LABEL_160:
      if (v254 != __PAIR128__(v225, v227) && (sub_29D5B4C7C() & 1) == 0 || *v255 != v134)
      {
        goto LABEL_108;
      }

      if (*&v255[8] != __PAIR128__(v219, v224))
      {
        v136 = sub_29D5B4C7C();
        sub_29D4B4660(&v252);
        if (v136)
        {
          goto LABEL_177;
        }

        goto LABEL_109;
      }

      sub_29D4B4660(&v252);
LABEL_177:
      v38 = v142;
      sub_29D4B4660(&v256);
      v194 = v234;
      v195 = v218[v235];
      v218[v235] = v195 & ~v234;
      if ((v195 & v194) == 0)
      {
        goto LABEL_176;
      }

      v124 = v216;
      v119 = i;
      v120 = v249;
      v122 = v213;
      v121 = v214;
      v123 = v226;
      if (__OFSUB__(v217, 1))
      {
        __break(1u);
        goto LABEL_203;
      }

      if (v217 == 1)
      {

        v24 = MEMORY[0x29EDCA1A0];
        goto LABEL_83;
      }

      --v217;
    }

    a1 = 0;
    v159 = (*(v228 + 80) + 32) & ~*(v228 + 80);
    *&v230 = v232 + v159;
    *(&v230 + 1) = *&v253[24] + v159;
    *&v223 = v158;
    *(&v223 + 1) = *&v253[24];
    while (1)
    {
      if (a1 >= *(v157 + 16))
      {
        goto LABEL_195;
      }

      v10 = v142;
      v160 = *(v228 + 72) * a1;
      v161 = v211;
      sub_29D4F55C4(*(&v230 + 1) + v160, v211, type metadata accessor for SharedConceptCodedValue);
      if (a1 >= *(v232 + 16))
      {
        goto LABEL_196;
      }

      v231 = a1;
      v162 = v230 + v160;
      v163 = v215;
      sub_29D4F55C4(v162, v215, type metadata accessor for SharedConceptCodedValue);
      v164 = *v161;
      v165 = *v163;
      a1 = *(v164 + 16);
      if (a1 != *(*v163 + 16))
      {
        v142 = v10;
        goto LABEL_170;
      }

      if (a1 && v164 != v165)
      {
        break;
      }

LABEL_139:
      v173 = v229[5];
      v174 = *(v221 + 48);
      v175 = v204;
      sub_29D4F55C4(v211 + v173, v204, sub_29D4A05F4);
      sub_29D4F55C4(v215 + v173, v175 + v174, sub_29D4A05F4);
      v10 = v220;
      v176 = *v220;
      a1 = v222;
      if ((*v220)(v175, 1, v222) == 1)
      {
        v177 = v176(v175 + v174, 1, a1) == 1;
        v178 = v175;
        v142 = v239;
        if (!v177)
        {
          goto LABEL_173;
        }

        sub_29D571248(v175, sub_29D4A05F4);
        v35 = v238;
        v38 = v244;
        goto LABEL_145;
      }

      v179 = v202;
      sub_29D4F55C4(v175, v202, sub_29D4A05F4);
      if (v176(v175 + v174, 1, a1) == 1)
      {
        (*v206)(v179, a1);
        v178 = v175;
        v142 = v239;
LABEL_173:
        sub_29D571248(v178, sub_29D4DCD48);
LABEL_169:
        v35 = v238;
        v38 = v244;
LABEL_170:
        v136 = type metadata accessor for SharedConceptCodedValue;
        sub_29D571248(v215, type metadata accessor for SharedConceptCodedValue);
        sub_29D571248(v211, type metadata accessor for SharedConceptCodedValue);
        goto LABEL_108;
      }

      v180 = v210;
      (*v205)(v210, v175 + v174, a1);
      sub_29D5712A8();
      v181 = sub_29D5B3E0C();
      v10 = v206;
      v182 = *v206;
      (*v206)(v180, a1);
      v182(v179, a1);
      sub_29D571248(v175, sub_29D4A05F4);
      v35 = v238;
      v142 = v239;
      v38 = v244;
      if ((v181 & 1) == 0)
      {
        goto LABEL_170;
      }

LABEL_145:
      v183 = v229[6];
      v184 = v211;
      v185 = (v211 + v183);
      v186 = *(v211 + v183 + 8);
      v187 = (v215 + v183);
      v188 = v187[1];
      if (v186)
      {
        if (!v188 || (*v185 != *v187 || v186 != v188) && (sub_29D5B4C7C() & 1) == 0)
        {
          goto LABEL_170;
        }
      }

      else if (v188)
      {
        goto LABEL_170;
      }

      v189 = v229[7];
      v190 = (v184 + v189);
      v191 = *(v184 + v189 + 8);
      v192 = (v215 + v189);
      v193 = v192[1];
      v136 = v193 == 0;
      if (!v191)
      {
        goto LABEL_158;
      }

      if (!v193)
      {
        goto LABEL_170;
      }

      if (*v190 != *v192 || v191 != v193)
      {
        v136 = sub_29D5B4C7C();
LABEL_158:
        sub_29D571248(v215, type metadata accessor for SharedConceptCodedValue);
        sub_29D571248(v211, type metadata accessor for SharedConceptCodedValue);
        a1 = v231;
        if ((v136 & 1) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_159;
      }

      v136 = type metadata accessor for SharedConceptCodedValue;
      sub_29D571248(v215, type metadata accessor for SharedConceptCodedValue);
      sub_29D571248(v211, type metadata accessor for SharedConceptCodedValue);
      a1 = v231;
LABEL_159:
      ++a1;
      v157 = *(&v223 + 1);
      if (a1 == v223)
      {
        goto LABEL_160;
      }
    }

    v38 = 0;
    v166 = (*(v249 + 80) + 32) & ~*(v249 + 80);
    v241 = v165 + v166;
    v242 = v164 + v166;
    while (v38 < *(v164 + 16))
    {
      v167 = *(v249 + 72) * v38;
      v168 = *(v249 + 16);
      v10 = v246;
      v168(v31, v242 + v167, v26);
      if (v38 >= *(v165 + 16))
      {
        goto LABEL_193;
      }

      v169 = v247;
      v168(v247, v241 + v167, v26);
      sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0);
      v170 = sub_29D5B3E0C();
      v10 = v245;
      v171 = *v245;
      v172 = v169;
      v31 = v250;
      (*v245)(v172, v26);
      v171(v31, v26);
      if ((v170 & 1) == 0)
      {
        v142 = v239;
        goto LABEL_169;
      }

      if (a1 == ++v38)
      {
        goto LABEL_139;
      }
    }

LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    v197 = v36;

    v198 = v197;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v199 = v239;

      v24 = v199;
      v31 = v250;
      v35 = v238;
      continue;
    }

    break;
  }

  v136 = swift_slowAlloc();
  memcpy(v136, v238, v198);
  v120 = v203;
  v200 = sub_29D56EDBC(v136, v208, v239, a1);

  if (!v120)
  {

    MEMORY[0x29ED5FB80](v136, -1, -1);
    v24 = v200;
    goto LABEL_83;
  }

LABEL_203:

  result = MEMORY[0x29ED5FB80](v136, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_29D56E18C(uint64_t a1, uint64_t a2)
{
  v62[2] = *MEMORY[0x29EDCA608];
  v4 = sub_29D5B1BCC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = v48 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  i = v48 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x29EDCA1A0];
  }

  v62[0] = a1;
  v12 = *(a1 + 16);

  v50 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v52 = a1;
  v53 = a1 + ((v16 + 32) & ~v16);
  v59 = *(v14 + 56);
  v60 = v15;
  v57 = (a2 + 56);
  v58 = a2;
  v61 = v14;
  v17 = (v14 - 8);
  v49 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v54 = v13 + 1;
    v62[1] = v13 + 1;
    v60(i, v53 + v59 * v13, v4);
    v51 = sub_29D56B02C(&qword_2A1A19800, MEMORY[0x29EDC3FB8]);
    v18 = sub_29D5B3D8C();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v54;
    if (v54 == v50)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v60(v10, *(v58 + 48) + v20 * v59, v4);
    sub_29D56B02C(&qword_2A1A197F8, MEMORY[0x29EDC3FB8]);
    v24 = sub_29D5B3E0C();
    v25 = *v17;
    (*v17)(v10, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v57[v20 >> 6]) == 0)
    {
      a2 = v58;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v58;
  v28 = *(v58 + 32);
  v48[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v48[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v48[1] = v48;
    MEMORY[0x2A1C7C4A8](v26);
    v31 = v48 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v57, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v49 = v31;
    v50 = (v32 - 1);
    v33 = *(v52 + 16);
    v34 = v54;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_29D5705EC(v49, v48[0], v50, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v52 + 16))
      {
        break;
      }

      v54 = v34;
      v60(v56, v53 + v34 * v59, v4);
      v36 = sub_29D5B3D8C();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v57[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v60(v10, *(v58 + 48) + v20 * v59, v4);
      v38 = sub_29D5B3E0C();
      v25(v10, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v57[v20 >> 6]) == 0)
          {
            break;
          }

          v60(v10, *(v58 + 48) + v20 * v59, v4);
          v40 = sub_29D5B3E0C();
          v25(v10, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v56, v4);
        v27 = v58;
LABEL_16:
        v35 = v54;
        goto LABEL_17;
      }

LABEL_25:
      v25(v56, v4);
      v41 = v49[v22];
      v49[v22] = v41 & ~v21;
      v27 = v58;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v50 - 1;
      v35 = v54;
      if (__OFSUB__(v50, 1))
      {
        goto LABEL_33;
      }

      --v50;
      if (!v42)
      {

        a2 = MEMORY[0x29EDCA1A0];
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v58;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v57, v45);
  a2 = sub_29D56FBCC(v47, v48[0], v58, v20, v62);

  MEMORY[0x29ED5FB80](v47, -1, -1);
LABEL_30:

  return a2;
}

uint64_t sub_29D56E84C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x29EDCA608];
  if (!*(a2 + 16))
  {

    return MEMORY[0x29EDCA1A0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_29D5B4D4C();

    sub_29D5B3EFC();
    v23 = sub_29D5B4D9C();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_29D5B4C7C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x2A1C7C4A8](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_29D570908(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_29D5B4D4C();

            sub_29D5B3EFC();
            v41 = sub_29D5B4D9C();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_29D5B4C7C() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x29EDCA1A0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_29D56FFC0(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x29ED5FB80](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_29D4B30C0();
    return v5;
  }

  result = MEMORY[0x29ED5FB80](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t sub_29D56EDBC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v113 = a2;
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v124 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v117 = &v113 - v9;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v119 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48();
  v123 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v122 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for SharedConceptCodedValue(0);
  v132 = *(v134 - 1);
  v14 = MEMORY[0x2A1C7C4A8](v134);
  v142 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v137 = &v113 - v16;
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v18 = v17;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v154 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v19);
  v24 = &v113 - v23;
  v25 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v26 = v25 - 1;
  v147 = a3 + 56;
  v148 = a3;
  v155 = v27 + 16;
  v156 = v27;
  v153 = (v27 + 8);
  v115 = a1;
  v116 = (v8 + 32);
  v118 = (v8 + 8);
  v168 = &v113 - v23;
  v152 = result;
  v120 = v22;
  v121 = (v8 + 48);
LABEL_2:
  v114 = v26;
  while (1)
  {
LABEL_4:
    v28 = v22[3];
    v29 = v22[4];
    if (!v29)
    {
      v31 = (v22[2] + 64) >> 6;
      v32 = v22[3];
      while (1)
      {
        v30 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_97;
        }

        if (v30 >= v31)
        {
          if (v31 <= v28 + 1)
          {
            v111 = v28 + 1;
          }

          else
          {
            v111 = (v22[2] + 64) >> 6;
          }

          v22[3] = v111 - 1;
          v22[4] = 0;
          v112 = v148;

          return sub_29D5701F8(v115, v113, v114, v112);
        }

        v29 = *(v22[1] + 8 * v30);
        ++v32;
        if (v29)
        {
          goto LABEL_10;
        }
      }
    }

    v30 = v22[3];
LABEL_10:
    v33 = *(*v22 + 48) + 88 * (__clz(__rbit64(v29)) | (v30 << 6));
    v34 = *(v33 + 16);
    v162 = *v33;
    v163 = v34;
    v35 = *(v33 + 32);
    v36 = *(v33 + 48);
    v37 = *(v33 + 64);
    v167 = *(v33 + 80);
    v165 = v36;
    v166 = v37;
    v164 = v35;
    v22[3] = v30;
    v22[4] = (v29 - 1) & v29;
    sub_29D5B4D4C();
    v38 = v162;
    v39 = *(v162 + 16);
    MEMORY[0x29ED5F330](v39);
    v151 = v38;
    if (v39)
    {
      v40 = v156;
      v41 = v38 + ((*(v156 + 80) + 32) & ~*(v156 + 80));
      sub_29D4B4604(&v162, &v158);
      v42 = *(v40 + 72);
      sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8);
      do
      {
        sub_29D5B3D9C();
        v41 += v42;
        --v39;
      }

      while (v39);
    }

    else
    {
      sub_29D4B4604(&v162, &v158);
    }

    *&v143 = v163;
    *(&v143 + 1) = *(&v162 + 1);
    sub_29D5B3EFC();
    v140 = *(&v163 + 1);
    v136 = v164;
    sub_29D5B3EFC();
    v135 = *(&v164 + 1);
    sub_29D4DB620(v157, *(&v164 + 1));
    *&v129 = *(&v165 + 1);
    *(&v129 + 1) = v165;
    sub_29D5B3EFC();
    v43 = *&v166;
    v44 = *&v166 == 0.0 ? 0.0 : *&v166;
    MEMORY[0x29ED5F360](*&v44);
    v128 = *(&v166 + 1);
    v125 = v167;
    sub_29D5B3EFC();
    v45 = sub_29D5B4D9C();
    v46 = -1 << *(v148 + 32);
    v47 = v45 & ~v46;
    v48 = v47 >> 6;
    v49 = 1 << v47;
    if (((1 << v47) & *(v147 + 8 * (v47 >> 6))) != 0)
    {
      break;
    }

LABEL_3:
    result = sub_29D4B4660(&v162);
    v22 = v120;
  }

  v50 = ~v46;
  v51 = v151;
  v52 = *(v151 + 16);
  v141 = ~v46;
  v150 = v52;
  while (1)
  {
    v53 = *(v148 + 48) + 88 * v47;
    v54 = *(v53 + 16);
    v158 = *v53;
    *v159 = v54;
    v55 = *(v53 + 32);
    v56 = *(v53 + 48);
    v57 = *(v53 + 64);
    *&v161[16] = *(v53 + 80);
    v160 = v56;
    *v161 = v57;
    *&v159[16] = v55;
    v58 = v158;
    if (*(v158 + 16) != v52)
    {
      goto LABEL_24;
    }

    v146 = v47;
    v138 = v49;
    v139 = v48;
    if (v52)
    {
      if (v158 != v51)
      {
        break;
      }
    }

    sub_29D4B4604(&v158, v157);
LABEL_35:
    if (__PAIR128__(*(&v158 + 1), *v159) == v143 || (sub_29D5B4C7C()) && ((result = *&v159[8], *&v159[8] == __PAIR128__(v136, v140)) || (result = sub_29D5B4C7C(), (result)) && (v68 = *&v159[24], v69 = *(*&v159[24] + 16), v69 == *(v135 + 16)))
    {
      if (v69 && *&v159[24] != v135)
      {
        v70 = 0;
        v71 = (*(v132 + 80) + 32) & ~*(v132 + 80);
        v130 = v135 + v71;
        v131 = *&v159[24] + v71;
        v126 = v69;
        v127 = *&v159[24];
        while (1)
        {
          if (v70 >= *(v68 + 16))
          {
            goto LABEL_98;
          }

          v72 = *(v132 + 72) * v70;
          v73 = v137;
          result = sub_29D4F55C4(v131 + v72, v137, type metadata accessor for SharedConceptCodedValue);
          if (v70 >= *(v135 + 16))
          {
            goto LABEL_99;
          }

          v74 = v130 + v72;
          v75 = v142;
          result = sub_29D4F55C4(v74, v142, type metadata accessor for SharedConceptCodedValue);
          v76 = *v73;
          v77 = *v75;
          v78 = *(*v73 + 16);
          if (v78 != *(*v75 + 16))
          {
            goto LABEL_81;
          }

          v133 = v70;
          if (v78 && v76 != v77)
          {
            v79 = 0;
            v80 = (*(v156 + 80) + 32) & ~*(v156 + 80);
            v149 = v77;
            v144 = v77 + v80;
            v145 = v76 + v80;
            while (v79 < *(v76 + 16))
            {
              v81 = *(v156 + 72) * v79;
              v82 = *(v156 + 16);
              result = v82(v24, v145 + v81, v18);
              if (v79 >= *(v149 + 16))
              {
                goto LABEL_96;
              }

              v83 = v154;
              v82(v154, v144 + v81, v18);
              sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0);
              v84 = sub_29D5B3E0C();
              v85 = *v153;
              v86 = v83;
              v24 = v168;
              (*v153)(v86, v18);
              result = (v85)(v24, v18);
              if ((v84 & 1) == 0)
              {
                v18 = v152;
                goto LABEL_81;
              }

              ++v79;
              v18 = v152;
              if (v78 == v79)
              {
                goto LABEL_53;
              }
            }

            goto LABEL_95;
          }

LABEL_53:
          v87 = v134[5];
          v88 = v122;
          v89 = *(v123 + 48);
          sub_29D4F55C4(v137 + v87, v122, sub_29D4A05F4);
          sub_29D4F55C4(v142 + v87, v88 + v89, sub_29D4A05F4);
          v90 = *v121;
          v91 = v124;
          if ((*v121)(v88, 1, v124) == 1)
          {
            if (v90(v88 + v89, 1, v91) != 1)
            {
              goto LABEL_83;
            }

            sub_29D571248(v88, sub_29D4A05F4);
          }

          else
          {
            v92 = v119;
            sub_29D4F55C4(v88, v119, sub_29D4A05F4);
            if (v90(v88 + v89, 1, v91) == 1)
            {
              (*v118)(v92, v91);
LABEL_83:
              sub_29D571248(v88, sub_29D4DCD48);
LABEL_81:
              sub_29D571248(v142, type metadata accessor for SharedConceptCodedValue);
              sub_29D571248(v137, type metadata accessor for SharedConceptCodedValue);
              goto LABEL_21;
            }

            v93 = v117;
            (*v116)(v117, v88 + v89, v91);
            sub_29D5712A8();
            LODWORD(v149) = sub_29D5B3E0C();
            v94 = *v118;
            (*v118)(v93, v91);
            v94(v92, v91);
            sub_29D571248(v88, sub_29D4A05F4);
            if ((v149 & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          v95 = v134[6];
          v96 = v137;
          v97 = (v137 + v95);
          v98 = *(v137 + v95 + 8);
          v99 = (v142 + v95);
          v100 = v99[1];
          if (v98)
          {
            v101 = v133;
            if (!v100 || (*v97 != *v99 || v98 != v100) && (sub_29D5B4C7C() & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v101 = v133;
            if (v100)
            {
              goto LABEL_81;
            }
          }

          v102 = v134[7];
          v103 = (v96 + v102);
          v104 = *(v96 + v102 + 8);
          v105 = (v142 + v102);
          v106 = v105[1];
          v107 = v106 == 0;
          if (!v104)
          {
            goto LABEL_71;
          }

          if (!v106)
          {
            goto LABEL_81;
          }

          if (*v103 != *v105 || v104 != v106)
          {
            break;
          }

          sub_29D571248(v142, type metadata accessor for SharedConceptCodedValue);
          result = sub_29D571248(v96, type metadata accessor for SharedConceptCodedValue);
LABEL_72:
          v70 = v101 + 1;
          v68 = v127;
          v52 = v150;
          if (v70 == v126)
          {
            goto LABEL_73;
          }
        }

        v107 = sub_29D5B4C7C();
LABEL_71:
        sub_29D571248(v142, type metadata accessor for SharedConceptCodedValue);
        result = sub_29D571248(v137, type metadata accessor for SharedConceptCodedValue);
        if ((v107 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_72;
      }

LABEL_73:
      if (__PAIR128__(v160, *(&v160 + 1)) != v129 && (sub_29D5B4C7C() & 1) == 0 || *v161 != v43)
      {
        goto LABEL_22;
      }

      if (*&v161[8] == __PAIR128__(v125, v128))
      {
        sub_29D4B4660(&v158);
LABEL_84:
        result = sub_29D4B4660(&v162);
        v109 = v138;
        v110 = v115[v139];
        v115[v139] = v110 & ~v138;
        if ((v110 & v109) == 0)
        {
          v22 = v120;
          goto LABEL_4;
        }

        v26 = v114 - 1;
        v22 = v120;
        if (__OFSUB__(v114, 1))
        {
          goto LABEL_100;
        }

        if (v114 == 1)
        {
          return MEMORY[0x29EDCA1A0];
        }

        goto LABEL_2;
      }

      v108 = sub_29D5B4C7C();
      sub_29D4B4660(&v158);
      if (v108)
      {
        goto LABEL_84;
      }

      v52 = v150;
      v51 = v151;
    }

    else
    {
LABEL_22:
      sub_29D4B4660(&v158);
      v51 = v151;
    }

    v47 = v146;
    v50 = v141;
LABEL_24:
    v47 = (v47 + 1) & v50;
    v48 = v47 >> 6;
    v49 = 1 << v47;
    if ((*(v147 + 8 * (v47 >> 6)) & (1 << v47)) == 0)
    {
      goto LABEL_3;
    }
  }

  v59 = (*(v156 + 80) + 32) & ~*(v156 + 80);
  v149 = v158 + v59;
  v60 = v51 + v59;
  result = sub_29D4B4604(&v158, v157);
  v61 = 0;
  while (v61 < *(v58 + 16))
  {
    v62 = *(v156 + 72) * v61;
    v63 = *(v156 + 16);
    result = v63(v24, v149 + v62, v18);
    if (v61 >= *(v151 + 16))
    {
      goto LABEL_94;
    }

    v64 = v154;
    v63(v154, v60 + v62, v18);
    sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0);
    v65 = sub_29D5B3E0C();
    v66 = *v153;
    v67 = v64;
    v24 = v168;
    (*v153)(v67, v18);
    result = (v66)(v24, v18);
    if ((v65 & 1) == 0)
    {
      v18 = v152;
LABEL_21:
      v52 = v150;
      goto LABEL_22;
    }

    ++v61;
    v52 = v150;
    v18 = v152;
    if (v150 == v61)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

uint64_t sub_29D56FBCC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = sub_29D5B1BCC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v42 = &v35 - v15;
  result = MEMORY[0x2A1C7C4A8](v14);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    return sub_29D5705EC(v36, v35, v37, a3);
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_29D56B02C(&qword_2A1A19800, MEMORY[0x29EDC3FB8]);
    v25 = sub_29D5B3D8C();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_6:
      result = (v22)(v48, v9);
      goto LABEL_7;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      v44(v13, *(v30 + 48) + v27 * v45, v9);
      sub_29D56B02C(&qword_2A1A197F8, MEMORY[0x29EDC3FB8]);
      v32 = sub_29D5B3E0C();
      v22 = *v47;
      (*v47)(v13, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_6;
      }
    }

    result = (v22)(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_7:
      v10 = v41;
      goto LABEL_8;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_21;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return MEMORY[0x29EDCA1A0];
    }

LABEL_8:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_29D56FFC0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_29D570908(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_29D5B4D4C();

        sub_29D5B3EFC();
        v19 = sub_29D5B4D9C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_29D5B4C7C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x29EDCA1A0];
    }

    return result;
  }
}

unint64_t sub_29D5701F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v40 - v11;
  if (!a3)
  {

    return MEMORY[0x29EDCA1A0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_29D57136C();
  result = sub_29D5B490C();
  v13 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v42 = v10 + 16;
  v43 = v10;
  v41 = (v10 + 8);
  v46 = a4;
  v47 = result + 56;
  v44 = a1;
  v45 = a2;
  v48 = result;
  if (v15)
  {
    while (1)
    {
      v50 = v16;
      v51 = a3;
      v49 = (v15 - 1) & v15;
      v17 = __clz(__rbit64(v15)) | (v16 << 6);
LABEL_15:
      v21 = *(a4 + 48) + 88 * v17;
      v23 = *(v21 + 48);
      v22 = *(v21 + 64);
      v24 = *(v21 + 32);
      v59 = *(v21 + 80);
      v57 = v23;
      v58 = v22;
      v56 = v24;
      v25 = *(v21 + 16);
      v54 = *v21;
      v55 = v25;
      sub_29D5B4D4C();
      v26 = v54;
      MEMORY[0x29ED5F330](*(v54 + 16));
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = v43;
        v29 = v26 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        sub_29D4B4604(&v54, v52);
        v30 = *(v28 + 72);
        v31 = *(v28 + 16);
        v32 = v41;
        do
        {
          v31(v12, v29, v9);
          sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8);
          sub_29D5B3D9C();
          (*v32)(v12, v9);
          v29 += v30;
          --v27;
        }

        while (v27);
      }

      else
      {
        sub_29D4B4604(&v54, v52);
      }

      sub_29D5B3EFC();
      sub_29D5B3EFC();
      sub_29D4DB620(&v53, *(&v56 + 1));
      sub_29D5B3EFC();
      v33 = *&v58;
      if (*&v58 == 0.0)
      {
        v33 = 0.0;
      }

      MEMORY[0x29ED5F360](*&v33);
      sub_29D5B3EFC();
      sub_29D5B4D9C();
      v34 = v47;
      v13 = v48;
      result = sub_29D5B47FC();
      *(v34 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v35 = *(v13 + 48) + 88 * result;
      v36 = v55;
      *v35 = v54;
      *(v35 + 16) = v36;
      v37 = v56;
      v38 = v57;
      v39 = v58;
      *(v35 + 80) = v59;
      *(v35 + 48) = v38;
      *(v35 + 64) = v39;
      *(v35 + 32) = v37;
      ++*(v13 + 16);
      a3 = v51 - 1;
      if (__OFSUB__(v51, 1))
      {
        break;
      }

      if (v51 == 1)
      {
LABEL_26:

        return v13;
      }

      a2 = v45;
      a4 = v46;
      a1 = v44;
      v15 = v49;
      v16 = v50;
      if (!v49)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v18 = v16;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= a2)
      {
        goto LABEL_26;
      }

      v20 = a1[v19];
      ++v18;
      if (v20)
      {
        v50 = v19;
        v51 = a3;
        v49 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) | (v19 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D5705EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_29D5B1BCC();
  v8 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x29EDCA1A0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_29D5711B4();
  result = sub_29D5B490C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_29D56B02C(&qword_2A1A19800, MEMORY[0x29EDC3FB8]);
    result = sub_29D5B3D8C();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_29D570908(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x29EDCA1A0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_29D50CFDC();
  result = sub_29D5B490C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_29D5B4D4C();

    sub_29D5B3EFC();
    result = sub_29D5B4D9C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_29D570B20(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x2A1C7C4A8](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_29D570D74(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_29D570CE4(v11, v6, a2, a1);

    MEMORY[0x29ED5FB80](v11, -1, -1);
  }

  return v9;
}

void *sub_29D570CE4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_29D570D74(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_29D570D74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_29D5B4D4C();

      sub_29D5B3EFC();
      v26 = sub_29D5B4D9C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_29D5B4C7C() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_29D570908(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_29D5B4D4C();

      sub_29D5B3EFC();
      v39 = sub_29D5B4D9C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_29D5B4C7C() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_29D571150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D5711B4()
{
  if (!qword_2A17A4E40)
  {
    sub_29D5B1BCC();
    sub_29D56B02C(&qword_2A1A19800, MEMORY[0x29EDC3FB8]);
    v0 = sub_29D5B491C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4E40);
    }
  }
}

uint64_t sub_29D571248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D5712A8()
{
  result = qword_2A17A41F8;
  if (!qword_2A17A41F8)
  {
    sub_29D4A0664(255, &qword_2A1A164E8, &qword_2A1A162F0);
    sub_29D4DC4A0(&qword_2A17A4200, &qword_2A1A162F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A41F8);
  }

  return result;
}

void sub_29D57136C()
{
  if (!qword_2A17A4E48)
  {
    sub_29D5713C8();
    v0 = sub_29D5B491C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4E48);
    }
  }
}

unint64_t sub_29D5713C8()
{
  result = qword_2A17A4E50;
  if (!qword_2A17A4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4E50);
  }

  return result;
}

uint64_t sub_29D57141C()
{
  v0 = sub_29D5B1AAC();
  sub_29D50CE1C(v0, qword_2A1A1A710);
  v1 = sub_29D50BA5C(v0, qword_2A1A1A710);
  v2 = *MEMORY[0x29EDC3F08];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

void *sub_29D5714A4(uint64_t a1)
{
  v2 = v1;
  v19 = *v1;
  v18 = sub_29D5B13CC();
  v4 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B13EC();
  v7 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords23OnboardingTileGenerator_context);
  v16 = sub_29D5B143C();
  sub_29D573D60(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29D5B104C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D5B62A0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x29EDC3790], v10);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC3898], v18);
  sub_29D5B13DC();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords23OnboardingTileGenerator_domain, v9, v17);
  v14 = sub_29D571788(a1);
  sub_29D49A104(a1);
  v2[2] = v14;
  return v2;
}

uint64_t sub_29D571788(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext();
  v116 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v117 = v3;
  v121 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_29D5B23CC();
  v103 = *(v104 - 8);
  MEMORY[0x2A1C7C4A8](v104);
  v102 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D573D60(0, &qword_2A1A172F0, MEMORY[0x29EDCA498], MEMORY[0x29EDC9C68]);
  v6 = MEMORY[0x2A1C7C4A8](v5 - 8);
  v96 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v97 = &v86 - v8;
  v89 = sub_29D5B106C();
  v94 = *(v89 - 8);
  MEMORY[0x2A1C7C4A8](v89);
  v93 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_29D5B1D6C();
  v91 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92);
  v90 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D50AF28();
  v100 = v11;
  v99 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v98 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D573494();
  v108 = v13;
  v107 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v105 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D573580();
  v110 = v15;
  v109 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v106 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D57365C();
  v113 = *(v17 - 8);
  v114 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v111 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D573708();
  v118 = v19;
  v115 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v112 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5737F4();
  v122 = *(v21 - 8);
  v123 = v21;
  MEMORY[0x2A1C7C4A8](v21);
  v119 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_29D5B0EDC();
  v87 = *(v88 - 8);
  MEMORY[0x2A1C7C4A8](v88);
  v86 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D5B1AAC();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1CBC();
  v28 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v128, v129);
  v29 = sub_29D5B136C();
  v30 = [v29 profileIdentifier];

  v101 = sub_29D5B1C3C();
  sub_29D48F668(&v128);
  v31 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v128, v129);
  v32 = sub_29D5B136C();
  v33 = [v32 profileIdentifier];

  v125 = sub_29D5B1C6C();
  sub_29D48F668(&v128);
  sub_29D5B140C();
  sub_29D499EC0(&v128, v129);
  sub_29D5B136C();
  sub_29D5B26AC();
  swift_allocObject();
  v124 = sub_29D5B269C();
  sub_29D48F668(&v128);
  sub_29D5B140C();
  if (qword_2A1A18A28 != -1)
  {
    swift_once();
  }

  v34 = sub_29D50BA5C(v24, qword_2A1A1A710);
  (*(v25 + 16))(v27, v34, v24);
  v120 = a1;
  v35 = sub_29D5B143C();
  v36 = sub_29D5B10AC();
  v37 = sub_29D5B1A8C();
  v39 = v38;
  v40 = v24;
  if (v36)
  {
    v126 = 0x656C69666F72505BLL;
    v127 = 0xE90000000000003ALL;
    v36 = v36;
    v41 = [v36 identifier];
    v42 = v86;
    sub_29D5B0EBC();

    v43 = v40;
    v44 = sub_29D5B0E8C();
    v46 = v45;
    (*(v87 + 8))(v42, v88);
    v47 = v44;
    v40 = v43;
    MEMORY[0x29ED5E510](v47, v46);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v48 = v126;
    v49 = v127;
  }

  else
  {
    v49 = 0x800000029D5BBCB0;
    v48 = 0xD000000000000013;
  }

  v126 = v48;
  v127 = v49;
  MEMORY[0x29ED5E510](v37, v39);

  v50 = v126;
  v51 = v127;
  (*(v25 + 8))(v27, v40);
  type metadata accessor for FeedItemContextChangeGenerator();
  v52 = swift_allocObject();
  sub_29D497868(&v128, v52 + 16);
  *(v52 + 56) = v50;
  *(v52 + 64) = v51;
  v53 = v91;
  v54 = v90;
  v55 = v92;
  (*(v91 + 104))(v90, *MEMORY[0x29EDC4068], v92);
  v56 = sub_29D5B25FC();
  (*(v53 + 8))(v54, v55);
  v57 = v94;
  v58 = v93;
  v59 = v89;
  (*(v94 + 104))(v93, *MEMORY[0x29EDC37B8], v89);
  sub_29D5B105C();
  (*(v57 + 8))(v58, v59);
  v60 = sub_29D5B369C();
  v61 = v97;
  (*(*(v60 - 8) + 56))(v97, 1, 1, v60);
  *&v128 = v56;
  sub_29D55282C(v61, v96);
  sub_29D50AFBC();
  sub_29D5739EC(&qword_2A1A166F0, sub_29D50AFBC);
  v62 = v98;
  sub_29D5B381C();
  sub_29D573888(v61, &qword_2A1A172F0, MEMORY[0x29EDCA498]);
  v63 = v103;
  v64 = v102;
  v65 = v104;
  (*(v103 + 104))(v102, *MEMORY[0x29EDC41C0], v104);
  v66 = sub_29D5B265C();
  (*(v63 + 8))(v64, v65);
  *&v128 = v66;
  sub_29D4CF8C0();
  sub_29D5739EC(&qword_2A1A16FF8, sub_29D50AF28);
  sub_29D5739EC(&qword_2A1A166B0, sub_29D4CF8C0);
  v67 = v105;
  v68 = v100;
  sub_29D5B3B6C();

  (*(v99 + 8))(v62, v68);
  v69 = v121;
  sub_29D499E5C(v120, v121);
  v70 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v71 = (v117 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v73 = v95;
  *(v72 + 16) = v101;
  *(v72 + 24) = v73;
  sub_29D499F90(v69, v72 + v70);
  *(v72 + v71) = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_29D5738F8;
  *(v74 + 24) = v72;
  sub_29D573D60(0, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
  sub_29D5739EC(&qword_2A1A17260, sub_29D573494);

  v75 = v106;
  v76 = v108;
  sub_29D5B3B7C();

  (*(v107 + 8))(v67, v76);
  sub_29D4E3C34();

  v77 = v111;
  v78 = v110;
  sub_29D5B383C();

  (*(v109 + 8))(v75, v78);
  *(swift_allocObject() + 16) = v73;
  sub_29D4B2D8C();
  sub_29D5739EC(&qword_2A1A16C28, sub_29D57365C);
  sub_29D5739EC(&qword_2A1A16780, sub_29D4B2D8C);
  v79 = v112;
  v80 = v114;
  sub_29D5B3B8C();

  (*(v113 + 8))(v77, v80);
  *&v128 = MEMORY[0x29EDCA190];
  sub_29D5739EC(&qword_2A1A16DB8, sub_29D573708);
  v81 = v118;
  v82 = v119;
  sub_29D5B3B4C();
  (*(v115 + 8))(v79, v81);
  sub_29D5739EC(&qword_2A1A17098, sub_29D5737F4);
  v83 = v123;
  v84 = sub_29D5B3B1C();

  (*(v122 + 8))(v82, v83);
  return v84;
}