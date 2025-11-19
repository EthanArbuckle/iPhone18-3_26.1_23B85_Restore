id sub_2BFB1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2BFB84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

UIFontTextStyle sub_2BFBF4()
{
  sub_3074F8();
  xmmword_42AD08 = v0;
  byte_42AD18 = 0;
  qword_42AD20 = UIFontTextStyleBody;
  word_42AD78 = 0;

  return UIFontTextStyleBody;
}

UIFontTextStyle sub_2BFC44()
{
  sub_307508();
  xmmword_42AD80 = v0;
  byte_42AD90 = 0;
  qword_42AD98 = UIFontTextStyleBody;
  word_42ADF0 = 0;

  return UIFontTextStyleBody;
}

uint64_t sub_2BFC94()
{
  sub_124C4(0, &qword_4019C0);
  if (sub_30C978())
  {
    v0 = 12.0;
  }

  else
  {
    v0 = 16.0;
  }

  if (sub_30C978())
  {
    v1 = 12.0;
  }

  else
  {
    v1 = 16.0;
  }

  result = sub_30C978();
  qword_40D420 = 0;
  if (result)
  {
    v3 = 12.0;
  }

  else
  {
    v3 = 16.0;
  }

  qword_40D428 = *&v0;
  qword_40D430 = *&v1;
  qword_40D438 = *&v3;
  return result;
}

uint64_t sub_2BFD1C()
{
  if (qword_3FADA8 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A530 + 10);
  v2[0] = xmmword_42A4F0;
  v2[1] = unk_42A500;
  v2[2] = xmmword_42A510;
  v2[3] = *&qword_42A520;
  *v3 = xmmword_42A530;
  xmmword_42AE00 = xmmword_32DDF0;
  *&algn_42AE11[7] = xmmword_42A4F0;
  *(&xmmword_42AE20 + 8) = unk_42A500;
  *(&xmmword_42AE30 + 8) = xmmword_42A510;
  byte_42AE10 = 1;
  *(&xmmword_42AE40 + 8) = *&qword_42A520;
  *(&xmmword_42AE50 + 8) = xmmword_42A530;
  qword_42AE68 = *(&xmmword_42A530 + 10) >> 48;
  word_42AE70 = word_42A548 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

uint64_t sub_2BFDF0()
{
  if (qword_3FADB0 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A590 + 10);
  v2[0] = xmmword_42A550;
  v2[1] = unk_42A560;
  v2[2] = xmmword_42A570;
  v2[3] = *&qword_42A580;
  *v3 = xmmword_42A590;
  xmmword_42AE80 = xmmword_32DE00;
  *&algn_42AE91[7] = xmmword_42A550;
  *(&xmmword_42AEA0 + 8) = unk_42A560;
  *(&xmmword_42AEB0 + 8) = xmmword_42A570;
  byte_42AE90 = 1;
  *(&xmmword_42AEC0 + 8) = *&qword_42A580;
  *(&xmmword_42AED0 + 8) = xmmword_42A590;
  qword_42AEE8 = *(&xmmword_42A590 + 10) >> 48;
  word_42AEF0 = word_42A5A8 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

uint64_t sub_2BFEC4()
{
  if (qword_3FADB8 != -1)
  {
    swift_once();
  }

  *&v3[10] = *(&xmmword_42A5F0 + 10);
  v2[0] = xmmword_42A5B0;
  v2[1] = unk_42A5C0;
  v2[2] = xmmword_42A5D0;
  v2[3] = *&qword_42A5E0;
  *v3 = xmmword_42A5F0;
  xmmword_42AF00 = xmmword_32DE00;
  *&algn_42AF11[7] = xmmword_42A5B0;
  *(&xmmword_42AF20 + 8) = unk_42A5C0;
  *(&xmmword_42AF30 + 8) = xmmword_42A5D0;
  byte_42AF10 = 1;
  *(&xmmword_42AF40 + 8) = *&qword_42A5E0;
  *(&xmmword_42AF50 + 8) = xmmword_42A5F0;
  qword_42AF68 = *(&xmmword_42A5F0 + 10) >> 48;
  word_42AF70 = word_42A608 & 0x1FF | 0x8000;
  return sub_8FC54(v2, &v1);
}

UIFontTextStyle sub_2BFF98()
{
  xmmword_42AF80 = xmmword_32DE10;
  byte_42AF90 = 1;
  qword_42AF98 = UIFontTextStyleBody;
  word_42AFF0 = 0;
  return UIFontTextStyleBody;
}

char *sub_2BFFCC()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell____lazy_storage___thumbnailArtworkView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell____lazy_storage___thumbnailArtworkView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell____lazy_storage___thumbnailArtworkView);
  }

  else
  {
    v4 = sub_2ECC8();
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2C0040()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell____lazy_storage___hStackView;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell____lazy_storage___hStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell____lazy_storage___hStackView);
  }

  else
  {
    v4 = sub_2C00A0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2C00A0()
{
  v0 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_124C4(0, &qword_4019C0);
  v1 = sub_30C978();
  v2 = 16.0;
  if (v1)
  {
    v2 = 12.0;
  }

  [v0 setSpacing:v2];
  [v0 setAxis:0];
  v3 = qword_3FAF58;
  v4 = v0;
  if (v3 != -1)
  {
    swift_once();
  }

  [v4 setLayoutMargins:{*&qword_40D420, *&qword_40D428, *&qword_40D430, *&qword_40D438}];
  [v4 setDistribution:0];
  [v4 setAlignment:4];
  [v4 setLayoutMarginsRelativeArrangement:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v4;
}

uint64_t sub_2C01EC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_lineCountLayoutGroup] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_thumbnailArtworkContainer] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell____lazy_storage___thumbnailArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell____lazy_storage___hStackView] = 0;
  v11 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_separatorInset];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v11 = UIEdgeInsetsZero.top;
  v11[1] = left;
  v11[2] = bottom;
  v11[3] = right;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_isHovering] = 0;
  v15 = &selRef_registerImage_withTraitCollection_;
  v16 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_2D5EC(1, 5.0);
  v17 = qword_3FA928;
  v18 = v16;
  if (v17 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v19 = qword_428FC8;
    v20 = *&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor];
    *&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderColor] = qword_428FC8;
    v21 = v19;

    sub_2BE604();
    *&v18[OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_borderWidth] = 0x3FE0000000000000;
    sub_2BE604();

    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_mainArtworkView] = v18;
    v101 = type metadata accessor for ArtworkContainer();
    objc_allocWithZone(v101);
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_mainArtworkContainer] = sub_29C44(4u, v18, 0, 0, 0, 0);
    type metadata accessor for DynamicTypeLabel();
    if (qword_3FADA8 != -1)
    {
      swift_once();
    }

    v107[2] = xmmword_42A510;
    v107[3] = *&qword_42A520;
    v108[0] = xmmword_42A530;
    *(v108 + 10) = *(&xmmword_42A530 + 10);
    v107[0] = xmmword_42A4F0;
    v107[1] = unk_42A500;
    v115 = xmmword_42A510;
    v116 = *&qword_42A520;
    v117[0] = xmmword_42A530;
    *(v117 + 10) = *(&xmmword_42A530 + 10);
    v113 = xmmword_42A4F0;
    v114 = unk_42A500;
    sub_8FC54(v107, v111);
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_captionLabel] = sub_235C3C(&v113, 1, 0, 1);
    if (qword_3FADB0 != -1)
    {
      swift_once();
    }

    v109[2] = xmmword_42A570;
    v109[3] = *&qword_42A580;
    v110[0] = xmmword_42A590;
    *(v110 + 10) = *(&xmmword_42A590 + 10);
    v109[0] = xmmword_42A550;
    v109[1] = unk_42A560;
    v115 = xmmword_42A570;
    v116 = *&qword_42A580;
    v117[0] = xmmword_42A590;
    *(v117 + 10) = *(&xmmword_42A590 + 10);
    v113 = xmmword_42A550;
    v114 = unk_42A560;
    sub_8FC54(v109, v111);
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_titleLabel] = sub_235C3C(&v113, 1, 0, 1);
    if (qword_3FADB8 != -1)
    {
      swift_once();
    }

    v111[2] = xmmword_42A5D0;
    v111[3] = *&qword_42A5E0;
    v112[0] = xmmword_42A5F0;
    *(v112 + 10) = *(&xmmword_42A5F0 + 10);
    v111[0] = xmmword_42A5B0;
    v111[1] = unk_42A5C0;
    v115 = xmmword_42A5D0;
    v116 = *&qword_42A5E0;
    v117[0] = xmmword_42A5F0;
    *(v117 + 10) = *(&xmmword_42A5F0 + 10);
    v113 = xmmword_42A5B0;
    v114 = unk_42A5C0;
    sub_8FC54(v111, v105);
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_subtitleLabel] = sub_235C3C(&v113, 1, 0, 1);
    if (qword_3FADC0 != -1)
    {
      swift_once();
    }

    v115 = xmmword_42A630;
    v116 = *&qword_42A640;
    v117[0] = xmmword_42A650;
    *(v117 + 10) = *(&xmmword_42A650 + 10);
    v113 = xmmword_42A610;
    v114 = unk_42A620;
    v105[2] = xmmword_42A630;
    v105[3] = *&qword_42A640;
    v106[0] = xmmword_42A650;
    *(v106 + 10) = *(&xmmword_42A650 + 10);
    v105[0] = xmmword_42A610;
    v105[1] = unk_42A620;
    sub_8FC54(&v113, v104);
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_overlayingCaptionLabel] = sub_235C3C(v105, 2, 0, 1);
    v22 = [objc_allocWithZone(UIView) v15[160]];
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_separatorView] = v22;
    v103.receiver = v5;
    v103.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v103, v15[160], a1, a2, a3, a4);
    v23 = [v5 contentView];
    [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_captionLabel;
    v25 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_captionLabel];
    v26 = objc_opt_self();
    v27 = v25;
    v28 = [v26 secondaryLabelColor];
    [v27 setTextColor:v28];

    v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_subtitleLabel;
    v30 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_subtitleLabel];
    v31 = [v26 secondaryLabelColor];
    [v30 setTextColor:v31];

    v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_separatorView;
    v33 = qword_3FAC40;
    v34 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_separatorView];
    if (v33 != -1)
    {
      swift_once();
    }

    [v34 setBackgroundColor:{qword_4295F0, v99}];

    v35 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_overlayingCaptionLabel;
    v36 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_overlayingCaptionLabel];
    v37 = [v26 whiteColor];
    [v36 setTextColor:v37];

    [*&v5[v35] setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = sub_2BFFCC();
    v39 = objc_allocWithZone(v101);
    v40 = sub_29C44(2u, v38, 0, 0, 0, 0);
    v41 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_thumbnailArtworkContainer];
    v102 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_thumbnailArtworkContainer;
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_thumbnailArtworkContainer] = v40;
    v42 = v40;

    [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    ObjectType = swift_initStackObject();
    v99 = xmmword_31D660;
    *(ObjectType + 16) = xmmword_31D660;
    v100 = v32;
    v43 = *&v5[v32];
    *(ObjectType + 32) = v43;
    v44 = *&v5[v24];
    *(ObjectType + 40) = v44;
    v45 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_titleLabel];
    *(ObjectType + 48) = v45;
    v15 = *&v5[v29];
    *(ObjectType + 56) = v15;
    v46 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_mainArtworkContainer];
    *(ObjectType + 64) = v46;
    v47 = v43;
    v48 = v44;
    v49 = v45;
    v50 = v15;
    v51 = v46;
    *(ObjectType + 72) = sub_2C0040();
    v52 = ObjectType & 0xC000000000000001;
    v18 = [v5 contentView];
    if ((ObjectType & 0xC000000000000001) != 0)
    {
      v53 = sub_30D578();
    }

    else
    {
      if (!*(&dword_10 + (ObjectType & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_36;
      }

      v53 = *(ObjectType + 32);
    }

    v54 = v53;
    v15 = &selRef_registerImage_withTraitCollection_;
    [v18 addSubview:{v53, 6, 13}];

    if (v52)
    {
      v55 = sub_30D578();
    }

    else
    {
      if (*(&dword_10 + (ObjectType & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
        goto LABEL_36;
      }

      v55 = *(ObjectType + 40);
    }

    v56 = v55;
    [v18 addSubview:v55];

    if (v52)
    {
      v57 = sub_30D578();
    }

    else
    {
      if (*(&dword_10 + (ObjectType & 0xFFFFFFFFFFFFFF8)) < 3uLL)
      {
        goto LABEL_36;
      }

      v57 = *(ObjectType + 48);
    }

    v58 = v57;
    [v18 addSubview:v57];

    if (v52)
    {
      v59 = sub_30D578();
    }

    else
    {
      if (*(&dword_10 + (ObjectType & 0xFFFFFFFFFFFFFF8)) < 4uLL)
      {
        goto LABEL_36;
      }

      v59 = *(ObjectType + 56);
    }

    v60 = v59;
    [v18 addSubview:v59];

    if (v52)
    {
      v61 = sub_30D578();
    }

    else
    {
      if (*(&dword_10 + (ObjectType & 0xFFFFFFFFFFFFFF8)) < 5uLL)
      {
        goto LABEL_36;
      }

      v61 = *(ObjectType + 64);
    }

    v62 = v61;
    [v18 addSubview:v61];

    if (v52)
    {
      break;
    }

    if (*(&dword_10 + (ObjectType & 0xFFFFFFFFFFFFFF8)) >= 6uLL)
    {
      v63 = *(ObjectType + 72);
      goto LABEL_30;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v63 = sub_30D578();
LABEL_30:
  v64 = v63;
  [v18 addSubview:v63];

  swift_setDeallocating();
  swift_arrayDestroy();

  [*&v5[v100] removeFromSuperview];
  v65 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell____lazy_storage___hStackView;
  v66 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell____lazy_storage___hStackView];
  result = swift_allocObject();
  *(result + 16) = xmmword_317F20;
  v68 = *&v5[v35];
  *(result + 32) = v68;
  v69 = *(v102 + v5);
  if (!v69)
  {
    __break(1u);
    goto LABEL_45;
  }

  *(result + 40) = v69;
  v70 = result;
  v71 = v68;
  v72 = v69;
  v73 = v66;
  v74._rawValue = v70;
  sub_30C688(v74);

  v75 = swift_allocObject();
  *(v75 + 16) = v99;
  v76 = [*&v5[v65] leadingAnchor];
  v77 = [v5 contentView];
  v78 = [v77 leadingAnchor];

  v79 = [v76 constraintEqualToAnchor:v78];
  *(v75 + 32) = v79;
  v80 = [*&v5[v65] trailingAnchor];
  v81 = [v5 contentView];
  v82 = [v81 trailingAnchor];

  v83 = [v80 constraintEqualToAnchor:v82];
  *(v75 + 40) = v83;
  v84 = [*&v5[v65] bottomAnchor];
  v85 = [v5 contentView];
  v86 = [v85 bottomAnchor];

  v87 = [v84 constraintEqualToAnchor:v86];
  *(v75 + 48) = v87;
  v88 = [*&v5[v65] topAnchor];
  v89 = [v5 contentView];

  v90 = [v89 topAnchor];
  v91 = [v88 constraintGreaterThanOrEqualToAnchor:v90];

  *(v75 + 56) = v91;
  result = *(v102 + v5);
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v92 = [result widthAnchor];
  v93 = [v92 constraintEqualToConstant:58.0];

  *(v75 + 64) = v93;
  result = *(v102 + v5);
  if (!result)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  v94 = [result heightAnchor];
  v95 = [v94 constraintEqualToConstant:58.0];

  *(v75 + 72) = v95;
  v96 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v96 activateConstraints:isa];

  sub_124C4(0, &qword_4019C0);
  if (sub_30C988())
  {
    sub_E8CE8();
  }

  [*&v5[v65] setUserInteractionEnabled:0];
  v98 = v5;
  [v98 setIsAccessibilityElement:1];
  [v98 setAccessibilityTraits:UIAccessibilityTraitButton];

  return v98;
}

uint64_t sub_2C0F48()
{
  v1 = v0;
  v92.receiver = v0;
  v92.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v92, "layoutSubviews");
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_separatorInset + 8];
  v11 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_separatorInset + 24];
  sub_124C4(0, &qword_4019C0);
  if (sub_30C978())
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.5;
  }

  v13 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_separatorView];
  v93.origin.x = v3;
  v93.origin.y = v5;
  v93.size.width = v7;
  v93.size.height = v9;
  MinY = CGRectGetMinY(v93);
  v94.origin.x = v3;
  v94.origin.y = v5;
  v94.size.width = v7;
  v94.size.height = v9;
  [v13 setFrame:{v10, MinY, CGRectGetWidth(v94) - v10 - v11, v12}];
  v15 = [v1 contentView];
  [v15 bounds];
  v57 = v17;
  v58 = v16;
  v55 = v19;
  v56 = v18;
  [v15 layoutMargins];
  v21 = v20;
  v23 = v22;

  v24 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_captionLabel];
  if (qword_3FAF60 != -1)
  {
    swift_once();
  }

  v82[4] = xmmword_42AE40;
  v82[5] = xmmword_42AE50;
  v82[6] = unk_42AE60;
  v83 = word_42AE70;
  v82[0] = xmmword_42AE00;
  v82[1] = *&byte_42AE10;
  v82[2] = xmmword_42AE20;
  v82[3] = xmmword_42AE30;
  v84 = xmmword_42AE00;
  v85 = *&byte_42AE10;
  v86 = xmmword_42AE20;
  v87 = xmmword_42AE30;
  v88 = xmmword_42AE40;
  v89 = xmmword_42AE50;
  v90 = unk_42AE60;
  v91 = word_42AE70;
  sub_9004C(v82, v80);
  v25 = v24;
  v26 = sub_CB81C(0, 1, 1, _swiftEmptyArrayStorage);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_CB81C((v27 > 1), v28 + 1, 1, v26);
  }

  v29 = v89;
  v30 = &v26[128 * v28];
  *(v30 + 104) = v88;
  *(v30 + 120) = v29;
  *(v30 + 136) = v90;
  v31 = v85;
  *(v30 + 40) = v84;
  *(v30 + 56) = v31;
  v32 = v87;
  *(v30 + 72) = v86;
  *(v26 + 2) = v28 + 1;
  *(v30 + 4) = v25;
  *(v30 + 76) = v91;
  *(v30 + 88) = v32;
  *(v30 + 77) = 1;
  v33 = sub_240444(v1, v26, 1, v3, v5, v7, v9);

  v34 = qword_3FAF68;
  v35 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_titleLabel];
  if (v34 != -1)
  {
    v54 = v35;
    swift_once();
    v35 = v54;
  }

  v74[4] = xmmword_42AEC0;
  v74[5] = xmmword_42AED0;
  v74[6] = unk_42AEE0;
  v75 = word_42AEF0;
  v74[0] = xmmword_42AE80;
  v74[1] = *&byte_42AE90;
  v74[2] = xmmword_42AEA0;
  v74[3] = xmmword_42AEB0;
  *&v76[8] = xmmword_42AE80;
  *&v76[24] = *&byte_42AE90;
  *&v76[40] = xmmword_42AEA0;
  *&v76[56] = xmmword_42AEB0;
  *&v76[72] = xmmword_42AEC0;
  *&v76[88] = xmmword_42AED0;
  *&v76[104] = unk_42AEE0;
  *&v76[120] = word_42AEF0;
  *v76 = v35;
  *&v76[122] = 0;
  v36 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_subtitleLabel];
  sub_9004C(v74, v80);
  v37 = qword_3FAF70;
  v38 = v36;
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = UIEdgeInsetsInsetRect(v58, v57, v56, v55, v21, v23);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v77[4] = xmmword_42AF40;
  v77[5] = xmmword_42AF50;
  v77[6] = unk_42AF60;
  v77[0] = xmmword_42AF00;
  v77[1] = *&byte_42AF10;
  v77[2] = xmmword_42AF20;
  v77[3] = xmmword_42AF30;
  *&v79[104] = unk_42AF60;
  *&v79[72] = xmmword_42AF40;
  *&v79[88] = xmmword_42AF50;
  v78 = word_42AF70;
  *&v79[120] = word_42AF70;
  *&v79[8] = xmmword_42AF00;
  *&v79[24] = *&byte_42AF10;
  *&v79[40] = xmmword_42AF20;
  *&v79[56] = xmmword_42AF30;
  *v79 = v38;
  *&v79[122] = 0;
  *v66 = *&v76[96];
  *&v66[12] = *&v76[108];
  *(v73 + 12) = *&v79[108];
  HIDWORD(v73[0]) = unk_42AF64;
  v80[2] = *&v76[32];
  v80[3] = *&v76[48];
  v80[0] = *v76;
  v80[1] = *&v76[16];
  v80[7] = *&v66[16];
  v80[5] = *&v76[80];
  v80[6] = *v66;
  v80[4] = *&v76[64];
  v80[11] = *&v79[48];
  v80[10] = *&v79[32];
  v80[9] = *&v79[16];
  v80[8] = *v79;
  *&v81[12] = *(v73 + 12);
  *v81 = *&v79[96];
  v80[13] = *&v79[80];
  v80[12] = *&v79[64];
  v81[28] = 1;
  v71 = *&v79[64];
  v72 = *&v79[80];
  v73[0] = *&v79[96];
  *(v73 + 13) = *&v81[13];
  v67 = *v79;
  v68 = *&v79[16];
  v69 = *&v79[32];
  v70 = *&v79[48];
  v64 = *&v76[64];
  v65 = *&v76[80];
  v60 = *v76;
  v61 = *&v76[16];
  v62 = *&v76[32];
  v63 = *&v76[48];
  sub_9004C(v77, v59);
  sub_238F10(v76, v59);
  sub_238F10(v79, v59);
  sub_300B6C(v1, v3, v33, v7, v9 - v33);
  v46 = sub_30C978();
  v95.origin.x = v39;
  v95.origin.y = v41;
  v95.size.width = v43;
  v95.size.height = v45;
  Width = CGRectGetWidth(v95);
  v48 = 224.0;
  if (v46)
  {
    v48 = 39.0;
  }

  v49 = 335.0;
  if (v46)
  {
    v49 = 68.0;
  }

  v50 = Width * (v48 / v49);
  v96.origin.x = v39;
  v96.origin.y = v41;
  v96.size.width = v43;
  v96.size.height = v45;
  MinX = CGRectGetMinX(v96);
  v97.origin.x = v39;
  v97.origin.y = v41;
  v97.size.width = v43;
  v97.size.height = v45;
  v52 = CGRectGetMaxY(v97) - v50;
  v98.origin.x = v39;
  v98.origin.y = v41;
  v98.size.width = v43;
  v98.size.height = v45;
  [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_mainArtworkContainer] setFrame:{MinX, v52, CGRectGetWidth(v98), v50}];
  sub_238FC0(v80);
  sub_238F6C(v79);
  return sub_238F6C(v76);
}

id sub_2C1774(char a1)
{
  v2 = 1.0;
  if (a1)
  {
    v2 = 0.0;
  }

  return [*(*v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_separatorView) setAlpha:v2];
}

void sub_2C17A4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_objectGraph) = a1;

  sub_2AE20(v3);
  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_thumbnailArtworkContainer);
  if (v4)
  {
    v5 = v4;
    sub_2AE20(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2C1844()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_captionLabel];
  sub_30B4B8();
  if (v3)
  {
    v4 = sub_30C098();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_titleLabel];
  sub_30B4F8();
  if (v6)
  {
    v7 = sub_30C098();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  v8 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_subtitleLabel];
  sub_30B518();
  if (v9)
  {
    v10 = sub_30C098();
  }

  else
  {
    v10 = 0;
  }

  [v8 setText:v10];

  sub_30B4D8();
  v12 = v11;
  if (v11)
  {
    v13 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_overlayingCaptionLabel];
    v14 = sub_30C098();

    [v13 setText:v14];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_overlayingCaptionLabel] setText:0];
  }

  v15 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_mainArtworkContainer];
  v16 = *&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_legibilityGradientView];
  if (v16)
  {
    [v16 setHidden:v12 == 0];
  }

  sub_124C4(0, &qword_4019C0);
  if ((sub_30C978() & 1) != 0 && sub_30B4A8())
  {
    result = sub_30B4E8();
    if (result)
    {
      v18 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_thumbnailArtworkContainer];
      if (!v18)
      {
        __break(1u);
        return result;
      }

      v19 = v18;

      sub_2A218(v20);

      v21 = sub_2C0040();
      if (qword_3FAF58 != -1)
      {
        swift_once();
      }

      [v21 setLayoutMargins:{*&qword_40D420, *&qword_40D428, *&qword_40D430, *&qword_40D438}];
    }

    else
    {

      sub_2A218(v23);

      v24 = v15[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_style];
      [v15 bounds];
      sub_2B550(v24, v25, v26, v27, v28);
      v30 = v29;
      v21 = sub_2C0040();
      [v21 layoutMargins];
      [v21 setLayoutMargins:{v31, v32, v33, v30 + 16.0}];
    }
  }

  else
  {
    v22 = *&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_playButton];
    if (v22)
    {
      [v22 setHidden:1];
    }
  }

  sub_2C1B94();

  return [v1 setNeedsLayout];
}

