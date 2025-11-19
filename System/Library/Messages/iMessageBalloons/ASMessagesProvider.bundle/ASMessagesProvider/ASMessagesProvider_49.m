uint64_t sub_57B43C@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  v29 = sub_767240();
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7602F0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = sub_7603E0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, v3 + v17, v13);
  sub_760310();
  (*(v14 + 8))(v16, v13);
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  sub_57DB60(&qword_95B460);
  sub_769430();
  sub_769430();
  if (v39[0] == v36[0] && v39[1] == v36[1])
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_76A950();
  }

  v19 = *(v7 + 8);
  v19(v9, v6);
  v19(v12, v6);

  sub_57B9B0(v39);
  if ((v30 & 1) == 0)
  {
    v23 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView);
    v37 = sub_22AFB8();
    v38 = &protocol witness table for UIImageView;
    v36[0] = v23;
    v24 = v23;
    sub_767280();
    v34 = sub_7672A0();
    v35 = &protocol witness table for Center;
    sub_B1B4(v33);
    sub_7672B0();
    (*(v28 + 104))(v5, enum case for Pin.Edge.trailingEdge(_:), v29);
    sub_134D8(v39, v36);
    v32[3] = sub_767340();
    v32[4] = &protocol witness table for Margins;
    sub_B1B4(v32);
    sub_767330();
    v37 = sub_767250();
    v38 = &protocol witness table for Pin;
    sub_B1B4(v36);
    sub_767260();
    if ((v18 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_134D8(v39, v32);
    sub_767270();
    v34 = sub_7672A0();
    v35 = &protocol witness table for Center;
    sub_B1B4(v33);
    sub_7672B0();
    goto LABEL_10;
  }

  v20 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView);
  type metadata accessor for CarouselItemMaterialTextOverlay();
  sub_75D650();
  [v20 sizeThatFits:{v21, v22}];
  sub_134D8(v39, v33);
  v37 = sub_767340();
  v38 = &protocol witness table for Margins;
  sub_B1B4(v36);
  sub_767330();
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_134D8(v36, v33);
LABEL_10:
  sub_134D8(v33, v32);
  v25 = sub_767340();
  v26 = v31;
  v31[3] = v25;
  v26[4] = &protocol witness table for Margins;
  sub_B1B4(v26);
  sub_767330();
  sub_BEB8(v39);
  sub_BEB8(v36);
  return sub_BEB8(v33);
}

uint64_t sub_57B9B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  ObjectType = swift_getObjectType();
  v71 = sub_766950();
  v68 = *(v71 - 8);
  __chkstk_darwin(v71);
  v62 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v60 - v5;
  __chkstk_darwin(v6);
  v66 = &v60 - v7;
  v8 = sub_766CA0();
  v69 = *(v8 - 8);
  __chkstk_darwin(v8);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v9;
  __chkstk_darwin(v10);
  v72 = &v60 - v11;
  v12 = sub_7602F0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  v19 = sub_7603E0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v20 + 16))(v22, &v2[v23], v19);
  sub_760310();
  (*(v20 + 8))(v22, v19);
  (*(v13 + 104))(v15, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v12);
  sub_57DB60(&qword_95B460);
  sub_769430();
  sub_769430();
  if (v73[0] == v76 && v73[1] == v77)
  {
    v24 = *(v13 + 8);
    v24(v15, v12);
    v24(v18, v12);

LABEL_5:
    v27 = qword_93DCA8;
    v61 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel];
    if (v27 != -1)
    {
      swift_once();
    }

    v28 = qword_95B3B8;
    goto LABEL_11;
  }

  v25 = sub_76A950();
  v26 = *(v13 + 8);
  v26(v15, v12);
  v26(v18, v12);

  if (v25)
  {
    goto LABEL_5;
  }

  v29 = qword_93DCA0;
  v61 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel];
  if (v29 != -1)
  {
    swift_once();
  }

  v28 = qword_95B3A0;
LABEL_11:
  v30 = v64;
  v31 = sub_BE38(v8, v28);
  v64 = *(v69 + 16);
  (v64)(v72, v31, v8);
  v32 = v62;
  sub_766930();
  v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel];
  v34 = sub_75BB20();
  v74 = v34;
  v75 = &protocol witness table for UILabel;
  v73[0] = v33;
  v35 = swift_allocObject();
  v36 = ObjectType;
  *(v35 + 16) = v2;
  *(v35 + 24) = v36;
  v37 = v36;
  v38 = v33;
  v39 = v2;
  sub_766940();

  v60 = v8;
  v40 = *(v68 + 1);
  v41 = v32;
  v42 = v71;
  v40(v41, v71);
  v68 = v40;
  sub_BEB8(v73);
  v43 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel];
  v74 = v34;
  v75 = &protocol witness table for UILabel;
  v73[0] = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  *(v44 + 24) = v37;
  v62 = v39;
  v45 = v43;
  v46 = v66;
  sub_766940();

  v40(v30, v42);
  sub_BEB8(v73);
  v74 = v34;
  v75 = &protocol witness table for UILabel;
  v47 = v61;
  v73[0] = v61;
  v48 = v65;
  v49 = v60;
  (v64)(v65, v72, v60);
  v50 = v69;
  v51 = (*(v69 + 80) + 24) & ~*(v69 + 80);
  v52 = (v63 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v62;
  *(v53 + 16) = v62;
  (*(v50 + 32))(v53 + v51, v48, v49);
  v55 = v71;
  *(v53 + v52) = ObjectType;
  v56 = v67;
  v67[3] = v55;
  v56[4] = &protocol witness table for VerticalStack;
  sub_B1B4(v56);
  v57 = v47;
  v58 = v54;
  sub_766940();

  v68(v46, v55);
  (*(v50 + 8))(v72, v49);
  return sub_BEB8(v73);
}

uint64_t sub_57C174(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v23 = a5;
  v8 = sub_7602F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7603E0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v13 + 16))(v15, a2 + v16, v12);
  sub_760310();
  (*(v13 + 8))(v15, v12);
  sub_7602D0();
  (*(v9 + 8))(v11, v8);
  sub_7668E0();
  v17 = sub_766900();
  sub_766920();
  sub_766920();
  if (sub_766920() != v17)
  {
    sub_766920();
  }

  sub_7668D0();
  if (*a4 != -1)
  {
    swift_once();
  }

  v18 = sub_766CA0();
  v19 = sub_BE38(v18, v23);
  v24[3] = v18;
  v24[4] = &protocol witness table for StaticDimension;
  v20 = sub_B1B4(v24);
  (*(*(v18 - 8) + 16))(v20, v19, v18);
  return sub_7668B0();
}

uint64_t sub_57C40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_7602F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7603E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v10 + 16))(v12, a2 + v13, v9);
  sub_760310();
  (*(v10 + 8))(v12, v9);
  sub_7602D0();
  (*(v6 + 8))(v8, v5);
  sub_7668E0();
  sub_BD88(&unk_95B470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  v15 = sub_766900();
  *(inited + 32) = v15;
  v16 = sub_766910();
  *(inited + 40) = v16;
  sub_766920();
  sub_766920();
  if (sub_766920() != v15)
  {
    sub_766920();
  }

  sub_766920();
  if (sub_766920() != v16)
  {
    sub_766920();
  }

  sub_7668D0();
  v17 = sub_766CA0();
  v24 = v17;
  v25 = &protocol witness table for StaticDimension;
  v18 = sub_B1B4(v23);
  v19 = *(*(v17 - 8) + 16);
  v19(v18, a3, v17);
  sub_7668B0();
  if (qword_93DCB0 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v17, qword_95B3D0);
  v24 = v17;
  v25 = &protocol witness table for StaticDimension;
  v21 = sub_B1B4(v23);
  v19(v21, v20, v17);
  return sub_7668C0();
}

id sub_57C74C()
{
  v1 = v0;
  v56 = sub_760370();
  v64 = *(v56 - 8);
  __chkstk_darwin(v56);
  v63 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v61 = &v53 - v4;
  __chkstk_darwin(v5);
  v57 = &v53 - v6;
  __chkstk_darwin(v7);
  v54 = &v53 - v8;
  v9 = sub_7602F0();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7603E0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v58 = &v53 - v16;
  __chkstk_darwin(v17);
  v55 = &v53 - v18;
  __chkstk_darwin(v19);
  v53 = &v53 - v20;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v25 = *(v13 + 16);
  v25(v23, &v0[v24], v12);
  sub_760310();
  v26 = *(v13 + 8);
  (v26)(v23, v12);
  v27 = [v0 traitCollection];
  v28 = sub_7602E0();

  v66[1](v11, v67);
  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel];
  v65 = v28;
  [v29 setTextAlignment:v28];
  v59 = v25;
  v60 = v24;
  v30 = v1;
  v31 = v53;
  v25(v53, &v1[v24], v12);
  v32 = v12;
  v33 = v54;
  sub_760380();
  v66 = v26;
  v67 = v13 + 8;
  (v26)(v31, v12);
  v34 = sub_760340();
  v35 = v33;
  v36 = v56;
  v64 = *(v64 + 8);
  (v64)(v35);
  if (!v34)
  {
    v34 = [objc_opt_self() secondaryLabelColor];
  }

  [v29 setTextColor:v34];

  v37 = v30;
  v38 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel];
  [v38 setTextAlignment:v65];
  v39 = v59;
  v40 = v60;
  v41 = v55;
  v59(v55, &v30[v60], v32);
  v42 = v57;
  sub_760380();
  (v66)(v41, v32);
  v43 = sub_760350();
  (v64)(v42, v36);
  if (!v43)
  {
    v43 = [objc_opt_self() labelColor];
  }

  [v38 setTextColor:v43];

  v44 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel];
  [v44 setTextAlignment:v65];
  v45 = v58;
  v39(v58, &v37[v40], v32);
  v46 = v61;
  sub_760380();
  (v66)(v45, v32);
  v47 = sub_760320();
  (v64)(v46, v36);
  if (!v47)
  {
    v47 = [objc_opt_self() secondaryLabelColor];
  }

  [v44 setTextColor:v47];

  v48 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel];
  [v48 setTextAlignment:v65];
  v49 = v62;
  v39(v62, &v37[v40], v32);
  v50 = v63;
  sub_760380();
  (v66)(v49, v32);
  v51 = sub_760330();
  (v64)(v50, v36);
  if (!v51)
  {
    v51 = [objc_opt_self() labelColor];
  }

  [v48 setTextColor:v51];

  return [v37 setNeedsLayout];
}

id sub_57CEC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemMaterialTextOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemMaterialTextOverlay()
{
  result = qword_95B450;
  if (!qword_95B450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_57D03C()
{
  result = sub_7603E0();
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

uint64_t sub_57D0F0(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_F714(a1);
  sub_F714(a1);
  sub_F704(v5);
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_F704(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_F704(a1);
}

id sub_57D1A4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v5 = objc_allocWithZone(NSMutableAttributedString);
    v6 = sub_769210();
    v3 = [v5 initWithString:v6];

    v7 = [objc_opt_self() configurationWithScale:1];
    v8 = sub_769210();
    v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

    if (v9)
    {
      v10 = [objc_opt_self() textAttachmentWithImage:v9];
      v11 = objc_allocWithZone(NSAttributedString);
      v12 = sub_769210();
      v13 = [v11 initWithString:v12];

      if (a3)
      {
        [v3 insertAttributedString:v13 atIndex:0];

        v14 = [objc_opt_self() attributedStringWithAttachment:v10];
        [v3 insertAttributedString:v14 atIndex:0];
      }

      else
      {
        [v3 appendAttributedString:v13];

        v14 = [objc_opt_self() attributedStringWithAttachment:v10];
        [v3 appendAttributedString:v14];
      }
    }
  }

  return v3;
}

id sub_57D3D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7602F0();
  v75 = *(v4 - 8);
  __chkstk_darwin(v4);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v56 - v7;
  __chkstk_darwin(v8);
  v59 = &v56 - v9;
  __chkstk_darwin(v10);
  v70 = &v56 - v11;
  __chkstk_darwin(v12);
  v69 = &v56 - v13;
  __chkstk_darwin(v14);
  v68 = &v56 - v15;
  v16 = sub_7603E0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v58 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  sub_7603F0();
  v25 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v26 = v17[3];
  v73 = v25;
  v26(&v2[v25], v24, v16);
  swift_endAccess();
  sub_57C74C();
  v27 = v17[1];
  v60 = v24;
  v74 = v16;
  v71 = v27;
  v72 = v17 + 1;
  v27(v24, v16);
  v28 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel];
  sub_760450();
  if (v29)
  {
    v30 = sub_769210();
  }

  else
  {
    v30 = 0;
  }

  [v28 setText:v30];

  v31 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel];
  sub_760460();
  if (v32)
  {
    v33 = sub_769210();
  }

  else
  {
    v33 = 0;
  }

  [v31 setText:v33];

  v34 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel];
  sub_760410();
  if (v35)
  {
    v36 = sub_769210();
  }

  else
  {
    v36 = 0;
  }

  v57 = v34;
  [v34 setText:v36];

  v37 = v17[2];
  v38 = v74;
  v61 = v17 + 2;
  v67 = v37;
  v37(v21, &v2[v73], v74);
  sub_760310();
  v71(v21, v38);
  v39 = v75;
  v40 = *(v75 + 104);
  v66 = enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:);
  v65 = v40;
  v40(v69);
  sub_57DB60(&qword_95B460);
  sub_769430();
  sub_769430();
  v62 = a1;
  if (v78 == v76 && v79 == v77)
  {
    v41 = 1;
  }

  else
  {
    v41 = sub_76A950();
  }

  v42 = *(v39 + 8);
  v42(v69, v4);
  v75 = v39 + 8;
  v42(v68, v4);

  [v57 setHidden:v41 & 1];
  v69 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView];
  v43 = v74;
  v44 = v58;
  v67(v58, &v2[v73], v74);
  sub_760310();
  v71(v44, v43);
  v45 = v59;
  v65(v59, v66, v4);
  sub_769430();
  sub_769430();
  if (v78 == v76 && v79 == v77)
  {
    v46 = 1;
  }

  else
  {
    v46 = sub_76A950();
  }

  v42(v45, v4);
  v42(v70, v4);

  [v69 setHidden:v46 & 1];
  v47 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel];
  v48 = sub_760420();
  v50 = sub_57D1A4(v48, v49, [v2 effectiveUserInterfaceLayoutDirection]);

  [v47 setAttributedText:v50];

  v51 = v74;
  v52 = v60;
  v67(v60, &v2[v73], v74);
  v53 = v63;
  sub_760310();
  v71(v52, v51);
  v54 = v64;
  v65(v64, v66, v4);
  sub_57DB60(&qword_95B468);
  LOBYTE(v52) = sub_7691C0();
  v42(v54, v4);
  v42(v53, v4);
  [v47 setHidden:(v52 & 1) == 0];
  return [v2 setNeedsLayout];
}

