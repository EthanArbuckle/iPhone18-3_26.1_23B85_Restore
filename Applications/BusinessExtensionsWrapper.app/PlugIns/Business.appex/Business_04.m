id sub_100059F48()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Business13BIABubbleView_subscriptions;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_1000AC65C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        sub_1000AC5AC();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      sub_1000ABBEC();

      ++v5;
    }

    while (v7 != v4);
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for BIABubbleView();
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t type metadata accessor for BIABubbleView()
{
  result = qword_1000F1A38;
  if (!qword_1000F1A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A240()
{
  v1 = sub_10000413C(&qword_1000F1148, &unk_1000B3580);
  v2 = *(*(v1 - 8) + 64);
  v4 = __chkstk_darwin(v1 - 8, v3);
  v177 = (v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4, v6);
  v8 = v169 - v7;
  v9 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v13 = v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = v169 - v17;
  v19 = type metadata accessor for BIABubbleViewModel(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
  swift_beginAccess();
  sub_10005C1E4(&v0[v25], v18);
  v26 = *(v20 + 48);
  v178 = v19;
  if (v26(v18, 1, v19) == 1)
  {
    return sub_10000E784(v18, &qword_1000F08E0, &unk_1000B4690);
  }

  v169[0] = v8;
  v169[1] = v9;
  v171 = v13;
  sub_10005C25C(v18, v24);
  v170 = *&v0[OBJC_IVAR____TtC8Business13BIABubbleView_optionsViewController];
  v28 = [v170 view];
  v184 = v24;
  if (!v28)
  {
    goto LABEL_31;
  }

  v29 = v28;
  v30 = v0;
  sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B3CA0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001000BA260;
  v32 = *&v0[OBJC_IVAR____TtC8Business13BIABubbleView_titleAndSubtitleView];
  v33 = sub_100005A24(0, &qword_1000F0F30, UIView_ptr);
  *(inited + 48) = v32;
  *(inited + 72) = v33;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v34 = *&v0[OBJC_IVAR____TtC8Business13BIABubbleView_titleLabel];
  v35 = sub_100005A24(0, &qword_1000EF988, UILabel_ptr);
  *(inited + 96) = v34;
  *(inited + 120) = v35;
  *(inited + 128) = 0x656C746974627573;
  *(inited + 136) = 0xE800000000000000;
  v36 = *&v0[OBJC_IVAR____TtC8Business13BIABubbleView_subtitleLabel];
  *(inited + 144) = v36;
  *(inited + 168) = v35;
  *(inited + 176) = 0x42736E6F6974706FLL;
  *(inited + 184) = 0xEA0000000000786FLL;
  *(inited + 192) = v29;
  *(inited + 216) = v33;
  strcpy((inited + 224), "binaryChoice");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  v37 = *&v0[OBJC_IVAR____TtC8Business13BIABubbleView_binaryChoiceView];
  *(inited + 264) = type metadata accessor for BIABubbleBinaryChoiceView();
  *(inited + 240) = v37;
  v182 = v32;
  v180 = v34;
  v181 = v36;
  v176 = v37;
  v179 = v29;
  v183 = sub_10004FE58(inited);
  swift_setDeallocating();
  sub_10000413C(&qword_1000F0250, &qword_1000B1540);
  swift_arrayDestroy();
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1000B0620;
  *(v38 + 32) = 0x6464615074786574;
  *(v38 + 40) = 0xEB00000000676E69;
  *(v38 + 48) = 0x4028000000000000;
  *(v38 + 72) = &type metadata for Double;
  *(v38 + 80) = 0x536F54656C746974;
  *(v38 + 88) = 0xEF656C7469746275;
  *(v38 + 96) = 0x4000000000000000;
  *(v38 + 120) = &type metadata for Double;
  *(v38 + 128) = 0xD000000000000011;
  *(v38 + 168) = &type metadata for Double;
  *(v38 + 136) = 0x80000001000BA280;
  *(v38 + 144) = 0x4020000000000000;
  v186 = sub_10004FE58(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  v187[25] = _swiftEmptyArrayStorage;
  v39 = *&v0[OBJC_IVAR____TtC8Business13BIABubbleView_imageView];
  [*&v30[OBJC_IVAR____TtC8Business13BIABubbleView_imageView] setImage:*v184];
  v40 = [v39 image];
  if (v40)
  {

    [v39 setHidden:0];
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_1000B08E0;
    v42 = *&v30[OBJC_IVAR____TtC8Business13BIABubbleView_contentView];
    v43 = objc_opt_self();
    *(v41 + 32) = [v43 constraintWithItem:v39 attribute:3 relatedBy:0 toItem:v42 attribute:3 multiplier:1.0 constant:0.0];
    *(v41 + 40) = [v43 constraintWithItem:v39 attribute:1 relatedBy:0 toItem:v42 attribute:1 multiplier:1.0 constant:0.0];
    *(v41 + 48) = [v43 constraintWithItem:v39 attribute:2 relatedBy:0 toItem:v42 attribute:2 multiplier:1.0 constant:0.0];
    *(v41 + 56) = [v43 constraintWithItem:v39 attribute:8 relatedBy:0 toItem:v39 attribute:7 multiplier:0.6015625 constant:0.0];
    v44 = *&v30[OBJC_IVAR____TtC8Business13BIABubbleView_textAndOptionsView];
    *(v41 + 64) = [v43 constraintWithItem:v44 attribute:3 relatedBy:0 toItem:v39 attribute:4 multiplier:1.0 constant:0.0];
    swift_beginAccess();
    sub_1000A50CC(v41);
    swift_endAccess();
  }

  else
  {
    [v39 setHidden:1];
    v44 = *&v30[OBJC_IVAR____TtC8Business13BIABubbleView_textAndOptionsView];
    v42 = *&v30[OBJC_IVAR____TtC8Business13BIABubbleView_contentView];
    v45 = [objc_opt_self() constraintWithItem:v44 attribute:3 relatedBy:0 toItem:v42 attribute:3 multiplier:1.0 constant:0.0];
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_1000B04C0;
    *(v46 + 32) = v45;
    swift_beginAccess();
    v47 = v45;
    sub_1000A50CC(v46);
    swift_endAccess();
  }

  v48 = objc_opt_self();
  v173 = v44;
  v174 = v42;
  v49 = [v48 constraintWithItem:v44 attribute:4 relatedBy:0 toItem:v42 attribute:4 multiplier:1.0 constant:0.0];
  v50 = sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1000B04C0;
  *(v51 + 32) = v49;
  swift_beginAccess();
  v52 = v49;
  sub_1000A50CC(v51);
  swift_endAccess();

  v53 = v184;
  v54 = v184[1];
  v175 = v30;
  v55 = *&v30[OBJC_IVAR____TtC8Business13BIABubbleView_iconView];
  v185 = v48;
  v172 = v50;
  if (v54)
  {
    v56 = v54;
    [v55 setHidden:0];
    [v55 setImage:v56];
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_1000B3CB0;
    v58 = v182;
    *(v57 + 32) = [v48 constraintWithItem:v55 attribute:3 relatedBy:0 toItem:v182 attribute:3 multiplier:1.0 constant:0.0];
    *(v57 + 40) = [v48 constraintWithItem:v55 attribute:1 relatedBy:0 toItem:v58 attribute:1 multiplier:1.0 constant:0.0];
    *(v57 + 48) = [v48 constraintWithItem:v55 attribute:7 relatedBy:0 toItem:v55 attribute:8 multiplier:1.0 constant:0.0];
    *(v57 + 56) = [v48 constraintWithItem:v55 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
    *(v57 + 64) = [v48 constraintWithItem:v58 attribute:4 relatedBy:1 toItem:v55 attribute:4 multiplier:1.0 constant:0.0];
    v59 = v58;
    v60 = v181;
    *(v57 + 72) = [v48 constraintWithItem:v59 attribute:4 relatedBy:1 toItem:v181 attribute:4 multiplier:1.0 constant:0.0];
    v61 = v48;
    v62 = v48;
    v63 = v180;
    *(v57 + 80) = [v61 constraintWithItem:v180 attribute:1 relatedBy:0 toItem:v55 attribute:2 multiplier:1.0 constant:12.0];
    *(v57 + 88) = [v62 constraintWithItem:v60 attribute:1 relatedBy:0 toItem:v55 attribute:2 multiplier:1.0 constant:12.0];
    swift_beginAccess();
    sub_1000A50CC(v57);
    swift_endAccess();
  }

  else
  {
    [v55 setHidden:1];
    v64 = swift_initStackObject();
    *(v64 + 16) = xmmword_1000B3780;
    v65 = v48;
    v66 = v48;
    v63 = v180;
    v67 = v182;
    *(v64 + 32) = [v65 constraintWithItem:v180 attribute:1 relatedBy:0 toItem:v182 attribute:1 multiplier:1.0 constant:0.0];
    v60 = v181;
    *(v64 + 40) = [v66 constraintWithItem:v181 attribute:1 relatedBy:0 toItem:v67 attribute:1 multiplier:1.0 constant:0.0];
    swift_beginAccess();
    sub_1000A50CC(v64);
    swift_endAccess();
  }

  v68 = v53[2];
  v69 = v53[3];
  v70 = sub_1000AC02C();
  [v63 setText:v70];

  v71 = v53[5];
  if (v71)
  {
    v72 = v53[4];
    v73 = v53[5];
    swift_bridgeObjectRetain_n();
    v74 = sub_1000AC02C();

    [v60 setText:v74];
  }

  else
  {
    [v60 setText:0];
  }

  [v60 setHidden:v71 == 0];
  if ([v60 isHidden])
  {
    v75 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;
    v77 = sub_1000ABFAC().super.isa;
    v78 = [v185 constraintsWithVisualFormat:v75 options:0 metrics:isa views:v77];

    sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
    v79 = sub_1000AC19C();
  }

  else
  {
    v80 = sub_1000AC02C();
    v81 = sub_1000ABFAC().super.isa;
    v82 = sub_1000ABFAC().super.isa;
    v83 = [v185 constraintsWithVisualFormat:v80 options:0 metrics:v81 views:v82];

    sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
    v79 = sub_1000AC19C();
  }

  swift_beginAccess();
  sub_1000A50CC(v79);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  v84 = v171;
  if (v187[0])
  {
    [v179 setHidden:0];
    [v176 setHidden:1];
    v85 = sub_1000AC02C();
    v86 = sub_1000ABFAC().super.isa;
    v87 = sub_1000ABFAC().super.isa;
    v88 = v185;
    v89 = [v185 constraintsWithVisualFormat:v85 options:0 metrics:v86 views:v87];

    v90 = sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
    v91 = sub_1000AC19C();

    swift_beginAccess();
    sub_1000A50CC(v91);
    swift_endAccess();
    v92 = sub_1000AC02C();
    v93 = sub_1000ABFAC().super.isa;
    v94 = sub_1000ABFAC().super.isa;
    v95 = [v88 constraintsWithVisualFormat:v92 options:0 metrics:v93 views:v94];

    v178 = v90;
    v96 = sub_1000AC19C();

    swift_beginAccess();
    v97 = v96;
LABEL_24:
    sub_1000A50CC(v97);
    swift_endAccess();
    goto LABEL_25;
  }

  [v179 setHidden:1];
  sub_10005C2C8(v53 + *(v178 + 32), v84);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10005C878(v84, type metadata accessor for BIABubbleViewModelUserAction);
      goto LABEL_23;
    }

    while (1)
    {
LABEL_31:
      sub_1000AC63C();
      __break(1u);
    }
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_23:
    [v176 setHidden:1];
    v125 = sub_1000AC02C();
    v126 = sub_1000ABFAC().super.isa;
    v127 = sub_1000ABFAC().super.isa;
    v128 = [v185 constraintsWithVisualFormat:v125 options:0 metrics:v126 views:v127];

    v178 = sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
    v129 = sub_1000AC19C();

    swift_beginAccess();
    v97 = v129;
    goto LABEL_24;
  }

  v99 = *(sub_10000413C(&qword_1000F1150, &unk_1000B5280) + 48);
  sub_10005C32C(v84, v169[0]);
  sub_10005C32C(v84 + v99, v177);
  [v176 setHidden:0];
  v100 = sub_1000AC02C();
  v101 = sub_1000ABFAC().super.isa;
  v102 = sub_1000ABFAC().super.isa;
  v103 = [v185 constraintsWithVisualFormat:v100 options:0 metrics:v101 views:v102];

  v104 = sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  v105 = sub_1000AC19C();

  swift_beginAccess();
  sub_1000A50CC(v105);
  swift_endAccess();
  v106 = sub_1000AC02C();
  v107 = sub_1000ABFAC().super.isa;
  v108 = sub_1000ABFAC().super.isa;
  v109 = [v185 constraintsWithVisualFormat:v106 options:0 metrics:v107 views:v108];

  v178 = v104;
  v110 = sub_1000AC19C();

  swift_beginAccess();
  sub_1000A50CC(v110);
  swift_endAccess();
  v111 = *v169[0];
  v112 = *(v169[0] + 8);
  v113 = *(v169[0] + 24);
  v114 = OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_leftButton;
  v115 = v176;
  [*&v176[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_leftButton] setBackgroundColor:*(v169[0] + 16)];
  [*&v115[v114] setTitleColor:v113 forStates:0];
  v116 = *&v115[v114];
  v117 = sub_1000AC02C();
  [v116 setTitle:v117 forState:0];

  v118 = v177;
  v119 = *v177;
  v120 = v177[1];
  v121 = v177[3];
  v122 = OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_rightButton;
  [*&v115[OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_rightButton] setBackgroundColor:v177[2]];
  [*&v115[v122] setTitleColor:v121 forState:0];
  v123 = *&v115[v122];
  v124 = sub_1000AC02C();
  [v123 setTitle:v124 forState:0];

  sub_10000E784(v118, &qword_1000F1148, &unk_1000B3580);
  sub_10000E784(v169[0], &qword_1000F1148, &unk_1000B3580);
LABEL_25:
  v130 = sub_1000AC02C();
  v131 = sub_1000ABFAC().super.isa;
  v132 = sub_1000ABFAC().super.isa;
  v133 = v185;
  v134 = [v185 constraintsWithVisualFormat:v130 options:0 metrics:v131 views:v132];

  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  v135 = sub_1000AC19C();

  swift_beginAccess();
  sub_1000A50CC(v135);
  swift_endAccess();
  v136 = sub_1000AC02C();
  v137 = sub_1000ABFAC().super.isa;
  v138 = sub_1000ABFAC().super.isa;
  v139 = [v133 constraintsWithVisualFormat:v136 options:0 metrics:v137 views:v138];

  v140 = sub_1000AC19C();
  swift_beginAccess();
  sub_1000A50CC(v140);
  swift_endAccess();
  v141 = type metadata accessor for BIABubbleView();
  v187[3] = v141;
  v187[0] = v175;
  v142 = qword_1000EEDB8;
  v143 = v175;
  if (v142 != -1)
  {
    swift_once();
  }

  v144 = *&qword_1000FBEE8;
  v145 = v180;
  v146 = v174;
  if (v141)
  {
    v147 = sub_1000058D0(v187, v141);
    v148 = *(v141 - 8);
    v149 = *(v148 + 64);
    __chkstk_darwin(v147, v147);
    v151 = v169 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v148 + 16))(v151);
    v152 = v146;
    v153 = sub_1000AC79C();
    (*(v148 + 8))(v151, v141);
    sub_10000E738(v187);
  }

  else
  {
    v154 = v174;
    v153 = 0;
  }

  v155 = v185;
  v156 = [v185 constraintWithItem:v146 attribute:4 relatedBy:0 toItem:v153 attribute:4 multiplier:1.0 constant:-v144];

  swift_unknownObjectRelease();
  v157 = OBJC_IVAR____TtC8Business13BIABubbleView_contentViewBottomConstraint;
  v158 = *&v143[OBJC_IVAR____TtC8Business13BIABubbleView_contentViewBottomConstraint];
  *&v143[OBJC_IVAR____TtC8Business13BIABubbleView_contentViewBottomConstraint] = v156;

  v159 = swift_initStackObject();
  *(v159 + 16) = xmmword_1000B3CC0;
  v160 = v182;
  *(v159 + 32) = [v155 constraintWithItem:v145 attribute:3 relatedBy:0 toItem:v182 attribute:3 multiplier:1.0 constant:0.0];
  *(v159 + 40) = [v155 constraintWithItem:v145 attribute:2 relatedBy:0 toItem:v160 attribute:2 multiplier:1.0 constant:0.0];
  v161 = v181;
  *(v159 + 48) = [v155 constraintWithItem:v181 attribute:4 relatedBy:0 toItem:v160 attribute:4 multiplier:1.0 constant:0.0];
  *(v159 + 56) = [v155 constraintWithItem:v161 attribute:2 relatedBy:0 toItem:v160 attribute:2 multiplier:1.0 constant:0.0];
  v162 = v143;
  *(v159 + 64) = [v155 constraintWithItem:v146 attribute:3 relatedBy:0 toItem:v162 attribute:3 multiplier:1.0 constant:0.0];
  v163 = *&v143[v157];
  *(v159 + 72) = v163;
  v164 = v163;
  *(v159 + 80) = [v155 constraintWithItem:v146 attribute:1 relatedBy:0 toItem:v162 attribute:1 multiplier:1.0 constant:0.0];
  v165 = v146;
  v166 = [v155 constraintWithItem:v165 attribute:2 relatedBy:0 toItem:v162 attribute:2 multiplier:1.0 constant:0.0];

  *(v159 + 88) = v166;
  v167 = v173;
  *(v159 + 96) = [v155 constraintWithItem:v173 attribute:1 relatedBy:0 toItem:v165 attribute:1 multiplier:1.0 constant:0.0];
  *(v159 + 104) = [v155 constraintWithItem:v167 attribute:2 relatedBy:0 toItem:v165 attribute:2 multiplier:1.0 constant:0.0];
  swift_beginAccess();
  sub_1000A50CC(v159);
  swift_endAccess();

  sub_100059A84(v168);

  return sub_10005C878(v184, type metadata accessor for BIABubbleViewModel);
}

id sub_10005BDF0(double a1, double a2)
{
  v5 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for BIABubbleViewModel(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2[OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested] = 1;
  v16 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
  swift_beginAccess();
  sub_10005C1E4(&v2[v16], v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000E784(v9, &qword_1000F08E0, &unk_1000B4690);
  }

  else
  {
    sub_10005C25C(v9, v15);
    if (*v15)
    {
      sub_10005C878(v15, type metadata accessor for BIABubbleViewModel);
      v17 = 256.0;
      goto LABEL_8;
    }

    v18 = v15[1];
    v19 = v18;
    sub_10005C878(v15, type metadata accessor for BIABubbleViewModel);
    if (v18)
    {

      v17 = 232.0;
      goto LABEL_8;
    }
  }

  v17 = 236.0;
LABEL_8:
  v20 = sub_10005C254(a1, v17);
  LODWORD(v21) = 1148846080;
  LODWORD(v22) = 1132068864;
  return [v2 systemLayoutSizeFittingSize:v20 withHorizontalFittingPriority:a2 verticalFittingPriority:{v21, v22}];
}

void sub_10005C044()
{
  sub_10005C128();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10005C128()
{
  if (!qword_1000F1A48)
  {
    type metadata accessor for BIABubbleViewModel(255);
    v0 = sub_1000AC42C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000F1A48);
    }
  }
}

uint64_t sub_10005C18C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C1CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005C1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C25C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BIABubbleViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F1148, &unk_1000B3580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C39C(int a1)
{
  v36 = a1;
  v35 = sub_10000413C(&qword_1000F1148, &unk_1000B3580);
  v2 = *(*(v35 - 8) + 64);
  v4 = __chkstk_darwin(v35, v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v34 - v18;
  v20 = type metadata accessor for BIABubbleViewModel(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
  swift_beginAccess();
  sub_10005C1E4(v1 + v26, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000E784(v19, &qword_1000F08E0, &unk_1000B4690);
    goto LABEL_12;
  }

  sub_10005C25C(v19, v25);
  sub_10005C2C8(&v25[*(v20 + 32)], v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = type metadata accessor for BIABubbleViewModelUserAction;
  if (EnumCaseMultiPayload != 2)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_11:
      sub_10005C878(v14, v28);
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v28 = type metadata accessor for BIABubbleViewModelUserInteractionParadigm;
      goto LABEL_11;
    }

LABEL_12:
    result = sub_1000AC63C();
    __break(1u);
    return result;
  }

  v29 = *(sub_10000413C(&qword_1000F1150, &unk_1000B5280) + 48);
  sub_10005C32C(v14, v9);
  sub_10005C32C(&v14[v29], v6);
  v30 = *(v35 + 80);
  v31 = *sub_1000058D0((v1 + OBJC_IVAR____TtC8Business13BIABubbleView_context), *(v1 + OBJC_IVAR____TtC8Business13BIABubbleView_context + 24));
  if (v36)
  {
    v32 = v6;
  }

  else
  {
    v32 = v9;
  }

  sub_10009C328(v31, &v32[v30]);
  sub_10000E784(v6, &qword_1000F1148, &unk_1000B3580);
  sub_10000E784(v9, &qword_1000F1148, &unk_1000B3580);
  return sub_10005C878(v25, type metadata accessor for BIABubbleViewModel);
}

void sub_10005C784()
{
  v1 = (v0 + OBJC_IVAR____TtC8Business13BIABubbleView_delegate);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
  v3 = type metadata accessor for BIABubbleViewModel(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8Business13BIABubbleView_contentViewBottomConstraint;
  *(v0 + v4) = [objc_allocWithZone(NSLayoutConstraint) init];
  *(v0 + OBJC_IVAR____TtC8Business13BIABubbleView_bubbleConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested) = 0;
  sub_1000AC63C();
  __break(1u);
}

uint64_t sub_10005C878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10005C8D8()
{
  v1 = OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton;
  v2 = *(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton);
  }

  else
  {
    v4 = [objc_allocWithZone(PKPaymentButton) initWithPaymentButtonType:0 paymentButtonStyle:2];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setUserInteractionEnabled:0];
    v5 = [v4 layer];

    [v5 setMasksToBounds:1];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *sub_10005C9F0(char a1, void *a2, void *a3, void *a4)
{
  v9 = type metadata accessor for URLHelper();
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v51 - v16;
  *&v4[OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayButtonWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton] = 0;
  *&v4[OBJC_IVAR____TtC8Business18ApplePayBubbleView_message] = a3;
  *&v4[OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager] = a4;
  v18 = a3;
  v19 = a4;
  sub_10004EA70(v17);
  sub_10001E764(v17, v14);
  v20 = sub_10003F008(a1 & 1, a2, v14, v4);
  sub_10001E7C8(v17);
  v21 = OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel;
  v22 = *&v19[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel];
  v23 = *(v22 + 40);
  v24 = *(v22 + 48);
  v25 = (v20 + OBJC_IVAR____TtC8Business13IMBBubbleView_title);
  v26 = *(v20 + OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8);
  *v25 = v23;
  v25[1] = v24;
  v27 = v20;

  sub_1000A9FF0();
  v28 = OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel;
  [*(v27 + OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel) setAttributedText:*(*&v19[v21] + 56)];
  v29 = *(v27 + v28);

  v30 = *(*(v27 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager) + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);
  if (*(v30 + 72))
  {
    v31 = *(v30 + 64);
    v32 = *(v30 + 72);

    v33 = sub_1000AC02C();
  }

  else
  {
    v33 = 0;
  }

  [v29 setAccessibilityLabel:v33];

  v34 = sub_1000AC06C();
  v36 = v35;
  if (v34 == sub_1000AC06C() && v36 == v37)
  {
  }

  else
  {
    v38 = sub_1000AC7AC();

    if ((v38 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v39 = [v18 receivedMessage];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 image];
  }

  else
  {
    v41 = 0;
  }

  v42 = OBJC_IVAR____TtC8Business13IMBBubbleView_image;
  v43 = *(v27 + OBJC_IVAR____TtC8Business13IMBBubbleView_image);
  *(v27 + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = v41;
  v44 = v41;

  sub_1000AA2B0();
  v45 = *(v27 + v42);
  if (v45)
  {
    v46 = v45;
    if ([v18 isFromMe])
    {
      v47 = [v18 replyMessage];
      if (v47)
      {
LABEL_16:
        v48 = v47;
        v49 = [v47 imageDescription];

        if (v49)
        {
          sub_1000AC06C();

          v49 = sub_1000AC02C();
        }

        goto LABEL_19;
      }
    }

    else
    {
      v47 = [v18 receivedMessage];
      if (v47)
      {
        goto LABEL_16;
      }
    }

    v49 = 0;
LABEL_19:
    [v46 setAccessibilityLabel:v49];
  }

LABEL_20:

  return v27;
}

id sub_10005CE40()
{
  sub_1000A8790();
  v1 = *(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager);
  v2 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
    if ((*(v4 + 8) & 1) == 0 && *v4 == 6)
    {
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      sub_1000AC2BC();
      sub_1000ABA5C();
    }
  }

  v5 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
  v6 = sub_10005C8D8();
  [v5 addSubview:v6];

  return sub_10005D7F8();
}

id sub_10005CF64()
{
  sub_1000A8C28();
  v1 = objc_opt_self();
  v74 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints);
  v2 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints);
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);

  isa = sub_1000AC18C().super.isa;

  [v1 deactivateConstraints:isa];

  v76 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall);
  v4 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall);

  v5 = sub_1000AC18C().super.isa;

  v75 = v1;
  [v1 deactivateConstraints:v5];

  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000B08F0;
  v7 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
  v8 = [v7 leadingAnchor];
  v9 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];

  *(v6 + 32) = v11;
  v12 = [v7 topAnchor];
  v13 = [v9 topAnchor];
  v14 = [v12 constraintGreaterThanOrEqualToAnchor:v13 constant:10.0];

  *(v6 + 40) = v14;
  v15 = [v7 bottomAnchor];
  v16 = [v9 bottomAnchor];
  v17 = [v15 constraintLessThanOrEqualToAnchor:v16 constant:-10.0];

  *(v6 + 48) = v17;
  v18 = sub_10005C8D8();
  v19 = [v18 leadingAnchor];

  v20 = [v7 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:10.0];

  *(v6 + 56) = v21;
  v22 = OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton;
  v23 = [*(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton) trailingAnchor];
  v24 = [v9 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v6 + 64) = v25;
  v26 = [*(v0 + v22) centerYAnchor];
  v27 = [v9 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v6 + 72) = v28;
  v29 = [v7 centerYAnchor];
  v30 = [v9 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v6 + 80) = v31;
  v32 = *v76;
  *v76 = v6;

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000B3DC0;
  v34 = [v7 topAnchor];
  v35 = [v9 topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:10.0];

  *(v33 + 32) = v36;
  v37 = [v7 bottomAnchor];
  v38 = [v9 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-10.0];

  *(v33 + 40) = v39;
  v40 = [v7 leadingAnchor];
  v41 = [v9 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v33 + 48) = v42;
  v43 = [*(v0 + v22) leadingAnchor];
  v44 = [v7 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:10.0];

  *(v33 + 56) = v45;
  v46 = [*(v0 + v22) trailingAnchor];
  v47 = [v9 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v33 + 64) = v48;
  v49 = v22;
  v50 = [*(v0 + v22) centerYAnchor];
  v51 = v74;
  v52 = [v9 centerYAnchor];
  v53 = [v50 constraintEqualToAnchor:v52];

  *(v33 + 72) = v53;
  v54 = *v74;
  *v74 = v33;

  v55 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_style);
  v56 = sub_1000AC06C();
  v58 = v57;
  if (v56 == sub_1000AC06C() && v58 == v59)
  {
  }

  else
  {
    v60 = sub_1000AC7AC();

    if ((v60 & 1) == 0)
    {
      v51 = v76;
    }
  }

  v61 = *v51;

  v62 = sub_1000AC18C().super.isa;

  [v75 activateConstraints:v62];

  result = UIApp;
  if (UIApp)
  {
    v64 = [UIApp preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    if (IsAccessibilityContentSizeCategory)
    {
      LODWORD(v66) = 1144750080;
      [*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel) setContentCompressionResistancePriority:1 forAxis:v66];
    }

    v67 = [*(v0 + v49) widthAnchor];
    v68 = [v67 constraintEqualToConstant:60.0];

    v69 = *(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayButtonWidthConstraint);
    *(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayButtonWidthConstraint) = v68;
    v70 = v68;

    if (v70)
    {
      [v70 setActive:1];
    }

    LODWORD(v71) = 1148846080;
    [*(v0 + v49) setContentHuggingPriority:1 forAxis:v71];
    v72 = *(v0 + v49);
    LODWORD(v73) = 1148846080;

    return [v72 setContentHuggingPriority:0 forAxis:v73];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10005D7F8()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager];
  v2 = OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel;
  v3 = *(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);
  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  v6 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title];
  v7 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8];
  *v6 = v5;
  *(v6 + 1) = v4;

  sub_1000A9FF0();
  v8 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel];
  [v8 setAttributedText:*(*(v1 + v2) + 56)];
  v9 = *(v1 + v2);
  if (*(v9 + 72))
  {
    v10 = *(v9 + 64);
    v11 = *(v9 + 72);

    v12 = sub_1000AC02C();
  }

  else
  {
    v12 = 0;
  }

  [v8 setAccessibilityLabel:v12];

  v13 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  result = swift_beginAccess();
  v15 = *(v1 + v13);
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
  if (*(v16 + 8))
  {
    goto LABEL_8;
  }

  v17 = *v16;
  if (v17 > 7)
  {
    return result;
  }

  if (((1 << v17) & 0x9A) != 0 || v17 == 2)
  {
LABEL_8:
    result = sub_10005DD6C();
    if ((v0[OBJC_IVAR____TtC8Business13IMBBubbleView_useAlternateTapTarget] & 1) == 0)
    {
      return [v0 setUserInteractionEnabled:0];
    }
  }

  else if (v17 == 6)
  {
    return sub_10005DD6C();
  }

  return result;
}

