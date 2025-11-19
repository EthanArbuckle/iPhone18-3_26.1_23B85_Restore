uint64_t sub_1006B0284(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v33 = a4;
  v6 = sub_1007621EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_10077167C() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001007D7F70 == a2 || (sub_10077167C() & 1) != 0)
  {
    v10 = sub_10076FF6C();
    v11 = sub_10076FF6C();
    v12.super.isa = sub_10075E02C().super.isa;
    v13 = [v33 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
LABEL_5:
    v14 = v13;

LABEL_6:
    return v14;
  }

  if (sub_10076FF9C() == a1 && v16 == a2)
  {

    goto LABEL_20;
  }

  v18 = sub_10077167C();

  if (v18)
  {
LABEL_20:
    sub_10075E0AC();
    sub_100761A6C();
    v20 = (*(v7 + 88))(v9, v6);
    v21 = enum case for ShelfBackground.interactive(_:);
    v10 = sub_10076FF6C();
    if (v20 == v21)
    {
      type metadata accessor for InteractiveTitleHeaderView();
      sub_1007708FC();
      v11 = sub_10076FF6C();

      v12.super.isa = sub_10075E02C().super.isa;
      v13 = [v33 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
      goto LABEL_5;
    }

    type metadata accessor for TitleHeaderView(0);
    sub_1007708FC();
    v22 = sub_10076FF6C();

    isa = sub_10075E02C().super.isa;
    v24 = [v33 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v22 forIndexPath:isa];

    (*(v7 + 8))(v9, v6);
    return v24;
  }

  if (sub_10076FF9C() == a1 && v19 == a2)
  {

LABEL_24:
    v26 = sub_10076FF6C();
    type metadata accessor for InfiniteScrollFooterView();
    sub_1007708FC();
    v27 = sub_10076FF6C();

    v12.super.isa = sub_10075E02C().super.isa;
    v14 = [v33 dequeueReusableSupplementaryViewOfKind:v26 withReuseIdentifier:v27 forIndexPath:v12.super.isa];

    goto LABEL_6;
  }

  v25 = sub_10077167C();

  if (v25)
  {
    goto LABEL_24;
  }

  v36._countAndFlagsBits = 0xD00000000000001CLL;
  v36._object = 0x80000001007F5390;
  if (sub_10077011C(v36))
  {
    type metadata accessor for AdBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = sub_10076FF6C();
    sub_1007708FC();
    v30 = sub_10076FF6C();

    v31 = v33;
    [v33 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v29 withReuseIdentifier:v30];

    v10 = sub_10076FF6C();
    sub_1007708FC();
    v11 = sub_10076FF6C();

    v12.super.isa = sub_10075E02C().super.isa;
    v13 = [v31 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
    goto LABEL_5;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_10077145C(29);

  v34 = 0xD00000000000001BLL;
  v35 = 0x80000001007F53E0;
  v37._countAndFlagsBits = a1;
  v37._object = a2;
  sub_1007700CC(v37);
  result = sub_10077156C();
  __break(1u);
  return result;
}

void sub_1006B0878(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v165 = a5;
  v173 = a4;
  v169 = a1;
  v10 = *v6;
  v171 = a6;
  v172 = v10;
  v11 = sub_1007621EC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v149 - v16);
  __chkstk_darwin(v18);
  v20 = &v149 - v19;
  v21 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v21 - 8);
  v164 = (&v149 - v22);
  v157 = sub_10076B6EC();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v154 = &v149 - v25;
  v163 = sub_10076BEDC();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v161 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v27 - 8);
  v160 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v153);
  v170 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076FF9C() == a2 && v30 == a3)
  {

LABEL_5:
    v32 = type metadata accessor for InteractiveTitleHeaderView();
    v33 = v169;
    v149 = v32;
    v34 = swift_dynamicCastClass();
    v151 = v11;
    v150 = v12;
    v152 = v20;
    if (v34)
    {
      v159 = v34;
      v35 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension26InteractiveTitleHeaderView_titleView);
      v36 = v33;
    }

    else
    {
      type metadata accessor for TitleHeaderView(0);
      v35 = swift_dynamicCastClassUnconditional();
      v159 = 0;
    }

    sub_100760C4C();
    sub_10076F64C();
    v37 = v35;
    sub_10076FC1C();
    v167 = v7;
    v168 = v174[0];
    v38 = v7[2];
    v39 = v172[10];
    v40 = v172[12];
    v41 = sub_100761AFC();
    v42 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork;
    v43 = *(v37 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork);

    sub_1001903B4(v41);
    *(v37 + v42) = v41;

    sub_1001903C8(v43);

    v169 = v38;
    v44 = sub_100761B6C();
    v46 = v45;
    v47 = (v37 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
    v48 = *(v37 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
    v49 = *(v37 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText + 8);

    sub_10018FD94(v44, v46);
    *v47 = v44;
    v47[1] = v46;

    sub_10018FE28(v48, v49);

    v50 = *(v37 + v42);

    if (v50)
    {
      v51 = *(v37 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView);
      if (v51)
      {
        v52 = *(v37 + v42);
        v53 = v170;
        (*((swift_isaMask & *v37) + 0x1C0))();
        v54 = v160;
        sub_10011BA50(v53, v160);

        v55 = v51;
        sub_10013B184(v53, type metadata accessor for TitleHeaderView.Style);
        sub_1006BA044(v52, v54, v37);

        sub_10013B184(v54, type metadata accessor for TitleHeaderView.TextConfiguration);
        v56 = v161;
        sub_10076BEEC();
        sub_10076BE9C();
        (*(v162 + 8))(v56, v163);
        sub_10076BFCC();
        sub_10075FD2C();
        sub_1006BCDF0(&qword_100941820, &type metadata accessor for ArtworkView);
        sub_100760B8C();
      }
    }

    v58 = sub_100761ABC();
    v59 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork;
    v60 = *(v37 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork);

    sub_100190554(v58);
    *(v37 + v59) = v58;

    sub_100190668(v60);

    v158 = *(v37 + v59);
    v61 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel;
    v62 = *(v37 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);
    sub_100761B5C();
    if (v63)
    {
      v64 = sub_10076FF6C();
    }

    else
    {
      v64 = 0;
    }

    [v62 setText:v64];

    v65 = *(v37 + v59);
    if (v65)
    {
      v66 = *(v37 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView);
      if (v66)
      {
        v67 = v170;
        (*((swift_isaMask & *v37) + 0x1C0))();
        v68 = v160;
        sub_10011BA50(v67 + *(v153 + 20), v160);

        v69 = v66;
        sub_10013B184(v67, type metadata accessor for TitleHeaderView.Style);
        sub_1006BA044(v65, v68, v37);
        sub_10013B184(v68, type metadata accessor for TitleHeaderView.TextConfiguration);
        v70 = v161;
        sub_10076BEEC();
        sub_10076BE9C();
        (*(v162 + 8))(v70, v163);
        sub_10076BFCC();
        sub_10075FD2C();
        sub_1006BCDF0(&qword_100941820, &type metadata accessor for ArtworkView);
        sub_100760B8C();
      }
    }

    v71 = v158 != 0;
    v72 = swift_allocObject();
    *(v72 + 16) = v39;
    v73 = v172;
    v74 = v172[11];
    *(v72 + 24) = v74;
    *(v72 + 32) = v40;
    *(v72 + 40) = v71;
    *(v72 + 48) = v73;
    v75 = (v37 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines);
    *v75 = sub_1006BB628;
    v75[1] = v72;

    [*(v37 + v61) setNumberOfLines:{sub_1006B9D7C(v71, v37)}];

    v76 = v173;
    v77 = sub_100761AAC();
    v166 = v39;
    if (v77)
    {
      v172 = v74;
      sub_100761B4C();
      v78 = v154;
      sub_10076B70C();

      v79 = v155;
      sub_10076B6CC();
      sub_1006BCDF0(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
      v80 = v157;
      v81 = sub_10077124C();
      v82 = *(v156 + 8);
      v82(v79, v80);
      v82(v78, v80);
      if (v81)
      {
        sub_100016F40(0, &qword_100942F10);
        v83 = sub_100770CFC();
        v84 = v83;
      }

      else
      {
        v83 = 0;
      }

      v92 = v37;
      v93 = sub_10076B8EC();
      v94 = v164;
      *v164 = v93;
      v94[1] = v95;
      v94[2] = v83;
      v96 = type metadata accessor for Accessory();
      v94[3] = 0;
      v94[4] = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v96 - 8) + 56))(v94, 0, 1, v96);
      (*((swift_isaMask & *v92) + 0x268))(v94, v171);

      sub_10000CFBC(v94, &qword_10094BB50);
      v97 = swift_allocObject();
      v91 = v167;
      swift_weakInit();
      v98 = swift_allocObject();
      v99 = v172;
      v98[2] = v166;
      v98[3] = v99;
      v98[4] = v40;
      v98[5] = v97;
      v100 = v173;
      v98[6] = v173;
      v101 = (v92 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
      v76 = v100;
      v102 = *v101;
      *v101 = sub_1006BB680;
      v101[1] = v98;

      sub_1000167E0(v102);
    }

    else
    {
      v85 = type metadata accessor for Accessory();
      v86 = v164;
      (*(*(v85 - 8) + 56))(v164, 1, 1, v85);
      v87 = *((swift_isaMask & *v37) + 0x268);
      v88 = v37;
      v87(v86, v171);
      sub_10000CFBC(v86, &qword_10094BB50);
      v89 = (v88 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
      v90 = *(v88 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
      *v89 = 0;
      v89[1] = 0;
      sub_1000167E0(v90);
      v91 = v167;
    }

    v103 = v170;
    v104 = v165;
    (*(*v91 + 632))(v76, v165);
    (*((swift_isaMask & *v37) + 0x1C8))(v103);
    v105 = *(v37 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
    v106 = v105;

    v107 = v159;
    if (v105)
    {
      sub_100761B7C();
      if (v108)
      {
        v109 = sub_10076FF6C();
      }

      else
      {
        v109 = 0;
      }

      [v106 setText:v109];

      v91 = v167;
    }

    if (v107)
    {
      swift_beginAccess();
      if (*(v91[8] + 16))
      {
        sub_10060FF40(v76);
        if (v110)
        {
          v175 = v149;
          v176 = &off_1008A3180;
          v174[0] = v107;
          v107 = v107;

          sub_10059FE50(v174);

          sub_10000CFBC(v174, &unk_1009575D0);
        }
      }
    }

    else
    {
      v111 = v152;
      sub_100761A6C();
      [v37 setOverrideUserInterfaceStyle:sub_1004751F8()];
      (*(v150 + 8))(v111, v151);
    }

    [v104 pageMarginInsets];
    v114 = v113;
    v116 = v115;
    v118 = v117;
    if (v76 >= 1)
    {
      v119 = v76 - 1;
    }

    else
    {
      v119 = 0;
    }

    v120 = v112 + sub_1006AEB1C(v76, v119, v76 < 1, v104);
    [v37 setLayoutMargins:{v120, v114, v116, v118}];
    v121 = (v37 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorInset);
    *v121 = v120;
    v121[1] = v114;
    v121[2] = v116;
    v121[3] = v118;
    [v37 setNeedsLayout];
    [v37 setNeedsLayout];

    return;
  }

  v31 = sub_10077167C();

  if (v31)
  {
    goto LABEL_5;
  }

  if (sub_10076FF9C() == a2 && v57 == a3)
  {

LABEL_43:
    type metadata accessor for InfiniteScrollFooterView();
    v123 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC20ProductPageExtension24InfiniteScrollFooterView_activityIndicator);

    [v123 startAnimating];
    return;
  }

  v152 = v20;
  v122 = sub_10077167C();

  if (v122)
  {
    goto LABEL_43;
  }

  type metadata accessor for MaterialGradientSectionBackgroundView();
  if (sub_1007708EC() == a2 && v124 == a3)
  {
    goto LABEL_48;
  }

  v125 = sub_10077167C();

  if (v125)
  {
    goto LABEL_50;
  }

  type metadata accessor for GradientSectionBackgroundView();
  if (sub_1007708EC() == a2 && v132 == a3)
  {
    goto LABEL_48;
  }

  v133 = sub_10077167C();

  if (v133)
  {
    goto LABEL_50;
  }

  type metadata accessor for ArtworkSectionBackgroundView();
  if (sub_1007708EC() == a2 && v134 == a3)
  {
LABEL_48:

LABEL_50:
    v126 = v169;
    swift_getObjectType();
    v127 = swift_conformsToProtocol2();
    if (v127 && v126)
    {
      v128 = v127;
      ObjectType = swift_getObjectType();
      v130 = v126;
      v131 = v152;
      sub_100761A6C();
      (*(v128 + 8))(v131, v171, ObjectType, v128, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);

      (*(v12 + 8))(v131, v11);
    }

    return;
  }

  v135 = sub_10077167C();

  if (v135)
  {
    goto LABEL_50;
  }

  v136 = type metadata accessor for InteractiveSectionBackgroundView();
  if (sub_1007708EC() == a2 && v137 == a3)
  {
  }

  else
  {
    v138 = sub_10077167C();

    if ((v138 & 1) == 0)
    {
      if (a2 == 0x676B636142706F74 && a3 == 0xED0000646E756F72 || (sub_10077167C() & 1) != 0)
      {
        sub_100761A6C();
        if ((*(v12 + 88))(v17, v11) != enum case for ShelfBackground.color(_:))
        {
          (*(v12 + 8))(v17, v11);
          return;
        }

        (*(v12 + 96))(v17, v11);
        v144 = *v17;
        v145 = *(sub_10000A5D4(&unk_100950670) + 48);
        v146 = sub_1007659CC();
        (*(*(v146 - 8) + 8))(v17 + v145, v146);
      }

      else
      {
        if ((a2 != 0xD000000000000010 || 0x80000001007D7F70 != a3) && (sub_10077167C() & 1) == 0 || sub_100761A9C() < 1)
        {
          return;
        }

        if (__OFSUB__(sub_100761A9C(), 1))
        {
          __break(1u);
          return;
        }

        sub_100761A6C();
        if ((*(v12 + 88))(v14, v11) != enum case for ShelfBackground.color(_:))
        {
          (*(v12 + 8))(v14, v11);
          return;
        }

        (*(v12 + 96))(v14, v11);
        v144 = *v14;
        v147 = *(sub_10000A5D4(&unk_100950670) + 48);
        v148 = sub_1007659CC();
        (*(*(v148 - 8) + 8))(v14 + v147, v148);
      }

      [v169 setBackgroundColor:v144];

      return;
    }
  }

  v139 = v169;
  v140 = swift_dynamicCastClass();
  if (v140)
  {
    v141 = v140;
    swift_beginAccess();
    if (*(v7[8] + 16))
    {
      sub_10060FF40(v173);
      if (v142)
      {
        v175 = v136;
        v176 = &off_10088D588;
        v174[0] = v141;
        v143 = v139;

        sub_10059FE50(v174);

        sub_10000CFBC(v174, &unk_1009575D0);
      }
    }
  }
}

uint64_t sub_1006B1EE0(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_10076B5BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  sub_100761A7C();
  v10 = sub_10041329C();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (v16 < 1)
    {
      v13 = 1;
    }

    else
    {
      sub_100761A7C();
      v13 = 0;
    }

    (*(v7 + 56))(v5, v13, 1, v6);
    v14 = (*(v12 + 96))(v5, v17, v10, v12);
    sub_10000CFBC(v5, &unk_1009568A0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1006B2104(uint64_t a1, void *a2)
{
  v4 = sub_10000A5D4(&qword_100949728);
  __chkstk_darwin(v4);
  v6 = &v55 - v5;
  v7 = sub_1007621EC();
  v65 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v66 = &v55 - v13;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  if (a1 < 1)
  {
    return 0;
  }

  v60 = a2;
  v61 = v16;
  v63 = v15;
  if (sub_100761A9C() < 1)
  {
    return 0;
  }

  sub_100761A6C();
  v19 = v66;
  sub_100761A6C();
  v20 = *(v4 + 48);
  v21 = v65;
  v22 = *(v65 + 16);
  v22(v6, v18, v7);
  v62 = v20;
  v22(&v6[v20], v19, v7);
  v23 = v21[11];
  v24 = v23(v6, v7);
  v64 = v18;
  if (v24 != enum case for ShelfBackground.color(_:))
  {
LABEL_9:
    v40 = enum case for ShelfBackground.none(_:);
    v41 = v21[13];
    v41(v9, enum case for ShelfBackground.none(_:), v7);
    v65 = sub_1006BCDF0(&qword_100949730, &type metadata accessor for ShelfBackground);
    v42 = sub_10076FF1C();
    v43 = v21[1];
    v43(v9, v7);
    if ((v42 & 1) == 0)
    {
      v41(v9, v40, v7);
      v44 = sub_1007621DC();
      v43(v9, v7);
      if (v44)
      {
        v43(v66, v7);
        v43(v64, v7);
LABEL_14:
        v43(&v6[v62], v7);
        v43(v6, v7);
        return 2;
      }
    }

    v41(v9, v40, v7);
    v45 = v64;
    v46 = sub_1007621DC();
    v43(v9, v7);
    if (v46)
    {
      v41(v9, v40, v7);
      v47 = v66;
      v48 = sub_10076FF1C();
      v43(v9, v7);
      v43(v47, v7);
      v43(v45, v7);
      if ((v48 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v43(v66, v7);
      v43(v45, v7);
    }

    sub_10000CFBC(v6, &qword_100949728);
    return 0;
  }

  v25 = v24;
  v26 = v63;
  v22(v63, v6, v7);
  v56 = v21[12];
  v56(v26, v7);
  v57 = *v26;
  v55 = sub_10000A5D4(&unk_100950670);
  v58 = *(v55 + 48);
  v59 = v6;
  if (v23(&v6[v62], v7) != v25)
  {
    v39 = sub_1007659CC();
    (*(*(v39 - 8) + 8))(v26 + v58, v39);

    goto LABEL_8;
  }

  v28 = v61;
  v27 = v62;
  v22(v61, &v59[v62], v7);
  v56(v28, v7);
  v29 = *v28;
  v56 = *(v55 + 48);
  v30 = v60;
  v31 = [v60 traitCollection];
  v32 = v57;
  v33 = [v57 resolvedColorWithTraitCollection:v31];

  v34 = [v30 traitCollection];
  v35 = v27;
  v36 = [v29 resolvedColorWithTraitCollection:v34];

  sub_100016F40(0, &qword_100942F10);
  LOBYTE(v34) = sub_100770EEC();

  if (v34)
  {
    v37 = sub_1007659CC();
    v38 = *(*(v37 - 8) + 8);
    v38(v56 + v28, v37);
    v38(v63 + v58, v37);
LABEL_8:
    v6 = v59;
    v21 = v65;
    goto LABEL_9;
  }

  v50 = *(v65 + 8);
  v50(v66, v7);
  v50(v64, v7);
  v51 = sub_1007659CC();
  v52 = v35;
  v53 = *(*(v51 - 8) + 8);
  v53(v56 + v28, v51);
  v53(v63 + v58, v51);
  v54 = v59;
  v50(&v59[v52], v7);
  v50(v54, v7);
  return 2;
}

double sub_1006B28E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v83 = a4;
  v95 = a3;
  v89 = a2;
  v79 = sub_10076B6EC();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v70 - v8;
  v9 = sub_10000A5D4(&unk_100952090);
  __chkstk_darwin(v9 - 8);
  v84 = &v70 - v10;
  v11 = sub_10076664C();
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = &v70 - v14;
  __chkstk_darwin(v15);
  v96 = &v70 - v16;
  v82 = sub_10075E11C();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&qword_1009572A0);
  __chkstk_darwin(v19 - 8);
  v81 = &v70 - v20;
  v21 = sub_10000A5D4(&unk_1009520A0);
  v85 = *(v21 - 8);
  v86 = v21;
  __chkstk_darwin(v21);
  v92 = &v70 - v22;
  v23 = sub_10076B5BC();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E0AC();
  sub_100761A7C();
  v27 = sub_10041329C();
  if (v27)
  {
    v72 = v28;
    v73 = v27;
    v91 = v26;
    v74 = v24;
    v75 = v23;
    sub_10075E0AC();
    if (sub_100761A5C())
    {
      v29 = sub_10075E0AC();
      v30 = sub_1006BA354(v29);
    }

    else
    {
      v30 = 0;
    }

    sub_10075E0AC();
    if (sub_100761A5C())
    {
      sub_10075E0AC();
      v90 = sub_100761B4C();
    }

    else
    {
      v90 = 0;
    }

    v71 = v30;
    v32 = v95;
    sub_1006AAC1C(v91, 0, v30, v95, v83);
    v34 = v33;
    v36 = v35;
    sub_100761B3C();
    (*(v80 + 16))(v18, a1, v82);
    sub_10076FDDC();
    v97 = *(v4 + 24);

    sub_10000A5D4(&unk_1009520B0);
    sub_1001C9F18();
    sub_10076FD7C();
    sub_10076663C();
    v37 = sub_1006B6C10(a1, v32);
    v39 = v87;
    v38 = v88;
    if (v37)
    {
      v40 = v94;
      sub_1007665FC();
      v41 = v93;
      sub_10038C52C(v93, v40);
      v42 = *(v39 + 8);
      v42(v40, v38);
      v42(v41, v38);
    }

    v43 = v84;
    sub_100761B0C();
    v44 = sub_10076182C();
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
    sub_10000CFBC(v43, &unk_100952090);
    if (v45 != 1)
    {
      v46 = v94;
      sub_1007665DC();
      v47 = v93;
      sub_10038C52C(v93, v46);
      v48 = *(v39 + 8);
      v48(v46, v38);
      v48(v47, v38);
    }

    v49 = [v95 traitCollection];
    v50 = sub_1007706EC();

    v51 = v75;
    v52 = v74;
    if (v50)
    {
      v53 = v94;
      sub_10076662C();
      v54 = v93;
      sub_10038C52C(v93, v53);
      v55 = *(v39 + 8);
      v55(v53, v38);
      v55(v54, v38);
    }

    if (!sub_10075E0AC())
    {
      v56 = v94;
      sub_1007665EC();
      v57 = v93;
      sub_10038C52C(v93, v56);
      v58 = *(v39 + 8);
      v58(v56, v38);
      v58(v57, v38);
    }

    if (v90)
    {

      v59 = v76;
      sub_10076B70C();

      v60 = v77;
      sub_10076B6AC();
      sub_1006BCDF0(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
      v61 = v79;
      v62 = sub_10077124C();
      v63 = *(v78 + 8);
      v63(v60, v61);
      v63(v59, v61);
      if (v62)
      {
        v64 = v94;
        sub_10076661C();
        v65 = v93;
        sub_10038C52C(v93, v64);
        v66 = *(v39 + 8);
        v66(v64, v38);
        v66(v65, v38);
      }
    }

    v67 = v92;
    v68 = v96;
    v31 = (*(v72 + 72))(v98, v71, v92, v89, v96, v95, v34, v36);

    (*(v39 + 8))(v68, v38);
    (*(v85 + 8))(v67, v86);
    sub_10000CD74(v98);
    (*(v52 + 8))(v91, v51);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    return 0.0;
  }

  return v31;
}

id sub_1006B32B4(uint64_t a1, void *a2)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10075E0AC();
  sub_100761A7C();
  v8 = sub_10076B59C();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 72);
  if (*(v11 + 16) && (, v12 = sub_100561E0C(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v12);

    v16 = sub_10076B59C();
    v18 = v17;
    swift_beginAccess();
    isa = sub_1001E17A0(v16, v18);
    swift_endAccess();
  }

  else
  {

    sub_10076B59C();
    v20 = sub_10076FF6C();

    isa = sub_10075E02C().super.isa;
    v15 = [a2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

void sub_1006B34FC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v241 = a6;
  v272 = *&a5;
  v271 = a4;
  v262 = a3;
  v276 = a2;
  v273 = *v6;
  v260 = sub_10076F7CC();
  v259 = *(v260 - 8);
  __chkstk_darwin(v260);
  v228 = &v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_10076F7FC();
  v263 = *(v267 - 1);
  __chkstk_darwin(v267);
  v233 = &v221 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v254 = &v221 - v11;
  __chkstk_darwin(v12);
  v251 = &v221 - v13;
  __chkstk_darwin(v14);
  v230 = &v221 - v15;
  __chkstk_darwin(v16);
  v231 = &v221 - v17;
  v236 = sub_10075DFDC();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v234 = &v221 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_1007621EC();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v248 = &v221 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_10076B6EC();
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v245 = &v221 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&unk_100952090);
  __chkstk_darwin(v21 - 8);
  v23 = &v221 - v22;
  v265 = sub_10076664C();
  v264 = *(v265 - 8);
  __chkstk_darwin(v265);
  v25 = &v221 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v244 = &v221 - v27;
  __chkstk_darwin(v28);
  v266 = &v221 - v29;
  v30 = sub_10075E11C();
  v256 = *(v30 - 8);
  __chkstk_darwin(v30);
  v240 = v31;
  v255 = &v221 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000A5D4(&qword_1009572A0);
  __chkstk_darwin(v32 - 8);
  v253 = sub_10000A5D4(&unk_1009520C0);
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v261 = &v221 - v33;
  v270 = sub_10076B5BC();
  v269 = *(v270 - 8);
  __chkstk_darwin(v270);
  v35 = &v221 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v257 = &v221 - v37;
  __chkstk_darwin(v38);
  v40 = &v221 - v39;
  v41 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v41 - 8);
  v237 = &v221 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v243 = &v221 - v44;
  __chkstk_darwin(v45);
  v242 = &v221 - v46;
  __chkstk_darwin(v47);
  v229 = &v221 - v48;
  __chkstk_darwin(v49);
  v232 = &v221 - v50;
  __chkstk_darwin(v51);
  v53 = &v221 - v52;
  v54 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v54 - 8);
  v238 = &v221 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v239 = &v221 - v57;
  *&v59 = __chkstk_darwin(v58).n128_u64[0];
  v61 = &v221 - v60;
  [a1 setBackgroundColor:{0, v59}];
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  v274 = v6;
  v275 = *(v6 + 16);
  if (!v62 || !a1)
  {
    v226 = v30;
    v258 = a1;
    v70 = v273[10];
    v71 = v276;
    v268 = v273[12];
    if ((sub_100761AEC() & 1) == 0)
    {
      return;
    }

    swift_getObjectType();
    v225 = swift_conformsToProtocol2();
    if (!v225)
    {
      __break(1u);
      return;
    }

    sub_100761B3C();
    v72 = *(v256 + 16);
    v223 = v256 + 16;
    v222 = v72;
    v72(v255, v71, v226);
    sub_10076FDDC();
    v282 = *(v274 + 24);

    sub_10000A5D4(&unk_1009520B0);
    sub_1001C9F18();
    v73 = v276;
    sub_10076F82C();
    sub_10076663C();
    v74 = sub_1006B66DC(v73, v271);
    v75 = v244;
    if (v74)
    {
      sub_1007665FC();
      sub_10038C52C(v75, v25);
      v76 = *(v264 + 8);
      v77 = v265;
      v76(v25, v265);
      v76(v75, v77);
    }

    sub_100761B0C();
    v78 = sub_10076182C();
    v79 = (*(*(v78 - 8) + 48))(v23, 1, v78);
    sub_10000CFBC(v23, &unk_100952090);
    if (v79 != 1)
    {
      sub_1007665DC();
      sub_10038C52C(v75, v25);
      v80 = *(v264 + 8);
      v81 = v265;
      v80(v25, v265);
      v80(v75, v81);
    }

    if (!sub_10075E0AC())
    {
      sub_1007665EC();
      sub_10038C52C(v75, v25);
      v82 = *(v264 + 8);
      v83 = v265;
      v82(v25, v265);
      v82(v75, v83);
    }

    sub_10075E0AC();
    v84 = v257;
    sub_100761A7C();
    sub_10075E0AC();
    v227 = v70;
    v85 = sub_100761A3C();
    v86 = v269;
    v87 = v84;
    v88 = v270;
    (*(v269 + 16))(v35, v87, v270);
    v89 = (*(v86 + 88))(v35, v88);
    v90 = v272;
    if (v89 == enum case for Shelf.ContentType.smallLockup(_:) || v89 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v89 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v89 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v89 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v89 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v89 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v89 == enum case for Shelf.ContentType.editorialCard(_:) || v89 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v89 == enum case for Shelf.ContentType.brick(_:) || v89 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v89 == enum case for Shelf.ContentType.reviews(_:) || v89 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v89 == enum case for Shelf.ContentType.framedVideo(_:) || v89 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v89 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v89 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v89 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v89 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v89 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v89 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v89 == enum case for Shelf.ContentType.posterLockup(_:) || v89 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v89 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v89 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v269 + 8))(v35, v270);
              goto LABEL_43;
            }

LABEL_38:
            if (v85)
            {
              goto LABEL_39;
            }

LABEL_43:
            v106 = [v271 traitCollection];
            v107 = sub_1007706EC();

            if ((v107 & 1) == 0)
            {
              v224 = 0;
              v110 = v266;
LABEL_46:
              v114 = v258;
              ObjectType = swift_getObjectType();
              sub_10075E0AC();
              sub_100761B4C();
              v116 = v245;
              sub_10076B70C();

              (*(v225 + 80))(&v284, v261, COERCE_DOUBLE(*&v90), v110, v116, v271, ObjectType);
              (*(v246 + 8))(v116, v247);
              sub_10075E0AC();
              v117 = v248;
              sub_100761A6C();
              v118 = sub_1004751F8();
              (*(v249 + 8))(v117, v250);
              if ([v114 overrideUserInterfaceStyle] != v118)
              {
                [v114 setOverrideUserInterfaceStyle:v118];
              }

              sub_10000A570(&v284, &v282);
              *(&v280 + 1) = sub_100016F40(0, &qword_10094D1D0);
              *&v279 = v114;
              v119 = v114;
              sub_10075FA0C();
              sub_10000CFBC(&v282, &unk_10094F720);
              sub_10000CD74(&v279);
              swift_getObjectType();
              v120 = swift_conformsToProtocol2();
              if (v120 && v114)
              {
                v121 = v120;
                v122 = swift_getObjectType();
                v123 = *(v121 + 8);
                v124 = v119;
                v125 = v123(v122, v121);
                v114 = v258;
                v126 = v125;
                v127 = (v125 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
                v128 = *(v125 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
                *v127 = 0;
                v127[1] = 0;
                sub_1000167E0(v128);
                [*&v126[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
              }

              swift_getObjectType();
              v129 = swift_conformsToProtocol2();
              v130 = v251;
              if (v129 && v114)
              {
                v131 = swift_allocObject();
                swift_weakInit();
                v132 = v255;
                v133 = v226;
                v222(v255, v276, v226);
                v134 = v256;
                v135 = (*(v256 + 80) + 40) & ~*(v256 + 80);
                v136 = (v240 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
                v137 = swift_allocObject();
                *(v137 + 2) = v227;
                v138 = v268;
                *(v137 + 3) = v273[11];
                *(v137 + 4) = v138;
                (*(v134 + 32))(&v137[v135], v132, v133);
                v114 = v258;
                *&v137[v136] = v131;
                v139 = &v119[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
                v140 = *&v119[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
                *v139 = sub_1006BB558;
                v139[1] = v137;
                v141 = v119;

                sub_1000167E0(v140);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                sub_100767D5C();
                sub_10076F64C();
                v142 = v119;
                sub_10076FC1C();
                v143 = v282;
                swift_getObjectType();
                v144 = sub_100765B4C();
                v145 = v142;
                sub_100767D3C();

                v114 = v258;
              }

              *&v277[0] = v119;
              *(&v277[0] + 1) = v225;
              v146 = v119;
              sub_10000A5D4(&qword_1009520D0);
              sub_10000A5D4(&qword_1009520D8);
              if (swift_dynamicCast())
              {
                sub_100012498(&v279, &v282);
                sub_100767D5C();
                sub_10076F64C();
                sub_10076FC1C();
                v147 = v279;
                sub_10000CF78(&v282, v283);
                sub_10076817C();

                sub_10000CD74(&v282);
              }

              else
              {
                v281 = 0;
                v280 = 0u;
                v279 = 0u;
                sub_10000CFBC(&v279, &unk_1009520E0);
              }

              v148 = v224;
              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                sub_100764FAC();
                v149 = v146;
                sub_10076F63C();
                v150 = v282;
                if (v282)
                {
                  v151 = v149;
                  v152 = v150;
                  sub_100764F9C();

                  v149 = v152;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                sub_10000A570(&v284, &v279);
                v153 = v146;
                sub_10000A5D4(&qword_1009575A0);
                sub_10000A5D4(&unk_1009520F0);
                if (swift_dynamicCast())
                {
                  sub_100012498(v277, &v282);
                  sub_10000CF78(&v282, v283);
                  if (sub_10076967C())
                  {
                    sub_10076518C();
                  }

                  v114 = v258;
                  swift_getObjectType();
                  sub_10076457C();

                  sub_10000CD74(&v282);
                }

                else
                {

                  v278 = 0;
                  memset(v277, 0, sizeof(v277));
                  sub_10000CFBC(v277, &qword_10094D3E8);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                swift_getObjectType();
                v154 = v146;
                sub_100768BEC();
              }

              sub_10075E0AC();
              sub_100761B4C();
              if (v148)
              {
                v155 = [v241 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v156 = swift_dynamicCastClass();
                if (v156)
                {
                  v157 = v156;
                  v158 = [v156 _orthogonalScrollingSections];
                  v159 = v234;
                  sub_10075DFAC();

                  v114 = v258;
                  v160 = sub_10075E0AC();
                  v161 = sub_10075DFCC(v160);
                  (*(v235 + 8))(v159, v236);
                  if (v161)
                  {
                    [v146 frame];
                    v163 = v162;
                    v165 = v164;
                    v167 = v166;
                    v169 = v168;
                    v170 = v232;
                    sub_10076B6FC();
                    v171 = v263;
                    v172 = *(v263 + 48);
                    v173 = v267;
                    if (v172(v170, 1, v267) == 1)
                    {

                      (*(v269 + 8))(v257, v270);
                      (*(v264 + 8))(v266, v265);
                      (*(v252 + 8))(v261, v253);
                      sub_10000CD74(&v284);
                      sub_10000CFBC(v170, &qword_1009492E0);
                      return;
                    }

                    v193 = v231;
                    v275 = *(v171 + 32);
                    v275(v231, v170, v173);
                    sub_10000A570(&v284, &v282);
                    sub_10000CF78(&v282, v283);
                    v194 = v229;
                    sub_10076FE2C();
                    if (v172(v194, 1, v173) == 1)
                    {

                      (*(v263 + 8))(v193, v173);
                      (*(v269 + 8))(v257, v270);
                      (*(v264 + 8))(v266, v265);
                      (*(v252 + 8))(v261, v253);
                      sub_10000CD74(&v284);
                      v182 = v194;
                      goto LABEL_92;
                    }

                    v271 = v165;
                    v272 = v163;
                    v275(v230, v194, v173);
                    [v157 _layoutFrameForSection:sub_10075E0AC()];
                    v196 = v195;
                    v198 = v197;
                    v200 = v199;
                    v202 = v201;
                    [v157 _offsetForOrthogonalScrollingSection:sub_10075E0AC()];
                    v204 = v274;
                    v205 = *(v274 + 112);
                    v206 = v266;
                    if (v205)
                    {
                      v207 = v203;

                      v208 = v231;
                      v209 = v196;
                      sub_1007660EC();

                      v210 = v263;
                      v211 = v198;
                      if (*(v204 + 112))
                      {

                        v212 = v228;
                        sub_10076F7DC();
                        v279 = v207;
                        *&v280 = v200;
                        *(&v280 + 1) = v202;
                        LOBYTE(v281) = 0;
                        v205 = sub_1007660CC();

                        (*(v259 + 8))(v212, v260);
                      }

                      else
                      {
                        v205 = 0;
                      }

                      v213 = v253;
                      v214 = v252;
                      v215 = v272;
                    }

                    else
                    {
                      v209 = v196;
                      v210 = v263;
                      v213 = v253;
                      v214 = v252;
                      v208 = v231;
                      v215 = v272;
                      v211 = v198;
                    }

                    v216 = *&v271;
                    v285.origin.x = v209;
                    v285.origin.y = v211;
                    v285.size.width = v200;
                    v285.size.height = v202;
                    v217 = -CGRectGetMinY(v285);
                    v286.origin.x = v215;
                    v286.origin.y = v216;
                    v286.size.width = v167;
                    v286.size.height = v169;
                    CGRectOffset(v286, 0.0, v217);
                    v218 = v230;
                    if (v205)
                    {

                      sub_1007660EC();
                    }

                    sub_1006BAE2C(&v282, v205);

                    v219 = *(v210 + 8);
                    v220 = v267;
                    v219(v218, v267);
                    v219(v208, v220);
                    (*(v269 + 8))(v257, v270);
                    (*(v264 + 8))(v206, v265);
                    (*(v214 + 8))(v261, v213);
                    goto LABEL_102;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                v174 = v146;
                [v174 frame];
                sub_1006AE488();
                swift_getObjectType();
                sub_10076A01C();
              }

              v175 = v242;
              sub_10076B6FC();
              v176 = v263;
              v177 = *(v263 + 48);
              v178 = v267;
              if (v177(v175, 1, v267) == 1)
              {
                v179 = v175;
                v180 = v266;
                sub_10000CFBC(v179, &qword_1009492E0);
              }

              else
              {
                (*(v176 + 32))(v130, v175, v178);
                if (*(v274 + 112))
                {

                  [v146 frame];
                  sub_10076613C();
                }

                v180 = v266;
                (*(v176 + 8))(v130, v178);
              }

              sub_10000A570(&v284, &v282);
              sub_10000CF78(&v282, v283);
              v181 = v243;
              sub_10076FE2C();
              if (v177(v181, 1, v178) == 1)
              {

                (*(v269 + 8))(v257, v270);
                (*(v264 + 8))(v180, v265);
                (*(v252 + 8))(v261, v253);
                sub_10000CD74(&v284);
                v182 = v181;
LABEL_92:
                sub_10000CFBC(v182, &qword_1009492E0);
LABEL_103:
                sub_10000CD74(&v282);
                return;
              }

              v183 = v178;
              (*(v176 + 32))(v254, v181, v178);
              v184 = v237;
              sub_10076B6FC();
              if (v177(v184, 1, v178) == 1)
              {
                sub_10000CFBC(v184, &qword_1009492E0);
                v185 = 1;
                v186 = v260;
                v187 = v259;
                v188 = v239;
              }

              else
              {
                v188 = v239;
                sub_10076F7DC();
                (*(v176 + 8))(v184, v183);
                v185 = 0;
                v186 = v260;
                v187 = v259;
              }

              v189 = v238;
              (*(v187 + 56))(v188, v185, 1, v186);
              if (*(v274 + 112))
              {
                sub_100016E2C(v188, v189, &qword_1009632C0);
                v190 = (*(v187 + 48))(v189, 1, v186);

                if (v190 == 1)
                {
                  sub_10000CFBC(v189, &qword_1009632C0);
                }

                else
                {
                  sub_10076F7BC();
                  (*(v187 + 8))(v189, v186);
                }

                v191 = v233;
                sub_10076F78C();

                [v146 frame];
                sub_1007660EC();

                (*(v176 + 8))(v191, v267);
              }

              [v146 frame];
              v192 = *(v274 + 112);

              sub_1006BAE2C(&v282, v192);

              sub_10000CFBC(v188, &qword_1009632C0);
              (*(v176 + 8))(v254, v267);
              (*(v269 + 8))(v257, v270);
              (*(v264 + 8))(v180, v265);
              (*(v252 + 8))(v261, v253);
LABEL_102:
              sub_10000CD74(&v284);
              goto LABEL_103;
            }

            sub_10076662C();
            v224 = 0;
LABEL_45:
            v108 = v75;
            v109 = v75;
            v110 = v266;
            sub_10038C52C(v108, v25);
            v111 = *(v264 + 8);
            v112 = v25;
            v113 = v265;
            v111(v112, v265);
            v111(v109, v113);
            goto LABEL_46;
          }
        }
      }
    }

LABEL_39:
    sub_10076660C();
    v224 = 1;
    goto LABEL_45;
  }

  v268 = v62;
  v63 = a1;
  sub_10075E0AC();
  v264 = v273[12];
  v64 = sub_100761B4C();
  v266 = v63;
  [v63 frame];
  v265 = sub_1006AE488();
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v65 = v284;
  sub_100764FAC();
  sub_10076F63C();
  v66 = v284;
  sub_10076B6FC();
  v67 = v263;
  v68 = v267;
  if ((*(v263 + 48))(v53, 1, v267) == 1)
  {
    sub_10000CFBC(v53, &qword_1009492E0);
    v69 = 1;
  }

  else
  {
    sub_10076F7DC();
    (*(v67 + 8))(v53, v68);
    v69 = 0;
  }

  (*(v259 + 56))(v61, v69, 1, v260);
  v91 = v65;
  v267 = v91;
  v92 = v274;
  v93 = sub_1006AE750(v61, v65, v66, 0);

  sub_10000CFBC(v61, &qword_1009632C0);
  type metadata accessor for ShelfComponentContainerDelegate();
  v273 = v66;
  v94 = v275;
  swift_unknownObjectRetain();
  v95 = sub_10075E0AC();
  sub_10076B5CC();
  v96 = sub_10076B58C();
  (*(v269 + 8))(v40, v270);
  v97 = *(v92 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  v263 = v93;
  v99 = sub_10016FCAC(v94, v95, v96 & 1, v97, v93, &protocol witness table for CompoundScrollObserver, v265);

  swift_unknownObjectRetain();

  v100 = v266;
  v101 = swift_getObjectType();
  v102 = sub_10075E0AC();
  WitnessTable = swift_getWitnessTable();
  v104 = v268;
  v105 = *(v268 + 32);

  v105(v64, v102, v262, *&v272, v99, WitnessTable, v271, v101, v104);

  swift_unknownObjectRelease();
}

void sub_1006B5CAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v35 = a3;
  v8 = *v4;
  v9 = sub_10075E11C();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  __chkstk_darwin(v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_1009572A0);
  __chkstk_darwin(v13 - 8);
  v14 = sub_10000A5D4(&unk_1009520C0);
  v36 = *(v14 - 8);
  v37 = v14;
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  isa = sub_10075E02C().super.isa;
  v18 = [a4 cellForItemAtIndexPath:isa];

  if (v18)
  {
    v34 = a4;
    swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = v19;
      v21 = v5[2];
      v22 = *(v8 + 96);
      v32[1] = *(v8 + 80);
      v32[2] = v21;
      v32[0] = v22;
      sub_100761B3C();
      v33 = *(v39 + 2);
      v33(v12, a1, v38);
      sub_10076FDDC();
      v40 = v5[3];

      sub_10000A5D4(&unk_1009520B0);
      sub_1001C9F18();
      sub_10076F82C();
      ObjectType = swift_getObjectType();
      v24 = (*(v20 + 88))(v41, v16, v35, ObjectType, v20);
      v25 = v24;
      if (v24)
      {
        sub_100761ACC();
        v26 = v34;
        if ((v25 & 2) == 0)
        {
LABEL_5:
          if ((v25 & 4) == 0)
          {
LABEL_7:

            (*(v36 + 8))(v16, v37);
            sub_10000CD74(v41);
            return;
          }

LABEL_6:
          sub_10000A5D4(&qword_100944C48);
          v27 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_100783DD0;
          v33((v28 + v27), a1, v38);
          v29 = sub_1007701AC().super.isa;

          [v26 reloadItemsAtIndexPaths:v29];

          v18 = v29;
          goto LABEL_7;
        }
      }

      else
      {
        v26 = v34;
        if ((v24 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v31 = sub_10075E02C().super.isa;
      [v26 deselectItemAtIndexPath:v31 animated:1];

      if ((v25 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    a4 = v34;
  }

  sub_100761ACC();
  v39 = sub_10075E02C().super.isa;
  [a4 deselectItemAtIndexPath:v39 animated:1];
  v30 = v39;
}

uint64_t sub_1006B611C(uint64_t a1)
{
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 != enum case for Shelf.ContentType.artwork(_:) && v7 != enum case for Shelf.ContentType.ribbonBar(_:) && v7 != enum case for Shelf.ContentType.ribbonFlow(_:) && v7 != enum case for Shelf.ContentType.paragraph(_:) && v7 != enum case for Shelf.ContentType.footnote(_:) && v7 != enum case for Shelf.ContentType.titledParagraph(_:) && v7 != enum case for Shelf.ContentType.reviewsContainer(_:) && v7 != enum case for Shelf.ContentType.reviewSummary(_:) && v7 != enum case for Shelf.ContentType.editorialLink(_:) && v7 != enum case for Shelf.ContentType.quote(_:) && v7 != enum case for Shelf.ContentType.framedArtwork(_:) && v7 != enum case for Shelf.ContentType.screenshots(_:) && v7 != enum case for Shelf.ContentType.appShowcase(_:) && v7 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v7 != enum case for Shelf.ContentType.linkableText(_:) && v7 != enum case for Shelf.ContentType.framedVideo(_:) && v7 != enum case for Shelf.ContentType.productDescription(_:) && v7 != enum case for Shelf.ContentType.banner(_:) && v7 != enum case for Shelf.ContentType.roundedButton(_:) && v7 != enum case for Shelf.ContentType.titledButtonStack(_:) && v7 != enum case for Shelf.ContentType.smallStoryCard(_:) && v7 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v7 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v7 != enum case for Shelf.ContentType.upsellBreakout(_:) && v7 != enum case for Shelf.ContentType.smallBreakout(_:) && v7 != enum case for Shelf.ContentType.arcadeFooter(_:) && v7 != enum case for Shelf.ContentType.editorialQuote(_:) && v7 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v7 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v7 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v7 != enum case for Shelf.ContentType.privacyHeader(_:) && v7 != enum case for Shelf.ContentType.privacyFooter(_:) && v7 != enum case for Shelf.ContentType.privacyCategory(_:) && v7 != enum case for Shelf.ContentType.privacyDefinition(_:) && v7 != enum case for Shelf.ContentType.heroCarousel(_:) && v7 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    (*(v3 + 8))(v6, v2);
    if (sub_1007706FC())
    {
      v8 = sub_10077071C() ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t sub_1006B6510(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  result = 0;
  if (v12 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v12 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v11, v7);
    swift_getObjectType();
    v15 = [a3 traitCollection];
    v16 = (*(*v3 + 696))(a1, v15);

    if (v16)
    {
      return sub_100413DB0(a2, a3, a1);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1006B66DC(uint64_t a1, void *a2)
{
  v38 = a2;
  v4 = *v2;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v36 - v9;
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  v14 = v2[2];
  sub_10075E0AC();
  v15 = *(v4 + 80);
  sub_100761A7C();
  sub_10075E0AC();
  v39 = v15;
  v40 = v14;
  v16 = sub_100761A3C();
  (*(v6 + 16))(v10, v13, v5);
  v17 = (*(v6 + 88))(v10, v5);
  if (v17 == enum case for Shelf.ContentType.smallLockup(_:) || v17 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v33 = v17 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v17 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v33 || v17 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_8;
  }

  if (v17 == enum case for Shelf.ContentType.editorialCard(_:) || v17 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  v19 = 1;
  if (v17 == enum case for Shelf.ContentType.brick(_:) || v17 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.reviews(_:) || v17 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v17 == enum case for Shelf.ContentType.framedVideo(_:) || v17 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v17 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v17 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v17 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v17 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v17 == enum case for Shelf.ContentType.posterLockup(_:) || v17 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_6:
    v19 = v16;
    goto LABEL_9;
  }

  if (v17 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v19 = v16;
    if (v17 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v6 + 8))(v10, v5);
      v19 = 0;
    }
  }

LABEL_9:
  v22 = *(v6 + 8);
  v20 = v6 + 8;
  v21 = v22;
  v22(v13, v5);
  v23 = sub_10075E0AC();
  if (v19)
  {
    v24 = sub_100761ADC();
    result = sub_10075E09C();
    if (!__OFADD__(result, 1))
    {
      if (v24)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v24 != -1)
        {
          return (result + 1) % v24 == 0;
        }

        goto LABEL_58;
      }

      goto LABEL_54;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v26 = sub_1006BA354(v23);
  v36[1] = v20;
  v27 = v26;
  sub_10075E0AC();
  v28 = v37;
  sub_100761A7C();
  v36[0] = a1;
  sub_10075E0AC();
  v29 = sub_100761A8C();
  v30 = sub_1006B6510(v28, v29, v38);
  result = v21(v28, v5);
  if (__OFSUB__(v27, 1))
  {
    goto LABEL_53;
  }

  if (!v30)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v27 == 0x8000000000000001 && v30 == -1)
  {
    goto LABEL_59;
  }

  v31 = (v27 - 1) % v30;
  v32 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    goto LABEL_56;
  }

  result = sub_10075E09C();
  if (__OFSUB__(v27, v32))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  return result >= v27 - v32;
}

uint64_t sub_1006B6C10(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E0AC();
  v6 = sub_100761A8C();
  sub_10075E0AC();
  sub_100761A7C();
  sub_10075E0AC();
  v7 = sub_100761A8C();
  v8 = sub_1006B6510(v5, v7, v14);
  result = (*(v3 + 8))(v5, v2);
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 == 0x8000000000000001 && v8 == -1)
  {
    goto LABEL_14;
  }

  v11 = (v6 - 1) % v8;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = sub_10075E09C();
    if (!__OFSUB__(v6, v12))
    {
      return result >= v6 - v12;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1006B6DE0(void *a1@<X0>, NSIndexSet *a2@<X8>)
{
  sub_10075DF9C(a2);
  v4 = v3;
  [a1 insertSections:v3];
}

id sub_1006B6E3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a4;
  v29 = a3;
  v34 = a2;
  v32 = sub_10076B6EC();
  v8 = *(v32 - 8);
  *&v9 = __chkstk_darwin(v32).n128_u64[0];
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 bounds];
  v13 = v12;
  v15 = v14;
  v33 = a1;
  sub_100761B4C();
  v16 = sub_10076B75C();

  v17 = sub_100761ADC();
  sub_100761B4C();
  sub_10076B70C();

  v19 = v30;
  v18 = v31;
  v20 = (*(v28 + 64))(v16, v17, v11, v31, v30, v13, v15);

  (*(v8 + 8))(v11, v32);
  v21 = [objc_opt_self() sectionWithGroup:v20];
  v22 = [objc_opt_self() standardUserDefaults];
  v23 = sub_10077053C();

  [v21 setOrthogonalScrollingBehavior:v23];
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  [v21 setInterGroupSpacing:?];
  sub_1006ADB6C(v33, v34, v19, v18);
  aBlock[4] = sub_1006BB6E4;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100751F08;
  aBlock[3] = &unk_10089FB70;
  v25 = _Block_copy(aBlock);

  [v21 setVisibleItemsInvalidationHandler:v25];
  _Block_release(v25);

  return v21;
}

id sub_1006B7158(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  type metadata accessor for ShelfComponentContainerDelegate();
  v13 = v8[2];
  swift_unknownObjectRetain();
  v14 = sub_10076B58C();
  v16 = v9[3];
  v15 = v9[4];
  v17 = v9[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = sub_10016FCAC(v13, a1, v14 & 1, v16, v15, v17, 0);

  swift_unknownObjectRetain();

  v20 = sub_100761B4C();
  WitnessTable = swift_getWitnessTable();
  v22 = *(a6 + 24);

  v23 = v22(a1, v20, a8, v19, WitnessTable, a7, a2, a3);
  v25 = v24;

  v26 = objc_opt_self();
  v27 = [v26 absoluteDimension:v23];
  v28 = [v26 absoluteDimension:v25];
  v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

  v30 = [objc_opt_self() itemWithLayoutSize:v29];
  v31 = objc_opt_self();
  sub_10000A5D4(&unk_100942870);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007841E0;
  *(v32 + 32) = v30;
  sub_100016F40(0, &qword_100952C70);
  v33 = v30;
  isa = sub_1007701AC().super.isa;

  v35 = [v31 verticalGroupWithLayoutSize:v29 subitems:isa];

  v36 = [objc_opt_self() sectionWithGroup:v35];
  [v36 setOrthogonalScrollingBehavior:0];

  return v36;
}

void sub_1006B74B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v105 = a7;
  v104 = a6;
  v125 = a5;
  v117 = sub_10076B5BC();
  v13 = *(v117 - 8);
  __chkstk_darwin(v117);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&qword_1009638C8);
  __chkstk_darwin(v16 - 8);
  v119 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v98 - v19;
  v124 = sub_10000A5D4(&qword_100959280);
  v112 = *(v124 - 8);
  __chkstk_darwin(v124);
  v110 = &v98 - v21;
  v126 = sub_10075E11C();
  v22 = *(v126 - 8);
  __chkstk_darwin(v126);
  v127 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v109 = &v98 - v25;
  v111 = a1;
  v26 = sub_1006BA354(a1);
  if (v26 < 1)
  {
    return;
  }

  v120 = v13;
  v27 = v26;
  v28 = v125;
  [v125 pageMarginInsets];
  (*(a4 + 32))(0, v28, a3, a4, v29);
  v30 = sub_1006B6510(a2, v27, v28);
  v106 = v27;
  v31 = ceil(v27 / v30);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v99 = v31;
  if (v31 >= 1)
  {
    v32 = v30;
    v129 = _swiftEmptyArrayStorage;
    if ((v30 & 0x8000000000000000) == 0)
    {
      v100 = 0;
      v103 = (v22 + 16);
      v123 = (v22 + 8);
      v121 = (v112 + 48);
      v122 = (v112 + 56);
      v115 = (v120 + 16);
      v116 = (v22 + 32);
      v114 = (v120 + 88);
      v113 = enum case for Shelf.ContentType.privacyType(_:);
      v107 = (v120 + 8);
      v102 = xmmword_100784500;
      v33 = 0.0;
      v118 = v15;
      v34 = v119;
      v35 = v124;
      v108 = v30;
      v101 = a2;
      while (1)
      {
        if (v32)
        {
          v46 = v100 * v32;
          if ((v100 * v32) >> 64 != (v100 * v32) >> 63)
          {
            goto LABEL_60;
          }

          v47 = 0;
          v48 = 0.0;
          v49 = _swiftEmptyArrayStorage;
          v50 = v106;
          while (1)
          {
            v51 = v46 + v47;
            if (__OFADD__(v46, v47))
            {
              break;
            }

            if (v51 < v50)
            {
              sub_10000A5D4(&qword_100952110);
              v52 = swift_allocObject();
              *(v52 + 16) = v102;
              *(v52 + 32) = v111;
              *(v52 + 40) = v51;
              v53 = v109;
              sub_10075E01C();
              v54 = sub_1006B28E4(v53, v105, v125, v104);
              v56 = v55;
              v57 = (v110 + *(v35 + 48));
              (*v103)();
              *v57 = v54;
              v57[1] = v56;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v49 = sub_10049E4C8(0, v49[2] + 1, 1, v49);
              }

              v59 = v49[2];
              v58 = v49[3];
              v32 = v108;
              if (v59 >= v58 >> 1)
              {
                v49 = sub_10049E4C8(v58 > 1, v59 + 1, 1, v49);
              }

              (*v123)(v109, v126);
              v49[2] = v59 + 1;
              sub_100023AD0(v110, v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v59, &qword_100959280);
              if (v48 <= v56)
              {
                v48 = v56;
              }

              v35 = v124;
              v50 = v106;
            }

            if (v32 == ++v47)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v48 = 0.0;
        v49 = _swiftEmptyArrayStorage;
LABEL_26:
        v60 = 0;
        ++v100;
        v61 = _swiftEmptyArrayStorage;
        v128 = _swiftEmptyArrayStorage;
        v62 = v49[2];
        v63 = v48;
        v64 = v101;
        v120 = v62;
        if (v62)
        {
LABEL_27:
          if (v60 < v49[2])
          {
            sub_100016E2C(v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v60, v34, &qword_100959280);
            v65 = 0;
            ++v60;
            goto LABEL_30;
          }

          goto LABEL_59;
        }

        while (1)
        {
          v65 = 1;
          v60 = v62;
LABEL_30:
          (*v122)(v34, v65, 1, v35);
          sub_100023AD0(v34, v20, &qword_1009638C8);
          if ((*v121)(v20, 1, v35) == 1)
          {
            break;
          }

          v66 = &v20[*(v35 + 48)];
          v67 = *v66;
          v68 = v66[1];
          (*v116)(v127, v20, v126);
          v69 = v117;
          (*v115)(v15, v64, v117);
          v70 = (*v114)(v15, v69);
          if (v70 == v113)
          {
            v71 = [v125 traitCollection];
            v72 = sub_1007706FC();

            if (v72)
            {
              v63 = v48;
              v68 = v48;
            }
          }

          else
          {
            (*v107)(v15, v69);
          }

          v73 = objc_opt_self();
          v74 = [v73 absoluteDimension:v67];
          v75 = [v73 absoluteDimension:v68];
          v76 = [objc_opt_self() sizeWithWidthDimension:v74 heightDimension:v75];

          v77 = v76;
          sub_1006B891C(v67, v68);
          sub_100016F40(0, &unk_10095DD70);
          isa = sub_1007701AC().super.isa;

          v79 = [objc_opt_self() itemWithLayoutSize:v77 supplementaryItems:isa];

          if (v32 == 1)
          {
            sub_1006AF090(v111, v125);
            if (v81 == 0.0 && v80 == 0.0)
            {
              v82 = objc_opt_self();
              v83 = [v82 flexibleSpacing:0.0];
              v84 = [v82 flexibleSpacing:0.0];
              v85 = v8;
              v86 = [objc_opt_self() spacingForLeading:v83 top:0 trailing:v84 bottom:0];

              [v79 setEdgeSpacing:v86];
              v8 = v85;
              v32 = v108;
              v64 = v101;
            }
          }

          v87 = v79;
          sub_10077019C();
          if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();

          (*v123)(v127, v126);
          v61 = v128;
          v15 = v118;
          v34 = v119;
          v35 = v124;
          v62 = v120;
          if (v60 != v120)
          {
            goto LABEL_27;
          }
        }

        if (v61 >> 62)
        {
          if (sub_10077158C() != 1 || !sub_10077158C())
          {
LABEL_8:
            v36 = objc_opt_self();
            v37 = objc_opt_self();
            v38 = [v37 fractionalWidthDimension:1.0];
            v39 = [v37 estimatedDimension:v63];
            v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

            sub_100016F40(0, &qword_100952C70);
            v41 = sub_1007701AC().super.isa;

            v42 = [v36 horizontalGroupWithLayoutSize:v40 subitems:v41];

            v43 = sub_1006AF6D0(v111, v125);
            v44 = [objc_opt_self() fixedSpacing:v43];
            [v42 setInterItemSpacing:v44];

            v45 = v42;
            sub_10077019C();
            if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10077021C();
            }

            sub_10077025C();
            v15 = v118;
            v34 = v119;
            v35 = v124;
            goto LABEL_11;
          }
        }

        else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_8;
        }

        if ((v61 & 0xC000000000000001) != 0)
        {
          v88 = sub_10077149C();
        }

        else
        {
          if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v88 = *(v61 + 32);
        }

        v89 = v88;

        v45 = v89;
        sub_10077019C();
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
LABEL_11:

        v33 = v33 + v63 + 0.0;
        if (v100 == v99)
        {
          v90 = objc_opt_self();
          v91 = [v90 fractionalWidthDimension:1.0];
          v92 = [v90 estimatedDimension:v33];
          v93 = [objc_opt_self() sizeWithWidthDimension:v91 heightDimension:v92];

          v94 = objc_opt_self();
          sub_100016F40(0, &qword_100952C70);
          v95 = sub_1007701AC().super.isa;

          v96 = [v94 verticalGroupWithLayoutSize:v93 subitems:v95];

          v97 = [objc_opt_self() fixedSpacing:0.0];
          [v96 setInterItemSpacing:v97];

          [objc_opt_self() sectionWithGroup:v96];
          return;
        }
      }
    }

    goto LABEL_65;
  }
}

void *sub_1006B8314()
{
  v0 = sub_1007621EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100761A6C();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v1 + 96))(v3, v0);

    v5 = *(sub_10000A5D4(&qword_10094E098) + 48);
    sub_10000A5D4(&unk_100942870);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007841E0;
    v7 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    sub_1007708EC();
    v8 = sub_10076FF6C();

    v9 = [v7 backgroundDecorationItemWithElementKind:v8];

    *(v6 + 32) = v9;
    v10 = sub_1007659CC();
    (*(*(v10 - 8) + 8))(&v3[v5], v10);
  }

  else if (v4 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v1 + 96))(v3, v0);

    v11 = sub_10000A5D4(&qword_10094B500);
    v12 = v11[12];
    v13 = v11[16];
    v14 = v11[20];
    sub_10000A5D4(&unk_100942870);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007841E0;
    v15 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    sub_1007708EC();
    v16 = sub_10076FF6C();

    v17 = [v15 backgroundDecorationItemWithElementKind:v16];

    *(v6 + 32) = v17;
    v18 = sub_1007659CC();
    (*(*(v18 - 8) + 8))(&v3[v14], v18);
    v19 = sub_10076A05C();
    v20 = *(*(v19 - 8) + 8);
    v20(&v3[v13], v19);
    v20(&v3[v12], v19);
  }

  else if (v4 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v1 + 96))(v3, v0);
    v21 = *(sub_10000A5D4(qword_10094ADC0) + 48);
    sub_10000A5D4(&unk_100942870);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007841E0;
    v22 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    sub_1007708EC();
    v23 = sub_10076FF6C();

    v24 = [v22 backgroundDecorationItemWithElementKind:v23];

    *(v6 + 32) = v24;
    v25 = sub_1007659CC();
    (*(*(v25 - 8) + 8))(&v3[v21], v25);
    v26 = sub_10076AA6C();
    (*(*(v26 - 8) + 8))(v3, v26);
  }

  else if (v4 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v27 = enum case for ShelfBackground.interactive(_:);
    v28 = v4;
    sub_10000A5D4(&unk_100942870);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007841E0;
    v29 = objc_opt_self();
    if (v28 == v27)
    {
      type metadata accessor for InteractiveSectionBackgroundView();
      sub_1007708EC();
      v30 = sub_10076FF6C();

      v31 = [v29 backgroundDecorationItemWithElementKind:v30];

      *(v6 + 32) = v31;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      sub_1007708EC();
      v32 = sub_10076FF6C();

      v33 = [v29 backgroundDecorationItemWithElementKind:v32];

      *(v6 + 32) = v33;
      (*(v1 + 8))(v3, v0);
    }
  }

  return v6;
}

void *sub_1006B891C(double a1, double a2)
{
  v4 = sub_10000A5D4(&unk_100952090);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_10076182C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  sub_100761B0C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &unk_100952090);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v14 = (*(v8 + 88))(v10, v7);
    if (v14 == enum case for ItemBackground.ad(_:) || v14 == enum case for ItemBackground.insetAd(_:) || v14 == enum case for ItemBackground.clearAdWithSeparator(_:))
    {
      v17 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{-8.0, -8.0}];
      v18 = objc_opt_self();
      v19 = [v18 absoluteDimension:a1 + 16.0];
      v20 = [v18 absoluteDimension:a2];
      v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

      v22 = v21;
      sub_100376324();
      v23 = v17;
      v24 = sub_10076FF6C();

      v25 = [objc_opt_self() supplementaryItemWithLayoutSize:v22 elementKind:v24 containerAnchor:v23];

      [v25 setZIndex:-1];
      sub_10000A5D4(&unk_100942870);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1007841E0;
      *(v26 + 32) = v25;

      (*(v8 + 8))(v13, v7);
      return v26;
    }

    v28 = *(v8 + 8);
    v28(v13, v7);
    v28(v10, v7);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1006B8D28(uint64_t a1, uint64_t a2)
{
  v45 = sub_10000A5D4(&qword_1009572A0);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = sub_10076F7FC();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = sub_10075DF7C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000A5D4(&qword_10094CCD8);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  sub_10075DF8C();
  swift_beginAccess();
  sub_10075DFDC();
  sub_1006BCDF0(&qword_10094CCE0, &type metadata accessor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    sub_10077040C();
    sub_1006BCDF0(&qword_10094CCE8, &type metadata accessor for IndexSet.Index);
    v19 = sub_10076FF1C();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = sub_10077042C();
    v22 = *v21;
    v20(v49, 0);
    sub_10077041C();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_10060FF40(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          sub_10076610C();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_100098444(v16, v22);
    swift_endAccess();
    v50 = v22;
    sub_10077140C();
    v17 = v44;
    sub_10076FDEC();
    sub_10076F9BC();
    (*v41)(v17, v45);
  }

  return sub_10000CFBC(v15, &qword_10094CCD8);
}

uint64_t sub_1006B92C0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10000A5D4(&qword_1009572A0);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = sub_10075DF7C();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_10094CCD8);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  sub_10075DF8C();
  sub_10075DFDC();
  sub_1006BCDF0(&qword_10094CCE0, &type metadata accessor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    sub_10077040C();
    sub_1006BCDF0(&qword_10094CCE8, &type metadata accessor for IndexSet.Index);
    v12 = v23;
    v13 = sub_10076FF1C();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = sub_10077042C();
    v16 = *v15;
    v14(v24, 0);
    sub_10077041C();
    v25 = v16;
    sub_10077140C();
    v17 = v20;
    sub_10076FDEC();
    sub_10076F9BC();
  }

  return sub_10000CFBC(v9, &qword_10094CCD8);
}

void sub_1006B9604(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_10000A5D4(&qword_1009572A0);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = sub_10075E11C();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_100016F40(0, &qword_10094D1D0);
  v11 = sub_1007701BC();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = sub_10077158C();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = (v3 + 8);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    v30 = v11 & 0xC000000000000001;
    v15 = v33;
    do
    {
      if (v14)
      {
        v16 = sub_10077149C();
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v17 && (v18 = [v37 indexPathForCell:v17]) != 0)
      {
        v19 = v32;
        v20 = v18;
        sub_10075E06C();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = sub_10075E0AC();
        sub_10077140C();
        v23 = v34;
        sub_10076FDEC();
        sub_10076F9BC();

        v24 = v23;
        v14 = v30;
        (*v28)(v24, v35);
        v25 = v22;
        v11 = v21;
        (*v27)(v25, v15);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

BOOL sub_1006B9998()
{
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_100761A7C();
  (*(v1 + 32))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v8 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v7 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v8 = type metadata accessor for InformationRibbonCollectionViewCell();
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    v8 = 0;
  }

  return v8 != 0;
}

uint64_t sub_1006B9B4C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  if (sub_100761A9C() > a1)
  {
    sub_100761A7C();
    if (!sub_1006B9998() && ((*(*v2 + 696))(v11, a2) & 1) != 0)
    {
      (*(v6 + 32))(v8, v11, v5);
      v12 = (*(v6 + 88))(v8, v5);
      v13 = v12 == enum case for Shelf.ContentType.annotation(_:) || v12 == enum case for Shelf.ContentType.productCapability(_:);
      v14 = v13 || v12 == enum case for Shelf.ContentType.productPageLink(_:);
      v15 = v14 || v12 == enum case for Shelf.ContentType.privacyType(_:);
      v11 = v8;
      if (v15)
      {
        return 1;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return 0;
}

uint64_t sub_1006B9D7C(char a1, id a2)
{
  v3 = [a2 traitCollection];
  v4 = sub_10077071C();

  v5 = 1;
  if ((a1 & 1) == 0)
  {
    v5 = 2;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1006B9DE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    sub_100761B1C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006B9E7C(uint64_t a1)
{
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100952110);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100784500;
  *(v6 + 32) = sub_10075E0AC();
  *(v6 + 40) = a1;
  sub_10075E01C();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    sub_100761B2C();
    swift_unknownObjectRelease();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1006B9FF8()
{
  sub_1006ACC6C();

  return swift_deallocClassInstance();
}

double sub_1006BA044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v22 = a1;
  v21[0] = sub_10076D39C();
  v4 = *(v21[0] - 8);
  __chkstk_darwin(v21[0]);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D9AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for TitleHeaderView.TextConfiguration(0) + 24);
  v16 = sub_10076D3DC();
  (*(*(v16 - 8) + 16))(v10, a2 + v15, v16);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v23[3] = v7;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v23);
  (*(v8 + 16))(v17, v10, v7);
  sub_10076D9BC();
  (*(v8 + 8))(v10, v7);
  sub_10076D99C();
  if (v22)
  {
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D31C();
    v19 = v18;
    (*(v4 + 8))(v6, v21[0]);
  }

  else
  {
    v19 = 0.0;
  }

  (*(v12 + 8))(v14, v11);
  return v19;
}

uint64_t sub_1006BA354(uint64_t a1)
{
  if (sub_100761A9C() <= a1 || (sub_100761A4C() & 1) != 0)
  {
    return 0;
  }

  v2 = sub_100761A8C();
  if (sub_1006B9998())
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1006BA410(uint64_t a1, void *a2)
{
  v44 = a2;
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v33[-v7];
  __chkstk_darwin(v9);
  v40 = &v33[-v10];
  v11 = sub_10076F09C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100016F40(0, &qword_1009471F0);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = sub_1007706BC();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_1004AF54C(v15, a1);

  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v38 = v4 + 32;
  v39 = v4 + 16;
  v37 = v4 + 88;
  v36 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
  v34 = enum case for Shelf.ContentType.informationRibbon(_:);
  v41 = a1;
  v42 = (v4 + 8);

  v24 = 0;
  v35 = v4;
  while (v21)
  {
LABEL_10:
    v26 = v40;
    v27 = *(v4 + 16);
    v27(v40, *(v41 + 48) + *(v4 + 72) * (__clz(__rbit64(v21)) | (v24 << 6)), v3);
    (*(v4 + 32))(v17, v26, v3);
    v28 = v43;
    v27(v43, v17, v3);
    v29 = (*(v4 + 88))(v28, v3);
    if (v29 == v36)
    {
      type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    }

    else if (v29 == v34)
    {
      type metadata accessor for InformationRibbonCollectionViewCell();
    }

    else
    {
      (*v42)(v43, v3);
      if (!sub_10041329C())
      {
        goto LABEL_4;
      }
    }

    if (v44)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_10076B59C();
      v31 = v17;
      v32 = sub_10076FF6C();

      [v44 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v32];

      v17 = v31;
      v4 = v35;
    }

LABEL_4:
    v21 &= v21 - 1;
    result = (*v42)(v17, v3);
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
    }

    v21 = *(v18 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1006BA820()
{
  sub_10076F9CC();
  if (*(v0 + 112))
  {

    sub_10076611C();
  }
}

uint64_t sub_1006BA87C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_10094E1D0);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_10075DFDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v24 = a1;
  sub_100016E2C(a1, v9, &unk_10094E1D0);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_10000CFBC(v9, &unk_10094E1D0);
    if (v2[14])
    {

      sub_10076611C();
    }

    swift_beginAccess();
    v2[7] = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v15, v9, v10);
    v21[1] = v21;
    v26 = v2[3];
    __chkstk_darwin(v17);
    v22 = v16;
    v21[-2] = v15;
    v21[-1] = v2;

    sub_10000A5D4(&unk_1009520B0);
    v21[0] = 0;
    sub_1001C9F18();
    v16 = v22;
    sub_10076F35C();

    (*(v11 + 8))(v15, v10);
  }

  sub_1006ADF90();
  sub_100016E2C(v24, v6, &unk_10094E1D0);
  if (v16(v6, 1, v10) == 1)
  {
    return sub_10000CFBC(v6, &unk_10094E1D0);
  }

  v19 = v23;
  v20 = (*(v11 + 32))(v23, v6, v10);
  v25 = v2[3];
  __chkstk_darwin(v20);
  v21[-2] = v19;
  v21[-1] = v2;

  sub_10000A5D4(&unk_1009520B0);
  sub_1001C9F18();
  sub_10076F35C();

  return (*(v11 + 8))(v19, v10);
}

double sub_1006BACCC(void *a1)
{
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v2 = sub_10076D9AC();
  sub_10000A61C(v2, qword_1009A2380);
  v3 = [a1 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007841E0;
  *(v4 + 32) = v3;
  v5 = v3;
  v6 = sub_10076DEEC();
  sub_10076D3EC();
  v8 = v7;

  return v8;
}

void sub_1006BADE8(void *a1)
{
  [a1 reloadData];

  sub_1006AE3AC(a1);
}

uint64_t sub_1006BAE2C(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10076F7FC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10000A570(a1, v53);
  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v19 = sub_100766E0C();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10000A570(v21, v53);
          sub_10000CF78(v53, v53[3]);
          v23 = v48;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10000CFBC(v23, &qword_1009492E0);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10000CF78(v44, v44[3]);
            sub_10076FE2C();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10000CFBC(v10, &qword_1009492E0);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_10076F7DC();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_10076F7CC();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_100016E2C(v27, v40, &qword_1009632C0);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10000CFBC(v31, &qword_1009632C0);
              }

              else
              {
                sub_10076F7BC();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_10076F78C();

              sub_1007660EC();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10000CFBC(v32, &qword_1009632C0);
              v35(v34, v37);
            }

            else
            {
              sub_10000CFBC(v27, &qword_1009632C0);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10000CFBC(v51, &unk_100952120);
  }
}

uint64_t sub_1006BB484()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006BB4BC()
{
  v1 = sub_10075E11C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1006BB558(uint64_t a1)
{
  sub_10075E11C();

  return sub_1006B9E7C(a1);
}

uint64_t sub_1006BB648()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1006BB6AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006BB750(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006BB768()
{
  v1 = sub_10075DFDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1006BB82C()
{
  v1 = *(sub_10075DFDC() - 8);
  v2 = *(v0 + 16);
  sub_10075DF9C(((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = v3;
  [v2 insertSections:v3];
}

uint64_t sub_1006BB8D0(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10076F7FC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10000A570(a1, v53);
  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v19 = sub_100766E0C();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10000A570(v21, v53);
          sub_10000CF78(v53, v53[3]);
          v23 = v48;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10000CFBC(v23, &qword_1009492E0);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10000CF78(v44, v44[3]);
            sub_10076FE2C();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10000CFBC(v10, &qword_1009492E0);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_10076F7DC();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_10076F7CC();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_100016E2C(v27, v40, &qword_1009632C0);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10000CFBC(v31, &qword_1009632C0);
              }

              else
              {
                sub_10076F7BC();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_10076F78C();

              sub_10076610C();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10000CFBC(v32, &qword_1009632C0);
              v35(v34, v37);
            }

            else
            {
              sub_10000CFBC(v27, &qword_1009632C0);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10000CFBC(v51, &unk_100952120);
  }
}

void sub_1006BBEC4(void *a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = v2;
  v102 = *v2;
  v6 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v6 - 8);
  v90 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = v86 - v9;
  v10 = sub_10076B5BC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v96 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = v86 - v14;
  v15 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v15 - 8);
  v91 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v97 = v86 - v18;
  __chkstk_darwin(v19);
  v95 = v86 - v20;
  v21 = sub_10076F7FC();
  v99 = *(v21 - 8);
  v100 = v21;
  __chkstk_darwin(v21);
  v89 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v92 = v86 - v24;
  __chkstk_darwin(v25);
  v94 = v86 - v26;
  if (sub_10075E0BC() >= 2)
  {
    v88 = v11;
    v86[3] = v2[2];
    v27 = *(v102 + 96);
    v86[2] = *(v102 + 80);
    v86[1] = v27;
    v28 = sub_100761AEC();
    v29 = sub_100016F40(0, &qword_10094D1D0);
    v107 = v29;
    v106[0] = a1;
    v30 = a1;
    v87 = v28;
    sub_10076756C();
    sub_10000CD74(v106);
    swift_getObjectType();
    v31 = swift_conformsToProtocol2();
    v101 = a2;
    if (v31 && v30)
    {
      sub_100767D5C();
      sub_10076F64C();
      v32 = v30;
      v86[0] = v29;
      v33 = v32;
      sub_10076FC1C();
      v34 = v106[0];
      swift_getObjectType();
      v35 = sub_100765B4C();
      v36 = v33;
      sub_100767CFC();
    }

    v105 = v30;
    v37 = v30;
    sub_10000A5D4(&qword_1009520D8);
    if (swift_dynamicCast())
    {
      sub_100012498(v103, v106);
      sub_100767D5C();
      sub_10076F64C();
      sub_10076FC1C();
      v38 = *&v103[0];
      sub_10000CF78(v106, v107);
      sub_10076818C();

      sub_10000CD74(v106);
    }

    else
    {
      v104 = 0;
      memset(v103, 0, sizeof(v103));
      sub_10000CFBC(v103, &unk_1009520E0);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v30)
    {
      sub_100764FAC();
      v39 = v37;
      sub_10076F63C();
      v40 = v106[0];
      if (v106[0])
      {
        v41 = v39;
        v42 = v40;
        sub_100764F5C();

        v39 = v42;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v30)
    {
      swift_getObjectType();
      v43 = v37;
      sub_100768BFC();
    }

    swift_getObjectType();
    v44 = swift_conformsToProtocol2();
    v45 = v88;
    if (v44 && v30)
    {
      v46 = v44;
      ObjectType = swift_getObjectType();
      v48 = *(v46 + 8);
      v49 = v37;
      v48(ObjectType, v46);
    }

    if (v87)
    {
      swift_getObjectType();
      v50 = swift_conformsToProtocol2();
      if (v50 && v30)
      {
        v51 = v50;
        v52 = swift_getObjectType();
        v53 = *(v51 + 40);
        v54 = v37;
        v53(v52, v51);
      }

      sub_10075E0AC();
      v55 = sub_1006B9998();
      sub_10075E0AC();
      if (v55)
      {
        sub_100761B4C();
        v56 = v95;
        sub_10076B6FC();
        v58 = v99;
        v57 = v100;
        if ((*(v99 + 48))(v56, 1, v100) == 1)
        {

          sub_10000CFBC(v56, &qword_1009492E0);
        }

        else
        {
          v70 = v94;
          (*(v58 + 32))(v94, v56, v57);
          if (v3[14])
          {

            sub_10076610C();
          }

          (*(v58 + 8))(v70, v57);
        }

        return;
      }

      v59 = v98;
      sub_100761A7C();
      sub_10075E0AC();
      v60 = sub_100761A3C();
      v61 = v96;
      (*(v45 + 16))(v96, v59, v10);
      v62 = (*(v45 + 88))(v61, v10);
      v63 = v97;
      if (v62 == enum case for Shelf.ContentType.smallLockup(_:) || v62 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v62 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v62 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.editorialCard(_:) || v62 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.brick(_:) || v62 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.reviews(_:) || v62 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v62 == enum case for Shelf.ContentType.framedVideo(_:) || v62 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v62 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v62 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v62 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v62 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v62 == enum case for Shelf.ContentType.posterLockup(_:) || v62 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v60)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v85 = v97;
        (*(v45 + 8))(v61, v10);
        v63 = v85;
      }

      v64 = v63;
      v65 = sub_100761A9C();
      if (sub_10075E0AC() < v65)
      {
        v66 = sub_10075E09C();
        sub_10075E0AC();
        if (v66 < sub_100761A8C())
        {
          sub_100761B3C();
          sub_10000CF78(v106, v107);
          sub_10076FE2C();
          v67 = v64;
          v68 = v99;
          v69 = v100;
          v101 = *(v99 + 48);
          if (v101(v67, 1, v100) == 1)
          {
            (*(v45 + 8))(v59, v10);
            sub_10000CFBC(v67, &qword_1009492E0);
          }

          else
          {
            (*(v68 + 32))(v92, v67, v69);
            sub_10075E0AC();
            sub_100761B4C();
            v71 = v91;
            sub_10076B6FC();
            v72 = v3;
            if (v101(v71, 1, v69) == 1)
            {
              sub_10000CFBC(v71, &qword_1009492E0);
              v73 = 1;
              v74 = v93;
            }

            else
            {
              v75 = v93;
              sub_10076F7DC();
              v74 = v75;
              (*(v68 + 8))(v71, v69);
              v73 = 0;
            }

            v76 = sub_10076F7CC();
            v77 = *(v76 - 8);
            (*(v77 + 56))(v74, v73, 1, v76);
            if (v72[14])
            {
              v78 = v90;
              sub_100016E2C(v74, v90, &qword_1009632C0);
              v79 = (*(v77 + 48))(v78, 1, v76);

              if (v79 == 1)
              {
                sub_10000CFBC(v78, &qword_1009632C0);
              }

              else
              {
                sub_10076F7BC();
                (*(v77 + 8))(v78, v76);
              }

              v84 = v89;
              v83 = v92;
              sub_10076F78C();

              sub_10076610C();

              v82 = v99;
              v81 = v100;
              (*(v99 + 8))(v84, v100);
              v80 = v72[14];
            }

            else
            {
              v80 = 0;
              v82 = v99;
              v81 = v100;
              v83 = v92;
            }

            sub_1006BB8D0(v106, v80);

            sub_10000CFBC(v93, &qword_1009632C0);
            (*(v82 + 8))(v83, v81);
            (*(v45 + 8))(v98, v10);
          }

          sub_10000CD74(v106);
          return;
        }
      }

LABEL_56:
      (*(v45 + 8))(v59, v10);
    }
  }
}

uint64_t sub_1006BCDF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006BCE40(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = _swiftEmptyArrayStorage;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v1 selector:"clearStackFor:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v1 selector:"clearStackFor:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  return v1;
}

uint64_t sub_1006BD024(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = v3 + 48;
    while (v6 < *(v3 + 16))
    {
      swift_unknownObjectRetain();
      v8 = sub_100762DDC();
      v9 = sub_100762DDC();
      result = swift_unknownObjectRelease();
      if (v8 == v9)
      {

        swift_beginAccess();
        v11 = sub_1006BD1B8(v6);
        v13 = v12;
        swift_endAccess();
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 136);
        swift_unknownObjectRetain();
        v15(ObjectType, v13);
        swift_unknownObjectRelease();
        return v11;
      }

      ++v6;
      v7 += 24;
      if (v4 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_1002EB540(a1);
    return (*(v10 + 8))();
  }

  return result;
}

uint64_t sub_1006BD1B8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1004BDAE8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1006BD25C(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_1006BD2F4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (result)
  {
    if ((a4 & 1) == 0)
    {
      v7 = result;
      result = swift_beginAccess();
      v8 = *(v4 + 24);
      v9 = *(v8 + 2) + 1;
      if (v9 < *(v4 + 16))
      {
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 24) = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_10049D834(0, v9, 1, v8);
          *(v4 + 24) = v8;
        }

        v11 = *(v8 + 2);
        v12 = *(v8 + 3);
        v13 = v11 + 1;
        if (v11 >= v12 >> 1)
        {
          v15 = v8;
          v16 = *(v8 + 2);
          v17 = sub_10049D834((v12 > 1), v11 + 1, 1, v15);
          v11 = v16;
          v8 = v17;
        }

        *(v8 + 2) = v13;
        v14 = &v8[24 * v11];
        *(v14 + 4) = v7;
        *(v14 + 5) = a2;
        *(v14 + 6) = a3;
        *(v4 + 24) = v8;
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_1006BD408()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1006BD478()
{
  v0 = sub_10000A5D4(&unk_100955860);
  sub_10000DB18(v0, qword_1009A3248);
  sub_10000A61C(v0, qword_1009A3248);
  return sub_10076F54C();
}

char *sub_1006BD4F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations();
  swift_allocObject();
  *&v4[v11] = sub_10007E6C0();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource] = 0;
  v12 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_userDefaults;
  *&v5[v12] = [objc_opt_self() standardUserDefaults];
  v13 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_notificationCenter;
  *&v5[v13] = [objc_opt_self() defaultCenter];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_debugSections] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_objectGraph] = a1;
  v14 = objc_allocWithZone(UICollectionViewFlowLayout);

  v15 = [v14 init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v28, "initWithCollectionViewLayout:", v15);

  if (a3)
  {
    v17 = v16;
    sub_1006C0FCC(a2, a3);

    v18 = a4;
  }

  else
  {
    sub_10000A5D4(&unk_100942870);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1007841E0;
    v19 = objc_allocWithZone(type metadata accessor for DebugMenuSettings());
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v27.receiver = v19;
    v27.super_class = type metadata accessor for DebugSettingsProvider();
    v20 = v16;
    *(v18 + 32) = objc_msgSendSuper2(&v27, "init");
  }

  v21 = sub_1006C0C24(v18, a1);

  *&v16[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_debugSections] = v21;

  v22 = v16;
  if (a3)
  {
  }

  v23 = sub_10076FF6C();

  [v16 setTitle:v23];

  v24 = [v16 navigationItem];
  v25 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v16 action:"dismissFrom:"];

  [v24 setRightBarButtonItem:v25];

  return v16;
}

id sub_1006BD820()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076E3AC();
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLoad", v4);
  v5 = sub_1006BDABC();
  v6 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource;
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource] = v5;

  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    aBlock[4] = sub_1006C1920;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002BAFEC;
    aBlock[3] = &unk_10089FDF8;
    v12 = _Block_copy(aBlock);

    v13 = [v11 initWithSectionProvider:v12];
    _Block_release(v12);

    [v9 setCollectionViewLayout:v13];

    result = [v1 collectionView];
    if (result)
    {
      v14 = result;
      [result setDataSource:*&v1[v6]];

      [*&v1[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_notificationCenter] addObserver:v1 selector:"userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:*&v1[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_userDefaults]];
      sub_1006BDD74();
      v15 = UIContentSizeCategoryLarge;
      sub_1007705EC();
      sub_10076E37C();
      return sub_1007705FC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1006BDABC()
{
  v1 = sub_10000A5D4(&qword_100963060);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  sub_10076FF9C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_10094D1D0);
  sub_10077059C();
  result = [v0 collectionView];
  if (result)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1006C1930;
    *(v10 + 24) = v9;
    v11 = objc_allocWithZone(sub_10000A5D4(&qword_100963A08));
    v12 = sub_10076E72C();
    (*(v2 + 16))(v4, v7, v1);
    v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v14 = swift_allocObject();
    (*(v2 + 32))(v14 + v13, v4, v1);
    sub_10076E73C();
    (*(v2 + 8))(v7, v1);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006BDD74()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_1009639E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - v4;
  v42 = sub_10000A5D4(&qword_1009639E8);
  v31 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v30 - v6;
  type metadata accessor for DebugSection();
  v8 = type metadata accessor for DebugSetting();
  sub_1006C1A30(&qword_1009639F8, type metadata accessor for DebugSection);
  v9 = sub_1006C1A30(&qword_100963A00, type metadata accessor for DebugSetting);
  v43 = v7;
  v40 = v9;
  v41 = v8;
  result = sub_10076E62C();
  v11 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_debugSections;
  v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_debugSections);
  if (v12 >> 62)
  {
    goto LABEL_45;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v36 = v1;
  if (v13)
  {
    if (v13 < 1)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v44 = v11;
    v45 = v3;

    v14 = 0;
    v46 = xmmword_1007841E0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = sub_10077149C();
      }

      else
      {
        v15 = *(v12 + 8 * v14 + 32);
      }

      ++v14;
      sub_10000A5D4(&unk_100942870);
      v16 = swift_allocObject();
      *(v16 + 16) = v46;
      *(v16 + 32) = v15;

      v17._rawValue = v16;
      sub_10076E5CC(v17);
    }

    while (v13 != v14);

    v1 = v36;
    v11 = v44;
    v3 = v45;
  }

  v39 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource;
  v18 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource);
  if (!v18)
  {
LABEL_50:
    __break(1u);
    return result;
  }

  v19 = v18;
  sub_10076E76C();

  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    v11 = sub_10077158C();
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_14:
      v32 = v12 + 32;
      v33 = v12 & 0xFFFFFFFFFFFFFF8;
      v37 = (v3 + 8);
      v38 = v12 & 0xC000000000000001;

      v3 = 0;
      v46 = xmmword_1007841E0;
      v34 = v11;
      v35 = v12;
      while (1)
      {
        if (v38)
        {
          v20 = sub_10077149C();
          v21 = __OFADD__(v3++, 1);
          if (v21)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v3 >= *(v33 + 16))
          {
            goto LABEL_44;
          }

          v20 = *(v32 + 8 * v3);

          v21 = __OFADD__(v3++, 1);
          if (v21)
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            result = sub_10077158C();
            v13 = result;
            goto LABEL_3;
          }
        }

        result = sub_10076E7EC();
        v22 = *(v20 + 48);
        if (v22 >> 62)
        {
          result = sub_10077158C();
          v23 = result;
          if (!result)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v23)
          {
            goto LABEL_36;
          }
        }

        if (v23 < 1)
        {
          goto LABEL_43;
        }

        v44 = v20;
        v45 = v3;

        for (i = 0; i != v23; ++i)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = sub_10077149C();
          }

          else
          {
            v25 = *(v22 + 8 * i + 32);
          }

          sub_10000A5D4(&unk_100942870);
          v26 = swift_allocObject();
          *(v26 + 16) = v46;
          *(v26 + 32) = v25;
          v47 = 0;

          sub_10076E7BC();

          type metadata accessor for MenuDebugSetting();
          v27 = swift_dynamicCastClass();
          if (v27)
          {
            if (*(v27 + 72) >> 62)
            {

              sub_10077157C();
            }

            else
            {
              swift_bridgeObjectRetain_n();

              sub_10077168C();
            }

            v47 = v25;
            sub_10076E7BC();
          }

          else
          {
          }
        }

        v12 = v35;
        v1 = v36;
        v11 = v34;
        v20 = v44;
        v3 = v45;