void sub_2C1B94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = sub_3031C8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  sub_30B508();
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    v15 = v6;
LABEL_6:
    sub_125E18(v15);
    return;
  }

  sub_6D85C(v6, v13);
  sub_2C23A0(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_mainArtworkView), v13, 1);
  v16 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_thumbnailArtworkContainer);
  if (v16)
  {
    v17 = v16;
    [v17 setHidden:(sub_30B4E8() & 1) == 0];

    v18 = sub_2C0040();
    [v18 setUserInteractionEnabled:sub_30B4E8() & 1];

    sub_30B4C8();
    if (v14(v3, 1, v7) == 1)
    {
      sub_6D924(v13);
      v15 = v3;
      goto LABEL_6;
    }

    sub_6D85C(v3, v10);
    v19 = sub_2BFFCC();
    sub_2C23A0(v19, v10, 0);

    sub_6D924(v10);
    sub_6D924(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2C1E24(uint64_t a1, uint64_t a2)
{
  if (qword_3FAF60 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_42AE40;
  v14[5] = xmmword_42AE50;
  v14[6] = unk_42AE60;
  v14[0] = xmmword_42AE00;
  v14[1] = *&byte_42AE10;
  v14[2] = xmmword_42AE20;
  v14[3] = xmmword_42AE30;
  v32 = xmmword_42AE40;
  v33 = xmmword_42AE50;
  v34 = unk_42AE60;
  v28 = xmmword_42AE00;
  v29 = *&byte_42AE10;
  v15 = word_42AE70;
  v35 = word_42AE70;
  v30 = xmmword_42AE20;
  v31 = xmmword_42AE30;
  sub_9004C(v14, v26);
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v3 = sub_30D6F8();
  v4 = __swift_project_value_buffer(v3, qword_4295D8);
  sub_231F6C(a2, v4, 1);
  v16[4] = v32;
  v16[5] = v33;
  v16[6] = v34;
  v17 = v35;
  v16[0] = v28;
  v16[1] = v29;
  v16[2] = v30;
  v16[3] = v31;
  sub_900A8(v16);
  if (qword_3FAF68 != -1)
  {
    swift_once();
  }

  v18[4] = xmmword_42AEC0;
  v18[5] = xmmword_42AED0;
  v18[6] = unk_42AEE0;
  v18[0] = xmmword_42AE80;
  v18[1] = *&byte_42AE90;
  v18[2] = xmmword_42AEA0;
  v18[3] = xmmword_42AEB0;
  v32 = xmmword_42AEC0;
  v33 = xmmword_42AED0;
  v34 = unk_42AEE0;
  v28 = xmmword_42AE80;
  v29 = *&byte_42AE90;
  v19 = word_42AEF0;
  v35 = word_42AEF0;
  v30 = xmmword_42AEA0;
  v31 = xmmword_42AEB0;
  sub_9004C(v18, v26);
  sub_231F6C(a2, v4, 1);
  v20[4] = v32;
  v20[5] = v33;
  v20[6] = v34;
  v21 = v35;
  v20[0] = v28;
  v20[1] = v29;
  v20[2] = v30;
  v20[3] = v31;
  sub_900A8(v20);
  if (qword_3FAF70 != -1)
  {
    swift_once();
  }

  v22[4] = xmmword_42AF40;
  v22[5] = xmmword_42AF50;
  v22[6] = unk_42AF60;
  v22[0] = xmmword_42AF00;
  v22[1] = *&byte_42AF10;
  v22[2] = xmmword_42AF20;
  v22[3] = xmmword_42AF30;
  v32 = xmmword_42AF40;
  v33 = xmmword_42AF50;
  v34 = unk_42AF60;
  v28 = xmmword_42AF00;
  v29 = *&byte_42AF10;
  v23 = word_42AF70;
  v35 = word_42AF70;
  v30 = xmmword_42AF20;
  v31 = xmmword_42AF30;
  sub_9004C(v22, v26);
  sub_231F6C(a2, v4, 1);
  v24[4] = v32;
  v24[5] = v33;
  v24[6] = v34;
  v25 = v35;
  v24[0] = v28;
  v24[1] = v29;
  v24[2] = v30;
  v24[3] = v31;
  sub_900A8(v24);
  if (qword_3FAF78 != -1)
  {
    swift_once();
  }

  v26[4] = xmmword_42AFC0;
  v26[5] = unk_42AFD0;
  v26[6] = xmmword_42AFE0;
  v27 = word_42AFF0;
  v26[0] = xmmword_42AF80;
  v26[1] = *&byte_42AF90;
  v26[2] = xmmword_42AFA0;
  v26[3] = unk_42AFB0;
  v10 = xmmword_42AFC0;
  v11 = unk_42AFD0;
  v12 = xmmword_42AFE0;
  v13 = word_42AFF0;
  v6 = xmmword_42AF80;
  v7 = *&byte_42AF90;
  v8 = xmmword_42AFA0;
  v9 = unk_42AFB0;
  sub_9004C(v26, &v28);
  sub_231F6C(a2, v4, 1);
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  sub_900A8(&v28);
  sub_124C4(0, &qword_4019C0);
  sub_30C978();
  return sub_307198();
}

uint64_t sub_2C2294(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2C2C80(&qword_40D4F8, v3, type metadata accessor for ShowcaseCollectionViewCell);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v4);
}

void *sub_2C2330()
{
  v1 = *(*v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_mainArtworkContainer);
  v2 = v1;
  return v1;
}

uint64_t sub_2C2364@<X0>(uint64_t a1@<X8>)
{
  result = sub_30C708();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = 1;
  return result;
}

void sub_2C23A0(char *a1, uint64_t a2, int a3)
{
  v35 = a3;
  v34 = a1;
  v5 = sub_3041E8();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v8 - 8);
  v40 = &v33 - v9;
  v10 = sub_3031C8();
  __chkstk_darwin(v10);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_303398();
  v41 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_303DF8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v3;
  if (*(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_objectGraph))
  {
    v33 = v12;
    v19 = v34;

    sub_3030E8();
    if ((*(v16 + 88))(v18, v15) == enum case for CropCode.boundingBox(_:))
    {
      v20 = 5;
    }

    else
    {
      sub_3030C8();
      v20 = sub_303118();
      (*(v16 + 8))(v18, v15);
    }

    v21 = v19;
    v22 = v35;
    if (v35)
    {
      sub_124C4(0, &qword_4019C0);
      v23 = sub_30C978();
      v24 = 0x4074F00000000000;
      if (v23)
      {
        v24 = 0x4051000000000000;
      }

      v25 = 0x406C000000000000;
      if (v23)
      {
        v25 = 0x4043800000000000;
      }
    }

    else
    {
      v24 = 0x3FF0000000000000;
      v25 = 0x3FF0000000000000;
    }

    v42[0] = v24;
    v42[1] = v25;
    v42[2] = 0;
    v42[3] = 0;
    v43 = 0;
    sub_2C28C4(v42, v22 & 1);
    sub_2EF18(a2, v26, v27);
    [v21 setContentMode:v20];
    sub_6D8C0(a2, v37);
    v28 = *(v16 + 56);
    v36 = a2;
    v28(v40, 1, 1, v15);
    sub_304198();
    sub_30C778();
    sub_303A08();
    (*(v38 + 8))(v7, v39);
    v29 = [objc_opt_self() mainScreen];
    [v29 scale];

    sub_303358();
    type metadata accessor for ArtworkView();
    sub_2C2C80(&qword_404350, 255, type metadata accessor for ArtworkView);
    sub_308E28();
    (*(v41 + 8))(v14, v33);
    sub_303198();
    v30 = &v21[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageSize];
    *v30 = v31;
    *(v30 + 1) = v32;
    [v21 setNeedsLayout];
  }
}

void sub_2C28C4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [v2 contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v4 layoutMargins];
    v14 = v13;
    v16 = v15;

    v21.origin.x = UIEdgeInsetsInsetRect(v6, v8, v10, v12, v14, v16);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    CGRectGetWidth(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    CGRectGetWidth(v22);
    if (v3 == 1)
    {
      sub_124C4(0, &qword_4019C0);
      sub_30C978();
    }
  }
}

void sub_2C2A6C(char a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_isHovering) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_thumbnailArtworkContainer);
  if (v2)
  {
    v4 = v2;
    sub_2A6FC(a1 & 1, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2C2C80(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2C2CC8()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_lineCountLayoutGroup) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_thumbnailArtworkContainer) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell____lazy_storage___thumbnailArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell____lazy_storage___hStackView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_separatorInset);
  v2 = *&UIEdgeInsetsZero.bottom;
  *v1 = *&UIEdgeInsetsZero.top;
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowcaseCollectionViewCell_isHovering) = 0;
  sub_30D648();
  __break(1u);
}

char *sub_2C2D88(uint64_t a1, unint64_t a2, double a3)
{
  v6 = [objc_opt_self() effectWithBlurRadius:a3];
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_31BF90;
    *(v7 + 32) = v6;
    sub_124C4(0, &qword_40D660);
    v8 = v6;
    isa = sub_30C358().super.isa;

    v6 = [objc_opt_self() effectCombiningEffects:isa];
  }

  v10 = [objc_allocWithZone(v3) initWithEffect:v6];
  v11 = *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews13FadedBlurView_maskLayer];
  if (a2 >> 62)
  {
    v12 = sub_30D668();
  }

  else
  {
    v12 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v33 = a1;
  if (!v12)
  {
    v24 = v10;
    v25 = v11;

    v17 = _swiftEmptyArrayStorage;
LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC498);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_315430;
    v27 = [objc_opt_self() blackColor];
    v28 = [v27 CGColor];

    type metadata accessor for CGColor(0);
    *(inited + 56) = v29;
    *(inited + 32) = v28;
    *&v34 = v17;
    sub_14A3E4(inited);
    v30 = sub_30C358().super.isa;

    [v11 setColors:v30];

    *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews13FadedBlurView_pointLocations] = v33;

    return v10;
  }

  v36 = _swiftEmptyArrayStorage;
  v13 = v10;
  v32 = v11;
  v14 = v11;
  result = sub_1751E4(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v31 = v6;
    v16 = 0;
    v17 = v36;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = sub_30D578();
      }

      else
      {
        v18 = *(a2 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 CGColor];
      type metadata accessor for CGColor(0);
      v35 = v21;

      *&v34 = v20;
      v36 = v17;
      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        sub_1751E4((v22 > 1), v23 + 1, 1);
        v17 = v36;
      }

      ++v16;
      v17[2] = v23 + 1;
      sub_1DA94(&v34, &v17[4 * v23 + 4]);
    }

    while (v12 != v16);

    v6 = v31;
    v11 = v32;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2C310C()
{
  if (!*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_currentModel))
  {
    return 0;
  }

  v1 = v0;

  sub_307858();
  v2 = sub_3079F8();

  if ((v2 & 1) == 0)
  {

    v5 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_titleLabel);
LABEL_11:
    v8 = v5;
    return v5;
  }

  result = _UISolariumEnabled();
  if (result)
  {
    v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton);
    if (!v4)
    {
      __break(1u);
      return 0;
    }
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_preSolariumPrimaryButton);
    if (!v4)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  v6 = v4;
  v7 = [v6 isHidden];

  if (v7)
  {

    v5 = *(*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_descriptionLabelContainer) + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel);
    goto LABEL_11;
  }

  result = _UISolariumEnabled();
  if (result)
  {
    v5 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton);
    if (v5)
    {
LABEL_16:
      v9 = v5;

      return v5;
    }

    __break(1u);
  }

  v5 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_preSolariumPrimaryButton);
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t ShowHeaderView.bind(to:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_objectGraph;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_objectGraph;
    swift_beginAccess();
    *(v4 + v5) = a1;
  }

  v6 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_providerButtonView);
  *(v6 + OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_objectGraph) = a1;
  swift_retain_n();

  v7 = *(v6 + OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_button);
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_objectGraph;
  swift_beginAccess();
  *(v7 + v8) = a1;

  return sub_2E306C(a1);
}

void sub_2C3380(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEA58);
  __chkstk_darwin(v4 - 8);
  v6 = &v209 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v209 - v8;
  v224 = sub_309778();
  v221 = *(v224 - 8);
  __chkstk_darwin(v224);
  v220 = &v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3019B8();
  v213 = *(v11 - 8);
  v214 = v11;
  __chkstk_darwin(v11);
  v212 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_3041E8();
  v218 = *(v225 - 8);
  __chkstk_darwin(v225);
  v216 = &v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v14 - 8);
  v226 = &v209 - v15;
  v16 = sub_303398();
  v230 = *(v16 - 8);
  __chkstk_darwin(v16);
  v227 = &v209 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v18 - 8);
  v20 = &v209 - v19;
  v21 = sub_3031C8();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v215 = &v209 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v217 = &v209 - v25;
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_objectGraph;
  swift_beginAccess();
  v27 = *&v2[v26];
  if (!v27)
  {
    return;
  }

  v210 = v22;
  v211 = v16;
  v223 = v9;
  v219 = v6;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_currentModel] = a1;
  v231 = v27;

  sub_307858();
  v28 = sub_3079F8();

  v29 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_titleLabel];
  v228 = a1;
  v229 = v2;
  v222 = v29;
  if (v28)
  {
    [v29 setHidden:1];
    [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_artworkView] setHidden:1];
    v30 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_blurView];
    if (v30)
    {
      [v30 setHidden:0];
    }

    [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_spacer] setHidden:0];
  }

  else
  {
    [v29 setHidden:0];
    v31 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_artworkView];
    [v31 setHidden:0];
    [v31 setBackgroundColor:0];
    [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_providerButtonView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_spacer] setHidden:1];
    sub_307908();
    if (v32)
    {
      v33 = sub_30C098();
    }

    else
    {
      v33 = 0;
    }

    v34 = v210;
    v35 = v211;
    [v222 setText:v33];

    sub_307858();
    sub_307A08();

    v36 = (*(v34 + 48))(v20, 1, v21);
    v2 = v229;
    if (v36 == 1)
    {
      sub_EB68(v20, &unk_402FF0);
    }

    else
    {
      v37 = v217;
      sub_6D85C(v20, v217);
      v245 = 0uLL;
      (*(&stru_2E8.reloff + (swift_isaMask & *v31)))(&v245);
      sub_2EF18(v37, 200.0, 200.0);
      v38 = *(v31 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style);
      *(v31 + OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style) = 0;
      LOBYTE(v245) = v38;
      sub_2DE78(&v245);
      sub_6D8C0(v37, v215);
      v39 = sub_303DF8();
      (*(*(v39 - 8) + 56))(v226, 1, 1, v39);
      v40 = v216;
      sub_304198();
      sub_30C778();
      sub_303A08();
      (v218)[1](v40, v225);
      v41 = [objc_opt_self() mainScreen];
      [v41 scale];

      v42 = v227;
      sub_303358();
      type metadata accessor for LegacyCachingArtworkView();
      sub_2C9D44(&qword_40D650, 255, type metadata accessor for LegacyCachingArtworkView);
      sub_308E28();
      (*(v230 + 1))(v42, v35);
      sub_6D924(v37);
    }
  }

  v43 = v228;

  v44 = sub_2C7BC0();
  v45 = v44;
  v46 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_primaryButtonHeightConstraint];
  v47 = &selRef_hitTestInsets;
  if (v46)
  {
    if (v44 >= 3u)
    {
      v50 = qword_3FAF80;
      v51 = v46;
      if (v50 != -1)
      {
        swift_once();
      }

      v49 = *&qword_40D500;
    }

    else
    {
      v48 = v46;
      v49 = 48.0;
    }

    [v46 setConstant:v49];
  }

  v52 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButtonHeightConstraint];
  if (v52)
  {
    if (v45 >= 3u)
    {
      v55 = qword_3FAF80;
      v56 = v52;
      if (v55 != -1)
      {
        swift_once();
      }

      v54 = *&qword_40D500;
    }

    else
    {
      v53 = v52;
      v54 = 48.0;
    }

    [v52 setConstant:v54];
  }

  if (_UISolariumEnabled())
  {
    v57 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton];
    if (v57)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  v57 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_preSolariumPrimaryButton];
  if (!v57)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

LABEL_30:
  v58 = v57;
  [v58 setHidden:(v45 & 0xFD) == 0];

  v230 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButton];
  [v230 setHidden:v45 < 2u];
  v59 = &selRef_hitTestInsets;
  if (v45 <= 1u)
  {
    if (!v45)
    {
      v60 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_providerButtonView];
      v226 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_centralStackView];
      [v226 setCustomSpacing:v60 afterView:32.0];
      goto LABEL_53;
    }

    v226 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_centralStackView];
    if (!_UISolariumEnabled())
    {
      goto LABEL_42;
    }

    v62 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton];
    if (v62)
    {
LABEL_43:
      v66 = v62;
      [v226 setCustomSpacing:v66 afterView:32.0];

      goto LABEL_53;
    }

    __break(1u);
LABEL_38:
    v63 = _UISolariumEnabled();
    v226 = *&v2[v47[175]];
    v64 = _UISolariumEnabled();
    if (v63)
    {
      if (v64)
      {
        v65 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton];
        if (!v65)
        {
          __break(1u);
LABEL_42:
          v62 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_preSolariumPrimaryButton];
          if (!v62)
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          goto LABEL_43;
        }

        goto LABEL_48;
      }

LABEL_47:
      v65 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_preSolariumPrimaryButton];
      if (!v65)
      {
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

LABEL_48:
      v67 = 10.0;
LABEL_51:
      v68 = v65;
      v69 = v226;
      [v226 setCustomSpacing:v68 afterView:v67];

      v61 = v69;
      goto LABEL_52;
    }

    if (v64)
    {
      v65 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton];
      if (!v65)
      {
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      v65 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_preSolariumPrimaryButton];
      if (!v65)
      {
LABEL_157:
        __break(1u);
        return;
      }
    }

    v67 = 8.0;
    goto LABEL_51;
  }

  v47 = &OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_reverseAlignment;
  if (v45 != 2)
  {
    goto LABEL_38;
  }

  v61 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_centralStackView];
  v226 = v61;
LABEL_52:
  [v61 setCustomSpacing:v230 afterView:32.0];
LABEL_53:
  v70 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_descriptionLabelContainer];
  v227 = OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel;
  v71 = *(v70 + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel);
  sub_307808();
  if (v72)
  {
    v73 = sub_30C098();
  }

  else
  {
    v73 = 0;
  }

  LODWORD(v215) = v45;
  [v71 setText:v73];

  v74 = sub_307828();
  if (v74)
  {
    v75 = v74;
    v76 = [v2 traitCollection];
    v77 = sub_30C9C8();

    if (v77)
    {
      v78 = 2;
    }

    else
    {
      v78 = 3;
    }

    [*&v227[v70] setNumberOfLines:v78];
    v79 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_upsellBanner];
    [v79 setHidden:0];
    sub_2E20D4(v75);
  }

  else
  {
    v79 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_upsellBanner];
    [v79 setHidden:1];
  }

  v80 = sub_307928();
  v225 = v70;
  if (v80)
  {
    sub_3026B8();
    sub_30B8E8();
    v81 = sub_307918();
    v82 = sub_3026A8();
    sub_2CABC8(v81, v82 & 1);

    v70 = v225;
  }

  v83 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_metadataView];
  [v83 setHidden:(sub_307928() & 1) == 0];
  v84 = sub_307868();
  if (v84)
  {
    v85 = v84;
    v216 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_providerButtonView];
    v86 = *&v216[OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_button];
    ChevronButton.setAction(_:)(v85);

    sub_2C72B8(v2, v43, v231);
  }

  else
  {
    v87 = sub_307848();
    v216 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_providerButtonView];
    if (v88)
    {
      v89 = *&v216[OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_button];
      v90 = *&v89[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel];
      *&v245 = v87;
      *(&v245 + 1) = v88;
      v91 = v89;
      v92 = v90;
      v93 = v212;
      sub_3019A8();
      sub_E504();
      sub_30D3E8();
      v94 = v93;
      v59 = &selRef_hitTestInsets;
      (*(v213 + 8))(v94, v214);
      v70 = v225;

      v95 = sub_30C098();
      v43 = v228;

      [v92 setText:v95];

      sub_2C72B8(v2, v43, v231);
    }

    else
    {
      [v216 setHidden:1];
    }
  }

  v97 = 1;
  if (sub_307828())
  {
    v96 = sub_307E28();

    if (v96)
    {
      v97 = 0;
    }
  }

  *(v79 + qword_40E008) = v97;
  [v226 v59[12]];
  if (sub_307828())
  {

    if ([v83 isHidden])
    {
      [v226 v59[12]];
    }
  }

  v217 = v83;
  v98 = sub_307898();
  v99 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_displayEntitlementBadge;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_displayEntitlementBadge] = v98 & 1;
  sub_2C60C4();
  if (v2[v99] == 1)
  {
    v100 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_entitlementBadge];
    v101 = sub_3078F8();
    if (v101)
    {
      v102 = v101;
      sub_30CFC8();
      if (v244 & 1 | (v243 < 0.25))
      {
        v103 = 11;
      }

      else
      {
        v103 = 13;
      }

      v104 = ~(v244 | (v243 < 0.25));
      v105 = [objc_opt_self() effectWithStyle:v103];
      v106 = [objc_opt_self() effectForBlurEffect:v105 style:v104 & 1];
      [*&v100[qword_40E930] setEffect:v105];
      [*&v100[qword_40E938] setEffect:v106];

      v100 = v106;
      v70 = v225;
    }
  }

  v218 = v79;
  v107 = *&v227[v70];
  v108 = objc_opt_self();
  v109 = v70;
  v110 = v107;
  v111 = [v108 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  sub_124C4(0, &qword_408100);
  v112 = sub_30CD18();
  v113.super.isa = v111;
  v114.super.isa = v112;
  isa = sub_307888(v113, v114).super.isa;

  [v110 setAttributedText:isa];
  v116 = sub_3078C8();
  if (v116)
  {
    v117 = v116;
    v118 = *(v109 + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_moreButton);
    *(&v246 + 1) = sub_3076F8();
    *&v247 = sub_2C9D44(&unk_3FB8B0, 255, &type metadata accessor for FlowAction);
    *&v245 = v117;
    v119 = v118;

    sub_30D388();

    __swift_destroy_boxed_opaque_existential_1(&v245);
  }

  sub_3078E8();
  v120 = v223;
  if (!v121)
  {
    v137 = sub_2C5EE0();
    [v137 setHidden:1];

LABEL_95:
    v139 = v230;
    goto LABEL_97;
  }

  v122 = sub_2C5EE0();
  v123 = sub_30C098();
  [v122 setText:v123];

  v124 = v2;
  v125 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___secondaryButtonSubtitleLabel;
  [*&v124[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___secondaryButtonSubtitleLabel] setHidden:0];
  v126 = v226;
  [v226 v59[12]];
  [v126 v59[12]];
  if (!sub_307878())
  {

LABEL_94:
    v138 = *&v229[v125];
    v2 = v229;
    [v138 setUserInteractionEnabled:0];
    goto LABEL_95;
  }

  sub_307AC8();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_94;
  }

  v127 = v229;
  v128 = [*&v229[v125] textColor];
  if (!v128)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v129 = v128;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD40);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_315420;
  *(v130 + 32) = NSUnderlineStyleAttributeName;
  *(v130 + 40) = 1;
  *(v130 + 64) = &type metadata for Int;
  *(v130 + 72) = NSUnderlineColorAttributeName;
  *(v130 + 104) = sub_124C4(0, &qword_3FFD48);
  *(v130 + 80) = v129;
  v131 = NSUnderlineStyleAttributeName;
  v132 = NSUnderlineColorAttributeName;
  v133 = v129;
  sub_2D6CB0(v130);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD50);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v134 = *&v127[v125];
  v135 = [v134 text];
  if (v135)
  {
    v136 = v135;
    sub_30C0D8();
  }

  v140 = objc_allocWithZone(NSAttributedString);
  v141 = sub_30C098();

  type metadata accessor for Key(0);
  sub_2C9D44(&qword_3FB410, 255, type metadata accessor for Key);
  v142 = sub_30BF88().super.isa;

  v143 = [v140 initWithString:v141 attributes:v142];

  [v134 setAttributedText:v143];
  v144 = *&v229[v125];
  v2 = v229;
  [v144 setUserInteractionEnabled:1];

  v43 = v228;
  v139 = v230;
  v120 = v223;
LABEL_97:
  v145 = sub_3078D8();
  if (!v145)
  {
    [v139 setHidden:1];
    v151 = v224;
    goto LABEL_109;
  }

  v146 = v145;
  v147 = qword_40E820;
  v148 = *&v139[qword_40E820];
  sub_30B018();
  if (v149)
  {
    v150 = sub_30C098();
  }

  else
  {
    v150 = 0;
  }

  [v148 setTitle:v150 forState:0];

  *&v245 = v43;
  sub_307938();
  v152 = sub_30AB98();
  if (v152)
  {
    v153 = v152;
    *(&v246 + 1) = sub_30B038();
    *&v247 = sub_2C9D44(&qword_3FBDA0, 255, &type metadata accessor for Action);
    *&v245 = v153;
    sub_30D388();
    sub_12670(&v245, &v234);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
    if (swift_dynamicCast())
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_308D68();
      v2 = v229;

      v154 = *&v139[v147];
      sub_124C4(0, &qword_408080);
      v43 = v228;
      swift_allocObject();
      swift_unknownObjectWeakInit();
LABEL_107:
      v155 = sub_30D0C8();
      [v154 addAction:v155 forControlEvents:0x2000];
    }
  }

  else
  {
    *(&v246 + 1) = sub_30B038();
    *&v247 = sub_2C9D44(&qword_3FBDA0, 255, &type metadata accessor for Action);
    *&v245 = v146;

    sub_30D388();
    sub_12670(&v245, &v234);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405048);
    if (swift_dynamicCast())
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_308D68();
      v43 = v228;

      v154 = *&v139[v147];
      sub_124C4(0, &qword_408080);
      v2 = v229;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      goto LABEL_107;
    }
  }

  v120 = v223;
  v151 = v224;
  __swift_destroy_boxed_opaque_existential_1(&v245);
  v139 = v230;
  [v230 setHidden:0];