void sub_10005D990()
{
  v1 = v0;
  [v0 setBackgroundColor:*&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor]];
  v2 = *&v0[OBJC_IVAR____TtC8Business18ApplePayBubbleView_message];
  v3 = [v2 rootKey];
  v4 = sub_1000AC06C();
  v6 = v5;

  v7 = [v2 isFromMe];
  v8 = *&v1[OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager];
  v9 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v10 = *(v8 + v9);
  if (v10)
  {
    v11 = v10 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
    if (*(v11 + 8))
    {
      v12 = 1;
    }

    else
    {
      v12 = *v11;
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_10005FCE8(v12);
  v15 = v14;
  v16 = [v2 version];
  if (v7)
  {
    v26._countAndFlagsBits = 46;
    v26._object = 0xE100000000000000;
    sub_1000AC12C(v26);
    v27._countAndFlagsBits = 0x6465696C706572;
    v27._object = 0xE700000000000000;
    sub_1000AC12C(v27);
  }

  v28._countAndFlagsBits = 46;
  v28._object = 0xE100000000000000;
  sub_1000AC12C(v28);
  v29._countAndFlagsBits = v13;
  v29._object = v15;
  sub_1000AC12C(v29);

  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000AF0E0;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_10000587C();
  *(v17 + 32) = v4;
  *(v17 + 40) = v6;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

  v18 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  if (qword_1000EEE98 != -1)
  {
    swift_once();
  }

  v19 = qword_1000FC030;
  v20 = sub_1000AC02C();

  [v19 mt_log_icloud_messages_apps_businessframework:v20 version:v16];

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_1000ABA5C();
  v21 = *(v8 + v9);
  if (v21)
  {
    v22 = v21 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
    if ((*(v22 + 8) & 1) == 0)
    {
      v23 = *v22;
      if (v23 <= 7)
      {
        if (((1 << v23) & 0x9C) != 0)
        {
          sub_10005D7F8();
        }

        else if (((1 << v23) & 0x21) != 0)
        {
          sub_1000AC28C();
          sub_1000ABA5C();
          v25.value.super.super.super.isa = [v1 window];
          isa = v25.value.super.super.super.isa;
          IMBApplePayManager.presentApplePay(with:)(v25);
        }

        else if (v23 == 6)
        {
          sub_10005E074();
        }
      }
    }
  }
}

uint64_t sub_10005DD6C()
{
  v1 = sub_1000ABF3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000ABF6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  v13 = sub_1000AC32C();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  aBlock[4] = sub_10005E784;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023BE0;
  aBlock[3] = &unk_1000DCF98;
  v15 = _Block_copy(aBlock);
  v16 = v0;

  sub_1000ABF5C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100042004();
  sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
  sub_10004205C();
  sub_1000AC49C();
  sub_1000AC33C();
  _Block_release(v15);

  (*(v2 + 8))(v6, v1);
  return (*(v8 + 8))(v12, v7);
}

id sub_10005E000(uint64_t a1)
{
  v2 = sub_10005C8D8();
  [v2 setHidden:1];

  result = *(a1 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayButtonWidthConstraint);
  if (result)
  {

    return [result setConstant:0.0];
  }

  return result;
}

void sub_10005E074()
{
  v1 = v0;
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v38 - v5;
  v7 = sub_1000AB6EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC28C();
  sub_1000ABA5C();
  v13 = *(v1 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_applePayManager);
  v14 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v15 = *(v13 + v14);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_fallbackUrl;
    swift_beginAccess();
    sub_10003C3C8(v15 + v16, v6);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v12, v6, v7);
      v17 = sub_1000AB6CC();
      if (v18)
      {
        if (v17 == 1886680168 && v18 == 0xE400000000000000)
        {
          goto LABEL_12;
        }

        v19 = sub_1000AC7AC();

        if (v19)
        {
LABEL_13:
          v39 = v1;
          v22 = *(v1 + OBJC_IVAR____TtC8Business18ApplePayBubbleView_message);
          v23 = [v22 rootKey];
          v24 = sub_1000AC06C();
          v26 = v25;

          LODWORD(v23) = [v22 isFromMe];
          v27 = sub_1000AC06C();
          v29 = v28;
          v38 = [v22 version];
          v40 = v24;
          v41 = v26;
          if (v23)
          {
            v42._countAndFlagsBits = 46;
            v42._object = 0xE100000000000000;
            sub_1000AC12C(v42);
            v43._countAndFlagsBits = 0x6465696C706572;
            v43._object = 0xE700000000000000;
            sub_1000AC12C(v43);
          }

          v44._countAndFlagsBits = 46;
          v44._object = 0xE100000000000000;
          sub_1000AC12C(v44);
          v45._countAndFlagsBits = v27;
          v45._object = v29;
          sub_1000AC12C(v45);

          sub_10000413C(&qword_1000F0060, &unk_1000B0470);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1000AF0E0;
          v32 = v40;
          v31 = v41;
          *(v30 + 56) = &type metadata for String;
          *(v30 + 64) = sub_10000587C();
          *(v30 + 32) = v32;
          *(v30 + 40) = v31;
          sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

          v33 = sub_1000AC3FC();
          sub_1000AC2BC();
          sub_1000ABA5C();

          if (qword_1000EEE98 != -1)
          {
            swift_once();
          }

          v34 = qword_1000FC030;
          v35 = sub_1000AC02C();

          [v34 mt_log_icloud_messages_apps_businessframework:v35 version:v38];

          sub_1000AC2BC();
          sub_1000ABA5C();
          sub_1000058D0((v39 + OBJC_IVAR____TtC8Business13IMBBubbleView_urlHelper), *(v39 + OBJC_IVAR____TtC8Business13IMBBubbleView_urlHelper + 24));
          sub_10004E400(v12, 0, 0, 0);
          goto LABEL_18;
        }
      }

      v20 = sub_1000AB6CC();
      if (v21)
      {
        if (v20 == 0x7370747468 && v21 == 0xE500000000000000)
        {
LABEL_12:

          goto LABEL_13;
        }

        v37 = sub_1000AC7AC();

        if (v37)
        {
          goto LABEL_13;
        }
      }

LABEL_18:
      (*(v8 + 8))(v12, v7);
      return;
    }
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  sub_10004B9C0(v6);
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v36 = sub_1000AC3FC();
  sub_1000AC2BC();
  sub_1000ABA5C();

  sub_10008C45C();
}

void sub_10005E628()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business18ApplePayBubbleView____lazy_storage___applePayButton);
}

id sub_10005E688()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplePayBubbleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005E74C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005E78C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10005E7A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10005E7B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10005E800(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10005E864()
{
  result = qword_1000F1A98;
  if (!qword_1000F1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F1A98);
  }

  return result;
}

double sub_10005E8B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10004F0CC(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1000068B4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t sub_10005E91C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_10004F0CC(result, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56) + 32 * result;

    return sub_100017348(v7, a4);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    a4[3] = 1;
  }

  return result;
}

void sub_10005E984(void *a1)
{
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for IMBMessage();
  v12 = swift_dynamicCastClass();
  v13 = a1;
  v14 = v13;
  if (v12)
  {
    goto LABEL_31;
  }

  v15 = [v13 messageData];
  if (v15 && (v16 = v15, v17 = [v15 data], v16, v17))
  {
    v18 = sub_1000AB73C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v21 = [v14 messageData];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 url];

    if (v23)
    {
      sub_1000AB6AC();

      v24 = sub_1000AB6EC();
      (*(*(v24 - 8) + 56))(v7, 0, 1, v24);
    }

    else
    {
      v26 = sub_1000AB6EC();
      (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    }

    sub_10000E7E4(v7, v10);
  }

  else
  {
    v25 = sub_1000AB6EC();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  }

  v27 = [v14 messageGUID];
  if (v27)
  {
    v28 = v27;
    sub_1000AC06C();
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = [v14 isFromMe];

  if (v20 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1000AB72C().super.isa;
    sub_10000E950(v18, v20);
  }

  v33 = sub_1000AB6EC();
  v34 = *(v33 - 8);
  v36 = 0;
  if ((*(v34 + 48))(v10, 1, v33) != 1)
  {
    sub_1000AB67C(v35);
    v36 = v37;
    (*(v34 + 8))(v10, v33);
  }

  if (v30)
  {
    v38 = sub_1000AC02C();
  }

  else
  {
    v38 = 0;
  }

  v12 = [objc_allocWithZone(v11) initWithData:isa url:v36 messageGUID:v38 isFromMe:v31];

  if (v12)
  {
LABEL_31:
    if ([v12 rootObject])
    {
      type metadata accessor for IMBJITAppKitData();
      if (!swift_dynamicCastClass())
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005ED9C(char a1, id a2, uint64_t a3)
{
  v6 = [a2 isFromMe];
  v7 = &selRef_replyMessage;
  if (!v6)
  {
    v7 = &selRef_receivedMessage;
  }

  v8 = [a2 *v7];
  v9 = v8;
  if (!v8 || (v10 = [v8 alternateTitle]) == 0 && (v10 = objc_msgSend(v9, "title")) == 0)
  {
    v10 = [objc_opt_self() defaultBubbleTitleFor:a2];
  }

  v11 = v10;
  v12 = sub_1000AC06C();

  if (a1)
  {
    if (!v9)
    {
      return v12;
    }

    v16 = [v9 subtitle];
    if (v16)
    {
      v17 = v16;
      sub_1000AC06C();

      return v12;
    }

LABEL_15:

    return v12;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  v13 = *(a3 + 16);
  if (!*(v13 + 16))
  {
    goto LABEL_15;
  }

  v14 = sub_10004F0CC(0xD000000000000012, 0x80000001000BA760);
  if (v15)
  {
    sub_1000068B4(*(v13 + 56) + 32 * v14, v19);

    swift_dynamicCast();
  }

  else
  {
  }

  return v12;
}

id sub_10005EF88(char a1, id a2)
{
  v4 = [a2 isFromMe];
  v5 = &selRef_replyMessage;
  if (!v4)
  {
    v5 = &selRef_receivedMessage;
  }

  v6 = [a2 *v5];
  v7 = v6;
  if ((a1 & 1) == 0)
  {

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  v8 = [v6 image];
  v9 = [v7 imageDescription];
  if (v9)
  {
    v10 = v9;
    sub_1000AC06C();
  }

  return v8;
}

double sub_10005F088()
{
  qword_1000F1AC0 = 0;
  result = 0.0;
  xmmword_1000F1AA0 = 0u;
  *algn_1000F1AB0 = 0u;
  return result;
}

uint64_t sub_10005F0A0@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000EEE68 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_10005F16C(&xmmword_1000F1AA0, v2);
}

uint64_t sub_10005F114()
{
  sub_100042340();

  return sub_1000ABCFC();
}

uint64_t sub_10005F16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F0918, &unk_1000B1C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10005F1DC()
{
  v1 = OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_10005F23C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10005F23C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v1];
  LODWORD(v2) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v4];
  v5 = [objc_opt_self() tintColor];
  [v0 setTextColor:v5];

  [v0 setMinimumScaleFactor:0.4];
  [v0 setAdjustsFontSizeToFitWidth:1];
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v7 = [v6 fontDescriptorWithSymbolicTraits:0x8000];
  if (v7)
  {
    v8 = v7;

    v6 = v8;
  }

  v9 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];

  [v0 setFont:v9];
  [v0 setNumberOfLines:0];
  return v0;
}

char *sub_10005F418(uint64_t a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel] = 0;
  v54.receiver = v3;
  v54.super_class = type metadata accessor for QuickReplyItemButton();
  v4 = objc_msgSendSuper2(&v54, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setIsAccessibilityElement:1];
  [v4 setAccessibilityTraits:UIAccessibilityTraitButton];
  v5 = sub_1000AC02C();
  [v4 setAccessibilityLabel:v5];

  v6 = sub_10005F1DC();
  v7 = sub_1000AC02C();

  [v6 setText:v7];

  v8 = OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel;
  [v4 addSubview:*&v4[OBJC_IVAR____TtC8Business20QuickReplyItemButton____lazy_storage___titleLabel]];
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000B04D0;
  v10 = [*&v4[v8] leadingAnchor];
  v11 = [v4 leadingAnchor];
  v12 = sub_10002CE60();
  v13 = 12.0;
  if ((v12 & 0xFE) == 0)
  {
    v13 = 14.0;
  }

  v14 = [v10 constraintEqualToAnchor:v11 constant:v13];

  *(v9 + 32) = v14;
  v15 = [*&v4[v8] trailingAnchor];
  v16 = [v4 trailingAnchor];
  v17 = sub_10002CE60();
  v18 = -12.0;
  if ((v17 & 0xFE) == 0)
  {
    v18 = -14.0;
  }

  v19 = [v15 constraintEqualToAnchor:v16 constant:v18];

  *(v9 + 40) = v19;
  v20 = [*&v4[v8] topAnchor];
  v21 = [v4 topAnchor];
  v22 = sub_10002CE60();
  v23 = 7.0;
  if ((v22 & 0xFE) == 0)
  {
    v23 = 10.0;
  }

  v24 = [v20 constraintEqualToAnchor:v21 constant:v23];

  *(v9 + 48) = v24;
  v25 = [*&v4[v8] bottomAnchor];
  v26 = [v4 bottomAnchor];

  v27 = sub_10002CE60();
  v28 = objc_opt_self();
  v29 = -7.0;
  if ((v27 & 0xFE) == 0)
  {
    v29 = -10.0;
  }

  v30 = [v25 constraintEqualToAnchor:v26 constant:v29];

  *(v9 + 56) = v30;
  sub_10000F840();
  isa = sub_1000AC18C().super.isa;

  [v28 activateConstraints:isa];

  if (a3)
  {
    v32 = [objc_allocWithZone(UIView) init];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [objc_opt_self() separatorColor];
    [v32 setBackgroundColor:v33];

    [v4 addSubview:v32];
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1000B04D0;
    v35 = [v32 leadingAnchor];
    v36 = [*&v4[v8] leadingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    *(v34 + 32) = v37;
    v38 = [v32 trailingAnchor];
    v39 = [*&v4[v8] trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    *(v34 + 40) = v40;
    v41 = [v32 bottomAnchor];
    v42 = [v4 bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    *(v34 + 48) = v43;
    v44 = [v32 heightAnchor];
    v45 = [v4 traitCollection];
    [v45 displayScale];
    v47 = v46;

    if (v47 <= 0.0)
    {
      v48 = [objc_opt_self() mainScreen];
      [v48 scale];
      v47 = v49;

      if (v47 <= 0.0)
      {
        v47 = 1.0;
      }
    }

    v50 = [v44 constraintEqualToConstant:1.0 / v47];

    *(v34 + 56) = v50;
    v51 = sub_1000AC18C().super.isa;

    [v28 activateConstraints:v51];
  }

  return v4;
}

void sub_10005FB74(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for QuickReplyItemButton();
  objc_msgSendSuper2(&v8, "setHighlighted:", a1 & 1);
  v3 = sub_10005F1DC();
  v4 = [v1 isHighlighted];
  v5 = 1.0;
  if (v4)
  {
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceStyle] == 2;

    v5 = dbl_1000B3F20[v7];
  }

  [v3 setAlpha:v5];
}

id sub_10005FC64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickReplyItemButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005FCE8(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0x616C696176616E75;
      }

      if (a1 == 7)
      {
        return 0xD000000000000013;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      return 0x64656E696C636564;
    }

    else
    {
      return 0x7075746573;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x64696C6176;
      }

      if (a1 == 1)
      {
        return 0x64696C61766E69;
      }

LABEL_18:
      result = sub_1000AC63C();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0x64657269707865;
    }

    else
    {
      return 1684627824;
    }
  }
}