uint64_t sub_57DB60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_7602F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_57DBA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_57DC54()
{
  v1 = sub_766CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_57DD24(uint64_t a1)
{
  v3 = *(sub_766CA0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_57C40C(a1, v4, v5);
}

void sub_57DDC4()
{
  v1 = sub_760370();
  __chkstk_darwin(v1 - 8);
  v2 = sub_7603D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7602F0();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_760360();
  sub_760300();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_materialBackground;
  *(v0 + v10) = [objc_allocWithZone(UIVisualEffectView) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v11) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel;
  *(v0 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel;
  *(v0 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = sub_769210();
  v17 = [objc_opt_self() systemImageNamed:v16];

  if (!v17)
  {
    __break(1u);
  }

  v18 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView;
  v19 = [objc_allocWithZone(UIImageView) initWithImage:v17];

  *(v0 + v18) = v19;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
  *(v0 + v20) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v21 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_selectionHandler);
  *v21 = 0;
  v21[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_57E180(uint64_t a1, void *a2, char *a3)
{
  v62 = a3;
  v69 = sub_75F5D0();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v5;
  __chkstk_darwin(v6);
  v67 = v50 - v7;
  v8 = sub_762D10();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75EC50();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7666D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_75F5B0();
  v63 = *(v71 - 8);
  __chkstk_darwin(v71);
  v56 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v50 - v20;
  v70 = a2;
  sub_4DB0F0(a1, a2, v50 - v20);
  v62 = v21;
  sub_75F590();
  v57 = sub_7670D0();
  swift_allocObject();
  v58 = sub_7670B0();
  sub_75B5D0();
  v22 = (*(v11 + 88))(v13, v10);
  v72 = v14;
  v64 = v15;
  v61 = v8;
  if (v22 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_93D898 != -1)
    {
      swift_once();
    }

    v23 = qword_99F1C0;
LABEL_9:
    v24 = sub_BE38(v14, v23);
    (*(v15 + 16))(v17, v24, v14);
    goto LABEL_13;
  }

  if (v22 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_93D8A0 != -1)
    {
      swift_once();
    }

    v23 = qword_99F1D8;
    goto LABEL_9;
  }

  if (qword_93D898 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v14, qword_99F1C0);
  (*(v15 + 16))(v17, v25, v14);
  (*(v11 + 8))(v13, v10);
LABEL_13:
  v26 = v70;
  v50[1] = a1;
  sub_26F08();
  v27 = [v26 traitCollection];
  v28 = sub_769E10();

  sub_75B5E0();
  v29 = sub_7653B0();
  v79[3] = v29;
  v30 = sub_57FAEC(&qword_93F9B0, &type metadata accessor for Feature);
  v55 = v17;
  v53 = v30;
  v79[4] = v30;
  v31 = sub_B1B4(v79);
  v32 = *(*(v29 - 8) + 104);
  v52 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v51 = v32;
  v32(v31);
  v33 = v28;
  sub_765C30();
  sub_BEB8(v79);
  v34 = v59;
  v54 = v33;
  sub_762D00();
  sub_762CE0();
  v35 = *(v60 + 8);
  v36 = v61;
  v35(v34, v61);
  if (qword_93D8A8 != -1)
  {
    swift_once();
  }

  sub_BE38(v72, qword_99F1F0);
  v37 = [v70 traitCollection];
  v38 = sub_769E10();

  v78[0] = sub_75B600();
  sub_BD88(&unk_947FF0);
  sub_5FBA8();
  sub_7691A0();

  v78[3] = v29;
  v78[4] = v53;
  v39 = sub_B1B4(v78);
  v51(v39, v52, v29);
  v70 = v38;
  sub_765C30();
  sub_BEB8(v78);
  sub_762D00();
  sub_762CE0();
  v35(v34, v36);
  v40 = v63;
  v41 = v62;
  (*(v63 + 16))(v56, v62, v71);
  v76 = v57;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v75 = v58;
  sub_134D8(v79, v74);
  sub_134D8(v78, v73);

  v42 = v67;
  sub_75F5C0();
  v43 = v68;
  v44 = v66;
  v45 = v69;
  (*(v68 + 16))(v66, v42, v69);
  v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v47 = swift_allocObject();
  (*(v43 + 32))(v47 + v46, v44, v45);
  swift_allocObject();
  v48 = sub_767090();

  (*(v43 + 8))(v42, v45);
  sub_BEB8(v78);
  sub_BEB8(v79);
  (*(v64 + 8))(v55, v72);
  (*(v40 + 8))(v41, v71);
  return v48;
}

double sub_57EBAC(uint64_t a1)
{
  v2 = sub_75CBF0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v100 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_75DAB0();
  v98 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_762D10();
  v112 = *(v6 - 8);
  v113 = v6;
  __chkstk_darwin(v6);
  v111 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_7666D0();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75BE90();
  v101 = *(v9 - 1);
  v102 = v9;
  __chkstk_darwin(v9);
  v114 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v90 - v12;
  v14 = sub_75CBD0();
  v104 = *(v14 - 8);
  v105 = v14;
  __chkstk_darwin(v14);
  v99 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v108 = (&v90 - v17);
  v18 = sub_7656C0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_759650();
  sub_57FAEC(&qword_9560F8, &type metadata accessor for PrivacyType);
  v22 = a1;
  sub_75C750();
  v23 = v131[0];
  if (!v131[0])
  {
    return 0.0;
  }

  v94 = v3;
  v95 = v2;
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v24 = *(v19 + 8);
  v116 = v21;
  v117 = v19 + 8;
  v118 = v18;
  v115 = v24;
  v24(v21, v18);
  v25 = sub_759640();
  sub_759610();
  v123 = v22;
  v26 = sub_527DE4();
  sub_827CC(v25, v13, v26, v108);
  swift_unknownObjectRelease();

  v27 = v101;
  v28 = v102;
  v29 = *(v101 + 8);
  v122 = v13;
  v29(v13, v102);
  v30 = sub_7670D0();
  swift_allocObject();
  v31 = sub_7670B0();
  swift_allocObject();
  v92 = sub_7670B0();
  swift_allocObject();
  v91 = sub_7670B0();
  sub_75CBB0();
  v121 = v30;
  swift_allocObject();
  v103 = sub_7670B0();
  v32 = v114;
  v110 = v23;
  sub_759610();
  v33 = (*(v27 + 88))(v32, v28);
  v93 = v31;
  if (v33 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    v38 = v28;
    v39 = v106;
    if (v33 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v33 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      if (qword_93D880 != -1)
      {
        swift_once();
      }

      v43 = v109;
      v44 = sub_BE38(v109, qword_99F178);
      (*(v107 + 16))(v39, v44, v43);
      v42 = &dword_4;
    }

    else
    {
      if (qword_93D878 != -1)
      {
        swift_once();
      }

      v40 = v109;
      v41 = sub_BE38(v109, qword_99F160);
      (*(v107 + 16))(v39, v41, v40);
      v29(v114, v38);
      v42 = (&dword_0 + 1);
    }

    v114 = v42;
    goto LABEL_15;
  }

  v34 = v106;
  if (qword_93D878 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v35 = v109;
    v36 = sub_BE38(v109, qword_99F160);
    (*(v107 + 16))(v34, v36, v35);
    v114 = (&dword_0 + 1);
LABEL_15:
    sub_26F08();
    swift_getKeyPath();
    sub_75C7B0();

    v45 = v131[0];
    v46 = sub_769E10();

    sub_759620();
    v47 = sub_7653B0();
    v131[3] = v47;
    v102 = sub_57FAEC(&qword_93F9B0, &type metadata accessor for Feature);
    v131[4] = v102;
    v48 = sub_B1B4(v131);
    v49 = *(v47 - 8);
    v50 = *(v49 + 104);
    LODWORD(v101) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v96 = v49 + 104;
    v97 = v50;
    v50(v48);
    v51 = v46;
    sub_765C30();
    sub_BEB8(v131);
    v52 = v111;
    v90 = v51;
    sub_762D00();
    sub_762CE0();
    v53 = v113;
    v112 = *(v112 + 8);
    (v112)(v52, v113);
    if (qword_93D888 != -1)
    {
      swift_once();
    }

    sub_BE38(v109, qword_99F190);
    swift_getKeyPath();
    sub_75C7B0();

    v54 = v130[0];
    v55 = sub_769E10();

    sub_759630();
    v130[3] = v47;
    v130[4] = v102;
    v56 = sub_B1B4(v130);
    v97(v56, v101, v47);
    v34 = v55;
    sub_765C30();
    sub_BEB8(v130);
    sub_762D00();
    sub_762CE0();
    (v112)(v52, v53);
    v57 = sub_7595F0();
    v58 = v57;
    if (v57 >> 62)
    {
      v88 = v57;
      v89 = sub_76A860();
      v58 = v88;
      v59 = v89;
    }

    else
    {
      v59 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
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
          v66 = sub_76A770();
        }

        else
        {
          v66 = *(v62 + 8 * v61 + 32);
        }

        v67 = v116;
        v68 = v119;
        sub_75C720();
        sub_75DA20();
        v69 = v67;
        v70 = *v64;
        (*v64)(v68, v65);
        sub_765580();
        v72 = v71;
        v115(v69, v118);
        sub_75C720();
        v73 = sub_75DA30();
        v70(v68, v65);
        v74 = type metadata accessor for SnapshotPageTraitEnvironment();
        v75 = objc_allocWithZone(v74);
        v76 = &v75[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
        *v76 = v72;
        *(v76 + 1) = 0x7FEFFFFFFFFFFFFFLL;
        *&v75[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v73;
        v129.receiver = v75;
        v129.super_class = v74;
        v77 = objc_msgSendSuper2(&v129, "init");
        v78 = sub_57E180(v66, v77, v114);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_7AE30(0, *(v63 + 2) + 1, 1, v63);
        }

        v80 = *(v63 + 2);
        v79 = *(v63 + 3);
        if (v80 >= v79 >> 1)
        {
          v63 = sub_7AE30((v79 > 1), v80 + 1, 1, v63);
        }

        ++v61;

        v127 = v121;
        v128 = &protocol witness table for LayoutViewPlaceholder;
        *&v126 = v78;
        *(v63 + 2) = v80 + 1;
        sub_10914(&v126, &v63[5 * v80 + 4]);
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
  sub_75C7B0();

  v81 = v126;
  sub_767500();

  v82 = v121;
  swift_allocObject();
  v83 = sub_7670B0();
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
  sub_134D8(v131, v125);
  sub_134D8(v130, &v124);

  sub_759610();
  v84 = v100;
  sub_75CBE0();
  swift_getKeyPath();
  sub_75C7B0();

  sub_57FAEC(&qword_951450, &type metadata accessor for PrivacyTypeLayout);
  v85 = v95;
  sub_7665A0();
  v37 = v86;

  swift_unknownObjectRelease();

  (*(v94 + 8))(v84, v85);
  sub_BEB8(v130);
  sub_BEB8(v131);
  (*(v107 + 8))(v106, v109);
  (*(v104 + 8))(v108, v105);
  return v37;
}

uint64_t sub_57FAEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_57FB34()
{
  v1 = sub_75F5D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_57FBBC()
{
  sub_75F5D0();

  return sub_4DB95C();
}

uint64_t sub_57FCA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_75C510();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_57FD28(uint64_t a1, uint64_t a2)
{
  v4 = sub_75C510();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_57FDBC()
{
  result = sub_75C510();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_57FE44@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_767FC0();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v51 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_767D20();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_95B660);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v42 - v9;
  v43 = sub_BD88(&qword_95B668);
  __chkstk_darwin(v43);
  v12 = v42 - v11;
  v13 = sub_BD88(&qword_95B670);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  v17 = sub_BD88(&qword_95B678);
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  __chkstk_darwin(v17);
  v46 = v42 - v19;
  v56 = v1;
  sub_BD88(&qword_95B680);
  sub_16194(&qword_95B688, &qword_95B680);
  sub_768070();
  sub_767D10();
  sub_16194(&qword_95B690, &qword_95B660);
  v20 = v44;
  sub_7681E0();
  (*(v45 + 8))(v6, v20);
  (*(v8 + 8))(v10, v7);
  v21 = sub_767FF0();
  v22 = v43;
  v12[*(v43 + 36)] = v21;
  v55 = v42[1];
  v23 = sub_BD88(&qword_95B698);
  v24 = sub_58551C();
  v25 = sub_133D8(&qword_95B6B8);
  v26 = sub_16194(&qword_95B6C0, &qword_95B6B8);
  v57 = v25;
  v58 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_7681D0();
  sub_585664(v12);
  v28 = v51;
  sub_767FB0();
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v60 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v46;
  v31 = v47;
  v32 = v52;
  sub_768160();
  v33 = v32;
  (*(v53 + 8))(v28, v32);
  v34 = v31;
  (*(v48 + 8))(v16, v31);
  v57 = sub_75C4D0();
  v58 = v35;
  sub_12EC40();
  v36 = sub_7680C0();
  v38 = v37;
  LOBYTE(v31) = v39;
  v57 = v34;
  v58 = v33;
  v59 = v29;
  v60 = &protocol witness table for EnabledTextSelectability;
  swift_getOpaqueTypeConformance2();
  v40 = v49;
  sub_768180();
  sub_93370(v36, v38, v31 & 1);

  return (*(v50 + 8))(v30, v40);
}

uint64_t sub_5804D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for DebugMetricsEventDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_95B6D8);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v39 - v10;
  v11 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  __chkstk_darwin(v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_BD88(&qword_95B6E0);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  v18 = sub_75C510();
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  sub_767CF0();
  sub_5856D4(&qword_945F08, type metadata accessor for DebugMetricsEventDetailView.Summary);
  v48 = v17;
  sub_7681A0();
  sub_58571C(v13);
  v19 = sub_75C4F0();
  v20 = *(v19 + 16);
  if (!v20)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v39[0] = v4;
  v39[1] = v5;
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_7CBF4(v20, 0);
  v22 = sub_618ED0(&v50, v21 + 4, v20, v19);

  sub_1A01E0();
  if (v22 == v20)
  {
    v6 = v40;
    v4 = v39[0];
LABEL_5:
    v50 = v21;
    sub_3C4864(&v50);

    swift_getKeyPath();
    sub_585778(a1, v6);
    v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v24 = swift_allocObject();
    sub_5858A8(v6, v24 + v23);
    sub_BD88(&unk_947FF0);
    sub_16194(&qword_95B6E8, &unk_947FF0);
    sub_58598C();
    v25 = v49;
    sub_768240();
    v26 = v41;
    v27 = v42;
    v28 = *(v42 + 16);
    v29 = v44;
    v28(v41, v48, v44);
    v30 = v45;
    v31 = v46;
    v40 = *(v46 + 16);
    v32 = v25;
    v33 = v47;
    (v40)(v45, v32, v47);
    v34 = v43;
    v28(v43, v26, v29);
    v35 = sub_BD88(&qword_95B6F8);
    (v40)(&v34[*(v35 + 48)], v30, v33);
    v36 = *(v31 + 8);
    v36(v49, v33);
    v37 = *(v27 + 8);
    v37(v48, v29);
    v36(v30, v33);
    return (v37)(v26, v29);
  }

  __break(1u);

  __break(1u);
  return result;
}

double sub_580A80@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = sub_75C4F0();
  if (*(v5 + 16) && (v6 = sub_3DF2F8(v4, v3), (v7 & 1) != 0))
  {
    sub_132B4(*(v5 + 56) + 32 * v6, &v10);
  }

  else
  {

    v10 = 0u;
    v11 = 0u;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  result = *&v10;
  v9 = v11;
  *(a2 + 16) = v10;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_580B18(uint64_t a1)
{
  v2 = sub_767F40();
  __chkstk_darwin(v2 - 8);
  v3 = sub_BD88(&qword_95B6B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_767F30();
  v9 = a1;
  sub_BD88(&qword_95B6C8);
  sub_16194(&qword_95B6D0, &qword_95B6C8);
  sub_767CD0();
  sub_16194(&qword_95B6C0, &qword_95B6B8);
  sub_767F50();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_580D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7681F0();
  *a1 = result;
  return result;
}

uint64_t sub_580DC4()
{
  v0 = sub_757150();
  v64 = *(v0 - 8);
  v65 = v0;
  __chkstk_darwin(v0);
  v63 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_7571D0();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7571B0();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_757170();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_757190();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_757010();
  __chkstk_darwin(v10 - 8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_757530();
  __chkstk_darwin(v12 - 8);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_757490();
  __chkstk_darwin(v14 - 8);
  v15 = sub_7573C0();
  __chkstk_darwin(v15 - 8);
  v16 = sub_BD88(&qword_95B650);
  __chkstk_darwin(v16 - 8);
  v18 = &v45 - v17;
  v19 = sub_BD88(&qword_95B658);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_757200();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v45 - v27;
  __chkstk_darwin(v29);
  v46 = &v45 - v30;
  __chkstk_darwin(v31);
  v47 = &v45 - v32;
  sub_161DC(v33, qword_95B488);
  v48 = sub_BE38(v22, qword_95B488);
  sub_7570F0();
  v34 = sub_757100();
  (*(*(v34 - 8) + 56))(v21, 0, 1, v34);
  sub_7570D0();
  v35 = sub_7570E0();
  (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
  sub_757370();
  sub_757440();
  sub_757510();
  sub_757000();
  sub_757120();
  v36 = v52;
  sub_757160();
  v37 = v51;
  sub_757180();
  (*(v55 + 8))(v36, v56);
  sub_757130();
  (*(v53 + 8))(v37, v54);
  v38 = *(v23 + 8);
  v38(v25, v22);
  v39 = v57;
  sub_7571A0();
  v40 = v46;
  sub_7571E0();
  (*(v58 + 8))(v39, v59);
  v38(v28, v22);
  v41 = v60;
  sub_7571C0();
  v42 = v47;
  sub_7571F0();
  (*(v61 + 8))(v41, v62);
  v38(v40, v22);
  v43 = v63;
  sub_757140();
  sub_757110();
  (*(v64 + 8))(v43, v65);
  return (v38)(v42, v22);
}

uint64_t sub_581540@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_BD88(&qword_95B5C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_BD88(&qword_95B5C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_BD88(&qword_95B5D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  *v14 = sub_767EB0();
  *(v14 + 1) = 0x401C000000000000;
  v14[16] = 0;
  v15 = sub_BD88(&qword_95B5D8);
  sub_5818E8(v1, &v14[*(v15 + 44)]);
  sub_75C500();
  sub_768B70();
  v16 = sub_769490();

  v17 = 0;
  KeyPath = 0;
  v19 = 0;
  if (v16)
  {
    sub_7681F0();
    sub_767EC0();
    v20 = sub_767EE0();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v17 = sub_768200();

    sub_10A2C(v8, &qword_95B5C8);
    v21 = sub_768000();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v19 = sub_768010();
    sub_10A2C(v5, &qword_95B5C0);
    KeyPath = swift_getKeyPath();
  }

  sub_1ED18(v14, v11, &qword_95B5D0);
  sub_1ED18(v11, a1, &qword_95B5D0);
  v22 = sub_BD88(&qword_95B5E0);
  v23 = a1 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (a1 + *(v22 + 64));
  sub_585278(v17);
  sub_5852C8(v17);
  *v24 = v17;
  v24[1] = KeyPath;
  v24[2] = v19;
  sub_10A2C(v14, &qword_95B5D0);
  sub_5852C8(v17);
  return sub_10A2C(v11, &qword_95B5D0);
}

uint64_t sub_5818E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_BD88(&qword_95B5E8);
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v37 = sub_767E30();
  LOBYTE(v54[0]) = 1;
  sub_581D48(v40);
  *(v39 + 7) = v40[0];
  *(&v39[1] + 7) = v40[1];
  *(&v39[2] + 7) = v41[0];
  v39[3] = *(v41 + 9);
  v36 = LOBYTE(v54[0]);
  v32 = sub_768060();
  KeyPath = swift_getKeyPath();
  v54[0] = sub_75C4B0();
  swift_getKeyPath();
  sub_BD88(&qword_95B5F0);
  sub_BD88(&qword_95B5F8);
  sub_16194(&qword_95B600, &qword_95B5F0);
  sub_58536C();
  v30 = v7;
  sub_768240();
  v29 = sub_767E30();
  LOBYTE(v54[0]) = 1;
  sub_5820DC(a1, v42);
  *&v38[7] = v42[0];
  *&v38[23] = v42[1];
  *&v38[39] = v42[2];
  *&v38[55] = v42[3];
  v8 = v54[0];
  v9 = v33;
  v10 = *(v34 + 16);
  v11 = v31;
  v10(v33, v7, v31);
  v43[0] = v37;
  v43[1] = 0;
  LOBYTE(v44[0]) = v36;
  *(v44 + 1) = v39[0];
  *(&v44[1] + 1) = v39[1];
  *(&v44[3] + 1) = v39[3];
  *(&v44[2] + 1) = v39[2];
  v12 = v32;
  *(&v44[4] + 1) = KeyPath;
  v45 = v32;
  v13 = v44[0];
  *a2 = v37;
  *(a2 + 16) = v13;
  v14 = v44[1];
  v15 = v44[2];
  v16 = v44[3];
  v17 = v44[4];
  *(a2 + 96) = v12;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  v18 = sub_BD88(&qword_95B630);
  v10((a2 + *(v18 + 48)), v9, v11);
  v19 = a2 + *(v18 + 64);
  v20 = v29;
  v46[0] = v29;
  v46[1] = 0;
  v47[0] = v8;
  *&v47[1] = *v38;
  *&v47[17] = *&v38[16];
  *&v47[33] = *&v38[32];
  *&v47[49] = *&v38[48];
  v21 = *&v38[63];
  *&v47[64] = *&v38[63];
  v22 = *v47;
  *v19 = v29;
  *(v19 + 16) = v22;
  v23 = *&v47[16];
  v24 = *&v47[32];
  v25 = *&v47[48];
  *(v19 + 80) = v21;
  *(v19 + 48) = v24;
  *(v19 + 64) = v25;
  *(v19 + 32) = v23;
  sub_1ED18(v43, v54, &qword_95B638);
  sub_1ED18(v46, v54, &qword_95B640);
  v26 = *(v34 + 8);
  v26(v30, v11);
  v48[0] = v20;
  v48[1] = 0;
  v49 = v8;
  v51 = *&v38[16];
  v52 = *&v38[32];
  *v53 = *&v38[48];
  *&v53[15] = *&v38[63];
  v50 = *v38;
  sub_10A2C(v48, &qword_95B640);
  v26(v33, v11);
  v54[0] = v37;
  v54[1] = 0;
  v55 = v36;
  v56 = v39[0];
  v57 = v39[1];
  v58 = v39[2];
  v59 = v39[3];
  v60 = KeyPath;
  v61 = v32;
  return sub_10A2C(v54, &qword_95B638);
}

uint64_t sub_581D48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_BD88(&qword_95B5C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  sub_75C490();
  sub_7681F0();
  sub_767ED0();
  v5 = sub_767EE0();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_768200();

  sub_10A2C(v4, &qword_95B5C8);
  v18 = sub_75C4D0();
  v19 = v7;
  sub_12EC40();
  v8 = sub_7680C0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v12 &= 1u;
  LOBYTE(v18) = v12;
  v20 = 0;
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 3;
  *(a1 + 56) = 0;

  sub_93360(v8, v10, v12);

  sub_93370(v8, v10, v12);
}

uint64_t sub_581F14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_767E70();
  __chkstk_darwin(v10 - 8);
  if (a4)
  {
    sub_767E60();
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_767E50(v25);
    v26._countAndFlagsBits = a1;
    v26._object = a2;
    sub_767E40(v26);
    v27._countAndFlagsBits = 8250;
    v27._object = 0xE200000000000000;
    sub_767E50(v27);
    v28._countAndFlagsBits = a3;
    v28._object = a4;
    sub_767E40(v28);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    sub_767E50(v29);
    sub_767E80();
    v11 = sub_7680B0();
    v13 = v12;
    v15 = v14;
    sub_768030();
    v16 = sub_7680A0();
    a4 = v17;
    v19 = v18;
    v21 = v20;

    sub_93370(v11, v13, v15 & 1);

    result = swift_getKeyPath();
    v23 = v19 & 1;
    v24 = 1;
  }

  else
  {
    v16 = 0;
    v23 = 0;
    v21 = 0;
    result = 0;
    v24 = 0;
  }

  *a5 = v16;
  *(a5 + 8) = a4;
  *(a5 + 16) = v23;
  *(a5 + 24) = v21;
  *(a5 + 32) = result;
  *(a5 + 40) = v24;
  *(a5 + 48) = 0;
  return result;
}

uint64_t sub_5820DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = sub_BD88(&unk_957130);
  __chkstk_darwin(v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_7572A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C4C0();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v54 = a1;
    (*(v7 + 32))(v9, v5, v6);
    v53 = v6;
    if (qword_93DCB8 != -1)
    {
      swift_once();
    }

    v36 = sub_757200();
    sub_BE38(v36, qword_95B488);
    sub_5856D4(&qword_95B648, &type metadata accessor for Date.FormatStyle);
    sub_757280();
    v56 = v58;
    v57 = v59;
    sub_12EC40();
    v37 = sub_7680C0();
    v39 = v38;
    v52 = v9;
    v41 = v40;
    sub_768050();
    v42 = sub_7680A0();
    v44 = v43;
    v46 = v45;

    sub_93370(v37, v39, v41 & 1);

    LODWORD(v58) = sub_767F60();
    v10 = sub_768080();
    v11 = v47;
    LOBYTE(v37) = v48;
    v13 = v49;
    sub_93370(v42, v44, v46 & 1);

    (*(v7 + 8))(v52, v53);
    v12 = v37 & 1;
    sub_93360(v10, v11, v37 & 1);

    v14 = sub_75C4E0();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_7:
    v26 = 0;
    v28 = 0;
    v35 = 0;
    v32 = 0;
    goto LABEL_8;
  }

  sub_10A2C(v5, &unk_957130);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = sub_75C4E0();
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_3:
  v58 = v14;
  v59 = v15;
  sub_12EC40();
  v16 = sub_7680C0();
  v18 = v17;
  v20 = v19;
  sub_768050();
  v21 = sub_7680A0();
  v53 = v11;
  v54 = v10;
  v23 = v22;
  v25 = v24;
  v52 = v13;

  sub_93370(v16, v18, v20 & 1);

  LODWORD(v58) = sub_767F60();
  v26 = sub_768080();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v25 & 1;
  v34 = v23;
  v11 = v53;
  v10 = v54;
  sub_93370(v21, v34, v33);
  v13 = v52;

  v35 = v30 & 1;
  sub_93360(v26, v28, v35);

LABEL_8:
  sub_937E4(v10, v11, v12, v13);
  sub_937E4(v26, v28, v35, v32);
  sub_93828(v10, v11, v12, v13);
  sub_93828(v26, v28, v35, v32);
  v50 = v55;
  *v55 = v10;
  v50[1] = v11;
  v50[2] = v12;
  v50[3] = v13;
  v50[4] = v26;
  v50[5] = v28;
  v50[6] = v35;
  v50[7] = v32;
  sub_93828(v26, v28, v35, v32);
  return sub_93828(v10, v11, v12, v13);
}

uint64_t sub_5825C0@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v35 = sub_BD88(&qword_95B710);
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v30 - v3;
  v36 = sub_BD88(&qword_95B718);
  __chkstk_darwin(v36);
  v38 = v30 - v5;
  v32 = sub_BD88(&qword_95B720);
  __chkstk_darwin(v32);
  v33 = v30 - v6;
  v37 = sub_BD88(&qword_95B728);
  __chkstk_darwin(v37);
  v34 = v30 - v7;
  v8 = sub_BD88(&qword_95B730);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = sub_BD88(&qword_95B738);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  v31 = sub_BD88(&qword_95B740);
  __chkstk_darwin(v31);
  v16 = v30 - v15;
  sub_1ED18((v1 + 2), &v41, &unk_93FBD0);
  if (*(&v42[0] + 1))
  {
    sub_BD88(&qword_95B778);
    if (swift_dynamicCast())
    {
      v17 = v40;
      if (*(v40 + 16))
      {
        sub_585EF8(v1, &v41);
        v18 = swift_allocObject();
        v30[1] = v30;
        v19 = v42[0];
        *(v18 + 16) = v41;
        *(v18 + 32) = v19;
        *(v18 + 48) = v42[1];
        *(v18 + 64) = v17;
        __chkstk_darwin(v18);
        v30[-2] = v1;
        sub_BD88(&qword_95B780);
        sub_585DB0();
        sub_585FF4();
        sub_767D30();
        (*(v12 + 16))(v10, v14, v11);
        swift_storeEnumTagMultiPayload();
        sub_16194(&qword_95B758, &qword_95B738);
        sub_767F00();
        (*(v12 + 8))(v14, v11);
      }

      else
      {

        v27 = *v1;
        v28 = v1[1];
        sub_1ED18((v1 + 2), v42, &unk_93FBD0);
        *&v41 = v27;
        *(&v41 + 1) = v28;
        sub_585C08(&v41, v10);
        swift_storeEnumTagMultiPayload();
        sub_16194(&qword_95B758, &qword_95B738);
        sub_585DB0();

        sub_767F00();
        sub_585E04(&v41);
      }

      sub_1ED18(v16, v33, &qword_95B740);
      swift_storeEnumTagMultiPayload();
      sub_585CF8();
      sub_16194(&qword_95B768, &qword_95B710);
      v29 = v34;
      sub_767F00();
      sub_1ED18(v29, v38, &qword_95B728);
      swift_storeEnumTagMultiPayload();
      sub_585C40();
      sub_585DB0();
      sub_767F00();
      sub_10A2C(v29, &qword_95B728);
      return sub_10A2C(v16, &qword_95B740);
    }
  }

  else
  {
    sub_10A2C(&v41, &unk_93FBD0);
  }

  sub_1ED18((v1 + 2), &v41, &unk_93FBD0);
  if (*(&v42[0] + 1))
  {
    sub_BD88(&qword_941C38);
    if (swift_dynamicCast())
    {
      v20 = v40;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      __chkstk_darwin(v21);
      v30[-2] = v1;
      sub_BD88(&qword_95B6D8);
      sub_585DB0();
      sub_585E74();
      sub_767D30();
      v22 = v35;
      (*(v2 + 16))(v33, v4, v35);
      swift_storeEnumTagMultiPayload();
      sub_585CF8();
      sub_16194(&qword_95B768, &qword_95B710);
      v23 = v34;
      sub_767F00();
      sub_1ED18(v23, v38, &qword_95B728);
      swift_storeEnumTagMultiPayload();
      sub_585C40();
      sub_767F00();
      sub_10A2C(v23, &qword_95B728);
      return (*(v2 + 8))(v4, v22);
    }
  }

  else
  {
    sub_10A2C(&v41, &unk_93FBD0);
  }

  v25 = *v1;
  v26 = v1[1];
  sub_1ED18((v1 + 2), v42, &unk_93FBD0);
  *&v41 = v25;
  *(&v41 + 1) = v26;
  sub_585C08(&v41, v38);
  swift_storeEnumTagMultiPayload();
  sub_585C40();
  sub_585DB0();

  sub_767F00();
  return sub_585E04(&v41);
}

uint64_t sub_582F44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_BD88(&qword_95B7B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - v8;
  v31 = sub_BD88(&qword_95B7B8);
  __chkstk_darwin(v31);
  v32 = v28 - v10;
  v33 = sub_BD88(&qword_95B798);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v29 = v28 - v11;
  if (*a1 == 0x6973736572706D69 && a1[1] == 0xEB00000000736E6FLL || (sub_76A950() & 1) != 0)
  {
    v28[2] = v6;
    v12 = sub_3531FC(a2);
    v13 = *(v12 + 16);
    v28[0] = v12;
    v28[1] = a3;
    if (v13)
    {
      v14 = v12 + 32;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        sub_1ED18(v14, v38, &qword_95B7D0);
        v34 = v38[0];
        v35 = v38[1];
        v36 = v39;
        sub_BD88(&qword_941C38);
        if (swift_dynamicCast())
        {
          v16 = v37;
          if (v37 != 0.0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_7C5D0(0, *(v15 + 2) + 1, 1, v15);
            }

            v18 = *(v15 + 2);
            v17 = *(v15 + 3);
            if (v18 >= v17 >> 1)
            {
              v15 = sub_7C5D0((v17 > 1), v18 + 1, 1, v15);
            }

            *(v15 + 2) = v18 + 1;
            v15[v18 + 4] = v16;
          }
        }

        v14 += 40;
        --v13;
      }

      while (v13);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v19 = sub_15080C(v15);
    v21 = v20;
    *&v38[0] = v28[0];
    swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_58621C;
    *(v23 + 24) = v22;
    sub_BD88(&qword_95B7C0);
    sub_16194(&qword_95B7C8, &qword_95B7C0);
    sub_586104();
    v24 = v29;
    sub_768240();
    v25 = v30;
    v26 = v33;
    (*(v30 + 16))(v32, v24, v33);
    swift_storeEnumTagMultiPayload();
    sub_586080();
    sub_586158();
    sub_767F00();
    return (*(v25 + 8))(v24, v26);
  }

  else
  {
    *&v38[0] = sub_3531FC(a2);
    swift_getKeyPath();
    sub_BD88(&qword_95B7C0);
    sub_16194(&qword_95B7C8, &qword_95B7C0);
    sub_58598C();
    sub_768240();
    (*(v7 + 16))(v32, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_586080();
    sub_586158();
    sub_767F00();
    return (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_583510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_132B4(a2, v10);
  sub_BD88(&qword_941C38);
  if (swift_dynamicCast())
  {
    v5 = v9;
    if (!*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = sub_10E8CC(_swiftEmptyArrayStorage);
    if (!*(v5 + 16))
    {
LABEL_7:
      memset(v10, 0, sizeof(v10));
      goto LABEL_8;
    }
  }

  v6 = sub_3DF2F8(0xD000000000000012, 0x80000000007E8460);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_132B4(*(v5 + 56) + 32 * v6, v10);
LABEL_8:
  sub_150B04(v10, a4);
  sub_10A2C(v10, &unk_93FBD0);
  return v5;
}

uint64_t sub_583620@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + 8;
  v5._countAndFlagsBits = sub_76A910();
  sub_769370(v5);

  v6._countAndFlagsBits = 93;
  v6._object = 0xE100000000000000;
  sub_769370(v6);
  result = sub_132B4(v3, (a2 + 2));
  *a2 = 91;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_5836B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_7CBF4(*(a1 + 16), 0);
  v4 = sub_618ED0(&v6, v3 + 4, v2, a1);

  sub_1A01E0();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = v3;
  sub_3C4864(&v6);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_BD88(&unk_947FF0);
  sub_16194(&qword_95B6E8, &unk_947FF0);
  sub_58598C();
  return sub_768240();
}

double sub_58386C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*(a2 + 16))
  {

    v7 = sub_3DF2F8(v4, v5);
    if (v8)
    {
      sub_132B4(*(a2 + 56) + 32 * v7, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  result = *&v11;
  v10 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  return result;
}

uint64_t sub_583900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_767EB0();
  LOBYTE(v19[0]) = 1;
  sub_583A94(v16);
  *&v15[7] = v16[0];
  *&v15[23] = v16[1];
  *&v15[39] = v16[2];
  *&v15[55] = v16[3];
  v5 = v19[0];
  sub_1ED18(a1 + 16, v12, &unk_93FBD0);
  v13 = 0;
  v14 = 1;
  sub_586440(v12, v11);
  v17[0] = v4;
  v17[1] = 0;
  v18[0] = v5;
  *&v18[1] = *v15;
  *&v18[17] = *&v15[16];
  *&v18[33] = *&v15[32];
  *&v18[49] = *&v15[48];
  *&v18[64] = *&v15[63];
  v6 = *&v15[63];
  v7 = *v18;
  *a2 = v4;
  *(a2 + 16) = v7;
  v8 = *&v18[16];
  v9 = *&v18[48];
  *(a2 + 48) = *&v18[32];
  *(a2 + 64) = v9;
  *(a2 + 32) = v8;
  *(a2 + 80) = v6;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  sub_586440(v11, a2 + 104);
  sub_1ED18(v17, v19, &qword_95B7E8);
  sub_586478(v12);
  sub_586478(v11);
  v19[0] = v4;
  v19[1] = 0;
  v20 = v5;
  v22 = *&v15[16];
  v23 = *&v15[32];
  *v24 = *&v15[48];
  *&v24[15] = *&v15[63];
  v21 = *v15;
  return sub_10A2C(v19, &qword_95B7E8);
}

uint64_t sub_583A94@<X0>(uint64_t a1@<X8>)
{
  sub_12EC40();

  v2 = sub_7680C0();
  v4 = v3;
  v6 = v5;
  v25 = sub_768090();
  v26 = v7;
  v9 = v8;
  v24 = v10;
  sub_93370(v2, v4, v6 & 1);

  sub_583C60();
  v11 = sub_7680C0();
  v13 = v12;
  v15 = v14;
  sub_767F60();
  v16 = sub_768080();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_93370(v11, v13, v15 & 1);

  *a1 = v25;
  *(a1 + 8) = v9;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_93360(v25, v9, v24 & 1);

  sub_93360(v16, v18, v20 & 1);

  sub_93370(v16, v18, v20 & 1);

  sub_93370(v25, v9, v24 & 1);
}

uint64_t sub_583C60()
{
  sub_1ED18(v0, v5, &unk_93FBD0);
  if (v6)
  {
    if (swift_dynamicCast())
    {

      return 0x676E69727453;
    }
  }

  else
  {
    sub_10A2C(v5, &unk_93FBD0);
  }

  sub_1ED18(v0, v5, &unk_93FBD0);
  if (v6)
  {
    sub_BE70(0, &qword_945820);
    if (swift_dynamicCast())
    {
      v2 = CFGetTypeID(cf);
      if (CFBooleanGetTypeID() == v2)
      {

        return 0x6E61656C6F6F42;
      }

      else if (CFNumberGetTypeID() == v2)
      {
        IsFloatType = CFNumberIsFloatType(cf);

        if (IsFloatType)
        {
          return 0x656C62756F44;
        }

        else
        {
          return 7630409;
        }
      }

      else
      {

        return 0x7265626D754ELL;
      }
    }
  }

  else
  {
    sub_10A2C(v5, &unk_93FBD0);
  }

  sub_1ED18(v0, v5, &unk_93FBD0);
  if (v6)
  {
    sub_BD88(&qword_95B778);
    if (swift_dynamicCast())
    {

      return 0x7961727241;
    }
  }

  else
  {
    sub_10A2C(v5, &unk_93FBD0);
  }

  sub_1ED18(v0, v5, &unk_93FBD0);
  if (v6)
  {
    sub_BD88(&qword_941C38);
    if (swift_dynamicCast())
    {

      return 0x7463656A624FLL;
    }
  }

  else
  {
    sub_10A2C(v5, &unk_93FBD0);
  }

  result = 0x6E776F6E6B6E753CLL;
  if (*(v0 + 24))
  {
    sub_1ED18(v0, v5, &unk_93FBD0);
    if (v6)
    {
      sub_BE70(0, &qword_95B7F8);
      if (swift_dynamicCast())
      {

        return 0x6E776F6E6B6E753CLL;
      }
    }

    else
    {
      sub_10A2C(v5, &unk_93FBD0);
    }

    v5[0] = sub_BD88(&unk_93FBD0);
    sub_BD88(&qword_95B7F0);
    return sub_7692A0();
  }

  return result;
}

uint64_t sub_584010@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_767E30();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_583900(v1, a1 + 24);
}

uint64_t sub_58404C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_BD88(&qword_95B800);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - v12;
  if (a1)
  {
    v46 = v10;
    v47 = v9;
    v48 = a4;
    *v13 = sub_767EA0();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v14 = *(a1 + 16);
    if (!v14)
    {
      v15 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v44 = a2;
    v45 = a3;
    v15 = sub_7CBF4(v14, 0);
    v16 = sub_618ED0(&v49, v15 + 4, v14, a1);

    sub_1A01E0();
    if (v16 == v14)
    {
      a2 = v44;
      a3 = v45;
LABEL_9:
      v49 = v15;
      sub_3C4864(&v49);
      sub_BD88(&qword_95B808);
      swift_getKeyPath();
      v19 = swift_allocObject();
      v19[2] = a1;
      v19[3] = a2;
      v19[4] = a3;

      sub_BD88(&unk_947FF0);
      sub_BD88(&qword_95B810);
      sub_16194(&qword_95B6E8, &unk_947FF0);
      sub_16194(&qword_95B818, &qword_95B810);
      sub_768240();
      v20 = sub_767FF0();
      sub_767CA0();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = &v13[*(sub_BD88(&qword_95B820) + 36)];
      *v29 = v20;
      *(v29 + 1) = v22;
      *(v29 + 2) = v24;
      *(v29 + 3) = v26;
      *(v29 + 4) = v28;
      v29[40] = 0;
      v30 = sub_767FF0();
      v31 = &v13[*(sub_BD88(&qword_95B828) + 36)];
      *v31 = 1;
      v31[8] = v30;
      v32 = v47;
      v33 = &v13[*(v47 + 36)];
      v34 = *(sub_767D80() + 20);
      v35 = enum case for RoundedCornerStyle.continuous(_:);
      v36 = sub_767E90();
      (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
      __asm { FMOV            V0.2D, #8.0 }

      *v33 = _Q0;
      *&v33[*(sub_BD88(&qword_95B830) + 36)] = 256;
      v42 = v48;
      sub_586550(v13, v48);
      return (*(v46 + 56))(v42, 0, 1, v32);
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v17 = *(v10 + 56);

    return v17(a4, 1, 1, v11);
  }

  return result;
}

uint64_t sub_5844B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26[0] = a1;
  v26[1] = a2;
  sub_12EC40();

  v9 = sub_7680C0();
  v11 = v10;
  v13 = v12;
  v14 = sub_768090();
  v16 = v15;
  v21 = v17;
  v19 = v18;
  sub_93370(v9, v11, v13 & 1);

  sub_584608(a1, a2, a3, a4, a5, v26);
  v26[4] = 3;
  v27 = 0;
  sub_586440(v26, v25);
  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = v21 & 1;
  *(a6 + 24) = v19;
  *(a6 + 32) = 0x4030000000000000;
  *(a6 + 40) = 0;
  sub_586440(v25, a6 + 48);
  sub_93360(v14, v16, v21 & 1);

  sub_586478(v26);
  sub_586478(v25);
  sub_93370(v14, v16, v21 & 1);
}

double sub_584608@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000000007E8460 == a2 || (sub_76A950()) && a3 && *(a3 + 16) && (v12 = sub_3DF2F8(a1, a2), (v13))
  {
    sub_132B4(*(a3 + 56) + 32 * v12, v18);
    sub_13310(v18, v19);
    if (a5)
    {
      *&v18[0] = 0;
      *(&v18[0] + 1) = 0xE000000000000000;
      sub_76A7F0();
      v20._countAndFlagsBits = 10272;
      v20._object = 0xE200000000000000;
      sub_769370(v20);
      v21._countAndFlagsBits = a4;
      v21._object = a5;
      sub_769370(v21);
      v22._countAndFlagsBits = 41;
      v22._object = 0xE100000000000000;
      sub_769370(v22);
      v14 = v18[0];
      *(a6 + 24) = &type metadata for String;
      *a6 = v14;
      sub_BEB8(v19);
      return result;
    }

    sub_BEB8(v19);
    if (!*(a3 + 16))
    {
      goto LABEL_14;
    }
  }

  else if (!a3 || !*(a3 + 16))
  {
    goto LABEL_14;
  }

  v16 = sub_3DF2F8(a1, a2);
  if (v17)
  {
    sub_132B4(*(a3 + 56) + 32 * v16, a6);
    return result;
  }

LABEL_14:
  result = 0.0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  return result;
}

__n128 sub_5847A8@<Q0>(uint64_t a1@<X8>)
{
  sub_1ED18(v1, &v35, &unk_93FBD0);
  if (v36.n128_u64[1])
  {
    sub_BD88(&qword_95B778);
    if (swift_dynamicCast())
    {
      v3 = *(*&v53[0] + 16);

      *&cf = v3;
      *&v54 = sub_76A910();
      *(&v54 + 1) = v4;
      v58._countAndFlagsBits = 0x736D65746920;
      v58._object = 0xE600000000000000;
      sub_769370(v58);
      cf = v54;
      v47.n128_u64[0] = 0;
      v47.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v48) = 0;

      sub_767F00();
      v45 = v56;
      v44 = 0;
      v57[18] = 0;
      sub_BD88(&qword_95B8B0);
      sub_BD88(&qword_95B8C0);
      sub_586A28();
      sub_586AA4();
      sub_767F00();
      v55 = v40;
      v56 = v41;
      *v57 = *v42;
      *&v57[15] = *&v42[15];
      v54 = v39;
LABEL_8:
      LOBYTE(v51) = 0;
      v57[19] = 0;
      sub_BD88(&qword_95B898);
      sub_58699C();
      sub_767F00();

      goto LABEL_23;
    }
  }

  else
  {
    sub_10A2C(&v35, &unk_93FBD0);
  }

  sub_1ED18(v1, &v35, &unk_93FBD0);
  if (v36.n128_u64[1])
  {
    sub_BD88(&qword_941C38);
    if (swift_dynamicCast())
    {
      v5 = *(*&v53[0] + 16);

      *&cf = v5;
      *&v54 = sub_76A910();
      *(&v54 + 1) = v6;
      v59._countAndFlagsBits = 0x7379656B20;
      v59._object = 0xE500000000000000;
      sub_769370(v59);
      cf = v54;
      v47.n128_u64[0] = 0;
      v47.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v48) = 1;

      sub_767F00();
      v45 = v56;
      v44 = 0;
      v57[18] = 0;
      sub_BD88(&qword_95B8B0);
      sub_BD88(&qword_95B8C0);
      sub_586A28();
      sub_586AA4();
      sub_767F00();
      v56 = v41;
      *v57 = *v42;
      *&v57[15] = *&v42[15];
      v54 = v39;
      v55 = v40;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10A2C(&v35, &unk_93FBD0);
  }

  sub_1ED18(v1, &v54, &unk_93FBD0);
  if (v55.n128_u64[1])
  {
    sub_BE70(0, &qword_945820);
    if (swift_dynamicCast())
    {
      v7 = cf;
      v8 = CFGetTypeID(cf);
      v34 = v7;
      if (CFBooleanGetTypeID() == v8)
      {
        v9 = [v7 BOOLValue];
        if (v9)
        {
          v10 = 1702195828;
        }

        else
        {
          v10 = 0x65736C6166;
        }

        if (v9)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        KeyPath = swift_getKeyPath();
        *&cf = v10;
        *(&cf + 1) = v11;
        v47.n128_u64[0] = 0;
        v47.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v48 = KeyPath;
        v13 = 2;
      }

      else
      {
        v25 = [v7 stringValue];
        v26 = sub_769240();
        v28 = v27;

        v29 = swift_getKeyPath();
        *&cf = v26;
        *(&cf + 1) = v28;
        v47.n128_u64[0] = 0;
        v47.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v48 = v29;
        v13 = 258;
      }

      WORD4(v48) = v13;
      sub_BD88(&qword_95B8E0);
      sub_586BB4();
      sub_767F00();
      v45 = BYTE9(v56);
      v44 = 0;
      v57[17] = 0;
      v30 = v54;
      v31 = v55.n128_u8[0];
      v32 = v55.n128_u8[0];
      v33 = v54;
      sub_586D78(v54, *(&v54 + 1), v55.n128_i8[0]);
      sub_586D78(v30, *(&v30 + 1), v31);
      sub_BD88(&qword_95B8D0);
      sub_BD88(&qword_95B900);
      sub_586B30();
      sub_586C6C();
      sub_767F00();
      v56 = v48;
      *v57 = v49;
      *&v57[16] = v50;
      v54 = cf;
      v55 = v47;
      LOBYTE(v51) = 1;
      v57[18] = 1;
      sub_BD88(&qword_95B8B0);
      sub_BD88(&qword_95B8C0);
      sub_586A28();
      sub_586AA4();
      sub_767F00();
      v41 = v37;
      *v42 = *v38;
      *&v42[15] = *&v38[15];
      v39 = v35;
      v40 = v36;
      v56 = v37;
      *v57 = *v38;
      *&v57[15] = *&v38[15];
      v54 = v35;
      v55 = v36;
      LOBYTE(v53[0]) = 0;
      v57[19] = 0;
      sub_1ED18(&v39, &cf, &qword_95B898);
      sub_BD88(&qword_95B898);
      sub_58699C();
      sub_767F00();
      sub_586DC0(v33, *(&v30 + 1), v32);
      sub_10A2C(&v39, &qword_95B898);

      sub_586DC0(v33, *(&v30 + 1), v32);
      v56 = v48;
      *v57 = v49;
      *&v57[16] = v50;
      v22 = cf;
      v21 = v47;
      goto LABEL_24;
    }
  }

  else
  {
    sub_10A2C(&v54, &unk_93FBD0);
  }

  sub_1ED18(v1, &v51, &unk_93FBD0);
  if (!v52)
  {
    sub_10A2C(&v51, &unk_93FBD0);
    LOBYTE(v39) = 0;
    LOBYTE(v35) = 1;
    cf = xmmword_7A5AC0;
    v47.n128_u8[0] = 0;
    v47.n128_u64[1] = _swiftEmptyArrayStorage;
    HIBYTE(v50) = 1;
    sub_BD88(&qword_95B898);
    sub_58699C();
    sub_767F00();
    goto LABEL_25;
  }

  sub_13310(&v51, v53);
  sub_132B4(v53, &v54);
  v14 = sub_7692A0();
  v16 = v15;
  v17 = swift_getKeyPath();
  v18 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = swift_getKeyPath();
  LOBYTE(cf) = v19;
  *&v35 = v14;
  *(&v35 + 1) = v16;
  v36.n128_u8[0] = 0;
  v36.n128_u64[1] = _swiftEmptyArrayStorage;
  *&v37 = v17;
  BYTE8(v37) = 2;
  *v38 = v20;
  *&v38[8] = v18;
  v38[16] = v19;
  v56 = v37;
  *v57 = *v38;
  v57[16] = v19;
  v54 = v35;
  v55 = v36;
  v43 = 1;
  v57[17] = 1;
  sub_1ED18(&v35, &cf, &qword_95B900);
  sub_BD88(&qword_95B8D0);
  sub_BD88(&qword_95B900);
  sub_586B30();
  sub_586C6C();
  sub_767F00();
  v56 = v48;
  *v57 = v49;
  *&v57[16] = v50;
  v54 = cf;
  v55 = v47;
  v44 = 1;
  v57[18] = 1;
  sub_BD88(&qword_95B8B0);
  sub_BD88(&qword_95B8C0);
  sub_586A28();
  sub_586AA4();
  sub_767F00();
  v56 = v41;
  *v57 = *v42;
  *&v57[15] = *&v42[15];
  v54 = v39;
  v55 = v40;
  v45 = 0;
  v57[19] = 0;
  sub_BD88(&qword_95B898);
  sub_58699C();
  sub_767F00();
  sub_10A2C(&v35, &qword_95B900);
  sub_BEB8(v53);
LABEL_23:
  v56 = v48;
  *v57 = v49;
  *&v57[16] = v50;
  v22 = cf;
  v21 = v47;
LABEL_24:
  v54 = v22;
  v55 = v21;
LABEL_25:
  v23 = *v57;
  *(a1 + 32) = v56;
  *(a1 + 48) = v23;
  *(a1 + 64) = *&v57[16];
  result = v55;
  *a1 = v54;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_585278(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_5852C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_585314@<X0>(uint64_t *a1@<X8>)
{
  result = sub_767DD0();
  *a1 = result;
  return result;
}

unint64_t sub_58536C()
{
  result = qword_95B608;
  if (!qword_95B608)
  {
    sub_133D8(&qword_95B5F8);
    sub_5853F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B608);
  }

  return result;
}

unint64_t sub_5853F0()
{
  result = qword_95B610;
  if (!qword_95B610)
  {
    sub_133D8(&qword_95B618);
    sub_16194(&qword_95B620, &qword_95B628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B610);
  }

  return result;
}

uint64_t sub_5854A8@<X0>(uint64_t a1@<X8>)
{
  result = sub_767DF0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_58551C()
{
  result = qword_95B6A0;
  if (!qword_95B6A0)
  {
    sub_133D8(&qword_95B668);
    sub_133D8(&qword_95B660);
    sub_767D20();
    sub_16194(&qword_95B690, &qword_95B660);
    swift_getOpaqueTypeConformance2();
    sub_16194(&qword_95B6A8, &qword_95B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B6A0);
  }

  return result;
}

uint64_t sub_585664(uint64_t a1)
{
  v2 = sub_BD88(&qword_95B668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5856D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_58571C(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_585778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5857DC()
{
  v1 = *(type metadata accessor for DebugMetricsEventDetailView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_75C510();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5858A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_58590C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DebugMetricsEventDetailView(0);

  return sub_580A80(a1, a2);
}

unint64_t sub_58598C()
{
  result = qword_95B6F0;
  if (!qword_95B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B6F0);
  }

  return result;
}

uint64_t sub_5859E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_585A4C()
{
  sub_133D8(&qword_95B678);
  sub_133D8(&qword_95B670);
  sub_767FC0();
  sub_133D8(&qword_95B668);
  sub_133D8(&qword_95B698);
  sub_58551C();
  sub_133D8(&qword_95B6B8);
  sub_16194(&qword_95B6C0, &qword_95B6B8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_585C40()
{
  result = qword_95B748;
  if (!qword_95B748)
  {
    sub_133D8(&qword_95B728);
    sub_585CF8();
    sub_16194(&qword_95B768, &qword_95B710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B748);
  }

  return result;
}

unint64_t sub_585CF8()
{
  result = qword_95B750;
  if (!qword_95B750)
  {
    sub_133D8(&qword_95B740);
    sub_16194(&qword_95B758, &qword_95B738);
    sub_585DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B750);
  }

  return result;
}

unint64_t sub_585DB0()
{
  result = qword_95B760;
  if (!qword_95B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B760);
  }

  return result;
}

uint64_t sub_585E34()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_585E74()
{
  result = qword_95B770;
  if (!qword_95B770)
  {
    sub_133D8(&qword_95B6D8);
    sub_58598C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B770);
  }

  return result;
}

uint64_t sub_585F30()
{

  if (*(v0 + 56))
  {
    sub_BEB8(v0 + 32);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_585F90@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  sub_1ED18((v3 + 2), (a1 + 2), &unk_93FBD0);
  *a1 = v5;
  a1[1] = v4;
}

unint64_t sub_585FF4()
{
  result = qword_95B788;
  if (!qword_95B788)
  {
    sub_133D8(&qword_95B780);
    sub_586080();
    sub_586158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B788);
  }

  return result;
}

unint64_t sub_586080()
{
  result = qword_95B790;
  if (!qword_95B790)
  {
    sub_133D8(&qword_95B798);
    sub_586104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B790);
  }

  return result;
}

unint64_t sub_586104()
{
  result = qword_95B7A0;
  if (!qword_95B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B7A0);
  }

  return result;
}

unint64_t sub_586158()
{
  result = qword_95B7A8;
  if (!qword_95B7A8)
  {
    sub_133D8(&qword_95B7B0);
    sub_58598C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B7A8);
  }

  return result;
}

uint64_t sub_5861DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_586224()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_58625C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1 + 1);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_5862A0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_5862FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_58637C()
{
  result = qword_95B7D8;
  if (!qword_95B7D8)
  {
    sub_133D8(&qword_95B7E0);
    sub_585C40();
    sub_585DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B7D8);
  }

  return result;
}

uint64_t sub_5864A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_5864E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  v8 = a1[1];
  *a2 = sub_767E10();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_5844B0(v7, v8, v4, v5, v6, a2 + 24);
}

uint64_t sub_586550(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_95B800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5865C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_58661C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_5866D4()
{
  result = qword_95B848;
  if (!qword_95B848)
  {
    sub_133D8(&qword_95B850);
    sub_586758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B848);
  }

  return result;
}

unint64_t sub_586758()
{
  result = qword_95B858;
  if (!qword_95B858)
  {
    sub_133D8(&qword_95B800);
    sub_586810();
    sub_16194(&qword_95B890, &qword_95B830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B858);
  }

  return result;
}

unint64_t sub_586810()
{
  result = qword_95B860;
  if (!qword_95B860)
  {
    sub_133D8(&qword_95B828);
    sub_5868C8();
    sub_16194(&qword_95B880, &qword_95B888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B860);
  }

  return result;
}

unint64_t sub_5868C8()
{
  result = qword_95B868;
  if (!qword_95B868)
  {
    sub_133D8(&qword_95B820);
    sub_16194(&qword_95B870, &qword_95B878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B868);
  }

  return result;
}

unint64_t sub_58699C()
{
  result = qword_95B8A0;
  if (!qword_95B8A0)
  {
    sub_133D8(&qword_95B898);
    sub_586A28();
    sub_586AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B8A0);
  }

  return result;
}

unint64_t sub_586A28()
{
  result = qword_95B8A8;
  if (!qword_95B8A8)
  {
    sub_133D8(&qword_95B8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B8A8);
  }

  return result;
}

unint64_t sub_586AA4()
{
  result = qword_95B8B8;
  if (!qword_95B8B8)
  {
    sub_133D8(&qword_95B8C0);
    sub_586B30();
    sub_586C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B8B8);
  }

  return result;
}

unint64_t sub_586B30()
{
  result = qword_95B8C8;
  if (!qword_95B8C8)
  {
    sub_133D8(&qword_95B8D0);
    sub_586BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B8C8);
  }

  return result;
}

unint64_t sub_586BB4()
{
  result = qword_95B8D8;
  if (!qword_95B8D8)
  {
    sub_133D8(&qword_95B8E0);
    sub_16194(&qword_95B8E8, &qword_95B8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B8D8);
  }

  return result;
}

unint64_t sub_586C6C()
{
  result = qword_95B8F8;
  if (!qword_95B8F8)
  {
    sub_133D8(&qword_95B900);
    sub_586BB4();
    sub_16194(&qword_95B620, &qword_95B628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B8F8);
  }

  return result;
}

uint64_t sub_586D24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_767DB0();
  *a1 = result;
  return result;
}

uint64_t sub_586D78(uint64_t a1, uint64_t a2, char a3)
{
  sub_93360(a1, a2, a3 & 1);
}

uint64_t sub_586DC0(uint64_t a1, uint64_t a2, char a3)
{
  sub_93370(a1, a2, a3 & 1);
}

unint64_t sub_586E0C()
{
  result = qword_95B908;
  if (!qword_95B908)
  {
    sub_133D8(&qword_95B910);
    sub_58699C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B908);
  }

  return result;
}

uint64_t sub_58702C()
{
  ObjectType = swift_getObjectType();
  v29 = ObjectType;
  v37 = sub_7664F0();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_7643E0();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_7621E0();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_BD88(&qword_95B948);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_75BE80();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "layoutSubviews", v14, v29);
  v17 = enum case for ChartOrCategoryBrickStyle.tile(_:);
  v18 = sub_761270();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v11, v17, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  sub_75BE70();
  *(&v44 + 1) = v12;
  v45 = &protocol witness table for PlaceholderBrick;
  v20 = sub_B1B4(&v43);
  (*(v13 + 16))(v20, v16, v12);
  v21 = [v0 traitCollection];
  sub_134D8(&v43, v41);
  sub_7621A0();
  sub_BEB8(&v43);
  v22 = v31;
  (*(v4 + 16))(v30, v8, v31);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28CategoryBrickPlaceholderView_artworkPlaceholder];
  v24 = sub_759210();
  v40 = &protocol witness table for UIView;
  v39 = v24;
  v38 = v23;
  v47 = 0u;
  v48 = 0u;
  v49 = 1;
  v25 = v23;
  v26 = v32;
  sub_7643D0();
  sub_75D650();
  v27 = v33;
  sub_7643A0();
  (*(v36 + 8))(v27, v37);
  (*(v34 + 8))(v26, v35);
  (*(v4 + 8))(v8, v22);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_587604()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_99FD88);
  sub_BE38(v0, qword_99FD88);
  return sub_768800();
}