LABEL_109:
  v156 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton];
  v157 = v219;
  v226 = v156;
  if (!v156)
  {
    goto LABEL_126;
  }

  v158 = v156;
  sub_2ADBB0(v120);
  v159 = v221;
  if ((*(v221 + 48))(v120, 1, v151) == 1)
  {

    sub_EB68(v120, &qword_3FEA58);
    goto LABEL_114;
  }

  v160 = v220;
  (*(v159 + 32))(v220, v120, v151);
  (*(v159 + 16))(v157, v160, v151);
  (*(v159 + 56))(v157, 0, 1, v151);
  v161 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_data;
  swift_beginAccess();
  sub_749E4(v157, &v158[v161]);
  swift_endAccess();
  v162 = objc_opt_self();
  v163 = swift_allocObject();
  *(v163 + 16) = v158;
  v164 = swift_allocObject();
  *(v164 + 16) = sub_74A54;
  *(v164 + 24) = v163;
  *&v247 = sub_293C0;
  *(&v247 + 1) = v164;
  *&v245 = _NSConcreteStackBlock;
  *(&v245 + 1) = 1107296256;
  *&v246 = sub_19D688;
  *(&v246 + 1) = &block_descriptor_70;
  v165 = _Block_copy(&v245);
  v166 = v158;

  [v162 performWithoutAnimation:v165];
  _Block_release(v165);
  LOBYTE(v162) = swift_isEscapingClosureAtFileLocation();

  if (v162)
  {
    __break(1u);
    goto LABEL_153;
  }

  sub_EB68(v157, &qword_3FEA58);
  (*(v159 + 8))(v220, v224);
  v43 = v228;
  v2 = v229;
  v139 = v230;
LABEL_114:
  v167 = v215;
  v168 = v215;
  if (v215 == 3)
  {
    v169 = 3;
  }

  else
  {
    *&v245 = v43;
    sub_307938();
    v169 = sub_30A2D8();
  }

  v170 = &v158[OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_theme];
  swift_beginAccess();
  v171 = *v170;
  v172 = v170[8];
  *v170 = v169;
  v170[8] = v168 == 3;
  if (v172 == 1)
  {
    if (v171 > 1)
    {
      if (v171 == 2)
      {
        if (v167 != 3 || v169 != 2)
        {
          goto LABEL_125;
        }
      }

      else if (v167 != 3 || v169 <= 2)
      {
        goto LABEL_125;
      }
    }

    else if (v171)
    {
      if (v167 != 3 || v169 != 1)
      {
        goto LABEL_125;
      }
    }

    else if (v167 != 3 || v169)
    {
LABEL_125:
      sub_2A5A44();
    }
  }

  else if (v167 == 3 || v171 != v169)
  {
    goto LABEL_125;
  }

LABEL_126:
  v173 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_preSolariumPrimaryButton];
  if (v173)
  {
    v174 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_primaryButtonController;
    if (*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_primaryButtonController])
    {
      v175 = v173;
    }

    else
    {
      v176 = *&v173[qword_40E820];
      type metadata accessor for SmartPlayButtonController();
      v177 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v177 + 80) = 0;
      *(v177 + 64) = 0u;
      *(v177 + 48) = 0u;
      v224 = v177 + 48;
      sub_2C9C14(&v245);
      v178 = v252;
      *(v177 + 184) = v251;
      *(v177 + 200) = v178;
      *(v177 + 216) = v253[0];
      *(v177 + 225) = *(v253 + 9);
      v179 = v248;
      *(v177 + 120) = v247;
      *(v177 + 136) = v179;
      v180 = v250;
      *(v177 + 152) = v249;
      *(v177 + 168) = v180;
      v181 = v246;
      *(v177 + 88) = v245;
      *(v177 + 104) = v181;
      *(v177 + 248) = 0;
      *(v177 + 256) = 2;
      *(v177 + 272) = 0;
      *(v177 + 280) = 0;
      *(v177 + 264) = 0;
      v182 = OBJC_IVAR____TtC23ShelfKitCollectionViews25SmartPlayButtonController_currentPlayState;
      v183 = sub_303748();
      (*(*(v183 - 8) + 56))(v177 + v182, 1, 1, v183);
      swift_unknownObjectWeakAssign();
      *(v177 + 24) = 257;
      *(v177 + 32) = v231;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);
      sub_30B9A8();

      v223 = v173;
      v184 = v176;
      v2 = v229;
      sub_30BE78();
      *(v177 + 40) = v234;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E20);
      sub_30BE78();

      v185 = v224;
      swift_beginAccess();
      sub_2C9C3C(&v234, v185);
      swift_endAccess();
      *&v2[v174] = v177;

      if (!*&v2[v174])
      {

LABEL_134:
        v139 = v230;
        goto LABEL_135;
      }
    }

    if (sub_307838())
    {
      sub_2D247C(v232);

      v251 = v232[6];
      v252 = v232[7];
      v253[0] = v233[0];
      *(v253 + 9) = *(v233 + 9);
      v247 = v232[2];
      v248 = v232[3];
      v249 = v232[4];
      v250 = v232[5];
      v245 = v232[0];
      v246 = v232[1];
      UINavigationBar.overrideBackButtonStyle.setter(&v245);
      v240 = v251;
      v241 = v252;
      v242[0] = v253[0];
      *(v242 + 9) = *(v253 + 9);
      v236 = v247;
      v237 = v248;
      v238 = v249;
      v239 = v250;
      v234 = v245;
      v235 = v246;
    }

    else
    {
      sub_2C9C14(&v234);
    }

    v251 = v240;
    v252 = v241;
    v253[0] = v242[0];
    *(v253 + 9) = *(v242 + 9);
    v247 = v236;
    v248 = v237;
    v249 = v238;
    v250 = v239;
    v245 = v234;
    v246 = v235;
    v186 = sub_3078A8();
    sub_2CE4B4(v186, &v245);

    sub_EB68(&v234, &qword_40D648);

    goto LABEL_134;
  }

LABEL_135:
  v187 = [*&v216[OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_button] layer];
  v188 = [v2 traitCollection];
  v189 = sub_30C998();

  [v187 setCompositingFilter:v189];
  v190 = *&v227[v225];
  *&v234 = 0;
  *(&v234 + 1) = 0xE000000000000000;
  v191 = v190;
  v254._object = 0x800000000033C270;
  v254._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v254);
  v255._countAndFlagsBits = 46;
  v255._object = 0xE100000000000000;
  sub_30C238(v255);
  LOBYTE(v232[0]) = 3;
  sub_30D638();
  v192 = sub_30C098();

  [v191 setAccessibilityIdentifier:v192];

  if (v173)
  {
    v193 = *&v173[qword_40E820];
    *&v234 = 0;
    *(&v234 + 1) = 0xE000000000000000;
    v194 = v193;
    v256._object = 0x800000000033C270;
    v256._countAndFlagsBits = 0xD000000000000014;
    sub_30C238(v256);
    v257._countAndFlagsBits = 46;
    v257._object = 0xE100000000000000;
    sub_30C238(v257);
    LOBYTE(v232[0]) = 4;
    sub_30D638();
    v195 = sub_30C098();

    [v194 setAccessibilityIdentifier:v195];
  }

  v196 = v226;
  if (v226)
  {
    *&v234 = 0;
    *(&v234 + 1) = 0xE000000000000000;
    v258._object = 0x800000000033C270;
    v258._countAndFlagsBits = 0xD000000000000014;
    sub_30C238(v258);
    v259._countAndFlagsBits = 46;
    v259._object = 0xE100000000000000;
    sub_30C238(v259);
    LOBYTE(v232[0]) = 4;
    sub_30D638();
    v197 = sub_30C098();

    [v196 setAccessibilityIdentifier:v197];
  }

  v198 = *&v139[qword_40E820];
  *&v234 = 0;
  *(&v234 + 1) = 0xE000000000000000;
  v199 = v198;
  v260._object = 0x800000000033C270;
  v260._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v260);
  v261._countAndFlagsBits = 46;
  v261._object = 0xE100000000000000;
  sub_30C238(v261);
  LOBYTE(v232[0]) = 5;
  sub_30D638();
  v200 = sub_30C098();

  [v199 setAccessibilityIdentifier:v200];

  v201 = v229;
  v202 = sub_2C5EE0();
  *&v234 = 0;
  *(&v234 + 1) = 0xE000000000000000;
  v262._object = 0x800000000033C270;
  v262._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v262);
  v263._countAndFlagsBits = 46;
  v263._object = 0xE100000000000000;
  sub_30C238(v263);
  LOBYTE(v232[0]) = 6;
  sub_30D638();
  v203 = sub_30C098();

  [v202 setAccessibilityIdentifier:v203];

  v204 = *&v201[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_ratingView];
  *&v234 = 0;
  *(&v234 + 1) = 0xE000000000000000;
  v264._object = 0x800000000033C270;
  v264._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v264);
  v265._countAndFlagsBits = 46;
  v265._object = 0xE100000000000000;
  sub_30C238(v265);
  LOBYTE(v232[0]) = 16;
  sub_30D638();
  v205 = sub_30C098();

  [v204 setAccessibilityIdentifier:v205];

  *&v234 = 0;
  *(&v234 + 1) = 0xE000000000000000;
  v266._object = 0x800000000033C270;
  v266._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v266);
  v267._countAndFlagsBits = 46;
  v267._object = 0xE100000000000000;
  sub_30C238(v267);
  LOBYTE(v232[0]) = 15;
  sub_30D638();
  v206 = sub_30C098();

  [v217 setAccessibilityIdentifier:v206];

  *&v234 = 0;
  *(&v234 + 1) = 0xE000000000000000;
  v268._object = 0x800000000033C270;
  v268._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v268);
  v269._countAndFlagsBits = 46;
  v269._object = 0xE100000000000000;
  sub_30C238(v269);
  LOBYTE(v232[0]) = 0;
  sub_30D638();
  v207 = sub_30C098();

  [v222 setAccessibilityIdentifier:v207];

  *&v234 = 0;
  *(&v234 + 1) = 0xE000000000000000;
  v270._object = 0x800000000033C270;
  v270._countAndFlagsBits = 0xD000000000000014;
  sub_30C238(v270);
  v271._countAndFlagsBits = 46;
  v271._object = 0xE100000000000000;
  sub_30C238(v271);
  LOBYTE(v232[0]) = 14;
  sub_30D638();
  v208 = sub_30C098();

  [v218 setAccessibilityIdentifier:v208];
}

uint64_t sub_2C5910()
{
  result = _UISolariumEnabled();
  v1 = 44.0;
  if (result)
  {
    v1 = 48.0;
  }

  qword_40D500 = *&v1;
  return result;
}

uint64_t sub_2C5948()
{
  result = _UISolariumEnabled();
  v1 = 265.0;
  if (result)
  {
    v1 = 218.0;
  }

  qword_40D508 = *&v1;
  return result;
}

id sub_2C5988()
{
  v0 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setAxis:1];
  [v0 setAlignment:3];
  v1 = v0;
  v2 = [v1 layer];
  [v2 setAllowsGroupBlending:0];

  [v1 setBaselineRelativeArrangement:1];
  [v1 setLayoutMarginsRelativeArrangement:1];
  [v1 setLayoutMargins:{2.0, 0.0, 0.0, 0.0}];

  return v1;
}

double sub_2C5A78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_currentModel;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_currentModel) && (, v5 = sub_307828(), , v5))
  {
    sub_307E58();

    v6 = sub_3031C8();
    if ((*(*(v6 - 8) + 48))(v3, 1, v6) != 1)
    {
      sub_EB68(v3, &unk_402FF0);
      return 37.5;
    }
  }

  else
  {
    v8 = sub_3031C8();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  }

  sub_EB68(v3, &unk_402FF0);
  if (!*(v0 + v4))
  {
    return 50.0;
  }

  v9 = sub_307828();

  if (!v9)
  {
    return 50.0;
  }

  v10 = sub_307E28();

  result = 22.0;
  if ((v10 & 1) == 0)
  {
    return 50.0;
  }

  return result;
}

char *sub_2C5C40()
{
  v0 = type metadata accessor for VEVButtonContainer.Style(0);
  __chkstk_darwin(v0);
  v2 = &v15[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_302AB8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = _UISolariumEnabled();
  result = 0;
  if ((v7 & 1) == 0)
  {
    sub_3029D8();
    if (qword_3FACC0 != -1)
    {
      swift_once();
    }

    v18 = xmmword_429A30;
    v19 = unk_429A40;
    v20[0] = xmmword_429A50;
    *(v20 + 10) = *(&xmmword_429A50 + 10);
    v16 = xmmword_429A10;
    v17 = unk_429A20;
    v9 = v0[5];
    (*(v4 + 16))(v2 + v9, v6, v3);
    (*(v4 + 56))(v2 + v9, 0, 1, v3);
    v10 = v19;
    v2[2] = v18;
    v2[3] = v10;
    v2[4] = v20[0];
    *(v2 + 74) = *(v20 + 10);
    v11 = v17;
    *v2 = v16;
    v2[1] = v11;
    v12 = v2 + v0[6];
    *v12 = 0;
    *(v12 + 1) = 0;
    v12[16] = 1;
    v13 = (v2 + v0[8]);
    *v13 = xmmword_326BC0;
    v13[1] = xmmword_326BC0;
    *(v2 + v0[9]) = 9;
    *(v2 + v0[7]) = 0;
    objc_allocWithZone(type metadata accessor for VEVButtonContainer(0));
    sub_8FC54(&v16, v15);
    v14 = sub_1584B8(v2);
    (*(v4 + 8))(v6, v3);
    return v14;
  }

  return result;
}

char *sub_2C5EE0()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___secondaryButtonSubtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___secondaryButtonSubtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___secondaryButtonSubtitleLabel);
  }

  else
  {
    v4 = sub_2C5F44(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_2C5F44(uint64_t a1)
{
  type metadata accessor for DynamicTypeLabel();
  if (qword_3FAD10 != -1)
  {
    swift_once();
  }

  v12[2] = xmmword_429DF0;
  v12[3] = unk_429E00;
  v13[0] = xmmword_429E10;
  *(v13 + 10) = *(&xmmword_429E10 + 10);
  v12[0] = xmmword_429DD0;
  v12[1] = unk_429DE0;
  v10[2] = xmmword_429DF0;
  v10[3] = unk_429E00;
  v11[0] = xmmword_429E10;
  *(v11 + 10) = *(&xmmword_429E10 + 10);
  v10[0] = xmmword_429DD0;
  v10[1] = unk_429DE0;
  sub_8FC54(v12, &v9);
  v2 = sub_235C3C(v10, 2, 0, 1);
  v3 = qword_3FAFE0;
  v4 = v2;
  if (v3 != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  v5 = v4;
  [v4 setTextColor:qword_42B020];

  [v5 setHidden:1];
  v6 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:a1 action:"secondaryButtonSubtitleLabelTapped"];
  [v5 addGestureRecognizer:v6];

  return v5;
}

void sub_2C60C4()
{
  v1 = sub_2C61C4();
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_displayEntitlementBadge;
  [v1 setActive:(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_displayEntitlementBadge) & 1) == 0];

  [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_entitlementBadge) setHidden:(*(v0 + v2) & 1) == 0];
  v3 = *(v0 + v2);
  v4 = objc_opt_self();
  sub_2C6290();
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  v5 = &selRef_activateConstraints_;
  if (!v3)
  {
    v5 = &selRef_deactivateConstraints_;
  }

  [v4 *v5];
}

id sub_2C61C4()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___stackViewBottomGuideConstraint;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___stackViewBottomGuideConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___stackViewBottomGuideConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_centralStackView] bottomAnchor];
    v5 = [v0 bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:-20.0];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void *sub_2C6290()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___entitlementBadgeConstraints;
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___entitlementBadgeConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___entitlementBadgeConstraints];
  }

  else
  {
    v2 = sub_2C62F8(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_2C62F8(char *a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_entitlementBadge;
  v3 = [*&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_entitlementBadge] bottomAnchor];
  v4 = [a1 bottomAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  sub_30C348();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v6 = [*&a1[v2] leftAnchor];
  v7 = [a1 leftAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  sub_30C348();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v9 = [*&a1[v2] rightAnchor];
  v10 = [a1 rightAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  sub_30C348();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v12 = [*&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_centralStackView] bottomAnchor];
  v13 = [*&a1[v2] topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-20.0];

  sub_30C348();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  return _swiftEmptyArrayStorage;
}

void sub_2C6608(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_30D668())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_30D578();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      type metadata accessor for UILayoutPriority(0);
      sub_2C9D44(&qword_4025E8, 255, type metadata accessor for UILayoutPriority);
      sub_3043C8();
      LODWORD(v7) = v10;
      [v5 setPriority:v7];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  v8 = objc_opt_self();
  sub_124C4(0, &qword_403000);

  isa = sub_30C358().super.isa;

  [v8 activateConstraints:isa];
}

void sub_2C6828()
{
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_currentModel))
  {
    v1 = *(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_descriptionLabelContainer) + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel);
    v2 = objc_opt_self();

    v3 = v1;
    v4 = [v2 preferredFontForTextStyle:UIFontTextStyleSubheadline];
    sub_124C4(0, &qword_408100);
    v5 = sub_30CD18();
    v6.super.isa = v4;
    v7.super.isa = v5;
    isa = sub_307888(v6, v7).super.isa;

    [v3 setAttributedText:isa];
  }
}

Swift::Void __swiftcall ShowHeaderView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v24.receiver = v2;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "traitCollectionDidChange:", isa);
  if (isa)
  {
    v4 = [(objc_class *)isa userInterfaceStyle];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (!isa || v4 != v6)
  {
    v7 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_metadataView];
    if (qword_3FAFE0 != -1)
    {
      swift_once();
    }

    v8 = qword_42B020;
    v9 = *(v7 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_color);
    *(v7 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_color) = qword_42B020;
    v10 = v8;

    [*(v7 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_label) setTextColor:v10];
    v11 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_providerButtonView];
    v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_button;
    v13 = *(v11 + OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_button);
    v14 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView];
    v15 = v10;
    v16 = v13;
    [v14 setTintColor:v15];
    [*&v16[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel] setTextColor:v15];

    v17 = sub_2C5EE0();
    [v17 setTextColor:v15];

    v18 = [*(v11 + v12) layer];
    v19 = [v2 traitCollection];
    v20 = sub_30C998();

    [v18 setCompositingFilter:v20];
    v21 = [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___secondaryButtonSubtitleLabel] layer];
    v22 = [v2 traitCollection];
    v23 = sub_30C998();

    [v21 setCompositingFilter:v23];
  }
}

uint64_t sub_2C6D3C()
{
  swift_getObjectType();
  v1 = sub_3041E8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19[-1] - v6;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_currentModel) && (, v8 = sub_307878(), , v8))
  {
    sub_3041C8();
    v9 = sub_3041D8();
    v10 = sub_30C7B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Performing OAuth action on show header subtitle click.", v11, 2u);
    }

    (*(v2 + 8))(v7, v1);
    v20[3] = sub_30B038();
    v20[4] = sub_2C9D44(&qword_3FBDA0, 255, &type metadata accessor for Action);
    v20[0] = v8;

    v12 = sub_2C5EE0();
    v19[3] = type metadata accessor for DynamicTypeLabel();
    v19[0] = v12;
    sub_2C9D44(&qword_40D658, v13, type metadata accessor for ShowHeaderView);
    sub_3025C8();

    sub_EB68(v19, &unk_3FBB70);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_3041C8();
    v15 = sub_3041D8();
    v16 = sub_30C798();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "User clicked on OAuth but there was no action available.", v17, 2u);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

id sub_2C72B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4014E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_303398();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_3031C8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v31 - v19;
  v21 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_providerButtonView);
  [v21 setHidden:{0, v18}];
  sub_3078B8();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_EB68(v12, &unk_402FF0);
    return [*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_icon] setHidden:1];
  }

  else
  {
    sub_6D85C(v12, v20);
    v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_icon;
    [*&v21[OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_icon] setHidden:0];
    if (v20[64] == 255)
    {
      if (qword_3FAFE8 != -1)
      {
        swift_once();
      }

      v24 = qword_42B028;
    }

    else
    {
      v24 = sub_303D48();
    }

    v25 = v24;
    [*&v21[v23] setBackgroundColor:v24];
    v26 = *&v21[v23];
    sub_6D8C0(v20, v16);
    v27 = sub_303DF8();
    (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v28 = objc_opt_self();
    v29 = v26;
    v30 = [v28 mainScreen];
    [v30 scale];

    sub_303358();
    type metadata accessor for LegacyCachingArtworkView();
    sub_2C9D44(&qword_40D650, 255, type metadata accessor for LegacyCachingArtworkView);
    sub_308E28();

    (*(v32 + 8))(v9, v33);
    return sub_6D924(v20);
  }
}

char *sub_2C7728(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews13FadedBlurView_maskLayer;
  *&v1[v4] = [objc_allocWithZone(CAGradientLayer) init];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews13FadedBlurView_pointLocations] = _swiftEmptyArrayStorage;
  v5 = [objc_allocWithZone(CAGradientLayer) init];
  v6 = *&v1[v4];
  *&v1[v4] = v5;

  v10.receiver = v1;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, "initWithEffect:", a1);
  v8 = [v7 layer];
  [v8 setMask:*&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews13FadedBlurView_maskLayer]];

  return v7;
}

void *sub_2C7858()
{
  [v0 bounds];
  CGRectGetHeight(v5);
  v1 = *(*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13FadedBlurView_pointLocations] + 16);
  if (v1)
  {

    sub_30D5D8();
    v2 = 32;
    do
    {
      sub_302DF8();
      sub_30D5A8();
      sub_30D5E8();
      sub_30D5F8();
      sub_30D5B8();
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_31BF90;
  sub_124C4(0, &qword_4053E0);
  *(inited + 32) = sub_30D078(1);
  sub_14A508(inited);
  return _swiftEmptyArrayStorage;
}

void sub_2C7A44()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews13FadedBlurView_maskLayer;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews13FadedBlurView_maskLayer];
  sub_2C7858();
  sub_124C4(0, &qword_4053E0);
  isa = sub_30C358().super.isa;

  [v2 setLocations:isa];

  v4 = *&v0[v1];
  [v0 bounds];
  [v4 setFrame:?];
}

uint64_t sub_2C7BC0()
{
  if (sub_3078D8())
  {

    if (sub_3078A8())
    {

      return 3;
    }
  }

  if (sub_3078A8())
  {

    if (!sub_3078D8())
    {

      return 1;
    }
  }

  if (sub_3078D8())
  {

    v1 = sub_3078A8();

    if (!v1)
    {
      return 2;
    }
  }

  return 0;
}