uint64_t sub_10005FE44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684627824 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000AC7AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64696C6176 && a2 == 0xE500000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656E696C636564 && a2 == 0xE800000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7075746573 && a2 == 0xE500000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62 || (sub_1000AC7AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000BA830 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1000AC7AC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }
}

id sub_1000600B0()
{
  v1 = *(v0 + 88);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 imageData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000AB73C();
    v7 = v6;

    v8 = objc_allocWithZone(UIImage);
    isa = sub_1000AB72C().super.isa;
    v10 = [v8 initWithData:isa];

    sub_10000E964(v5, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_100060178(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_1000AB97C() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10001E92C();
  }

  while ((sub_1000AC01C() & 1) == 0);
  return v4 != v5;
}

void sub_100060250(void *a1, id a2)
{
  v4 = [a2 receivedMessage];
  v5 = [a2 replyMessage];
  v6 = sub_100061DF4(v4, v5);

  v7 = [a1 selectedMessage];
  v39 = [v7 session];

  v8 = v39;
  if (!v39)
  {
    v8 = [objc_allocWithZone(MSSession) init];
  }

  v40 = v8;
  v9 = [objc_allocWithZone(MSMessage) initWithSession:v8];
  v10 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v11 = [a2 replyMessage];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 image];

    if (v13)
    {
      goto LABEL_13;
    }
  }

  v14 = sub_1000609C8();
  if (v14 >> 62)
  {
    v16 = v14;
    v17 = sub_1000AC65C();
    v14 = v16;
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_12:

    v13 = 0;
    goto LABEL_13;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v14 & 0xC000000000000001) != 0)
  {
    sub_1000AC5AC();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v15 = *(v14 + 32);
  }

  v13 = sub_1000600B0();

LABEL_13:
  [v10 setImage:v13];

  v18 = [v6 title];
  [v10 setCaption:v18];

  v19 = [v6 subtitle];
  [v10 setSubcaption:v19];

  v20 = [a1 selectedMessage];
  if (v20 && (v21 = v20, v22 = [v20 layout], v21, v22) && (objc_opt_self(), v23 = swift_dynamicCastObjCClass(), v22, v23))
  {
    v24 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v10];
    [v9 setLayout:v24];
  }

  else
  {
    [v9 setLayout:v10];
  }

  v25 = [v6 title];
  if (v25)
  {
    v26 = v25;
    sub_1000AC06C();
  }

  v27 = [v6 subtitle];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1000AC06C();
    v31 = v30;

    v42._countAndFlagsBits = v29;
    v42._object = v31;
    sub_1000AC12C(v42);

    v43._countAndFlagsBits = 32;
    v43._object = 0xE100000000000000;
    sub_1000AC12C(v43);
  }

  v32 = sub_1000AC02C();

  [v9 setAccessibilityLabel:v32];

  v33 = BCMessageRootListPickerKey;
  v34 = v9;
  v35 = v6;
  v36 = v33;

  v37 = a2;
  v38 = a1;
  sub_100036FA8(1);
}

void *sub_100060700()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_34;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = _swiftEmptyArrayStorage;
LABEL_5:
    v7 = v4;
    while (1)
    {
      if (v5)
      {
        v8 = sub_1000AC5AC();
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_31;
        }

        v8 = *(v1 + 8 * v7 + 32);

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      v9 = *(v8 + 40);
      if (v9 >> 62)
      {
        if (v9 < 0)
        {
          v11 = *(v8 + 40);
        }

        v12 = sub_1000AC65C();
        if (v12 < 0)
        {
          goto LABEL_32;
        }

        v10 = v12;
        if (v12)
        {
LABEL_20:
          v21 = v5;
          v22 = v3;
          v23 = v2;
          v24 = v1;
          v13 = 0;
          v26 = sub_1000AB97C();
          v14 = *(v26 - 8);
          v15 = *(v14 + 72);
          v1 = (*(v14 + 80) + 32) & ~*(v14 + 80);
          v25 = (v14 + 8);
          while (1)
          {
            sub_10000413C(&qword_1000F0818, &unk_1000B5370);
            v16 = v15;
            v17 = swift_allocObject();
            sub_1000AB94C();
            v2 = v6[2];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || (v19 = v6[3] >> 1, v19 <= v2))
            {
              v6 = sub_100038C68(isUniquelyReferenced_nonNull_native, v2 + 1, 1, v6);
              v19 = v6[3] >> 1;
            }

            if (v19 <= v6[2])
            {
              break;
            }

            ++v13;
            swift_arrayInitWithCopy();
            swift_setDeallocating();
            (*v25)(v17 + v1, v26);
            v15 = v16;
            swift_deallocClassInstance();
            ++v6[2];
            if (v10 == v13)
            {

              v3 = v22;
              v2 = v23;
              v1 = v24;
              v5 = v21;
              if (v4 != v22)
              {
                goto LABEL_5;
              }

              goto LABEL_29;
            }
          }

LABEL_33:
          __break(1u);
LABEL_34:
          v3 = sub_1000AC65C();
          goto LABEL_3;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          goto LABEL_20;
        }
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_29;
      }
    }
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_29:

  return v6;
}