uint64_t sub_58767C()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_99FDA0);
  sub_BE38(v0, qword_99FDA0);
  return sub_768800();
}

uint64_t sub_5876F4()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_99FDB8);
  sub_BE38(v0, qword_99FDB8);
  return sub_768800();
}

uint64_t sub_58776C()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_99FDD0);
  sub_BE38(v0, qword_99FDD0);
  return sub_768800();
}

uint64_t sub_5877E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v3 = sub_769290();
  v137 = *(v3 - 8);
  v138 = v3;
  __chkstk_darwin(v3);
  v136 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_95B950);
  __chkstk_darwin(v5 - 8);
  v150 = &v128 - v6;
  v7 = sub_BD88(&qword_95B958);
  __chkstk_darwin(v7 - 8);
  v149 = &v128 - v8;
  v9 = sub_764CF0();
  __chkstk_darwin(v9 - 8);
  v132 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v135 = &v128 - v12;
  __chkstk_darwin(v13);
  v140 = &v128 - v14;
  __chkstk_darwin(v15);
  v141 = &v128 - v16;
  v151 = sub_7572E0();
  v146 = *(v151 - 8);
  __chkstk_darwin(v151);
  v128 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v128 - v19;
  __chkstk_darwin(v21);
  v23 = &v128 - v22;
  __chkstk_darwin(v24);
  v145 = &v128 - v25;
  __chkstk_darwin(v26);
  v144 = &v128 - v27;
  v28 = sub_75AD30();
  v147 = *(v28 - 8);
  v148 = v28;
  __chkstk_darwin(v28);
  v129 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v131 = &v128 - v31;
  __chkstk_darwin(v32);
  v134 = &v128 - v33;
  __chkstk_darwin(v34);
  v36 = &v128 - v35;
  v37 = sub_75B1D0();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v130 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v133 = &v128 - v41;
  __chkstk_darwin(v42);
  v139 = &v128 - v43;
  __chkstk_darwin(v44);
  v46 = &v128 - v45;
  v48 = __chkstk_darwin(v47);
  v50 = &v128 - v49;
  v142 = *(v38 + 16);
  v143 = a1;
  v142(&v128 - v49, a1, v37, v48);
  v51 = (*(v38 + 88))(v50, v37);
  if (v51 != enum case for AdPlacementType.searchLanding(_:))
  {
    if (v51 == enum case for AdPlacementType.searchResults(_:))
    {
      goto LABEL_37;
    }

    if (v51 == enum case for AdPlacementType.today(_:))
    {
      sub_7689F0();
      sub_7689C0();
      if (qword_93DCD0 != -1)
      {
        swift_once();
      }

      v65 = sub_BD88(&unk_945000);
      sub_BE38(v65, qword_99FDB8);
      sub_7686D0();

      if (v153 == 2 || (v153 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_7572D0();
      sub_7572B0();
      v66 = *(v146 + 1);
      v66(v23, v151);
      sub_764CC0();
      (v142)(v139, v143, v37);
      sub_BD88(&unk_9498B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_77B6D0;
      v153 = 1953459315;
      v154 = 0xE400000000000000;
      sub_76A6E0();
      *(inited + 96) = &type metadata for Int;
      *(inited + 72) = 2;
      sub_10E1F8(inited);
      swift_setDeallocating();
      sub_588F1C(inited + 32);
      v68 = v136;
      sub_769280();
      v69 = sub_769250();
      v71 = v70;
      (*(v137 + 8))(v68, v138);
      if (v71 >> 60 != 15)
      {
        v72 = objc_opt_self();
        isa = sub_7570B0().super.isa;
        v153 = 0;
        v74 = [v72 JSONObjectWithData:isa options:0 error:&v153];

        if (v74)
        {
          v75 = v153;
          sub_76A510();
          sub_30CC1C(v69, v71);
          swift_unknownObjectRelease();
          sub_BD88(&qword_95B960);
          swift_dynamicCast();
        }

        else
        {
          v110 = v153;
          sub_756F70();

          swift_willThrow();
          sub_30CC1C(v69, v71);
        }
      }

      v111 = v134;
      sub_75AD10();
      v112 = v144;
      sub_7572D0();
      v146 = sub_7572B0();
      v113 = v151;
      v66(v112, v151);
      v114 = v145;
      sub_7572D0();
      sub_7572B0();
      v66(v114, v113);
    }

    else if (v51 == enum case for AdPlacementType.productPageYMAL(_:))
    {
      sub_7689F0();
      sub_7689C0();
      if (qword_93DCD8 != -1)
      {
        swift_once();
      }

      v84 = sub_BD88(&unk_945000);
      sub_BE38(v84, qword_99FDD0);
      sub_7686D0();

      if (v153 == 2 || (v153 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_7572D0();
      sub_7572B0();
      v85 = *(v146 + 1);
      v85(v20, v151);
      sub_764CC0();
      (v142)(v133, v143, v37);
      sub_BD88(&unk_9498B0);
      v86 = swift_initStackObject();
      *(v86 + 16) = xmmword_77B6D0;
      v153 = 1953459315;
      v154 = 0xE400000000000000;
      sub_76A6E0();
      *(v86 + 96) = &type metadata for Int;
      *(v86 + 72) = 1;
      sub_10E1F8(v86);
      swift_setDeallocating();
      sub_588F1C(v86 + 32);
      v87 = v136;
      sub_769280();
      v88 = sub_769250();
      v90 = v89;
      (*(v137 + 8))(v87, v138);
      if (v90 >> 60 != 15)
      {
        v91 = objc_opt_self();
        v92 = sub_7570B0().super.isa;
        v153 = 0;
        v93 = [v91 JSONObjectWithData:v92 options:0 error:&v153];

        if (v93)
        {
          v94 = v153;
          sub_76A510();
          sub_30CC1C(v88, v90);
          swift_unknownObjectRelease();
          sub_BD88(&qword_95B960);
          swift_dynamicCast();
        }

        else
        {
          v115 = v153;
          sub_756F70();

          swift_willThrow();
          sub_30CC1C(v88, v90);
        }
      }

      v111 = v131;
      sub_75AD10();
      v116 = v144;
      sub_7572D0();
      v146 = sub_7572B0();
      v117 = v151;
      v85(v116, v151);
      v118 = v145;
      sub_7572D0();
      sub_7572B0();
      v85(v118, v117);
    }

    else
    {
      if (v51 != enum case for AdPlacementType.productPageYMALDuringDownload(_:))
      {
        v109 = sub_7623E0();
        (*(*(v109 - 8) + 56))(v152, 1, 1, v109);
        return (*(v38 + 8))(v50, v37);
      }

      sub_7689F0();
      sub_7689C0();
      if (qword_93DCD8 != -1)
      {
        swift_once();
      }

      v95 = sub_BD88(&unk_945000);
      sub_BE38(v95, qword_99FDD0);
      sub_7686D0();

      if (v153 == 2 || (v153 & 1) == 0)
      {
        goto LABEL_37;
      }

      v96 = v128;
      sub_7572D0();
      sub_7572B0();
      v97 = *(v146 + 1);
      v97(v96, v151);
      sub_764CC0();
      (v142)(v130, v143, v37);
      sub_BD88(&unk_9498B0);
      v98 = swift_initStackObject();
      *(v98 + 16) = xmmword_77B6D0;
      v153 = 1953459315;
      v154 = 0xE400000000000000;
      sub_76A6E0();
      *(v98 + 96) = &type metadata for Int;
      *(v98 + 72) = 1;
      sub_10E1F8(v98);
      swift_setDeallocating();
      sub_588F1C(v98 + 32);
      v99 = v136;
      sub_769280();
      v100 = sub_769250();
      v102 = v101;
      (*(v137 + 8))(v99, v138);
      if (v102 >> 60 != 15)
      {
        v103 = objc_opt_self();
        v104 = sub_7570B0().super.isa;
        v153 = 0;
        v105 = [v103 JSONObjectWithData:v104 options:0 error:&v153];

        if (v105)
        {
          v106 = v153;
          sub_76A510();
          sub_30CC1C(v100, v102);
          swift_unknownObjectRelease();
          sub_BD88(&qword_95B960);
          swift_dynamicCast();
        }

        else
        {
          v119 = v153;
          sub_756F70();

          swift_willThrow();
          sub_30CC1C(v100, v102);
        }
      }

      v111 = v129;
      sub_75AD10();
      v120 = v144;
      sub_7572D0();
      v146 = sub_7572B0();
      v121 = v151;
      v97(v120, v151);
      v122 = v145;
      sub_7572D0();
      sub_7572B0();
      v97(v122, v121);
    }

    v124 = v147;
    v123 = v148;
    v125 = v149;
    (*(v147 + 16))(v149, v111, v148);
    (*(v124 + 56))(v125, 0, 1, v123);
    v126 = sub_761560();
    (*(*(v126 - 8) + 56))(v150, 1, 1, v126);
    v64 = v152;
    sub_7623C0();
    (*(v124 + 8))(v111, v123);
    goto LABEL_46;
  }

  sub_7689F0();
  sub_7689C0();
  if (qword_93DCC0 != -1)
  {
    swift_once();
  }

  v52 = sub_BD88(&unk_945000);
  sub_BE38(v52, qword_99FD88);
  sub_7686D0();

  if (v153 == 2 || (v153 & 1) == 0)
  {
    sub_7689C0();
    if (qword_93DCC8 != -1)
    {
      swift_once();
    }

    sub_BE38(v52, qword_99FDA0);
    sub_7686D0();

    if (v153 != 2 && (v153 & 1) != 0)
    {
      v76 = v144;
      sub_7572D0();
      sub_7572B0();
      v77 = *(v146 + 1);
      v78 = v151;
      v77(v76, v151);
      v79 = v145;
      sub_7572D0();
      sub_7572B0();
      v77(v79, v78);
      (*(v147 + 56))(v149, 1, 1, v148);
      v80 = enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
      v81 = sub_761560();
      v82 = *(v81 - 8);
      v83 = v150;
      (*(v82 + 104))(v150, v80, v81);
      (*(v82 + 56))(v83, 0, 1, v81);
      v64 = v152;
      sub_7623C0();
      goto LABEL_46;
    }

LABEL_37:
    v107 = sub_7623E0();
    return (*(*(v107 - 8) + 56))(v152, 1, 1, v107);
  }

  v53 = v144;
  sub_7572D0();
  v54 = sub_7572B0();
  v139 = v55;
  v140 = v54;
  v56 = *(v146 + 1);
  v57 = v151;
  v56(v53, v151);
  v146 = ":SOME_CPP_VERSION_ID}}}]}";
  sub_764CC0();
  (v142)(v46, v143, v37);
  sub_75AD10();
  sub_7572D0();
  v146 = sub_7572B0();
  v143 = v58;
  v56(v53, v57);
  v59 = v145;
  sub_7572D0();
  sub_7572B0();
  v56(v59, v57);
  v60 = v147;
  v61 = v148;
  v62 = v149;
  (*(v147 + 16))(v149, v36, v148);
  (*(v60 + 56))(v62, 0, 1, v61);
  v63 = sub_761560();
  (*(*(v63 - 8) + 56))(v150, 1, 1, v63);
  v64 = v152;
  sub_7623C0();
  (*(v60 + 8))(v36, v61);
LABEL_46:
  v127 = sub_7623E0();
  return (*(*(v127 - 8) + 56))(v64, 0, 1, v127);
}

uint64_t sub_588F1C(uint64_t a1)
{
  v2 = sub_BD88(&qword_940758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_588FFC()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_75E080();
  sub_161DC(v4, qword_99FE90);
  v24 = sub_BE38(v4, qword_99FE90);
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v5 = sub_766CA0();
  v6 = sub_BE38(v5, qword_99FDE8);
  v31[3] = v5;
  v31[4] = &protocol witness table for StaticDimension;
  v7 = sub_B1B4(v31);
  v21 = *(*(v5 - 8) + 16);
  v21(v7, v6, v5);
  *v3 = UIFontTextStyleBody;
  v8 = v1[13];
  v23 = enum case for FontSource.textStyle(_:);
  v22 = v8;
  v8(v3);
  v30[3] = v5;
  v30[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v30);
  v28 = v0;
  v29 = &protocol witness table for FontSource;
  v9 = sub_B1B4(v27);
  v20 = v1[2];
  v20(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  sub_766CB0();
  v19 = v1[1];
  v19(v3, v0);
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v5, qword_99FE18);
  v28 = v5;
  v29 = &protocol witness table for StaticDimension;
  v12 = sub_B1B4(v27);
  v21(v12, v11, v5);
  *v3 = v10;
  v13 = v23;
  v14 = v22;
  v22(v3, v23, v0);
  v26[3] = v5;
  v26[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v26);
  v25[3] = v0;
  v25[4] = &protocol witness table for FontSource;
  v15 = sub_B1B4(v25);
  v20(v15, v3, v0);
  v16 = v10;
  sub_766CB0();
  v19(v3, v0);
  *v3 = v16;
  v14(v3, v13, v0);
  v17 = v16;
  return sub_75E060();
}

uint64_t sub_5893B8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_766CA0();
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  *v6 = UIFontTextStyleBody;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v12[3] = v3;
  v12[4] = &protocol witness table for FontSource;
  v8 = sub_B1B4(v12);
  (*(v4 + 16))(v8, v6, v3);
  v9 = UIFontTextStyleBody;
  sub_766CB0();
  return (*(v4 + 8))(v6, v3);
}

id sub_58952C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_95B9C8);
  __chkstk_darwin(v10);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViewCount] = 0;
  type metadata accessor for TodayCardChinLockupListIconView(0);
  sub_7667C0();
  sub_58C5E4();
  sub_767480();
  swift_weakInit();
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_impressionsUpdateBlock];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_todayCardStyle;
  v13 = enum case for TodayCard.Style.light(_:);
  v14 = sub_765B10();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_clickActionHandler];
  *v15 = 0;
  v15[1] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_wantsCardConsistentMargins] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_BD88(&qword_9477F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_77B6D0;
  *(v17 + 32) = sub_767B80();
  *(v17 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v19[3] = ObjectType;
  v19[0] = v16;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v19);
  return v16;
}