void _s23ShelfKitCollectionViews14ShowHeaderViewC5frameACSo6CGRectV_tcfc_0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for VEVButtonContainer.Style(0);
  __chkstk_darwin(v2);
  v4 = (&v172 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_hasPlayedShow] = 0;
  v5 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_currentEpisodeUUID];
  *v5 = 0;
  v5[1] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_currentModel] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_primaryButtonController] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_primaryButtonHeightConstraint] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButtonHeightConstraint] = 0;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_artworkView;
  v7 = sub_26FC0C();
  v8 = objc_allocWithZone(UIColor);
  v9 = v7;
  v10 = [v8 initWithWhite:0.0 alpha:0.2];
  v11 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v12 = *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  *v11 = v10;
  *(v11 + 8) = xmmword_3288C0;
  *(v11 + 3) = 0x4020000000000000;
  v13 = v10;

  sub_2D294();
  *&v1[v6] = v9;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_providerButtonView;
  type metadata accessor for LegacyPrimaryButtonView();
  *&v1[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_centralStackView;
  *&v1[v15] = sub_2C5988();
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_upsellBanner;
  v17 = objc_allocWithZone(type metadata accessor for UpsellBannerView());
  *&v1[v16] = sub_2E423C(0, 0, 0, 1, 14.0, 16.0, 14.0, 16.0);
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_descriptionLabelContainer;
  type metadata accessor for FadingDescriptionLabel();
  *&v1[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = _UISolariumEnabled();
  v20 = 0;
  if (v19)
  {
    *&v189[0] = 2;
    BYTE8(v189[0]) = 0;
    v21 = objc_allocWithZone(type metadata accessor for PlayButton(0));
    sub_2A76A0(v189, 2, 0);
  }

  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton] = v20;
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_preSolariumPrimaryButton;
  *&v1[v22] = sub_2C5C40();
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButton;
  if (qword_3FACC0 != -1)
  {
    swift_once();
  }

  v186 = xmmword_429A30;
  v187 = unk_429A40;
  v188[0] = xmmword_429A50;
  *(v188 + 10) = *(&xmmword_429A50 + 10);
  v184 = xmmword_429A10;
  v185 = unk_429A20;
  v24 = v2[5];
  v25 = sub_302AB8();
  (*(*(v25 - 8) + 56))(v4 + v24, 1, 1, v25);
  sub_8FC54(&v184, v189);
  v26 = _UISolariumEnabled();
  v27 = v187;
  v4[2] = v186;
  v4[3] = v27;
  v4[4] = v188[0];
  *(v4 + 74) = *(v188 + 10);
  v28 = v185;
  *v4 = v184;
  v4[1] = v28;
  v29 = v4 + v2[6];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v30 = (v4 + v2[8]);
  *v30 = xmmword_326BC0;
  v30[1] = xmmword_326BC0;
  *(v4 + v2[9]) = 9;
  *(v4 + v2[7]) = v26;
  v31 = objc_allocWithZone(type metadata accessor for VEVButtonContainer(0));
  v32 = sub_1584B8(v4);
  [v32 setHidden:1];
  *&v1[v23] = v32;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___secondaryButtonSubtitleLabel] = 0;
  v33 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_ratingView;
  type metadata accessor for RatingView();
  v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_3FAFF8 != -1)
  {
    swift_once();
  }

  v35 = qword_42B038;
  v36 = *&v34[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_color];
  *&v34[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_color] = qword_42B038;
  v37 = v35;

  [*&v34[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_label] setTextColor:v37];
  *&v1[v33] = v34;
  v38 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_metadataView;
  type metadata accessor for ShowMetadataView();
  *&v1[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  v189[2] = xmmword_429A30;
  v189[3] = unk_429A40;
  v190[0] = xmmword_429A50;
  *(v190 + 10) = *(&xmmword_429A50 + 10);
  v189[0] = xmmword_429A10;
  v189[1] = unk_429A20;
  v182[2] = xmmword_429A30;
  v182[3] = unk_429A40;
  v183[0] = xmmword_429A50;
  *(v183 + 10) = *(&xmmword_429A50 + 10);
  v182[0] = xmmword_429A10;
  v182[1] = unk_429A20;
  sub_8FC54(v189, &v181);
  v40 = sub_235C3C(v182, 2, 0, 1);
  [v40 setTextAlignment:1];
  LODWORD(v41) = 1148846080;
  [v40 setContentCompressionResistancePriority:1 forAxis:v41];
  *&v1[v39] = v40;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_displayEntitlementBadge] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___entitlementBadgeConstraints] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_blurView] = 0;
  v42 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_entitlementBadge;
  v43 = objc_allocWithZone(type metadata accessor for EntitlementBadgeView());
  *&v1[v42] = sub_157ED0(UIFontTextStyleBody);
  v44 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_spacer;
  *&v1[v44] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___stackViewBottomGuideConstraint] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_primaryButtonAction] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButtonAction] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_objectGraph] = 0;
  v180.receiver = v1;
  v180.super_class = ObjectType;
  v45 = objc_msgSendSuper2(&v180, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for FadedBlurView();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  inited = swift_initStackObject();
  v174 = xmmword_317F20;
  *(inited + 16) = xmmword_317F20;
  v47 = objc_opt_self();
  v48 = v45;
  *(inited + 32) = [v47 clearColor];
  *(inited + 40) = [v47 blackColor];
  v49 = sub_2C2D88(&off_3B4C18, inited, 50.0);
  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = v48;
  [v50 addSubview:v49];
  v51 = *&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_blurView];
  *&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_blurView] = v49;
  v52 = v49;

  [v52 setHidden:1];
  v53 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_centralStackView;
  [v50 addSubview:*&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_centralStackView]];
  *&v182[0] = _swiftEmptyArrayStorage;
  [*&v50[v53] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v50[v53] setAccessibilityIgnoresInvertColors:1];
  v54 = [objc_opt_self() defaultCenter];
  [v54 addObserver:v50 selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v55 = [*&v50[v53] leftAnchor];
  v56 = [v50 layoutMarginsGuide];

  v57 = [v56 leftAnchor];
  v58 = [v55 constraintEqualToAnchor:v57];

  sub_30C348();
  if (*(&dword_10 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v59 = [*&v50[v53] rightAnchor];
  v60 = [v50 layoutMarginsGuide];

  v61 = [v60 rightAnchor];
  v62 = [v59 constraintEqualToAnchor:v61];

  sub_30C348();
  if (*(&dword_10 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v63 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_providerButtonView;
  v64 = [*&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_providerButtonView] firstBaselineAnchor];
  v65 = [v50 topAnchor];

  v66 = [v64 constraintGreaterThanOrEqualToAnchor:v65 constant:244.0];
  sub_30C348();
  if (*(&dword_10 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  v172 = v52;
  sub_30C3C8();
  v67 = [*&v50[v53] topAnchor];
  v68 = [v50 topAnchor];

  v69 = [v67 constraintEqualToAnchor:v68];
  sub_30C348();
  if (*(&dword_10 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v70 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_artworkView;
  [*&v50[v53] addArrangedSubview:*&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_artworkView]];
  [*&v50[v70] setHidden:1];
  v71 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_spacer;
  [*&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_spacer] setHidden:1];
  [*&v50[v53] addArrangedSubview:*&v50[v71]];
  v72 = *&v50[v53];
  ObjectType = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_titleLabel;
  [v72 addArrangedSubview:*&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_titleLabel]];
  [*&v50[v53] addArrangedSubview:*&v50[v63]];
  v73 = *&v50[v53];
  v74 = _UISolariumEnabled();
  v178 = v63;
  if (v74)
  {
    v75 = *&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton];
    if (v75)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  v75 = *&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_preSolariumPrimaryButton];
  if (!v75)
  {
    __break(1u);
    goto LABEL_56;
  }

LABEL_19:
  v76 = v75;
  [v73 addArrangedSubview:v76];

  v77 = *&v50[v53];
  v176 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButton;
  [v77 addArrangedSubview:*&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButton]];
  v78 = *&v50[v53];
  v79 = sub_2C5EE0();
  [v78 addArrangedSubview:v79];

  v80 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_descriptionLabelContainer;
  [*&v50[v53] addArrangedSubview:*&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_descriptionLabelContainer]];
  v81 = *&v50[v53];
  v177 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_metadataView;
  [v81 addArrangedSubview:*&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_metadataView]];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_entitlementBadge]];
  sub_2C60C4();
  v82 = [*&v50[v80] leadingAnchor];
  v83 = [v50 layoutMarginsGuide];

  v84 = [v83 leadingAnchor];
  v85 = [v82 constraintEqualToAnchor:v84];

  sub_30C348();
  if (*(&dword_10 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  v173 = v70;
  sub_30C3C8();
  v86 = [*&v50[v80] trailingAnchor];
  v87 = [v50 layoutMarginsGuide];

  v88 = [v87 trailingAnchor];
  v89 = [v86 constraintEqualToAnchor:v88];

  sub_30C348();
  if (*(&dword_10 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v90 = [*(*&v50[v80] + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel) leadingAnchor];
  v91 = [v50 layoutMarginsGuide];

  v92 = [v91 leadingAnchor];
  v93 = [v90 constraintEqualToAnchor:v92];

  sub_30C348();
  if (*(&dword_10 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v94 = [*(*&v50[v80] + OBJC_IVAR____TtC23ShelfKitCollectionViews22FadingDescriptionLabel_descriptionLabel) trailingAnchor];
  v95 = [v50 layoutMarginsGuide];

  v96 = [v95 trailingAnchor];
  v97 = [v94 constraintEqualToAnchor:v96];

  sub_30C348();
  if (*(&dword_10 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  [*(ObjectType + v50) setHidden:1];
  v98 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_upsellBanner;
  [*&v50[v53] addArrangedSubview:*&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_upsellBanner]];
  v99 = [*&v50[v98] widthAnchor];
  v100 = [*&v50[v53] widthAnchor];
  v101 = [v99 constraintEqualToAnchor:v100];

  sub_30C348();
  v102 = v173;
  if (*(&dword_10 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v103 = [*&v50[v102] bottomAnchor];
  v104 = v178;
  v105 = [*&v50[v178] firstBaselineAnchor];
  v106 = [v103 constraintEqualToAnchor:v105 constant:30.0];

  sub_30C348();
  if (*(&dword_10 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  [*&v50[v53] setBaselineRelativeArrangement:1];
  [*&v50[v53] setCustomSpacing:*&v50[v102] afterView:30.0];
  [*&v50[v53] setCustomSpacing:*(ObjectType + v50) afterView:26.0];
  [*&v50[v53] setCustomSpacing:*&v50[v104] afterView:20.0];
  [*&v50[v53] setCustomSpacing:*&v50[v80] afterView:29.0];
  v107 = [*&v50[v177] widthAnchor];
  v108 = [*&v50[v53] widthAnchor];
  v109 = [v107 constraintEqualToAnchor:v108];

  sub_30C348();
  if (*(&dword_10 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v182[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v110 = swift_initStackObject();
  *(v110 + 16) = v174;
  v111 = [*&v50[v102] heightAnchor];
  v112 = [v111 constraintEqualToConstant:200.0];

  *(v110 + 32) = v112;
  v113 = [*&v50[v102] widthAnchor];
  v114 = [v113 constraintEqualToConstant:200.0];

  *(v110 + 40) = v114;
  sub_14A360(v110);
  if (!_UISolariumEnabled())
  {
    v119 = _UISolariumEnabled();
    v120 = v176;
    if (v119)
    {
      v121 = *&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton];
      if (v121)
      {
        goto LABEL_39;
      }

      __break(1u);
    }

    v121 = *&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_preSolariumPrimaryButton];
    if (!v121)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_39:
    v122 = v121;
    v123 = [v122 heightAnchor];

    v124 = [v123 constraintEqualToConstant:48.0];
    v125 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_primaryButtonHeightConstraint;
    v126 = *&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_primaryButtonHeightConstraint];
    *&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_primaryButtonHeightConstraint] = v124;

    v127 = [*&v50[v120] heightAnchor];
    if (qword_3FAF80 != -1)
    {
      swift_once();
    }

    v128 = [v127 constraintEqualToConstant:*&qword_40D500];

    v129 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButtonHeightConstraint;
    v130 = *&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButtonHeightConstraint];
    *&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButtonHeightConstraint] = v128;

    v131 = swift_initStackObject();
    *(v131 + 16) = xmmword_31D470;
    if (_UISolariumEnabled())
    {
      v132 = *&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton];
      if (v132)
      {
        goto LABEL_45;
      }

      __break(1u);
    }

    v132 = *&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_preSolariumPrimaryButton];
    if (!v132)
    {
LABEL_59:
      __break(1u);
      return;
    }

LABEL_45:
    v133 = v132;
    v134 = [v133 widthAnchor];

    if (qword_3FAF88 != -1)
    {
      swift_once();
    }

    v135 = [v134 constraintGreaterThanOrEqualToConstant:*&qword_40D508];

    *(v131 + 32) = v135;
    v136 = *&v50[v125];
    if (v136)
    {
      *(v131 + 40) = v136;
      v137 = *&v50[v129];
      v118 = v172;
      if (v137)
      {
        *(v131 + 48) = v137;
        v138 = v136;
        v139 = v137;
        sub_14A360(v131);
        goto LABEL_50;
      }

      goto LABEL_57;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v115 = swift_initStackObject();
  *(v115 + 16) = xmmword_31BF90;
  v116 = [*&v50[v176] heightAnchor];
  v117 = [v116 constraintEqualToConstant:48.0];

  *(v115 + 32) = v117;
  sub_14A360(v115);
  v118 = v172;
LABEL_50:
  v140 = swift_initStackObject();
  *(v140 + 16) = xmmword_31FDA0;
  v141 = [v118 bottomAnchor];
  v142 = [v50 bottomAnchor];

  v143 = [v141 constraintEqualToAnchor:v142];
  *(v140 + 32) = v143;
  v144 = [v118 leadingAnchor];
  v145 = [v50 leadingAnchor];

  v146 = [v144 constraintEqualToAnchor:v145];
  *(v140 + 40) = v146;
  v147 = [v118 trailingAnchor];
  v148 = [v50 trailingAnchor];

  v149 = [v147 constraintEqualToAnchor:v148];
  *(v140 + 48) = v149;
  v150 = [v118 topAnchor];

  v151 = v178;
  v152 = [*&v50[v178] topAnchor];
  v153 = [v150 constraintEqualToAnchor:v152 constant:-24.0];

  *(v140 + 56) = v153;
  v154 = [*&v50[v176] widthAnchor];
  if (qword_3FAF88 != -1)
  {
    swift_once();
  }

  v155 = [v154 constraintGreaterThanOrEqualToConstant:*&qword_40D508];

  *(v140 + 64) = v155;
  sub_14A360(v140);
  v156 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___secondaryButtonSubtitleLabel;
  v157 = [*&v50[OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___secondaryButtonSubtitleLabel] layer];
  v158 = [v50 traitCollection];

  v159 = sub_30C998();
  [v157 setCompositingFilter:v159];

  v160 = *&v50[v156];
  v161 = qword_3FAFE0;
  v162 = v160;
  if (v161 != -1)
  {
    swift_once();
  }

  v163 = qword_42B020;
  [v162 setTextColor:qword_42B020];

  v164 = *&v50[v177];
  v165 = *&v164[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_color];
  *&v164[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_color] = v163;
  v166 = v164;
  v167 = v163;

  [*&v166[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_label] setTextColor:v167];
  v168 = *(*&v50[v151] + OBJC_IVAR____TtC23ShelfKitCollectionViews23LegacyPrimaryButtonView_button);
  v169 = *&v168[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView];
  v170 = v167;
  v171 = v168;
  [v169 setTintColor:v170];
  [*&v171[OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel] setTextColor:v170];

  sub_2C6608(v182);
}

void _s23ShelfKitCollectionViews14ShowHeaderViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = type metadata accessor for VEVButtonContainer.Style(0);
  __chkstk_darwin(v2);
  v4 = &v45[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_hasPlayedShow) = 0;
  v5 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_currentEpisodeUUID);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_currentModel) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_primaryButtonController) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_primaryButtonHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButtonHeightConstraint) = 0;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_artworkView;
  v7 = sub_26FC0C();
  v8 = objc_allocWithZone(UIColor);
  v9 = v7;
  v10 = [v8 initWithWhite:0.0 alpha:0.2];
  v11 = &v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  v12 = *&v9[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_shadow];
  *v11 = v10;
  *(v11 + 8) = xmmword_3288C0;
  *(v11 + 3) = 0x4020000000000000;
  v13 = v10;

  sub_2D294();
  *(v1 + v6) = v9;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_providerButtonView;
  type metadata accessor for LegacyPrimaryButtonView();
  *(v1 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_centralStackView;
  *(v1 + v15) = sub_2C5988();
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_upsellBanner;
  v17 = objc_allocWithZone(type metadata accessor for UpsellBannerView());
  *(v1 + v16) = sub_2E423C(0, 0, 0, 1, 14.0, 16.0, 14.0, 16.0);
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_descriptionLabelContainer;
  type metadata accessor for FadingDescriptionLabel();
  *(v1 + v18) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = _UISolariumEnabled();
  v20 = 0;
  if (v19)
  {
    *&v53[0] = 2;
    BYTE8(v53[0]) = 0;
    v21 = objc_allocWithZone(type metadata accessor for PlayButton(0));
    sub_2A76A0(v53, 2, 0);
  }

  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_playButton) = v20;
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_preSolariumPrimaryButton;
  *(v1 + v22) = sub_2C5C40();
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButton;
  if (qword_3FACC0 != -1)
  {
    swift_once();
  }

  v50 = xmmword_429A30;
  v51 = unk_429A40;
  v52[0] = xmmword_429A50;
  *(v52 + 10) = *(&xmmword_429A50 + 10);
  v48 = xmmword_429A10;
  v49 = unk_429A20;
  v24 = v2[5];
  v25 = sub_302AB8();
  (*(*(v25 - 8) + 56))(v4 + v24, 1, 1, v25);
  sub_8FC54(&v48, v53);
  v26 = _UISolariumEnabled();
  v27 = v51;
  v4[2] = v50;
  v4[3] = v27;
  v4[4] = v52[0];
  *(v4 + 74) = *(v52 + 10);
  v28 = v49;
  *v4 = v48;
  v4[1] = v28;
  v29 = v4 + v2[6];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v30 = (v4 + v2[8]);
  *v30 = xmmword_326BC0;
  v30[1] = xmmword_326BC0;
  *(v4 + v2[9]) = 9;
  *(v4 + v2[7]) = v26;
  v31 = objc_allocWithZone(type metadata accessor for VEVButtonContainer(0));
  v32 = sub_1584B8(v4);
  [v32 setHidden:1];
  *(v1 + v23) = v32;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___secondaryButtonSubtitleLabel) = 0;
  v33 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_ratingView;
  type metadata accessor for RatingView();
  v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_3FAFF8 != -1)
  {
    swift_once();
  }

  v35 = qword_42B038;
  v36 = *&v34[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_color];
  *&v34[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_color] = qword_42B038;
  v37 = v35;

  [*&v34[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_label] setTextColor:v37];
  *(v1 + v33) = v34;
  v38 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_metadataView;
  type metadata accessor for ShowMetadataView();
  *(v1 + v38) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  v53[2] = xmmword_429A30;
  v53[3] = unk_429A40;
  v54[0] = xmmword_429A50;
  *(v54 + 10) = *(&xmmword_429A50 + 10);
  v53[0] = xmmword_429A10;
  v53[1] = unk_429A20;
  v46[2] = xmmword_429A30;
  v46[3] = unk_429A40;
  v47[0] = xmmword_429A50;
  *(v47 + 10) = *(&xmmword_429A50 + 10);
  v46[0] = xmmword_429A10;
  v46[1] = unk_429A20;
  sub_8FC54(v53, v45);
  v40 = sub_235C3C(v46, 2, 0, 1);
  [v40 setTextAlignment:1];
  LODWORD(v41) = 1148846080;
  [v40 setContentCompressionResistancePriority:1 forAxis:v41];
  *(v1 + v39) = v40;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_displayEntitlementBadge) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___entitlementBadgeConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_blurView) = 0;
  v42 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_entitlementBadge;
  v43 = objc_allocWithZone(type metadata accessor for EntitlementBadgeView());
  *(v1 + v42) = sub_157ED0(UIFontTextStyleBody);
  v44 = OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_spacer;
  *(v1 + v44) = [objc_allocWithZone(UIView) init];
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView____lazy_storage___stackViewBottomGuideConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_primaryButtonAction) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_secondaryButtonAction) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14ShowHeaderView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

double sub_2C9C14(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 137) = 0u;
  return result;
}

uint64_t sub_2C9C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C9CAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2C9D0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2C9D44(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_2C9D8C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_explicitTreatment] = 2;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_rating] = 1080033280;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_numberOfRatings] = 0;
  v9 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_formattedRatingCount];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_titles] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_explicit] = 0;
  v10 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_updateFrequency];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_newEpisodeCount];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_uppercased] = 0;
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase;
  if (qword_3FAD00 != -1)
  {
    swift_once();
  }

  v47[2] = xmmword_429D30;
  v47[3] = unk_429D40;
  v48[0] = xmmword_429D50;
  *(v48 + 10) = *(&xmmword_429D50 + 10);
  v47[0] = xmmword_429D10;
  v47[1] = unk_429D20;
  memmove(&v4[v12], &xmmword_429D10, 0x5AuLL);
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_color;
  v14 = objc_opt_self();
  sub_8FC54(v47, &v49);
  *&v4[v13] = [v14 secondaryLabelColor];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView____lazy_storage___numberFormatter] = 0;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_label] = v15;
  v46.receiver = v4;
  v46.super_class = type metadata accessor for ShowMetadataView();
  v16 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_label;
  v18 = *&v16[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_label];
  v19 = v16;
  [v18 setAutoresizingMask:18];
  [*&v16[v17] setNumberOfLines:1];
  [*&v16[v17] setLineBreakMode:2];
  [*&v16[v17] setTextAlignment:0];
  v20 = [*&v16[v17] layer];
  v21 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
  [v20 setCompositingFilter:v21];

  [*&v16[v17] setFrame:{a1, a2, a3, a4}];
  v22 = *&v16[v17];
  v23 = *&v19[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 16];
  v49 = *&v19[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase];
  v50 = v23;
  v25 = *&v19[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 48];
  v24 = *&v19[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 64];
  v26 = *&v19[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 32];
  *(v53 + 10) = *&v19[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 74];
  v52 = v25;
  v53[0] = v24;
  v51 = v26;
  v27 = objc_opt_self();
  v28 = v22;
  sub_8FC54(&v49, v44);
  v29 = [v27 system];
  v30 = [v29 preferredContentSizeCategory];

  v31 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v30];
  v44[2] = v51;
  v44[3] = v52;
  v45[0] = v53[0];
  *(v45 + 10) = *(v53 + 10);
  v44[0] = v49;
  v44[1] = v50;
  v32 = sub_2DAA3C(v44, v31);
  v33 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];

  sub_EB68(&v49, &qword_3FFD68);
  [v28 setFont:v33];

  v34 = *&v16[v17];
  v35 = v19;
  [v35 addSubview:v34];
  [*&v16[v17] setTextColor:*&v35[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_color]];
  v36 = [v35 layer];
  [v36 setAllowsGroupBlending:0];

  v37 = [*&v16[v17] layer];
  v38 = [v35 traitCollection];

  v39 = sub_30C998();
  [v37 setCompositingFilter:v39];

  v40 = *&v16[v17];
  sub_2CB050();
  v42 = v41;
  [v40 setAttributedText:v41];

  [v35 invalidateIntrinsicContentSize];
  return v35;
}

id sub_2CA2E4(void *a1)
{
  v2 = v1;
  v34.receiver = v1;
  v34.super_class = type metadata accessor for ShowMetadataView();
  objc_msgSendSuper2(&v34, "traitCollectionDidChange:", a1);
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_label];
  v5 = [v4 layer];
  v6 = [v1 traitCollection];
  v7 = sub_30C998();

  [v5 setCompositingFilter:v7];
  if (a1)
  {
    v8 = [a1 preferredContentSizeCategory];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v2 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  if (!v8)
  {

LABEL_10:
    v17 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 48];
    v31 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 32];
    v32 = v17;
    v33[0] = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 64];
    *(v33 + 10) = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 74];
    v18 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 16];
    v29 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase];
    v30 = v18;
    v19 = objc_opt_self();
    sub_8FC54(&v29, v27);
    v20 = [v19 system];
    v21 = [v20 preferredContentSizeCategory];

    v22 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v21];
    v27[2] = v31;
    v27[3] = v32;
    v28[0] = v33[0];
    *(v28 + 10) = *(v33 + 10);
    v27[0] = v29;
    v27[1] = v30;
    v23 = sub_2DAA3C(v27, v22);
    v24 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];

    sub_EB68(&v29, &qword_3FFD68);
    [v4 setFont:v24];

    sub_2CB050();
    v26 = v25;
    [v4 setAttributedText:v25];

    return [v2 invalidateIntrinsicContentSize];
  }

  v11 = sub_30C0D8();
  v13 = v12;
  if (v11 == sub_30C0D8() && v13 == v14)
  {
  }

  v16 = sub_30D728();

  if ((v16 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

id sub_2CA6A4()
{
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_label];
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 48];
  v17 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 32];
  v18 = v2;
  v19[0] = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 64];
  *(v19 + 10) = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 74];
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 16];
  v15 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase];
  v16 = v3;
  v4 = objc_opt_self();
  sub_8FC54(&v15, v13);
  v5 = [v4 system];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v6];
  v13[2] = v17;
  v13[3] = v18;
  v14[0] = v19[0];
  *(v14 + 10) = *(v19 + 10);
  v13[0] = v15;
  v13[1] = v16;
  v8 = sub_2DAA3C(v13, v7);
  v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];

  sub_EB68(&v15, &qword_3FFD68);
  [v1 setFont:v9];

  sub_2CB050();
  v11 = v10;
  [v1 setAttributedText:v10];

  return [v0 invalidateIntrinsicContentSize];
}