unint64_t sub_1000609C8()
{
  v1 = sub_1000AB97C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  result = _swiftEmptyArrayStorage;
  v23 = _swiftEmptyArrayStorage;
  v9 = *(v7 + 16);
  if (!v9)
  {
    return result;
  }

  v10 = *(v0 + 16);
  v12 = *(v2 + 16);
  v11 = v2 + 16;
  v21 = v12;
  v22 = v10;
  v13 = v7 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v14 = *(v11 + 56);
  while (1)
  {
    v21(v6, v13, v1);
    v15 = *(v22 + 24);

    result = sub_1000AB96C();
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = sub_1000AC5AC();
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v16 = *(v15 + 8 * result + 32);

LABEL_7:

    v17 = *(v16 + 40);

    result = sub_1000AB95C();
    if ((v17 & 0xC000000000000001) != 0)
    {
      sub_1000AC5AC();
    }

    else
    {
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (result >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v18 = *(v17 + 8 * result + 32);
    }

    (*(v11 - 8))(v6, v1);
    sub_1000AC17C();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000AC1BC();
    }

    sub_1000AC1DC();
    v13 += v14;
    if (!--v9)
    {
      return v23;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_100060C1C()
{
  v1 = sub_1000AB97C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1, v4);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5, v7);
  v10 = &v37 - v9;
  __chkstk_darwin(v8, v11);
  v13 = &v37 - v12;
  v45 = v0;
  result = sub_100060700();
  v15 = _swiftEmptyArrayStorage;
  v43 = *(result + 16);
  if (v43)
  {
    v16 = 0;
    v38 = v2;
    v39 = v2 + 16;
    v37 = (v2 + 8);
    v41 = v10;
    v42 = (v2 + 32);
    v40 = result;
    while (v16 < *(result + 16))
    {
      v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v20 = *(v2 + 72);
      (*(v2 + 16))(v13, result + v19 + v20 * v16++, v1);
      v21 = *(v45 + 24);
      v22 = v21 + v19;
      v23 = *(v21 + 16) + 1;
      while (--v23)
      {
        sub_10001E92C();
        v22 += v20;
        if (sub_1000AC01C())
        {
          (*v37)(v13, v1);
          goto LABEL_6;
        }
      }

      v24 = *v42;
      (*v42)(v44, v13, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10009C238(0, *(v15 + 2) + 1, 1);
        v15 = v46;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        sub_10009C238(v17 > 1, v18 + 1, 1);
        v15 = v46;
      }

      *(v15 + 2) = v18 + 1;
      v24(&v15[v19 + v18 * v20], v44, v1);
      v2 = v38;
LABEL_6:
      result = v40;
      v10 = v41;
      if (v16 == v43)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_14:

    v46 = _swiftEmptyArrayStorage;
    v26 = *(v15 + 2);
    if (v26)
    {
      v27 = *(v45 + 16);
      v29 = *(v2 + 16);
      v28 = v2 + 16;
      v44 = v29;
      v45 = v27;
      v30 = &v15[(*(v28 + 64) + 32) & ~*(v28 + 64)];
      v43 = *(v28 + 56);
      do
      {
        (v44)(v10, v30, v1);
        v31 = *(v45 + 24);

        result = sub_1000AB96C();
        if ((v31 & 0xC000000000000001) != 0)
        {
          v32 = sub_1000AC5AC();
        }

        else
        {
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          if (result >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v32 = *(v31 + 8 * result + 32);
        }

        v33 = *(v32 + 40);

        result = sub_1000AB95C();
        if ((v33 & 0xC000000000000001) != 0)
        {
          sub_1000AC5AC();
        }

        else
        {
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          if (result >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v34 = *(v33 + 8 * result + 32);
        }

        (*(v28 - 8))(v10, v1);
        sub_1000AC17C();
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v35 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1000AC1BC();
        }

        sub_1000AC1DC();
        v30 += v43;
        --v26;
      }

      while (v26);
      v36 = v46;
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v36;
  }

  return result;
}

unint64_t sub_100061088()
{
  v1 = sub_1000609C8();
  if (v1 >> 62)
  {
    v6 = v1;
    v2 = sub_1000AC65C();
    v1 = v6;
    if (v2)
    {
LABEL_3:
      v3 = __OFSUB__(v2, 1);
      v4 = v2 - 1;
      if (v3)
      {
        __break(1u);
      }

      else if ((v1 & 0xC000000000000001) == 0)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_122:
          __break(1u);
LABEL_123:
          result = sub_1000AC65C();
          if (result)
          {
            goto LABEL_24;
          }

          goto LABEL_126;
        }

        v5 = *(v1 + 8 * v4 + 32);

        goto LABEL_8;
      }

      v5 = sub_1000AC5AC();
LABEL_8:

      goto LABEL_11;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_11:
  v7 = sub_1000609C8();
  if (v7 >> 62)
  {
    v9 = v7;
    v10 = sub_1000AC65C();
    v7 = v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = sub_1000AC5AC();
      goto LABEL_16;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v7 + 32);

LABEL_16:

      goto LABEL_19;
    }

    goto LABEL_121;
  }

  v8 = 0;
LABEL_19:
  v11 = sub_1000609C8();
  if (v11 >> 62)
  {
    v12 = sub_1000AC65C();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_1000609C8();
  v0 = result;
  v14 = result >> 62;
  if (v12 != 1)
  {
    if (v14)
    {
      result = sub_1000AC65C();
      v18 = result;
      if (!result)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_126;
      }
    }

    if (v18 < 1)
    {
      __break(1u);
LABEL_130:
      __break(1u);
      return result;
    }

    v55._object = v12;
    v56 = v0;
    v19 = 0;
    v57 = v0 & 0xC000000000000001;
    while (1)
    {
      if (v57)
      {
        v20 = sub_1000AC5AC();
        if (!v8)
        {
          break;
        }
      }

      else
      {
        v20 = *(v0 + 8 * v19 + 32);

        if (!v8)
        {
          break;
        }
      }

      v21 = v20[3] == v8[3] && v20[4] == v8[4];
      if (!v21 && (sub_1000AC7AC() & 1) == 0)
      {
        break;
      }

      v23 = v20[5];
      v22 = v20[6];
      if (v23 != v8[5] || v22 != v8[6])
      {
        v25 = v20[5];
        v26 = v20[6];
        if ((sub_1000AC7AC() & 1) == 0)
        {
          break;
        }
      }

      v27 = v20[8];
      v28 = v8[8];
      if (v27)
      {
        if (!v28 || (v20[7] != v8[7] || v27 != v28) && (sub_1000AC7AC() & 1) == 0)
        {
          break;
        }
      }

      else if (v28)
      {
        break;
      }

      v29 = v20[10];
      v30 = v8[10];
      if (v29)
      {
        if (!v30 || (v20[9] != v8[9] || v29 != v30) && (sub_1000AC7AC() & 1) == 0)
        {
          break;
        }
      }

      else if (v30)
      {
        break;
      }

      if (v55._object != 2 || v20[12] != v8[12])
      {
        break;
      }

      v59._countAndFlagsBits = 32;
      v59._object = 0xE100000000000000;
      sub_1000AC12C(v59);
      v60._countAndFlagsBits = v23;
      v60._object = v22;
      sub_1000AC12C(v60);

LABEL_114:
      if (v18 == ++v19)
      {

        v16 = 0;
        goto LABEL_127;
      }
    }

    v31 = v18;
    if (!v5)
    {
      goto LABEL_111;
    }

    v32 = v20[3] == v5[3] && v20[4] == v5[4];
    v33 = v32;
    if (!v32)
    {
      v34 = v20[3];
      v35 = v20[4];
      v36 = v5[3];
      v37 = v5[4];
      if ((sub_1000AC7AC() & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    if (v20[5] == v5[5] && v20[6] == v5[6] || (sub_1000AC7AC() & 1) != 0)
    {
      v38 = v20[8];
      v39 = v5[8];
      if (v38)
      {
        if (!v39 || (v20[7] != v5[7] || v38 != v39) && (sub_1000AC7AC() & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      else if (v39)
      {
        goto LABEL_91;
      }

      v40 = v20[10];
      v41 = v5[10];
      if (v40)
      {
        if (!v41 || (v20[9] != v5[9] || v40 != v41) && (sub_1000AC7AC() & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      else if (v41)
      {
        goto LABEL_91;
      }

      if (v20[12] == v5[12])
      {
        v42 = [objc_opt_self() mainBundle];
        v55._countAndFlagsBits = 0xE000000000000000;
        v61._countAndFlagsBits = 4476481;
        v61._object = 0xE300000000000000;
        v65.value._countAndFlagsBits = 0;
        v65.value._object = 0;
        v43.super.isa = v42;
        v66._countAndFlagsBits = 0;
        v66._object = 0xE000000000000000;
        v44 = sub_1000AB61C(v61, v65, v43, v66, v55);
        v46 = v45;

        v58._countAndFlagsBits = v44;
        v58._object = v46;

        v62._countAndFlagsBits = 32;
        v62._object = 0xE100000000000000;
        sub_1000AC12C(v62);

        v47 = v20[5];
        v48 = v20[6];

        v63._countAndFlagsBits = v47;
        v63._object = v48;
        sub_1000AC12C(v63);

LABEL_112:
        sub_1000AC12C(v58);

        goto LABEL_113;
      }
    }

LABEL_91:
    if (v33)
    {
LABEL_93:
      if ((v20[5] != v5[5] || v20[6] != v5[6]) && (sub_1000AC7AC() & 1) == 0)
      {
        goto LABEL_111;
      }

      v49 = v20[8];
      v50 = v5[8];
      if (v49)
      {
        if (!v50 || (v20[7] != v5[7] || v49 != v50) && (sub_1000AC7AC() & 1) == 0)
        {
          goto LABEL_111;
        }
      }

      else if (v50)
      {
        goto LABEL_111;
      }

      v51 = v20[10];
      v52 = v5[10];
      if (v51)
      {
        if (!v52 || (v20[9] != v5[9] || v51 != v52) && (sub_1000AC7AC() & 1) == 0)
        {
          goto LABEL_111;
        }

LABEL_110:
        if (v20[12] == v5[12])
        {
LABEL_113:

          v18 = v31;
          v0 = v56;
          goto LABEL_114;
        }

        goto LABEL_111;
      }

      if (!v52)
      {
        goto LABEL_110;
      }

LABEL_111:
      v58 = *(v20 + 5);

      v64._countAndFlagsBits = 8236;
      v64._object = 0xE200000000000000;
      sub_1000AC12C(v64);
      goto LABEL_112;
    }

LABEL_92:
    if ((sub_1000AC7AC() & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_93;
  }

  if (v14)
  {
    goto LABEL_123;
  }

  result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
LABEL_24:
    if ((v0 & 0xC000000000000001) != 0)
    {
      v53 = sub_1000AC5AC();

      v16 = *(v53 + 40);
      v54 = *(v53 + 48);

      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v0 + 32);

      v16 = *(v15 + 40);
      v17 = *(v15 + 48);

LABEL_27:

      goto LABEL_127;
    }

    goto LABEL_130;
  }

LABEL_126:

  v16 = 0;
LABEL_127:

  return v16;
}

uint64_t sub_100061790()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_1000617F0(v0);
    v2 = *(v0 + 32);
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_1000617F0(uint64_t a1)
{
  v2 = sub_1000609C8();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000AC65C())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v7 = sub_1000AC5AC();
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      *(v7 + 96) = v5;

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v8 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = objc_opt_self();
  p_attr = &stru_1000E5FF8.attr;
  v11 = [(SEL *)v9 mainBundle];
  v47._countAndFlagsBits = 0xE000000000000000;
  v50._countAndFlagsBits = 0x454C45535F554F59;
  v50._object = 0xEC00000044455443;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v12.super.isa = v11;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v13 = sub_1000AB61C(v50, v51, v12, v53, v47);
  v15 = v14;

  v16 = sub_1000609C8();
  type metadata accessor for IMBListSection();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v15;
  *(v17 + 32) = 0;
  *(v17 + 40) = v16;
  *(v17 + 48) = 0;
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B04C0;
  *(inited + 32) = v17;

  sub_1000A54E8(inited);
  v19 = sub_100060C1C();
  if (v19 >> 62)
  {
    goto LABEL_28;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v20)
  {
LABEL_16:
    v49 = v9;
    v21 = sub_100060C1C();
    v22 = v21;
    v9 = p_attr;
    if (v21 >> 62)
    {
      v23 = sub_1000AC65C();
      if (!v23)
      {
LABEL_31:

        v29 = sub_100060C1C();
        if (v29 >> 62)
        {
          v30 = sub_1000AC65C();
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v31 = [v49 v9[384]];
        v48._countAndFlagsBits = 0xE000000000000000;
        if (v30 < 2)
        {
          v32._countAndFlagsBits = 0x524548544FLL;
          v32._object = 0xE500000000000000;
        }

        else
        {
          v32._countAndFlagsBits = 0x53524548544FLL;
          v32._object = 0xE600000000000000;
        }

        v52.value._countAndFlagsBits = 0;
        v52.value._object = 0;
        v33.super.isa = v31;
        v54._countAndFlagsBits = 0;
        v54._object = 0xE000000000000000;
        v34 = sub_1000AB61C(v32, v52, v33, v54, v48);
        v36 = v35;

        v37 = sub_100060C1C();
        v38 = swift_allocObject();
        *(v38 + 16) = v34;
        *(v38 + 24) = v36;
        *(v38 + 32) = 1;
        *(v38 + 40) = v37;
        *(v38 + 48) = 0;
        v39 = swift_initStackObject();
        *(v39 + 16) = xmmword_1000B04C0;
        *(v39 + 32) = v38;
        sub_1000A54E8(v39);
        goto LABEL_37;
      }
    }

    else
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_31;
      }
    }

    v24 = 0;
    p_attr = (v22 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = sub_1000AC5AC();
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v25 = *(v22 + 8 * v24 + 32);

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v28 = sub_1000AC65C();

          if (!v28)
          {
            break;
          }

          goto LABEL_16;
        }
      }

      *(v26 + 96) = v24;

      ++v24;
      if (v27 == v23)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_37:
  v40 = *(*(a1 + 16) + 16);
  type metadata accessor for IMBListRequest();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  *(v41 + 24) = _swiftEmptyArrayStorage;
  if (qword_1000EEE88 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000AF0E0;

  v43 = sub_1000872F4();
  v45 = v44;

  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = sub_10000587C();
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  sub_1000ABA5C();

  return v41;
}

uint64_t sub_100061CF4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

unint64_t sub_100061DF4(void *a1, void *a2)
{
  sub_100061088();
  if (a2)
  {
    v4 = [a2 subtitle];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1000AC06C();
      a1 = v7;
    }

    else
    {
      v6 = 0;
      a1 = 0;
    }

    v8 = [a2 style];
    v9 = [a2 imageIdentifier];
    if (v9)
    {
      v10 = v9;
      sub_1000AC06C();
      v6 = v11;

      goto LABEL_18;
    }
  }

  else if (a1)
  {
    v8 = [a1 style];
    v6 = 0;
    a1 = 0;
  }

  else
  {
    v8 = BCBubbleViewStyleIcon;
    v6 = 0;
  }

  v12 = sub_1000609C8();
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_17:

    v6 = 0;
    if (!a2)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v15 = v12;
  v16 = sub_1000AC65C();
  v12 = v15;
  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v22 = sub_1000AC5AC();

    v23 = *(v22 + 72);
    v6 = *(v22 + 80);

    swift_unknownObjectRelease();
    if (!a2)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_44:
    v44 = sub_1000AC5AC();

    v45 = *(v44 + 88);
    v27 = v45;
    swift_unknownObjectRelease();
    if (!v45)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v13 = *(v12 + 32);

  v14 = *(v13 + 72);
  v6 = *(v13 + 80);

  if (a2)
  {
LABEL_18:
    v17 = [a2 imageIdentifier];
    if (v17)
    {

      v18 = [a2 imageDescription];
      if (v18)
      {
        v19 = v18;
        sub_1000AC06C();
        v21 = v20;

        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

LABEL_22:
  result = sub_1000609C8();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

LABEL_30:

    goto LABEL_31;
  }

  v30 = result;
  v31 = sub_1000AC65C();
  result = v30;
  if (!v31)
  {
    goto LABEL_30;
  }

LABEL_24:
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_44;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v25 = *(result + 32);

  v26 = *(v25 + 88);
  v27 = v26;

  if (!v26)
  {
    goto LABEL_31;
  }

LABEL_27:
  v28 = [v27 imageDescription];

  if (v28)
  {
    sub_1000AC06C();
    v21 = v29;

    goto LABEL_32;
  }

LABEL_31:
  v21 = 0;
LABEL_32:
  v32 = v8;
  v33 = sub_1000AC02C();
  if (a1)
  {
    v34 = sub_1000AC02C();
  }

  else
  {
    v34 = 0;
  }

  v35 = sub_1000AC02C();

  if (!v6)
  {
    v36 = 0;
    if (v21)
    {
      goto LABEL_37;
    }

LABEL_39:
    v37 = 0;
    goto LABEL_40;
  }

  v36 = sub_1000AC02C();

  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_37:
  v37 = sub_1000AC02C();

LABEL_40:
  v38 = [objc_allocWithZone(BCMessageInfo) initWithTitle:v33 subtitle:v34 style:v32 alternateTitle:v35 imageIdentifier:v36 imageDescription:v37];

  if (qword_1000EEE88 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000AF0E0;
  v40 = [v38 debugDescription];
  v41 = sub_1000AC06C();
  v43 = v42;

  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = sub_10000587C();
  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  sub_1000ABA5C();

  return v38;
}

uint64_t sub_100062344(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA4F0;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

id sub_100062390(uint64_t a1)
{
  v44 = _swiftEmptyArrayStorage;
  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

  v2 = sub_10004F0CC(0x737574617473, 0xE600000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_100017348(*(a1 + 56) + 32 * v2, &v40);
  v42 = v40;
  v43 = v41;
  if (!*(&v41 + 1))
  {

    sub_1000172E0(&v42);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v4 = sub_100062344(v38, v39), v4 == 5))
  {
LABEL_6:

LABEL_7:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_1000ABA5C();
    return 0;
  }

  v6 = v4;
  if (*(a1 + 16) && (v7 = sub_10004F0CC(0x73726F727265, 0xE600000000000000), (v8 & 1) != 0))
  {
    sub_100017348(*(a1 + 56) + 32 * v7, &v40);

    v42 = v40;
    v43 = v41;
    if (*(&v41 + 1))
    {
      sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
      if (swift_dynamicCast())
      {
        v35 = v6;
        v9 = *(v38 + 16);
        if (v9)
        {
          v10 = (v38 + 32);
          v37 = _swiftEmptyArrayStorage;
          do
          {
            v11 = *v10;

            v13 = sub_100020A9C(v12);
            if (v13)
            {
              v14 = qword_1000B3FA0[*(v13 + 16)];
              v15 = PKPaymentErrorDomain;
              sub_10001FF78();
              v16 = objc_allocWithZone(NSError);
              isa = sub_1000ABFAC().super.isa;

              v18 = [v16 initWithDomain:v15 code:v14 userInfo:isa];

              if (qword_1000EEE80 != -1)
              {
                swift_once();
              }

              sub_1000AC2BC();
              sub_10000413C(&qword_1000F0060, &unk_1000B0470);
              v19 = swift_allocObject();
              *(v19 + 16) = xmmword_1000AF0E0;
              v36 = v18;
              v20 = [v18 debugDescription];
              v21 = sub_1000AC06C();
              v23 = v22;

              *(v19 + 56) = &type metadata for String;
              *(v19 + 64) = sub_10000587C();
              *(v19 + 32) = v21;
              *(v19 + 40) = v23;
              sub_1000ABA5C();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v37 = sub_1000388E0(0, v37[2] + 1, 1, v37);
              }

              v24 = v37;
              v26 = v37[2];
              v25 = v37[3];
              if (v26 >= v25 >> 1)
              {
                v24 = sub_1000388E0((v25 > 1), v26 + 1, 1, v37);
              }

              v24[2] = v26 + 1;
              v37 = v24;
              v24[v26 + 4] = v36;

              sub_1000AC17C();
              if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1000AC1BC();
              }

              sub_1000AC1DC();
            }

            ++v10;
            --v9;
          }

          while (v9);
        }

        v32 = objc_allocWithZone(PKPaymentAuthorizationResult);

        sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
        v33 = sub_1000AC18C().super.isa;
        v34 = [v32 initWithStatus:v35 != 0 errors:v33];

        return v34;
      }
    }

    else
    {
      sub_1000172E0(&v42);
    }
  }

  else
  {
  }

  if (v6)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_1000ABA5C();
    v27 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    v28.super.isa = sub_1000AC18C().super.isa;
    v29 = [v27 initWithStatus:1 errors:v28.super.isa];
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_1000ABA5C();
    v30 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    v28.super.isa = sub_1000AC18C().super.isa;
    v29 = [v30 initWithStatus:0 errors:v28.super.isa];
  }

  v31 = v29;

  return v31;
}

id sub_100062A48(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v2 = sub_10004F0CC(0x656C746974, 0xE500000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_100017348(*(a1 + 56) + 32 * v2, &v20);
  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {

    sub_1000172E0(&v22);
    goto LABEL_27;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:

LABEL_27:
    if (qword_1000EEE80 == -1)
    {
LABEL_28:
      sub_1000AC2AC();
      sub_1000ABA5C();
      return 0;
    }

LABEL_34:
    swift_once();
    goto LABEL_28;
  }

  v4 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v4 = *&v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    goto LABEL_26;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v5 = sub_10004F0CC(0x656475746974616CLL, 0xE800000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_100017348(*(a1 + 56) + 32 * v5, &v20);
  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {

    sub_1000172E0(&v22);
LABEL_23:
    if (qword_1000EEE80 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_30;
  }

  v7 = sub_10004F0CC(0x64757469676E6F6CLL, 0xE900000000000065);
  if ((v8 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_100017348(*(a1 + 56) + 32 * v7, &v20);
  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {

    sub_1000172E0(&v22);
LABEL_31:
    if (qword_1000EEE80 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = sub_1000AC02C();

  v11 = [ObjCClassFromMetadata locationWithTitle:v10];

  v12 = objc_allocWithZone(CLLocation);
  v13 = v11;
  v14 = [v12 initWithLatitude:v18 longitude:v18];
  [v13 setGeoLocation:v14];

  if (!*(a1 + 16) || (v15 = sub_10004F0CC(0x737569646172, 0xE600000000000000), (v16 & 1) == 0))
  {

LABEL_36:

    return v13;
  }

  sub_100017348(*(a1 + 56) + 32 * v15, &v20);

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      [v13 setRadius:v18];
    }

    goto LABEL_36;
  }

  sub_1000172E0(&v22);
  return v13;
}

void *sub_100062EC8()
{
  v1 = v0;
  v29 = &_swiftEmptyDictionarySingleton;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000AC06C();
    v6 = v5;

    v28 = &type metadata for String;
    *&v27 = v4;
    *(&v27 + 1) = v6;
    sub_100006910(&v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = &_swiftEmptyDictionarySingleton;
    sub_10003A3E8(v26, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v29 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_100039E5C(0x656C746974, 0xE500000000000000, &v27);
    sub_1000172E0(&v27);
  }

  v8 = [v0 geoLocation];
  if (v8)
  {
    v9 = v8;
    [v8 coordinate];
    v11 = v10;

    v28 = &type metadata for Double;
    *&v27 = v11;
    sub_100006910(&v27, v26);
    v12 = v29;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v12;
    sub_10003A3E8(v26, 0x656475746974616CLL, 0xE800000000000000, v13);
    v29 = v12;
  }

  else
  {
    sub_100039E5C(0x656475746974616CLL, 0xE800000000000000, &v27);
    sub_1000172E0(&v27);
  }

  v14 = [v1 geoLocation];
  if (v14)
  {
    v15 = v14;
    [v14 coordinate];
    v17 = v16;

    v28 = &type metadata for Double;
    *&v27 = v17;
    sub_100006910(&v27, v26);
    v18 = v29;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v25 = v18;
    sub_10003A3E8(v26, 0x64757469676E6F6CLL, 0xE900000000000065, v19);
  }

  else
  {
    sub_100039E5C(0x64757469676E6F6CLL, 0xE900000000000065, &v27);
    sub_1000172E0(&v27);
    v18 = v29;
  }

  [v1 radius];
  v28 = &type metadata for Double;
  *&v27 = v20;
  sub_100006910(&v27, v26);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v26, 0x737569646172, 0xE600000000000000, v21);
  return v18;
}

uint64_t EKEventStore.events(fromDate:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v34 = a1;
  v39 = sub_1000ABF3C();
  v42 = *(v39 - 8);
  v3 = *(v42 + 64);
  __chkstk_darwin(v39, v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000ABF6C();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000AB7EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v15 = sub_1000ABF4C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  (*(v16 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v15);
  v21 = sub_1000AC35C();
  (*(v16 + 8))(v20, v15);
  (*(v12 + 16))(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v11);
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v12 + 32))(v24 + v22, &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v26 = v35;
  v25 = v36;
  *(v24 + v23) = v35;
  v27 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v37;
  *v27 = v25;
  v27[1] = v28;
  aBlock[4] = sub_100063BB4;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023BE0;
  aBlock[3] = &unk_1000DD120;
  v29 = _Block_copy(aBlock);
  v30 = v26;

  sub_1000ABF5C();
  v43 = _swiftEmptyArrayStorage;
  sub_100042004();
  sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
  sub_10004205C();
  v32 = v38;
  v31 = v39;
  sub_1000AC49C();
  sub_1000AC33C();
  _Block_release(v29);

  (*(v42 + 8))(v32, v31);
  (*(v40 + 8))(v10, v41);
}

uint64_t sub_1000635B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v5 = sub_1000ABF3C();
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000ABF6C();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000AB7EC();
  v15 = *(v37 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v37, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB76C();
  isa = [a2 calendarsForEntityType:0];
  if (!isa)
  {
    sub_100005A24(0, &qword_1000F1BE8, EKCalendar_ptr);
    sub_1000AC19C();
    isa = sub_1000AC18C().super.isa;
  }

  v21 = sub_1000AB77C().super.isa;
  v22 = sub_1000AB77C().super.isa;
  v23 = [a2 predicateForEventsWithStartDate:v21 endDate:v22 calendars:isa];

  v24 = [a2 eventsMatchingPredicate:v23];
  sub_100005A24(0, &qword_1000F1BF0, EKEvent_ptr);
  sub_1000AC19C();

  aBlock[0] = sub_100087E28(v25);
  sub_100063C68(aBlock);

  v26 = aBlock[0];
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2BC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000AF0E0;
  if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
  {
    v28 = sub_1000AC65C();
  }

  else
  {
    v28 = *(v26 + 16);
  }

  *(v27 + 56) = &type metadata for Int;
  *(v27 + 64) = &protocol witness table for Int;
  *(v27 + 32) = v28;
  sub_1000ABA5C();

  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  v29 = sub_1000AC32C();
  v30 = swift_allocObject();
  v31 = v36;
  v30[2] = v35;
  v30[3] = v31;
  v30[4] = v26;
  aBlock[4] = sub_100064F2C;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023BE0;
  aBlock[3] = &unk_1000DD170;
  v32 = _Block_copy(aBlock);

  sub_1000ABF5C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100042004();
  sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
  sub_10004205C();
  sub_1000AC49C();
  sub_1000AC33C();
  _Block_release(v32);

  (*(v40 + 8))(v9, v5);
  (*(v38 + 8))(v14, v39);
  return (*(v15 + 8))(v19, v37);
}

uint64_t sub_100063B04()
{
  v1 = sub_1000AB7EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_100063BB4()
{
  v1 = *(sub_1000AB7EC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1000635B0(v0 + v2, v4, v6, v7);
}

uint64_t sub_100063C50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100063C68(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000A4D24(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100063CE4(v6);
  return sub_1000AC5FC();
}

void sub_100063CE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1000AC77C(v2);
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
        sub_100005A24(0, &qword_1000F1BF0, EKEvent_ptr);
        v6 = sub_1000AC1CC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10006403C(v8, v9, a1, v4);
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
    sub_100063DF8(0, v2, 1, a1);
  }
}

void sub_100063DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41 = sub_1000AB7EC();
  v8 = *(*(v41 - 8) + 64);
  v10 = __chkstk_darwin(v41, v9);
  v40 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v15 = &v34 - v14;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v39 = (v13 + 8);
    v42 = v16;
    v17 = v16 + 8 * a3 - 8;
    v18 = a1 - a3;
LABEL_5:
    v37 = v17;
    v38 = a3;
    v19 = *(v42 + 8 * a3);
    v36 = v18;
    v20 = v18;
    while (1)
    {
      v21 = *v17;
      v22 = v19;
      v23 = v21;
      v24 = [v22 startDate];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      sub_1000AB7BC();

      v26 = [v23 startDate];
      if (!v26)
      {
        goto LABEL_13;
      }

      v27 = v26;
      v28 = v40;
      sub_1000AB7BC();

      v43 = sub_1000AB7CC();
      v29 = v20;
      v30 = *v39;
      v31 = v28;
      v32 = v41;
      (*v39)(v31, v41);
      v30(v15, v32);

      if (v43 == -1)
      {
        if (!v42)
        {
          goto LABEL_14;
        }

        v33 = *v17;
        v19 = *(v17 + 8);
        *v17 = v19;
        *(v17 + 8) = v33;
        v17 -= 8;
        ++v20;
        if (v29 != -1)
        {
          continue;
        }
      }

      a3 = v38 + 1;
      v17 = v37 + 8;
      v18 = v36 - 1;
      if (v38 + 1 == v35)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_10006403C(id *a1, uint64_t a2, char **a3, int64_t a4)
{
  v6 = v4;
  v147 = a1;
  v159 = sub_1000AB7EC();
  v9 = *(*(v159 - 8) + 64);
  v11 = __chkstk_darwin(v159, v10);
  v156 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v141 - v15;
  v18 = __chkstk_darwin(v14, v17);
  v150 = &v141 - v19;
  v21 = __chkstk_darwin(v18, v20);
  v151 = &v141 - v22;
  v24 = __chkstk_darwin(v21, v23);
  v143 = &v141 - v25;
  __chkstk_darwin(v24, v26);
  v155 = a3;
  v29 = a3[1];
  if (v29 >= 1)
  {
    v142 = (&v141 - v28);
    v30 = 0;
    v158 = (v27 + 8);
    v31 = _swiftEmptyArrayStorage;
    v32 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
    v146 = a4;
    v160 = v16;
    while (1)
    {
      v33 = v30;
      v34 = v30 + 1;
      v148 = v30;
      if ((v30 + 1) < v29)
      {
        v153 = v29;
        v144 = v31;
        v145 = v6;
        v35 = *v155;
        v36 = *&(*v155)[8 * v30];
        v37 = *&(*v155)[8 * v34];
        v38 = v36;
        v39 = [v37 v32[100]];
        if (!v39)
        {
          goto LABEL_142;
        }

        v40 = v39;
        v157 = v37;
        v5 = v142;
        sub_1000AB7BC();

        v41 = [v38 v32[100]];
        if (!v41)
        {
          goto LABEL_143;
        }

        v42 = v41;
        v30 = v143;
        sub_1000AB7BC();

        v154 = sub_1000AB7CC();
        v43 = v159;
        v44 = *v158;
        (*v158)(v30, v159);
        v152 = v44;
        v44(v5, v43);

        v45 = (v148 + 2);
        v149 = 8 * v148;
        v46 = &v35[8 * v148 + 16];
        while (1)
        {
          v47 = v153;
          if (v153 == v45)
          {
            break;
          }

          v48 = *(v46 - 1);
          v49 = *v46;
          v50 = v48;
          v51 = [v49 v32[100]];
          if (!v51)
          {
            goto LABEL_137;
          }

          v52 = v51;
          v53 = v151;
          sub_1000AB7BC();

          v54 = [v50 v32[100]];
          if (!v54)
          {
            goto LABEL_136;
          }

          v55 = v54;
          LODWORD(v157) = v154 == -1;
          v56 = v150;
          sub_1000AB7BC();

          v57 = sub_1000AB7CC();
          v58 = v56;
          v30 = v53;
          v59 = v159;
          v5 = v152;
          (v152)(v58, v159);
          v5(v30, v59);

          ++v45;
          ++v46;
          v16 = v160;
          v32 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
          if (((v157 ^ (v57 != -1)) & 1) == 0)
          {
            v47 = (v45 - 1);
            break;
          }
        }

        v31 = v144;
        v6 = v145;
        a4 = v146;
        v33 = v148;
        v60 = v149;
        if (v154 == -1)
        {
          if (v47 < v148)
          {
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
            return;
          }

          if (v148 < v47)
          {
            v61 = 8 * v47 - 8;
            v62 = v47;
            v63 = v148;
            do
            {
              if (v63 != --v62)
              {
                v65 = *v155;
                if (!*v155)
                {
                  goto LABEL_140;
                }

                v64 = *&v65[v60];
                *&v65[v60] = *&v65[v61];
                *&v65[v61] = v64;
              }

              ++v63;
              v61 -= 8;
              v60 += 8;
            }

            while (v63 < v62);
          }
        }

        v34 = v47;
      }

      v66 = v155[1];
      if (v34 >= v66)
      {
        v30 = v34;
        if (v34 < v33)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v67 = v34;
        v86 = __OFSUB__(v34, v33);
        v68 = v34 - v33;
        if (v86)
        {
          goto LABEL_128;
        }

        if (v68 >= a4)
        {
          goto LABEL_31;
        }

        v69 = v33 + a4;
        if (__OFADD__(v33, a4))
        {
          goto LABEL_129;
        }

        if (v69 >= v66)
        {
          v69 = v155[1];
        }

        if (v69 < v33)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v67 == v69)
        {
LABEL_31:
          v30 = v67;
          if (v67 < v33)
          {
            goto LABEL_127;
          }
        }

        else
        {
          v144 = v31;
          v145 = v6;
          v157 = *v155;
          v119 = &v157[8 * v67 - 8];
          v120 = (v33 - v67);
          v149 = v69;
          do
          {
            v153 = v119;
            v154 = v67;
            v121 = *&v157[8 * v67];
            v152 = v120;
            while (1)
            {
              v122 = *v119;
              v5 = v121;
              v123 = v122;
              v124 = [v5 v32[100]];
              if (!v124)
              {
                goto LABEL_133;
              }

              v125 = v124;
              sub_1000AB7BC();

              v126 = [v123 v32[100]];
              if (!v126)
              {
                goto LABEL_134;
              }

              v127 = v126;
              v128 = v156;
              sub_1000AB7BC();

              v129 = sub_1000AB7CC();
              v130 = v16;
              v131 = *v158;
              v132 = v128;
              v133 = v159;
              (*v158)(v132, v159);
              v131(v130, v133);

              if (v129 != -1)
              {
                break;
              }

              if (!v157)
              {
                goto LABEL_135;
              }

              v134 = *v119;
              v121 = *(v119 + 1);
              *v119 = v121;
              *(v119 + 1) = v134;
              v119 -= 8;
              v135 = __CFADD__(v120++, 1);
              v16 = v160;
              v32 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
              if (v135)
              {
                goto LABEL_86;
              }
            }

            v16 = v160;
            v32 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
LABEL_86:
            v67 = v154 + 1;
            v119 = v153 + 8;
            v120 = v152 - 1;
          }

          while (v154 + 1 != v149);
          v30 = v149;
          v31 = v144;
          v6 = v145;
          if (v149 < v148)
          {
            goto LABEL_127;
          }
        }
      }

      v70 = v31;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v31 = v70;
      }

      else
      {
        v31 = sub_1000386A8(0, *(v70 + 2) + 1, 1, v70);
      }

      v72 = *(v31 + 2);
      v71 = *(v31 + 3);
      v73 = v72 + 1;
      if (v72 >= v71 >> 1)
      {
        v31 = sub_1000386A8((v71 > 1), v72 + 1, 1, v31);
      }

      *(v31 + 2) = v73;
      v74 = &v31[16 * v72];
      *(v74 + 4) = v148;
      *(v74 + 5) = v30;
      v5 = *v147;
      if (!*v147)
      {
        goto LABEL_141;
      }

      if (v72)
      {
        while (1)
        {
          v75 = v73 - 1;
          if (v73 >= 4)
          {
            break;
          }

          if (v73 == 3)
          {
            v76 = *(v31 + 4);
            v77 = *(v31 + 5);
            v86 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            v79 = v86;
LABEL_53:
            if (v79)
            {
              goto LABEL_116;
            }

            v92 = &v31[16 * v73];
            v94 = *v92;
            v93 = *(v92 + 1);
            v95 = __OFSUB__(v93, v94);
            v96 = v93 - v94;
            v97 = v95;
            if (v95)
            {
              goto LABEL_119;
            }

            v98 = &v31[16 * v75 + 32];
            v100 = *v98;
            v99 = *(v98 + 1);
            v86 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v86)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v96, v101))
            {
              goto LABEL_123;
            }

            if (v96 + v101 >= v78)
            {
              if (v78 < v101)
              {
                v75 = v73 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          v102 = &v31[16 * v73];
          v104 = *v102;
          v103 = *(v102 + 1);
          v86 = __OFSUB__(v103, v104);
          v96 = v103 - v104;
          v97 = v86;
LABEL_67:
          if (v97)
          {
            goto LABEL_118;
          }

          v105 = &v31[16 * v75];
          v107 = *(v105 + 4);
          v106 = *(v105 + 5);
          v86 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v86)
          {
            goto LABEL_121;
          }

          if (v108 < v96)
          {
            goto LABEL_3;
          }

LABEL_74:
          v113 = v75 - 1;
          if (v75 - 1 >= v73)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
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
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (!*v155)
          {
            goto LABEL_138;
          }

          v114 = v31;
          v115 = *&v31[16 * v113 + 32];
          v116 = *&v31[16 * v75 + 40];
          sub_1000649E0(&(*v155)[8 * v115], &(*v155)[8 * *&v31[16 * v75 + 32]], &(*v155)[8 * v116], v5);
          if (v6)
          {
            goto LABEL_110;
          }

          if (v116 < v115)
          {
            goto LABEL_112;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v117 = v114;
          }

          else
          {
            v117 = sub_1000A2CCC(v114);
          }

          v16 = v160;
          if (v113 >= *(v117 + 2))
          {
            goto LABEL_113;
          }

          v118 = &v117[16 * v113];
          *(v118 + 4) = v115;
          *(v118 + 5) = v116;
          v161 = v117;
          sub_1000A2C40(v75);
          v31 = v161;
          v73 = *(v161 + 2);
          if (v73 <= 1)
          {
            goto LABEL_3;
          }
        }

        v80 = &v31[16 * v73 + 32];
        v81 = *(v80 - 64);
        v82 = *(v80 - 56);
        v86 = __OFSUB__(v82, v81);
        v83 = v82 - v81;
        if (v86)
        {
          goto LABEL_114;
        }

        v85 = *(v80 - 48);
        v84 = *(v80 - 40);
        v86 = __OFSUB__(v84, v85);
        v78 = v84 - v85;
        v79 = v86;
        if (v86)
        {
          goto LABEL_115;
        }

        v87 = &v31[16 * v73];
        v89 = *v87;
        v88 = *(v87 + 1);
        v86 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v86)
        {
          goto LABEL_117;
        }

        v86 = __OFADD__(v78, v90);
        v91 = v78 + v90;
        if (v86)
        {
          goto LABEL_120;
        }

        if (v91 >= v83)
        {
          v109 = &v31[16 * v75 + 32];
          v111 = *v109;
          v110 = *(v109 + 1);
          v86 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v86)
          {
            goto LABEL_124;
          }

          if (v78 < v112)
          {
            v75 = v73 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_53;
      }

LABEL_3:
      v29 = v155[1];
      a4 = v146;
      if (v30 >= v29)
      {
        goto LABEL_99;
      }
    }
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_99:
  v5 = *v147;
  if (!*v147)
  {
    goto LABEL_144;
  }

  v30 = v31;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v136 = v30;
  }

  else
  {
LABEL_131:
    v136 = sub_1000A2CCC(v30);
  }

  v161 = v136;
  v30 = *(v136 + 2);
  if (v30 >= 2)
  {
    while (*v155)
    {
      v137 = *&v136[16 * v30];
      v138 = v136;
      v139 = *&v136[16 * v30 + 24];
      sub_1000649E0(&(*v155)[8 * v137], &(*v155)[8 * *&v136[16 * v30 + 16]], &(*v155)[8 * v139], v5);
      if (v6)
      {
        goto LABEL_110;
      }

      if (v139 < v137)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_1000A2CCC(v138);
      }

      if (v30 - 2 >= *(v138 + 2))
      {
        goto LABEL_126;
      }

      v140 = &v138[16 * v30];
      *v140 = v137;
      *(v140 + 1) = v139;
      v161 = v138;
      sub_1000A2C40(v30 - 1);
      v136 = v161;
      v30 = *(v161 + 2);
      if (v30 <= 1)
      {
        goto LABEL_110;
      }
    }

    goto LABEL_139;
  }

LABEL_110:
}

uint64_t sub_1000649E0(void **a1, void **a2, char *a3, void **a4)
{
  v70 = sub_1000AB7EC();
  v8 = *(v70 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v70, v10);
  v66 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v68 = (&v63 - v15);
  v17 = __chkstk_darwin(v14, v16);
  v65 = &v63 - v18;
  __chkstk_darwin(v17, v19);
  v67 = (&v63 - v20);
  v21 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v21 = a2 - a1;
  }

  v22 = v21 >> 3;
  v23 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v23 = a3 - a2;
  }

  v24 = v23 >> 3;
  if (v22 < v23 >> 3)
  {
    if (a4 != a1 || &a1[v22] <= a4)
    {
      memmove(a4, a1, 8 * v22);
    }

    v72 = &a4[v22];
    if (a2 - a1 >= 8)
    {
      v25 = a2;
      if (a2 < a3)
      {
        v66 = (v8 + 8);
        v26 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
        v71 = a3;
        v27 = v67;
        while (1)
        {
          v28 = *v25;
          v68 = a4;
          v29 = *a4;
          v30 = v28;
          v31 = v29;
          result = [v30 v26[100]];
          if (!result)
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v33 = result;
          v69 = a1;
          sub_1000AB7BC();

          result = [v31 v26[100]];
          if (!result)
          {
            goto LABEL_48;
          }

          v34 = result;
          v35 = v65;
          sub_1000AB7BC();

          v36 = sub_1000AB7CC();
          v37 = *v66;
          v38 = v70;
          (*v66)(v35, v70);
          v37(v27, v38);

          if (v36 != -1)
          {
            break;
          }

          v40 = v25;
          a4 = v68;
          v39 = v69;
          v42 = v69 == v25++;
          v41 = v71;
          if (!v42)
          {
            goto LABEL_16;
          }

LABEL_17:
          a1 = v39 + 1;
          v26 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
          if (a4 >= v72 || v25 >= v41)
          {
            goto LABEL_41;
          }
        }

        v39 = v69;
        v40 = v68;
        a4 = v68 + 1;
        v41 = v71;
        if (v69 == v68)
        {
          goto LABEL_17;
        }

LABEL_16:
        *v39 = *v40;
        goto LABEL_17;
      }
    }

LABEL_41:
    a2 = a1;
    goto LABEL_43;
  }

  if (a4 != a2 || &a2[v24] <= a4)
  {
    memmove(a4, a2, 8 * v24);
  }

  v72 = &a4[v24];
  if (a3 - a2 < 8 || a2 <= a1)
  {
LABEL_43:
    if (a2 != a4 || a2 >= (a4 + ((v72 - a4 + (v72 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v72 - a4));
    }

    return 1;
  }

  v65 = (v8 + 8);
  v43 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
  v69 = a1;
LABEL_29:
  v64 = a2;
  v44 = a2 - 1;
  v45 = (a3 - 8);
  v46 = v72;
  v67 = v44;
  while (1)
  {
    v71 = v45;
    v47 = *--v46;
    v48 = *v44;
    v49 = v47;
    v50 = v48;
    result = [v49 v43[100]];
    if (!result)
    {
      goto LABEL_49;
    }

    v51 = result;
    v52 = a4;
    v53 = v68;
    sub_1000AB7BC();

    result = [v50 v43[100]];
    if (!result)
    {
      break;
    }

    v54 = result;
    v55 = v66;
    sub_1000AB7BC();

    v56 = sub_1000AB7CC();
    v57 = *v65;
    v58 = v55;
    v59 = v70;
    (*v65)(v58, v70);
    v57(v53, v59);

    if (v56 == -1)
    {
      a3 = v71;
      a4 = v52;
      v61 = v69;
      v62 = v67;
      if (v71 + 1 != v64)
      {
        *v71 = *v67;
      }

      v43 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
      if (v72 <= v52 || (a2 = v62, v62 <= v61))
      {
        a2 = v62;
        goto LABEL_43;
      }

      goto LABEL_29;
    }

    v60 = v71;
    a4 = v52;
    v44 = v67;
    if (v71 + 1 != v72)
    {
      *v71 = *v46;
    }

    v45 = v60 - 1;
    v72 = v46;
    v43 = &selRef_initFromOriginalMessage_rootKey_rootObject_receivedMessage_replyMessage_;
    if (v46 <= a4)
    {
      v72 = v46;
      a2 = v64;
      goto LABEL_43;
    }
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_100064EEC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100064F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItem] = 0;
  v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType] = 0;
  v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_showsSeparator] = 1;
  v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected] = 0;
  v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_accessibilityRoleIsButton] = 0;
  v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_isDimmed] = 0;
  v44 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_titleLabel;
  v4 = [objc_allocWithZone(UILabel) init];
  [v4 setNumberOfLines:0];
  v47 = objc_opt_self();
  v5 = [v47 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  sub_10000413C(&qword_1000EF8B0, &unk_1000B4000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AF0E0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_10000413C(&qword_1000EF8B8, &qword_1000B0600);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1000AF0E0;
  *(v7 + 32) = UIFontWeightTrait;
  *(v7 + 40) = UIFontWeightSemibold;
  v8 = UIFontDescriptorTraitsAttribute;
  v9 = UIFontWeightTrait;
  v10 = sub_10004FA58(v7);
  swift_setDeallocating();
  sub_10000E784(v7 + 32, &qword_1000EF8C0, &qword_1000B0608);
  *(inited + 64) = sub_10000413C(&qword_1000EF8C8, &unk_1000B0610);
  *(inited + 40) = v10;
  sub_10004FB48(inited);
  swift_setDeallocating();
  sub_10000E784(inited + 32, &qword_1000EF8D0, qword_1000B4010);
  type metadata accessor for AttributeName(0);
  sub_100013968();
  isa = sub_1000ABFAC().super.isa;

  v12 = [v5 fontDescriptorByAddingAttributes:isa];

  v13 = objc_opt_self();
  v14 = [v13 fontWithDescriptor:v12 size:13.0];
  v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v16 = [v15 scaledFontForFont:v14];

  [v4 setFont:v16];
  *&v3[v44] = v4;
  v17 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_subtitleLabel;
  v18 = [objc_allocWithZone(UILabel) init];
  [v18 setNumberOfLines:0];
  v19 = [v47 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v20 = [v13 fontWithDescriptor:v19 size:11.0];
  v21 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
  v22 = [v21 scaledFontForFont:v20];

  [v18 setFont:v22];
  *&v3[v17] = v18;
  v23 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView;
  v24 = [objc_allocWithZone(UIImageView) init];
  [v24 setContentMode:2];
  v25 = [v24 layer];

  [v25 setMasksToBounds:1];
  *&v3[v23] = v24;
  v26 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_horizontalStackView;
  v27 = [objc_allocWithZone(UIStackView) init];
  [v27 setAxis:0];
  [v27 setAlignment:3];
  [v27 setDistribution:0];
  [v27 setSpacing:10.0];
  *&v3[v26] = v27;
  v28 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_verticalStackView;
  v29 = [objc_allocWithZone(UIStackView) init];
  [v29 setAxis:1];
  [v29 setAlignment:1];
  [v29 setDistribution:0];
  [v29 setSpacing:2.0];
  *&v3[v28] = v29;
  v30 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkImageView;
  v31 = [v47 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v32 = [v13 fontWithDescriptor:v31 size:13.0];
  v33 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v34 = [v33 scaledFontForFont:v32];

  v35 = [objc_opt_self() configurationWithFont:v34];
  v36 = sub_1000AC02C();
  v37 = [objc_opt_self() systemImageNamed:v36 withConfiguration:v35];

  v38 = [objc_allocWithZone(UIImageView) initWithImage:v37];
  *&v3[v30] = v38;
  v39 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkPlacholderView;
  *&v3[v39] = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView] = 0;
  if (a3)
  {
    v40 = sub_1000AC02C();
  }

  else
  {
    v40 = 0;
  }

  v48.receiver = v3;
  v48.super_class = type metadata accessor for MacListPickerTableViewCell();
  v41 = objc_msgSendSuper2(&v48, "initWithStyle:reuseIdentifier:", a1, v40);

  v42 = v41;
  sub_1000656F0();
  sub_100065840();
  sub_1000662E8();

  return v42;
}

void sub_1000656F0()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_verticalStackView];
  [v1 addArrangedSubview:*&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_titleLabel]];
  [v1 addArrangedSubview:*&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_subtitleLabel]];
  v2 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_horizontalStackView];
  [v2 addArrangedSubview:*&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView]];
  [v2 addArrangedSubview:v1];
  [v2 addArrangedSubview:*&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkImageView]];
  [v2 addArrangedSubview:*&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkPlacholderView]];
  v3 = [v0 contentView];
  [v3 addSubview:v2];

  v4 = [v0 contentView];
  v5 = sub_100066378();
  [v4 addSubview:v5];
}

void sub_100065840()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_horizontalStackView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000B3CB0;
  v3 = [v1 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:12.0];
  *(v2 + 32) = v6;
  v7 = [v1 bottomAnchor];
  v8 = [v0 contentView];
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:-12.0];
  *(v2 + 40) = v10;
  v11 = [v1 leadingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
  *(v2 + 48) = v14;
  v15 = [v1 trailingAnchor];
  v16 = [v0 contentView];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:-16.0];
  *(v2 + 56) = v18;
  v19 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView];
  v20 = [v19 heightAnchor];
  v21 = [v20 constraintEqualToConstant:48.0];

  *(v2 + 64) = v21;
  v22 = [v19 widthAnchor];
  v23 = [v22 constraintEqualToConstant:48.0];

  *(v2 + 72) = v23;
  v24 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkPlacholderView];
  v25 = [v24 heightAnchor];
  v26 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkImageView];
  v27 = [v26 image];
  v28 = 0.0;
  v29 = 0.0;
  if (v27)
  {
    v30 = v27;
    [v27 size];
    v29 = v31;
  }

  v32 = [v25 constraintEqualToConstant:v29];

  *(v2 + 80) = v32;
  v33 = [v24 widthAnchor];
  v34 = [v26 image];
  if (v34)
  {
    v35 = v34;
    [v34 size];
    v28 = v36;
  }

  v37 = objc_opt_self();
  v38 = [v33 constraintEqualToConstant:v28];

  *(v2 + 88) = v38;
  sub_10000F840();
  isa = sub_1000AC18C().super.isa;

  [v37 activateConstraints:isa];

  v60 = [v0 contentView];
  v40 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_verticalStackView];
  v41 = v1;
  v42 = sub_100066378();
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

  v43 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView;
  v44 = [*&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView] heightAnchor];
  v45 = [v0 traitCollection];
  [v45 displayScale];
  v47 = v46;

  if (v47 <= 0.0)
  {
    v48 = [objc_opt_self() mainScreen];
    [v48 scale];
    v47 = v49;

    if (v47 <= 0.0)
    {
      v47 = 1.0;
    }
  }

  v50 = [v44 constraintEqualToConstant:1.0 / v47];

  [v50 setActive:1];
  v51 = [*&v0[v43] bottomAnchor];
  v52 = [v60 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-1.0];

  [v53 setActive:1];
  v54 = [*&v0[v43] leadingAnchor];
  v55 = [v40 leadingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:0.0];

  [v56 setActive:1];
  v57 = [*&v0[v43] trailingAnchor];
  v58 = [v41 trailingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:-0.0];

  [v59 setActive:1];
}