LABEL_36:
        v28 = *(v1 + v39);
        if (!v28)
        {
          goto LABEL_49;
        }

        v47 = v20;
        v29 = v28;
        sub_10076E77C();

        (*v37)(v5, v2);

        if (v3 == v11)
        {

          return (*(v31 + 8))(v43, v42);
        }
      }
    }
  }

  return (*(v31 + 8))(v43, v42);
}

id sub_1006BE3E4()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_notificationCenter] removeObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1006BE5B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v3 = sub_10000A5D4(&qword_1009639E8);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = sub_10076E83C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076E81C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076E87C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v10, v16);
  sub_10076E84C();
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v6);
  sub_10076E86C();
  sub_100016F40(0, &unk_1009632E0);
  v19 = sub_10077097C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v15 + 8))(v18, v14);
    return;
  }

  v21 = v15;
  v22 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource);
  v23 = Strong;
  v24 = v22;

  if (!v22)
  {
    goto LABEL_16;
  }

  sub_10076E79C();

  v25 = v40;
  v26 = sub_10076E61C();
  (*(v39 + 8))(v5, v25);
  v27 = v14;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = sub_10077149C();
    goto LABEL_7;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v41)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v28 = *(v26 + 8 * v41 + 32);

LABEL_7:

  v29 = *(v28 + 40);
  v30 = *(v28 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v29) & 0xF;
  }

  if (v30)
  {
    v31 = objc_opt_self();
    v32 = [v31 fractionalWidthDimension:1.0];
    v33 = [v31 estimatedDimension:44.0];
    v34 = [objc_opt_self() sizeWithWidthDimension:v32 heightDimension:v33];

    v35 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v34 elementKind:UICollectionElementKindSectionHeader alignment:1];
    sub_10000A5D4(&unk_100942870);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1007841E0;
    *(v36 + 32) = v35;
    sub_100016F40(0, &qword_100948C70);
    v37 = v35;
    isa = sub_1007701AC().super.isa;

    [v19 setBoundarySupplementaryItems:isa];

    (*(v21 + 8))(v18, v27);
  }

  else
  {
    (*(v21 + 8))(v18, v14);
  }
}