void sub_589814()
{
  v1 = v0;
  v2 = sub_765B10();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded] & 1) != 0 || v0[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory] != 6 || (v7 = [v0 traitCollection], v8 = sub_769A00(), v7, (v8))
  {
    v9 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_todayCardStyle;
    swift_beginAccess();
    (*(v3 + 16))(v6, &v1[v9], v2);
    v10 = sub_4C0AA4(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = [objc_opt_self() clearColor];
  }

  [v1 setBackgroundColor:v10];
}

int64_t sub_5899B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v8 = v6;
  v93 = a6;
  v85 = a2;
  v12 = a5;
  v13 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v13 - 8);
  v96 = v81 - v14;
  v15 = sub_7652D0();
  __chkstk_darwin(v15 - 8);
  v92 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_765240();
  v17 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_765B10();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory);
  *(v8 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory) = a5;
  if (v12 == 7)
  {
    if (v24 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v8 setNeedsLayout];
    goto LABEL_6;
  }

  if (v24 == 7)
  {
    goto LABEL_5;
  }

  switch(v12)
  {
    case 6:
      if (v24 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v24 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v24 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v24 - 7) > 0xFFFFFFFC || v24 != v12)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  (*(v20 + 16))(v23, a4, v19, v21);
  v25 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_todayCardStyle;
  swift_beginAccess();
  (*(v20 + 24))(v8 + v25, v23, v19);
  swift_endAccess();
  sub_589814();
  (*(v20 + 8))(v23, v19);
  v26 = a1;
  v27 = sub_761E50();
  v28 = v27;
  v29 = v27 & 0xFFFFFFFFFFFFFF8;
  v30 = v27 >> 62;
  if (v27 >> 62)
  {
    while (1)
    {
      if (v28 < 0)
      {
        v26 = v28;
      }

      else
      {
        v26 = v29;
      }

      v79 = sub_76A860();
      if (sub_76A860() < 0)
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      if (v79 >= 6)
      {
        v80 = 6;
      }

      else
      {
        v80 = v79;
      }

      if (v79 >= 0)
      {
        v7 = v80;
      }

      else
      {
        v7 = 6;
      }

      result = sub_76A860();
      if (result < v7)
      {
        goto LABEL_130;
      }

LABEL_11:
      if ((v28 & 0xC000000000000001) != 0 && v7)
      {
        v26 = sub_764F90();

        sub_76A750(0);
        if (v7 != 1)
        {
          sub_76A750(1);
          if (v7 != 2)
          {
            sub_76A750(2);
            if (v7 != 3)
            {
              sub_76A750(3);
              if (v7 != 4)
              {
                sub_76A750(4);
                if (v7 != 5)
                {
                  sub_76A750(5);
                }
              }
            }
          }
        }
      }

      else
      {
      }

      v95 = v17;

      if (v30)
      {
        v17 = sub_76A870();
        v97 = v32;
        v30 = v33;
        v26 = v34;

        v7 = v26 >> 1;
      }

      else
      {
        v17 = v28 & 0xFFFFFFFFFFFFFF8;
        v97 = (v28 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      if (__OFSUB__(v7, v30))
      {
        goto LABEL_114;
      }

      sub_58A838(v7 - v30, v93);
      *(v8 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViewCount) = v7 - v30;
      v26 = [v8 traitCollection];
      [v8 bounds];
      Width = CGRectGetWidth(v100);
      if ((sub_769A00() & 1) == 0)
      {
        v41 = ASKDeviceTypeGetCurrent();
        v42 = sub_769240();
        v44 = v43;
        if (v42 != sub_769240() || v44 != v45)
        {
          sub_76A950();
        }

        if (sub_769A00())
        {
          v46 = v30;
          v47 = [v26 preferredContentSizeCategory];
          v30 = UIContentSizeCategoryAccessibilityExtraLarge;
          v48 = UIContentSizeCategoryAccessibilityMedium;
          v49 = UIContentSizeCategoryAccessibilityExtraLarge;
          if (sub_769B60())
          {
            v30 = v46;
            if (sub_769B50())
            {
              v50 = sub_769B60();

              if (v50)
              {
                goto LABEL_62;
              }
            }

            else
            {
            }

            if (qword_93C328 == -1)
            {
LABEL_61:
              floor(sub_138D34(v26, &xmmword_99A9B0, 1));
LABEL_62:
              v82 = sub_10D5D8(&off_87DA28);

              goto LABEL_71;
            }

LABEL_122:
            swift_once();
            goto LABEL_61;
          }

LABEL_118:
          __break(1u);
        }

        else if (qword_93C328 == -1)
        {
          goto LABEL_62;
        }

        swift_once();
        goto LABEL_62;
      }

      v98 = v30;
      v30 = &unk_90D000;
      v36 = [v26 preferredContentSizeCategory];
      v37 = UIContentSizeCategoryAccessibilityMedium;
      v38 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_769B60() & 1) == 0)
      {
        goto LABEL_115;
      }

      if (sub_769B50())
      {
        v39 = sub_769B60();

        v40 = 20.0;
        if (v39)
        {
          if (Width <= 405.0)
          {
            v40 = 10.0;
          }

          else
          {
            v40 = 16.0;
          }
        }
      }

      else
      {

        v40 = 20.0;
      }

      v51 = [v26 preferredContentSizeCategory];
      v52 = v37;
      v53 = v38;
      if ((sub_769B60() & 1) == 0)
      {
        goto LABEL_116;
      }

      if (sub_769B50())
      {
        v54 = sub_769B60();

        if (v54)
        {
          v55 = 1;
          if ((sub_769A00() & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_55;
        }
      }

      else
      {
      }

      v55 = 2;
      if ((sub_769A00() & 1) == 0)
      {
LABEL_51:
        if (qword_93C328 != -1)
        {
          swift_once();
        }

        goto LABEL_67;
      }

LABEL_55:
      v56 = [v26 preferredContentSizeCategory];
      v57 = v52;
      v58 = v53;
      if ((sub_769B60() & 1) == 0)
      {
        __break(1u);
        goto LABEL_122;
      }

      if (sub_769B50())
      {
        v59 = sub_769B60();

        if (v59)
        {
          goto LABEL_67;
        }
      }

      else
      {
      }

      if (qword_93C328 != -1)
      {
        swift_once();
      }

      floor((sub_138D34(v26, &xmmword_99A9B0, 1) - v40 * (v55 - 1)) / v55);
LABEL_67:
      v60 = [v26 preferredContentSizeCategory];
      v30 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      v61 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v62 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if ((sub_769B60() & 1) == 0)
      {
        goto LABEL_117;
      }

      if (sub_769B50())
      {
        sub_769B60();
      }

      v82 = sub_10D5D8(_swiftEmptyArrayStorage);

      v30 = v98;
LABEL_71:
      v28 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViews;
      swift_beginAccess();
      v84 = v8;
      v63 = *(v8 + v28);

      v83 = v17;
      swift_unknownObjectRetain();
      if (v30 == v7)
      {
LABEL_72:

        swift_unknownObjectRelease();
        v64 = v84;
        sub_589814();
        [v64 setNeedsLayout];
        return swift_unknownObjectRelease();
      }

      v65 = 0;
      v8 = (v63 & 0xFFFFFFFFFFFFFF8);
      if (v63 < 0)
      {
        v66 = v63;
      }

      else
      {
        v66 = v63 & 0xFFFFFFFFFFFFFF8;
      }

      v81[1] = v66;
      v86 = v7;
      v87 = (v95 + 8);
      v29 = v63 >> 62;
      v94 = v63 & 0xC000000000000001;
      v95 = v63 >> 62;
      v88 = v63 & 0xFFFFFFFFFFFFFF8;
      v89 = v63;
      while (v30 < v7)
      {
        v17 = *(v97 + 8 * v30);
        if (v95)
        {
          if (v65 == sub_76A860())
          {
            goto LABEL_72;
          }
        }

        else if (v65 == v8[2])
        {
          goto LABEL_72;
        }

        if (v94)
        {

          v67 = sub_76A770();
        }

        else
        {
          v29 = v8[2];
          if (v65 >= v29)
          {
            goto LABEL_108;
          }

          v28 = *(v63 + 8 * v65 + 32);

          v67 = v28;
        }

        v68 = v67;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_107;
        }

        v69 = sub_764EE0();
        if (v69)
        {
          v28 = v69;
          v98 = v30;
          v70 = sub_764D80();
          v71 = v90;
          sub_765250();
          sub_765210();
          (*v87)(v71, v91);
          sub_765330();
          v72 = *&v68[OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView];
          sub_7652E0();
          sub_7591B0();
          [v72 setContentMode:sub_765140()];
          sub_75DEF0();
          sub_7591F0();
          if (!sub_7651A0())
          {
            sub_396E8();
            sub_76A030();
          }

          sub_759070();
          sub_759210();
          sub_58D194(&qword_945810, &type metadata accessor for ArtworkView);
          sub_75A050();
          if (v70)
          {
            v99 = v70;
            sub_764C80();
            sub_768900();
            sub_58D194(&qword_951430, &type metadata accessor for Action);

            v73 = v96;
            sub_768820();

            v74 = 0;
            v7 = v86;
            v30 = v98;
          }

          else
          {

            v74 = 1;
            v7 = v86;
            v30 = v98;
            v73 = v96;
          }

          v75 = sub_BD88(&unk_950960);
          (*(*(v75 - 8) + 56))(v73, v74, 1, v75);
          v76 = OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_clickAction;
          swift_beginAccess();
          sub_278AC(v73, &v68[v76]);
          swift_endAccess();
          v77 = v68;
          sub_764EF0();
          v8 = v88;
          if (v78)
          {
            v68 = sub_769210();
          }

          else
          {
            v68 = 0;
          }

          [v77 setAccessibilityLabel:v68];

          v63 = v89;
        }

        else
        {
        }

        ++v30;

        ++v65;
        if (v7 == v30)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
    }
  }

  result = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  if (result >= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = result;
  }

  if (result >= v7)
  {
    goto LABEL_11;
  }

LABEL_130:
  __break(1u);
  return result;
}

void sub_58A838(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    if (sub_76A860() == a1)
    {
      return;
    }
  }

  else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) == a1)
  {
    return;
  }

  v8 = *&v3[v6];
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
LABEL_7:
  v10 = *&v3[v6];
  v11 = v10 >> 62;
  if (v9 >= a1)
  {
    if (!v11)
    {
      v15 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      v16 = v15 - a1;
      if (!__OFSUB__(v15, a1))
      {
        goto LABEL_18;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
    if (v11)
    {
      v23 = sub_76A860();
      v13 = a1 - v23;
      if (!__OFSUB__(a1, v23))
      {
LABEL_10:
        if ((v13 & 0x8000000000000000) == 0)
        {
          for (; v13; --v13)
          {
            swift_beginAccess();
            sub_BD88(&qword_95BAC8);
            sub_767450();
            swift_endAccess();
            [v3 addSubview:v25];
            swift_beginAccess();
            v14 = v25;
            sub_769440();
            if (*(&dword_10 + (*&v3[v6] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v3[v6] & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_7694C0();
            }

            sub_769500();
            swift_endAccess();
          }

          return;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      v13 = a1 - v12;
      if (!__OFSUB__(a1, v12))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  v24 = sub_76A860();
  v16 = v24 - a1;
  if (__OFSUB__(v24, a1))
  {
    goto LABEL_39;
  }

LABEL_18:
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    return;
  }

  for (; v16; --v16)
  {
    swift_beginAccess();
    a1 = *&v3[v6];
    if (a1 >> 62)
    {
      if (!sub_76A860())
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v9 = sub_76A860();
        goto LABEL_7;
      }
    }

    else if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_31;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v3[v6] = a1;
    if (a1 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      a1 = sub_45EDF0(a1);
    }

    v18 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18 - 1;
    v20 = *(&stru_20.cmd + 8 * v19 + (a1 & 0xFFFFFFFFFFFFFF8));
    *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)) = v19;
    *&v3[v6] = a1;
    swift_endAccess();
    if (a2)
    {
      v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView];
      sub_759210();
      sub_58D194(&qword_945810, &type metadata accessor for ArtworkView);
      v22 = v21;
      sub_75A0C0();
    }

    [v20 removeFromSuperview];
    v25 = v20;
    swift_beginAccess();
    sub_BD88(&qword_95BAC8);
    sub_767470();
    swift_endAccess();
  }
}

id sub_58AC00@<X0>(void *a1@<X8>)
{
  type metadata accessor for TodayCardChinLockupListIconView(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_58AC40()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_7664F0();
  v63 = *(v4 - 8);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v59.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69[0].receiver = v2;
  v69[0].super_class = ObjectType;
  [(objc_super *)v69 layoutSubviews];
  v8 = [v2 traitCollection];
  [v2 bounds];
  Width = CGRectGetWidth(v72);
  v62 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory;
  v10 = v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory];
  v61 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded;
  v11 = v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded];
  v12 = sub_769A00();
  v64 = v4;
  if (v12)
  {
    v11 = &unk_90D000;
    v13 = [v8 preferredContentSizeCategory];
    LOBYTE(v10) = UIContentSizeCategoryAccessibilityExtraLarge;
    v14 = UIContentSizeCategoryAccessibilityMedium;
    v15 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (sub_769B60())
    {
      if (sub_769B50())
      {
        v16 = sub_769B60();

        v17 = 20.0;
        v18 = 10.0;
        if (Width > 405.0)
        {
          v18 = 16.0;
        }

        if (v16)
        {
          v1 = v18;
        }

        else
        {
          v1 = 20.0;
        }
      }

      else
      {

        v1 = 20.0;
      }

      v31 = [v8 preferredContentSizeCategory];
      v32 = v14;
      v33 = v15;
      if (sub_769B60())
      {
        if (sub_769B50())
        {
          v34 = sub_769B60();

          if (v34)
          {
            v10 = 1;
            if ((sub_769A00() & 1) == 0)
            {
              goto LABEL_29;
            }

LABEL_33:
            v35 = [v8 preferredContentSizeCategory];
            v36 = v32;
            v37 = v33;
            if (sub_769B60())
            {
              if (sub_769B50())
              {
                v38 = sub_769B60();

                if (v38)
                {
                  if (Width <= 405.0)
                  {
                    v24 = 68.0;
                  }

                  else
                  {
                    v24 = 120.0;
                  }

LABEL_54:
                  v25 = v24;
LABEL_55:
                  v47 = [v8 v11[502]];
                  v48 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
                  v49 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
                  if (sub_769B60())
                  {
                    if (sub_769B50())
                    {
                      v50 = sub_769B60();

                      if (v50)
                      {
                        v44 = 1;
LABEL_61:
                        v43 = sub_10D5D8(_swiftEmptyArrayStorage);

                        v46 = v1;
                        v45 = v1;
                        v59 = xmmword_7A6160;
                        v60 = xmmword_7A6160;
                        goto LABEL_62;
                      }
                    }

                    else
                    {
                    }

                    v44 = 0;
                    goto LABEL_61;
                  }

                  goto LABEL_67;
                }
              }

              else
              {
              }

              if (qword_93C328 != -1)
              {
                swift_once();
              }

              v24 = floor((sub_138D34(v8, &xmmword_99A9B0, 1) - v1 * (v10 - 1)) / v10);
              goto LABEL_54;
            }

            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
        }

        v10 = 2;
        if ((sub_769A00() & 1) == 0)
        {
LABEL_29:
          if (qword_93C328 == -1)
          {
LABEL_30:
            v25 = *(&xmmword_99A9B0 + 1);
            v24 = *&xmmword_99A9B0;
            goto LABEL_55;
          }

LABEL_70:
          swift_once();
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v19 = ASKDeviceTypeGetCurrent();
  v20 = sub_769240();
  v22 = v21;
  if (v20 == sub_769240() && v22 == v23)
  {

    v1 = 16.0;
    if ((sub_769A00() & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v27 = [v8 preferredContentSizeCategory];
    v28 = UIContentSizeCategoryAccessibilityMedium;
    v29 = UIContentSizeCategoryAccessibilityExtraLarge;
    if ((sub_769B60() & 1) == 0)
    {
      __break(1u);
      goto LABEL_70;
    }

    if (sub_769B50())
    {
      v30 = sub_769B60();

      if (v30)
      {
        if (Width <= 405.0)
        {
          v24 = 68.0;
        }

        else
        {
          v24 = 120.0;
        }

        goto LABEL_42;
      }
    }

    else
    {
    }

    if (qword_93C328 == -1)
    {
LABEL_41:
      v24 = floor(sub_138D34(v8, &xmmword_99A9B0, 1));
LABEL_42:
      v25 = v24;
      goto LABEL_43;
    }

LABEL_72:
    swift_once();
    goto LABEL_41;
  }

  v26 = sub_76A950();

  if (v26)
  {
    v1 = 16.0;
  }

  else
  {
    v1 = 10.0;
  }

  if (sub_769A00())
  {
    goto LABEL_18;
  }

LABEL_12:
  if (qword_93C328 != -1)
  {
LABEL_68:
    swift_once();
  }

  v25 = *(&xmmword_99A9B0 + 1);
  v24 = *&xmmword_99A9B0;
LABEL_43:
  if (v10 == 6)
  {
    v39 = v11;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    v40 = -1;
  }

  else
  {
    v40 = 0;
  }

  v41 = vdupq_n_s64(v40);
  v42 = vbslq_s8(v41, xmmword_7A6150, *&UIEdgeInsetsZero.top);
  v59 = vbslq_s8(v41, xmmword_7A6150, *&UIEdgeInsetsZero.bottom);
  v60 = v42;
  v43 = sub_10D5D8(&off_87F230);

  v44 = 0;
  v45 = 22.0;
  v46 = 8.0;
  v10 = 1;
LABEL_62:
  swift_beginAccess();

  v52 = sub_141A98(v51);

  v53 = v2[v62];
  v54 = v2[v61];
  *&v65.receiver = v24;
  *&v65.super_class = v25;
  *&v66.receiver = v1;
  *&v66.super_class = v46;
  *&v67.receiver = v45;
  v67.super_class = v10;
  LOBYTE(v68[0]) = v44;
  *(v68 + 1) = v71[0];
  DWORD1(v68[0]) = *(v71 + 3);
  *(&v68[1] + 8) = v59;
  *(v68 + 8) = v60;
  *(&v68[2] + 1) = v43;
  *&v68[3] = v52;
  BYTE8(v68[3]) = v53;
  BYTE9(v68[3]) = v54;
  v69[5] = v68[1];
  v70[0] = v68[2];
  v69[1] = v65;
  v69[2] = v66;
  v69[3] = v67;
  v69[4] = v68[0];
  *(v70 + 10) = *(&v68[2] + 10);
  [v2 bounds];
  sub_2F4694(v2);
  sub_58D2A0(&v65);
  (*(v63 + 8))(v7, v64);
  v55 = &v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v57 = *v55;
  if (*v55)
  {

    v57(v58);
    return sub_F704(v57);
  }

  return result;
}

double sub_58B4C8()
{
  v2 = v0;
  v3 = [v0 traitCollection];
  [v2 bounds];
  Width = CGRectGetWidth(v71);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory;
  v6 = v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded;
  v8 = v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded];
  if (sub_769A00())
  {
    v6 = &unk_90D000;
    v9 = [v3 preferredContentSizeCategory];
    v10 = UIContentSizeCategoryAccessibilityMedium;
    v11 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (sub_769B60())
    {
      if (sub_769B50())
      {
        v12 = sub_769B60();

        v13 = 20.0;
        v14 = 10.0;
        if (Width > 405.0)
        {
          v14 = 16.0;
        }

        if (v12)
        {
          v1 = v14;
        }

        else
        {
          v1 = 20.0;
        }
      }

      else
      {

        v1 = 20.0;
      }

      v28 = [v3 preferredContentSizeCategory];
      v29 = v10;
      v30 = v11;
      if (sub_769B60())
      {
        if (sub_769B50())
        {
          v31 = sub_769B60();

          if (v31)
          {
            v8 = 1;
            if ((sub_769A00() & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_35:
            v32 = [v3 preferredContentSizeCategory];
            v33 = v29;
            v34 = v30;
            if (sub_769B60())
            {
              if (sub_769B50())
              {
                v35 = sub_769B60();

                if (v35)
                {
                  if (Width <= 405.0)
                  {
                    v22 = 68.0;
                  }

                  else
                  {
                    v22 = 120.0;
                  }

LABEL_56:
                  v23 = v22;
LABEL_57:
                  v43 = [v3 v6[502]];
                  v44 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
                  v45 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
                  if (sub_769B60())
                  {
                    if (sub_769B50())
                    {
                      v46 = sub_769B60();

                      if (v46)
                      {
                        v40 = 1;
LABEL_63:
                        v39 = sub_10D5D8(_swiftEmptyArrayStorage);

                        v42 = v1;
                        v41 = v1;
                        v62 = xmmword_7A6160;
                        v63 = xmmword_7A6160;
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                    }

                    v40 = 0;
                    goto LABEL_63;
                  }

                  goto LABEL_73;
                }
              }

              else
              {
              }

              if (qword_93C328 != -1)
              {
                swift_once();
              }

              v22 = floor((sub_138D34(v3, &xmmword_99A9B0, 1) - v1 * (v8 - 1)) / v8);
              goto LABEL_56;
            }

            __break(1u);
            goto LABEL_78;
          }
        }

        else
        {
        }

        v8 = 2;
        if ((sub_769A00() & 1) == 0)
        {
LABEL_31:
          if (qword_93C328 == -1)
          {
LABEL_32:
            v23 = *(&xmmword_99A9B0 + 1);
            v22 = *&xmmword_99A9B0;
            goto LABEL_57;
          }

LABEL_76:
          swift_once();
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v15 = ASKDeviceTypeGetCurrent();
  v16 = sub_769240();
  v18 = v17;
  if (v16 == sub_769240() && v18 == v19)
  {

    v1 = 16.0;
    if ((sub_769A00() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v24 = [v3 preferredContentSizeCategory];
    v25 = UIContentSizeCategoryAccessibilityMedium;
    v26 = UIContentSizeCategoryAccessibilityExtraLarge;
    if ((sub_769B60() & 1) == 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    if (sub_769B50())
    {
      v27 = sub_769B60();

      if (v27)
      {
        if (Width <= 405.0)
        {
          v22 = 68.0;
        }

        else
        {
          v22 = 120.0;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }

    if (qword_93C328 == -1)
    {
LABEL_43:
      v22 = floor(sub_138D34(v3, &xmmword_99A9B0, 1));
LABEL_44:
      v23 = v22;
      goto LABEL_45;
    }

LABEL_78:
    swift_once();
    goto LABEL_43;
  }

  v21 = sub_76A950();

  if (v21)
  {
    v1 = 16.0;
  }

  else
  {
    v1 = 10.0;
  }

  if (sub_769A00())
  {
    goto LABEL_20;
  }

LABEL_17:
  if (qword_93C328 != -1)
  {
LABEL_74:
    swift_once();
  }

  v23 = *(&xmmword_99A9B0 + 1);
  v22 = *&xmmword_99A9B0;
LABEL_45:
  if (v6 == 6)
  {
    v36 = v8;
  }

  else
  {
    v36 = 1;
  }

  if (v36)
  {
    v37 = -1;
  }

  else
  {
    v37 = 0;
  }

  v38 = vdupq_n_s64(v37);
  v62 = vbslq_s8(v38, xmmword_7A6150, *&UIEdgeInsetsZero.bottom);
  v63 = vbslq_s8(v38, xmmword_7A6150, *&UIEdgeInsetsZero.top);
  v39 = sub_10D5D8(&off_87F2C8);

  v40 = 0;
  v41 = 22.0;
  v42 = 8.0;
  v8 = 1;
LABEL_64:
  swift_beginAccess();

  v48 = sub_141A98(v47);

  v49 = v2[v5];
  v50 = v2[v7];
  *&v64 = v22;
  *(&v64 + 1) = v23;
  *&v65 = v1;
  *(&v65 + 1) = v42;
  *&v66 = v41;
  *(&v66 + 1) = v8;
  v67[0] = v40;
  *&v67[1] = v70[0];
  *&v67[4] = *(v70 + 3);
  *&v67[24] = v62;
  *&v67[8] = v63;
  *&v67[40] = v39;
  *&v67[48] = v48;
  v67[56] = v49;
  v67[57] = v50;
  v68[4] = *&v67[16];
  v69[0] = *&v67[32];
  v68[0] = v64;
  v68[1] = v65;
  v68[2] = v66;
  v68[3] = *v67;
  *(v69 + 10) = *&v67[42];
  v51 = [v2 traitCollection];
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  sub_138D34(v51, &xmmword_99A9B0, 1);
  sub_769A00();
  sub_7697D0();
  sub_769A00();
  sub_7697D0();

  v52 = [v2 traitCollection];
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_77D9F0;
  *(v53 + 32) = v52;
  v54 = v52;
  v55 = sub_7671E0();
  sub_2F4AE4(v55, v68);
  v57 = v56;
  sub_58D2A0(&v64);

  if (v2[v7] & 1) != 0 || v2[v5] != 6 || (v58 = [v2 traitCollection], v59 = sub_769A00(), v58, (v59))
  {
    v60 = [v2 traitCollection];
    sub_138D34(v60, &xmmword_99A9B0, 1);
    sub_769A00();
    sub_7697D0();
    sub_769A00();
    sub_7697D0();
  }

  return v57;
}

uint64_t sub_58BE34()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViews;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_76A860();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView];
      sub_759210();
      sub_58D194(&qword_945810, &type metadata accessor for ArtworkView);
      v9 = v8;
      sub_75A0C0();
    }

    while (v4 != v5);
  }

  return result;
}

void sub_58BF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (!v13)
  {

    return;
  }

  v14 = v13;
  sub_134D8(a3, v27);
  sub_BD88(&unk_944DA0);
  sub_765B70();
  if ((swift_dynamicCast() & 1) == 0 || (v15 = sub_765B60(), , !v15))
  {

LABEL_18:

    return;
  }

  sub_761E60();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_18;
  }

  v16 = sub_761E50();
  v17 = v16;
  if (v16 >> 62)
  {
    v21 = v16;
    v18 = sub_76A860();
    v17 = v21;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_24:

    goto LABEL_18;
  }

  v18 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  if (!v18)
  {
    goto LABEL_24;
  }

LABEL_8:
  v22[1] = v15;
  v25 = v14;
  if (v18 >= 1)
  {
    v19 = 0;
    v26 = v17 & 0xC000000000000001;
    v23 = (v8 + 8);
    v24 = (v8 + 32);
    do
    {
      v20 = v18;
      if (v26)
      {
        sub_76A770();
      }

      else
      {
      }

      sub_764E50();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_10A2C(v6, &unk_93FF30);
      }

      else
      {
        (*v24)(v10, v6, v7);
        [v12 frame];
        sub_75F4B0();

        (*v23)(v10, v7);
      }

      ++v19;
      v18 = v20;
    }

    while (v20 != v19);
    goto LABEL_24;
  }

  __break(1u);
}

void sub_58C464()
{
  sub_58C574();
  if (v0 <= 0x3F)
  {
    sub_765B10();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_58C574()
{
  if (!qword_95B9C0)
  {
    sub_133D8(&qword_95B9C8);
    sub_58C5E4();
    v0 = sub_767490();
    if (!v1)
    {
      atomic_store(v0, &qword_95B9C0);
    }
  }
}

unint64_t sub_58C5E4()
{
  result = qword_95B9D0;
  if (!qword_95B9D0)
  {
    sub_133D8(&qword_95B9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B9D0);
  }

  return result;
}

uint64_t sub_58C670(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_clickActionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_F704(v4);
}

uint64_t sub_58C6DC()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_58C73C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}

uint64_t sub_58C7D4()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_58C830(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

void (*sub_58C8F0(uint64_t a1))()
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
  return sub_58D294;
}

char *sub_58C9B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView;
  sub_759210();
  *&v4[v11] = sub_759020();
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_clickAction;
  v13 = sub_BD88(&unk_950960);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v21.receiver = v5;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView;
  v16 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView];
  v17 = v14;
  [v17 addSubview:v16];
  v18 = *&v14[v15];
  sub_759100();

  [*&v14[v15] setUserInteractionEnabled:0];
  v19 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v17 action:"handleTap"];
  [v19 setDelaysTouchesBegan:1];
  [v17 addGestureRecognizer:v19];

  return v17;
}

uint64_t sub_58CCC8()
{
  v1 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_BD88(&unk_950960);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_clickAction;
  swift_beginAccess();
  sub_358A74(v0 + v11, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_94EC40;
    v13 = v6;
    return sub_10A2C(v13, v12);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_75B460();
  v14 = sub_BD88(&unk_93F630);
  sub_768860();

  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_93F980;
    v13 = v3;
    return sub_10A2C(v13, v12);
  }

  sub_75B470();
  v17 = sub_75B460();
  sub_32A6C0(v18, 1, v17, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v15 + 8))(v3, v14);
}

void sub_58D0AC()
{
  sub_2F1CA0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_58D194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_58D1DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_58D214()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_58D24C()
{

  sub_BEB8(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_58D2F4()
{
  v1 = sub_BD88(&qword_95B9C8);
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViewCount) = 0;
  type metadata accessor for TodayCardChinLockupListIconView(0);
  sub_7667C0();
  sub_58C5E4();
  sub_767480();
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_todayCardStyle;
  v4 = enum case for TodayCard.Style.light(_:);
  v5 = sub_765B10();
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  v6 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_clickActionHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_wantsCardConsistentMargins) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_58D4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[0] = a1;
  v21[2] = a4;
  v6 = sub_7656A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v13 = sub_BD88(&qword_9438F8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v21 - v15;
  sub_1ED18(a2, v21 - v15, &qword_963790);
  sub_1ED18(a3, &v16[*(v14 + 56)], &qword_963790);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();
  v17 = v21[1];

  v18 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v22)
  {
    v18 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v7 + 104))(v12, *v18, v6);
  if (*(v17 + 16))
  {
    v19 = *(v17 + 17);
    (*(v7 + 16))(v9, v12, v6);
    sub_2879B8(v19);
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_40DC7C(0.0);
  }

  sub_765670();
  (*(v7 + 8))(v12, v6);
  return sub_10A2C(v16, &qword_9438F8);
}

uint64_t sub_58D804()
{

  return swift_deallocClassInstance();
}

uint64_t sub_58D860()
{
  swift_getWitnessTable();

  return sub_75B530();
}

uint64_t sub_58D95C()
{
  swift_getWitnessTable();

  return sub_75B520();
}

uint64_t sub_58DA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v21[5] = a4;
  v21[6] = a5;
  *&v21[3] = a7;
  *&v21[4] = a8;
  v21[1] = a6;
  v21[2] = a1;
  v11 = sub_BD88(&qword_9438F8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v21 - v16;
  v18 = *v8;
  sub_1ED18(a2, v21 - v16, &qword_963790);
  sub_1ED18(a3, &v17[*(v12 + 56)], &qword_963790);
  v21[7] = v18;
  sub_1ED18(v17, v14, &qword_9438F8);
  v19 = *(v12 + 56);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  sub_75B530();
  sub_10A2C(v17, &qword_9438F8);
  sub_10A2C(&v14[v19], &qword_963790);
  return sub_10A2C(v14, &qword_963790);
}

uint64_t sub_58DC7C(void *a1)
{
  if (*v1 == *a1)
  {
    v2 = v1;
    if (sub_76A6C0())
    {
      type metadata accessor for ActionDebugSetting();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = *(result + 56) == v2[7] && *(result + 64) == v2[8];
      if (v5 || (sub_76A950() & 1) != 0)
      {
        v6 = v4[10];
        v7 = v2[10];
        if (v6)
        {
          if (!v7 || (v4[9] != v2[9] || v6 != v7) && (sub_76A950() & 1) == 0)
          {
            return 0;
          }

LABEL_16:
          v8 = v4[11];
          if (v8)
          {

            v10 = v8(v9);
            v12 = v11;
            v13 = v2[11];
            if (v13)
            {
              v14 = v10;
              v15 = v13();
              v17 = v16;
              if (v12)
              {
                if (v16)
                {
                  if (v14 != v15 || v12 != v16)
                  {
                    v21 = sub_76A950();

                    return v21 & 1;
                  }

                  goto LABEL_32;
                }

                goto LABEL_28;
              }

LABEL_25:

              if (!v17)
              {
                return 1;
              }

              goto LABEL_29;
            }

            if (v11)
            {
LABEL_28:

LABEL_29:

              return 0;
            }
          }

          else
          {
            v18 = v2[11];

            if (v18)
            {
              v18(v19);
              v17 = v20;
              goto LABEL_25;
            }
          }

LABEL_32:

          return 1;
        }

        if (!v7)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_58DE8C()
{
  sub_76A6D0();
  sub_769330();
  if (*(v0 + 80))
  {
    sub_76AA50(1u);
    v1 = sub_769330();
    v2 = *(v0 + 88);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_76AA50(0);
    v2 = *(v0 + 88);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v2(v1);
  if (v3)
  {
    sub_76AA50(1u);
    sub_769330();
    goto LABEL_8;
  }

LABEL_7:
  sub_76AA50(0);
LABEL_8:
}

uint64_t sub_58DF78()
{

  sub_F704(*(v0 + 88));
}

uint64_t sub_58DFB8()
{
  sub_1EB60(v0 + 16);

  sub_F704(*(v0 + 88));

  return swift_deallocClassInstance();
}

double *sub_58E054(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_76A860();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_7E3E8(v3, 0);
  sub_10BAFC(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_58E0E8(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView);
  sub_765990();

  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView);
  v7 = v6[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating];
  v6[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = a1;
  if (v7 != v4)
  {
    v8 = v6;
    sub_4A3E2C();
  }
}

char *sub_58E1A0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v41 = sub_768C60();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75C100();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_isDisappearing] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for RiverCardDataSource();
  v17 = swift_allocObject();
  *(v17 + 32) = _swiftEmptyArrayStorage;
  *(v17 + 16) = xmmword_78A4F0;
  *(v17 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverDataSource] = v17;
  sub_75C070();
  sub_75C0E0();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverStyling;
  (*(v13 + 32))(&v4[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverStyling], v15, v12);
  v19 = *(v13 + 16);
  v19(v15, &v4[v18], v12);
  v20 = objc_allocWithZone(sub_BD88(&qword_9497B8));

  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView] = sub_765950();
  v19(v15, &v4[v18], v12);
  v21 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView());
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView] = sub_4A2A8C(v15);
  v47[0] = sub_64A6C;
  v47[1] = 0;
  v47[2] = sub_756A98;
  v47[3] = 0;
  v47[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[5] = 0;
  v47[6] = sub_39ED38;
  v47[7] = 0;
  v47[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[9] = 0;
  v47[10] = sub_234F64;
  v47[11] = 0;
  v48 = 0x4000000000000000uLL;
  v49 = 0;
  v50 = 0x4018000000000000;
  v51 = 0;
  v52 = 1;
  v22 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView] = sub_367388(v47, &v48);
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView;
  v25 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView];
  v26 = v23;
  [v25 _setContinuousCornerRadius:20.0];
  v27 = *&v23[v24];
  [v27 bounds];
  [v27 setBounds:?];

  [*&v23[v24] setClipsToBounds:1];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
  [*&v26[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView] setClipsToBounds:0];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView;
  [*&v26[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView] setClipsToBounds:1];
  v30 = [v26 contentView];
  [v30 addSubview:*&v23[v24]];

  [*&v26[v29] addSubview:*&v26[v28]];
  v31 = [v26 contentView];
  [v31 addSubview:*&v26[v29]];

  v32 = [v26 contentView];
  [v32 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView]];

  v33 = *&v26[v28];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v34 = v33;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v35 = *(v9 + 8);
  v36 = v41;
  v35(v11, v41);
  v37 = *&v23[v24];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v38 = v37;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v35(v11, v36);
  return v26;
}

void sub_58E7FC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isMotionEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView);
  sub_765990();

  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView);
  v4 = *(v0 + v1);
  v5 = v3[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating];
  v3[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = v4;
  if (v4 != v5)
  {
    v6 = v3;
    sub_4A3E2C();
  }
}

void sub_58E8D8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView) + qword_950CC0) = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_36851C();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView);
  sub_7659C0();

  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_isDisappearing) = 0;
  }
}

void sub_58E980()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v2] != 4)
  {
    v3 = [v0 traitCollection];
    v4 = v3;
    if (v0[v1])
    {
      v5 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    sub_4C0ED8(v3, v0[*v5], &v28);
    v6 = v31;

    v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView];
    v8 = v0[v1];
    v9 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v8)
    {
      v9 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v10 = v0[v9];
    v11 = v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory];
    v12 = v0[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_isDisappearing];
    v23 = v28;
    v24 = v29;
    v25 = v30;
    *&v26 = v6;
    *v27 = 0uLL;
    *(&v26 + 1) = v7;
    v27[16] = 1;
    v27[17] = v10;
    v27[18] = v11;
    v27[19] = v8;
    v27[20] = v12;
    v32 = v28;
    v33 = v29;
    *&v36[13] = *&v27[13];
    v35 = v26;
    *v36 = 0uLL;
    v34 = v30;
    v13 = v7;
    [v0 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v0 traitCollection];
    sub_11CCCC(v22, v15, v17, v19, v21);

    sub_A91BC(&v23);
  }
}