void sub_100065F44()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItem];
  if (v1)
  {
    v2 = v0;
    v3 = *&v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_titleLabel];
    v4 = v1[5];
    v5 = v1[6];

    v6 = sub_1000AC02C();

    [v3 setText:v6];

    v7 = v1[8];
    if (v7)
    {
      v8 = v1[7];
      v9 = *&v2[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_subtitleLabel];
      v10 = v1[8];

      v11 = sub_1000AC02C();
      [v9 setText:v11];

      [v9 setHidden:0];
      v26 = v1[5];
      v28 = v1[6];

      v31._countAndFlagsBits = 8250;
      v31._object = 0xE200000000000000;
      sub_1000AC12C(v31);

      v32._countAndFlagsBits = v8;
      v32._object = v7;
      sub_1000AC12C(v32);
    }

    else
    {
      v12 = *&v2[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_subtitleLabel];
      [v12 setText:0];
      [v12 setHidden:1];
      v14 = v1[5];
      v13 = v1[6];
    }

    v15 = sub_1000AC02C();

    [v2 setAccessibilityLabel:v15];

    v16 = sub_1000600B0();
    v17 = *&v2[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView];
    if (v16)
    {
      v18 = v16;
      [*&v2[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView] setImage:v16];
      [v17 setHidden:0];
      v19 = v1[11];
      if (v19 && (v20 = [v19 imageDescription]) != 0)
      {
        v21 = v20;
        [v17 setAccessibilityLabel:v20];

        [v17 setIsAccessibilityElement:{1, v26, v28}];
      }

      else
      {
        [v17 setAccessibilityLabel:{0, v26, v28}];
        [v17 setIsAccessibilityElement:{0, v27, v29}];
      }
    }

    else
    {
      [*&v2[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView] setHidden:1];
      [v17 setAccessibilityLabel:0];
      [v17 setIsAccessibilityElement:0];
    }

    v22 = sub_100066378();
    if (![v2 isSelected] || (v23 = 0.0, v2[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType] != 1))
    {
      v23 = 1.0;
    }

    [v22 setAlpha:{v23, v26, v28}];

    v24 = *&v2[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkImageView];
    if (v2[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType] > 1u)
    {
      v25 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected;
      [v24 setHidden:(v2[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected] & 1) == 0];
      [*&v2[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkPlacholderView] setHidden:v2[v25]];
    }

    else
    {
      [v24 setHidden:1];
      [*&v2[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkPlacholderView] setHidden:1];
    }

    [v2 setNeedsUpdateConfiguration];
  }
}

id sub_1000662E8()
{
  if (v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_accessibilityRoleIsButton])
  {
    v1 = &UIAccessibilityTraitButton;
  }

  else
  {
    v1 = &UIAccessibilityTraitStaticText;
  }

  v2 = *v1;
  if (v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_isDimmed] == 1)
  {
    v3 = UIAccessibilityTraitNotEnabled;
    if ((UIAccessibilityTraitNotEnabled & ~v2) == 0)
    {
      v3 = 0;
    }

    v2 |= v3;
  }

  if (v0[OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected] == 1)
  {
    v4 = UIAccessibilityTraitSelected;
    if ((UIAccessibilityTraitSelected & ~v2) == 0)
    {
      v4 = 0;
    }

    v2 |= v4;
  }

  return [v0 setAccessibilityTraits:v2];
}

id sub_100066378()
{
  v1 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1000663F0(uint64_t a1)
{
  v2 = sub_10000413C(&unk_1000F1C90, &qword_1000B3FF8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v68 = &v59 - v5;
  v67 = sub_1000ABB7C();
  v65 = *(v67 - 8);
  v6 = *(v65 + 64);
  __chkstk_darwin(v67, v7);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1000ABBDC();
  v73 = *(v71 - 8);
  v9 = *(v73 + 64);
  v11 = __chkstk_darwin(v71, v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v59 - v15;
  v17 = sub_1000ABB3C();
  v70 = *(v17 - 8);
  v18 = *(v70 + 64);
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v69 = &v59 - v24;
  v25 = sub_1000ABAEC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25, v28);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v26;
  v31 = *(v26 + 16);
  v72 = v32;
  v31(v30, a1);
  if (sub_1000ABABC())
  {
    sub_1000ABADC();
  }

  sub_1000ABB1C();
  v33 = v72;
  v76 = v72;
  v77 = &protocol witness table for UICellConfigurationState;
  v34 = sub_100030970(v75);
  (v31)(v34, v30, v33);
  sub_1000ABB2C();
  v62 = *(v70 + 8);
  v63 = v70 + 8;
  v62(v22, v17);
  sub_10000E738(v75);
  sub_1000ABAFC();
  if (qword_1000EEDC0 != -1)
  {
    swift_once();
  }

  v35 = qword_1000FBEF0;
  sub_1000ABB0C();
  v36 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType;
  if (*(v74 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType) <= 1u)
  {
    sub_1000ABABC();
  }

  v66 = v17;
  sub_1000ABB4C();
  v37 = v72;
  v76 = v72;
  v77 = &protocol witness table for UICellConfigurationState;
  v38 = sub_100030970(v75);
  (v31)(v38, v30, v37);
  sub_1000ABBCC();
  v39 = *(v73 + 8);
  v73 += 8;
  v61 = v39;
  v39(v13, v71);
  sub_10000E738(v75);
  if (*(v74 + v36) == 2)
  {
    v40 = objc_opt_self();
    v41 = [v40 labelColor];
    v42 = sub_1000ABB8C();
    sub_1000ABB6C();
    v42(v75, 0);
    v43 = [v40 labelColor];
    v44 = sub_1000ABBAC();
    sub_1000ABB6C();
    v44(v75, 0);
  }

  v45 = v74;
  v46 = *(v74 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_titleLabel);
  v47 = v60;
  sub_1000ABB9C();
  isa = sub_1000ABB5C().super.isa;
  v49 = *(v65 + 8);
  v50 = v16;
  v51 = v67;
  v49(v47, v67);
  [v46 setTextColor:isa];

  v52 = *(v45 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_subtitleLabel);
  sub_1000ABBBC();
  v53 = sub_1000ABB5C().super.isa;
  v49(v47, v51);
  [v52 setTextColor:v53];

  v55 = v69;
  v54 = v70;
  v56 = v68;
  v57 = v66;
  (*(v70 + 16))(v68, v69, v66);
  (*(v54 + 56))(v56, 0, 1, v57);
  sub_1000AC2CC();
  v61(v50, v71);
  v62(v55, v57);
  return (*(v64 + 8))(v30, v72);
}

id sub_100066B34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MacListPickerTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100066C48()
{
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_selectionType) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_showsSeparator) = 1;
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemSelected) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_accessibilityRoleIsButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_isDimmed) = 0;
  v37 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_titleLabel;
  v1 = [objc_allocWithZone(UILabel) init];
  [v1 setNumberOfLines:0];
  v38 = objc_opt_self();
  v2 = [v38 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  sub_10000413C(&qword_1000EF8B0, &unk_1000B4000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AF0E0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_10000413C(&qword_1000EF8B8, &qword_1000B0600);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1000AF0E0;
  *(v4 + 32) = UIFontWeightTrait;
  *(v4 + 40) = UIFontWeightSemibold;
  v5 = UIFontDescriptorTraitsAttribute;
  v6 = UIFontWeightTrait;
  v7 = sub_10004FA58(v4);

  *(inited + 64) = sub_10000413C(&qword_1000EF8C8, &unk_1000B0610);
  *(inited + 40) = v7;
  sub_10004FB48(inited);

  type metadata accessor for AttributeName(0);
  sub_100013968();
  isa = sub_1000ABFAC().super.isa;

  v9 = [v2 fontDescriptorByAddingAttributes:isa];

  v36 = objc_opt_self();
  v10 = [v36 fontWithDescriptor:v9 size:13.0];
  v11 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v12 = [v11 scaledFontForFont:v10];

  [v1 setFont:v12];
  *(v0 + v37) = v1;
  v13 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_subtitleLabel;
  v14 = [objc_allocWithZone(UILabel) init];
  [v14 setNumberOfLines:0];
  v15 = [v38 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v16 = [v36 fontWithDescriptor:v15 size:11.0];
  v17 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
  v18 = [v17 scaledFontForFont:v16];

  [v14 setFont:v18];
  *(v0 + v13) = v14;
  v19 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_listItemImageView;
  v20 = [objc_allocWithZone(UIImageView) init];
  [v20 setContentMode:2];
  v21 = [v20 layer];

  [v21 setMasksToBounds:1];
  *(v0 + v19) = v20;
  v22 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_horizontalStackView;
  v23 = [objc_allocWithZone(UIStackView) init];
  [v23 setAxis:0];
  [v23 setAlignment:3];
  [v23 setDistribution:0];
  [v23 setSpacing:10.0];
  *(v0 + v22) = v23;
  v24 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_verticalStackView;
  v25 = [objc_allocWithZone(UIStackView) init];
  [v25 setAxis:1];
  [v25 setAlignment:1];
  [v25 setDistribution:0];
  [v25 setSpacing:2.0];
  *(v0 + v24) = v25;
  v26 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkImageView;
  v27 = [v38 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v28 = [v36 fontWithDescriptor:v27 size:13.0];
  v29 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v30 = [v29 scaledFontForFont:v28];

  v31 = [objc_opt_self() configurationWithFont:v30];
  v32 = sub_1000AC02C();
  v33 = [objc_opt_self() systemImageNamed:v32 withConfiguration:v31];

  v34 = [objc_allocWithZone(UIImageView) initWithImage:v33];
  *(v0 + v26) = v34;
  v35 = OBJC_IVAR____TtC8Business26MacListPickerTableViewCell_checkmarkPlacholderView;
  *(v0 + v35) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC8Business26MacListPickerTableViewCell____lazy_storage___separatorView) = 0;
  sub_1000AC63C();
  __break(1u);
}

NSString sub_1000672D8()
{
  result = sub_1000AC02C();
  qword_1000FBFE0 = result;
  return result;
}

char *sub_100067310(void *a1, void *a2, char a3)
{
  v7 = type metadata accessor for URLHelper();
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v48 - v14;
  *&v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_rawDictionary] = 0;
  v16 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_label;
  *&v3[v16] = [objc_allocWithZone(UILabel) init];
  v17 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
  *&v3[v17] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_showStateLabel] = 0;
  *&v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController] = 0;
  v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded] = 0;
  v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_viewDidAppearFired] = 0;
  v18 = &v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion];
  *v18 = 0;
  *(v18 + 1) = 0;
  v3[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_userCanSelect] = a3;
  v19 = a1;
  v20 = a2;
  sub_10004EA70(v15);
  sub_10001E764(v15, v12);
  v21 = sub_1000A47C0(v19, v20, v12, v3);

  sub_10001E7C8(v15);
  v22 = OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message;
  v23 = [*&v21[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] dictionaryValue];
  v24 = sub_1000ABFBC();

  if (*(v24 + 16))
  {
    v25 = sub_10004F0CC(0x63696D616E7964, 0xE700000000000000);
    if (v26)
    {
      sub_1000068B4(*(v24 + 56) + 32 * v25, &v54);
      sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
      if (swift_dynamicCast())
      {
        v27 = *&v53[0];
        if (*(*&v53[0] + 16) && (v28 = sub_10004F0CC(0x6E6F6973726576, 0xE700000000000000), (v29 & 1) != 0))
        {
          sub_1000068B4(*(v27 + 56) + 32 * v28, &v54);

          if (swift_dynamicCast())
          {
            v51 = v53[0];
            if (qword_1000EEEA8 != -1)
            {
              swift_once();
            }

            v30 = *&v21[v22];
            v50 = qword_1000F3AE0;
            v49 = v21;
            v31 = [v30 imageStore];
            if (v31)
            {
              v32 = v31;
              v48 = [v31 rawArray];

              v33 = v48;
              if (v48)
              {
                v55 = sub_100005A24(0, &qword_1000F1DD8, NSArray_ptr);
                *&v54 = v33;
                sub_100006910(&v54, v53);
                v48 = v33;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v52 = v24;
                sub_10003A3E8(v53, 0x736567616D69, 0xE600000000000000, isUniquelyReferenced_nonNull_native);

                v24 = v52;
              }
            }

            v35 = *(v24 + 16);
            if (v35)
            {
              v36 = sub_10004F0CC(0x6E655F6775626564, 0xED000064656C6261);
              if ((v37 & 1) != 0 && (sub_1000068B4(*(v24 + 56) + 32 * v36, &v54), swift_dynamicCast()))
              {
                LOBYTE(v35) = v53[0];
              }

              else
              {
                LOBYTE(v35) = 0;
              }
            }

            v39 = v49;
            v49[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_showStateLabel] = v35;
            v40 = *&v21[v22];

            v41 = [v40 isFromMe];
            v55 = &type metadata for Bool;
            LOBYTE(v54) = v41;
            sub_100006910(&v54, v53);
            v42 = swift_isUniquelyReferenced_nonNull_native();
            v52 = v24;
            sub_10003A3E8(v53, 0x654D6D6F72467369, 0xE800000000000000, v42);
            v43 = *&v39[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_rawDictionary];
            *&v39[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_rawDictionary] = v52;

            v44 = *&v39[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion + 8];
            v45 = v51;
            *&v39[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion] = v51;

            if (qword_1000EEE80 != -1)
            {
              swift_once();
            }

            sub_1000AC28C();
            sub_1000ABA5C();
            v46 = v50;
            *&v50[OBJC_IVAR____TtC8Business22IMBJITAppBundleManager_delegate + 8] = &off_1000DD1D0;
            swift_unknownObjectWeakAssign();
            v47 = [objc_opt_self() shared];
            [v47 setDelegate:v39];

            IMBJITAppBundleManager.load(_:)(v45);

            goto LABEL_20;
          }
        }

        else
        {
        }
      }

LABEL_20:

      return v21;
    }
  }

  return v21;
}