unint64_t sub_1006BEB18(uint64_t a1)
{
  v2 = sub_10076E58C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_1009639E8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v16[1] = a1;
    v12 = *(result + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource);
    if (v12)
    {
      v13 = v12;
      sub_10076E79C();

      v14 = sub_10076E61C();
      (*(v7 + 8))(v9, v6);
      result = sub_10075E12C();
      if ((v14 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
        goto LABEL_7;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_7:

        sub_10076E4EC();

        sub_10076E56C();
        v17[3] = v2;
        v17[4] = &protocol witness table for UIListContentConfiguration;
        v15 = sub_10000DB7C(v17);
        (*(v3 + 16))(v15, v5, v2);
        sub_1007707FC();

        return (*(v3 + 8))(v5, v2);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1006BEDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    v8 = sub_10007E8B4(a1, a3, a2);

    if (v8)
    {
      return v8;
    }
  }

  sub_10077145C(55);
  v10._object = 0x80000001007F5590;
  v10._countAndFlagsBits = 0xD000000000000035;
  sub_1007700CC(v10);
  sub_10075E11C();
  sub_1006C1A30(&unk_100963A10, &type metadata accessor for IndexPath);
  v11._countAndFlagsBits = sub_10077163C();
  sub_1007700CC(v11);

  result = sub_10077156C();
  __break(1u);
  return result;
}

void sub_1006BEF34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    if (v2)
    {
      [v2 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1006BF018(void *a1, uint64_t a2)
{
  v145 = sub_10000A5D4(&qword_1009639E0);
  v142 = *(v145 - 8);
  __chkstk_darwin(v145);
  v144 = &v135 - v5;
  v148 = sub_10000A5D4(&qword_1009639E8);
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v143 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v156 = &v135 - v8;
  __chkstk_darwin(v9);
  v160 = &v135 - v10;
  v154 = sub_10075F65C();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v155 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_100765F6C();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v153 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100766EDC();
  v149 = *(v13 - 8);
  __chkstk_darwin(v13);
  v158 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076F4FC();
  __chkstk_darwin(v15 - 8);
  v157 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v17 - 8);
  v19 = &v135 - v18;
  v20 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v20 - 8);
  v22 = &v135 - v21;
  v23 = sub_10076C15C();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v27 - 8);
  v29 = &v135 - v28;
  v162 = v2;
  v147 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource;
  v30 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource];
  if (!v30)
  {
    __break(1u);
    goto LABEL_63;
  }

  v31 = v30;
  v161 = a2;
  sub_10076E74C();

  v32 = v167;
  if (!v167)
  {
    return;
  }

  v159 = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    v35 = *(v33 + 72);
    if (v35)
    {
      v36 = v35();
      v156 = v37;
    }

    else
    {
      v36 = 0;
      v156 = 0;
    }

    v142 = v36;
    v45 = *(v34 + 88);
    if (v45)
    {
      v137 = v19;
      v138 = v24;
      v140 = v13;
      v145 = v32;
      v46 = *(v34 + 64);
      v136 = *(v34 + 56);
      sub_10000A5D4(&unk_100942870);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1007841E0;
      *(v47 + 32) = v45;
      v48 = *&v162[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_objectGraph];
      v49 = sub_10000A5D4(&unk_1009428E0);
      v144 = v45;
      v143 = v46;

      v139 = v48;
      sub_10076F5AC();
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v141 = v49;
      if (v51(v29, 1, v49) == 1)
      {

        v52 = sub_10000CFBC(v29, &unk_100943200);
      }

      else
      {
        v169 = 0;
        v167 = 0u;
        v168 = 0u;
        (*(v138 + 104))(v26, enum case for FlowPage.debugSettings(_:), v23);
        v54 = sub_10075DB7C();
        (*(*(v54 - 8) + 56))(v22, 1, 1, v54);
        v55 = sub_10076096C();
        (*(*(v55 - 8) + 56))(v137, 1, 1, v55);
        v163 = v136;
        v164 = v143;
        v165 = v47;
        v166 = &type metadata for DebugMenuPage;
        sub_10076F4DC();
        (*(v149 + 104))(v158, enum case for FlowPresentationContext.push(_:), v140);
        (*(v150 + 104))(v153, enum case for FlowAnimationBehavior.infer(_:), v151);
        (*(v152 + 104))(v155, enum case for FlowOrigin.inapp(_:), v154);
        v56 = v50;
        v57 = sub_10076FA2C();
        v59 = v58;
        sub_10075F63C();
        swift_allocObject();
        v132[1] = v57;
        v133 = v59;
        v132[0] = 0;
        v60 = sub_10075F5EC();
        sub_100263C24(v60, 1, v139, v29);

        v52 = (*(v56 + 8))(v29, v141);
      }

      v32 = v145;
      v53 = v162;
    }

    else
    {
      v53 = v162;
      v52 = (*(v34 + 96))(*&v162[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_objectGraph]);
    }

    v61 = v160;
    v62 = v156;
    if (!v156)
    {
      goto LABEL_35;
    }

    v63 = *(v34 + 72);
    if (!v63)
    {
      goto LABEL_34;
    }

    v64 = v63(v52);
    if (!v65)
    {
      goto LABEL_34;
    }

    if (v64 == v142 && v65 == v62 || (sub_10077167C() & 1) != 0)
    {
      goto LABEL_33;
    }

    v86 = v147;
    v87 = *&v53[v147];
    if (v87)
    {
      v88 = v87;
      sub_10076E79C();

      sub_10000A5D4(&unk_100942870);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1007841E0;
      *(v89 + 32) = v32;

      v90._rawValue = v89;
      v91 = v148;
      sub_10076E5FC(v90);

      v92 = *&v53[v86];
      if (v92)
      {
        v93 = v92;

        sub_10076E76C();

        (*(v146 + 8))(v61, v91);
        goto LABEL_35;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  type metadata accessor for ActionDebugSetting();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = v38;
    v40 = *(v38 + 88);
    v41 = v162;
    if (v40)
    {
      v42 = v40();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v72 = v156;
    v73 = (*(v39 + 104))(*&v41[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_objectGraph]);
    if (!v44)
    {
      goto LABEL_35;
    }

    v74 = *(v39 + 88);
    if (!v74)
    {
      goto LABEL_34;
    }

    v75 = v74(v73);
    if (!v76)
    {
      goto LABEL_34;
    }

    if (v75 == v42 && v76 == v44 || (sub_10077167C() & 1) != 0)
    {
LABEL_33:

LABEL_34:

      goto LABEL_35;
    }

    v100 = v147;
    v101 = *&v41[v147];
    if (v101)
    {
      v102 = v101;
      sub_10076E79C();

      sub_10000A5D4(&unk_100942870);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1007841E0;
      *(v103 + 32) = v32;

      v104._rawValue = v103;
      v105 = v148;
      sub_10076E5FC(v104);

      v106 = *&v41[v100];
      if (v106)
      {
        v107 = v106;

        sub_10076E76C();

        (*(v146 + 8))(v72, v105);
        goto LABEL_35;
      }

      goto LABEL_66;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  type metadata accessor for StringPreferencesDebugSetting();
  v66 = swift_dynamicCastClass();
  v67 = v162;
  if (!v66)
  {
    type metadata accessor for StringUserDefaultsDebugSetting();
    v78 = swift_dynamicCastClass();
    if (v78)
    {
      v80 = *(v78 + 56);
      v79 = *(v78 + 64);
      __chkstk_darwin(v78);
      v133 = v67;
      v134 = v81;
      v82 = v81;
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v82;
      LOBYTE(v82) = v82[88];
      swift_retain_n();

      v85 = sub_1006C1410(v80, v79, sub_1006C1844, v132, sub_1006C184C, v84, v82);

      [v67 presentViewController:v85 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for PromptActionDebugSetting();
    v94 = swift_dynamicCastClass();
    if (v94)
    {
      v95 = v94;
      v96 = v94[8];
      v160 = v94[7];
      v97 = v94[9];
      v98 = v94[10];
      if (v97)
      {
        v94 = swift_allocObject();
        v99 = v94;
        v94[2] = v97;
        v94[3] = v98;
      }

      else
      {
        v99 = 0;
      }

      v158 = &v135;
      __chkstk_darwin(v94);
      v133 = v122;
      v134 = v99;
      v123 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v124 = v67;
      v125 = swift_allocObject();
      *(v125 + 16) = v123;
      *(v125 + 24) = v95;
      swift_retain_n();
      sub_10001CE50(v97);

      v126 = sub_1006C1410(v160, v96, sub_1006C1798, v132, sub_1006C180C, v125, 0);

      [v124 presentViewController:v126 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for MenuDebugSetting();
    v108 = swift_dynamicCastClass();
    if (v108)
    {
      v109 = v147;
      v110 = *&v67[v147];
      if (!v110)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      v111 = v108;
      v112 = v110;
      v113 = v143;
      sub_10076E79C();

      v163 = v111;
      v114 = v148;
      sub_10076E60C();
      (*(v146 + 8))(v113, v114);
      v115 = v167;
      v116 = v145;
      v117 = v144;
      if (!v167)
      {
        goto LABEL_35;
      }

      v118 = *&v67[v109];
      if (!v118)
      {
        goto LABEL_68;
      }

      v119 = v118;
      sub_10076E78C();

      *&v167 = v32;
      LOBYTE(v119) = sub_10076E7AC();
      sub_10000A5D4(&unk_100942870);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1007841E0;
      *(v120 + 32) = v32;

      v121._rawValue = v120;
      if (v119)
      {
        sub_10076E7DC(v121);
      }

      else
      {
        sub_10076E7CC(v121);
      }

      v130 = *&v67[v109];
      if (!v130)
      {
        goto LABEL_69;
      }

      *&v167 = v115;
      v131 = v130;
      sub_10076E77C();

      (*(v142 + 8))(v117, v116);
    }

    else
    {
      type metadata accessor for MenuItemDebugSetting();
      v127 = swift_dynamicCastClass();
      if (!v127)
      {
        goto LABEL_35;
      }

      v128 = *(v127 + 80);

      v128(v129);

      [v159 reloadData];
    }

    goto LABEL_35;
  }

  v68 = *(v66 + 56);
  v69 = *(v66 + 64);
  v70 = v66;
  swift_retain_n();

  v71 = sub_1006C1410(v68, v69, sub_1006C1854, v70, sub_1006C185C, v70, 1);

  [v67 presentViewController:v71 animated:1 completion:0];

LABEL_35:
  isa = sub_10075E02C().super.isa;
  [v159 deselectItemAtIndexPath:isa animated:1];
}

uint64_t sub_1006C01E0()
{
  swift_getObjectType();
  sub_10076F41C();
  return v1;
}

uint64_t sub_1006C0258(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10000A5D4(&qword_100943038);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - v8;
  if (!a2)
  {
    goto LABEL_6;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    swift_getObjectType();
    (*(v7 + 16))(v9, a3 + OBJC_IVAR____TtC20ProductPageExtension29StringPreferencesDebugSetting_key, v6);
    v15[0] = a1;
    v15[1] = a2;

    return sub_10076F42C();
  }

  else
  {
LABEL_6:
    swift_getObjectType();
    v12 = OBJC_IVAR____TtC20ProductPageExtension29StringPreferencesDebugSetting_key;
    v15[3] = v6;
    v15[4] = sub_100071820(&qword_100943050, &qword_100943038);
    v13 = sub_10000DB7C(v15);
    (*(v7 + 16))(v13, a3 + v12, v6);
    sub_10076F3EC();
    return sub_10000CD74(v15);
  }
}

uint64_t sub_1006C0458(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_userDefaults);
  v2 = sub_10076FF6C();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000CFBC(v8, &unk_1009434C0);
    return 0;
  }
}

void sub_1006C0544(uint64_t a1, NSString a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_userDefaults);

    if (a2)
    {
      a2 = sub_10076FF6C();
    }

    v6 = sub_10076FF6C();
    [v5 setObject:a2 forKey:v6];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1006C0614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a4 + 88);
    v9 = result;

    v8(v10, a1, a2);
  }

  return result;
}

void sub_1006C08AC(void *a1, uint64_t a2, NSString a3)
{
  if (!a3)
  {
LABEL_7:
    v4 = a3;
    [a1 setText:?];

    return;
  }

  v3 = a1;
  if ((a2 != 0x746C7561666544 || a3 != 0xE700000000000000) && (sub_10077167C() & 1) == 0)
  {
    a3 = sub_10076FF6C();
    a1 = v3;
    goto LABEL_7;
  }
}

void sub_1006C0974(int a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, char a7)
{
  v11 = [a2 textFields];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  sub_100016F40(0, &qword_1009639F0);
  v13 = sub_1007701BC();

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!sub_10077158C())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_10077149C();
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 text];

  if (v16)
  {
    v17 = sub_10076FF9C();
    v19 = v18;

    if (a4 && (v17 == a3 && v19 == a4 || (sub_10077167C() & 1) != 0))
    {
      goto LABEL_12;
    }

    a5(v17, v19);

    if (a7)
    {
      v20 = [objc_opt_self() sharedCoordinator];
      [v20 notify];
    }
  }
}

void *sub_1006C0C24(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v29 = v3;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v30 = a2;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10077149C();
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = (*((swift_isaMask & *isUniquelyReferenced_nonNull_bridgeObject) + 0x78))(a2);
      v9 = v8;
      v10 = v8 >> 62;
      if (v8 >> 62)
      {
        v11 = sub_10077158C();
      }

      else
      {
        v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10077158C();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v35 = v6;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_10077158C();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      v14 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = v11;
        goto LABEL_22;
      }

LABEL_21:
      v15 = v11;
      isUniquelyReferenced_nonNull_bridgeObject = sub_1007714AC();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_10077158C();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v17 >> 1) - v16) < v15)
          {
            goto LABEL_44;
          }

          v20 = v14 + 8 * v16 + 32;
          v34 = v14;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_46;
            }

            sub_100071820(&qword_1009639D8, &qword_1009639D0);
            for (i = 0; i != v18; ++i)
            {
              sub_10000A5D4(&qword_1009639D0);
              v22 = sub_1000FBE78(v36, i, v9);
              v24 = *v23;

              (v22)(v36, 0);
              *(v20 + 8 * i) = v24;
            }

            v3 = v29;
            a2 = v30;
          }

          else
          {
            type metadata accessor for DebugSection();
            swift_arrayInitWithCopy();
          }

          if (v15 > 0)
          {
            v25 = *(v34 + 16);
            v7 = __OFADD__(v25, v15);
            v26 = v25 + v15;
            if (v7)
            {
              goto LABEL_45;
            }

            *(v34 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_26;
        }
      }

      if (v15 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_10077158C();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1006C0FCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1006C1010()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations();
  swift_allocObject();
  *(v0 + v2) = sub_10007E6C0();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_userDefaults;
  *(v1 + v3) = [objc_opt_self() standardUserDefaults];
  v4 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_notificationCenter;
  *(v1 + v4) = [objc_opt_self() defaultCenter];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_debugSections) = _swiftEmptyArrayStorage;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1006C1118()
{
  v0 = sub_10076F08C();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F0CC();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0);
  v6 = sub_10077068C();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1006C1918;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089FDD0;
  v8 = _Block_copy(aBlock);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1006C1A30(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100071820(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

id sub_1006C1410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = a3();
  v10 = v9;
  v11 = sub_10076FF6C();
  v12 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  v30 = sub_1006C189C;
  v31 = v13;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1006C1A98;
  v29 = &unk_10089FD58;
  v14 = _Block_copy(&aBlock);

  [v12 addTextFieldWithConfigurationHandler:v14];
  _Block_release(v14);
  v15 = sub_10076FF6C();
  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v15 style:1 handler:0];

  [v12 addAction:v17];
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v8;
  *(v18 + 32) = v10;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  v19 = v12;

  v20 = sub_10076FF6C();
  v30 = sub_1006C1904;
  v31 = v18;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1006C1A98;
  v29 = &unk_10089FDA8;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 actionWithTitle:v20 style:2 handler:v21];
  _Block_release(v21);

  [v19 addAction:v22];
  return v19;
}