id sub_2CA918()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_label);
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_30C0D8();
    v6 = v5;
  }

  else
  {
    v6 = 0xA300000000000000;
    v4 = 8755426;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315430;
  *(inited + 32) = NSFontAttributeName;
  v8 = NSFontAttributeName;
  result = [v1 font];
  if (result)
  {
    *(inited + 40) = result;
    v10 = sub_2D6EEC(inited);
    swift_setDeallocating();
    sub_EB68(inited + 32, &qword_40A140);
    v11 = sub_2D618C(v10);
    v12 = sub_268E60(1.79769313e308, 1.79769313e308, v4, v6, 0, v11, 0);

    if (qword_3FAE40 != -1)
    {
      swift_once();
    }

    sub_303D28();

    if (v15)
    {
      v13 = sub_30C098();
      sub_2D618C(v10);
      type metadata accessor for Key(0);
      sub_CFA40();
      isa = sub_30BF88().super.isa;

      [v13 boundingRectWithSize:0 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308, v12}];

      sub_303D38();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2CABC8(uint64_t a1, char a2)
{
  v5 = sub_307A18();
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v52 = v2;
  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_explicitTreatment] = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v42 = &v52[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_newEpisodeCount];
    v40 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_explicit;
    v44 = &v52[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_updateFrequency];
    v47 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_titles;
    v50 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_numberOfRatings;
    v51 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_rating;
    v49 = &v52[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_formattedRatingCount];
    v14 = *(v9 + 16);
    v13 = v9 + 16;
    v15 = (a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
    v55 = *(v13 + 56);
    v56 = v14;
    v16 = (v13 + 72);
    v54 = enum case for HeaderModel.MetadataComponent.ratings(_:);
    v48 = enum case for HeaderModel.MetadataComponent.category(_:);
    v46 = enum case for HeaderModel.MetadataComponent.updateFrequency(_:);
    v17 = (v13 - 8);
    v57 = v13;
    v53 = (v13 + 80);
    v43 = enum case for HeaderModel.MetadataComponent.newEpisodeCount(_:);
    v45 = xmmword_315430;
    v41 = enum case for HeaderModel.MetadataComponent.explicit(_:);
    do
    {
      v18 = v56;
      v56(v11, v15, v5);
      v18(v7, v11, v5);
      v19 = (*v16)(v7, v5);
      if (v19 == v54)
      {
        (*v53)(v7, v5);
        sub_30B2D8();
        v20 = v52;
        *&v52[v51] = v21;
        *&v20[v50] = sub_30B2B8();
        v22 = sub_30B2E8();
        v24 = v23;

        (*v17)(v11, v5);
        v25 = v49;
        *v49 = v22;
        v25[1] = v24;
      }

      else if (v19 == v48)
      {
        (*v53)(v7, v5);
        v26 = *v7;
        v27 = *(v7 + 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FD0);
        v28 = swift_allocObject();
        *(v28 + 16) = v45;
        *(v28 + 32) = v26;
        *(v28 + 40) = v27;
        (*v17)(v11, v5);
        *&v52[v47] = v28;
      }

      else
      {
        if (v19 == v46)
        {
          (*v17)(v11, v5);
          (*v53)(v7, v5);
          v29 = *v7;
          v30 = *(v7 + 1);
          v31 = v44;
        }

        else
        {
          if (v19 != v43)
          {
            v32 = *v17;
            v33 = v19;
            (*v17)(v11, v5);
            if (v33 == v41)
            {
              v52[v40] = 1;
            }

            else
            {
              v32(v7, v5);
            }

            goto LABEL_13;
          }

          (*v17)(v11, v5);
          (*v53)(v7, v5);
          v29 = *v7;
          v30 = *(v7 + 1);
          v31 = v42;
        }

        *v31 = v29;
        v31[1] = v30;
      }

LABEL_13:
      v15 += v55;
      --v12;
    }

    while (v12);
  }

  v34 = v52;
  v35 = *&v52[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_label];
  sub_2CB050();
  v37 = v36;
  [v35 setAttributedText:v36];

  return [v34 invalidateIntrinsicContentSize];
}

void sub_2CB050()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_titles);
  v2 = &_ss11AnyHashableV2eeoiySbAB_ABtFZ_ptr;
  v3 = objc_allocWithZone(NSMutableAttributedString);

  v4 = [v3 init];
  v5 = &OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_reverseAlignment;
  v63 = v0;
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_numberOfRatings) >= 31)
  {
    v7 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_formattedRatingCount);
    v6 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_formattedRatingCount + 8);
    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      *&v66 = 40;
      *(&v66 + 1) = 0xE100000000000000;

      v72._countAndFlagsBits = v7;
      v72._object = v6;
      sub_30C238(v72);

      v73._countAndFlagsBits = 41;
      v73._object = 0xE100000000000000;
      sub_30C238(v73);
      v9 = *(v1 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v1;
      if (!isUniquelyReferenced_nonNull_native || v9 >= *(v1 + 3) >> 1)
      {
        v1 = sub_CAA70(isUniquelyReferenced_nonNull_native, v9 + 1, 1, v1);
        v71 = v1;
      }

      sub_17F92C(0, 0, 1, v66, *(&v66 + 1));
    }

    v11 = sub_2CB7DC();
    isa = sub_30C4F8().super.super.isa;
    v13 = [v11 stringFromNumber:isa];

    if (v13)
    {
      v14 = sub_30C0D8();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    sub_30BFE8();
    v74._countAndFlagsBits = 32;
    v74._object = 0xE100000000000000;
    sub_30C238(v74);
    v75._countAndFlagsBits = v14;
    v75._object = v16;
    sub_30C238(v75);
    v76._countAndFlagsBits = 32;
    v76._object = 0xE100000000000000;
    sub_30C238(v76);
    v17 = objc_allocWithZone(NSAttributedString);
    v18 = sub_30C098();

    v19 = [v17 initWithString:v18];

    [v4 appendAttributedString:v19];
    v5 = &OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_reverseAlignment;
    v0 = v63;
    if (*(v63 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_uppercased))
    {
    }

    else
    {
      v20 = v4;
      v21 = *(v63 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 48);
      v68 = *(v63 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 32);
      v69 = v21;
      v70[0] = *(v63 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 64);
      *(v70 + 10) = *(v63 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 74);
      v22 = *(v63 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase + 16);
      v66 = *(v63 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase);
      v67 = v22;
      v23 = objc_opt_self();
      sub_8FC54(&v66, v64);
      v24 = [v23 system];
      v25 = [v24 preferredContentSizeCategory];

      v26 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v25];
      v64[2] = v68;
      v64[3] = v69;
      v65[0] = v70[0];
      *(v65 + 10) = *(v70 + 10);
      v64[0] = v66;
      v64[1] = v67;
      v27 = sub_2DAA3C(v64, v26);
      v28 = objc_opt_self();
      v29 = [v28 fontWithDescriptor:v27 size:0.0];

      sub_EB68(&v66, &qword_3FFD68);
      v30 = [v29 fontDescriptor];
      v31 = [v30 fontDescriptorWithSymbolicTraits:2];

      if (!v31)
      {
        __break(1u);
        return;
      }

      v32 = [v28 fontWithDescriptor:v31 size:0.0];

      v33 = v32;
      v34 = sub_30C208();

      v4 = v20;
      [v20 addAttribute:NSFontAttributeName value:v33 range:{2, v34}];

      v0 = v63;
      v5 = &OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_reverseAlignment;
    }
  }

  v35 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_newEpisodeCount);
  v36 = v0;
  v37 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_newEpisodeCount + 8);
  if (v37 || (v35 = (v36 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_updateFrequency), (v37 = *(v36 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_updateFrequency + 8)) != 0))
  {
    v38 = *v35;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_CAA70(0, *(v1 + 2) + 1, 1, v1);
    }

    v40 = *(v1 + 2);
    v39 = *(v1 + 3);
    if (v40 >= v39 >> 1)
    {
      v1 = sub_CAA70((v39 > 1), v40 + 1, 1, v1);
    }

    *(v1 + 2) = v40 + 1;
    v41 = &v1[16 * v40];
    *(v41 + 4) = v38;
    *(v41 + 5) = v37;
  }

  if (*(v63 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_explicitTreatment) != 2 && *(v63 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_explicit) == 1)
  {
    v42 = sub_302198();
    v44 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_CAA70(0, *(v1 + 2) + 1, 1, v1);
    }

    v46 = *(v1 + 2);
    v45 = *(v1 + 3);
    if (v46 >= v45 >> 1)
    {
      v1 = sub_CAA70((v45 > 1), v46 + 1, 1, v1);
    }

    *(v1 + 2) = v46 + 1;
    v47 = &v1[16 * v46];
    *(v47 + 4) = v42;
    *(v47 + 5) = v44;
  }

  v48 = *(v1 + 2);
  if (v48)
  {
    v62 = v4;
    *&v64[0] = _swiftEmptyArrayStorage;
    sub_175350(0, v48, 0);
    v49 = v63;
    v50 = *&v64[0];
    v51 = v5[214];
    v52 = (v1 + 40);
    do
    {
      v53 = *(v52 - 1);
      v54 = *v52;
      if (*(v49 + v51) == 1)
      {
        *&v66 = *(v52 - 1);
        *(&v66 + 1) = v54;
        sub_E504();
        v49 = v63;
        v53 = sub_30D3D8();
        v54 = v55;
      }

      else
      {
      }

      *&v64[0] = v50;
      v57 = v50[2];
      v56 = v50[3];
      if (v57 >= v56 >> 1)
      {
        sub_175350((v56 > 1), v57 + 1, 1);
        v49 = v63;
        v50 = *&v64[0];
      }

      v50[2] = v57 + 1;
      v58 = &v50[2 * v57];
      v58[4] = v53;
      v58[5] = v54;
      v52 += 2;
      --v48;
    }

    while (v48);

    v4 = v62;
    v2 = &_ss11AnyHashableV2eeoiySbAB_ABtFZ_ptr;
  }

  else
  {

    v50 = _swiftEmptyArrayStorage;
  }

  *&v66 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC78);
  sub_79DC0();
  sub_30BFF8();

  v59 = objc_allocWithZone(v2[362]);
  v60 = sub_30C098();

  v61 = [v59 initWithString:v60];

  [v4 appendAttributedString:v61];
}

id sub_2CB7DC()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView____lazy_storage___numberFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView____lazy_storage___numberFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView____lazy_storage___numberFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSNumberFormatter) init];
    [v4 setNumberStyle:1];
    [v4 setMaximumFractionDigits:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2CB888()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowMetadataView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_2CB9D0()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_explicitTreatment) = 2;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_rating) = 1080033280;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_numberOfRatings) = 0;
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_formattedRatingCount);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_titles) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_explicit) = 0;
  v2 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_updateFrequency);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_newEpisodeCount);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_uppercased) = 0;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_fontUseCase;
  if (qword_3FAD00 != -1)
  {
    swift_once();
  }

  v8[2] = xmmword_429D30;
  v8[3] = unk_429D40;
  v9[0] = xmmword_429D50;
  *(v9 + 10) = *(&xmmword_429D50 + 10);
  v8[0] = xmmword_429D10;
  v8[1] = unk_429D20;
  memmove((v0 + v4), &xmmword_429D10, 0x5AuLL);
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView_color;
  v6 = objc_opt_self();
  sub_8FC54(v8, v7);
  *(v0 + v5) = [v6 secondaryLabelColor];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShowMetadataView____lazy_storage___numberFormatter) = 0;
  sub_30D648();
  __break(1u);
}

id sub_2CBB7C()
{
  v1 = sub_309B58();
  v3 = __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton____lazy_storage___pictureButton;
  v7 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton____lazy_storage___pictureButton);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton____lazy_storage___pictureButton);
  }

  else
  {
    (*(v2 + 104))(v5, enum case for ProfilePictureButton.Dimension.medium(_:), v3);
    objc_allocWithZone(sub_309B68());

    v9 = v0;
    v10 = sub_309B38();
    [v10 setUserInteractionEnabled:0];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = *(v0 + v6);
    *(v9 + v6) = v10;
    v8 = v10;

    v7 = 0;
  }

  v12 = v7;
  return v8;
}

id sub_2CBCE4()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setLineBreakMode:4];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor:v1];

  [v0 setNumberOfLines:2];
  sub_124C4(0, &qword_408100);
  v2 = sub_30CE48();
  [v0 setFont:v2];

  [v0 setAdjustsFontForContentSizeCategory:1];
  return v0;
}

id sub_2CBDE8()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setLineBreakMode:4];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v1];

  [v0 setNumberOfLines:2];
  sub_124C4(0, &qword_408100);
  v2 = sub_30CE08();
  [v0 setFont:v2];

  [v0 setAdjustsFontForContentSizeCategory:1];
  return v0;
}

char *SidebarProfileButton.init(asPartOf:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton____lazy_storage___pictureButton] = 0;
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_labelsVerticalStackView;
  v6 = [objc_allocWithZone(UIStackView) init];
  [v6 setAxis:1];
  [v6 setAlignment:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_titleLabel;
  *&v2[v7] = sub_2CBCE4();
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_subtitleLabel;
  *&v2[v8] = sub_2CBDE8();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_objectGraph] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40D728);

  sub_30B8E8();
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_accountController] = v50;
  v49.receiver = v2;
  v49.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = objc_allocWithZone(UITapGestureRecognizer);
  v11 = v9;
  v12 = [v10 initWithTarget:v11 action:"viewTapped"];
  [v11 addGestureRecognizer:v12];

  v13 = [objc_opt_self() defaultCenter];
  [v13 addObserver:v11 selector:"accountDidChange" name:ACDAccountStoreDidChangeNotification object:0];

  v14 = sub_2CBB7C();
  [v11 addSubview:v14];

  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_labelsVerticalStackView;
  [v11 addSubview:*&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_labelsVerticalStackView]];
  v16 = *&v11[v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_317F20;
  v18 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_titleLabel];
  *(v17 + 32) = v18;
  v19 = *&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_subtitleLabel];
  *(v17 + 40) = v19;
  v20 = v16;
  v21 = v18;
  v22 = v19;
  v23._rawValue = v17;
  sub_30C688(v23);

  v48 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_321500;
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton____lazy_storage___pictureButton;
  v26 = [*&v11[OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton____lazy_storage___pictureButton] leadingAnchor];
  v27 = [v11 leadingAnchor];

  v28 = [v26 constraintEqualToAnchor:v27 constant:30.0];
  *(v24 + 32) = v28;
  v29 = [*&v11[v25] trailingAnchor];
  v30 = [*&v11[v15] leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-8.0];

  *(v24 + 40) = v31;
  v32 = [*&v11[v25] centerYAnchor];
  v33 = [*&v11[v15] centerYAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v24 + 48) = v34;
  v35 = [*&v11[v15] topAnchor];
  v36 = [v11 topAnchor];

  v37 = [v35 constraintEqualToAnchor:v36];
  *(v24 + 56) = v37;
  v38 = [*&v11[v15] bottomAnchor];
  v39 = [v11 bottomAnchor];

  v40 = [v38 constraintEqualToAnchor:v39 constant:-23.0];
  *(v24 + 64) = v40;
  v41 = [*&v11[v15] trailingAnchor];
  v42 = [v11 trailingAnchor];

  v43 = [v41 constraintEqualToAnchor:v42 constant:-23.0];
  *(v24 + 72) = v43;
  v44 = [*&v11[v15] heightAnchor];
  v45 = [v44 constraintGreaterThanOrEqualToConstant:32.0];

  *(v24 + 80) = v45;
  sub_124C4(0, &qword_403000);
  isa = sub_30C358().super.isa;

  [v48 activateConstraints:isa];

  sub_2CC4F4();

  return v11;
}

uint64_t sub_2CC4F4()
{
  v1 = sub_306E68();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_306E88();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_124C4(0, &qword_3FBF20);
  v9 = sub_30C8F8();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_2CD518;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_71;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_306E78();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_2CD538(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
  sub_9442C();
  sub_30D488();
  sub_30C908();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

id SidebarProfileButton.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:ACDAccountStoreDidChangeNotification object:0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::Void __swiftcall SidebarProfileButton.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "traitCollectionDidChange:", isa);
  [v1 invalidateIntrinsicContentSize];
  [v1 setNeedsUpdateConstraints];
}

id sub_2CCA98(uint64_t a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  v4 = [v3 ams_DSID];
  if (v4)
  {

    v5 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_titleLabel);
    v6 = [*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_accountController) primaryUser];
    if (!v6 || (v7 = v6, v8 = [v6 userFullName], v7, !v8))
    {
      v8 = 0;
    }

    [v5 setText:v8];

    v9 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_subtitleLabel);
    v10 = 1;
  }

  else
  {
    v11 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_titleLabel);
    v12 = objc_opt_self();
    v13 = [v12 mainBundle];
    v21._countAndFlagsBits = 0x8000000000345480;
    v24._countAndFlagsBits = 0x634120656C707041;
    v24._object = 0xED0000746E756F63;
    v26.value._countAndFlagsBits = 0;
    v26.value._object = 0;
    v14.super.isa = v13;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_301AB8(v24, v26, v14, v28, v21);

    v15 = sub_30C098();

    [v11 setText:v15];

    v16 = *(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_subtitleLabel);
    v17 = [v12 mainBundle];
    v22._countAndFlagsBits = 0x80000000003454C0;
    v25._countAndFlagsBits = 0xD00000000000001DLL;
    v25._object = 0x80000000003454A0;
    v27.value._countAndFlagsBits = 0;
    v27.value._object = 0;
    v18.super.isa = v17;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    sub_301AB8(v25, v27, v18, v29, v22);

    v19 = sub_30C098();

    [v16 setText:v19];

    v9 = v16;
    v10 = 0;
  }

  return [v9 setHidden:v10];
}

uint64_t sub_2CCD58()
{
  v1 = sub_302558();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_30B898();
  __chkstk_darwin(v3 - 8);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_30AA18();
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_30A4E8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_308778();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F40);
  v29 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v26 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_objectGraph);
  sub_30B8E8();
  (*(v12 + 104))(v14, enum case for FlowDestination.account(_:), v11);
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.presentModalFormSheet(_:), v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315420;
  LOBYTE(v8) = sub_30AF68();
  *(inited + 32) = v8;
  v19 = sub_30AF98();
  *(inited + 33) = v19;
  sub_30AFB8();
  sub_30AFB8();
  if (sub_30AFB8() != v8)
  {
    sub_30AFB8();
  }

  sub_30AFB8();
  if (sub_30AFB8() != v19)
  {
    sub_30AFB8();
  }

  (*(v5 + 104))(v28, enum case for FlowDestinationPageHeader.standard(_:), v27);
  sub_30B868();
  v20 = sub_3076F8();
  swift_allocObject();
  v21 = sub_307708();
  v34[3] = v20;
  v34[4] = sub_2CD538(&unk_3FB8B0, &type metadata accessor for FlowAction);
  v34[0] = v21;
  v23 = v31;
  v22 = v32;
  v24 = v33;
  (*(v32 + 104))(v31, enum case for ActionMetricsBehavior.fromAction(_:), v33);

  sub_30B9E8();

  (*(v22 + 8))(v23, v24);
  (*(v29 + 8))(v17, v15);
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

void sub_2CD3F0()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton____lazy_storage___pictureButton) = 0;
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_labelsVerticalStackView;
  v2 = [objc_allocWithZone(UIStackView) init];
  [v2 setAxis:1];
  [v2 setAlignment:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_titleLabel;
  *(v0 + v3) = sub_2CBCE4();
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews20SidebarProfileButton_subtitleLabel;
  *(v0 + v4) = sub_2CBDE8();
  sub_30D648();
  __break(1u);
}

uint64_t sub_2CD4E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2CD538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SmartPlayButtonController.__allocating_init(button:context:platform:objectGraph:)(void *a1, _BYTE *a2, char *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  LOBYTE(a2) = *a2;
  v9 = *a3;
  swift_unknownObjectWeakInit();
  *(v8 + 80) = 0;
  *(v8 + 64) = 0u;
  *(v8 + 48) = 0u;
  sub_2C9C14(v18);
  v10 = v18[7];
  *(v8 + 184) = v18[6];
  *(v8 + 200) = v10;
  *(v8 + 216) = v19[0];
  *(v8 + 225) = *(v19 + 9);
  v11 = v18[3];
  *(v8 + 120) = v18[2];
  *(v8 + 136) = v11;
  v12 = v18[5];
  *(v8 + 152) = v18[4];
  *(v8 + 168) = v12;
  v13 = v18[1];
  *(v8 + 88) = v18[0];
  *(v8 + 104) = v13;
  *(v8 + 248) = 0;
  *(v8 + 256) = 2;
  *(v8 + 272) = 0;
  *(v8 + 280) = 0;
  *(v8 + 264) = 0;
  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews25SmartPlayButtonController_currentPlayState;
  v15 = sub_303748();
  (*(*(v15 - 8) + 56))(v8 + v14, 1, 1, v15);
  swift_unknownObjectWeakAssign();
  *(v8 + 24) = a2;
  *(v8 + 25) = v9;
  *(v8 + 32) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);
  sub_30B9A8();

  sub_30BE78();
  *(v8 + 40) = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E20);
  sub_30BE78();

  swift_beginAccess();
  sub_2C9C3C(v17, v8 + 48);
  swift_endAccess();
  return v8;
}

uint64_t SmartPlayContext.rawValue.getter()
{
  if (*v0)
  {
    return 0x65676150776F6873;
  }

  else
  {
    return 0x5065646F73697065;
  }
}

uint64_t sub_2CD7C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65676150776F6873;
  }

  else
  {
    v3 = 0x5065646F73697065;
  }

  if (v2)
  {
    v4 = 0xEB00000000656761;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x65676150776F6873;
  }

  else
  {
    v5 = 0x5065646F73697065;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEB00000000656761;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_30D728();
  }

  return v8 & 1;
}

Swift::Int sub_2CD874()
{
  sub_30D7F8();
  sub_30C1F8();

  return sub_30D858();
}

uint64_t sub_2CD900()
{
  sub_30C1F8();
}

Swift::Int sub_2CD978()
{
  sub_30D7F8();
  sub_30C1F8();

  return sub_30D858();
}

void sub_2CDA0C(uint64_t *a1@<X8>)
{
  v2 = 0x5065646F73697065;
  if (*v1)
  {
    v2 = 0x65676150776F6873;
  }

  v3 = 0xEB00000000656761;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2CDA60@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::OpaquePointer a3@<X2>, char *a4@<X8>)
{
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_30D6B8(a3, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t SmartPlayPlatformContext.rawValue.getter()
{
  if (*v0)
  {
    return 5459817;
  }

  else
  {
    return 0x79616C50726163;
  }
}

uint64_t sub_2CDAF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 5459817;
  }

  else
  {
    v3 = 0x79616C50726163;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 5459817;
  }

  else
  {
    v5 = 0x79616C50726163;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_30D728();
  }

  return v8 & 1;
}

Swift::Int sub_2CDB94()
{
  sub_30D7F8();
  sub_30C1F8();

  return sub_30D858();
}

uint64_t sub_2CDC10()
{
  sub_30C1F8();
}

Swift::Int sub_2CDC78()
{
  sub_30D7F8();
  sub_30C1F8();

  return sub_30D858();
}

uint64_t sub_2CDCFC@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_30D6B8(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_2CDD58(uint64_t *a1@<X8>)
{
  v2 = 5459817;
  if (!*v1)
  {
    v2 = 0x79616C50726163;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2CDD90()
{
  if (*(v0 + 136) != 1)
  {
    v2 = *(v0 + 128);
    if (v2 < 1.0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  result = 0;
  if ((*(v0 + 152) & 1) == 0)
  {
    v2 = *(v0 + 144);
    if (v2 >= 1.0)
    {
LABEL_7:
      v3 = [objc_allocWithZone(AVTimeFormatter) init];
      [v3 setStyle:1];
      v4 = [v3 stringFromSeconds:v2];
      v5 = sub_30C0D8();
      v7 = v6;

      v8 = [objc_opt_self() mainBundle];
      v12._countAndFlagsBits = 0xE000000000000000;
      v13._object = 0x80000000003457D0;
      v13._countAndFlagsBits = 0xD000000000000025;
      v14.value._countAndFlagsBits = 0;
      v14.value._object = 0;
      v9.super.isa = v8;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      sub_301AB8(v13, v14, v9, v15, v12);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_315430;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_DC9AC();
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      v11 = sub_30C0A8();

      return v11;
    }
  }

  return result;
}

uint64_t sub_2CDF64(uint64_t a1)
{
  v3 = sub_30A608();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 248) = a1;

  if (a1)
  {
    v8 = 0;
    v9 = *(a1 + 16);
    v13[0] = v1;
    v13[1] = v4 + 16;
    while (1)
    {
      v10 = v8;
      if (v9 == v8)
      {
LABEL_6:
        v12 = v9 != v10;

        v1 = v13[0];
        goto LABEL_8;
      }

      if (v8 >= *(a1 + 16))
      {
        break;
      }

      (*(v4 + 16))(v6, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8++, v3);
      v11 = sub_30A5F8();
      result = (*(v4 + 8))(v6, v3);
      if (v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = 2;
LABEL_8:
    *(v1 + 256) = v12;
  }

  return result;
}

uint64_t SmartPlayButtonController.init(button:context:platform:objectGraph:)(void *a1, char *a2, char *a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *a3;
  swift_unknownObjectWeakInit();
  *(v4 + 80) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 48) = 0u;
  sub_2C9C14(v17);
  v9 = v17[7];
  *(v4 + 184) = v17[6];
  *(v4 + 200) = v9;
  *(v4 + 216) = v18[0];
  *(v4 + 225) = *(v18 + 9);
  v10 = v17[3];
  *(v4 + 120) = v17[2];
  *(v4 + 136) = v10;
  v11 = v17[5];
  *(v4 + 152) = v17[4];
  *(v4 + 168) = v11;
  v12 = v17[1];
  *(v4 + 88) = v17[0];
  *(v4 + 104) = v12;
  *(v4 + 248) = 0;
  *(v4 + 256) = 2;
  *(v4 + 272) = 0;
  *(v4 + 280) = 0;
  *(v4 + 264) = 0;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews25SmartPlayButtonController_currentPlayState;
  v14 = sub_303748();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  swift_unknownObjectWeakAssign();
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 32) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDD0);
  sub_30B9A8();

  sub_30BE78();
  *(v4 + 40) = v16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408E20);
  sub_30BE78();

  swift_beginAccess();
  sub_2C9C3C(v16, v4 + 48);
  swift_endAccess();
  return v4;
}

uint64_t sub_2CE2C4()
{

  sub_2D25DC(v2);
  v12 = v2[6];
  v13 = v2[7];
  v14[0] = v3[0];
  *(v14 + 9) = *(v3 + 9);
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v6 = v2[0];
  v7 = v2[1];

  v0 = sub_308198();
  UINavigationBar.overrideBackButtonStyle.setter(&v6);
  v4[6] = v12;
  v4[7] = v13;
  v5[0] = v14[0];
  *(v5 + 9) = *(v14 + 9);
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  v4[5] = v11;
  v4[0] = v6;
  v4[1] = v7;
  sub_2CE4B4(v0, v4);
  sub_2ADEE8(v2);
}

uint64_t sub_2CE3AC()
{
  if (sub_307838())
  {
    sub_2D247C(&v2);

    UINavigationBar.overrideBackButtonStyle.setter(&v2);
    v17 = v8;
    v18 = v9;
    v19[0] = v10[0];
    *(v19 + 9) = *(v10 + 9);
    v13 = v4;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    v11 = v2;
    v12 = v3;
  }

  else
  {
    sub_2C9C14(&v11);
  }

  v8 = v17;
  v9 = v18;
  v10[0] = v19[0];
  *(v10 + 9) = *(v19 + 9);
  v4 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v2 = v11;
  v3 = v12;
  v0 = sub_3078A8();
  sub_2CE4B4(v0, &v2);

  return sub_EB68(&v11, &qword_40D648);
}

void sub_2CE4B4(uint64_t a1, _OWORD *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF28);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6];
  v8 = *(v2 + 200);
  v18[6] = *(v2 + 184);
  v18[7] = v8;
  v19[0] = *(v2 + 216);
  *(v19 + 9) = *(v2 + 225);
  v9 = *(v2 + 136);
  v18[2] = *(v2 + 120);
  v18[3] = v9;
  v10 = *(v2 + 168);
  v18[4] = *(v2 + 152);
  v18[5] = v10;
  v11 = *(v2 + 104);
  v18[0] = *(v2 + 88);
  v18[1] = v11;
  v12 = a2[7];
  *(v2 + 184) = a2[6];
  *(v2 + 200) = v12;
  *(v2 + 216) = a2[8];
  *(v2 + 225) = *(a2 + 137);
  v13 = a2[3];
  *(v2 + 120) = a2[2];
  *(v2 + 136) = v13;
  v14 = a2[5];
  *(v2 + 152) = a2[4];
  *(v2 + 168) = v14;
  v15 = a2[1];
  *(v2 + 88) = *a2;
  *(v2 + 104) = v15;
  sub_EB00(a2, v17, &qword_40D648);
  sub_EB68(v18, &qword_40D648);
  *(v2 + 248) = 0;

  *(v2 + 256) = 2;
  v16 = sub_303748();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_2D05B0(v7);
  *(v2 + 264) = 0;
  *(v2 + 272) = 0;

  *(v2 + 280) = 0;

  sub_2CE68C(a1, a2);
  sub_2CF83C(a1, a2);
}