void sub_1000679C0(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for IMBJITAppKitViewController();
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1 & 1);
  v3 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController;
  v4 = *&v1[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController];
  if (v4)
  {
    v5 = v4;
    [v5 willMoveToParentViewController:0];
    v6 = [v5 view];
    if (v6)
    {
      v7 = v6;
      [v6 removeFromSuperview];

      [v5 removeFromParentViewController];
      v8 = *&v1[v3];
      *&v1[v3] = 0;

      v1[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100067AE8()
{
  if (qword_1000EEEA8 != -1)
  {
    swift_once();
  }

  v1 = [qword_1000F3AE0 bundleState];
  if (*(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_viewDidAppearFired) != 1)
  {
    if (qword_1000EEE80 == -1)
    {
LABEL_8:
      sub_1000AC28C();

      sub_1000ABA5C();
      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_8;
  }

  if (*(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded))
  {
    if (qword_1000EEE80 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  if (v1 == 5)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_1000ABA5C();
    v3 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
    [*(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator) stopAnimating];
    [*(v0 + v3) removeFromSuperview];

    sub_100069ED8();
  }

  else if (v1 == 3)
  {
    v2 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
    [*(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator) stopAnimating];
    [*(v0 + v2) removeFromSuperview];

    sub_100067D5C();
  }

  else
  {

    sub_100068638();
  }
}

void sub_100067D5C()
{
  v1 = [v0 viewIfLoaded];
  if (!v1)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2AC();
    sub_1000ABA5C();

    sub_100069ED8();
    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_rawDictionary];
  v3 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded;
  v44 = v1;
  if (!v2)
  {
    if (!v0[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded])
    {
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      sub_1000AC2AC();
      sub_1000ABA5C();
      v24 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
      [*&v0[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator] stopAnimating];
      [*&v0[v24] removeFromSuperview];
      sub_100069ED8();
      goto LABEL_23;
    }

LABEL_17:
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC28C();
    sub_1000ABA5C();
LABEL_23:

    return;
  }

  if (v0[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded])
  {
    goto LABEL_17;
  }

  v4 = v0;
  v5 = *&v0[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation];

  v6 = [v5 recipientAddresses];
  v7 = sub_1000AC19C();

  v47 = sub_10000413C(qword_1000F1E10, &qword_1000B0490);
  *&v46 = v7;
  sub_100006910(&v46, v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v45, 0xD000000000000012, 0x80000001000BAF20, isUniquelyReferenced_nonNull_native);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC28C();
  sub_1000ABA5C();
  v9 = [objc_opt_self() shared];
  v10 = sub_1000AC02C();
  sub_10004D7AC(v2);
  isa = sub_1000ABFAC().super.isa;

  v12 = [v9 loadPage:v10 withData:isa];

  [v12 loadViewIfNeeded];
  v13 = [v12 view];
  if (!v13)
  {

    sub_1000AC2AC();
    sub_1000ABA5C();
    v25 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
    [*&v4[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator] stopAnimating];
    [*&v4[v25] removeFromSuperview];
    sub_100069ED8();

LABEL_31:
    return;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = v4;
  sub_10006A440();
  [*&v4[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator] stopAnimating];
  [v4 loadViewIfNeeded];
  v16 = [v4 view];
  if (v16)
  {
    v17 = v16;
    [v16 addSubview:v14];

    v18 = [v4 view];
    if (v18)
    {
      v19 = v18;

      [v19 bringSubviewToFront:v14];

      [v4 addChildViewController:v12];
      [v12 didMoveToParentViewController:v4];
      sub_10000413C(&unk_1000F06B0, qword_1000B0520);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000B04D0;
      v21 = [v14 topAnchor];
      if (sub_10002CE60() == 1)
      {
        v22 = [v44 safeAreaLayoutGuide];
        v23 = [v22 topAnchor];
      }

      else
      {
        v23 = [v44 topAnchor];
      }

      v43 = objc_opt_self();
      v26 = [v21 constraintEqualToAnchor:v23];

      *(v20 + 32) = v26;
      v27 = [v14 bottomAnchor];
      v28 = [v44 safeAreaLayoutGuide];
      v29 = [v28 bottomAnchor];

      v30 = [v27 constraintEqualToAnchor:v29];
      *(v20 + 40) = v30;
      v31 = [v14 leftAnchor];
      v32 = [v44 safeAreaLayoutGuide];
      v33 = [v32 leftAnchor];

      v34 = [v31 constraintEqualToAnchor:v33];
      *(v20 + 48) = v34;
      v35 = [v14 rightAnchor];
      v36 = [v44 safeAreaLayoutGuide];
      v37 = [v36 rightAnchor];

      v38 = [v35 constraintEqualToAnchor:v37];
      *(v20 + 56) = v38;
      sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
      v39 = sub_1000AC18C().super.isa;

      [v43 activateConstraints:v39];

      v15[v3] = 1;
      v40 = *&v15[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController];
      *&v15[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController] = v12;
      v41 = v12;

      v42 = [objc_opt_self() defaultCenter];
      if (qword_1000EEE70 != -1)
      {
        swift_once();
      }

      [v42 addObserver:v15 selector:? name:? object:?];

      goto LABEL_31;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100068638()
{
  v1 = v0;
  v2 = sub_1000ABF3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000ABF6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000ABF8C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v20 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v18, v21);
  v24 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded;
  if ((v1[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded] & 1) == 0)
  {
    v94 = v15;
    v95 = v88 - v23;
    v96 = v13;
    v97 = v22;
    v32 = [v1 view];
    if (v32)
    {
      v33 = v32;
      v89 = v9;
      v90 = v7;
      v91 = v8;
      v92 = v3;
      v93 = v2;
      v34 = [objc_opt_self() systemBackgroundColor];
      [v33 setBackgroundColor:v34];

      v35 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
      [*&v1[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator] setActivityIndicatorViewStyle:100];
      [*&v1[v35] setTranslatesAutoresizingMaskIntoConstraints:0];
      [*&v1[v35] setHidesWhenStopped:1];
      v36 = [v1 view];
      if (v36)
      {
        v37 = v36;
        [v36 addSubview:*&v1[v35]];

        v88[2] = sub_10000413C(&unk_1000F06B0, qword_1000B0520);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1000B3780;
        v39 = [*&v1[v35] centerXAnchor];
        v40 = [v1 view];
        if (v40)
        {
          v41 = v40;
          v42 = [v40 centerXAnchor];

          v43 = [v39 constraintEqualToAnchor:v42];
          *(v38 + 32) = v43;
          v44 = [*&v1[v35] centerYAnchor];
          v45 = [v1 view];
          if (v45)
          {
            v46 = v45;
            v47 = objc_opt_self();
            v48 = [v46 centerYAnchor];

            v49 = [v44 constraintEqualToAnchor:v48];
            *(v38 + 40) = v49;
            v88[1] = sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
            isa = sub_1000AC18C().super.isa;

            [v47 activateConstraints:isa];

            sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
            v51 = sub_1000AC32C();
            sub_1000ABF7C();
            v52 = v95;
            sub_1000ABF9C();
            v94 = *(v94 + 8);
            (v94)(v20, v97);
            v53 = swift_allocObject();
            *(v53 + 16) = v1;
            aBlock[4] = sub_10006A824;
            aBlock[5] = v53;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100023BE0;
            aBlock[3] = &unk_1000DD218;
            v54 = _Block_copy(aBlock);
            v55 = v1;

            v56 = v96;
            sub_1000ABF5C();
            aBlock[0] = _swiftEmptyArrayStorage;
            sub_100042004();
            sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
            sub_10004205C();
            v57 = v90;
            v58 = v93;
            sub_1000AC49C();
            sub_1000AC30C();
            _Block_release(v54);

            (*(v92 + 8))(v57, v58);
            (*(v89 + 8))(v56, v91);
            (v94)(v52, v97);
            if (v55[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_showStateLabel] != 1)
            {
              return;
            }

            v59 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_label;
            [*&v55[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_label] setTranslatesAutoresizingMaskIntoConstraints:0];
            [*&v55[v59] setNumberOfLines:0];
            v60 = *&v55[v59];
            v61 = sub_1000AC02C();
            [v60 setText:v61];

            v62 = [v55 view];
            if (v62)
            {
              v63 = v62;
              [v62 addSubview:*&v55[v59]];

              v64 = [v55 view];
              if (v64)
              {
                v65 = v64;
                v66 = swift_allocObject();
                *(v66 + 16) = xmmword_1000B04D0;
                v67 = [*&v55[v59] bottomAnchor];
                v68 = [v55 view];
                if (v68)
                {
                  v69 = v68;
                  v70 = [v68 bottomAnchor];

                  v71 = [v67 constraintEqualToAnchor:v70 constant:10.0];
                  *(v66 + 32) = v71;
                  v72 = [*&v55[v59] leadingAnchor];
                  v73 = [v55 view];
                  if (v73)
                  {
                    v74 = v73;
                    v75 = [v73 leadingAnchor];

                    v76 = [v72 constraintEqualToAnchor:v75 constant:10.0];
                    *(v66 + 40) = v76;
                    v77 = [*&v55[v59] trailingAnchor];
                    v78 = [v55 view];
                    if (v78)
                    {
                      v79 = v78;
                      v80 = [v78 trailingAnchor];

                      v81 = [v77 constraintEqualToAnchor:v80 constant:-10.0];
                      *(v66 + 48) = v81;
                      v82 = [*&v55[v59] topAnchor];
                      v83 = [v55 view];
                      if (v83)
                      {
                        v84 = v83;
                        v85 = [v83 topAnchor];

                        v86 = [v82 constraintEqualToAnchor:v85 constant:10.0];
                        *(v66 + 56) = v86;
                        v87 = sub_1000AC18C().super.isa;

                        [v65 addConstraints:v87];

                        return;
                      }

LABEL_32:
                      __break(1u);
                      return;
                    }

LABEL_31:
                    __break(1u);
                    goto LABEL_32;
                  }

LABEL_30:
                  __break(1u);
                  goto LABEL_31;
                }

LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v25 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController;
  v26 = *&v1[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController];
  if (!v26)
  {
    return;
  }

  v27 = qword_1000EEE80;
  v97 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  sub_1000AC28C();
  sub_1000ABA5C();
  [v97 willMoveToParentViewController:0];
  v28 = [v97 view];
  if (!v28)
  {
    goto LABEL_26;
  }

  v29 = v28;
  [v28 removeFromSuperview];

  [v97 removeFromParentViewController];
  v30 = *&v1[v25];
  *&v1[v25] = 0;

  v1[v24] = 0;
  sub_100068638();
  v31 = v97;
}

id sub_1000690C0(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded) != 1)
  {
    goto LABEL_5;
  }

  if (qword_1000EEEA8 != -1)
  {
    swift_once();
  }

  result = [qword_1000F3AE0 bundleState];
  if (result != 5)
  {
LABEL_5:
    v3 = *(a1 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator);

    return [v3 startAnimating];
  }

  return result;
}

void sub_100069170(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1000EEE70 != -1)
  {
    swift_once();
  }

  [v4 removeObserver:v2 name:qword_1000FBFE0 object:0];

  v5 = [a1 userInfo];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v5;
  v7 = sub_1000ABFBC();

  sub_1000AC54C();
  if (!*(v7 + 16) || (v8 = sub_10004F144(&v107), (v9 & 1) == 0))
  {

    sub_100005970(&v107);
LABEL_19:
    v105 = 0u;
    v106 = 0u;
    goto LABEL_20;
  }

  sub_1000068B4(*(v7 + 56) + 32 * v8, &v105);
  sub_100005970(&v107);

  if (!*(&v106 + 1))
  {
LABEL_20:
    sub_1000172E0(&v105);
    goto LABEL_21;
  }

  sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  countAndFlagsBits = v107._countAndFlagsBits;
  v11 = [a1 userInfo];
  if (!v11)
  {

    goto LABEL_19;
  }

  v12 = v11;
  v13 = sub_1000ABFBC();

  sub_1000AC54C();
  if (!*(v13 + 16) || (v14 = sub_10004F144(&v107), (v15 & 1) == 0))
  {

    sub_100005970(&v107);
    v105 = 0u;
    v106 = 0u;
    goto LABEL_25;
  }

  sub_1000068B4(*(v13 + 56) + 32 * v14, &v105);
  sub_100005970(&v107);

  if (!*(&v106 + 1))
  {
LABEL_25:

    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    v16 = v107._countAndFlagsBits;
    v102 = *(v2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
    v17 = [v102 selectedMessage];
    v18 = [v17 session];

    if (!v18)
    {
      v18 = [objc_allocWithZone(MSSession) init];
    }

    v94 = v18;
    v101 = [objc_allocWithZone(MSMessage) initWithSession:v18];
    v98 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    v19 = *(v2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
    v20 = [v19 replyMessage];
    if (v20 && (v21 = v20, v22 = [v20 imageIdentifier], v21, v22))
    {
      sub_1000AC06C();
      v100 = v23;
    }

    else if (*(v16 + 16) && (v24 = sub_10004F0CC(0x6564496567616D69, 0xEF7265696669746ELL), (v25 & 1) != 0))
    {
      sub_1000068B4(*(v16 + 56) + 32 * v24, &v107);
      v26 = swift_dynamicCast();
      v27 = *(&v105 + 1);
      if (!v26)
      {
        v27 = 0;
      }

      v100 = v27;
    }

    else
    {
      v100 = 0;
    }

    v28 = [v19 replyMessage];
    if (v28 && (v29 = v28, v30 = [v28 imageIdentifier], v29, v30))
    {

      v31 = [v19 replyMessage];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 imageDescription];

        if (v33)
        {
          v93 = sub_1000AC06C();
          v99 = v34;

          goto LABEL_48;
        }
      }
    }

    else if (*(v16 + 16))
    {
      v35 = sub_10004F0CC(0xD000000000000010, 0x80000001000BAD80);
      if (v36)
      {
        sub_1000068B4(*(v16 + 56) + 32 * v35, &v107);
        v37 = swift_dynamicCast();
        v38 = v105;
        if (!v37)
        {
          v38 = 0;
        }

        v93 = v38;
        if (v37)
        {
          v39 = *(&v105 + 1);
        }

        else
        {
          v39 = 0;
        }

        v99 = v39;
LABEL_48:
        v40 = [v19 replyMessage];
        if (v40 || (v40 = [v19 receivedMessage]) != 0)
        {
          v41 = v40;
          v96 = [v40 style];

          if (!*(v16 + 16))
          {
            goto LABEL_55;
          }
        }

        else
        {
          v96 = BCBubbleViewStyleIcon;
          if (!*(v16 + 16))
          {
            goto LABEL_55;
          }
        }

        v42 = sub_10004F0CC(0x6E6F6974706163, 0xE700000000000000);
        if (v43)
        {
          sub_1000068B4(*(v16 + 56) + 32 * v42, &v107);
          if (swift_dynamicCast())
          {
            v44 = *(&v105 + 1);
            v45 = v105;
LABEL_56:
            v46 = [v19 replyMessage];
            v103 = v19;
            if (v46 && (v47 = v46, v48 = [v46 subtitle], v47, v48))
            {
              v49 = sub_1000AC06C();
              v51 = v50;
            }

            else
            {
              v49 = 0;
              v51 = 0;
            }

            v52 = [v103 replyMessage];
            if (v52 && (v53 = v52, v54 = [v52 image], v53, v54))
            {
              *&v105 = v54;
            }

            else if (*(v16 + 16) && (v55 = sub_10004F0CC(0xD000000000000010, 0x80000001000BAD80), (v56 & 1) != 0))
            {
              sub_1000068B4(*(v16 + 56) + 32 * v55, &v107);
              sub_100005A24(0, &qword_1000F3A70, UIImage_ptr);
              if ((swift_dynamicCast() & 1) == 0)
              {
                *&v105 = 0;
              }

              v54 = v105;
            }

            else
            {
              v54 = 0;
              *&v105 = 0;
            }

            [v98 setImage:v54];

            v57 = sub_1000AC02C();
            [v98 setCaption:v57];

            if (v51)
            {

              v58 = sub_1000AC02C();
            }

            else
            {
              v58 = 0;
            }

            [v98 setSubcaption:v58];

            *&v105 = v45;
            *(&v105 + 1) = v44;
            if (v51)
            {
              v107._countAndFlagsBits = 32;
              v107._object = 0xE100000000000000;

              v112._countAndFlagsBits = v49;
              v112._object = v51;
              sub_1000AC12C(v112);

              sub_1000AC12C(v107);
            }

            else
            {
            }

            v59 = sub_1000AC02C();
            [v101 setAccessibilityLabel:v59];

            v60 = [v102 selectedMessage];
            v61 = [v60 layout];

            if (v61)
            {

              v62 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v98];
              [v101 setLayout:v62];
            }

            else
            {
              [v101 setLayout:v98];
            }

            v97 = v96;
            v63 = sub_1000AC02C();
            if (v51)
            {
              v64 = sub_1000AC02C();
            }

            else
            {
              v64 = 0;
            }

            v65 = sub_1000AC02C();
            if (v100)
            {

              v66 = sub_1000AC02C();
            }

            else
            {
              v66 = 0;
            }

            if (v99)
            {

              v67 = sub_1000AC02C();
            }

            else
            {
              v67 = 0;
            }

            v68 = [objc_allocWithZone(BCMessageInfo) initWithTitle:v63 subtitle:v64 style:v97 alternateTitle:v65 imageIdentifier:v66 imageDescription:v67];

            type metadata accessor for IMBJITAppKitData();
            v95 = swift_allocObject();
            *(v95 + 16) = countAndFlagsBits;
            v69 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController;
            v70 = *(v2 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController);
            if (v70)
            {

              v71 = v70;
              [v71 willMoveToParentViewController:0];
              v72 = [v71 view];
              v73 = v103;
              if (!v72)
              {
                goto LABEL_97;
              }

              v74 = v72;

              [v74 removeFromSuperview];

              [v71 removeFromParentViewController];
              v75 = *(v2 + v69);
              *(v2 + v69) = 0;

              *(v2 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded) = 0;
            }

            else
            {

              v73 = v103;
            }

            v76 = BCMessageRootJITAppKitKey;
            v107._countAndFlagsBits = v73;
            v107._object = v101;
            v108 = v102;
            v109 = v68;
            v110 = BCMessageRootJITAppKitKey;
            v111 = v95;
            v77 = v73;
            v78 = v101;
            v79 = v102;
            v80 = v68;
            v81 = v76;

            sub_100036FA8(1);
            v82 = v2 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_unknownObjectRelease();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v104 = v79;
                v83 = *(v82 + 8);
                v84 = v77;
                v85 = v78;
                v86 = v80;
                v87 = v81;
                ObjectType = swift_getObjectType();
                v89 = *(v83 + 16);
                v90 = type metadata accessor for IMBJITAppKitViewController();
                v91 = ObjectType;
                v81 = v87;
                v80 = v86;
                v78 = v85;
                v92 = v83;
                v79 = v104;
                v89(v2, v90, v91, v92);

                swift_unknownObjectRelease();
              }

              else
              {
              }

              return;
            }

            __break(1u);
LABEL_97:
            __break(1u);
            return;
          }
        }

LABEL_55:
        v45 = 0;
        v44 = 0xE000000000000000;
        goto LABEL_56;
      }
    }

    v93 = 0;
    v99 = 0;
    goto LABEL_48;
  }

LABEL_21:
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2AC();
  sub_1000ABA5C();
}

void sub_100069ED8()
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC28C();
  sub_1000ABA5C();
  v1 = [objc_allocWithZone(type metadata accessor for RetryView()) init];
  *&v1[OBJC_IVAR____TtC8Business9RetryView_delegate + 8] = &off_1000DD1E0;
  swift_unknownObjectWeakAssign();
  v2 = v1;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController;
  v4 = *&v0[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController];
  if (v4)
  {
    v5 = v4;
    [v5 willMoveToParentViewController:0];
    v6 = [v5 view];
    if (!v6)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 removeFromSuperview];

    [v5 removeFromParentViewController];
    v8 = *&v0[v3];
    *&v0[v3] = 0;

    v0[OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded] = 0;
  }

  v9 = [v0 view];
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = v9;
  v11 = [v9 subviews];

  sub_100005A24(0, &qword_1000F0F30, UIView_ptr);
  v12 = sub_1000AC19C();

  if (v12 >> 62)
  {
    v13 = sub_1000AC65C();
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = 0;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_1000AC5AC();
    }

    else
    {
      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v15;
    ++v14;
    [v15 removeFromSuperview];
    [v16 setHidden:1];
  }

  while (v13 != v14);
LABEL_16:

  v17 = [v0 view];
  if (!v17)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v17;
  [v17 addSubview:v2];

  v19 = [v0 view];
  if (!v19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v20 = v19;
  [v19 bringSubviewToFront:v2];

  v21 = [v0 view];
  if (!v21)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v22 = v21;
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000B04B0;
  v24 = [v2 centerYAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = v25;
  v27 = [v25 centerYAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v23 + 32) = v28;
  v29 = [v2 leadingAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v31 = v30;
  v32 = [v30 layoutMarginsGuide];

  v33 = [v32 leadingAnchor];
  v34 = [v29 constraintEqualToAnchor:v33];

  *(v23 + 40) = v34;
  v35 = [v2 trailingAnchor];

  v36 = [v0 view];
  if (!v36)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v37 = v36;
  v38 = [v36 layoutMarginsGuide];

  v39 = [v38 trailingAnchor];
  v40 = [v35 constraintEqualToAnchor:v39];

  *(v23 + 48) = v40;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  isa = sub_1000AC18C().super.isa;

  [v22 addConstraints:isa];
}

id sub_10006A440()
{
  v1 = [v0 childViewControllers];
  sub_100005A24(0, &qword_1000F1DE0, UIViewController_ptr);
  v2 = sub_1000AC19C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:
  }

LABEL_15:
  v3 = sub_1000AC65C();
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_1000AC5AC();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    result = [v5 view];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result removeFromSuperview];

    result = [v6 view];
    if (!result)
    {
      goto LABEL_20;
    }

    v10 = result;
    [result setHidden:1];

    [v6 removeFromParentViewController];
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10006A5DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_rawDictionary);

  v2 = *(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion + 8);
}

id sub_10006A650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBJITAppKitViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006A7EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006A82C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10006A844()
{
  *(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_rawDictionary) = 0;
  v1 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_label;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_loadingIndicator;
  *(v0 + v2) = [objc_allocWithZone(UIActivityIndicatorView) init];
  *(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_showStateLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_jitAppViewLoaded) = 0;
  *(v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_viewDidAppearFired) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8Business26IMBJITAppKitViewController_bundleVersion);
  *v3 = 0;
  v3[1] = 0;
  sub_1000AC63C();
  __break(1u);
}

uint64_t sub_10006A938()
{
  v1 = sub_1000ABF3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000ABF6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A24(0, &qword_1000EEEB0, OS_dispatch_queue_ptr);
  v13 = sub_1000AC32C();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  aBlock[4] = sub_10006ABCC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023BE0;
  aBlock[3] = &unk_1000DD268;
  v15 = _Block_copy(aBlock);
  v16 = v0;

  sub_1000ABF5C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100042004();
  sub_10000413C(&unk_1000F1E00, &unk_1000B1BF0);
  sub_10004205C();
  sub_1000AC49C();
  sub_1000AC33C();
  _Block_release(v15);

  (*(v2 + 8))(v6, v1);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_10006ABFC(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for Outcome();
  result = sub_1000AC42C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_10006ACAC()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 96);
  v4 = *(v1 + 80);
  type metadata accessor for Outcome();
  v5 = sub_1000AC42C();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  return v0;
}

uint64_t sub_10006AD4C()
{
  sub_10006ACAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_10006ADBC(double a1, double a2)
{
  v4 = fmin(a1, 263.0);
  v5 = [*(v2 + OBJC_IVAR____TtC8Business13IMBBubbleView_widthConstraint) setConstant:v4];
  v6 = (*((swift_isaMask & *v2) + 0x390))(v5);
  if (v6 <= a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = a2;
  }

  v8 = OBJC_IVAR____TtC8Business13IMBBubbleView_heightConstraint;
  [*(v2 + OBJC_IVAR____TtC8Business13IMBBubbleView_heightConstraint) setActive:0];
  [*(v2 + v8) setConstant:v7];
  [*(v2 + v8) setActive:1];
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000AF0F0;
  v10 = sub_1000AC36C();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_10000587C();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = sub_1000AC36C();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  sub_1000ABA5C();

  return v4;
}

id sub_10006B384()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ABSBarButtonItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10006B3DC()
{
  v1 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:0];
    [v4 setTimeStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10006B524()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = sub_10006FB64();
  [v0 setFont:v1];

  if (sub_10002CE60() >= 2u)
  {
    v2 = [objc_opt_self() secondaryLabelColor];
  }

  else
  {
    v2 = 0;
  }

  [v0 setTextColor:v2];

  [v0 setNumberOfLines:0];
  return v0;
}

id sub_10006B694()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v0 setFont:v1];

  sub_100015C6C();
  isa = sub_1000AC39C(0.57647, 0.57647, 0.59608, 1.0).super.isa;
  [v0 setTextColor:isa];

  [v0 setNumberOfLines:0];
  [v0 setLineBreakMode:0];
  return v0;
}

id sub_10006B7F0(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_10006B898()
{
  v0 = [objc_opt_self() buttonWithType:0];
  v1 = [objc_opt_self() linkColor];
  [v0 setTitleColor:v1 forState:0];

  v2 = [v0 titleLabel];
  if (v2)
  {
    v3 = v2;
    if (sub_10002CE60() == 2)
    {
      v4 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
      v5 = [objc_opt_self() systemFontOfSize:11.0];
      v6 = [v4 scaledFontForFont:v5];
    }

    else
    {
      v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    }

    [v3 setFont:v6];
  }

  [v0 setContentHorizontalAlignment:1];
  return v0;
}

id sub_10006BA40()
{
  if (sub_10002CE60() >= 2u && (v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline]) != 0)
  {
    v1 = v0;
    v2 = [objc_opt_self() buttonWithType:0];
    v3 = [v2 titleLabel];
    if (v3)
    {
      v4 = v3;
      [v3 setFont:v1];
    }
  }

  else
  {
    v2 = [objc_opt_self() buttonWithType:1];
  }

  v5 = [objc_opt_self() mainBundle];
  v9._countAndFlagsBits = 0xE000000000000000;
  v10._object = 0x80000001000BB510;
  v10._countAndFlagsBits = 0xD000000000000010;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v6.super.isa = v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1000AB61C(v10, v11, v6, v12, v9);

  v7 = sub_1000AC02C();

  [v2 setTitle:v7 forState:0];

  return v2;
}

id sub_10006BC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton] = 0;
  v6 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell_viewInCalendarButton;
  *&v3[v6] = sub_10006BA40();
  v7 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for IMBTimeslotsContainerView()) init];
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotViewTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_conflictHeigthConstraint] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonHeigthConstraint] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonBottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonHeight] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonWidth] = 0;
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData] = 0;
  v8 = &v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_urlHelper];
  v8[3] = type metadata accessor for URLHelper();
  v8[4] = &off_1000DCB20;
  v9 = sub_100030970(v8);
  sub_10004EA70(v9);
  *&v3[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView] = 0;
  if (a3)
  {
    v10 = sub_1000AC02C();
  }

  else
  {
    v10 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for IMBDateTableViewCell();
  v11 = objc_msgSendSuper2(&v14, "initWithStyle:reuseIdentifier:", a1, v10);

  v12 = v11;
  sub_10006BFA8();
  sub_10006C358();

  return v12;
}