id sub_58EB2C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_7699E0();

  if (v3)
  {
    v4 = 40.0;
  }

  else
  {
    v4 = 30.0;
  }

  v5 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView] frame];
  v7 = v6 - v4 + -24.0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if ((v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    v9 = [v1 traitCollection];
    v10 = sub_769A00();

    v11 = (v10 & 1) != 0 ? 0.5 : 0.52;
    [v1 bounds];
    v12 = v11 * CGRectGetHeight(v50);
    sub_75C080();
    v14 = v13;
    v15 = round((v12 - v13) * 0.5);
    v16 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
    v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView];
    sub_7659E0();
    v19 = v18;
    v21 = v20;

    if (v19 != v15 || v21 != v15)
    {
      v23 = v14 + v15 + v15;
      v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverDataSource];
      swift_beginAccess();
      if (v15 < *(v24 + 48) && v23 <= v7)
      {
        v26 = *&v1[v16];
        sub_7659A0();
      }
    }
  }

  v27 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView];
  [v1 bounds];
  [v28 sizeThatFits:{v29, v30}];
  v32 = v31;
  v34 = v33;

  [*&v1[v5] frame];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView] setFrame:{0.0, 0.0, v32, v35}];
  if (v1[v8])
  {
    [*&v1[v5] frame];
    MinY = CGRectGetMinY(v51);
    v37 = [v1 traitCollection];
    v38 = sub_7699D0();

    if (v38)
    {
      v39 = 50.0;
    }

    else
    {
      v39 = 64.0;
    }

    v40 = floor((MinY - v39 - v34) * 0.5);
    v41 = [v1 traitCollection];
    v42 = sub_7699D0();

    if (v42)
    {
      v43 = 50.0;
    }

    else
    {
      v43 = 64.0;
    }

    v44 = v40 + v43;
  }

  else
  {
    v45 = [v1 traitCollection];
    v46 = sub_7699D0();

    if (v46 & 1) != 0 || (v47 = [v1 traitCollection], v48 = sub_769A00(), v47, (v48))
    {
      [*&v1[v5] frame];
      v44 = floor((CGRectGetMinY(v52) - v34) * 0.5);
    }

    else if (v7 < v34)
    {
      v44 = v4 + v7 - v34;
    }

    else
    {
      v44 = v4;
    }
  }

  return [*&v1[v27] setFrame:{0.0, v44, v32, v34}];
}