uint64_t sub_2CE68C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 144);
  v6 = *(a2 + 152);
  v7 = sub_307CF8();
  __chkstk_darwin(v7 - 8);
  v8 = sub_30B898();
  __chkstk_darwin(v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDE8);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v13 = result;
  v73 = v5;
  LODWORD(v74) = v6;
  v76 = v2;
  v14 = *(a2 + 112);
  v93 = *(a2 + 96);
  v94 = v14;
  v95[0] = *(a2 + 128);
  *(v95 + 9) = *(a2 + 137);
  v15 = *(a2 + 48);
  v89 = *(a2 + 32);
  v90 = v15;
  v16 = *(a2 + 80);
  v91 = *(a2 + 64);
  v92 = v16;
  v17 = *(a2 + 16);
  v87 = *a2;
  v88 = v17;
  if (sub_2D2750(&v87) != 1)
  {
    v18 = *(&v87 + 1);
    v98 = BYTE8(v88);
    v19 = v89;
    v97 = BYTE8(v95[0]);
    v96 = BYTE8(v95[1]);
    v99 = v90;
    if (*(&v90 + 1))
    {
      v66 = v92;
      v67 = *&v95[1];
      v64 = BYTE8(v91);
      v65 = v87;
      v63 = v91;
      v73 = *(&v90 + 1);
      v74 = v88;
      v75 = a1;
      v72 = v99;
      v69 = BYTE8(v92);
      v70 = BYTE8(v89);
      v68 = *&v95[0];
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = v13;
      *&v80 = sub_172960;
      *(&v80 + 1) = v21;
      *&v78 = _NSConcreteStackBlock;
      *(&v78 + 1) = 1107296256;
      *&v79 = sub_914CC;
      *(&v79 + 1) = &block_descriptor_78;
      v22 = _Block_copy(&v78);
      sub_EB00(&v99, v77, &unk_40AB30);
      v23 = v13;

      [v20 animateWithDuration:v22 animations:0.15];
      _Block_release(v22);
      if (v18 == 2)
      {
        v24 = v19;
      }

      else
      {
        v24 = 0;
      }

      v71 = v24;
      v70 |= v18 != 2;
      v25 = sub_303978();
      (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
      sub_2D14F0();
      if ((v69 & 1) == 0 && v66 >= 1)
      {
        v26 = sub_303138();
        v28 = v27;
        if (v26 == sub_303138() && v28 == v29)
        {
        }

        else
        {
          sub_30D728();
        }
      }

      sub_30B868();
      sub_30A178();
      swift_allocObject();
      v49 = sub_30A0E8();
      a1 = v75;
      goto LABEL_31;
    }
  }

  if (!a1)
  {
    goto LABEL_32;
  }

  sub_3077E8();
  if (swift_dynamicCastClass())
  {
    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = v13;
    *&v80 = sub_172960;
    *(&v80 + 1) = v31;
    *&v78 = _NSConcreteStackBlock;
    *(&v78 + 1) = 1107296256;
    *&v79 = sub_914CC;
    *(&v79 + 1) = &block_descriptor_71;
    v32 = a1;
    v33 = _Block_copy(&v78);
    v34 = v13;
    v75 = v32;

    [v30 animateWithDuration:v33 animations:0.15];
    _Block_release(v33);
    v72 = sub_3077C8();
    sub_3077A8();
    if (sub_2D14F0())
    {
      v35 = *(a2 + 112);
      v84 = *(a2 + 96);
      v85 = v35;
      v86[0] = *(a2 + 128);
      *(v86 + 9) = *(a2 + 137);
      v36 = *(a2 + 48);
      v80 = *(a2 + 32);
      v81 = v36;
      v37 = *(a2 + 80);
      v82 = *(a2 + 64);
      v83 = v37;
      v38 = *(a2 + 16);
      v78 = *a2;
      v79 = v38;
      sub_2D2750(&v78);
    }

    v48 = v75;

    sub_30AFF8();

    sub_3088B8();
    swift_allocObject();
    a1 = v48;
    v49 = sub_308888();

    goto LABEL_31;
  }

  sub_30A178();
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
LABEL_25:
    sub_30A208();
    v50 = swift_dynamicCastClass();
    if (v50)
    {
      v49 = v50;
      v44 = objc_opt_self();
      v51 = swift_allocObject();
      *(v51 + 16) = v13;
      *&v80 = sub_172960;
      *(&v80 + 1) = v51;
      *&v78 = _NSConcreteStackBlock;
      *(&v78 + 1) = 1107296256;
      v52 = &block_descriptor_57;
LABEL_29:
      *&v79 = sub_914CC;
      *(&v79 + 1) = v52;
      v46 = _Block_copy(&v78);
      v55 = v13;

      goto LABEL_30;
    }

    sub_3076F8();
    v53 = swift_dynamicCastClass();
    if (v53)
    {
      v49 = v53;
      v44 = objc_opt_self();
      v54 = swift_allocObject();
      *(v54 + 16) = v13;
      *&v80 = sub_14DC24;
      *(&v80 + 1) = v54;
      *&v78 = _NSConcreteStackBlock;
      *(&v78 + 1) = 1107296256;
      v52 = &block_descriptor_72;
      goto LABEL_29;
    }

LABEL_32:
    [v13 setAlpha:0.5];
    goto LABEL_33;
  }

  v49 = v39;

  v40 = sub_30A0F8();
  v42 = v41;

  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {

    goto LABEL_25;
  }

  v44 = objc_opt_self();
  v45 = swift_allocObject();
  *(v45 + 16) = v13;
  *&v80 = sub_172960;
  *(&v80 + 1) = v45;
  *&v78 = _NSConcreteStackBlock;
  *(&v78 + 1) = 1107296256;
  *&v79 = sub_914CC;
  *(&v79 + 1) = &block_descriptor_64;
  v46 = _Block_copy(&v78);
  v47 = v13;
LABEL_30:

  [v44 animateWithDuration:v46 animations:0.15];
  _Block_release(v46);
LABEL_31:
  v77[3] = sub_30B038();
  v77[4] = sub_142590();
  v77[0] = v49;
  swift_retain_n();
  sub_30D388();

  __swift_destroy_boxed_opaque_existential_1(v77);
LABEL_33:
  if (sub_2D14F0())
  {
    sub_124C4(0, &qword_408080);
    v56 = swift_allocObject();
    swift_weakInit();
    v57 = swift_allocObject();
    *(v57 + 16) = a1;
    *(v57 + 24) = v13;
    v58 = *(a2 + 112);
    *(v57 + 128) = *(a2 + 96);
    *(v57 + 144) = v58;
    *(v57 + 160) = *(a2 + 128);
    *(v57 + 169) = *(a2 + 137);
    v59 = *(a2 + 48);
    *(v57 + 64) = *(a2 + 32);
    *(v57 + 80) = v59;
    v60 = *(a2 + 80);
    *(v57 + 96) = *(a2 + 64);
    *(v57 + 112) = v60;
    v61 = *(a2 + 16);
    *(v57 + 32) = *a2;
    *(v57 + 48) = v61;
    *(v57 + 192) = v56;

    v62 = v13;
    sub_EB00(a2, v77, &qword_40D648);
    v13 = sub_30D0C8();
    [v62 addAction:v13 forControlEvents:0x2000];
  }
}

void sub_2CF114(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v36 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBDE8);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - v8;
  v10 = sub_30B898();
  __chkstk_darwin(v10 - 8);
  v35 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_307CF8();
  __chkstk_darwin(v12 - 8);
  if (a2)
  {
    sub_3077E8();
    if (swift_dynamicCastClass())
    {
      v33[1] = a2;

      sub_30D378(0x2000uLL);
      v13 = a4[7];
      v63 = a4[6];
      v64 = v13;
      v65[0] = a4[8];
      *(v65 + 9) = *(a4 + 137);
      v14 = a4[3];
      v59 = a4[2];
      v60 = v14;
      v15 = a4[5];
      v61 = a4[4];
      v62 = v15;
      v16 = a4[1];
      v57 = *a4;
      v58 = v16;
      if (sub_2D2750(&v57) == 1)
      {
        v17 = a4[7];
        v54 = a4[6];
        v55 = v17;
        v56[0] = a4[8];
        *(v56 + 9) = *(a4 + 137);
        v18 = a4[3];
        v50 = a4[2];
        v51 = v18;
        v19 = a4[5];
        v52 = a4[4];
        v53 = v19;
        v20 = *a4;
        v21 = a4[1];
      }

      else
      {
        v69[8] = BYTE8(v58);
        v70[8] = BYTE8(v61);
        BYTE8(v71) = BYTE8(v64);
        *(&v40 + 7) = v59;
        HIBYTE(v40) = BYTE8(v59);
        *(&v38 + 7) = v62;
        HIBYTE(v38) = BYTE8(v62);
        LOWORD(v68) = v57 & 0x1FF;
        v66 = v60;
        v67 = v63;
        v47[0] = BYTE1(v57) & 1;
        *&v39[7] = v60;
        *&v37[7] = v63;
        v42 = 1;
        v41 = 1;
        *(&v68 + 1) = *(&v57 + 1);
        *v69 = v58;
        *&v69[9] = v40;
        *&v69[40] = *(&v60 + 1);
        *v70 = v61;
        *&v69[25] = *v39;
        *&v70[9] = v38;
        *&v70[40] = *(&v63 + 1);
        *&v71 = v64;
        *&v70[25] = *v37;
        *v72 = 0;
        v72[8] = 1;
        *&v72[16] = 0;
        v72[24] = 1;
        UINavigationBar.overrideBackButtonStyle.setter(&v68);
        sub_EB00(&v66, v47, &unk_40AB30);
        sub_EB00(&v67, v47, &unk_40AB30);
        v54 = *&v70[32];
        v55 = v71;
        v56[0] = *v72;
        *(v56 + 9) = *&v72[9];
        v50 = *&v69[16];
        v51 = *&v69[32];
        v52 = *v70;
        v53 = *&v70[16];
        v20 = v68;
        v21 = *v69;
      }

      v48 = v20;
      v49 = v21;
      *&v70[32] = v54;
      v71 = v55;
      *v72 = v56[0];
      *&v72[9] = *(v56 + 9);
      *&v69[16] = v50;
      *&v69[32] = v51;
      *v70 = v52;
      *&v70[16] = v53;
      v68 = v20;
      *v69 = v21;
      sub_3077C8();
      sub_3077A8();
      sub_30B868();
      swift_allocObject();
      v31 = sub_3077B8();
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
LABEL_14:

        sub_EB68(&v48, &qword_40D648);
        return;
      }
    }

    else
    {
      sub_30A178();
      if (!swift_dynamicCastClass())
      {
        return;
      }

      sub_30D378(0x2000uLL);
      v22 = a4[7];
      v63 = a4[6];
      v64 = v22;
      v65[0] = a4[8];
      *(v65 + 9) = *(a4 + 137);
      v23 = a4[3];
      v59 = a4[2];
      v60 = v23;
      v24 = a4[5];
      v61 = a4[4];
      v62 = v24;
      v25 = a4[1];
      v57 = *a4;
      v58 = v25;
      if (sub_2D2750(&v57) == 1)
      {
        v26 = a4[7];
        v54 = a4[6];
        v55 = v26;
        v56[0] = a4[8];
        *(v56 + 9) = *(a4 + 137);
        v27 = a4[3];
        v50 = a4[2];
        v51 = v27;
        v28 = a4[5];
        v52 = a4[4];
        v53 = v28;
        v29 = *a4;
        v30 = a4[1];
      }

      else
      {
        v69[8] = BYTE8(v58);
        v70[8] = BYTE8(v61);
        BYTE8(v71) = BYTE8(v64);
        *(&v46 + 7) = v59;
        HIBYTE(v46) = BYTE8(v59);
        v66 = v60;
        v67 = v63;
        *(&v44 + 7) = v62;
        HIBYTE(v44) = BYTE8(v62);
        LOWORD(v68) = v57 & 0x1FF;
        v47[0] = BYTE1(v57) & 1;
        *&v45[7] = v60;
        *&v43[7] = v63;
        v42 = 1;
        v41 = 1;
        *(&v68 + 1) = *(&v57 + 1);
        *v69 = v58;
        *&v69[9] = v46;
        *&v69[40] = *(&v60 + 1);
        *v70 = v61;
        *&v69[25] = *v45;
        *&v70[9] = v44;
        *&v70[40] = *(&v63 + 1);
        *&v71 = v64;
        *&v70[25] = *v43;
        *v72 = 0;
        v72[8] = 1;
        *&v72[16] = 0;
        v72[24] = 1;
        UINavigationBar.overrideBackButtonStyle.setter(&v68);
        sub_EB00(&v66, v47, &unk_40AB30);
        sub_EB00(&v67, v47, &unk_40AB30);
        v54 = *&v70[32];
        v55 = v71;
        v56[0] = *v72;
        *(v56 + 9) = *&v72[9];
        v50 = *&v69[16];
        v51 = *&v69[32];
        v52 = *v70;
        v53 = *&v70[16];
        v29 = v68;
        v30 = *v69;
      }

      v48 = v29;
      v49 = v30;
      *&v70[32] = v54;
      v71 = v55;
      *v72 = v56[0];
      *&v72[9] = *(v56 + 9);
      *&v69[16] = v50;
      *&v69[32] = v51;
      *v70 = v52;
      *&v70[16] = v53;
      v68 = v29;
      *v69 = v30;
      sub_30A0F8();
      sub_30A108();
      v32 = sub_303978();
      (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
      sub_30B868();
      sub_308E88();
      swift_allocObject();
      v31 = sub_308E38();
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        goto LABEL_14;
      }
    }

    sub_2CE4B4(v31, &v68);

    sub_EB68(&v48, &qword_40D648);
  }
}

void sub_2CF83C(uint64_t a1, _OWORD *a2)
{
  v5 = sub_307CF8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_303748();
  __chkstk_darwin(v9);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (!v2[35])
  {
    v12 = a2[6];
    v13 = a2[8];
    v56 = a2[7];
    v57[0] = v13;
    *(v57 + 9) = *(a2 + 137);
    v14 = a2[3];
    v51[2] = a2[2];
    v52 = v14;
    v15 = a2[5];
    v53 = a2[4];
    v54 = v15;
    v55 = v12;
    v16 = a2[1];
    v51[0] = *a2;
    v51[1] = v16;
    if (sub_2D2750(v51) != 1)
    {
      v58 = v52;
      v17 = *(&v52 + 1);
      if (*(&v52 + 1))
      {
        v18 = v58;
        v19 = v2[5];
        type metadata accessor for PlaybackStatusPresenter(0);
        swift_allocObject();
        sub_EB00(&v58, v50, &unk_40AB30);

        v20 = sub_2A38D8(v18, v17, v19);

        v2[35] = v20;
        swift_retain_n();

        v21 = swift_unknownObjectRetain();
        sub_2A2D04(v21, &off_3C4EA8);
        v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews23PlaybackStatusPresenter_currentState;
        swift_beginAccess();
        sub_1DC68(v20 + v22, v11);
        sub_2D1890(v11);

LABEL_19:
        sub_2B454(v11);
        return;
      }
    }

    if (a1)
    {
      sub_3077E8();
      if (swift_dynamicCastClass())
      {

        v23 = v2;
        v2[33] = sub_30B018();
        v2[34] = v24;

        sub_3077A8();
        v25 = sub_307CB8();
        (*(v6 + 8))(v8, v5);
        v26 = v23[5];
        type metadata accessor for PlaybackStatusPresenter(0);
        swift_allocObject();

        v27 = sub_2A3A84(v25, v26);

        v23[35] = v27;
        swift_retain_n();

        v28 = swift_unknownObjectRetain();
        sub_2A2D04(v28, &off_3C4EA8);
        v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews23PlaybackStatusPresenter_currentState;
        swift_beginAccess();
        sub_1DC68(v27 + v29, v11);
        v30 = v11;
LABEL_8:
        sub_2D1890(v30);
LABEL_11:

        sub_2B454(v11);

        return;
      }

      v31 = v2;
      sub_30A178();
      if (swift_dynamicCastClass())
      {

        v32 = sub_30A0F8();
        v34 = v33;
        v35 = v31[5];
        type metadata accessor for PlaybackStatusPresenter(0);
        swift_allocObject();

        v36 = sub_2A38D8(v32, v34, v35);

        v31[35] = v36;
        swift_retain_n();

        v37 = swift_unknownObjectRetain();
        sub_2A2D04(v37, &off_3C4EA8);
        v38 = OBJC_IVAR____TtC23ShelfKitCollectionViews23PlaybackStatusPresenter_currentState;
        swift_beginAccess();
        sub_1DC68(v36 + v38, v11);
        sub_2D1890(v11);
        goto LABEL_11;
      }

      sub_30A208();
      if (swift_dynamicCastClass())
      {

        v39 = sub_30A1E8();
        if (v40)
        {
          v41 = v39;
          v42 = v40;
          v43 = v31[5];
          type metadata accessor for PlaybackStatusPresenter(0);
          swift_allocObject();

          v44 = sub_2A38D8(v41, v42, v43);

          v31[35] = v44;
          swift_retain_n();

          v45 = swift_unknownObjectRetain();
          sub_2A2D04(v45, &off_3C4EA8);
          v46 = OBJC_IVAR____TtC23ShelfKitCollectionViews23PlaybackStatusPresenter_currentState;
          swift_beginAccess();
          sub_1DC68(v44 + v46, v11);
          v30 = v11;
          goto LABEL_8;
        }
      }

      v47 = sub_30B018();
      if (v48)
      {
        v2[33] = v47;
        v2[34] = v48;
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_2D1890(v11);
    goto LABEL_19;
  }
}

uint64_t sub_2CFDE8(uint64_t a1)
{
  v3 = sub_303748();
  __chkstk_darwin(v3);
  v5 = &v59[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v59[-v7];
  __chkstk_darwin(v9);
  v11 = &v59[-v10];
  v12 = *(v1 + 200);
  v103 = *(v1 + 184);
  v104 = v12;
  v105[0] = *(v1 + 216);
  *(v105 + 9) = *(v1 + 225);
  v13 = *(v1 + 136);
  v99 = *(v1 + 120);
  v100 = v13;
  v14 = *(v1 + 168);
  v101 = *(v1 + 152);
  v102 = v14;
  v15 = *(v1 + 104);
  v97 = *(v1 + 88);
  v98 = v15;
  v16 = *(v1 + 200);
  v106[6] = *(v1 + 184);
  v106[7] = v16;
  v107[0] = *(v1 + 216);
  *(v107 + 9) = *(v1 + 225);
  v17 = *(v1 + 136);
  v106[2] = *(v1 + 120);
  v106[3] = v17;
  v18 = *(v1 + 168);
  v106[4] = *(v1 + 152);
  v106[5] = v18;
  v19 = *(v1 + 104);
  v106[0] = *(v1 + 88);
  v106[1] = v19;
  if (sub_2D2750(v106) != 1)
  {
    v20 = v1;
    v93 = v103;
    v94 = v104;
    v95[0] = v105[0];
    *(v95 + 9) = *(v105 + 9);
    v89 = v99;
    v90 = v100;
    v91 = v101;
    v92 = v102;
    v87 = v97;
    v88 = v98;
    v95[8] = v103;
    v95[9] = v104;
    v96[0] = v105[0];
    *(v96 + 9) = *(v105 + 9);
    v95[4] = v99;
    v95[5] = v100;
    v95[6] = v101;
    v95[7] = v102;
    v95[2] = v97;
    v95[3] = v98;
    sub_2D2774(&v87, &v78);
    v21 = sub_2CDD90();
    v23 = v22;
    sub_EB68(&v97, &qword_40D648);
    if (v23)
    {
      return v21;
    }

    v1 = v20;
  }

  sub_1DC68(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v25 = *(v1 + 25);
        v26 = [objc_opt_self() mainBundle];
        if (v25)
        {
          v27._countAndFlagsBits = 0xD000000000000018;
LABEL_17:
          v58._countAndFlagsBits = 0xE000000000000000;
          v27._object = 0x8000000000345560;
LABEL_25:
          v108.value._countAndFlagsBits = 0;
          v108.value._object = 0;
          v44.super.isa = v26;
          v110._countAndFlagsBits = 0;
          v110._object = 0xE000000000000000;
          v21 = sub_301AB8(v27, v108, v44, v110, v58);

LABEL_42:
          sub_2B454(v11);
          return v21;
        }

        goto LABEL_24;
      }

      sub_1DC68(v11, v5);
      v41 = *(v1 + 25);
      v42 = [objc_opt_self() mainBundle];
      if (v41)
      {
        v43._countAndFlagsBits = 0xD00000000000001CLL;
        v58._countAndFlagsBits = 0xE000000000000000;
        v43._object = 0x8000000000345510;
      }

      else
      {
        v58._countAndFlagsBits = 0xE000000000000000;
        v43._object = 0x8000000000345530;
        v43._countAndFlagsBits = 0xD000000000000021;
      }

      v109.value._countAndFlagsBits = 0;
      v109.value._object = 0;
      v46.super.isa = v42;
      v112._countAndFlagsBits = 0;
      v112._object = 0xE000000000000000;
      v21 = sub_301AB8(v43, v109, v46, v112, v58);

      v47 = &unk_40BAB0;
      v48 = v5;
LABEL_41:
      sub_EB68(v48, v47);
      goto LABEL_42;
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1DC68(v11, v8);
    if (v8[16] == 1)
    {
      v36 = *(v1 + 25);
      v26 = [objc_opt_self() mainBundle];
      if (v36)
      {
        v27._countAndFlagsBits = 0xD000000000000018;
        goto LABEL_17;
      }

LABEL_24:
      v58._countAndFlagsBits = 0xE000000000000000;
      v27._object = 0x8000000000345530;
      v27._countAndFlagsBits = 0xD000000000000021;
      goto LABEL_25;
    }

LABEL_18:
    sub_2B454(v11);
    v37 = *(v1 + 25);
    v38 = [objc_opt_self() mainBundle];
    if (v37)
    {
      v39._countAndFlagsBits = 0xD000000000000017;
      v58._countAndFlagsBits = 0xE000000000000000;
      v39._object = 0x8000000000345580;
    }

    else
    {
      v58._countAndFlagsBits = 0xE000000000000000;
      v39._object = 0x8000000000345530;
      v39._countAndFlagsBits = 0xD000000000000021;
    }

    v40.value._countAndFlagsBits = 0;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v28 = *(v1 + 200);
    v75 = *(v1 + 184);
    v76 = v28;
    v77[0] = *(v1 + 216);
    *(v77 + 9) = *(v1 + 225);
    v29 = *(v1 + 136);
    v71 = *(v1 + 120);
    v72 = v29;
    v30 = *(v1 + 168);
    v73 = *(v1 + 152);
    v74 = v30;
    v31 = *(v1 + 104);
    v69 = *(v1 + 88);
    v70 = v31;
    v32 = *(v1 + 200);
    v84 = *(v1 + 184);
    v85 = v32;
    v86[0] = *(v1 + 216);
    *(v86 + 9) = *(v1 + 225);
    v33 = *(v1 + 136);
    v80 = *(v1 + 120);
    v81 = v33;
    v34 = *(v1 + 168);
    v82 = *(v1 + 152);
    v83 = v34;
    v35 = *(v1 + 104);
    v78 = *(v1 + 88);
    v79 = v35;
    if (sub_2D2750(&v78) != 1)
    {
      v93 = v84;
      v94 = v85;
      v95[0] = v86[0];
      *(v95 + 9) = *(v86 + 9);
      v89 = v80;
      v90 = v81;
      v91 = v82;
      v92 = v83;
      v87 = v78;
      v88 = v79;
      if (*(v1 + 24) == 1)
      {
        v66 = v75;
        v67 = v76;
        v68[0] = v77[0];
        *(v68 + 9) = *(v77 + 9);
        v62 = v71;
        v63 = v72;
        v64 = v73;
        v65 = v74;
        v60 = v69;
        v61 = v70;
        sub_2D2774(&v60, v59);
      }

      else
      {
        v49 = sub_30D728();
        v66 = v75;
        v67 = v76;
        v68[0] = v77[0];
        *(v68 + 9) = *(v77 + 9);
        v62 = v71;
        v63 = v72;
        v64 = v73;
        v65 = v74;
        v60 = v69;
        v61 = v70;
        sub_2D2774(&v60, v59);

        if ((v49 & 1) == 0)
        {
          v56 = sub_2D0FF8(&v87);
          goto LABEL_40;
        }
      }

      v50 = *(v1 + 25);
      v51 = sub_303E48();
      v53 = v52;
      if (v51 == sub_303E48() && v53 == v54)
      {
      }

      else
      {
        v55 = sub_30D728();

        if ((v55 & 1) == 0)
        {
          LOBYTE(v60) = v50;
          v56 = sub_2D227C(&v60);
          goto LABEL_40;
        }
      }

      LOBYTE(v60) = v50;
      v56 = sub_2D1E90(&v60);
LABEL_40:
      v21 = v56;
      v47 = &qword_40D648;
      v48 = &v69;
      goto LABEL_41;
    }
  }

  sub_2B454(v11);
  v21 = *(v1 + 264);
  if (!*(v1 + 272))
  {
    v38 = [objc_opt_self() mainBundle];
    v39._countAndFlagsBits = 0xD000000000000016;
    v58._countAndFlagsBits = 0xE000000000000000;
    v39._object = 0x80000000003454F0;
    v40.value._countAndFlagsBits = v21;
LABEL_27:
    v40.value._object = 0;
    v45.super.isa = v38;
    v111._countAndFlagsBits = 0;
    v111._object = 0xE000000000000000;
    v21 = sub_301AB8(v39, v40, v45, v111, v58);

    return v21;
  }

  return v21;
}

uint64_t sub_2D05B0(uint64_t a1)
{
  v3 = sub_302AB8();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF28);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_303748();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews25SmartPlayButtonController_currentPlayState;
  swift_beginAccess();
  sub_2D2C60(a1, v1 + v13);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v16 = a1;
    return sub_EB68(v16, &qword_3FBF28);
  }

  v15 = Strong;
  sub_EB00(v1 + v13, v8, &qword_3FBF28);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_EB68(a1, &qword_3FBF28);

    v16 = v8;
    return sub_EB68(v16, &qword_3FBF28);
  }

  sub_EF98C(v8, v12);
  sub_2D0D28(v12);
  v18 = sub_302A08();
  (*(v20 + 8))(v5, v3);
  [v15 setImage:v18 forState:0];

  sub_2CFDE8(v12);
  v19 = sub_30C098();

  [v15 setTitle:v19 forState:0];

  sub_EB68(a1, &qword_3FBF28);
  return sub_2B454(v12);
}