id sub_10006BE04(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton] = 0;
  v3 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell_viewInCalendarButton;
  *&v1[v3] = sub_10006BA40();
  v4 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for IMBTimeslotsContainerView()) init];
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotViewTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_conflictHeigthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonHeigthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonHeight] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonWidth] = 0;
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData] = 0;
  v5 = &v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_urlHelper];
  v5[3] = type metadata accessor for URLHelper();
  v5[4] = &off_1000DCB20;
  v6 = sub_100030970(v5);
  sub_10004EA70(v6);
  *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for IMBDateTableViewCell();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_10006BFA8();
    sub_10006C358();
  }

  return v8;
}

uint64_t sub_10006BFA8()
{
  if (sub_10002CE60() != 2)
  {
    goto LABEL_4;
  }

  if (qword_1000EEDC0 != -1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    [isEscapingClosureAtFileLocation setBackgroundColor:qword_1000FBEF0];
LABEL_4:
    [isEscapingClosureAtFileLocation setBounds:{0.0, 0.0, 350.0, 10000.0}];
    [isEscapingClosureAtFileLocation setSelectionStyle:0];
    v1 = sub_10006B7D0();
    [v1 addTarget:isEscapingClosureAtFileLocation action:"toggleMoreLess" forControlEvents:64];

    v2 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_viewInCalendarButton);
    [v2 addTarget:isEscapingClosureAtFileLocation action:"viewInCalendar" forControlEvents:64];
    v3 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView);
    *(v3 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeSelectionDelegate + 8) = &off_1000DD398;
    swift_unknownObjectWeakAssign();
    v4 = [isEscapingClosureAtFileLocation contentView];
    [v4 addSubview:v3];

    v5 = [isEscapingClosureAtFileLocation contentView];
    [v5 addSubview:*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton)];

    v6 = [isEscapingClosureAtFileLocation contentView];
    v7 = sub_10006B4BC();
    [v6 addSubview:v7];

    v8 = [isEscapingClosureAtFileLocation contentView];
    v9 = sub_10006B62C();
    [v8 addSubview:v9];

    v10 = [isEscapingClosureAtFileLocation contentView];
    [v10 addSubview:v2];

    v11 = [isEscapingClosureAtFileLocation contentView];
    v12 = sub_10006F6DC();
    [v11 addSubview:v12];

    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = isEscapingClosureAtFileLocation;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000701F8;
    *(v15 + 24) = v14;
    v19[4] = sub_1000701FC;
    v19[5] = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_10006E6D8;
    v19[3] = &unk_1000DD5E8;
    v16 = _Block_copy(v19);
    v17 = isEscapingClosureAtFileLocation;

    [v13 performWithoutAnimation:v16];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_6:
    swift_once();
  }

  return result;
}

void sub_10006C358()
{
  if (!UIApp)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v1 = [UIApp preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  v3 = sub_10006B7D0();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v128 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView];
  [v128 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = sub_10006B4BC();
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = sub_10006B62C();
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v127 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_viewInCalendarButton];
  [v127 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel;
  v7 = [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel] topAnchor];
  v8 = [v0 contentView];
  v9 = [v8 topAnchor];

  v10 = sub_10002CE60();
  v11 = 20.0;
  if (v10 == 2)
  {
    v11 = 0.0;
  }

  v12 = [v7 constraintEqualToAnchor:v9 constant:v11];

  [v12 setActive:1];
  v13 = [*&v0[v6] leadingAnchor];
  v14 = [v0 layoutMarginsGuide];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  if (sub_10002CE60() != 2)
  {
    v18 = [*&v0[v6] heightAnchor];
    v19 = [v18 constraintGreaterThanOrEqualToConstant:22.0];

    [v19 setActive:1];
  }

  LODWORD(v17) = 1148846080;
  [*&v0[v6] setContentCompressionResistancePriority:1 forAxis:v17];
  v126 = v6;
  if (IsAccessibilityContentSizeCategory)
  {
    v20 = [*&v0[v6] trailingAnchor];
    v21 = [v0 layoutMarginsGuide];
    v22 = [v21 trailingAnchor];

    v23 = [v20 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    v24 = &v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton];
    v25 = [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton] topAnchor];
    v26 = [*&v0[v6] bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v27 setActive:1];
    v28 = [*v24 leadingAnchor];
    v29 = [v0 layoutMarginsGuide];
    v30 = [v29 leadingAnchor];

    v31 = [v28 constraintEqualToAnchor:v30];
    p_attr = (&stru_1000E5FF8 + 8);
  }

  else
  {
    v33 = sub_10002CE60();
    v34 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton];
    if (v33 == 2)
    {
      v35 = &selRef_firstBaselineAnchor;
    }

    else
    {
      v35 = &selRef_centerYAnchor;
    }

    v36 = [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton] *v35];
    v37 = [*&v0[v6] *v35];
    v38 = [v36 constraintEqualToAnchor:v37];

    [v38 setActive:1];
    v24 = &v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton];
    LODWORD(v39) = 1148846080;
    [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton] setContentHuggingPriority:0 forAxis:v39];
    v28 = [*&v0[v6] trailingAnchor];
    v30 = [*v24 leadingAnchor];
    p_attr = &stru_1000E5FF8.attr;
    v31 = [v28 constraintEqualToAnchor:v30 constant:-8.0];
  }

  v40 = v31;

  [v40 setActive:1];
  v41 = [*v24 trailingAnchor];
  v42 = [v0 layoutMarginsGuide];
  v43 = [v42 trailingAnchor];

  sub_10002CE60();
  v44 = [v41 p_attr[300]];

  [v44 setActive:1];
  v45 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton;
  v46 = [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton] heightAnchor];
  v47 = [v46 constraintEqualToConstant:0.0];

  v48 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonHeight];
  *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonHeight] = v47;

  v49 = [*&v0[v45] widthAnchor];
  v50 = [v49 constraintEqualToConstant:0.0];

  v51 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonWidth];
  *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonWidth] = v50;

  v52 = [v128 leadingAnchor];
  v53 = [v0 layoutMarginsGuide];
  v54 = [v53 leadingAnchor];

  sub_10002CE60();
  v55 = [v52 p_attr[300]];

  [v55 setActive:1];
  v56 = [v128 trailingAnchor];
  v57 = [v0 layoutMarginsGuide];
  v58 = [v57 trailingAnchor];

  sub_10002CE60();
  v59 = [v56 p_attr[300]];

  [v59 setActive:1];
  v60 = [v128 heightAnchor];
  v61 = sub_10002CE60();
  v62 = 55.0;
  if ((v61 & 0xFE) == 0)
  {
    v62 = 68.0;
  }

  v63 = [v60 constraintGreaterThanOrEqualToConstant:v62];

  [v63 setActive:1];
  v64 = [v128 topAnchor];
  v65 = [v0 contentView];
  v66 = [v65 topAnchor];

  v67 = [v64 constraintEqualToAnchor:v66];
  v68 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotViewTopConstraint];
  *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotViewTopConstraint] = v67;
  v69 = v67;

  if (!v69)
  {
    goto LABEL_26;
  }

  [v69 setActive:1];

  v70 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel;
  v71 = [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel] topAnchor];
  v72 = [v128 bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];

  [v73 setActive:1];
  v74 = [*&v0[v70] leadingAnchor];
  v75 = [v0 layoutMarginsGuide];
  v76 = [v75 leadingAnchor];

  v77 = [v74 constraintEqualToAnchor:v76];
  [v77 setActive:1];

  v78 = [*&v0[v70] trailingAnchor];
  v79 = [v0 layoutMarginsGuide];
  v80 = [v79 trailingAnchor];

  v81 = [v78 constraintEqualToAnchor:v80];
  [v81 setActive:1];

  v82 = [v127 heightAnchor];
  v83 = [v82 constraintEqualToConstant:0.0];

  v84 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_conflictHeigthConstraint];
  *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_conflictHeigthConstraint] = v83;

  v85 = [v127 topAnchor];
  v86 = [*&v0[v70] bottomAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];

  [v87 setActive:1];
  v88 = [v127 leadingAnchor];
  v89 = [v0 layoutMarginsGuide];
  v90 = [v89 leadingAnchor];

  v91 = [v88 constraintEqualToAnchor:v90];
  [v91 setActive:1];

  v92 = [v127 trailingAnchor];
  v93 = [v0 layoutMarginsGuide];
  v94 = [v93 trailingAnchor];

  v95 = [v92 constraintLessThanOrEqualToAnchor:v94];
  [v95 setActive:1];

  LODWORD(v96) = 1148846080;
  [v127 setContentHuggingPriority:0 forAxis:v96];
  v97 = [v127 bottomAnchor];
  v98 = [v0 contentView];
  v99 = [v98 bottomAnchor];

  v100 = [v97 constraintEqualToAnchor:v99 constant:-20.0];
  v101 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonBottomConstraint];
  *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonBottomConstraint] = v100;
  v102 = v100;

  if (!v102)
  {
LABEL_27:
    __break(1u);
    return;
  }

  [v102 setActive:1];

  v103 = [v127 heightAnchor];
  v104 = [v103 constraintEqualToConstant:0.0];

  v105 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonHeigthConstraint];
  *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonHeigthConstraint] = v104;

  if (sub_10002CE60() == 2)
  {
    v106 = *&v0[v126];
    v107 = [v0 layoutMarginsGuide];
    v108 = [v0 layoutMarginsGuide];
    v109 = sub_10006F6DC();
    [v109 setTranslatesAutoresizingMaskIntoConstraints:0];

    v110 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView;
    v111 = [*&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView] heightAnchor];
    v112 = [v0 traitCollection];
    [v112 displayScale];
    v114 = v113;

    if (v114 <= 0.0)
    {
      v115 = [objc_opt_self() mainScreen];
      [v115 scale];
      v114 = v116;

      if (v114 <= 0.0)
      {
        v114 = 1.0;
      }
    }

    v117 = [v111 constraintEqualToConstant:1.0 / v114];

    [v117 setActive:1];
    v118 = [*&v0[v110] bottomAnchor];
    v119 = [v106 bottomAnchor];
    v120 = [v118 constraintEqualToAnchor:v119 constant:4.0];

    [v120 setActive:1];
    v121 = [*&v0[v110] leadingAnchor];
    v122 = [v107 leadingAnchor];
    v123 = [v121 constraintEqualToAnchor:v122 constant:0.0];

    [v123 setActive:1];
    v124 = [*&v0[v110] trailingAnchor];
    v125 = [v108 trailingAnchor];
    v129 = [v124 constraintEqualToAnchor:v125 constant:-0.0];

    [v129 setActive:1];
  }

  else
  {
    v129 = [v0 contentView];
    sub_100090134(1, v129);
  }
}

uint64_t sub_10006D394()
{
  v1 = v0;
  [v0 setNeedsLayout];
  [v0 layoutIfNeeded];
  v2 = &v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = *&v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView];
  v6 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded;
  v7 = v5[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded];
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = (v7 & 1) == 0;
  *(v9 + 24) = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000701F8;
  *(v10 + 24) = v9;
  v26 = sub_1000701FC;
  v27 = v10;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10006E6D8;
  v25 = &unk_1000DD4D0;
  v11 = _Block_copy(&v22);
  v12 = v1;

  [v8 performWithoutAnimation:v11];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v5[v6] == 1)
    {
      v5[v6] = 0;
      v14 = swift_allocObject();
      *(v14 + 16) = v5;
      v26 = sub_100070208;
      v27 = v14;
      v22 = _NSConcreteStackBlock;
      v23 = 1107296256;
      v15 = &unk_1000DD570;
    }

    else
    {
      v5[v6] = 1;
      v16 = swift_allocObject();
      *(v16 + 16) = v5;
      v26 = sub_100070208;
      v27 = v16;
      v22 = _NSConcreteStackBlock;
      v23 = 1107296256;
      v15 = &unk_1000DD520;
    }

    v24 = sub_100023BE0;
    v25 = v15;
    v17 = _Block_copy(&v22);
    v18 = v5;

    [v8 animateWithDuration:v17 animations:{0.3, v22, v23}];
    _Block_release(v17);
    v19 = *&v12[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData];
    if (v19)
    {
      *(v19 + 24) = v5[v6];
    }

    sub_10006E700();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v20 = *(v2 + 1);
      v21 = swift_getObjectType();
      (*(v20 + 16))(v21, v20);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_10006D76C()
{
  v38 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v1 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38, v2);
  v4 = &v35 - v3;
  v5 = sub_1000AB7EC();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v35 - v13;
  v15 = sub_1000AB6EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = __chkstk_darwin(v15, v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData);
  if (!v22)
  {
    return result;
  }

  v23 = *(v22 + 32);
  if (!v23)
  {
    return result;
  }

  v24 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
    result = sub_1000AC65C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v23 & 0xC000000000000001) != 0)
  {

    v25 = sub_1000AC5AC();

LABEL_8:
    v26 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell_urlHelper;
    v36 = v0;
    sub_10000E6D4(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_urlHelper, v40);
    sub_1000058D0(v40, v41);
    v37 = v25;
    result = [v25 startDate];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v27 = result;
    sub_1000AB7BC();

    sub_10004EC6C();
    v24 = v39;
    (*(v39 + 8))(v9, v5);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v21, v14, v15);
      sub_10000E738(v40);
      sub_10000E6D4(v36 + v26, v40);
      sub_1000058D0(v40, v41);
      sub_10004E400(v21, 1, 0, 0);

      (*(v16 + 8))(v21, v15);
      return sub_10000E738(v40);
    }

    sub_10004B9C0(v14);
    sub_10000E738(v40);
    if (qword_1000EEE80 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v23 + 32);
    goto LABEL_8;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_11:
  sub_1000AC2AC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000AF0E0;
  v29 = [v37 startDate];
  if (v29)
  {
    v30 = v29;
    sub_1000AB7BC();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v24 + 56))(v4, v31, 1, v5);
  v32 = sub_1000AC0CC();
  v34 = v33;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_10000587C();
  *(v28 + 32) = v32;
  *(v28 + 40) = v34;
  sub_1000ABA5C();
}