void sub_58EF38()
{
  sub_28399C();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v2 = 20.0;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v2 = 0.0;
  }

  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView) _setContinuousCornerRadius:v2];
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView);
  v3[qword_950CB8] = *(v0 + v1);
  v4 = v3;
  sub_3680EC();
}

void sub_58EFDC()
{
  [v0 setNeedsLayout];
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView];
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v1[qword_950C78] = v0[*v2];
  v3 = v1;
  sub_367E48();
}

void sub_58F084(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (a3)
  {
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v20 = a1;
      sub_58F294(v12);
      v13 = v20;
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v15 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_A8F3C(v10, v4 + v15);
    swift_endAccess();
    *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory) = (*(a2 + 160))(ObjectType, a2);
    sub_5910D0();
    v16 = (*(a2 + 136))(ObjectType, a2);
    sub_28026C(v16);
    if (swift_dynamicCastClass())
    {
      v17 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView);
      v18 = a1;
      v19 = v17;
      sub_765990();

      swift_unknownObjectWeakAssign();
    }
  }
}

id sub_58F294(char *a1)
{
  v3 = [v1 contentView];
  v4 = [a1 contentView];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView;
  v6 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView];
  [v6 setHidden:0];
  [v6 removeFromSuperview];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView;
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView];
  [v8 setHidden:1];
  [v8 removeFromSuperview];
  v9 = *&v1[v7];
  *&v1[v7] = v6;
  v10 = v6;

  [v3 addSubview:v10];
  v11 = *&a1[v5];
  *&a1[v5] = v8;
  v12 = v8;

  [v4 addSubview:v12];
  v50 = [v1 contentView];
  v51 = [a1 contentView];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView;
  v14 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView];
  [v14 setHidden:0];
  [v14 removeFromSuperview];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView;
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView];
  [v16 setHidden:1];
  [v16 removeFromSuperview];
  v17 = *&v1[v15];
  *&v1[v15] = v14;
  v18 = v1;
  v19 = v14;

  [v50 addSubview:v19];
  v20 = *&a1[v13];
  *&a1[v13] = v16;
  v21 = a1;
  v22 = v16;

  [v51 addSubview:v22];
  v23 = *&v1[v15];
  v24 = *&a1[v13];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
  v26 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView];
  v27 = v23;
  v28 = v24;
  [v26 setHidden:0];
  [v26 removeFromSuperview];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
  v30 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView];
  [v30 setHidden:1];
  [v30 removeFromSuperview];
  v31 = *&v18[v29];
  *&v18[v29] = v26;
  v32 = v18;
  v33 = v26;

  [v27 addSubview:v33];
  v34 = *&v21[v25];
  *&v21[v25] = v30;
  v35 = v21;
  v36 = v30;

  [v28 addSubview:v36];
  v37 = [v32 contentView];
  v38 = [v35 contentView];
  v39 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView;
  v40 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView];
  [v40 setHidden:0];
  [v40 removeFromSuperview];
  v41 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView;
  v42 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView];
  [v42 setHidden:1];
  [v42 removeFromSuperview];
  v43 = *&v32[v41];
  *&v32[v41] = v40;
  v44 = v32;
  v45 = v40;

  [v37 addSubview:v45];
  v46 = *&v35[v39];
  *&v35[v39] = v42;
  v47 = v35;
  v48 = v42;

  [v38 addSubview:v48];
  [v47 setNeedsLayout];

  return [v44 setNeedsLayout];
}