void sub_1006C16DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource);
  if (v1)
  {
    v2 = v1;
    sub_10076E74C();

    if (v3)
    {
      type metadata accessor for InfoDebugSetting();
      if (swift_dynamicCastClass() || (type metadata accessor for BoolUserDefaultsDebugSetting(), swift_dynamicCastClass()))
      {
      }

      else
      {
        type metadata accessor for BoolPreferencesDebugSetting();
        swift_dynamicCastClass();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006C17D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006C1814@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1006C1864()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006C18A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006C18BC()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1006C1938()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006C199C()
{
  v1 = sub_10000A5D4(&qword_100963060);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1006C1A30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006C1A9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v6 = sub_100763ADC();
  v7 = sub_10000A61C(v6, qword_10099DDA0);
  (*(*(v6 - 8) + 16))(a1, v7, v6);
  sub_10076BBEC();
  if (v8)
  {
  }

  else
  {
    if (qword_100940A40 != -1)
    {
      swift_once();
    }

    v9 = sub_10076D3DC();
    v10 = sub_10000A61C(v9, qword_1009A0CD0);
    (*(*(v9 - 8) + 16))(v5, v10, v9);
    (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
    v15 = sub_10076D9AC();
    v16 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v14);
    v13[3] = v2;
    v13[4] = &protocol witness table for FontSource;
    v11 = sub_10000DB7C(v13);
    (*(v3 + 16))(v11, v5, v2);
    sub_10076D9BC();
    (*(v3 + 8))(v5, v2);
    sub_1007639DC();
  }

  v15 = &type metadata for Double;
  v16 = &protocol witness table for Double;
  v14[0] = 0;
  sub_1007639CC();
  sub_1007639BC();
  return sub_1007639FC();
}

double sub_1006C1D44(void *a1, double a2, uint64_t a3, void *a4)
{
  v7 = sub_100763ADC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076684C())
  {
    v11 = [a4 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView();
      sub_1006C1A9C(v10);
      swift_getObjectType();
      a2 = sub_100262AD0(v10, a1);

      (*(v8 + 8))(v10, v7);
    }
  }

  return a2;
}

uint64_t sub_1006C1EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v97 = a2;
  v8 = sub_10076BEDC();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v86 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v10 - 8);
  v93 = &v82 - v11;
  v12 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v12 - 8);
  v92 = &v82 - v13;
  v14 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v14 - 8);
  v91 = &v82 - v15;
  v16 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v16 - 8);
  v90 = &v82 - v17;
  v18 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v18 - 8);
  v89 = &v82 - v19;
  v20 = sub_100763ADC();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v94 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10076BF6C();
  __chkstk_darwin(v23 - 8);
  v96 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&qword_100963A80);
  *&v26 = __chkstk_darwin(v25 - 8).n128_u64[0];
  v28 = &v82 - v27;
  v29 = [a5 snapshotPageTraitEnvironment];
  *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v6 setNeedsLayout];
  swift_unknownObjectRelease();
  v30 = sub_10076680C();
  [v6 setBackgroundColor:v30];

  sub_1007667CC();
  if (v31)
  {
    v32 = sub_10076FF6C();
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_opt_self() _systemImageNamed:v32];

  v34 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph];
  if (v33)
  {
    [v34 setImage:v33];
  }

  else
  {
    [v34 setImage:0];
  }

  v95 = v20;
  v35 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge];
  sub_10076682C();
  if (v36)
  {
    v37 = sub_10076FF6C();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_title];
  sub_10076683C();
  v39 = sub_10076FF6C();

  [v38 setText:v39];

  v40 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_subtitle];
  sub_10076685C();
  if (v41)
  {
    v42 = sub_10076FF6C();
  }

  else
  {
    v42 = 0;
  }

  [v40 setText:v42];

  v43 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent];
  sub_1007667EC();
  v44 = sub_10076C96C();
  (*(*(v44 - 8) + 56))(v28, 0, 1, v44);
  sub_10076C9BC();
  v45 = sub_1007667FC();
  if (v45)
  {
    v46 = v45;
    v47 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_button];
    v48 = swift_allocObject();
    *(v48 + 16) = v97;
    *(v48 + 24) = v46;

    sub_1007641EC();
    sub_10076B8EC();
    if (v49)
    {
      v50 = sub_10076FF6C();
    }

    else
    {
      v50 = 0;
    }

    [v47 setTitle:v50 forState:0];
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_button] setHidden:1];
  }

  [v43 removeAllGestureRecognizers];
  v51 = sub_1007667DC();
  if (v51)
  {
    v52 = v51;
    v53 = type metadata accessor for TapActionGestureRecognizer();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC20ProductPageExtension26TapActionGestureRecognizer_action] = v52;
    *&v54[OBJC_IVAR____TtC20ProductPageExtension26TapActionGestureRecognizer_objectGraph] = v97;
    v98.receiver = v54;
    v98.super_class = v53;

    v55 = objc_msgSendSuper2(&v98, "initWithTarget:action:", 0, 0);
    [v55 addTarget:v55 action:"execute"];
    [v43 addGestureRecognizer:v55];
  }

  if (sub_10076681C())
  {
    v56 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_backgroundImage];
    [v56 setHidden:0];
    [v6 frame];
    [v6 frame];
    sub_10076BFBC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v56 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    sub_100760C4C();
    sub_10076F64C();
    sub_10076FC1C();
    sub_10075FD2C();
    sub_1006C375C(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760B8C();
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_backgroundImage] setHidden:1];
  }

  result = sub_10076684C();
  v58 = v94;
  if (result)
  {
    v85 = v6;
    v59 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_lockup];
    v60 = result;
    sub_1006C1A9C(v94);
    v61 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v62 = v21;
    v63 = *(v21 + 24);
    v84 = v61;
    v64 = &v59[v61];
    v65 = v95;
    v63(v64, v58, v95);
    swift_endAccess();
    [v59 setNeedsLayout];
    v83 = *(v21 + 8);
    v83(v58, v65);
    v66 = sub_10000A5D4(&qword_100945590);
    v67 = v89;
    (*(*(v66 - 8) + 56))(v89, 1, 1, v66);
    v68 = sub_10075F78C();
    v69 = v90;
    (*(*(v68 - 8) + 56))(v90, 1, 1, v68);
    v70 = sub_1007628DC();
    v71 = v91;
    (*(*(v70 - 8) + 56))(v91, 1, 1, v70);
    v72 = sub_10000A5D4(&unk_100946750);
    v73 = v92;
    (*(*(v72 - 8) + 56))(v92, 1, 1, v72);
    v74 = sub_10076C54C();
    v75 = v93;
    (*(*(v74 - 8) + 56))(v93, 1, 1, v74);
    sub_1004D0A60(v60, v59, v67, v97, 0, 0, v69, v71, v75, v73);
    sub_10000CFBC(v75, &unk_100949290);
    v59[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v59 setNeedsLayout];
    sub_10000CFBC(v73, &qword_10094F730);
    sub_10000CFBC(v71, &unk_1009492A0);
    sub_10000CFBC(v69, &unk_10094D210);
    sub_10000CFBC(v67, &unk_100946760);
    v93 = v60;
    if (sub_10076BB5C())
    {
      v76 = v95;
      (*(v62 + 16))(v58, &v59[v84], v95);
      sub_1007639AC();
      v83(v58, v76);
      v77 = v86;
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v87 + 8))(v77, v88);
      sub_10076BFCC();
      v78 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
      v79 = *&v59[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
      sub_10076BF7C();
      sub_10075FCCC();
      [v79 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();

      [v59 setContentMode:{objc_msgSend(v85, "contentMode")}];
      sub_100760C4C();
      sub_10076F64C();
      sub_10076FC1C();
      v80 = *&v59[v78];
      sub_10075FD2C();
      sub_1006C375C(&qword_100941820, &type metadata accessor for ArtworkView);
      v81 = v80;
      sub_100760B8C();
    }
  }

  return result;
}