void sub_10006DC7C()
{
  v1 = v0;
  v2 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5, v8);
  v10 = &v73[-v9];
  v11 = sub_1000AB7EC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11, v14);
  v16 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData;
  v17 = *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData];
  if (v17)
  {
    v77 = v7;
    v18 = UIApp;
    if (!UIApp)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v19 = [v18 preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    v20 = [objc_allocWithZone(NSDateFormatter) init];
    v21 = *(v17 + 16) + OBJC_IVAR____TtC8Business15IMBProposedDate_date;
    v76 = v12[2];
    v76(v16, v21, v11);
    sub_10006FCDC(v16);
    v75 = v12[1];
    v75(v16, v11);
    v22 = sub_1000AC02C();

    v79 = v20;
    [v20 setDateFormat:v22];

    v23 = *&v1[v78];
    if (v23)
    {
      v24 = OBJC_IVAR____TtC8Business20IMBTableViewCellData_timezone;
      swift_beginAccess();
      sub_100012680(v23 + v24, v10);
      v25 = sub_1000AB91C();
      v26 = *(v25 - 8);
      isa = 0;
      if ((*(v26 + 48))(v10, 1, v25) != 1)
      {
        isa = sub_1000AB8EC().super.isa;
        (*(v26 + 8))(v10, v25);
      }
    }

    else
    {
      v28 = sub_1000AB91C();
      (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
      isa = 0;
    }

    [v79 setTimeZone:isa];

    v29 = *(v17 + 16);
    v30 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
    swift_beginAccess();
    v31 = *(v29 + v30);
    if (v31 >> 62)
    {
      if (v31 < 0)
      {
        v72 = *(v29 + v30);
      }

      v32 = sub_1000AC65C();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = sub_10006B7D0();
    v34 = v33;
    v35 = "setHidden:";
    if (v32 <= 3)
    {
      [v33 setHidden:1];

      v36 = *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonHeight];
      if (!v36)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      [v36 setActive:1];
      v33 = *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonWidth];
      if (v33)
      {
LABEL_15:
        [v33 setActive:v32 < 4];
        v76(v16, *(v17 + 16) + OBJC_IVAR____TtC8Business15IMBProposedDate_date, v11);
        v38 = sub_1000AB77C().super.isa;
        v75(v16, v11);
        v39 = [v79 stringFromDate:v38];

        sub_1000AC06C();
        v40 = sub_10006B4BC();
        if (sub_10002CE60() == 2)
        {
          sub_1000AC0FC();
        }

        else
        {
        }

        v41 = v77;
        v42 = sub_1000AC02C();

        [v40 setText:v42];

        v43 = *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView];
        v44 = OBJC_IVAR____TtC8Business20IMBTableViewCellData_timezone;
        swift_beginAccess();
        sub_100012680(v17 + v44, v41);
        sub_100070384(v41);
        v45 = *(v17 + 16);
        v46 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
        swift_beginAccess();
        v47 = *&v43[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots];
        *&v43[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots] = *(v45 + v46);

        sub_100070E64();
        v48 = *&v1[v78];
        if (v48)
        {
          v49 = *(v48 + 24);
        }

        else
        {
          v49 = 0;
        }

        v43[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded] = v49;
        v50 = objc_opt_self();
        v51 = swift_allocObject();
        *(v51 + 16) = v43;
        v84 = sub_100070130;
        v85 = v51;
        aBlock = _NSConcreteStackBlock;
        *&v52 = 1107296256;
        v81 = 1107296256;
        v82 = sub_100023BE0;
        v83 = &unk_1000DD3E0;
        v53 = _Block_copy(&aBlock);
        v54 = v43;

        [v50 animateWithDuration:v53 animations:0.3];
        _Block_release(v53);
        v55 = swift_allocObject();
        *(v55 + 16) = v49;
        *(v55 + 24) = v1;
        v56 = swift_allocObject();
        *(v56 + 16) = sub_100070188;
        *(v56 + 24) = v55;
        v84 = sub_1000701A4;
        v85 = v56;
        aBlock = _NSConcreteStackBlock;
        v81 = 1107296256;
        v82 = sub_10006E6D8;
        v83 = &unk_1000DD458;
        v57 = _Block_copy(&aBlock);
        v58 = v1;

        [v50 performWithoutAnimation:v57];
        _Block_release(v57);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          [v58 setNeedsLayout];
          [v58 layoutIfNeeded];
          v60 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel;
          [*&v58[OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel] frame];
          v62 = v61;
          [*&v58[v60] frame];
          v52 = v62 + v63;
          if (sub_10002CE60() == 2)
          {
            v52 = v52 + 5.0;
          }

          if (!IsAccessibilityContentSizeCategory)
          {
            goto LABEL_28;
          }

          v64 = *(v17 + 16);
          v65 = OBJC_IVAR____TtC8Business15IMBProposedDate_timeslots;
          swift_beginAccess();
          v66 = *(v64 + v65);
          if (!(v66 >> 62))
          {
            if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }
        }

        if (sub_1000AC65C() >= 4)
        {
LABEL_27:
          v67 = sub_10006B7D0();
          [v67 bounds];
          v69 = v68;

          v52 = v52 + v69;
        }

LABEL_28:
        v70 = *&v58[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotViewTopConstraint];
        if (v70)
        {
          v71 = v70;

          [v71 setConstant:v52];

          return;
        }

        goto LABEL_38;
      }

      __break(1u);
    }

    [v33 v35];

    v37 = *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonHeight];
    if (!v37)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    [v37 setActive:0];
    v33 = *&v1[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_showMoreButtonWidth];
    if (!v33)
    {
LABEL_41:
      __break(1u);
      return;
    }

    goto LABEL_15;
  }
}

void sub_10006E5C0(char a1)
{
  v2 = sub_10006B7D0();
  v3 = [objc_opt_self() mainBundle];
  v6._countAndFlagsBits = 0xE000000000000000;
  if (a1)
  {
    v4._countAndFlagsBits = 0x53454C5F574F4853;
    v4._object = 0xE900000000000053;
  }

  else
  {
    v4._countAndFlagsBits = 0x524F4D5F574F4853;
    v4._object = 0xE900000000000045;
  }

  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v5.super.isa = v3;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000AB61C(v4, v9, v5, v10, v6);

  v7 = sub_1000AC02C();

  [v2 setTitle:v7 forState:0];
}

uint64_t sub_10006E700()
{
  v1 = sub_1000AB7EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1, v4);
  v93 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5, v7);
  v92 = &v78 - v9;
  __chkstk_darwin(v8, v10);
  v12 = &v78 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData);
  if (!v13)
  {
    goto LABEL_63;
  }

  v14 = *(v13 + 32);
  if (!v14)
  {
    goto LABEL_63;
  }

  v90 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
    goto LABEL_55;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_63;
  }

  while (2)
  {
    v16 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeslotContainerView);
    if (!*(v16 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots))
    {
      break;
    }

    type metadata accessor for IMBProposedTimeslot();

    v17.super.isa = sub_1000AC18C().super.isa;

    v18 = *(v16 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded);
    v19 = [(objc_class *)v17.super.isa count];
    v20 = 3;
    if (v19 < 3)
    {
      v20 = v19;
    }

    if (v18)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v22 = [(objc_class *)v17.super.isa subarrayWithRange:0, v21, v78];
    v23 = sub_1000AC19C();

    v24 = sub_10006FA78(v23);

    if (!v24)
    {
LABEL_62:

      break;
    }

    v25 = v24 & 0xFFFFFFFFFFFFFF8;
    v87 = v24 & 0xFFFFFFFFFFFFFF8;
    if (!(v24 >> 62))
    {
      v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_14;
      }

LABEL_61:

      goto LABEL_62;
    }

    while (1)
    {
      v26 = sub_1000AC65C();
      v25 = v87;
      if (!v26)
      {
        goto LABEL_61;
      }

LABEL_14:
      v94 = v15;
      v78 = v0;
      v27 = 0;
      v86 = v24 & 0xC000000000000001;
      v79 = (v24 + 32);
      v95 = v14 & 0xC000000000000001;
      v28 = _swiftEmptyDictionarySingleton;
      v15 = (v2 + 8);
      v2 = v90;
      v84 = v26;
      v85 = v24;
      while (2)
      {
        if (v86)
        {
          v29 = v27;
          v97 = sub_1000AC5AC();
          v30 = __OFADD__(v29, 1);
          v0 = (v29 + 1);
          if (v30)
          {
            goto LABEL_54;
          }

LABEL_21:
          v88 = v0;
          v24 = 0;
          v96 = OBJC_IVAR____TtC8Business19IMBProposedTimeslot_startTime;
          v91 = OBJC_IVAR____TtC8Business19IMBProposedTimeslot_duration;
          while (2)
          {
            v89 = v28;
            v31 = v24;
            while (1)
            {
              if (v95)
              {
                v32 = sub_1000AC5AC();
              }

              else
              {
                if (v31 >= *(v2 + 16))
                {
                  goto LABEL_53;
                }

                v32 = *(v14 + 8 * v31 + 32);
              }

              v33 = v32;
              v24 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                __break(1u);
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

              sub_1000AB7AC();
              v35 = v34;
              v36 = [v33 endDate];
              if (!v36)
              {
                goto LABEL_67;
              }

              v37 = v36;
              sub_1000AB7BC();

              v0 = v12;
              sub_1000AB7AC();
              v39 = v38;
              v40 = *v15;
              (*v15)(v12, v1);
              if (v35 <= v39)
              {
                v41 = v12;
                v42 = v14;
                v43 = v1;
                v44 = [v33 startDate];
                if (!v44)
                {
                  goto LABEL_68;
                }

                v45 = v44;
                v46 = v92;
                sub_1000AB7BC();

                sub_1000AB7AC();
                v48 = v47;
                v49 = v46;
                v1 = v43;
                v40(v49, v43);
                v50 = v97;
                sub_1000AB7AC();
                v51 = *(v50 + v91);
                v0 = v93;
                sub_1000AB79C();
                sub_1000AB7AC();
                v53 = v52;
                v40(v0, v1);
                v14 = v42;
                v12 = v41;
                v2 = v90;
                if (v48 <= v53 && ([v33 isAllDay] & 1) == 0)
                {
                  break;
                }
              }

              ++v31;
              if (v24 == v94)
              {
                v28 = v89;
                goto LABEL_49;
              }
            }

            v54 = [v33 calendarItemIdentifier];
            v55 = sub_1000AC06C();
            v57 = v56;

            v82 = v33;
            v0 = v89;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v98 = v0;
            v81 = v55;
            v83 = v57;
            v58 = sub_10004F0CC(v55, v57);
            v60 = v58;
            v61 = v0[2];
            v62 = (v59 & 1) == 0;
            v63 = v61 + v62;
            if (__OFADD__(v61, v62))
            {
              goto LABEL_58;
            }

            v64 = v59;
            if (v0[3] < v63)
            {
              sub_1000394E4(v63, isUniquelyReferenced_nonNull_native);
              v0 = v98;
              v65 = sub_10004F0CC(v81, v83);
              if ((v64 & 1) != (v66 & 1))
              {
                goto LABEL_69;
              }

              v60 = v65;
              if ((v64 & 1) == 0)
              {
                goto LABEL_39;
              }

LABEL_43:

              v28 = v98;
              v72 = v98[7];
              v0 = *(v72 + 8 * v60);
              v73 = v82;
              *(v72 + 8 * v60) = v82;

              goto LABEL_44;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              if (v59)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v0 = &v98;
              sub_10003ADE8();
              if (v64)
              {
                goto LABEL_43;
              }
            }

LABEL_39:
            v28 = v98;
            v98[(v60 >> 6) + 8] |= 1 << v60;
            v67 = (v28[6] + 16 * v60);
            v68 = v83;
            *v67 = v81;
            v67[1] = v68;
            v69 = v82;
            *(v28[7] + 8 * v60) = v82;

            v70 = v28[2];
            v30 = __OFADD__(v70, 1);
            v71 = v70 + 1;
            if (v30)
            {
              goto LABEL_59;
            }

            v28[2] = v71;
LABEL_44:
            if (v24 != v94)
            {
              continue;
            }

            break;
          }

LABEL_49:

          v24 = v85;
          v27 = v88;
          v25 = v87;
          if (v88 != v84)
          {
            continue;
          }

          v74 = v28[2];
          if (v74)
          {
            goto LABEL_64;
          }

          goto LABEL_51;
        }

        break;
      }

      v0 = v27;
      if (v27 < *(v25 + 16))
      {
        break;
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    v97 = v79[v27];

    v30 = __OFADD__(v0, 1);
    v0 = (v0 + 1);
    if (!v30)
    {
      goto LABEL_21;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    v15 = sub_1000AC65C();
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_63:
  v28 = _swiftEmptyDictionarySingleton;
  v74 = _swiftEmptyDictionarySingleton[2];
  if (!v74)
  {
LABEL_51:
    v75 = _swiftEmptyArrayStorage;
    goto LABEL_65;
  }

LABEL_64:
  v75 = sub_1000A4D28(v74, 0);
  v76 = sub_1000A45DC(&v98, v75 + 4, v74, v28);

  sub_100012760();
  if (v76 == v74)
  {
LABEL_65:
    sub_10006EE54(v75);
  }

  else
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    result = sub_1000AC7EC();
    __break(1u);
  }

  return result;
}

void sub_10006EE54(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1000AB7EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v77 - v12;
  v14 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v77 - v17;
  if (a1 >> 62)
  {
    if (sub_1000AC65C())
    {
LABEL_3:
      v79 = v10;
      v81 = v5;
      v19 = sub_10006B3DC();
      isa = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_cellData);
      if (isa)
      {
        v21 = OBJC_IVAR____TtC8Business20IMBTableViewCellData_timezone;
        swift_beginAccess();
        sub_100012680(isa + v21, v18);
        v22 = sub_1000AB91C();
        v23 = *(v22 - 8);
        isa = 0;
        if ((*(v23 + 48))(v18, 1, v22) != 1)
        {
          isa = sub_1000AB8EC().super.isa;
          (*(v23 + 8))(v18, v22);
        }
      }

      else
      {
        v24 = sub_1000AB91C();
        (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
      }

      [v19 setTimeZone:isa];

      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = v4;
        v26 = sub_1000AC5AC();
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_34;
        }

        v25 = v4;
        v26 = *(a1 + 32);
      }

      v27 = v26;
      v78 = a1 >> 62;
      v28 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter;
      v29 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___timeFormatter);
      v30 = [v27 startDate];
      if (v30)
      {
        v31 = v30;
        sub_1000AB7BC();

        v32 = sub_1000AB77C().super.isa;
        v33 = *(v81 + 8);
        v34 = v13;
        v35 = v25;
        v33(v34, v25);
        v36 = [v29 stringFromDate:v32];

        v77 = sub_1000AC06C();
        v81 = v37;

        v38 = *(v2 + v28);
        v80 = v27;
        v39 = [v27 endDate];
        if (v39)
        {
          v40 = v39;
          v41 = v79;
          sub_1000AB7BC();

          v42 = sub_1000AB77C().super.isa;
          v33(v41, v35);
          v43 = [v38 stringFromDate:v42];

          v44 = sub_1000AC06C();
          v46 = v45;

          if (v78)
          {
            v47 = sub_1000AC65C();
          }

          else
          {
            v47 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v48 = sub_10006B62C();
          v49 = [objc_opt_self() mainBundle];
          if (v47 == 1)
          {
            v79 = v46;
            v76._countAndFlagsBits = 0xE000000000000000;
            v83._object = 0x80000001000BB480;
            v83._countAndFlagsBits = 0xD000000000000010;
            v85.value._countAndFlagsBits = 0;
            v85.value._object = 0;
            v50.super.isa = v49;
            v87._countAndFlagsBits = 0;
            v87._object = 0xE000000000000000;
            sub_1000AB61C(v83, v85, v50, v87, v76);

            sub_10000413C(&qword_1000F0060, &unk_1000B0470);
            v51 = swift_allocObject();
            *(v51 + 16) = xmmword_1000B0620;
            v52 = [v80 title];
            if (!v52)
            {
LABEL_42:
              __break(1u);
              return;
            }

            v53 = v52;
            v54 = sub_1000AC06C();
            v56 = v55;

            *(v51 + 56) = &type metadata for String;
            v57 = sub_10000587C();
            *(v51 + 32) = v54;
            *(v51 + 40) = v56;
            *(v51 + 96) = &type metadata for String;
            *(v51 + 104) = v57;
            v58 = v77;
            *(v51 + 64) = v57;
            *(v51 + 72) = v58;
            *(v51 + 80) = v81;
            *(v51 + 136) = &type metadata for String;
            *(v51 + 144) = v57;
            v59 = v79;
            *(v51 + 112) = v44;
            *(v51 + 120) = v59;

            sub_1000AC03C();
          }

          else
          {
            v76._countAndFlagsBits = 0xE000000000000000;
            v84._countAndFlagsBits = 0xD00000000000001ALL;
            v84._object = 0x80000001000BB460;
            v86.value._countAndFlagsBits = 0;
            v86.value._object = 0;
            v60.super.isa = v49;
            v88._countAndFlagsBits = 0;
            v88._object = 0xE000000000000000;
            sub_1000AB61C(v84, v86, v60, v88, v76);

            sub_10000413C(&qword_1000F0060, &unk_1000B0470);
            v61 = swift_allocObject();
            *(v61 + 16) = xmmword_1000AF0F0;
            *(v61 + 56) = &type metadata for Int;
            *(v61 + 64) = &protocol witness table for Int;
            *(v61 + 32) = v47;
            *(v61 + 96) = &type metadata for String;
            *(v61 + 104) = sub_10000587C();
            v62 = v81;
            *(v61 + 72) = v77;
            *(v61 + 80) = v62;

            sub_1000AC03C();
          }

          v63 = sub_1000AC02C();

          [v48 setText:v63];

          v64 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonHeigthConstraint);
          if (v64)
          {
            [v64 setActive:0];
            v65 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_conflictHeigthConstraint);
            if (v65)
            {
              [v65 setActive:0];
              [*(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_viewInCalendarButton) setAlpha:1.0];
              v66 = sub_10006B62C();
              [v66 setAlpha:1.0];

              v67 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonBottomConstraint);
              if (v67)
              {
                v68 = v67;

                v69 = sub_10002CE60();
                v70 = -20.0;
                if (v69 == 2)
                {
                  v70 = -10.0;
                }

                [v68 setConstant:v70];

                return;
              }

              goto LABEL_38;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v71 = sub_10006B62C();
  v72 = sub_1000AC02C();
  [v71 setText:v72];

  v73 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonHeigthConstraint);
  if (!v73)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v73 setActive:1];
  v74 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_conflictHeigthConstraint);
  if (!v74)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v74 setActive:1];
  [*(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_viewInCalendarButton) setAlpha:0.0];
  [*(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel) setAlpha:0.0];
  v75 = *(v2 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_calendarButtonBottomConstraint);
  if (!v75)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v75 setConstant:-12.0];
}

id sub_10006F6DC()
{
  v1 = OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___separatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10006F754()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBDateTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006F8D8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006F968()
{
  v1 = v0 + OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006F9E0()
{
  [v0 setNeedsLayout];
  [v0 layoutIfNeeded];
  v1 = &v0[OBJC_IVAR____TtC8Business20IMBDateTableViewCell_timeSelectionDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10006FA78(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_1000AC60C();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1000068B4(i, v6);
    type metadata accessor for IMBProposedTimeslot();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1000AC5EC();
    v4 = v7[2];
    sub_1000AC61C();
    sub_1000AC62C();
    sub_1000AC5FC();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

id sub_10006FB64()
{
  if (sub_10002CE60() > 1u)
  {
    v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleSubheadline];
    v8 = [objc_opt_self() systemFontOfSize:11.0 weight:UIFontWeightSemibold];
    v9 = [v7 scaledFontForFont:v8];

    return v9;
  }

  else
  {
    v0 = objc_opt_self();
    v1 = [v0 preferredFontForTextStyle:UIFontTextStyleTitle3];
    v2 = [v1 fontDescriptor];

    [v2 pointSize];
    v4 = v3;

    v5 = [v0 systemFontOfSize:v4 weight:UIFontWeightSemibold];

    return v5;
  }
}

uint64_t sub_10006FCDC(uint64_t a1)
{
  v38 = a1;
  v1 = sub_10000413C(&unk_1000F3B10, &qword_1000B4168);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v37 = &v35 - v4;
  v36 = sub_1000AB7EC();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000AB89C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000AB8BC();
  v39 = *(v16 - 8);
  v40 = v16;
  v17 = *(v39 + 64);
  __chkstk_darwin(v16, v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB88C();
  v21 = enum case for Calendar.Component.year(_:);
  v22 = v11[13];
  v22(v15, enum case for Calendar.Component.year(_:), v10);
  sub_1000AB7DC();
  v23 = sub_1000AB8AC();
  (*(v5 + 8))(v9, v36);
  v24 = v11[1];
  v24(v15, v10);
  v22(v15, v21, v10);
  v25 = v20;
  v26 = sub_1000AB8AC();
  v24(v15, v10);
  v27 = v37;
  if (v23 == v26)
  {
    v28 = 0x4D4D202C45454545;
  }

  else
  {
    v28 = 0xD000000000000012;
  }

  v29 = sub_1000AC02C();

  sub_1000AB87C();
  v30 = sub_1000AB83C();
  v31 = *(v30 - 8);
  isa = 0;
  if ((*(v31 + 48))(v27, 1, v30) != 1)
  {
    isa = sub_1000AB82C().super.isa;
    (*(v31 + 8))(v27, v30);
  }

  v33 = [objc_opt_self() dateFormatFromTemplate:v29 options:0 locale:isa];

  if (v33)
  {

    v28 = sub_1000AC06C();
  }

  (*(v39 + 8))(v25, v40);
  return v28;
}