uint64_t sub_2D08C4(uint64_t result, uint64_t a2)
{
  if ((*(v2 + 257) & 1) == 0 && !*(v2 + 248))
  {
    v3 = result;
    v5 = *(v2 + 200);
    v48 = *(v2 + 184);
    v49 = v5;
    v50[0] = *(v2 + 216);
    *(v50 + 9) = *(v2 + 225);
    v6 = *(v2 + 136);
    v44 = *(v2 + 120);
    v45 = v6;
    v7 = *(v2 + 168);
    v46 = *(v2 + 152);
    v47 = v7;
    v8 = *(v2 + 104);
    v43[0] = *(v2 + 88);
    v43[1] = v8;
    v9 = *(v2 + 104);
    v41 = *(v2 + 88);
    v42 = v9;
    v10 = BYTE8(v44);
    v11 = *(v2 + 177);
    v12 = *(v2 + 209);
    v38 = *(v2 + 193);
    v39 = v12;
    v40 = *(v2 + 225);
    v13 = *(v2 + 145);
    v34 = *(v2 + 129);
    v35 = v13;
    v36 = *(v2 + 161);
    v37 = v11;
    v14 = *(v2 + 104);
    v51[0] = *(v2 + 88);
    v51[1] = v14;
    v60 = *(v2 + 225);
    v57 = *(v2 + 177);
    v58 = *(v2 + 193);
    v56 = *(v2 + 161);
    v55 = *(v2 + 145);
    v54 = *(v2 + 129);
    v59 = *(v2 + 209);
    v52 = v44;
    v53 = BYTE8(v44);
    if (sub_2D2750(v51) == 1)
    {
      v23 = v41;
      v24 = v42;
      v30 = v37;
      v31 = v38;
      v32 = v39;
      v33 = v40;
      v27 = v34;
      v28 = v35;
      v25 = v44;
      v26 = BYTE8(v44);
      v29 = v36;
      sub_EB00(v43, v21, &qword_40D648);
      return sub_EB68(&v23, &qword_40D648);
    }

    else
    {
      v23 = v41;
      v24 = v42;
      v30 = v37;
      v31 = v38;
      v32 = v39;
      v33 = v40;
      v27 = v34;
      v28 = v35;
      v25 = v44;
      v26 = BYTE8(v44);
      v29 = v36;
      sub_EB00(v43, v21, &qword_40D648);
      result = sub_EB68(&v23, &qword_40D648);
      if ((v10 & 1) == 0)
      {
        swift_beginAccess();
        sub_EB00(v2 + 48, v21, &qword_401320);
        if (v22)
        {
          sub_12670(v21, v20);
          sub_EB68(v21, &qword_401320);
          __swift_project_boxed_opaque_existential_1Tm(v20, v20[3]);
          v15 = v2;
          sub_308FF8();
          v16 = swift_allocObject();
          swift_weakInit();
          v17 = swift_allocObject();
          v17[2] = v16;
          v17[3] = v3;
          v17[4] = a2;
          v18 = sub_124C4(0, &qword_3FBF20);

          v19[3] = v18;
          v19[4] = &protocol witness table for OS_dispatch_queue;
          v19[0] = sub_30C8F8();
          sub_30BE98();
          v2 = v15;

          __swift_destroy_boxed_opaque_existential_1(v19);
          result = __swift_destroy_boxed_opaque_existential_1(v20);
        }

        else
        {
          result = sub_EB68(v21, &qword_401320);
        }

        *(v2 + 257) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_2D0C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (*(a1 + 8))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_2CDF64(_swiftEmptyArrayStorage);
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {

      sub_2CDF64(v6);
    }

    return a3(Strong);
  }

  return result;
}

uint64_t sub_2D0D28(uint64_t a1)
{
  v3 = sub_303748();
  __chkstk_darwin(v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  v12 = *(v1 + 168);
  v23[4] = *(v1 + 152);
  v23[5] = v12;
  v13 = *(v1 + 200);
  v23[6] = *(v1 + 184);
  v23[7] = v13;
  v14 = *(v1 + 104);
  v23[0] = *(v1 + 88);
  v23[1] = v14;
  v15 = *(v1 + 136);
  v23[2] = *(v1 + 120);
  v23[3] = v15;
  v16 = *(v1 + 216);
  v17 = *(v1 + 224);
  *&v26[3] = *(v1 + 228);
  *v26 = *(v1 + 225);
  v18 = *(v1 + 232);
  v19 = *(v1 + 240);
  v24 = v16;
  v25 = v17;
  v27 = v18;
  v28 = v19;
  if (sub_2D2750(v23) != 1)
  {
    if ((v17 & 1) == 0)
    {
      v20 = v16;
LABEL_6:
      if (v20 >= 1.0)
      {
        return sub_3029D8();
      }

      goto LABEL_7;
    }

    if ((v19 & 1) == 0)
    {
      v20 = v18;
      goto LABEL_6;
    }
  }

LABEL_7:
  sub_1DC68(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1DC68(v11, v5);
      sub_3029D8();
      sub_EB68(v5, &unk_40BAB0);
      return sub_2B454(v11);
    }

    if (EnumCaseMultiPayload != 3 || (sub_1DC68(v11, v8), (v8[16] & 1) != 0))
    {
      sub_3029D8();
      return sub_2B454(v11);
    }
  }

  sub_2B454(v11);
  return sub_3029D8();
}

uint64_t sub_2D0FF8(uint64_t a1)
{
  if ((*(v1 + 25) & 1) == 0)
  {

LABEL_6:
    v5 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xE000000000000000;
    v6._object = 0x80000000003454F0;
    v6._countAndFlagsBits = 0xD000000000000016;
    goto LABEL_7;
  }

  v3 = sub_30D728();

  if (v3)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 8);
  if (v4 < 2)
  {
    goto LABEL_6;
  }

  if (v4 == 2)
  {
    v11 = *(v1 + 256);
    if (v11 == 2 || (v11 & 1) == 0)
    {
      if (*(a1 + 56))
      {

        sub_2D08C4(sub_2D2D90, v1);
      }

      v9 = *(v1 + 264);
      if (*(v1 + 272))
      {

        return v9;
      }

      v5 = [objc_opt_self() mainBundle];
      v12._countAndFlagsBits = 0xE000000000000000;
      v6._countAndFlagsBits = 0xD00000000000001FLL;
      v6._object = 0x8000000000345780;
      v7.value._countAndFlagsBits = v9;
LABEL_8:
      v7.value._object = 0;
      v8.super.isa = v5;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v9 = sub_301AB8(v6, v7, v8, v13, v12);

      return v9;
    }

    v5 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xE000000000000000;
    v6._countAndFlagsBits = 0xD000000000000026;
    v6._object = 0x80000000003457A0;
LABEL_7:
    v7.value._countAndFlagsBits = 0;
    goto LABEL_8;
  }

  type metadata accessor for MTEpisodeEntitlementState(0);
  result = sub_30D758();
  __break(1u);
  return result;
}

uint64_t sub_2D123C(uint64_t a1)
{
  v2 = sub_302AB8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF28);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_303748();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews25SmartPlayButtonController_currentPlayState;
    swift_beginAccess();
    sub_EB00(a1 + v15, v8, &qword_3FBF28);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      return sub_EB68(v8, &qword_3FBF28);
    }

    else
    {
      sub_EF98C(v8, v12);
      sub_2D0D28(v12);
      v16 = sub_302A08();
      (*(v3 + 8))(v5, v2);
      [v14 setImage:v16 forState:0];

      sub_2CFDE8(v12);
      v17 = sub_30C098();

      [v14 setTitle:v17 forState:0];

      return sub_2B454(v12);
    }
  }

  return result;
}

BOOL sub_2D14F0()
{
  v1 = *(v0 + 200);
  v61[6] = *(v0 + 184);
  v61[7] = v1;
  v62[0] = *(v0 + 216);
  *(v62 + 9) = *(v0 + 225);
  v2 = *(v0 + 136);
  v61[2] = *(v0 + 120);
  v61[3] = v2;
  v3 = *(v0 + 168);
  v61[4] = *(v0 + 152);
  v61[5] = v3;
  v4 = *(v0 + 104);
  v61[0] = *(v0 + 88);
  v61[1] = v4;
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  v36 = *(v0 + 184);
  v37 = v6;
  *&v38 = *(v0 + 216);
  v7 = *(v0 + 104);
  v8 = *(v0 + 136);
  v32 = *(v0 + 120);
  v33 = v8;
  v34 = *(v0 + 152);
  v35 = v5;
  v30 = *(v0 + 88);
  v31 = v7;
  v9 = BYTE8(v62[0]);
  v29[0] = *(v0 + 225);
  v10 = *(v0 + 168);
  v11 = *(v0 + 200);
  v63[6] = *(v0 + 184);
  v63[7] = v11;
  v64 = *(v0 + 216);
  v12 = *(v0 + 104);
  v13 = *(v0 + 136);
  v63[2] = *(v0 + 120);
  v63[3] = v13;
  v63[4] = *(v0 + 152);
  v63[5] = v10;
  v63[0] = *(v0 + 88);
  v63[1] = v12;
  v66 = *(v0 + 225);
  v65 = BYTE8(v62[0]);
  if (sub_2D2750(v63) == 1)
  {
    v58 = v36;
    v59 = v37;
    *v60 = v38;
    v54 = v32;
    v55 = v33;
    v56 = v34;
    v57 = v35;
    v52 = v30;
    v53 = v31;
    v60[8] = BYTE8(v62[0]);
    *&v60[9] = v29[0];
    sub_EB00(v61, v50, &qword_40D648);
    sub_EB68(&v52, &qword_40D648);
  }

  else
  {
    v58 = v36;
    v59 = v37;
    *v60 = v38;
    v54 = v32;
    v55 = v33;
    v56 = v34;
    v57 = v35;
    v52 = v30;
    v53 = v31;
    v60[8] = BYTE8(v62[0]);
    *&v60[9] = v29[0];
    sub_EB00(v61, v50, &qword_40D648);
    sub_EB68(&v52, &qword_40D648);
    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  v14 = *(v0 + 200);
  v50[6] = *(v0 + 184);
  v50[7] = v14;
  *v51 = *(v0 + 216);
  *&v51[9] = *(v0 + 225);
  v15 = *(v0 + 136);
  v50[2] = *(v0 + 120);
  v50[3] = v15;
  v16 = *(v0 + 168);
  v50[4] = *(v0 + 152);
  v50[5] = v16;
  v17 = *(v0 + 104);
  v50[0] = *(v0 + 88);
  v50[1] = v17;
  v18 = *(v0 + 168);
  v19 = *(v0 + 200);
  v47 = *(v0 + 184);
  v48 = v19;
  v49 = *(v0 + 216);
  v20 = *(v0 + 104);
  v21 = *(v0 + 136);
  v43 = *(v0 + 120);
  v44 = v21;
  v45 = *(v0 + 152);
  v46 = v18;
  v41 = *(v0 + 88);
  v42 = v20;
  v22 = *&v51[16];
  v23 = v51[24];
  v24 = *(v0 + 168);
  v25 = *(v0 + 200);
  v58 = *(v0 + 184);
  v59 = v25;
  *v60 = *(v0 + 216);
  v26 = *(v0 + 104);
  v27 = *(v0 + 136);
  v54 = *(v0 + 120);
  v55 = v27;
  v56 = *(v0 + 152);
  v57 = v24;
  v52 = *(v0 + 88);
  v53 = v26;
  *&v60[16] = *&v51[16];
  v60[24] = v51[24];
  if (sub_2D2750(&v52) == 1)
  {
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v30 = v41;
    v31 = v42;
    v39 = v22;
    v40 = v23;
    sub_EB00(v50, v29, &qword_40D648);
    sub_EB68(&v30, &qword_40D648);
    return 0;
  }

  v36 = v47;
  v37 = v48;
  v38 = v49;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v35 = v46;
  v30 = v41;
  v31 = v42;
  v39 = v22;
  v40 = v23;
  sub_EB00(v50, v29, &qword_40D648);
  sub_EB68(&v30, &qword_40D648);
  if (v23)
  {
    return 0;
  }

  return v22 >= 1.0;
}

uint64_t sub_2D1890(uint64_t a1)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40D9F0);
  __chkstk_darwin(v2);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF28);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_303748();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v29 - v15);
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews25SmartPlayButtonController_currentPlayState;
  swift_beginAccess();
  sub_EB00(v1 + v20, v10, &qword_3FBF28);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_EB68(v10, &qword_3FBF28);
    sub_1DC68(v31, v7);
    (*(v12 + 56))(v7, 0, 1, v11);
    return sub_2D05B0(v7);
  }

  sub_EF98C(v10, v19);
  v22 = &v4[*(v2 + 48)];
  v23 = v31;
  sub_1DC68(v31, v4);
  sub_1DC68(v19, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = v19;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
LABEL_23:
          sub_2B454(v19);
          goto LABEL_24;
        }
      }

      else
      {
        v28 = v30;
        sub_1DC68(v4, v30);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_2B454(v25);
          sub_EB68(v22, &unk_40BAB0);
          sub_EB68(v28, &unk_40BAB0);
LABEL_24:
          v27 = v4;
          return sub_2B454(v27);
        }

        sub_EB68(v28, &unk_40BAB0);
      }
    }

LABEL_20:
    sub_1DC68(v23, v7);
    (*(v12 + 56))(v7, 0, 1, v11);
    sub_2D05B0(v7);
    sub_2B454(v25);
    return sub_EB68(v4, &qword_40D9F0);
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_23;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  sub_1DC68(v4, v16);
  v26 = v16[1];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_20;
  }

  if (*(v16 + 16) == *(v22 + 16))
  {
    if (v26 != *(v22 + 8))
    {
      sub_1DC68(v23, v7);
      (*(v12 + 56))(v7, 0, 1, v11);
      sub_2D05B0(v7);
    }

    goto LABEL_23;
  }

  sub_2B454(v4);
  sub_1DC68(v23, v7);
  (*(v12 + 56))(v7, 0, 1, v11);
  sub_2D05B0(v7);
  v27 = v19;
  return sub_2B454(v27);
}

uint64_t SmartPlayButtonController.deinit()
{
  swift_unknownObjectWeakDestroy();

  sub_EB68(v0 + 48, &qword_401320);
  v1 = *(v0 + 200);
  v6[6] = *(v0 + 184);
  v6[7] = v1;
  v7[0] = *(v0 + 216);
  *(v7 + 9) = *(v0 + 225);
  v2 = *(v0 + 136);
  v6[2] = *(v0 + 120);
  v6[3] = v2;
  v3 = *(v0 + 168);
  v6[4] = *(v0 + 152);
  v6[5] = v3;
  v4 = *(v0 + 104);
  v6[0] = *(v0 + 88);
  v6[1] = v4;
  sub_EB68(v6, &qword_40D648);

  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews25SmartPlayButtonController_currentPlayState, &qword_3FBF28);
  return v0;
}

uint64_t SmartPlayButtonController.__deallocating_deinit()
{
  SmartPlayButtonController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2D1E90(char *a1)
{
  v2 = *a1;
  if (*(v1 + 88))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 80);
  }

  v4 = sub_303138();
  v6 = v5;
  if (v4 == sub_303138() && v6 == v7)
  {

    goto LABEL_16;
  }

  v9 = sub_30D728();

  if (v9)
  {
LABEL_16:
    if (v3 > 1)
    {
      v13 = [objc_opt_self() mainBundle];
      v25._countAndFlagsBits = 0xD000000000000015;
      v24._countAndFlagsBits = 0xE000000000000000;
      v25._object = 0x8000000000345730;
      v27.value._countAndFlagsBits = 0;
      v27.value._object = 0;
      v14.super.isa = v13;
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      sub_301AB8(v25, v27, v14, v30, v24);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_315430;
      *(v15 + 56) = &type metadata for Int64;
      *(v15 + 64) = &protocol witness table for Int64;
      *(v15 + 32) = v3;
LABEL_18:
      v16 = sub_30C0A8();

      return v16;
    }

    v11 = [objc_opt_self() mainBundle];
    if ((v2 & 1) == 0)
    {
      v19 = "SMART_PLAY_BUTTON_PLAY_TRAILER";
      v24._countAndFlagsBits = 0xE000000000000000;
      v12._countAndFlagsBits = 0xD000000000000019;
      goto LABEL_23;
    }

    v18 = "SMART_PLAY_BUTTON_PLAY_TRAILER";
LABEL_21:
    v19 = v18 - 32;
    v24._countAndFlagsBits = 0xE000000000000000;
    v12._countAndFlagsBits = 0xD00000000000001ELL;
LABEL_23:
    v12._object = (v19 | 0x8000000000000000);
    goto LABEL_25;
  }

  if (v3 <= 0 || (*(v1 + 72) & 1) != 0 || (v10 = *(v1 + 64), v10 < 1))
  {
    v11 = [objc_opt_self() mainBundle];
    v24._countAndFlagsBits = 0xE000000000000000;
    v12._object = 0x80000000003454F0;
    v12._countAndFlagsBits = 0xD000000000000016;
    goto LABEL_25;
  }

  if (v3 != 1 || v10 != 1)
  {
    v11 = [objc_opt_self() mainBundle];
    if (v2)
    {
      v24._countAndFlagsBits = 0xE000000000000000;
      v26._countAndFlagsBits = 0xD000000000000017;
      v26._object = 0x8000000000337A90;
      v29.value._countAndFlagsBits = 0;
      v29.value._object = 0;
      v22.super.isa = v11;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      sub_301AB8(v26, v29, v22, v32, v24);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_315420;
      *(v23 + 56) = &type metadata for Int64;
      *(v23 + 64) = &protocol witness table for Int64;
      *(v23 + 32) = v3;
      *(v23 + 96) = &type metadata for Int64;
      *(v23 + 104) = &protocol witness table for Int64;
      *(v23 + 72) = v10;
      goto LABEL_18;
    }

    v18 = "SMART_PLAY_BUTTON_NEXT_EPISODE";
    goto LABEL_21;
  }

  v11 = [objc_opt_self() mainBundle];
  v24._countAndFlagsBits = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD00000000000001FLL;
  v12._object = 0x80000000003456D0;
LABEL_25:
  v28.value._countAndFlagsBits = 0;
  v28.value._object = 0;
  v20.super.isa = v11;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v21 = sub_301AB8(v12, v28, v20, v31, v24);

  return v21;
}

uint64_t sub_2D227C(char *a1)
{
  v2 = *a1;
  v3 = sub_303138();
  v5 = v4;
  if (v3 == sub_303138() && v5 == v6)
  {

LABEL_11:
    v9 = [objc_opt_self() mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    if (v2)
    {
      v10._countAndFlagsBits = 0xD00000000000001ELL;
      v10._object = 0x80000000003456F0;
    }

    else
    {
      v10._countAndFlagsBits = 0xD000000000000019;
      v10._object = 0x8000000000345710;
    }

    goto LABEL_15;
  }

  v8 = sub_30D728();

  if (v8)
  {
    goto LABEL_11;
  }

  if ((*(v1 + 120) & 1) != 0 || *(v1 + 112) != 4)
  {
    v9 = [objc_opt_self() mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v10._countAndFlagsBits = 0xD000000000000020;
    v10._object = 0x8000000000345750;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    if (v2)
    {
      v10._object = 0x80000000003454F0;
      v10._countAndFlagsBits = 0xD000000000000016;
    }

    else
    {
      v10._countAndFlagsBits = 0xD00000000000001FLL;
      v10._object = 0x80000000003456D0;
    }
  }

LABEL_15:
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v11.super.isa = v9;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v12 = sub_301AB8(v10, v15, v11, v16, v14);

  return v12;
}

uint64_t sub_2D247C@<X0>(uint64_t a1@<X8>)
{
  v25 = sub_30B208();
  v21 = sub_30B1E8();
  v24 = sub_30B1F8();
  v23 = sub_30B238();
  v3 = v2;
  v22 = sub_30B1B8();
  v5 = v4;
  v6 = sub_30B218();
  v19 = v7;
  v20 = v6;
  v8 = sub_30B1C8();
  v10 = v9;
  v11 = sub_30B1A8();
  v13 = v12;
  v14 = sub_30B228();
  v16 = v15;
  result = sub_30B1D8();
  *a1 = v25;
  *(a1 + 1) = v21 & 1;
  *(a1 + 8) = v24;
  *(a1 + 16) = v23;
  *(a1 + 24) = v3 & 1;
  *(a1 + 32) = v22;
  *(a1 + 40) = v5 & 1;
  *(a1 + 48) = v20;
  *(a1 + 56) = v19;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10 & 1;
  *(a1 + 80) = v11;
  *(a1 + 88) = v13 & 1;
  *(a1 + 96) = v14;
  *(a1 + 104) = v16;
  *(a1 + 112) = result;
  *(a1 + 120) = v18 & 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  return result;
}

uint64_t sub_2D25DC@<X0>(uint64_t a1@<X8>)
{
  v28 = sub_3081C8();
  v24 = sub_308168();
  v27 = sub_3081B8();
  v26 = sub_3081F8();
  v3 = v2;
  v25 = sub_3080F8();
  v5 = v4;
  v6 = sub_3081D8();
  v22 = v7;
  v23 = v6;
  v21 = sub_308108();
  v9 = v8;
  v20 = sub_3080E8();
  v11 = v10;
  v12 = sub_3081E8();
  v14 = v13;
  v15 = sub_308118();
  v17 = v16;
  result = sub_3080C8();
  *a1 = v28;
  *(a1 + 1) = v24 & 1;
  *(a1 + 8) = v27;
  *(a1 + 16) = v26;
  *(a1 + 24) = v3 & 1;
  *(a1 + 32) = v25;
  *(a1 + 40) = v5 & 1;
  *(a1 + 48) = v23;
  *(a1 + 56) = v22;
  *(a1 + 64) = v21;
  *(a1 + 72) = v9 & 1;
  *(a1 + 80) = v20;
  *(a1 + 88) = v11 & 1;
  *(a1 + 96) = v12;
  *(a1 + 104) = v14;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = v15;
  *(a1 + 136) = v17 & 1;
  *(a1 + 144) = result;
  *(a1 + 152) = v19 & 1;
  return result;
}

uint64_t sub_2D2750(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_2D27B0()
{
  result = qword_40D780;
  if (!qword_40D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40D780);
  }

  return result;
}

unint64_t sub_2D2808()
{
  result = qword_40D788;
  if (!qword_40D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40D788);
  }

  return result;
}

uint64_t type metadata accessor for SmartPlayButtonController()
{
  result = qword_40D7B8;
  if (!qword_40D7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2D28D0()
{
  sub_2D2A68();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of SmartPlayButtonController.apply(model:)()
{
  return (*(*v0 + 360))();
}

{
  return (*(*v0 + 368))();
}

void sub_2D2A68()
{
  if (!qword_40D7C8)
  {
    sub_303748();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_40D7C8);
    }
  }
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_2D2AF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 153))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2D2B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_2D2BDC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2D2C14()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2D2C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBF28);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2D2CD0()
{

  if (*(v0 + 88) != 1)
  {
  }

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_2D2D40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_2D2F10()
{
  v1 = [v0 subviews];
  sub_293E0();
  v2 = sub_30C368();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_30D578();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isHidden])
      {
      }

      else
      {
        sub_30D5A8();
        sub_30D5E8();
        sub_30D5F8();
        sub_30D5B8();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

unint64_t sub_2D30F0()
{
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_axis];
  result = sub_2D2F10();
  v3 = result;
  if (result >> 62)
  {
    result = sub_30D668();
    v4 = result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_30D578();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    [v0 frame];
    [v7 sizeThatFits:{v8, v9}];
    v11 = v10;
    v13 = v12;
    [v0 frame];
    if (v1)
    {
      if (v14 < v11)
      {
        [v0 frame];
        v11 = v16;
      }
    }

    else if (v15 < v13)
    {
      [v0 frame];
      v13 = v17;
    }

    [v7 setFrame:{0.0, 0.0, v11, v13}];
  }

LABEL_15:
}