uint64_t sub_1006C2D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_1006C2F2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1007693CC();
  __chkstk_darwin(v6 - 8);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007693EC();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076997C();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076682C();
  v13 = sub_100016F40(0, &qword_100942F00);
  if (qword_1009410C0 != -1)
  {
    swift_once();
  }

  v45 = sub_10076D3DC();
  sub_10000A61C(v45, qword_1009A2038);
  v14 = [a4 traitCollection];
  sub_100770B3C();

  v15 = sub_10076C04C();
  v64[3] = v15;
  v44 = sub_1006C375C(&qword_100943230, &type metadata accessor for Feature);
  v64[4] = v44;
  v16 = sub_10000DB7C(v64);
  v17 = *(v15 - 8);
  v18 = *(v17 + 104);
  v43 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v41 = v17 + 104;
  v42 = v18;
  v18(v16);
  sub_10076C90C();
  sub_10000CD74(v64);
  sub_10076996C();
  sub_10076994C();
  v40 = v13;
  v19 = *(v46 + 8);
  v19(v12, v47);
  sub_10076683C();
  v46 = a1;
  if (qword_1009410C8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v45, qword_1009A2050);
  v20 = [a4 traitCollection];
  sub_100770B3C();

  v63[3] = v15;
  v63[4] = v44;
  v21 = sub_10000DB7C(v63);
  v42(v21, v43, v15);
  sub_10076C90C();
  sub_10000CD74(v63);
  sub_10076996C();
  sub_10076994C();
  v19(v12, v47);
  sub_10076685C();
  if (qword_1009410D0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v45, qword_1009A2068);
  v22 = [a4 traitCollection];
  sub_100770B3C();

  v62[3] = v15;
  v62[4] = v44;
  v23 = sub_10000DB7C(v62);
  v42(v23, v43, v15);
  sub_10076C90C();
  sub_10000CD74(v62);
  sub_10076996C();
  sub_10076994C();
  v19(v12, v47);
  v24 = sub_10076DDDC();
  swift_allocObject();
  v25 = sub_10076DDAC();
  v26 = swift_allocObject();
  v26[2] = v46;
  v26[3] = a4;
  v26[4] = v35[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v27 = sub_10076DD9C();
  sub_10013D454(a4, v36);
  v61 = 0;
  *&v59[40] = 0u;
  v60 = 0u;
  sub_10000A570(v64, v59);
  sub_10000A570(v63, &v58);
  sub_10000A570(v62, &v57);
  v55 = v24;
  v56 = &protocol witness table for LayoutViewPlaceholder;
  v54 = v25;

  v28 = [a4 traitCollection];
  sub_10076E20C();

  swift_allocObject();
  v29 = sub_10076DDBC();
  v52 = v24;
  v53 = &protocol witness table for LayoutViewPlaceholder;
  v50 = &protocol witness table for LayoutViewPlaceholder;
  v51 = v29;
  v49 = v24;
  v48 = v27;

  v30 = v37;
  sub_1007693DC();
  sub_1006C375C(&unk_1009544C0, &type metadata accessor for GameCenterReengagementLayout);
  v31 = v39;
  sub_10076D2AC();
  v33 = v32;

  (*(v38 + 8))(v30, v31);
  sub_10000CD74(v62);
  sub_10000CD74(v63);
  sub_10000CD74(v64);
  return v33;
}