uint64_t sub_58F734(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v129 = a4;
  v7 = sub_760260();
  v128 = *(v7 - 8);
  __chkstk_darwin(v7);
  v136 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_765B10();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_75F730();
  v11 = *(v125 - 8);
  __chkstk_darwin(v125);
  v134 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v112 - v14;
  v16 = sub_7656C0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_A8F3C(v15, &v4[v18]);
  swift_endAccess();
  v135 = a2;
  sub_28026C(a2);
  v137 = v4;
  v19 = [v4 backgroundView];
  if (v19)
  {
    v20 = v19;
    v21 = sub_765A30();
    if (!v21)
    {
      sub_396E8();
      v21 = sub_76A060();
    }

    v22 = v21;
    [v20 setBackgroundColor:v21];
  }

  v23 = sub_765B20();
  sub_75E6F0();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
  }

  v120 = v24;
  v121 = v11;
  v25 = *&v137[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView];
  v26 = sub_765B50();
  v133 = v27;
  v124 = sub_765B40();
  v130 = v28;
  v116 = sub_765A10();
  v132 = v29;
  sub_765A80();
  v30 = sub_765A60();
  v123 = v31;
  v131 = v10;
  sub_765B30();
  sub_765AA0();
  v32 = v135;
  v118 = v23;
  v122 = v7;
  v117 = v30;
  if (v135 == 4)
  {
    v119 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v33 = sub_234F64;
  }

  else
  {
    v33 = sub_234F64;
    v119 = sub_39ED38;
  }

  v25[qword_950CA8] = 0;
  v34 = *&v25[qword_950C90];
  *(v34 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v35 = *&v25[qword_950C88];
  sub_728444(v26, v133);
  v36 = sub_760250();
  v37 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v38 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v32 == 4 && (v36 & 1) == 0)
  {
    if (([v38 isHidden] & 1) != 0 || (v35[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v35[v37] setHidden:1];
      goto LABEL_24;
    }

    [*&v35[v37] setHidden:1];
    v35[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_22;
  }

  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    sub_769240();
  }

  v41 = sub_7692D0();
  v42 = v41 & 1;

  if (v42 != [*&v35[v37] isHidden] && (v35[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v41 & 1) == 0)
    {
      [*&v35[v37] setAlpha:0.0];
      v114 = objc_opt_self();
      [v114 inheritedAnimationDuration];
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = v35;
      v142 = sub_A922C;
      v143 = v45;
      v115 = sub_234F64;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_23F0CC;
      v141 = &unk_897D70;
      v113 = _Block_copy(&aBlock);
      v46 = v35;
      v112 = v46;

      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      v142 = sub_A9238;
      v143 = v47;
      v33 = v115;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_3D6D80;
      v141 = &unk_897DC0;
      v48 = _Block_copy(&aBlock);
      v49 = v112;

      v50 = v113;
      [v114 animateWithDuration:0 delay:v113 options:v48 animations:v44 completion:0.0];
      _Block_release(v48);
      _Block_release(v50);
    }

    [*&v35[v37] setHidden:v41 & 1];
    v35[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_22:
    [v35 setNeedsLayout];
    goto LABEL_24;
  }

  [*&v35[v37] setHidden:v42];
LABEL_24:
  v51 = &v25[qword_950CB0];
  *v51 = sub_64A6C;
  v51[1] = 0;
  v51[2] = sub_756A98;
  v51[3] = 0;
  v51[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[5] = 0;
  v51[6] = v119;
  v51[7] = 0;
  v51[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[9] = 0;
  v51[10] = v33;
  v51[11] = 0;

  sub_3680EC();
  v52 = v131;
  if (v130)
  {
    if (v135 == 4)
    {
      sub_369998();
    }

    else
    {
      sub_3699BC();
    }

    v53 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
    v54 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
    v55 = objc_allocWithZone(NSAttributedString);
    v56 = v54;
    v57 = sub_769210();
    type metadata accessor for Key(0);
    sub_5911B8(&qword_93EC10, type metadata accessor for Key);
    isa = sub_7690E0().super.isa;

    v59 = [v55 initWithString:v57 attributes:isa];

    [v56 setAttributedText:v59];
    [*(v34 + v53) setAdjustsFontSizeToFitWidth:0];
    [*(v34 + v53) setMinimumScaleFactor:0.0];
    [*(v34 + v53) setAttributedText:0];
    if (v132 && v25[qword_950C80] == 4)
    {
      v52 = v131;
      if (v135 == 4)
      {
        v60 = v124;
        v61 = v130;
        v62 = v116;
        v63 = v132;
      }

      else
      {
        v60 = v116;
        v61 = v132;
        v62 = v124;
        v63 = v130;
      }

      sub_72853C(v60, v61, v62, v63);
    }

    else
    {
      sub_728444(v124, v130);
      v52 = v131;
    }
  }

  v64 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v65 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v66 = [v65 text];
  if (v66 || (v66 = [*(v34 + v64) attributedText]) != 0)
  {

    v67 = 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = v135;
  [v65 setHidden:v67];

  [v25 setNeedsLayout];
  v69 = *&v25[qword_950C98];
  [v69 setImage:0];
  [v69 setHidden:1];
  v70 = v68 == 4;
  v71 = v123;
  if (v70 || (sub_760230() & 1) != 0 || !v71)
  {
    v74 = *&v25[qword_950CA0];
    v75 = &v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    if (!v71)
    {
      v77 = v76;
      v78 = 0;
      v73 = 1;
      goto LABEL_48;
    }

    v73 = 1;
  }

  else
  {
    v72 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v72 = v117 & 0xFFFFFFFFFFFFLL;
    }

    v73 = v72 == 0;
    v74 = *&v25[qword_950CA0];
    v75 = &v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  }

  v77 = v76;
  v78 = sub_769210();
LABEL_48:
  [v77 setText:v78];

  if (v73 == [*v75 isHidden] || (v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v75 setHidden:v73];
  }

  else
  {
    if (!v73)
    {
      [*v75 setAlpha:0.0];
      v79 = objc_opt_self();
      [v79 inheritedAnimationDuration];
      v81 = v80;
      v82 = swift_allocObject();
      *(v82 + 16) = v74;
      v142 = sub_A8FE4;
      v143 = v82;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_23F0CC;
      v141 = &unk_897CD0;
      v83 = _Block_copy(&aBlock);
      v84 = v74;

      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      v142 = sub_A9004;
      v143 = v85;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_3D6D80;
      v141 = &unk_897D20;
      v86 = _Block_copy(&aBlock);
      v87 = v84;
      v52 = v131;

      [v79 animateWithDuration:0 delay:v83 options:v86 animations:v81 completion:0.0];
      _Block_release(v86);
      _Block_release(v83);
    }

    [*v75 setHidden:v73];
    v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v74 setNeedsLayout];
  }

  sub_366B5C(v52, 1);
  [v25 setNeedsLayout];

  (*(v128 + 8))(v136, v122);
  (*(v126 + 8))(v52, v127);
  (*(v121 + 8))(v134, v125);
  v88 = sub_75E6E0();
  v89 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
  v90 = v137;
  v91 = *&v137[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView];
  v92 = sub_765960();

  swift_beginAccess();
  *(v92 + 32) = v88;

  v93 = *&v90[v89];
  v94 = sub_765960();

  sub_75A110();
  sub_768900();
  sub_768ED0();
  *(v94 + 16) = v144;

  v144 = _swiftEmptyArrayStorage;
  v95 = v88 & 0xFFFFFFFFFFFFFF8;
  if (v88 >> 62)
  {
LABEL_89:
    v96 = sub_76A860();
  }

  else
  {
    v96 = *(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8));
  }

  v97 = 0;
  v98 = _swiftEmptyArrayStorage;
  while (v96 != v97)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      sub_76A770();
      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v97 >= *(v95 + 16))
      {
        goto LABEL_86;
      }

      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    v100 = sub_764F20();

    ++v97;
    if (v100)
    {
      sub_769440();
      if (*(&dword_10 + (v144 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v144 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
      v98 = v144;
      v97 = v99;
    }
  }

  v101 = sub_58E054(v98);
  v88 = v101;
  v102 = *&v137[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView];
  v144 = _swiftEmptyArrayStorage;
  v95 = v101 & 0xFFFFFFFFFFFFFF8;
  if (v101 >> 62)
  {
    v103 = sub_76A860();
  }

  else
  {
    v103 = *(&dword_10 + (v101 & 0xFFFFFFFFFFFFFF8));
  }

  v104 = v102;
  v105 = 0;
  v106 = _swiftEmptyArrayStorage;
  while (v103 != v105)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      sub_76A770();
      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v105 >= *(v95 + 16))
      {
        goto LABEL_88;
      }

      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    v108 = sub_7651A0();

    ++v105;
    if (v108)
    {
      sub_769440();
      if (*(&dword_10 + (v144 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v144 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
      v106 = v144;
      v105 = v107;
    }
  }

  v109 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v110 = *&v104[v109];
  *&v104[v109] = v106;
  sub_4A348C(v110);

  [v137 setNeedsLayout];
}

uint64_t sub_590944()
{
  sub_765B70();
  sub_5911B8(&qword_94CAB0, &type metadata accessor for TodayCard);
  result = sub_75C750();
  if (v9)
  {
    sub_765B20();

    sub_75E6F0();
    if (!swift_dynamicCastClass())
    {
    }

    sub_75E6E0();
    sub_764F90();
    v1 = sub_769490();

    if ((v1 & 1) == 0)
    {
    }

    v2 = sub_75E6E0();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_24:
      v5 = sub_76A860();
      if (v5)
      {
LABEL_6:
        v6 = 0;
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              sub_76A770();
              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_23;
              }

              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            if (sub_764EE0())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_25;
            }
          }

          sub_765330();

          sub_769440();
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();
        }

        while (v6 != v5);
      }
    }

    else
    {
      v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      if (v5)
      {
        goto LABEL_6;
      }
    }

LABEL_25:

    v8._rawValue = _swiftEmptyArrayStorage;
    sub_75A070(v8);
  }

  return result;
}

uint64_t sub_590BD8()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v2 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView];
  v4 = sub_765960();

  swift_beginAccess();
  *(v4 + 32) = _swiftEmptyArrayStorage;

  v5 = *&v1[v2];
  sub_7659F0();

  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = _swiftEmptyArrayStorage;
  v9 = v6;
  sub_4A348C(v8);
}

uint64_t sub_590DCC()
{

  v1 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverStyling;
  v2 = sub_75C100();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for RiverTodayCardCollectionViewCell()
{
  result = qword_95BD08;
  if (!qword_95BD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_590FB4()
{
  result = sub_75C100();
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

uint64_t sub_591080()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5910B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_5910D0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView];
  v5 = v0[v1];
  *(v4 + qword_950C80) = v5;
  if (v5 != 7)
  {
    *(*(v4 + qword_950C88) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_950C90) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_950CA0) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v5;
  }

  return result;
}

uint64_t sub_5911B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_591224(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_592EBC(&qword_93F500, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
    sub_BE70(0, &qword_93E550);
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
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_5914B8()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppEventView()
{
  result = qword_95BD60;
  if (!qword_95BD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_591658(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_5916BC;
}

void sub_5916BC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_5917E4()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_75D650();
  if (!CGRectIsEmpty(v17))
  {
    v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView];
    sub_75D650();
    v3 = v2;
    v5 = v4;
    sub_26DAA8(v15);
    sub_270D88(v0, v15, v3, v5);
    sub_37538(v15);
    sub_75D650();
    CGRectGetMinX(v18);
    sub_75D650();
    CGRectGetMinY(v19);
    sub_75D650();
    sub_769D20();
    [v1 setFrame:?];
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_BE70(0, &qword_93E550);
      v9 = v0;
      v10 = sub_76A1C0();

      if (v10)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v20);
        sub_75D650();
        v12 = CGRectGetHeight(v21) - MaxY;
        sub_75D650();
        [v6 setBounds:{0.0, 0.0, CGRectGetWidth(v22), v12}];
        [v1 frame];
        v13 = CGRectGetMaxY(v23);
        sub_75D650();
        v14 = CGRectGetHeight(v24) - v13;
        [v9 bounds];
        [v6 setCenter:{CGRectGetWidth(v25) * 0.5, v13 + v14 * 0.5}];
      }
    }
  }
}

void sub_591B8C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = v60 - v5;
  v7 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v7 - 8);
  v9 = v60 - v8;
  v10 = sub_BD88(&unk_950960);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - v12;
  sub_BE70(0, &qword_94AB00);
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer];
  if ((sub_76A1C0() & 1) == 0)
  {
    return;
  }

  v61 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView];
  v15 = [v61 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_BE70(0, &qword_93E550);
  v18 = v2;
  v60[1] = v17;
  LOBYTE(v17) = sub_76A1C0();

  if ((v17 & 1) == 0)
  {
    return;
  }

  v19 = [a1 state];
  if (v19 > 3)
  {
    if ((v19 - 4) >= 2)
    {
      return;
    }

    v23 = [v61 superview];
    if (!v23)
    {
      return;
    }

    v24 = v23;
    v25 = v18;
    v26 = sub_76A1C0();

    if ((v26 & 1) == 0)
    {
      return;
    }

    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = 0x3FF0000000000000;
    v67 = sub_5932D4;
    v68 = v28;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_23F0CC;
    v66 = &unk_897F00;
    v29 = _Block_copy(&aBlock);
    v30 = v25;

    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = v30;
    v67 = sub_5932EC;
    v68 = v31;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v32 = &unk_897F50;
LABEL_30:
    v65 = sub_3D6D80;
    v66 = v32;
    v58 = _Block_copy(&aBlock);
    v59 = v30;

    [v27 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v29 options:v58 animations:0.0 completion:1.0];
    _Block_release(v58);
    _Block_release(v29);
    return;
  }

  if (v19 == &dword_0 + 1)
  {
    v33 = v61;
    [a1 locationInView:v61];
    v34 = v18 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_initialLongPressLocation;
    *v34 = v35;
    *(v34 + 1) = v36;
    v34[16] = 0;
    v37 = [v33 superview];
    if (!v37)
    {
      return;
    }

    v38 = v37;
    v39 = v18;
    v40 = sub_76A1C0();

    if ((v40 & 1) == 0)
    {
      return;
    }

    v27 = objc_opt_self();
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = 0x3FEEB851EB851EB8;
    v67 = sub_5932D4;
    v68 = v41;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_23F0CC;
    v66 = &unk_897FA0;
    v29 = _Block_copy(&aBlock);
    v30 = v39;

    v42 = swift_allocObject();
    *(v42 + 16) = 1;
    *(v42 + 24) = v30;
    v67 = sub_5932EC;
    v68 = v42;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v32 = &unk_897FF0;
    goto LABEL_30;
  }

  if (v19 == &dword_0 + 2)
  {
    [a1 locationInView:v61];
    v45 = (v18 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_initialLongPressLocation + 16))
    {
      *v45 = v43;
      v45[1] = v44;
      *(v45 + 16) = 0;
    }

    else
    {
      v46 = sqrt((v44 - v45[1]) * (v44 - v45[1]) + (v43 - *v45) * (v43 - *v45));
      [v14 allowableMovement];
      if (v47 < v46)
      {

        [a1 setEnabled:0];
      }
    }

    return;
  }

  if (v19 != &dword_0 + 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_clickAction;
  swift_beginAccess();
  sub_358A74(v18 + v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_94EC40;
    v22 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_75B470();
    v66 = ObjectType;
    aBlock = v18;
    v48 = v18;
    sub_764C00();

    sub_75B460();
    v49 = sub_BD88(&unk_93F630);
    sub_768860();

    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v6, 1, v49) != 1)
    {
      sub_75B470();
      v51 = sub_75B460();
      sub_32A6C0(aBlock, 1, v51, v6);

      (*(v11 + 8))(v13, v10);

      (*(v50 + 8))(v6, v49);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_93F980;
    v22 = v6;
  }

  sub_10A2C(v22, v21);
LABEL_27:
  v52 = [v61 superview];
  if (v52)
  {
    v53 = v52;
    v54 = v18;
    v55 = sub_76A1C0();

    if (v55)
    {
      v27 = objc_opt_self();
      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      *(v56 + 24) = 0x3FF0000000000000;
      v67 = sub_592F3C;
      v68 = v56;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v65 = sub_23F0CC;
      v66 = &unk_897E60;
      v29 = _Block_copy(&aBlock);
      v30 = v54;

      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      *(v57 + 24) = v30;
      v67 = sub_592F60;
      v68 = v57;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v32 = &unk_897EB0;
      goto LABEL_30;
    }
  }
}

id sub_592574(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

uint64_t sub_5925D4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  sub_BE70(0, &qword_94AB00);
  if ((sub_76A1C0() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView)];
  v12 = *(v8 + v9);
  if (v12)
  {
    v13 = v10;
    v14 = v11;
    [v12 bounds];
    v32.x = v13;
    v32.y = v14;
    if (CGRectContainsPoint(v35, v32))
    {
      return 0;
    }
  }

  v15 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton)];
  v18 = *(v8 + v15);
  if (v18)
  {
    v19 = v16;
    v20 = v17;
    [v18 bounds];
    v33.x = v19;
    v33.y = v20;
    if (CGRectContainsPoint(v36, v33))
    {
      return 0;
    }
  }

  [a2 locationInView:v2];
  v22 = v21;
  v24 = v23;
  v25 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v34.x = v22;
  v34.y = v24;
  if (CGRectContainsPoint(v37, v34))
  {
    if (v25)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();

      if (v26)
      {
        return 0;
      }
    }

    v28 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_clickAction;
    swift_beginAccess();
    sub_358A74(&v3[v28], v7);
    v29 = sub_BD88(&unk_950960);
    v30 = (*(*(v29 - 8) + 48))(v7, 1, v29) != 1;
    sub_10A2C(v7, &qword_94EC40);
    return v30;
  }

  else
  {

    return 0;
  }
}