unint64_t sub_2D326C()
{
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_axis];
  v3 = [v0 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1 && v1 == 0;
  v4 = sub_2D2F10();
  v56 = v4;
  if (v4 >> 62)
  {
LABEL_88:
    v5 = sub_30D668();
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_89:
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_89;
  }

LABEL_9:
  v6 = 0;
  v60 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_distribution];
  v59 = OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_spacing;
  v62 = v56 & 0xFFFFFFFFFFFFFF8;
  v63 = v56 & 0xC000000000000001;
  v61 = v56 + 32;
  v58 = v3;
  v57 = v5;
  while (1)
  {
    if (v63)
    {
      v8 = sub_30D578();
    }

    else
    {
      if (v6 >= *(v62 + 16))
      {
        goto LABEL_85;
      }

      v8 = *(v61 + 8 * v6);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    MaxX = 0.0;
    if (v3)
    {
      [v0 bounds];
      MaxX = CGRectGetMaxX(v65);
    }

    if (v6)
    {
      break;
    }

LABEL_61:
    if (v1)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = MaxX;
    }

    if (v3)
    {
      [v9 frame];
      v50 = MaxX - v51;
    }

    if (!v1)
    {
      MaxX = 0.0;
    }

    [v9 frame];
    [v9 setFrame:{v50, MaxX}];

    v6 = v10;
    if (v10 == v5)
    {
      goto LABEL_89;
    }
  }

  v11 = [v0 subviews];
  sub_293E0();
  v12 = sub_30C368();

  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_30D578();
  }

  else
  {
    if (v6 > *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_86;
    }

    v13 = *(v12 + 8 * (v6 - 1) + 32);
  }

  v14 = v13;

  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  if (!v1)
  {
    if (!v3)
    {
      MinX = CGRectGetMaxX(*&v23);
      goto LABEL_37;
    }

    MinX = CGRectGetMinX(*&v23);
    if ((v60[8] & 1) != 0 || *v60 != 3)
    {
LABEL_80:
      v49 = -*&v0[v59];
      goto LABEL_60;
    }

    v28 = MinX;
    result = sub_2D2F10();
    v30 = result;
    if (result >> 62)
    {
      result = sub_30D668();
      v31 = result;
      if (result)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v31 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (v31)
      {
LABEL_30:
        if (v31 < 1)
        {
          goto LABEL_93;
        }

        v32 = 0;
        v33 = 0.0;
        do
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v34 = sub_30D578();
          }

          else
          {
            v34 = *(v30 + 8 * v32 + 32);
          }

          v35 = v34;
          ++v32;
          [v34 frame];
          Width = CGRectGetWidth(v66);

          v33 = v33 + Width;
        }

        while (v31 != v32);
        goto LABEL_72;
      }
    }

    v33 = 0.0;
LABEL_72:

    [v0 frame];
    if (v33 >= CGRectGetWidth(v70))
    {
      v49 = -*&v0[v59];
      goto LABEL_67;
    }

    v52 = sub_2D2F10();
    v3 = v58;
    v5 = v57;
    if (v52 >> 62)
    {
      v53 = sub_30D668();
    }

    else
    {
      v53 = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
    }

    MinX = v28;
    if (v53 > 1)
    {
      v54 = sub_2D2F10();
      if (v54 >> 62)
      {
        v55 = sub_30D668();
      }

      else
      {
        v55 = *(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8));
      }

      if (__OFSUB__(v55, 1))
      {
        goto LABEL_94;
      }

      [v0 frame];
      v49 = -((CGRectGetWidth(v71) - v33) / (v55 - 1));
      MinX = v28;
      goto LABEL_60;
    }

    goto LABEL_80;
  }

  MinX = CGRectGetMaxY(*&v23);
LABEL_37:
  if ((v60[8] & 1) != 0 || *v60 != 3)
  {
LABEL_59:
    v49 = *&v0[v59];
    goto LABEL_60;
  }

  v28 = MinX;
  v37 = sub_2D2F10();
  v38 = v37;
  if (v37 >> 62)
  {
    v39 = sub_30D668();
    if (v39)
    {
      goto LABEL_41;
    }

LABEL_50:
    v41 = 0.0;
    goto LABEL_51;
  }

  v39 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
  if (!v39)
  {
    goto LABEL_50;
  }

LABEL_41:
  if (v39 < 1)
  {
    goto LABEL_87;
  }

  v40 = 0;
  v41 = 0.0;
  do
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      v42 = sub_30D578();
    }

    else
    {
      v42 = *(v38 + 8 * v40 + 32);
    }

    v43 = v42;
    ++v40;
    [v42 frame];
    v44 = CGRectGetWidth(v67);

    v41 = v41 + v44;
  }

  while (v39 != v40);
LABEL_51:

  [v0 frame];
  if (v41 >= CGRectGetWidth(v68))
  {
    v49 = *&v0[v59];
LABEL_67:
    MinX = v28;
    v3 = v58;
    v5 = v57;
    goto LABEL_60;
  }

  v45 = sub_2D2F10();
  v3 = v58;
  v5 = v57;
  if (v45 >> 62)
  {
    v46 = sub_30D668();
  }

  else
  {
    v46 = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8));
  }

  MinX = v28;
  if (v46 <= 1)
  {
    goto LABEL_59;
  }

  v47 = sub_2D2F10();
  if (v47 >> 62)
  {
    v48 = sub_30D668();
  }

  else
  {
    v48 = *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8));
  }

  if (!__OFSUB__(v48, 1))
  {
    [v0 frame];
    v49 = (CGRectGetWidth(v69) - v41) / (v48 - 1);
    MinX = v28;
LABEL_60:
    MaxX = v49 + MinX;
    goto LABEL_61;
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

unint64_t sub_2D3888()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_axis];
  result = sub_2D2F10();
  v11 = result;
  if (result >> 62)
  {
    result = sub_30D668();
    v12 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_33:
  }

  v12 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (!v12)
  {
    goto LABEL_33;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_alignment;
    while (1)
    {
      v23 = (v11 & 0xC000000000000001) != 0 ? sub_30D578() : *(v11 + 8 * v13 + 32);
      v24 = v23;
      v25 = *&v0[v14];
      if (v25 > 2)
      {
        break;
      }

      if (!v25)
      {
        v31 = v2;
        v32 = v4;
        v33 = v6;
        v34 = v8;
        if (v9)
        {
          CGRectGetWidth(*&v31);
        }

        else
        {
          CGRectGetHeight(*&v31);
        }

        goto LABEL_27;
      }

      if (v25 == 1)
      {
        [v23 frame];
        if (v9)
        {
          v22 = 0.0;
        }

        v21 = v24;
LABEL_7:
        [v21 setFrame:v22];
      }

LABEL_8:
      ++v13;

      if (v12 == v13)
      {
        goto LABEL_33;
      }
    }

    if (v25 == 3)
    {
      v26 = v2;
      v27 = v4;
      v28 = v6;
      v29 = v8;
      if (v9)
      {
        v30 = CGRectGetWidth(*&v26) * 0.5;
        [v24 center];
        [v24 setCenter:v30];
      }

      else
      {
        CGRectGetHeight(*&v26);
        [v24 center];
        [v24 setCenter:?];
      }

      goto LABEL_8;
    }

    if (v25 != 4)
    {
      if (v25 != 5 || v9)
      {
        goto LABEL_8;
      }

      v38.origin.x = v2;
      v38.origin.y = v4;
      v38.size.width = v6;
      v38.size.height = v8;
      CGRectGetHeight(v38);
      [v24 frame];
      CGRectGetHeight(v39);
      [v24 lastBaselineFromBottom];
      goto LABEL_27;
    }

    v15 = v2;
    v16 = v4;
    v17 = v6;
    v18 = v8;
    if (!v9)
    {
      CGRectGetHeight(*&v15);
      [v24 frame];
      CGRectGetHeight(v40);
LABEL_27:
      [v24 frame];
      [v24 setFrame:v35];
      goto LABEL_8;
    }

    Width = CGRectGetWidth(*&v15);
    [v24 frame];
    v20 = Width - CGRectGetWidth(v37);
    [v24 frame];
    v21 = v24;
    v22 = v20;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2D3BB0(double a1, double a2)
{
  v5 = [v2 subviews];
  sub_293E0();
  v6 = sub_30C368();

  if (v6 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)); ; i = sub_30D668())
  {

    if (!i)
    {
      break;
    }

    v9 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_axis];
    v10 = sub_2D2F10();
    v11 = v10;
    if (v10 >> 62)
    {
      v12 = sub_30D668();
    }

    else
    {
      v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    }

    v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_alignment;
    v14 = 0.0;
    if (!v12)
    {
    }

    v44 = OBJC_IVAR____TtC23ShelfKitCollectionViews9StackView_spacing;
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = sub_30D578();
    }

    else
    {
      if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v15 = *(v11 + 32);
    }

    v16 = v15;
    [v15 sizeThatFits:{a1, a2, v44}];
    v19 = v18;
    v20 = v17;
    if (v17 > a2 && v9 == 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = v17;
    }

    v46 = a1;
    if (*&v2[v13] == 5)
    {
      [v16 lastBaselineFromBottom];
      v24 = v23;

      v22 = v22 - v24;
      a1 = v46;
    }

    else
    {

      if (v19 <= a1)
      {
        v25 = v19;
      }

      else
      {
        v25 = a1;
      }

      if (!v9)
      {
        v25 = v19;
      }

      if (v25 < 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v25;
      }
    }

    if (v22 < 0.0)
    {
      v22 = 0.0;
    }

    if (v9)
    {
      v26 = v20;
    }

    else
    {
      v26 = v19;
    }

    v27 = v26 + 0.0;
    if (v12 == 1)
    {
    }

    for (j = 5; ; ++j)
    {
      v29 = j - 4;
      if ((v11 & 0xC000000000000001) != 0)
      {
        v30 = sub_30D578();
      }

      else
      {
        if (v29 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_63;
        }

        v30 = *(v11 + 8 * j);
      }

      v31 = v30;
      v32 = __OFADD__(v29, 1);
      v33 = j - 3;
      if (v32)
      {
        break;
      }

      [v30 sizeThatFits:{a1, a2}];
      v36 = v35;
      v37 = v34;
      if (v34 > a2 && v9 == 0)
      {
        v39 = a2;
      }

      else
      {
        v39 = v34;
      }

      if (*&v2[v13] == 5)
      {
        [v31 lastBaselineFromBottom];
        v41 = v40;

        v39 = v39 - v41;
        a1 = v46;
      }

      else
      {

        if (v36 <= a1)
        {
          v42 = v36;
        }

        else
        {
          v42 = a1;
        }

        if (!v9)
        {
          v42 = v36;
        }

        if (v14 <= v42)
        {
          v14 = v42;
        }
      }

      if (v22 <= v39)
      {
        v22 = v39;
      }

      if (v9)
      {
        v43 = v37;
      }

      else
      {
        v43 = v36;
      }

      v27 = v27 + v43;
      if (v43 > 0.0)
      {
        v27 = v27 + *&v2[v45];
      }

      if (v33 == v12)
      {
      }
    }

LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

  return result;
}

id sub_2D3F4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_2D3FA4()
{
  result = -1.79769313e308;
  xmmword_42B000 = xmmword_333B80;
  return result;
}

uint64_t StandardGridSpec.basePageMargin(for:)()
{
  if (qword_3FAF90 != -1)
  {
    result = swift_once();
  }

  if (*&xmmword_42B000 > *(&xmmword_42B000 + 1))
  {
    __break(1u);
  }

  return result;
}

char *sub_2D40DC(void *a1)
{
  result = [a1 userInterfaceIdiom];
  if (result == &dword_0 + 1)
  {
    return [a1 horizontalSizeClass];
  }

  return result;
}

void sub_2D4234(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_124C4(0, &qword_4019C0);
  v5 = sub_30C978();
  v6 = objc_opt_self();
  if (v5)
  {
    v7 = 12.0;
    v8 = -1;
  }

  else
  {
    v7 = 24.0;
    v8 = 2;
  }

  v9 = [v6 configurationWithPointSize:4 weight:v8 scale:v7];
  v10 = sub_30C098();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  if (v11)
  {
    v12 = [v11 imageWithRenderingMode:2];

    if (v12)
    {
      *a4 = v12;
      return;
    }
  }

  else
  {
  }

  __break(1u);
}

void sub_2D4430()
{
  [v0 bounds];
  [v0 sizeThatFits:{v1, v2}];
  v4 = v3;
  [v0 bounds];
  if (CGRectGetWidth(v6) >= v4)
  {
    v5 = [v0 traitCollection];
    sub_30C968();
  }

  else
  {
    [v0 bounds];
    CGRectGetWidth(v7);
    if (qword_3FAF98 != -1)
    {
      swift_once();
    }

    [qword_40DA40 size];
  }
}

void sub_2D4540(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v55.receiver = v4;
  v55.super_class = type metadata accessor for StarRatingControl();
  objc_msgSendSuper2(&v55, "drawRect:", a1, a2, a3, a4);
  v9 = [v4 effectiveUserInterfaceLayoutDirection];
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_hasRTLTransformSet;
  if (v9 == &dword_0 + 1)
  {
    if (v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_hasRTLTransformSet])
    {
      goto LABEL_7;
    }

    v11 = [v4 layer];
    CATransform3DMakeScale(&v54, -1.0, 1.0, 1.0);
    [v11 setTransform:&v54];
    v12 = 1;
  }

  else
  {
    if (!v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_hasRTLTransformSet])
    {
      goto LABEL_7;
    }

    v11 = [v4 layer];
    v13 = *&CATransform3DIdentity.m33;
    *&v54.m31 = *&CATransform3DIdentity.m31;
    *&v54.m33 = v13;
    v14 = *&CATransform3DIdentity.m43;
    *&v54.m41 = *&CATransform3DIdentity.m41;
    *&v54.m43 = v14;
    v15 = *&CATransform3DIdentity.m13;
    *&v54.m11 = *&CATransform3DIdentity.m11;
    *&v54.m13 = v15;
    v16 = *&CATransform3DIdentity.m23;
    *&v54.m21 = *&CATransform3DIdentity.m21;
    *&v54.m23 = v16;
    [v11 setTransform:&v54];
    v12 = 0;
  }

  v4[v10] = v12;
LABEL_7:
  v17 = UIGraphicsGetCurrentContext();
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    v20 = [v4 tintColor];
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = v20;
    v22 = [v20 CGColor];

    CGContextSetFillColorWithColor(v19, v22);
  }

  [v4 bounds];
  MidY = CGRectGetMidY(v56);
  if (qword_3FAF98 != -1)
  {
    swift_once();
  }

  v24 = qword_40DA40;
  [qword_40DA40 size];
  v26 = MidY + v25 * -0.5;
  [v24 size];
  v28 = v27;
  sub_2D4430();
  v30 = v29;
  [v4 intrinsicContentSize];
  v32 = v31;
  v57.origin.x = a1;
  v57.origin.y = a2;
  v57.size.width = a3;
  v57.size.height = a4;
  Width = CGRectGetWidth(v57);
  v34 = a4;
  v35 = a3;
  v36 = 0.0;
  if (v32 < Width)
  {
    v37 = a1;
    v38 = a2;
    v36 = (CGRectGetWidth(*(&v35 - 2)) - v32) * 0.5;
  }

  v39 = ceil(v26);
  v40 = v28 + v30;
  v41 = OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating;
  v42 = floor(v36 + (v28 + v30) * 0.0);
  v43 = v24;
  if (!*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating])
  {
    if (qword_3FAFA0 != -1)
    {
      v53 = v42;
      swift_once();
      v42 = v53;
    }

    v43 = qword_40DA48;
  }

  [v43 drawAtPoint:{v42, v39, v35, v34}];
  v44 = floor(v36 + v40);
  v45 = v24;
  if (*&v4[v41] <= 1uLL)
  {
    if (qword_3FAFA0 != -1)
    {
      v50 = v44;
      swift_once();
      v44 = v50;
    }

    v45 = qword_40DA48;
  }

  [v45 drawAtPoint:{v44, v39}];
  v46 = floor(v36 + v40 + v40);
  v47 = v24;
  if (*&v4[v41] <= 2uLL)
  {
    if (qword_3FAFA0 != -1)
    {
      v51 = v46;
      swift_once();
      v46 = v51;
    }

    v47 = qword_40DA48;
  }

  [v47 drawAtPoint:{v46, v39}];
  v48 = floor(v36 + v40 * 3.0);
  v49 = v24;
  if (*&v4[v41] <= 3uLL)
  {
    if (qword_3FAFA0 != -1)
    {
      v52 = v48;
      swift_once();
      v48 = v52;
    }

    v49 = qword_40DA48;
  }

  [v49 drawAtPoint:{v48, v39}];
  if (*&v4[v41] <= 4uLL)
  {
    if (qword_3FAFA0 != -1)
    {
      swift_once();
    }

    v24 = qword_40DA48;
  }

  [v24 drawAtPoint:{floor(v36 + v40 * 4.0), v39}];
}

uint64_t sub_2D4A6C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v4 locationInView:v5];
  sub_2D4BC4(v6);
  v7 = *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating];
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating] = v8;
  if (v7 != v8)
  {
    [v5 setNeedsDisplay];
  }

  return 1;
}

void sub_2D4BC4(double a1)
{
  sub_2D4430();
  v4 = v3;
  if (qword_3FAF98 != -1)
  {
    swift_once();
  }

  [qword_40DA40 size];
  v6 = (v4 + v5) * 5.0 - v4;
  v7 = (v4 + v6) / 5.0;
  [v1 frame];
  Width = CGRectGetWidth(v12);
  v9 = 0.0;
  if (v6 < Width)
  {
    [v1 frame];
    v9 = (CGRectGetWidth(v13) - v6) * 0.5;
  }

  v10 = (a1 - v9) / v7;
  if (v10 > 5.0)
  {
    v10 = 5.0;
  }

  if (v10 <= 1.0)
  {
    v10 = 1.0;
  }

  v11 = ceil(v10);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v11 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
  }
}

void sub_2D4F44(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_30C0D8();
    v6 = a1;
    v7 = sub_30C098();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for StarRatingControl();
  objc_msgSendSuper2(&v9, *a4, v7);
}

void *sub_2D5054()
{
  v1 = v0;
  v2 = _swiftEmptyArrayStorage;
  v25 = _swiftEmptyArrayStorage;
  v22 = objc_opt_self();
  v3 = 0;
  v21 = xmmword_315430;
  do
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = "accessibilitySetStarRatingZero";
        goto LABEL_18;
      }

      if (v3 == 1)
      {
        v4 = "accessibilitySetStarRatingOne";
        goto LABEL_18;
      }
    }

    else
    {
      switch(v3)
      {
        case 2:
          v4 = "accessibilitySetStarRatingTwo";
          goto LABEL_18;
        case 3:
          v4 = "accessibilitySetStarRatingThree";
          goto LABEL_18;
        case 4:
          v4 = "accessibilitySetStarRatingFour";
          goto LABEL_18;
      }
    }

    if (v3 == 5)
    {
      v4 = "accessibilitySetStarRatingFive";
    }

    else
    {
      v4 = 0;
    }

LABEL_18:
    v5 = [v22 mainBundle];
    v20._countAndFlagsBits = 0xE000000000000000;
    v26._object = 0x80000000003459C0;
    v26._countAndFlagsBits = 0xD00000000000001FLL;
    v27.value._countAndFlagsBits = 0;
    v27.value._object = 0;
    v6.super.isa = v5;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_301AB8(v26, v27, v6, v28, v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
    v7 = swift_allocObject();
    *(v7 + 16) = v21;
    *(v7 + 56) = &type metadata for UInt;
    *(v7 + 64) = &protocol witness table for UInt;
    *(v7 + 32) = v3;
    sub_30C0A8();

    if (v4)
    {
      v24 = type metadata accessor for StarRatingControl();
      v23[0] = v1;
      v8 = v1;
      v9 = sub_30C098();

      v10 = v24;
      if (v24)
      {
        v11 = __swift_project_boxed_opaque_existential_1Tm(v23, v24);
        v12 = *(v10 - 8);
        v13 = __chkstk_darwin(v11);
        v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v12 + 16))(v15, v13);
        v16 = sub_30D718();
        (*(v12 + 8))(v15, v10);
        __swift_destroy_boxed_opaque_existential_1(v23);
      }

      else
      {
        v16 = 0;
      }

      v17 = [objc_allocWithZone(UIAccessibilityCustomAction) initWithName:v9 target:v16 selector:v4];

      swift_unknownObjectRelease();
      v18 = v17;
      sub_30C348();
      if (*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v25 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_30C378();
      }

      sub_30C3C8();

      v2 = v25;
    }

    else
    {
    }

    ++v3;
  }

  while (v3 != 6);
  return v2;
}

uint64_t sub_2D5484(uint64_t a1)
{
  v3 = sub_306E68();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_306E88();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_306EA8();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating;
  v14 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating] = a1;
  if (v14 != a1)
  {
    [v1 setNeedsDisplay];
    a1 = *&v1[v13];
  }

  v15 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_lastSentRating];
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_lastSentRating] = a1;
  if (v15 != a1)
  {
    [v1 sendActionsForControlEvents:4096];
  }

  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v39._countAndFlagsBits = 0xE000000000000000;
  v55._object = 0x8000000000345950;
  v55._countAndFlagsBits = 0xD000000000000017;
  v59.value._countAndFlagsBits = 0;
  v59.value._object = 0;
  v18.super.isa = v17;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v19 = sub_301AB8(v55, v59, v18, v61, v39);
  v21 = v20;

  aBlock = v19;
  v50 = v21;

  v56._countAndFlagsBits = 8236;
  v56._object = 0xE200000000000000;
  sub_30C238(v56);

  v23 = aBlock;
  v22 = v50;
  v24 = [v16 mainBundle];
  v40._countAndFlagsBits = 0xE000000000000000;
  v57._countAndFlagsBits = 0xD00000000000001DLL;
  v57._object = 0x8000000000345970;
  v60.value._countAndFlagsBits = 0;
  v60.value._object = 0;
  v25.super.isa = v24;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v26 = sub_301AB8(v57, v60, v25, v62, v40);
  v28 = v27;

  aBlock = v23;
  v50 = v22;

  v58._countAndFlagsBits = v26;
  v58._object = v28;
  sub_30C238(v58);

  v29 = aBlock;
  v30 = v50;
  sub_124C4(0, &qword_3FBF20);
  v31 = sub_30C8F8();
  sub_306E98();
  sub_306F08();
  v41 = *(v6 + 8);
  v32 = v42;
  v41(v8, v42);
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  *(v33 + 24) = v30;
  v53 = sub_2D5C94;
  v54 = v33;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_914CC;
  v52 = &block_descriptor_73;
  v34 = _Block_copy(&aBlock);

  v35 = v43;
  sub_306E78();
  aBlock = _swiftEmptyArrayStorage;
  sub_943D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
  sub_9442C();
  v36 = v45;
  v37 = v48;
  sub_30D488();
  sub_30C8C8();
  _Block_release(v34);

  (*(v47 + 8))(v36, v37);
  (*(v44 + 8))(v35, v46);
  return (v41)(v12, v32);
}

void sub_2D5998()
{
  v0 = UIAccessibilityAnnouncementNotification;
  v1 = sub_30C098();
  UIAccessibilityPostNotification(v0, v1);
}

id sub_2D5C00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StarRatingControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2D5C5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_2D5CB4()
{
  v1 = v0;
  if (qword_3FAF98 != -1)
  {
    swift_once();
  }

  [qword_40DA40 size];
  v3 = v2;
  v4 = [v0 traitCollection];
  v5 = sub_30C968();

  if (v5)
  {
    v6 = 4.0;
  }

  else
  {
    v6 = 11.0;
  }

  v7 = [v1 traitCollection];
  v8 = sub_30C968();

  if (v8)
  {
    v9 = 4.0;
  }

  else
  {
    v9 = 11.0;
  }

  return (v3 + v6) * 5.0 - v9;
}

void sub_2D5DB8(void *a1)
{
  if (a1)
  {
    [a1 locationInView:v1];
    sub_2D4BC4(v2);
    v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating;
    v5 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating];
    *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating] = v3;
    if (v5 != v3)
    {
      [v1 setNeedsDisplay];
      v3 = *&v1[v4];
    }

    v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_lastSentRating];
    *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_lastSentRating] = v3;
    if (v6 != v3)
    {

      [v1 sendActionsForControlEvents:4096];
    }
  }
}

void sub_2D5E5C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_30C968();

  if ((v3 & 1) == 0)
  {
    v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_lastSentRating];
    v5 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating];
    *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17StarRatingControl_rating] = v4;
    if (v5 != v4)
    {

      [v1 setNeedsDisplay];
    }
  }
}

uint64_t sub_2D5F00(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0xE000000000000000;
  v8._object = 0x80000000003459C0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v3.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_301AB8(v8, v9, v3, v10, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408110);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_315430;
  *(v4 + 56) = &type metadata for UInt;
  *(v4 + 64) = &protocol witness table for UInt;
  *(v4 + 32) = a1;
  v5 = sub_30C0A8();

  return v5;
}

id sub_2D60CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StatusBarBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2D6138()
{
  result = qword_40DAD0;
  if (!qword_40DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40DAD0);
  }

  return result;
}

uint64_t sub_2D618C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40C398);
    v1 = sub_30D698();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_1DA94((v25 + 8), v23);
    sub_1DA94(v23, v25);
    sub_30C0D8();
    sub_30D7F8();
    sub_30C1F8();
    v14 = sub_30D858();

    v15 = -1 << v1[32];
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v6[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v6[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v6[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v9) = v13;
    result = sub_1DA94(v25, (*(v1 + 7) + 32 * v9));
    ++*(v1 + 2);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}