uint64_t sub_1006C3700(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1006C375C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1006C37A4(uint64_t a1, CGFloat a2, CGFloat a3, double a4, double a5, double a6, double a7, uint64_t a8, int a9)
{
  v17 = sub_10000A5D4(&qword_100963A88);
  __chkstk_darwin(v17 - 8);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v23 = sub_100766D4C();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v56 - v28;
  v58 = a1;
  sub_10076A74C();
  v59 = a9;
  if (a9)
  {
    v57 = sub_100766D2C();
    sub_10076A70C();
  }

  else
  {
    v57 = sub_100766D3C();
    sub_10076A71C();
  }

  sub_1006C3B3C(v22, v19);
  v30 = sub_10076A6FC();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v19, 1, v30) == 1)
  {
    sub_1006C3BAC(v19);
  }

  else
  {
    sub_1006C3EC8();
    a6 = v32;
    a7 = v33;
    (*(v31 + 8))(v19, v30);
  }

  sub_1006C41F4(a6, a7, a4, a5);
  v35 = v34;
  v37 = v36;
  sub_1006C3BAC(v22);
  v60 = a2;
  v61 = a4;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = sub_1006C4380(v57, 0.0, 0.0, v35, v37, v38, a3, v40, a5);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_10076A74C();
  if (v59)
  {
    sub_100766D0C();
  }

  else
  {
    sub_100766D1C();
  }

  v51 = v49;
  v52 = v50;
  v53 = *(v24 + 8);
  v53(v26, v23);
  v54 = sub_1006C3C14(v52, v51, v60, v39, v61, v41, v42, v44, v46, v48);
  v53(v29, v23);
  return v54;
}

uint64_t sub_1006C3B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100963A88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C3BAC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100963A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1006C3C14(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v52.size.width = a9;
  v52.size.height = a10;
  v52.origin.x = a7;
  v52.origin.y = a8;
  v50 = a2;
  v53 = CGRectOffset(v52, a1, a2);
  x = v53.origin.x;
  width = v53.size.width;
  height = v53.size.height;
  if (a1 > 0.0)
  {
    rect = v53.origin.y;
    v48 = v53.size.width;
    MinX = CGRectGetMinX(v53);
    v54.origin.x = a3;
    v54.origin.y = a4;
    v54.size.width = a5;
    v54.size.height = a6;
    if (CGRectGetMinX(v54) < MinX)
    {
      v55.origin.x = x;
      v55.origin.y = rect;
      v55.size.width = v48;
      v55.size.height = height;
      v47 = CGRectGetMinX(v55);
      v56.origin.x = a3;
      v56.origin.y = a4;
      v56.size.width = a5;
      v56.size.height = a6;
      x = x - (v47 - CGRectGetMinX(v56));
    }

    width = v48;
    v53.origin.y = rect;
  }

  if (a1 < 0.0)
  {
    v27 = x;
    y = v53.origin.y;
    v29 = width;
    v30 = height;
    MaxX = CGRectGetMaxX(v53);
    v57.origin.x = a3;
    v57.origin.y = a4;
    v57.size.width = a5;
    v57.size.height = a6;
    if (MaxX < CGRectGetMaxX(v57))
    {
      v58.origin.x = a3;
      v58.origin.y = a4;
      v58.size.width = a5;
      v58.size.height = a6;
      v32 = CGRectGetMaxX(v58);
      v59.origin.x = x;
      v59.origin.y = y;
      v59.size.width = width;
      v59.size.height = height;
      x = x + v32 - CGRectGetMaxX(v59);
    }

    v53.origin.y = y;
  }

  if (v50 > 0.0)
  {
    v33 = x;
    v34 = v53.origin.y;
    v35 = width;
    v36 = height;
    MinY = CGRectGetMinY(v53);
    v60.origin.x = a3;
    v60.origin.y = a4;
    v60.size.width = a5;
    v60.size.height = a6;
    if (CGRectGetMinY(v60) >= MinY)
    {
      v53.origin.y = v34;
    }

    else
    {
      v61.origin.x = x;
      v61.origin.y = v34;
      v61.size.width = width;
      v61.size.height = height;
      v38 = CGRectGetMinY(v61);
      v62.origin.x = a3;
      v62.origin.y = a4;
      v62.size.width = a5;
      v62.size.height = a6;
      v53.origin.y = v34 - (v38 - CGRectGetMinY(v62));
    }
  }

  if (v50 < 0.0)
  {
    v39 = x;
    v40 = v53.origin.y;
    v41 = width;
    v42 = height;
    v43 = width;
    v44 = a4;
    MaxY = CGRectGetMaxY(v53);
    v63.origin.x = a3;
    v63.origin.y = v44;
    v63.size.width = a5;
    v63.size.height = a6;
    if (MaxY < CGRectGetMaxY(v63))
    {
      v64.origin.x = a3;
      v64.origin.y = v44;
      v64.size.width = a5;
      v64.size.height = a6;
      CGRectGetMaxY(v64);
      v65.origin.x = x;
      v65.origin.y = v40;
      v65.size.width = v43;
      v65.size.height = height;
      CGRectGetMaxY(v65);
    }
  }

  return x;
}

uint64_t sub_1006C3EC8()
{
  v1 = v0;
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076A6FC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.absolute(_:))
  {
    return (*(v7 + 96))(v10, v6);
  }

  if (v11 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalHeight(_:))
  {
    (*(v7 + 96))(v10, v6);
    sub_10076D3AC();
    sub_10076D35C();
    return (*(v3 + 8))(v5, v2);
  }

  if (v11 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalWidth(_:))
  {
    (*(v7 + 96))(v10, v6);
    sub_10076D3AC();
    sub_10076D36C();
    return (*(v3 + 8))(v5, v2);
  }

  if (v11 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalSize(_:))
  {
    return (*(v7 + 96))(v10, v6);
  }

  result = sub_10077156C();
  __break(1u);
  return result;
}

void sub_1006C41F4(double a1, double a2, double a3, double a4)
{
  v8 = sub_10076D39C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  if (a3 > a1 || a4 > a2)
  {
    sub_10076D3AC();
    sub_10076D3AC();
    sub_10076D34C();
    v17 = v16;
    sub_10076D34C();
    v18 = (v9 + 8);
    if (v17 >= v19)
    {
      sub_10076D36C();
    }

    else
    {
      sub_10076D35C();
    }

    v20 = *v18;
    (*v18)(v11, v8);
    v20(v14, v8);
  }
}

double sub_1006C4380(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 - 1 <= 1)
  {
    sub_100770A9C();
    a4 = v17;
    a5 = v18;
  }

  if (a1 > 0xC)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0xA80) != 0)
  {
    v26.origin.x = a6;
    v26.origin.y = a7;
    v26.size.width = a8;
    v26.size.height = a9;
    MinX = CGRectGetMinX(v26);
    goto LABEL_10;
  }

  if (((1 << a1) & 0x1500) != 0)
  {
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    MaxX = CGRectGetMaxX(v24);
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    Width = CGRectGetWidth(v25);
  }

  else
  {
LABEL_8:
    v27.origin.x = a6;
    v27.origin.y = a7;
    v27.size.width = a8;
    v27.size.height = a9;
    MaxX = CGRectGetMidX(v27);
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    Width = CGRectGetMidX(v28);
  }

  MinX = MaxX - Width;
  if (a1 > 0xC)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (((1 << a1) & 0x620) != 0)
  {
    v31.origin.x = a6;
    v31.origin.y = a7;
    v31.size.width = a8;
    v31.size.height = a9;
    CGRectGetMinY(v31);
    return MinX;
  }

  if (((1 << a1) & 0x1840) == 0)
  {
LABEL_14:
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    CGRectGetMidY(v32);
    v33.origin.x = MinX;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    CGRectGetMidY(v33);
    return MinX;
  }

  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetMaxY(v29);
  v30.origin.x = MinX;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetHeight(v30);
  return MinX;
}

uint64_t sub_1006C4580(double a1)
{
  v2 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v2 - 8);
  v45 = &v37 - v3;
  v48 = sub_10076C2DC();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v37 - v10;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_10000A5D4(&qword_100942910);
  v17 = *(sub_10076C20C() - 8);
  v53 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v43 = v19;
  *(v19 + 16) = xmmword_1007844F0;
  v20 = v19 + v18;
  v56 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v55 = 16.0;
  v56 = 0x4020000000000000;
  sub_10076C27C();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v52 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v54 + 104);
  v54 += 104;
  v27 = v48;
  v26(v5);
  v47 = v26;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v56) = 0;
  sub_10076C29C();
  v56 = 0;
  v44 = v8;
  sub_10076C29C();
  v46 = v20;
  v50 = v16;
  v51 = v13;
  sub_10076C1CC();
  v56 = 0x3FF0000000000000;
  sub_10076C29C();
  v55 = 20.0;
  v56 = 0x4024000000000000;
  sub_10076C27C();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v26)(v5, v52, v27);
  LOBYTE(v56) = 0;
  sub_10076C29C();
  v56 = 0;
  sub_10076C29C();
  v31 = v53;
  top = UIEdgeInsetsZero.top;
  v40 = left;
  v42 = bottom;
  sub_10076C1CC();
  v56 = 0x4000000000000000;
  sub_10076C29C();
  v56 = 0x4034000000000000;
  sub_10076C29C();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10076C27C();
  v39 = vdupq_n_s64(0x4041000000000000uLL);
  *v5 = v39;
  v33 = v47;
  v32 = v48;
  (v47)(v5, v52, v48);
  LOBYTE(v56) = 0;
  sub_10076C29C();
  v56 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v38 = 2 * v31 + v53;
  v56 = 0x4000000000000000;
  sub_10076C29C();
  v56 = 0x4034000000000000;
  sub_10076C29C();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10076C27C();
  *v5 = v39;
  (v33)(v5, v52, v32);
  sub_1007704BC();
  LOBYTE(v56) = 0;
  sub_10076C29C();
  v56 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v38 = 4 * v53;
  v56 = 0x4008000000000000;
  sub_10076C29C();
  v56 = 0x4038000000000000;
  sub_10076C29C();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10076C27C();
  v39 = vdupq_n_s64(0x404A000000000000uLL);
  *v5 = v39;
  v34 = v52;
  v35 = v48;
  (v47)(v5, v52, v48);
  LOBYTE(v56) = 0;
  sub_10076C29C();
  v56 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v56 = 0x4008000000000000;
  sub_10076C29C();
  v56 = 0x4038000000000000;
  sub_10076C29C();
  v56 = 0x4030000000000000;
  v55 = a1;
  sub_10076C27C();
  *v5 = v39;
  (v47)(v5, v34, v35);
  LOBYTE(v56) = 0;
  sub_10076C29C();
  v56 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v43;
}

char *sub_1006C4F8C(char *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isExpanded] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_videoMirrorView;
  if (qword_10093F788 != -1)
  {
    swift_once();
  }

  v14[4] = *&byte_10099D030[64];
  v14[5] = *&byte_10099D030[80];
  v14[6] = *&byte_10099D030[96];
  v14[7] = *&byte_10099D030[112];
  v14[0] = *byte_10099D030;
  v14[1] = *&byte_10099D030[16];
  v14[2] = *&byte_10099D030[32];
  v14[3] = *&byte_10099D030[48];
  v5 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *&v1[v4] = sub_1002831F8(0, v14, 1.0, 0.0);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics] = 0;
  v6 = &v1[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkSize];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_pageGrid;
  v8 = sub_10076C38C();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v2[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_sizeCategory] = 7;
  v2[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring] = 0;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for RevealingVideoMirrorView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v9 setClipsToBounds:1];
  v10 = &a1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v10 + 1) = &off_10089FF28;
  swift_unknownObjectWeakAssign();
  sub_10056990C(Strong);

  [v9 addSubview:*&v9[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_videoMirrorView]];
  return v9;
}