void sub_5928F4()
{
  sub_2F1CA0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_5929C4(uint64_t **a1))()
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
  v2[4] = sub_591658(v2);
  return sub_21028;
}

double sub_592A48()
{
  [*(*v0 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  sub_75D650();
  CGRectGetHeight(v3);
  sub_75D650();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_592AC0()
{
  v1 = *v0;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  sub_75D650();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_592B80()
{
  ObjectType = swift_getObjectType();
  v1 = sub_592EBC(&unk_95BD80, type metadata accessor for AppEventView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_592BF4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_592EBC(&unk_95BD80, type metadata accessor for AppEventView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_592C80(uint64_t *a1))()
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
  sub_592EBC(&unk_95BD80, type metadata accessor for AppEventView);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_592D3C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView);
  sub_BE70(0, &qword_93E550);
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

uint64_t sub_592EBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_592F04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_592F48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_592F64()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_592F9C()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

char *sub_592FC8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_clickAction;
  v3 = sub_BD88(&unk_950960);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView] = [objc_allocWithZone(type metadata accessor for AppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer] = v5;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView;
  *(*&v10[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView] + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_delegate + 8) = &off_897DE8;
  swift_unknownObjectWeakAssign();
  [v10 addSubview:*&v10[v11]];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView]];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v13] setMinimumPressDuration:0.1];
  [*&v10[v13] setDelegate:v10];
  [*&v10[v12] addGestureRecognizer:*&v10[v13]];
  sub_BD88(&qword_9477F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_77B6D0;
  *(v14 + 32) = sub_7676F0();
  *(v14 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_5932F4(uint64_t a1)
{
  v3 = sub_75EE00();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView);
  v18 = sub_BE70(0, &qword_93E550);
  v19 = &protocol witness table for UIView;
  v17 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel);
  v15 = sub_75BB20();
  v16 = &protocol witness table for UIView;
  v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel);
  v14[5] = &protocol witness table for UIView;
  v14[6] = v8;
  v14[4] = v15;
  v14[1] = v9;
  (*(v4 + 16))(v6, a1, v3);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  return sub_75EDB0();
}

uint64_t sub_59345C(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = sub_7656C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  swift_getKeyPath();
  sub_75C7B0();

  (*(v4 + 56))(v12, 0, 1, v3);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_B33C8(v12, v2 + v13, &unk_955AA0);
  swift_endAccess();
  sub_765B70();
  sub_5957C8(&qword_94CAB0, &type metadata accessor for TodayCard);
  result = sub_75C750();
  v15 = v17;
  if (v17)
  {
    sub_1ED18(v2 + v13, v9, &unk_955AA0);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {

      return sub_10A2C(v9, &unk_955AA0);
    }

    else
    {
      (*(v4 + 32))(v6, v9, v3);
      (*&stru_B8.segname[(swift_isaMask & *v2) + 16])(v15, v6, v16);
      [v2 setNeedsLayout];

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_593770@<X0>(objc_class *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v41 = a2;
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_766690();
  __chkstk_darwin(v6 - 8);
  v40 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7666A0();
  if (qword_93DA90 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99F7A8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v36 = v9;
  v11(v5);
  v13 = enum case for FontSource.useCase(_:);
  v38 = v3[13];
  v38(v5);
  v45 = sub_766CA0();
  v58[3] = v45;
  v58[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v58);
  v56 = v2;
  v57 = &protocol witness table for FontSource;
  v14 = sub_B1B4(&v55);
  v37 = v3[2];
  v43 = v3 + 2;
  v37(v14, v5, v2);
  sub_766CB0();
  v15 = v3[1];
  v44 = v3 + 1;
  v34 = v15;
  v15(v5, v2);
  if (qword_93DA98 != -1)
  {
    swift_once();
  }

  v35 = sub_BE38(v8, qword_99F7C0);
  (v11)(v5, v35, v8);
  v42 = v13;
  v16 = v13;
  v17 = v38;
  (v38)(v5, v16, v2);
  v56 = v45;
  v33 = v3 + 13;
  v31 = v8;
  v57 = &protocol witness table for StaticDimension;
  sub_B1B4(&v55);
  v30 = v12;
  v32 = v11;
  v53 = v2;
  v54 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v52);
  v19 = v37;
  v37(v18, v5, v2);
  sub_766CB0();
  v20 = v34;
  v34(v5, v2);
  (v11)(v5, v36, v8);
  (v17)(v5, v42, v2);
  v53 = v45;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v21 = v20;
  v22 = v39;
  v23.super.isa = v39;
  isa = sub_766490(v23).super.isa;
  [(objc_class *)isa lineHeight];
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v25 = sub_B1B4(v49);
  v19(v25, v5, v2);
  sub_766CB0();

  v21(v5, v2);
  v32(v5, v35, v31);
  (v17)(v5, v42, v2);
  v50 = v45;
  v51 = &protocol witness table for StaticDimension;
  sub_B1B4(v49);
  v26.super.isa = v22;
  v27 = sub_766490(v26).super.isa;
  [(objc_class *)v27 lineHeight];
  v47 = v2;
  v48 = &protocol witness table for FontSource;
  v28 = sub_B1B4(v46);
  v19(v28, v5, v2);
  sub_766CB0();

  v21(v5, v2);
  v47 = sub_766970();
  v48 = &protocol witness table for ZeroDimension;
  sub_B1B4(v46);
  sub_766960();
  return sub_75EDE0();
}

char *sub_593D68(double a1, double a2, double a3, double a4)
{
  v9 = sub_760AD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v16 = sub_75C840();
  v17 = *(*(v16 - 8) + 56);
  v53 = v4;
  v17(&v4[v15], 1, 1, v16);
  v51 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_93DA90 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99F7A8);
  v20 = *(v18 - 8);
  v50 = *(v20 + 16);
  v50(v14, v19, v18);
  v49 = *(v20 + 56);
  v49(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v22 = *(v10 + 104);
  v22(v52, enum case for DirectionalTextAlignment.leading(_:), v9);
  v23 = sub_75BB20();
  v48 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v53[v51] = sub_75BB10();
  v51 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_93DA98 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v18, qword_99F7C0);
  v50(v14, v26, v18);
  v49(v14, 0, 1, v18);
  v22(v52, v21, v48);
  v27 = objc_allocWithZone(v24);
  v28 = sub_75BB10();
  v29 = v53;
  *&v53[v51] = v28;
  v30 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView;
  *&v29[v30] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageGrid;
  v32 = sub_7656C0();
  (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
  *&v29[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  v33 = type metadata accessor for BaseTodayBrickCollectionViewCell();
  v54.receiver = v29;
  v54.super_class = v33;
  v34 = objc_msgSendSuper2(&v54, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v36 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView] _setCornerRadius:20.0];
  [*&v34[v36] setClipsToBounds:1];
  v37 = *&v34[v36];
  sub_BE70(0, &qword_93E540);
  v38 = v37;
  v39 = sub_76A030();
  [v38 setBackgroundColor:v39];

  v40 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel;
  v41 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel];
  v42 = sub_769FF0();
  [v41 setTextColor:v42];

  [*&v34[v40] setNumberOfLines:2];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel] setNumberOfLines:2];
  v44 = [v34 contentView];
  [v44 addSubview:*&v34[v40]];

  v45 = [v34 contentView];
  [v45 addSubview:*&v34[v43]];

  v46 = [v34 contentView];
  [v46 addSubview:*&v34[v36]];

  return v34;
}

id sub_5943A4()
{
  v1 = v0;
  v2 = sub_7664F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_75EE10();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75EE00();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BaseTodayBrickCollectionViewCell();
  v20.receiver = v1;
  v20.super_class = v13;
  result = objc_msgSendSuper2(&v20, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits])
  {
    swift_unknownObjectRetain();
    v15 = [v1 traitCollection];
    v18 = v2;
    v16 = v15;
    sub_593770(v15, v12);

    sub_5932F4(v12);
    v17 = [v1 contentView];
    sub_BE70(0, &qword_93E550);
    sub_75D650();

    sub_75EDC0();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v18);
    (*(v6 + 8))(v8, v19);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

id sub_5946D8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  swift_unknownObjectRelease();
  if (*&v0[v1])
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel] setText:0];
}

uint64_t sub_59489C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel) text];
  if (v1)
  {
    v2 = v1;
    sub_769240();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v21[0] = v4;
  v5 = [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel) text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_769240();
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
        v11 = sub_7B5CC(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_7B5CC((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_8;
    }
  }

  sub_BD88(&qword_941BA0);
  swift_arrayDestroy();
  sub_BD88(&unk_947FF0);
  sub_5FBA8();
  v19 = sub_7691A0();

  return v19;
}

id sub_594B78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayBrickCollectionViewCell()
{
  result = qword_95BDC8;
  if (!qword_95BDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_594CB0()
{
  sub_282A74(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_282A74(319, qword_942ED0, &type metadata accessor for PageGrid);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_594DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_594E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_93F620);
}

uint64_t sub_594EB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_93F620);
  return swift_endAccess();
}

double sub_595004()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75EE00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75DA30();
  sub_593770(v8, v7);

  sub_75DA20();
  sub_765630();
  (*(v1 + 8))(v3, v0);
  v9 = sub_75DA30();
  sub_75EDD0();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  return v11;
}

id sub_595214()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel];
  sub_765A40();
  if (v3)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  sub_765580();
  v6 = v5;
  v7 = [v1 traitCollection];
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v18.receiver = v9;
  v18.super_class = v8;
  v11 = objc_msgSendSuper2(&v18, "init");
  v12 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits] = v11;
  v13 = v11;
  swift_unknownObjectRelease();
  if (*&v1[v12])
  {
    [v1 setNeedsLayout];
  }

  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel];
  sub_765A60();
  if (v15)
  {
    v16 = sub_769210();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  return [v1 setNeedsLayout];
}

void sub_5953B0()
{
  v1 = sub_760AD0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v9 = sub_75C840();
  v10 = *(*(v9 - 8) + 56);
  v32 = v0;
  v10(v0 + v8, 1, 1, v9);
  v29 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_93DA90 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99F7A8);
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
  v18 = sub_75BB20();
  v19 = objc_allocWithZone(v18);
  *(v32 + v29) = sub_75BB10();
  v29 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_93DA98 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v11, qword_99F7C0);
  v28(v7, v20, v11);
  v14(v7, 0, 1, v11);
  v17(v4, v15, v31);
  v21 = objc_allocWithZone(v18);
  v22 = sub_75BB10();
  v23 = v32;
  *(v32 + v29) = v22;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView;
  *(v23 + v24) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageGrid;
  v26 = sub_7656C0();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  *(v23 + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_5957C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_595810(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v5 = 0xD000000000000023;
      v6 = 0xD000000000000033;
      if (a1 == 10)
      {
        v6 = 0xD00000000000002BLL;
      }

      v7 = a1 == 9;
    }

    else
    {
      v5 = 0xD000000000000014;
      v6 = 0xD00000000000001BLL;
      if (a1 == 7)
      {
        v6 = 0xD00000000000001ELL;
      }

      v7 = a1 == 6;
    }

    if (v7)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696D61466E497369;
    v2 = 0xD000000000000011;
    v3 = 0x74616572436E6163;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000016;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_595A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, uint64_t a7@<D1>, double a8@<D6>, double a9@<D7>, char *a10, char *a11)
{
  v128 = a4;
  v139 = a2;
  v140 = a3;
  v141 = a1;
  v133 = a5;
  v124 = sub_BD88(&qword_940A68);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v121 = &v111 - v17;
  v120 = sub_766690();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_764A60();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v114 = &v111 - v21;
  v126 = sub_767D60();
  v127 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v23 - 8);
  v131 = &v111 - v24;
  v135 = sub_764930();
  v25 = *(v135 - 8);
  __chkstk_darwin(v135);
  v136 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v111 - v28;
  __chkstk_darwin(v30);
  v32 = &v111 - v31;
  v33 = sub_7656A0();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v113 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v111 = &v111 - v37;
  __chkstk_darwin(v38);
  v112 = &v111 - v39;
  __chkstk_darwin(v40);
  v132 = &v111 - v41;
  __chkstk_darwin(v42);
  v44 = &v111 - v43;
  v45 = sub_BD88(&qword_9438F8);
  v46 = v45 - 8;
  __chkstk_darwin(v45);
  v48 = &v111 - v47;
  sub_1ED18(v139, &v111 - v47, &qword_963790);
  v49 = *(v46 + 56);
  v134 = v48;
  v50 = &v48[v49];
  v51 = v34;
  sub_1ED18(v140, v50, &qword_963790);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();

  v52 = *(v34 + 104);
  v53 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v144)
  {
    v53 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v54 = *v53;
  v137 = v33;
  v138 = v44;
  v55 = v44;
  v56 = v135;
  v52(v55, v54, v33);
  swift_getKeyPath();
  sub_768750();

  (*(v25 + 104))(v29, enum case for Shelf.ContentType.placeholder(_:), v56);
  sub_598650(&qword_942D68, &type metadata accessor for Shelf.ContentType);
  v139 = v32;
  sub_769430();
  sub_769430();
  if (v144 == v142 && v145 == v143)
  {
    v57 = 1;
  }

  else
  {
    v57 = sub_76A950();
  }

  v140 = *(v25 + 8);
  v140(v29, v56);

  v58 = v139;
  if (v57)
  {
    swift_getKeyPath();
    v59 = v131;
    sub_768750();

    if ((*(v25 + 48))(v59, 1, v56) == 1)
    {
      sub_10A2C(v59, &qword_951BE0);
    }

    else
    {
      v140(v58, v56);
      (*(v25 + 32))(v58, v59, v56);
    }
  }

  v60 = a11;
  v61 = v136;
  (*(v25 + 16))(v136, v58, v56);
  v62 = (*(v25 + 88))(v61, v56);
  if (v62 == enum case for Shelf.ContentType.smallLockup(_:) || v62 == enum case for Shelf.ContentType.purchasesLockup(_:) || v62 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_15:
    v63 = v125;
    sub_75B4A0();
    v64 = sub_767D40();
    (*(v127 + 8))(v63, v126);
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_490554(v64 & 1);
LABEL_41:
    sub_765670();
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v65;
    v77 = v66;
    goto LABEL_42;
  }

  if (v62 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_17:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_93CF58 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v62 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithAlignedRegionBackground(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v62 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:) || v62 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.ribbonBar(_:) || v62 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v71 = v121;
    sub_7655C0();
    v72 = v122;
    sub_7655C0();
    v68 = v137;
    v73 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_620A70(v71, v72);
    sub_765670();
    v74 = *(*&v123 + 8);
    v75 = v72;
    v76 = v124;
    v74(v75, v124);
    v74(v71, v76);
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v73;
    goto LABEL_32;
  }

  if (v62 == enum case for Shelf.ContentType.paragraph(_:) || v62 == enum case for Shelf.ContentType.annotation(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.footnote(_:))
  {
LABEL_30:
    v68 = v137;
    v67 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_40DC7C(0.0);
    sub_765670();
    v140(v58, v56);
    v69 = *(v34 + 8);
    v70 = v67;
LABEL_32:
    v77 = v68;
LABEL_42:
    v69(v70, v77);
    return sub_10A2C(v134, &qword_9438F8);
  }

  if (v62 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    if (sub_75B4D0())
    {
      v78 = v118;
      sub_7666A0();
      v79 = sub_7665E0();
      (*(v119 + 8))(v78, v120);
      if (v79)
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_93C3D0 == -1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_93C3D8 == -1)
        {
LABEL_50:

          (*(v51 + 16))(v82, v80, v81);
          sub_765670();
          v140(v58, v56);
          (*(v51 + 8))(v80, v81);
          return sub_10A2C(v134, &qword_9438F8);
        }
      }
    }

    else
    {
      v81 = v137;
      v80 = v138;
      v82 = v132;
      if (qword_93C6E0 == -1)
      {
        goto LABEL_50;
      }
    }

    swift_once();
    goto LABEL_50;
  }

  if (v62 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.brick(_:))
  {
LABEL_47:
    v131 = v60;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_93C230 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
LABEL_52:
    swift_getKeyPath();
    v84 = v114;
    sub_768750();

    v85 = v115;
    sub_764A00();
    sub_598650(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
    v86 = v117;
    v87 = sub_76A520();
    v88 = *(v116 + 8);
    v88(v85, v86);
    v88(v84, v86);
    v89 = v125;
    sub_75B4A0();
    LOBYTE(v88) = sub_767D40();
    (*(v127 + 8))(v89, v126);
    v91 = v137;
    v90 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_51E018(v88 & 1, v87 & 1);
    sub_765670();
    v140(v58, v56);
    (*(v51 + 8))(v90, v91);
    return sub_10A2C(v134, &qword_9438F8);
  }

  if (v62 == enum case for Shelf.ContentType.productCapability(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.reviews(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    goto LABEL_17;
  }

  v131 = a11;
  v121 = a10;
  v122 = (v25 + 8);
  v123 = a6;
  v124 = a7;
  v129 = a8;
  v130 = a9;
  v92 = v56;
  v93 = v137;
  v94 = v34;
  if (v62 == enum case for Shelf.ContentType.reviewSummary(_:) || v62 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v95 = 0.0;
    if (sub_75B4D0())
    {
      v96 = v125;
      sub_75B4A0();
      v97 = sub_767D40();
      (*(v127 + 8))(v96, v126);
      if (v97)
      {
        v95 = 0.0;
      }

      else
      {
        v95 = 190.0;
      }
    }

    v98 = v138;
    (*(v34 + 16))(v113, v138, v93);
    sub_40DC7C(v95);
    goto LABEL_68;
  }

  if (v62 == enum case for Shelf.ContentType.todayCard(_:))
  {
    (*(v34 + 16))(v132, v138, v137);
    if (qword_93C248 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.miniTodayCard(_:))
  {
    (*(v34 + 16))(v112, v138, v137);
    if (sub_75B4E0())
    {
      if (qword_93D2A0 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_93D298 == -1)
    {
LABEL_83:

      sub_765670();
      v140(v139, v56);
      (*(v34 + 8))(v138, v93);
      return sub_10A2C(v134, &qword_9438F8);
    }

LABEL_109:
    swift_once();
    goto LABEL_83;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.framedArtwork(_:) || v62 == enum case for Shelf.ContentType.screenshots(_:) || v62 == enum case for Shelf.ContentType.productMedia(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v62 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v99 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_40DC7C(0.0);
    sub_765670();
    v140(v139, v56);
    (*(v51 + 8))(v99, v93);
    return sub_10A2C(v134, &qword_9438F8);
  }

  if (v62 == enum case for Shelf.ContentType.productReview(_:))
  {
    v100 = v125;
    sub_75B4A0();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_435850(v100, 0);
LABEL_91:
    sub_765670();
    (*(v127 + 8))(v100, v126);
    goto LABEL_69;
  }

  if (v62 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v100 = v125;
    sub_75B4A0();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_6E5DB8(v100);
    goto LABEL_91;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  v60 = v131;
  if (v62 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v62 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    goto LABEL_47;
  }

  if (v62 == enum case for Shelf.ContentType.largeStoryCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v62 == enum case for Shelf.ContentType.upsellBreakout(_:) || v62 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v62 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    swift_getKeyPath();
    sub_768750();

    v101 = *(v144 + 16);

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_D0EBC(v101);
LABEL_108:
    sub_765670();
    v140(v139, v92);
    (*(v102 + 8))(v103, v93);
    return sub_10A2C(v134, &qword_9438F8);
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.privacyType(_:))
  {
LABEL_113:
    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v137);
    v104 = v125;
    sub_75B4A0();
    sub_262344(v104);
    (*(v127 + 8))(v104, v126);
    goto LABEL_108;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_39:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_93C6E0 == -1)
    {
LABEL_40:

      goto LABEL_41;
    }

LABEL_85:
    swift_once();
    goto LABEL_40;
  }

  if (v62 == enum case for Shelf.ContentType.searchResult(_:))
  {
    v105 = sub_75B4C0();
    (*(v34 + 16))(v111, v138, v93);
    if (v105)
    {
      if (qword_93D058 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_93D050 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v98 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_4F0A70();
LABEL_68:
    sub_765670();
LABEL_69:
    v140(v139, v92);
    (*(v34 + 8))(v98, v93);
    return sub_10A2C(v134, &qword_9438F8);
  }

  if (v62 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v106 = v125;
    sub_75B4A0();
    v107 = sub_767D40();
    (*(v127 + 8))(v106, v126);
    if (v107)
    {
      if (sub_75B4C0())
      {
        v108 = 1;
      }

      else
      {
        v108 = 2;
      }
    }

    else
    {
      v108 = 2;
    }

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_3CC450(v108);
    goto LABEL_108;
  }

  v51 = v34;
  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.heroCarousel(_:) || v62 == enum case for Shelf.ContentType.uber(_:) || v62 == enum case for Shelf.ContentType.mediaPageHeader(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.tagBrick(_:))
  {
    goto LABEL_52;
  }

  if (v62 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
  {
    goto LABEL_113;
  }

  v109 = v138;
  (*(v94 + 16))(v132, v138, v137);
  sub_40DC7C(0.0);
  sub_765670();
  v110 = v140;
  v140(v139, v56);
  (*(v94 + 8))(v109, v93);
  sub_10A2C(v134, &qword_9438F8);
  return v110(v136, v56);
}