uint64_t sub_1006C5214(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkSize;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1006C5230(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_10003BD64(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1006C52FC(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics] = a5;

  sub_10003BDD4(a6, v18);
  v19 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_10003BD64(v18, &v8[v19]);
  swift_endAccess();
  v8[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_sizeCategory] = a7;
  if ((v8[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring] & 1) != 0 || !a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1002837C8(a1);
    swift_unknownObjectWeakAssign();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      if (Strong)
      {
        type metadata accessor for VideoView();
        v23 = Strong;
        v24 = sub_100770EEC();

        if (v24)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    else if (!Strong)
    {
      goto LABEL_12;
    }

    sub_100283DF4();
    v23 = Strong;
LABEL_11:
  }

LABEL_12:
  v25 = &v8[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkSize];
  *v25 = a2;
  *(v25 + 1) = a3;
  v25[16] = a4 & 1;
  return [v8 setNeedsLayout];
}

void sub_1006C5500()
{
  v1 = sub_10076A75C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v43 - v6;
  v8 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_10076C38C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics])
  {
    v15 = &v0[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkSize];
    if ((v0[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkSize + 16] & 1) == 0)
    {
      v43 = v2;
      v17 = *v15;
      v16 = v15[1];
      v18 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(&v0[v18], v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_10005AEAC(v10);
        return;
      }

      (*(v12 + 32))(v14, v10, v11);
      v19 = v0[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_sizeCategory];
      if (v19 != 7)
      {

        [v0 bounds];
        v45.origin.x = 0.0;
        v45.origin.y = 0.0;
        v45.size.width = 0.0;
        v45.size.height = 0.0;
        if (CGRectEqualToRect(v44, v45))
        {
          (*(v12 + 8))(v14, v11);

          return;
        }

        v20 = v0;
        sub_1005B1CD8(v19);
        v21 = v43;
        v22 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v19 != 6)
        {
          v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v19 != 4)
        {
          v22 = v23;
        }

        (*(v43 + 104))(v4, *v22, v1);
        (*(v21 + 32))(v7, v4, v1);
        v24 = sub_1007701CC();

        (*(v21 + 8))(v7, v1);
        v25 = v20[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isExpanded];
        v26 = *&v20[OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_videoMirrorView];
        [v20 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v35 = [v20 traitCollection];
        v36 = sub_1006C37A4(v35, v28, v30, v32, v34, v17, v16, v24, v25);
        v38 = v37;
        v40 = v39;
        v42 = v41;

        [v26 setFrame:{v36, v38, v40, v42}];
      }

      (*(v12 + 8))(v14, v11);
    }
  }
}

id sub_1006C5978()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoMirrorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoMirrorView()
{
  result = qword_100963AE8;
  if (!qword_100963AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006C5A70()
{
  sub_100276FE0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006C5B44()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isExpanded) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_videoMirrorView;
  if (qword_10093F788 != -1)
  {
    swift_once();
  }

  v7[4] = *&byte_10099D030[64];
  v7[5] = *&byte_10099D030[80];
  v7[6] = *&byte_10099D030[96];
  v7[7] = *&byte_10099D030[112];
  v7[0] = *byte_10099D030;
  v7[1] = *&byte_10099D030[16];
  v7[2] = *&byte_10099D030[32];
  v7[3] = *&byte_10099D030[48];
  v3 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *(v0 + v2) = sub_1002831F8(0, v7, 1.0, 0.0);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkLayoutWithMetrics) = 0;
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_artworkSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_pageGrid;
  v6 = sub_10076C38C();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1006C5CF8()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D9AC();
  sub_10000A61C(v4, qword_1009A2368);
  sub_10076D17C();
  sub_10076D40C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_1006C5ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = sub_10076502C();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10076504C();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10076997C();
  v9 = *(v59 - 8);
  __chkstk_darwin(v59);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D3DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940DB0 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v12, qword_1009A1708);
  v55 = a5;
  v17 = [a5 traitCollection];
  v60 = sub_100770B3C();

  (*(v13 + 16))(v15, v16, v12);
  v18 = type metadata accessor for DynamicTypeLinkedLabel();
  v19 = objc_allocWithZone(v18);
  v20 = sub_10050BDFC(v15, 0, 0);
  sub_100760F6C();
  v21 = sub_10076082C();
  v22 = sub_100107BF4(v21, sub_1000368B8);

  v23 = sub_10076081C();
  sub_10050C274(v23, 0, v22);

  result = sub_100760F5C();
  v25 = result;
  if (result >> 62)
  {
    v45 = result;
    result = sub_10077158C();
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
        sub_10077149C();
      }

      else
      {
      }

      sub_100769C3C();
      sub_10076081C();

      v29 = v60;
      v30 = sub_10075F9DC();

      v31 = sub_10076C04C();
      v68 = v31;
      v69 = sub_1006C7038(&qword_100943230, &type metadata accessor for Feature);
      v32 = sub_10000DB7C(v67);
      (*(*(v31 - 8) + 104))(v32, v56, v31);
      v33 = v30;
      v34 = v29;
      sub_10076C90C();
      sub_10000CD74(v67);
      sub_10076993C();
      sub_10076994C();
      (*(v9 + 8))(v11, v59);
      sub_10000A570(v67, &v64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_10049D428(0, v28[2] + 1, 1, v28);
      }

      v36 = v28[2];
      v35 = v28[3];
      if (v36 >= v35 >> 1)
      {
        v28 = sub_10049D428((v35 > 1), v36 + 1, 1, v28);
      }

      ++v27;

      sub_10000CD74(v67);
      v28[2] = v36 + 1;
      sub_10003F19C(&v64, &v28[5 * v36 + 4]);
    }

    while (v26 != v27);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v37 = [v55 traitCollection];
  sub_10076E20C();

  v38 = sub_10076DDDC();
  swift_allocObject();
  v39 = sub_10076DDBC();
  if (qword_10093F7A8 != -1)
  {
    swift_once();
  }

  v40 = v49;
  v41 = sub_10000A61C(v49, qword_10099D0C8);
  (*(v48 + 16))(v51, v41, v40);
  sub_100760F4C();
  v68 = v47;
  v69 = &protocol witness table for UIView;
  v67[0] = v46;
  v42 = v46;
  sub_10016D554(v28);

  v65 = v38;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v63 = &protocol witness table for LayoutViewPlaceholder;
  *&v64 = v39;
  v62 = v38;
  v61 = v39;
  swift_retain_n();
  v43 = v52;
  sub_10076503C();
  sub_1006C7038(&unk_100956E70, &type metadata accessor for PrivacyHeaderLayout);
  v44 = v54;
  sub_10076D2AC();

  return (*(v53 + 8))(v43, v44);
}

size_t sub_1006C674C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v7 = sub_10076E1EC();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  __chkstk_darwin(v7);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009467C0);
  __chkstk_darwin(v10 - 8);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v58 - v13;
  v68 = sub_10000A5D4(&unk_1009567A0);
  v14 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v58 - v15;
  v16 = sub_10000A5D4(&qword_1009459C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v70[0] = sub_100760F6C();
  sub_10076083C();
  v19 = sub_10076F64C();
  sub_1006C7038(&qword_1009467D0, &type metadata accessor for LinkableText);
  v69 = a3;
  v66 = v19;
  sub_10076F56C();

  v20 = sub_10000A5D4(&qword_1009459B8);
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v21 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_1000A912C(v18, v4 + v21, &qword_1009459C0);
  swift_endAccess();
  sub_1001063C8();
  sub_10000CFBC(v18, &qword_1009459C0);
  LOBYTE(v19) = sub_100760F4C();
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader) = v19 & 1;
  v22 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyLabel);
  sub_100016F40(0, &qword_100942F10);
  if (v19)
  {
    v23 = sub_100770CFC();
  }

  else
  {
    v23 = sub_100770D1C();
  }

  v24 = *(v22 + qword_10095B640);
  *(v22 + qword_10095B640) = v23;
  v25 = v23;
  if ((sub_100770EEC() & 1) == 0)
  {
    sub_10050C644();
  }

  v26 = sub_100760F5C();
  if (v26 >> 62)
  {
    v57 = v26;
    v27 = sub_10077158C();
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
    result = sub_1004BB920(0, v27 & ~(v27 >> 63), 0);
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
        v35 = sub_10077149C();
      }

      else
      {
        v35 = *(v32 + 8 * v30 + 32);
      }

      v73 = v35;
      sub_100769C4C();
      sub_1006C7038(&qword_1009567B0, &type metadata accessor for PrivacyHeaderSupplementaryItem);
      v36 = v67;
      sub_10076F56C();

      v70[0] = v31;
      v38 = v31[2];
      v37 = v31[3];
      if (v38 >= v37 >> 1)
      {
        sub_1004BB920(v37 > 1, v38 + 1, 1);
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

  sub_100107E88();
  v39 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems) = v31;

  sub_10010666C();
  if (sub_100760F4C())
  {
    v40 = *(v63 + 104);
    v63 += 104;
    v41 = v58;
    LODWORD(v68) = enum case for Separator.Position.top(_:);
    v67 = v40;
    (v40)(v58);
    v42 = sub_10076D67C();
    v71 = v42;
    v72 = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v70);
    sub_10076D66C();
    v43 = v61;
    sub_10076E1FC();
    v44 = sub_10076E21C();
    v45 = 1;
    v69 = *(*(v44 - 8) + 56);
    v69(v43, 0, 1, v44);
    v46 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_1000A912C(v43, v64 + v46, &unk_1009467C0);
    swift_endAccess();
    sub_100106E28();
    v47 = v64;
    sub_10000CFBC(v43, &unk_1009467C0);
    if (*(*(v47 + v39) + 16))
    {
      (v67)(v41, v68, v62);
      v71 = v42;
      v72 = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v70);
      sub_10076D66C();
      v48 = v59;
      sub_10076E1FC();
      v45 = 0;
    }

    else
    {
      v48 = v59;
    }

    v69(v48, v45, 1, v44);
    v56 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v47 + v56;
    v55 = v48;
  }

  else
  {
    v49 = sub_10076E21C();
    v50 = *(*(v49 - 8) + 56);
    v48 = v61;
    v50(v61, 1, 1, v49);
    v51 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_1000A912C(v48, v64 + v51, &unk_1009467C0);
    swift_endAccess();
    sub_100106E28();
    sub_10000CFBC(v48, &unk_1009467C0);
    v50(v48, 1, 1, v49);
    v52 = v64;
    v53 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v52 + v53;
    v55 = v48;
  }

  sub_1000A912C(v55, v54, &unk_1009467C0);
  swift_endAccess();
  sub_100106E3C();
  return sub_10000CFBC(v48, &unk_1009467C0);
}

uint64_t sub_1006C7038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006C7080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v60 = a6;
  v9 = sub_10000A5D4(&qword_100963B40);
  __chkstk_darwin(v9 - 8);
  v54 = &v50 - v10;
  v64 = sub_10076F1BC();
  v11 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v50 = &v50 - v14;
  v15 = sub_10076F68C();
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = &v50 - v18;
  sub_100760C4C();
  sub_10076F63C();
  v19 = v70;
  if (!v70)
  {
    result = sub_10076F5DC();
    __break(1u);
    return result;
  }

  swift_allocObject();

  v58 = v19;
  v20 = sub_100760C2C();
  v21 = sub_10000A5D4(&qword_10094F420);
  v22 = *(v11 + 72);
  v63 = v11;
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v53 = 2 * v22;
  v52 = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100784500;
  v67 = v23;
  *&v70 = v20;
  v56 = v20;

  sub_10076F19C();
  sub_10000A5D4(&unk_1009467A0);
  type metadata accessor for LinkPresentationProvider();
  *&v70 = swift_allocObject();
  swift_allocObject();
  *&v70 = sub_10075F75C();
  sub_10076F19C();
  v73 = v24;
  v61 = a4;
  v62 = a1;
  if (a2)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      swift_unknownObjectRetain();
      sub_1007657AC();
      v25 = sub_1007657BC();
      v51 = v26;
      v66 = v25;
      swift_unknownObjectRetain();
      v27 = sub_1007657CC();
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  sub_10076139C();
  sub_10076FC1C();
  sub_10076FA4C();
  sub_10076131C();
  v28 = sub_10076FA3C();
  sub_10076615C();
  swift_allocObject();
  swift_retain_n();
  v66 = v28;
  v27 = sub_10076612C();

  if (a2)
  {
    v51 = &protocol witness table for BasicImpressionsTracker;
LABEL_7:
    swift_getObjectType();
    v29 = swift_conformsToProtocol2();
    v65 = v27;
    if (v29)
    {
      sub_1007698FC();
      swift_getObjectType();
      swift_unknownObjectRetain();

      *&v70 = sub_10076AB8C();
      v30 = v50;
      sub_10076F19C();
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        v24 = sub_10049DC98(v31 > 1, v32 + 1, 1, v24);
      }

      v33 = v67;
      swift_unknownObjectRelease();
      *(v24 + 16) = v32 + 1;
      (*(v63 + 32))(v24 + v33 + v32 * v22, v30, v64);
      v73 = v24;
    }

    else
    {
    }

    goto LABEL_13;
  }

  v51 = &protocol witness table for BasicImpressionsTracker;
  v65 = v27;
LABEL_13:
  v50 = (8 * v22);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10078B310;
  sub_100762F0C();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v34 = v68;
  v35 = v69;
  v36 = *(v68 + 16);
  v37 = v54;
  v36(v54, v69, v15);
  (*(v34 + 56))(v37, 0, 1, v15);
  swift_allocObject();
  *&v70 = sub_100762EFC();
  sub_10076F19C();
  v38 = sub_100767D5C();
  sub_10076925C();
  v39 = sub_10076924C();
  sub_10076922C();

  v40 = v55;
  v36(v55, v35, v15);
  v41 = objc_allocWithZone(v38);
  *&v70 = sub_100767D1C();
  sub_10076F19C();
  *&v70 = [objc_allocWithZone(sub_100764FAC()) init];
  sub_10076F19C();
  v36(v40, v35, v15);
  sub_10076F19C();
  sub_10000A5D4(&qword_1009552D8);
  *&v70 = v66;
  *(&v70 + 1) = v51;
  sub_10076F19C();
  sub_10076615C();
  *&v70 = v65;
  sub_10076F19C();
  type metadata accessor for TodayCardOverlayReusePool();
  swift_allocObject();
  *&v70 = sub_1006BCE40(25);
  sub_10076F19C();
  type metadata accessor for TodayCardGridTracker();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1000FC9A4(_swiftEmptyArrayStorage);
  *&v70 = v42;
  sub_10076F19C();
  sub_1000F9700(v52);
  sub_10075E33C();
  swift_allocObject();

  *&v70 = sub_10075E34C();
  v43 = v57;
  sub_10076F19C();
  v44 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_10049DC98(0, *(v44 + 2) + 1, 1, v44);
  }

  v45 = v61;
  v47 = *(v44 + 2);
  v46 = *(v44 + 3);
  if (v47 >= v46 >> 1)
  {
    v44 = sub_10049DC98(v46 > 1, v47 + 1, 1, v44);
  }

  *(v44 + 2) = v47 + 1;
  (*(v63 + 32))(&v44[v67 + v47 * v22], v43, v64);
  sub_10076F64C();

  sub_10076F5FC();
  *&v70 = v44;
  sub_10000A5D4(&qword_100943F98);
  sub_1006C7ADC();
  sub_10076F61C();

  *&v70 = v45;
  sub_10076F61C();

  v48 = sub_10076F62C();

  swift_unknownObjectRelease();

  (*(v68 + 8))(v69, v15);
  return v48;
}

unint64_t sub_1006C7ADC()
{
  result = qword_100943FA0;
  if (!qword_100943FA0)
  {
    sub_10000CE78(&qword_100943F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943FA0);
  }

  return result;
}

uint64_t sub_1006C7B40(uint64_t a1, uint64_t a2)
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
    sub_1006BD2F4(v7, v9, v10, v11 & 1);

    swift_unknownObjectRelease();
  }

  (*(a2 + 16))(0, 1, a1, a2);
  (*(a2 + 40))(0, 0, a1, a2);
  v12 = *(a2 + 64);

  return v12(0, a1, a2);
}

uint64_t sub_1006C7CCC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a4;
  v43 = a3;
  v42 = a2;
  v10 = sub_10076C7EC();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100766EBC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C77C();
  v17 = sub_100766E7C();
  result = (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    result = sub_10076C83C();
    if (result)
    {
      v19 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_10076F63C();
      v41 = v47[0];
      if (v47[0])
      {
        v39 = v10;
        (*(a6 + 8))(a5, a6);
        v21 = v20;
        sub_100762DEC();
        if ((v21 & 1) != 0 || (v22 = sub_100762DDC(), v22 != sub_100762DDC()))
        {
          v23 = sub_100762DEC();
          v24 = sub_1006BD024(v23);
          ObjectType = v19;
          v25 = a5;
          v27 = v26;
          v28 = *(a6 + 32);
          swift_unknownObjectRetain();
          v29 = v28(v25, a6);
          (*(a6 + 80))(v24, v27, v29, v30, v25, a6);
          swift_unknownObjectRelease();
          v31 = sub_100762DEC();
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
          v47[3] = sub_100762DFC();
          v47[4] = sub_10003BD0C();
          v47[0] = v19;

          sub_10076C80C();
          sub_100760C4C();
          sub_10076F64C();
          v37 = v45;
          sub_10076FC1C();
          (*(v36 + 112))(v47, v37, v42, v12, v43, v46, ObjectType, v36);
          swift_unknownObjectRelease();

          (*(v44 + 8))(v12, v39);
          sub_10000CD74(v47);
        }

        (*(a6 + 88))(a5, a6);
        [v7 setNeedsLayout];
      }
    }
  }

  return result;
}

char *sub_1006C8164(uint64_t a1, uint64_t a2)
{
  v5 = sub_100765B7C();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = &v33 - v9;
  v10 = sub_10076048C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_100963B78) = 0;
  *(v2 + qword_100963B80) = 0;
  *(v2 + qword_100963B88) = 0;
  *(v2 + qword_100963B90) = 0;
  *(v2 + qword_100963B98) = 0;

  v14 = sub_100483244(a1, a2);
  v14[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
  v15 = v14;
  v16 = [v15 navigationItem];
  [v16 setLargeTitleDisplayMode:2];

  v17 = sub_10076C03C();
  v38[3] = v17;
  v38[4] = sub_1006CB02C(&qword_100947230, &type metadata accessor for Feature.iOS);
  v18 = sub_10000DB7C(v38);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = sub_10076C90C();
  sub_10000CD74(v38);
  if (v17)
  {
    v19 = [v15 navigationItem];
    sub_10076AB4C();
    if (v20)
    {
      v21 = sub_10076FF6C();
    }

    else
    {
      v21 = 0;
    }

    [v19 setTitle:v21];

LABEL_12:
    goto LABEL_13;
  }

  (*(v11 + 104))(v13, enum case for SystemImage.listBullet(_:), v10);
  v22 = sub_10076046C();
  (*(v11 + 8))(v13, v10);
  v23 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v22 style:0 target:v15 action:"toggleDisplayStyleWithAction:"];

  v24 = qword_100963B78;
  v25 = *&v15[qword_100963B78];
  *&v15[qword_100963B78] = v23;

  v26 = [v15 navigationItem];
  v27 = *&v15[v24];
  [v26 setRightBarButtonItem:v27];

  v28 = *&v15[v24];
  if (v28)
  {
    v33 = a2;
    v21 = v28;
    sub_10076AACC();
    (*(v35 + 104))(v7, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v5);
    sub_1006CB02C(&qword_100946810, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle);
    sub_10077018C();
    sub_10077018C();
    if (v38[0] == v36 && v38[1] == v37)
    {
      v29 = v7;
      v30 = 1;
    }

    else
    {
      v29 = v7;
      v30 = sub_10077167C();
    }

    v31 = *(v35 + 8);
    v31(v29, v5);
    v31(v34, v5);

    [v21 setSelected:v30 & 1];
    goto LABEL_12;
  }

LABEL_13:

  return v15;
}

id sub_1006C8694()
{
  v1 = qword_100963B80;
  v2 = *(v0 + qword_100963B80);
  if (v2)
  {
    v3 = *(v0 + qword_100963B80);
  }

  else
  {
    v4 = sub_1006CAD80();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1006C86F4()
{
  v0 = sub_10077111C();
  sub_10000DB18(v0, qword_100963B60);
  sub_10000A61C(v0, qword_100963B60);
  sub_1007710CC();
  v1 = sub_10076FF6C();
  v2 = [objc_opt_self() systemImageNamed:v1];

  sub_1007710BC();
  v3 = [objc_opt_self() configurationWithScale:1];
  sub_100770F4C();
  sub_100770FBC();
  return sub_100770FFC();
}

void sub_1006C87DC(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_10076857C();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v11 = v5;

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_10076856C();
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 setHidden:*&v1[v3] != 0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1006C891C(void *a1)
{
  v2 = *&v1[qword_100963B88];
  *&v1[qword_100963B88] = a1;
  if (a1)
  {
    v5 = v2;
    v3 = a1;
    [v1 presentViewController:v3 animated:1 completion:0];
LABEL_3:

    goto LABEL_4;
  }

  if (!v2)
  {
    return;
  }

  v5 = v2;
  v4 = [v2 presentingViewController];
  if (v4)
  {
    v3 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_3;
  }

LABEL_4:
}

void sub_1006C89E4(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *&v1[qword_100963B90];
    if (!v3 || (v4 = a1, type metadata accessor for PageFacetsViewController(0), v5 = v4, v6 = v3, LOBYTE(v4) = sub_100770EEC(), v5, v6, (v4 & 1) == 0))
    {
      v7 = *&v2[qword_100963B88];
      *&v2[qword_100963B88] = 0;
      if (v7)
      {
        v8 = [v7 presentingViewController];
        if (v8)
        {
          v9 = v8;
          [v8 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }

  v10 = *&v2[qword_100963B90];
  if (v10)
  {
    *&v10[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_delegate + 8] = &off_10089FFB0;
    swift_unknownObjectWeakAssign();
    v11 = objc_allocWithZone(UINavigationController);
    v12 = v10;
    v13 = [v11 initWithRootViewController:v12];
    v14 = [v13 view];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = [objc_opt_self() systemBackgroundColor];
    [v15 setBackgroundColor:v16];

    [v13 setModalPresentationStyle:7];
    v17 = [v13 presentationController];
    if (v17)
    {
      v18 = v17;
      [v17 setDelegate:v2];
    }

    [v13 setPreferredContentSize:{450.0, 450.0}];
    v19 = [v13 popoverPresentationController];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1006C8694();
      [v20 setSourceView:v21];
    }

    v22 = [v13 popoverPresentationController];
    if (v22)
    {
      v23 = v22;
      [v22 setPermittedArrowDirections:1];
    }

    v24 = [v13 popoverPresentationController];

    if (v24)
    {
      v25 = sub_1006C8694();
      v26 = [v25 titleLabel];

      if (v26)
      {
        [v26 frame];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = v34;
        v36 = v32;
        v37 = v30;
        v38 = v28;
      }

      else
      {
        [*&v2[qword_100963B80] bounds];
      }

      MidX = CGRectGetMidX(*&v38);
      [*&v2[qword_100963B80] bounds];
      [v24 setSourceRect:{MidX, CGRectGetMaxY(v46), 10.0, 10.0}];
    }

    v44 = *&v2[qword_100963B88];
    *&v2[qword_100963B88] = v13;
    v43 = v13;
    [v2 presentViewController:v43 animated:1 completion:0];
  }

  else
  {
    v39 = *&v2[qword_100963B88];
    *&v2[qword_100963B88] = 0;
    if (!v39)
    {
      return;
    }

    v44 = v39;
    v40 = [v39 presentingViewController];
    if (v40)
    {
      v41 = v40;
      [v40 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_1006C8E24()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 titleView];

  v4 = sub_1006C8694();
  v5 = v4;
  if (v3)
  {
    sub_100016F40(0, &qword_1009441F0);
    v6 = sub_100770EEC();

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = qword_100963B80;
  [*&v1[qword_100963B80] setAlpha:0.0];
  v8 = [v1 navigationItem];
  [v8 setTitleView:*&v1[v7]];

  v9 = [v1 navigationItem];
  v10 = [v9 navigationBar];

  if (v10)
  {
    [v10 layoutIfNeeded];
  }

LABEL_7:
  v11 = qword_100963B80;
  v12 = qword_100963B98;
  v13 = 0.0;
  if (v1[qword_100963B98])
  {
    v13 = 1.0;
  }

  [*&v1[qword_100963B80] setAlpha:v13];
  v14 = *&v1[v11];
  v15 = v1[v12];

  return [v14 setUserInteractionEnabled:v15];
}

void sub_1006C8FC4()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = sub_1006C8694();
  sub_100016F40(0, &qword_1009641D0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_100770F1C();
  [v1 addAction:v3 forControlEvents:{64, 0, 0, 0, sub_1006CB558, v2}];
}

void sub_1006C90BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1006C9110();
  }
}

void sub_1006C9110()
{
  v1 = v0;
  sub_10076AB2C();
  v2 = sub_10076AAAC();
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v4 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v5 = sub_10067A804(v2, 1, v3);

  v7 = *(v1 + qword_100963B90);
  *(v1 + qword_100963B90) = v5;
  v6 = v5;
  sub_1006C89E4(v7);
}

void sub_1006C91E8(void *a1)
{
  v1 = a1;
  sub_1006C8FC4();
}

id sub_1006C9230(id a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {
  }

  v10 = sub_10077167C();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    v12 = sub_1006C8694();
    [v12 sizeToFit];

    return [*&v1[qword_100963B80] setNeedsLayout];
  }

  return result;
}

void sub_1006C9394(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1006C9230(a3);
}

uint64_t sub_1006C9400()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10000A5D4(&unk_10094F490);
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v22 = &v22 - v2;
  v3 = sub_10000A5D4(&qword_100964180);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v22 - v4;
  v25 = sub_10000A5D4(&unk_100964188);
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v22 - v6;
  sub_1006E0C94();
  v8 = *(v0 + qword_10099E360);
  sub_10076AB0C();
  v9 = sub_100016F40(0, &qword_1009471F0);
  v10 = sub_10077068C();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v10;
  sub_10000A5D4(&qword_100964198);
  sub_100071820(&unk_1009641A0, &qword_100964198);
  v30 = v0;
  sub_10076F46C();
  v11 = v8;

  (*(v5 + 8))(v7, v25);
  sub_10000CD74(v31);
  sub_10076AAAC();
  sub_100764EDC();

  v12 = sub_10077068C();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v12;
  v25 = sub_10000A5D4(&unk_10094F4A0);
  sub_100071820(&unk_1009641B0, &unk_10094F4A0);
  v13 = v27;
  sub_10076F46C();

  v14 = v29;
  v15 = *(v28 + 8);
  v15(v13, v29);
  sub_10000CD74(v31);
  v28 = v11;
  sub_10076AAAC();
  sub_100764EEC();

  v16 = sub_10077068C();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v16;
  sub_10076F46C();

  v15(v13, v14);
  sub_10000CD74(v31);
  v17 = sub_10076C03C();
  v32 = v17;
  v33 = sub_1006CB02C(&qword_100947230, &type metadata accessor for Feature.iOS);
  v18 = sub_10000DB7C(v31);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = sub_10076C90C();
  result = sub_10000CD74(v31);
  if (v17)
  {
    sub_10076AAAC();
    sub_100764E8C();

    v20 = sub_10077068C();
    v32 = v9;
    v33 = &protocol witness table for OS_dispatch_queue;
    v31[0] = v20;
    sub_10000A5D4(&unk_10094F4B0);
    sub_100071820(&qword_1009641C0, &unk_10094F4B0);
    v21 = v22;
    sub_10076F46C();

    (*(v23 + 8))(v21, v24);
    return sub_10000CD74(v31);
  }

  return result;
}

void sub_1006C99E4(uint64_t a1)
{
  v2 = sub_10076AAFC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_1009641C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  sub_100016E2C(a1, &v20 - v7, &qword_1009641C8);
  v9 = (*(v3 + 48))(v8, 1, v2);
  v10 = 0;
  if (v9 != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = sub_10076AADC();
    v13 = v12;
    v14 = sub_10076AAEC();
    v16 = v15;
    v17 = objc_allocWithZone(type metadata accessor for EmptyStateView());
    sub_10070982C(v11, v13, v14, v16);
    v18 = objc_allocWithZone(sub_10076617C());
    v19 = sub_10076616C();
    (*(v3 + 8))(v5, v2);
    v10 = v19;
  }

  sub_1006C87DC(v10);
}

void (*sub_1006C9BE0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006CB518;
}

void (*sub_1006C9C44(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006CB4FC;
}

void (*sub_1006C9CA8(void *a1))(uint64_t)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006CB570;
}

void sub_1006C9D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100964138);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-1] - v5;
  v7 = sub_10000A5D4(&unk_10094F4C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23[-1] - v8;
  v10 = sub_10076C03C();
  v23[3] = v10;
  v23[4] = sub_1006CB02C(&qword_100947230, &type metadata accessor for Feature.iOS);
  v11 = sub_10000DB7C(v23);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v10);
  LOBYTE(v10) = sub_10076C90C();
  sub_10000CD74(v23);
  if (v10)
  {
    sub_1006CA420();
  }

  else
  {
    sub_100764EAC();
    v12 = sub_10075F8EC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_10000CFBC(v9, &unk_10094F4C0);
      v14 = 0;
    }

    else
    {
      v15 = sub_10075F7CC();
      (*(v13 + 8))(v9, v12);
      v16 = *(v15 + 16);

      v14 = v16 != 0;
    }

    *(a2 + qword_100963B98) = v14;
    sub_1006C8E24();
    v17 = sub_1006C8694();
    sub_100764F2C();
    v18 = sub_100764EBC();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v6, a1, v18);
    (*(v19 + 56))(v6, 0, 1, v18);
    sub_100764E7C();
    sub_10000CFBC(v6, &qword_100964138);
    v20 = sub_10076FF6C();

    [v17 setTitle:v20 forState:0];

    v21 = qword_100963B80;
    [*(a2 + qword_100963B80) sizeToFit];
    [*(a2 + v21) setNeedsLayout];
  }
}

uint64_t sub_1006CA078(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009428E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  sub_10076F64C();
  sub_10076FC1C();
  sub_100263BF0(a1, 1, v8, v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t (*sub_1006CA190(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006CB154;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000B8F0C;
}

unint64_t sub_1006CA220@<X0>(uint64_t *a1@<X8>)
{
  sub_100760F1C();
  swift_allocObject();
  v2 = sub_100760F0C();
  a1[3] = &type metadata for ArcadeSeeAllGamesPageGridProvider;
  result = sub_1006CB0C8();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_1006CA278@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArcadeSeeAllGamesPageShelfLayoutSectionProvider;
  result = sub_1006CB074();
  *(a1 + 32) = result;
  return result;
}

void sub_1006CA2AC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100964160);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  sub_1007371C4(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_100767D5C();
    sub_10076F64C();
    sub_10076FC1C();
    v6 = v7[1];
    sub_100767CCC();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_1006CA420()
{
  v1 = v0;
  v2 = sub_100765B7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076AAAC();
  sub_10076AACC();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = v1;
  v9 = sub_1000AA550(v6, v5, sub_1006CB194, v7);

  (*(v3 + 8))(v5, v2);
  sub_100016F40(0, &qword_100958FF0);
  v10 = [(objc_class *)v9 image];
  v11 = v9;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v15.value.super.isa = v10;
  v15.is_nil = 0;
  v16.value.super.super.isa = v9;
  isa = sub_10077055C(v18, v15, v16, v17).super.super.isa;
  v13 = [v8 navigationItem];
  [v13 setRightBarButtonItem:isa];
}

void sub_1006CA5FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1006CB1B8();
}

void sub_1006CA65C(void *a1)
{
  v1 = a1;
  sub_10076AB3C();
  sub_1006C891C(0);
}

uint64_t sub_1006CA6BC(uint64_t a1)
{
  v2 = sub_10075DB7C();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100964140);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_10005C684(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_10005C6E8(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000A5D4(&unk_100964150);
  sub_100050DA4(&v9[*(v19 + 48)], v18);
  sub_100765E7C();
  v20 = *(v4 + 48);
  sub_100016E2C(v15, v6, &unk_1009435D0);
  sub_100016E2C(v18, &v6[v20], &unk_1009435D0);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100016E2C(v6, v12, &unk_1009435D0);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_1006CB02C(&qword_100944C38, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_10076FF1C();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000CFBC(v15, &unk_1009435D0);
      sub_10000CFBC(v18, &unk_1009435D0);
      v27(v12, v2);
      sub_10000CFBC(v6, &unk_1009435D0);
      return v23 & 1;
    }

    sub_10000CFBC(v15, &unk_1009435D0);
    sub_10000CFBC(v18, &unk_1009435D0);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000CFBC(v15, &unk_1009435D0);
  sub_10000CFBC(v18, &unk_1009435D0);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000CFBC(v6, &unk_100964140);
    goto LABEL_9;
  }

  sub_10000CFBC(v6, &unk_1009435D0);
  v23 = 1;
  return v23 & 1;
}

void sub_1006CAB78()
{
  v1 = *(v0 + qword_100963B90);
}

void sub_1006CABD8(uint64_t a1)
{
  v2 = *(a1 + qword_100963B90);
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController()
{
  result = qword_100963BC8;
  if (!qword_100963BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006CACEC()
{
  sub_10076AB3C();
  v1 = *(v0 + qword_100963B90);
  *(v0 + qword_100963B90) = 0;
  sub_1006C89E4(v1);
}

id sub_1006CAD80()
{
  v0 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_10000A5D4(&qword_100964138);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = [objc_opt_self() buttonWithType:1];
  sub_100764F2C();
  v7 = sub_100764EBC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_100764E7C();
  sub_10000CFBC(v5, &qword_100964138);
  v8 = sub_10076FF6C();

  [v6 setTitle:v8 forState:0];

  if (qword_1009414E0 != -1)
  {
    swift_once();
  }

  v9 = sub_10077111C();
  v10 = sub_10000A61C(v9, qword_100963B60);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v2, v10, v9);
  (*(v11 + 56))(v2, 0, 1, v9);
  sub_10077114C();
  v12 = v6;
  [v12 setAlpha:0.0];
  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  [v12 setPointerInteractionEnabled:1];
  return v12;
}

uint64_t sub_1006CB02C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006CB074()
{
  result = qword_100964168;
  if (!qword_100964168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100964168);
  }

  return result;
}

unint64_t sub_1006CB0C8()
{
  result = qword_100964170;
  if (!qword_100964170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100964170);
  }

  return result;
}

uint64_t sub_1006CB11C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006CB15C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1006CB1B8()
{
  v1 = v0;
  v2 = sub_100765B7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18[-1] - v7;
  sub_10076AB1C();
  sub_10076AACC();
  (*(v3 + 104))(v5, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v2);
  sub_1006CB02C(&qword_100946810, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle);
  sub_10077018C();
  sub_10077018C();
  if (v18[0] == v18[5] && v18[1] == v18[6])
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10077167C();
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);

  v11 = sub_10076C03C();
  v18[3] = v11;
  v18[4] = sub_1006CB02C(&qword_100947230, &type metadata accessor for Feature.iOS);
  v12 = sub_10000DB7C(v18);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v11);
  LOBYTE(v11) = sub_10076C90C();
  v13 = sub_10000CD74(v18);
  if (v11)
  {
    sub_1006CA420(v13);
  }

  else
  {
    v14 = [v1 navigationItem];
    v15 = [v14 rightBarButtonItem];

    [v15 setSelected:v9 & 1];
  }

  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v16 = v18[0];
  if (v9)
  {
    sub_100767CAC();
  }

  else
  {
    sub_100767CDC();
  }
}

uint64_t sub_1006CB520()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1006CB578()
{
  result = qword_100950DA8;
  if (!qword_100950DA8)
  {
    type metadata accessor for GameCenterActivityFeedCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950DA8);
  }

  return result;
}

double sub_1006CB5D0()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  v6 = sub_100630CB4();
  swift_getObjectType();
  sub_100582810(v6, v5);
  v8 = v7;
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1006CB714()
{
  v1 = qword_100944BA0;
  if (*(v0 + qword_100944BA0))
  {
    v2 = *(v0 + qword_100944BA0);
  }

  else
  {
    type metadata accessor for UberedPageScrollObserver();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 88) = 1;
    *(v2 + 24) = &off_100885A30;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(v2 + 72);
    *(v2 + 72) = sub_1006CC33C;
    *(v2 + 80) = v3;

    sub_1000167E0(v4);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1006CB828()
{
  v1 = qword_100944BB0;
  if (*(v0 + qword_100944BB0))
  {
    v2 = *(v0 + qword_100944BB0);
  }

  else
  {
    sub_1006CB714();
    type metadata accessor for UberedCollectionElementsObserver();
    v2 = swift_allocObject();
    swift_weakInit();
    *(v2 + 24) = 0;
    swift_weakAssign();

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1006CB8CC(double a1)
{
  v3 = sub_10075D9EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_10000A5D4(&qword_100942698);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_10075D99C();
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = qword_10099CA58;
  if (*&v1[qword_10099CA58] != a1)
  {
    v44 = v4;
    v45 = v3;
    v21 = v1;
    v22 = v17;
    v23 = [v1 navigationItem];
    sub_1007705CC();

    if ((*(v22 + 48))(v15, 1, v16) == 1)
    {
      sub_10000CFBC(v15, &qword_100942698);
    }

    else
    {
      v43 = v22;
      (*(v22 + 32))(v19, v15, v16);
      v41 = v21;
      v42 = [v21 navigationItem];
      v40 = sub_10000A5D4(&unk_10094E7E0);
      inited = swift_initStackObject();
      v39 = xmmword_100783DD0;
      *(inited + 16) = xmmword_100783DD0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v25 = objc_opt_self();
      v37 = v25;
      v38 = NSForegroundColorAttributeName;
      v26 = [v25 labelColor];
      v27 = [v26 colorWithAlphaComponent:a1];

      v36 = sub_1000325F0();
      *(inited + 64) = v36;
      *(inited + 40) = v27;
      sub_1000FC5F4(inited);
      swift_setDeallocating();
      sub_10000CFBC(inited + 32, &unk_100948B10);
      sub_10075DA0C();
      v28 = swift_initStackObject();
      *(v28 + 16) = v39;
      *(v28 + 32) = v38;
      v29 = [v37 labelColor];
      v30 = [v29 colorWithAlphaComponent:*&v41[v20]];

      *(v28 + 64) = v36;
      *(v28 + 40) = v30;
      sub_1000FC5F4(v28);
      swift_setDeallocating();
      sub_10000CFBC(v28 + 32, &unk_100948B10);
      sub_10075DA0C();
      sub_1006CC2F4(&unk_100954490, &type metadata accessor for AttributedString);
      sub_10075DA8C();
      v31 = *(v44 + 8);
      v32 = v45;
      v31(v6, v45);
      v31(v9, v32);
      v33 = v43;
      (*(v43 + 56))(v12, 0, 1, v16);
      v34 = v42;
      sub_1007705DC();

      (*(v33 + 8))(v19, v16);
    }
  }
}

char *sub_1006CBE2C(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_1009A3270) = 0;
  *(v2 + qword_10099CA58) = 0x3FF0000000000000;
  *(v2 + qword_100944BA0) = 0;
  *(v2 + qword_100944BA8) = 0x4034000000000000;
  *(v2 + qword_10099CA60) = 0;
  *(v2 + qword_100944BB0) = 0;

  v5 = sub_100483C38(a1, a2);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NavigationBarVisibilityScrollObserver();
  v7 = swift_allocObject();
  *(v7 + 32) = xmmword_100788B30;
  *(v7 + 16) = sub_1006CC2EC;
  *(v7 + 24) = v6;
  v8 = qword_1009A3270;
  *&v5[qword_1009A3270] = v7;
  v9 = v5;

  v10 = *&v9[qword_10099E390];

  if (*&v5[v8])
  {
    sub_1006CC2F4(&qword_100946578, type metadata accessor for NavigationBarVisibilityScrollObserver);
  }

  sub_10076668C();

  return v9;
}

void sub_1006CBFE8(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_10099CA58);
    *(Strong + qword_10099CA58) = a1;
    sub_1006CB8CC(v4);
  }
}

uint64_t sub_1006CC05C()
{
  sub_10000A5D4(&qword_100942480);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100784500;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 24) = &off_1008A00D8;
  swift_unknownObjectWeakAssign();
  v2 = sub_1006CC2F4(&qword_100946580, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100784500;
  *(v3 + 32) = sub_1006DE6C0();
  *(v3 + 40) = v4;
  v5 = sub_1006CB828();
  v6 = sub_1006CC2F4(&qword_100944C58, type metadata accessor for UberedCollectionElementsObserver);
  *(v3 + 48) = v5;
  *(v3 + 56) = v6;
  sub_10076A43C();
  swift_allocObject();
  *(v0 + 48) = sub_10076A42C();
  *(v0 + 56) = &protocol witness table for CompoundCollectionElementsObserver;
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t type metadata accessor for GenericDiffablePageViewController()
{
  result = qword_100964208;
  if (!qword_100964208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006CC2B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006CC2F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006CC354(unsigned __int8 *a1, unsigned __int8 *a2)
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

uint64_t sub_1006CC39C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_10076664C();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = sub_10000A5D4(&unk_1009520A0);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000A5D4(&qword_100957BC8);
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = sub_100760F8C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100760FAC();
  sub_1006CDB58(&qword_10094FAE8, &type metadata accessor for ProductReview);
  result = sub_10076332C();
  if (v46)
  {
    sub_100760F9C();
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
        v22 = sub_1001671EC();
        sub_1007633DC();
        sub_10076FDBC();
        swift_getKeyPath();
        sub_10076338C();

        v23 = v46;
        v24 = [v46 horizontalSizeClass];

        v25 = (v24 == 1) & !sub_1006CD948();
        v26 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shouldHandleTextSelection;
        v22[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_shouldHandleTextSelection] = v25;
        [*&v22[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapGestureRecognizer] setEnabled:?];
        [*&v22[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapGestureRecognizer] setEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel] setUserInteractionEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel] setUserInteractionEnabled:v22[v26]];
        sub_10013E624();
        v27 = v44;
        sub_10076FD8C();
        v28 = sub_1006CD6D4(a1, v46);
        swift_getKeyPath();
        sub_10076FD9C();

        v29 = v46;
        v30 = sub_100630CB4();
        if (v28)
        {
          v31 = 256;
        }

        else
        {
          v31 = 0;
        }

        sub_1003720DC(v41, v31 | v28 & 1, v29, v30, v42);
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
          v32 = sub_10016720C();
          sub_1007633DC();
          sub_10076FDBC();
          swift_getKeyPath();
          sub_10013E624();
          v33 = v44;
          sub_10076FD9C();

          v34 = v46;
          if (v46 == 2)
          {
            sub_10076331C();
            v35 = v39;
            sub_1007665CC();
            sub_1006CDB58(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
            v36 = v41;
            v37 = sub_10077124C();
            v38 = *(v40 + 8);
            v38(v35, v36);
            v38(v7, v36);
            v34 = v37 ^ 1;
          }

          sub_1007554A4(v42, v34 & 1, 0, 0);
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

uint64_t sub_1006CCA88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10076B6EC();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v8 - 8);
  v42 = sub_10000A5D4(&qword_10094A330);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = &v36 - v11;
  v12 = sub_10000A5D4(&qword_1009647F8);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  sub_100760FAC();
  sub_1006CDB58(&qword_10094FAE8, &type metadata accessor for ProductReview);
  sub_10076332C();
  if (!v43)
  {
    v21 = sub_100760F8C();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    sub_10000CFBC(v17, &qword_1009647F8);
    goto LABEL_15;
  }

  v40 = a1;

  sub_100760F9C();

  v18 = sub_100760F8C();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_1006CDAE4(v17, v14);
  v20 = (*(v19 + 88))(v14, v18);
  if (v20 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    (*(v19 + 8))(v14, v18);
LABEL_15:
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100784500;
    sub_10076A91C();
    sub_10076A90C();
    v43 = v32;
    sub_1006CDB58(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10000A5D4(&qword_10094AA68);
    sub_100166BA8();
    sub_1007712CC();
  }

  if (v20 != enum case for ProductReview.ReviewSource.user(_:))
  {
    v27 = enum case for ProductReview.ReviewSource.reviewSummary(_:);
    v28 = v20;
    (*(v19 + 8))(v14, v18);
    if (v28 == v27)
    {
      swift_getKeyPath();
      sub_10076338C();

      v29 = v43;
      v30 = sub_1007706EC();

      if (v30)
      {
        v31 = sub_10016720C();
        if (([*(*&v31[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton) isHidden] & 1) == 0)
        {
          sub_10076336C();
          v33 = v37;
          sub_10076F87C();
          sub_10013E624();
          v34 = v42;
          sub_10076F83C();
          sub_10000A5D4(&qword_10094AA58);
          sub_10076A92C();
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_100783C60;
          sub_10076A91C();
          sub_10076A90C();
          sub_10076A8FC();
          v43 = v35;
          sub_1006CDB58(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
          sub_10000A5D4(&qword_10094AA68);
          sub_100166BA8();
          sub_1007712CC();

          return (*(v39 + 8))(v33, v34);
        }
      }
    }

    goto LABEL_15;
  }

  (*(v19 + 8))(v14, v18);
  sub_10076336C();
  sub_10076F87C();
  swift_getKeyPath();
  sub_10013E624();
  sub_10076F85C();

  v22 = v43;
  if (!sub_1006CD948())
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076B68C();
    sub_1006CDB58(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
    v23 = sub_10077124C();
    v24 = *(v38 + 8);
    v24(v4, v2);
    v24(v7, v2);
    if (v23)
    {
      if ((v22 == 2) | v22 & 1)
      {
        sub_10076F83C();
      }
    }
  }

  sub_10000A5D4(&qword_10094AA58);
  sub_10076A92C();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100783C60;
  sub_10076A91C();
  sub_10076A90C();
  sub_10076A8FC();
  v43 = v25;
  sub_1006CDB58(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10000A5D4(&qword_10094AA68);
  sub_100166BA8();
  sub_1007712CC();

  return (*(v39 + 8))(v41, v42);
}