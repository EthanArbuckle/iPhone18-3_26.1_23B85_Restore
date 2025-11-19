Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v183.receiver = v0;
  v183.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v183, "viewDidLayoutSubviews");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  v4 = [v1 view];
  v5 = v4;
  if (v3 != 3)
  {
    if (!v4)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    [v4 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    if (qword_100609D08 != -1)
    {
      swift_once();
    }

    if (qword_100609D10 != -1)
    {
      swift_once();
    }

    v34 = *&qword_100619230;
    v35 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
    v186 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v187 = v35;
    v188 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
    sub_100399C60(&v186, &v182);
    if (qword_100609D20 != -1)
    {
      swift_once();
    }

    v203.origin.x = v27;
    v203.origin.y = v29;
    v203.size.width = v31;
    v203.size.height = v33;
    CGRectGetWidth(v203);
    v204.origin.x = v27;
    v204.origin.y = v29;
    v204.size.width = v31;
    v204.size.height = v33;
    CGRectGetHeight(v204);
    v36 = [v1 traitCollection];
    [v36 displayScale];

    v37 = QRCode.dotAdjustedWidth(with:scale:)();
    sub_100399D3C(&v186);
    v205.origin.x = v27;
    v205.origin.y = v29;
    v205.size.width = v31;
    v205.size.height = v33;
    Width = CGRectGetWidth(v205);
    v39 = [v1 view];
    if (!v39)
    {
      goto LABEL_44;
    }

    v40 = v39;
    [v39 safeAreaInsets];
    v42 = v41;

    v43 = [v1 view];
    if (!v43)
    {
LABEL_45:
      __break(1u);
      return;
    }

    v44 = v43;
    v181 = v37;
    v45 = v34 + v34 + v37;
    [v43 safeAreaInsets];

    v46 = sub_100226A94(v27, v29, v31, v33, v42, (Width - v45) * 0.5);
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v179 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] sizeThatFits:{v49, v51}];
    v54 = v53;
    v55 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] sizeThatFits:{v50, v52}];
    if (qword_100609D30 != -1)
    {
      v174 = v56;
      swift_once();
      v56 = v174;
    }

    v176 = v45 + *&qword_100619250;
    v57 = v54 + v45 + *&qword_100619250;
    if (qword_100609D38 != -1)
    {
      v175 = v56;
      swift_once();
      v56 = v175;
    }

    v180 = v54;
    v178 = *&qword_100619258;
    v58 = v56 + v57 + *&qword_100619258;
    if (qword_100609D40 != -1)
    {
      swift_once();
    }

    v59 = v58 + *&qword_100619260 + *&qword_100619260;
    v206.origin.x = v46;
    v206.origin.y = v48;
    v206.size.width = v50;
    v206.size.height = v52;
    v60 = CGRectGetWidth(v206);
    v61 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView] setFrame:{v46, v48, v50, v52}];
    [*&v1[v61] setContentSize:{v60, v59}];
    v207.origin.x = v46;
    v207.origin.y = v48;
    v207.size.width = v50;
    v207.size.height = v52;
    CGRectGetHeight(v207);
    v62 = *&v1[v61];
    v63 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView];
    v64 = v62;
    sub_1004BCD84();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;

    [v63 setFrame:{v66, v68, v70, v72}];
    v73 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView] bounds];
    v77 = v76;
    v78 = v74;
    v79 = v75;
    v80 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView;
    v81 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
    v177 = v82;
    if (v81)
    {
      v83 = *&v1[v73];
      v84 = v81;
      v85 = v83;
      sub_1004BCD84();
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v93 = v92;

      [v84 setFrame:{v87, v89, v91, v93}];
      v94 = *&v1[v80];
      v95 = v79 - v176;
      v96 = v176 + v78;
      v97 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
      if (v94)
      {
        v98 = v97;
        [v94 bounds];
LABEL_31:
        v99 = v55;
        v100 = [v1 traitCollection];
        [v100 displayScale];

        sub_1004BCD94();
        [v98 setFrame:*&v181];

        v101 = *&v1[v179];
        v208.origin.x = v77;
        v208.origin.y = v96;
        v208.size.width = v177;
        v208.size.height = v95;
        CGRectGetMinY(v208);
        v102 = *&v1[v73];
        sub_1004BCD84();
        v104 = v103;
        v106 = v105;
        v108 = v107;
        v110 = v109;

        [v101 setFrame:{v104, v106, v108, v110}];
        v111 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
        v112 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView];
        v209.origin.x = v77;
        v209.origin.y = v180 + v178 + v96;
        v209.size.width = v177;
        v209.size.height = v95 - (v180 + v178);
        CGRectGetMinY(v209);
        v113 = *&v1[v73];
        sub_1004BCD84();
        v115 = v114;
        v117 = v116;
        v119 = v118;
        v121 = v120;

        [v112 setFrame:{v115, v117, v119, v121}];
        v122 = *&v1[v111];
        v24 = *&v1[v99];
        [v122 bounds];
        goto LABEL_32;
      }
    }

    else
    {
      v95 = v75 - v176;
      v96 = v176 + v74;
      v97 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
    }

    v98 = v97;
    goto LABEL_31;
  }

  if (!v4)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = [v4 safeAreaLayoutGuide];

  [v6 layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (qword_100609D00 != -1)
  {
    swift_once();
  }

  if (qword_100609D18 != -1)
  {
    swift_once();
  }

  v15 = *&qword_100619238;
  v16 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
  v186 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v187 = v16;
  v188 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
  sub_100399C60(&v186, &v182);
  if (qword_100609D20 != -1)
  {
    swift_once();
  }

  v201.origin.x = v8;
  v201.origin.y = v10;
  v201.size.width = v12;
  v201.size.height = v14;
  CGRectGetWidth(v201);
  v202.origin.x = v8;
  v202.origin.y = v10;
  v202.size.width = v12;
  v202.size.height = v14;
  CGRectGetHeight(v202);
  v17 = [v1 traitCollection];
  [v17 displayScale];

  v18 = QRCode.dotAdjustedWidth(with:scale:)();
  sub_100399D3C(&v186);
  v19 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v20 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v21 = [v1 traitCollection];
  [v21 displayScale];

  sub_1004BCD94();
  [v20 setFrame:*&v18];

  v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  if (v22)
  {
    v23 = *&v1[v19];
    v24 = v22;
    [v23 frame];
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    NSDirectionalEdgeInsets.init(edge:length:)(v25, v15);
    CGRect.outset(by:for:)();
LABEL_32:
    [v24 setFrame:?];
  }

  v123 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v124 = [v1 view];
  if (!v124)
  {
    __break(1u);
    goto LABEL_42;
  }

  v125 = v124;
  [v124 bounds];
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;

  [v123 setFrame:{v127, v129, v131, v133}];
  v134 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32] != 76)
  {
    v135 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] frame];
    v136 = CGRectGetWidth(v210) * 0.3;
    if (qword_100609D28 != -1)
    {
      swift_once();
    }

    v137 = *&qword_100619248;
    if (*&qword_100619248 < v136)
    {
      v136 = *&qword_100619248;
    }

    v138 = *&v1[v135];
    sub_1004BCD84();
    v140 = v139;
    v142 = v141;
    v144 = v143;
    v146 = v145;

    v147 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setFrame:{v140, v142, v144, v146}];
    CGAffineTransformMakeScale(&v182, v136 / v137, v136 / v137);
    a = v182.a;
    b = v182.b;
    c = v182.c;
    d = v182.d;
    tx = v182.tx;
    ty = v182.ty;
    v154 = *(v134 + 1);
    v184[0] = *v134;
    v184[1] = v154;
    v185 = *(v134 + 4);
    sub_100003ABC(&qword_100610540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004D9C70;
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v189.x = 12.0;
    v189.y = 15.0;
    *(inited + 32) = CGPointApplyAffineTransform(v189, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v190.x = 12.0;
    v190.y = 6.0;
    *(inited + 48) = CGPointApplyAffineTransform(v190, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v191.y = 6.0;
    v191.x = 36.0;
    *(inited + 64) = CGPointApplyAffineTransform(v191, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v192.y = 0.0;
    v192.x = 36.0;
    *(inited + 80) = CGPointApplyAffineTransform(v192, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v193.y = 0.0;
    v193.x = 85.0;
    *(inited + 96) = CGPointApplyAffineTransform(v193, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v194.x = 85.0;
    v194.y = 90.0;
    *(inited + 112) = CGPointApplyAffineTransform(v194, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v195.x = 36.0;
    v195.y = 90.0;
    *(inited + 128) = CGPointApplyAffineTransform(v195, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v196.x = 36.0;
    v196.y = 95.0;
    *(inited + 144) = CGPointApplyAffineTransform(v196, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v197.x = 0.0;
    v197.y = 95.0;
    *(inited + 160) = CGPointApplyAffineTransform(v197, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v198.x = 0.0;
    v198.y = 57.0;
    *(inited + 176) = CGPointApplyAffineTransform(v198, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v199.x = 12.0;
    v199.y = 57.0;
    *(inited + 192) = CGPointApplyAffineTransform(v199, &v182);
    v182.a = a;
    v182.b = b;
    v182.c = c;
    v182.d = d;
    v182.tx = tx;
    v182.ty = ty;
    v200.x = 12.0;
    v200.y = 15.0;
    *(inited + 208) = CGPointApplyAffineTransform(v200, &v182);
    v156 = *&v1[v147];
    sub_100399C60(v184, &v182);
    [v156 frame];
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v164 = v163;
    [*&v1[v135] bounds];
    v169 = QRCode.dotAlignedPath(with:in:imageBounds:)(inited, v158, v160, v162, v164, v165, v166, v167, v168);
    sub_100399D3C(v184);
    swift_setDeallocating();
    v170 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer] setPath:v169];
    v171 = *&v1[v170];
    v172 = *&v1[v135];
    v173 = v171;
    [v172 bounds];
    [v173 setFrame:?];
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.dismissAnimated()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_100399DF0;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000D6C80;
  v11 = &unk_1005C4EB8;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_100399E30;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100398C10;
  v11 = &unk_1005C4F08;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.25];
  _Block_release(v6);
  _Block_release(v3);
}

id sub_100398B34(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel) setAlpha:0.0];
  result = [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView) setEffect:0];
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager))
  {

    BrightnessManager.resetBrightnessToSystemDefault()();
  }

  return result;
}

uint64_t sub_100398C10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *sub_100398E1C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = 0;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = 0;
  v10 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v11 = [objc_allocWithZone(UIImageView) init];
  v12 = UIView.forAutolayout.getter();

  *&v5[v10] = v12;
  v13 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *&v5[v13] = [objc_allocWithZone(CALayer) init];
  v14 = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v36.receiver = v5;
  v36.super_class = v14;
  v15 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v17 = *&v15[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView];
  v18 = v15;
  [v18 addSubview:v17];
  v19 = objc_opt_self();
  sub_100003ABC(&qword_10060EC20);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004C51F0;
  v21 = [*&v15[v16] leadingAnchor];
  v22 = [v18 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v20 + 32) = v23;
  v24 = [*&v15[v16] trailingAnchor];
  v25 = [v18 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v20 + 40) = v26;
  v27 = [*&v15[v16] topAnchor];
  v28 = [v18 topAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v20 + 48) = v29;
  v30 = [*&v15[v16] bottomAnchor];
  v31 = [v18 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  sub_100009130(0, qword_10060B7B0);
  isa = sub_1004BC284().super.isa;

  [v19 activateConstraints:isa];

  sub_100009130(0, &unk_1006110B0);
  sub_1004BCB94();
  v35[3] = v14;
  v35[0] = v18;
  sub_1004BCF14();
  swift_unknownObjectRelease();

  sub_100004C6C(v35);
  return v18;
}

Swift::Void __swiftcall QRCodeOverlayViewController.ContainerView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  sub_100009130(0, &qword_100610548);
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  static CATransaction.performWithoutAnimation(_:)(sub_100399E48);
}

void sub_1003992A4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView);
  v2 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer);
  [v1 bounds];
  [v2 setFrame:?];
}

void sub_1003993D8()
{
  v1 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  if (v1)
  {
    v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];
    v4 = kCAFilterSourceIn;
    v15 = v1;
    [v3 setCompositingFilter:v4];
    v5 = *&v0[v2];
    v6 = [v0 traitCollection];
    v7 = [v15 resolvedColorWithTraitCollection:v6];

    v8 = [v7 CGColor];
    [v5 setBackgroundColor:v8];

    v9 = [*&v0[v2] superlayer];
    if (v9)
    {
      v14 = v9;

      v10 = v14;
    }

    else
    {
      v12 = [*&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] layer];
      v13 = *&v0[v2];
      [v12 addSublayer:v13];

      v10 = v15;
    }
  }

  else
  {
    v11 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];

    [v11 removeFromSuperlayer];
  }
}

id sub_100399604(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *QRCodeOverlayViewController.ImageViewRepresentable.makeUIView(context:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = sub_1004B9184();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = a4;
  v13 = a4;

  [*&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v13];

  if ((a3 & 1) == 0)
  {
    sub_1004BC994();
    v14 = sub_1004B9904();
    sub_1004B7F84();

    sub_1004B9174();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v8 + 8))(v10, v7);
    a2 = v19[1];
  }

  if (a2)
  {
    sub_100009130(0, &qword_10060DF30);

    v15 = sub_1004BCF54();
    v16 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v15;
    v17 = v15;

    sub_1003993D8();
  }

  return v11;
}

void QRCodeOverlayViewController.ImageViewRepresentable.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = sub_1004B9184();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image);
  *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = a5;
  v14 = a5;

  [*(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView) setImage:v14];

  if ((a4 & 1) == 0)
  {
    sub_1004BC994();
    v15 = sub_1004B9904();
    sub_1004B7F84();

    sub_1004B9174();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v10 + 8))(v12, v9);
    a3 = v19[1];
  }

  if (a3)
  {
    sub_100009130(0, &qword_10060DF30);

    v16 = sub_1004BCF54();
    v17 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor);
    *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = v16;
    v18 = v16;

    sub_1003993D8();
  }
}

uint64_t sub_100399B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10039A28C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100399B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10039A28C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100399BD0()
{
  sub_10039A28C();
  sub_1004B94B4();
  __break(1u);
}

id sub_100399BF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_100399CE0(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100399D90()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100399DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100399DF8()
{

  return swift_deallocObject();
}

unint64_t sub_100399E5C()
{
  result = qword_100610550;
  if (!qword_100610550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610550);
  }

  return result;
}

uint64_t sub_100399EBC(uint64_t a1, int a2)
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

uint64_t sub_100399F04(uint64_t result, int a2, int a3)
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

void sub_100399F54()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v5 = sub_1004BBE24();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  *(v0 + v4) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_100609D48 != -1)
  {
    swift_once();
  }

  v10 = [objc_opt_self() effectForBlurEffect:qword_100619268];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *(v0 + v9) = v11;
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *(v0 + v13) = [objc_allocWithZone(UIScrollView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *(v0 + v14) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager) = 0;
  sub_1004BD624();
  __break(1u);
}

void sub_10039A1B4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = 0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = 0;
  v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *(v1 + v5) = [objc_allocWithZone(CALayer) init];
  sub_1004BD624();
  __break(1u);
}

unint64_t sub_10039A28C()
{
  result = qword_1006105B0;
  if (!qword_1006105B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006105B0);
  }

  return result;
}

uint64_t Radiosity.ViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[0] = v2[8];
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA424();
  v6 = v26[0];
  v7 = v3[5];
  v26[4] = v3[4];
  v26[5] = v7;
  v8 = v3[7];
  v26[6] = v3[6];
  v26[7] = v8;
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v26[2] = v3[2];
  v26[3] = v10;
  v11 = sub_100003ABC(&qword_1006105B8);
  *(a2 + *(v11 + 40)) = v6;
  v12 = (a2 + *(v11 + 36));
  v13 = v3[5];
  v12[4] = v3[4];
  v12[5] = v13;
  v14 = v3[7];
  v12[6] = v3[6];
  v12[7] = v14;
  v15 = v3[1];
  *v12 = *v3;
  v12[1] = v15;
  v16 = v3[3];
  v12[2] = v3[2];
  v12[3] = v16;
  v17 = sub_100003ABC(&qword_1006105C0);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = swift_allocObject();
  v19 = v3[7];
  v18[7] = v3[6];
  v18[8] = v19;
  v18[9] = v3[8];
  v20 = v3[3];
  v18[3] = v3[2];
  v18[4] = v20;
  v21 = v3[5];
  v18[5] = v3[4];
  v18[6] = v21;
  v22 = v3[1];
  v18[1] = *v3;
  v18[2] = v22;
  v23 = (a2 + *(sub_100003ABC(&qword_1006105C8) + 36));
  *v23 = sub_10039A4B0;
  v23[1] = v18;
  sub_10039A4B4(v26, v25);
  return sub_10039A4EC(v3, v25);
}

uint64_t sub_10039A524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[7];
  v31 = v2[6];
  v32 = v5;
  v33 = v2[8];
  v6 = v2[3];
  v27 = v2[2];
  v28 = v6;
  v7 = v2[5];
  v29 = v2[4];
  v30 = v7;
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v24[0] = v2[8];
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA424();
  v9 = v34[0];
  v34[4] = v29;
  v34[5] = v30;
  v34[6] = v31;
  v34[7] = v32;
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  v34[3] = v28;
  v10 = sub_100003ABC(&qword_1006105B8);
  *(a2 + *(v10 + 40)) = v9;
  v11 = (a2 + *(v10 + 36));
  v12 = v30;
  v11[4] = v29;
  v11[5] = v12;
  v13 = v32;
  v11[6] = v31;
  v11[7] = v13;
  v14 = v26;
  *v11 = v25;
  v11[1] = v14;
  v15 = v28;
  v11[2] = v27;
  v11[3] = v15;
  v16 = sub_100003ABC(&qword_1006105C0);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = swift_allocObject();
  v18 = v32;
  v17[7] = v31;
  v17[8] = v18;
  v17[9] = v33;
  v19 = v28;
  v17[3] = v27;
  v17[4] = v19;
  v20 = v30;
  v17[5] = v29;
  v17[6] = v20;
  v21 = v26;
  v17[1] = v25;
  v17[2] = v21;
  v22 = (a2 + *(sub_100003ABC(&qword_1006105C8) + 36));
  *v22 = sub_10039DAC4;
  v22[1] = v17;
  sub_10039A4B4(v34, v24);
  return sub_10039A4EC(&v25, v24);
}

uint64_t sub_10039A75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_10039A7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_10039A854()
{
  swift_getWitnessTable();
  sub_1004B94B4();
  __break(1u);
}

id sub_10039A8A4(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  result = swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      [v1 addSubview:*&v1[qword_1006105E8]];
      return [v1 addSubview:*&v1[qword_1006105F0]];
    }

    else
    {
      [*&v1[qword_1006105E8] removeFromSuperview];
      return [*&v1[qword_1006105F0] removeFromSuperview];
    }
  }

  return result;
}

uint64_t Radiosity.UIView.isRadiosityEnabled.getter()
{
  v1 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id Radiosity.UIView.isRadiosityEnabled.setter(char a1)
{
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_10039A8A4(v4);
}

void (*Radiosity.UIView.isRadiosityEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_10039AA8C;
}

void sub_10039AA8C(uint64_t a1)
{
  v1 = *a1;
  Radiosity.UIView.isRadiosityEnabled.setter(*(*a1 + 32));

  free(v1);
}

void sub_10039AACC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 72);
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:
  sub_10039B2B0(v5);
  sub_10039B928();
}

double Radiosity.UIView.specs.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_10039CA14(v8);
  sub_10039A4B4(v8, v7);
  v2 = v12;
  a1[4] = v11;
  a1[5] = v2;
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  v4 = v8[1];
  *a1 = v8[0];
  a1[1] = v4;
  result = *&v9;
  v6 = v10;
  a1[2] = v9;
  a1[3] = v6;
  return result;
}

uint64_t Radiosity.UIView.specs.setter(_OWORD *a1)
{
  sub_10039CBE4(a1);

  return sub_10039CCB8(a1);
}

void (*Radiosity.UIView.specs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x320uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 792) = v1;
  v5 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  v4[6] = v5[6];
  v4[7] = v11;
  v4[4] = v9;
  v4[5] = v10;
  v12 = v5[7];
  v14 = v5[4];
  v13 = v5[5];
  v4[30] = v5[6];
  v4[31] = v12;
  v4[28] = v14;
  v4[29] = v13;
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[3];
  v4[26] = v5[2];
  v4[27] = v17;
  v4[24] = v15;
  v4[25] = v16;
  sub_10039A4B4(v4, (v4 + 32));
  return sub_10039ACC0;
}

void sub_10039ACC0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 464);
  if (a2)
  {
    v2[12] = v2[28];
    v2[13] = v3;
    v4 = v2[31];
    v2[14] = v2[30];
    v2[15] = v4;
    v5 = v2[25];
    v2[8] = v2[24];
    v2[9] = v5;
    v6 = v2[27];
    v2[10] = v2[26];
    v2[11] = v6;
    sub_10039A4B4((v2 + 8), (v2 + 40));
    sub_10039CBE4(v2 + 8);
    sub_10039CCB8((v2 + 8));
    v7 = v2[29];
    v2[36] = v2[28];
    v2[37] = v7;
    v8 = v2[31];
    v2[38] = v2[30];
    v2[39] = v8;
    v9 = v2[25];
    v2[32] = v2[24];
    v2[33] = v9;
    v10 = v2[27];
    v2[34] = v2[26];
    v2[35] = v10;
    v11 = (v2 + 32);
  }

  else
  {
    v2[20] = v2[28];
    v2[21] = v3;
    v12 = v2[31];
    v2[22] = v2[30];
    v2[23] = v12;
    v13 = v2[25];
    v2[16] = v2[24];
    v2[17] = v13;
    v14 = v2[27];
    v2[18] = v2[26];
    v2[19] = v14;
    sub_10039CBE4(v2 + 16);
    v11 = (v2 + 16);
  }

  sub_10039CCB8(v11);

  free(v2);
}

__int128 *Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (qword_100609D58 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.containerDetailHeaderArtwork;
}

id Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[direct field offset for Radiosity.UIView.content] = a1;
  v9 = &v4[direct field offset for Radiosity.UIView.specs];
  v10 = *(a3 + 80);
  v9[4] = *(a3 + 64);
  v9[5] = v10;
  v11 = *(a3 + 112);
  v9[6] = *(a3 + 96);
  v9[7] = v11;
  v12 = *(a3 + 16);
  *v9 = *a3;
  v9[1] = v12;
  v13 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v13;
  v4[direct field offset for Radiosity.UIView.isRadiosityEnabled] = a2;
  if (*(a3 + 72))
  {
    v14 = objc_allocWithZone(UIView);
    v15 = a1;
    sub_10039A4B4(a3, v31);
    v16 = [v14 init];
  }

  else
  {
    v17 = objc_allocWithZone(_UIPortalView);
    v18 = a1;
    sub_10039A4B4(a3, v31);
    v16 = [v17 initWithSourceView:v18];
  }

  v19 = v16;
  *&v4[qword_1006105E8] = v16;
  v20 = objc_allocWithZone(_UIPortalView);
  v21 = a1;
  v22 = v19;
  v23 = [v20 initWithSourceView:v21];
  *&v4[qword_1006105F0] = v23;
  v30.receiver = v4;
  v30.super_class = type metadata accessor for Radiosity.UIView();
  v24 = v23;
  v25 = objc_msgSendSuper2(&v30, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v25 addSubview:{v21, v30.receiver, v30.super_class}];
  if (a2)
  {
    [v25 addSubview:v22];
    [v25 addSubview:v24];
  }

  [v25 bounds];
  [v21 setFrame:?];
  [v21 setAutoresizingMask:18];

  sub_10039B2B0(0);
  sub_10039B928();
  v26 = [v25 traitCollection];
  v27 = [v26 userInterfaceStyle];

  sub_10039BE2C(v27);
  sub_100003ABC(qword_10060CCB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1004C50A0;
  *(v28 + 32) = sub_1004B8364();
  *(v28 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1004BCF24();

  swift_unknownObjectRelease();

  sub_10039CCB8(a3);

  return v25;
}

double sub_10039B190(void *a1)
{
  v1 = a1;
  Radiosity.UIView.intrinsicContentSize.getter();
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall Radiosity.UIView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for Radiosity.UIView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  sub_10039B2B0(0);
  sub_10039B928();
}

void sub_10039B254(void *a1)
{
  v1 = a1;
  Radiosity.UIView.layoutSubviews()();
}

void sub_10039B29C(uint64_t a1)
{
  v2 = *(v1 + qword_1006105E8);
  *(v1 + qword_1006105E8) = a1;
}

void sub_10039B2B0(char a1)
{
  v2 = v1;
  if (a1)
  {
    [*&v1[qword_1006105E8] removeFromSuperview];
    v3 = &v1[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    if (*(v3 + 9))
    {
      v4 = [objc_allocWithZone(UIView) init];
    }

    else
    {
      v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView:*&v2[direct field offset for Radiosity.UIView.content]];
    }

    v5 = *&v2[qword_1006105E8];
    *&v2[qword_1006105E8] = v4;
    v6 = v4;

    v7 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
    swift_beginAccess();
    if (v2[v7] == 1)
    {
      [v2 addSubview:v6];
    }
  }

  v8 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v9 = *(v8 + 5);
  v52 = *(v8 + 4);
  v53 = v9;
  v10 = *(v8 + 7);
  v54 = *(v8 + 6);
  v55 = v10;
  v11 = *(v8 + 1);
  *&v50.a = *v8;
  *&v50.c = v11;
  v12 = *(v8 + 3);
  *&v50.tx = *(v8 + 2);
  v51 = v12;
  sub_10039A4B4(&v50, &v49);
  [v2 bounds];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  v49 = v50;
  v59 = CGRectApplyAffineTransform(v58, &v49);
  v17 = v59.origin.x;
  v18 = v59.origin.y;
  v19 = v59.size.width;
  v20 = v59.size.height;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v46 = CGRectGetWidth(v60);
  v61.origin.x = v17;
  v61.origin.y = v18;
  v61.size.width = v19;
  v61.size.height = v20;
  v45 = CGRectGetWidth(v61);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v21 = CGRectGetHeight(v62);
  v63.origin.x = v17;
  v63.origin.y = v18;
  v63.size.width = v19;
  v63.size.height = v20;
  v22 = CGRectGetHeight(v63);
  sub_10039CCB8(&v50);
  v23 = *&v2[qword_1006105E8];
  [v2 bounds];
  [v23 setFrame:?];

  v24 = [*&v2[qword_1006105E8] layer];
  v25 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v24 setShadowColor:*(v25 + 7)];

  v26 = [*&v2[qword_1006105E8] layer];
  v27 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  LODWORD(v28) = *(v27 + 12);
  [v26 setShadowOpacity:v28];

  v29 = [*&v2[qword_1006105E8] layer];
  v30 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v29 setShadowRadius:v30[8]];

  v31 = [*&v2[qword_1006105E8] layer];
  v32 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v57 = *(v32 + 72);
  v33 = v57;
  if (v57)
  {
    v34 = &v2[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    v35 = v34[8];
    v36 = sub_10039DA88(&v57, &v49);
    v37 = v33(v36, MinX + (v46 - v45) * 0.5, v21 - v22, v19, v20, v35);
    v39 = v38;
    sub_10039CFDC(&v57);
  }

  else
  {
    v37 = 0;
  }

  [v31 setShadowPath:v37];

  v40 = [*&v2[qword_1006105E8] layer];
  v41 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v56 = *(v41 + 72);
  v42 = v56;
  if (v56)
  {
    v43 = *(&v56 + 1);
    sub_10039DA88(&v56, v48);
    v44 = sub_10039B7B4(v42, v43, v2);
    sub_10039CFDC(&v56);
  }

  else
  {
    v44 = 0;
  }

  [v40 setMask:v44];
}

id sub_10039B7B4(uint64_t (*a1)(uint64_t, double, double, double, double, double), uint64_t a2, char *a3)
{
  v5 = [objc_allocWithZone(CAShapeLayer) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 blackColor];
  v9 = [v8 CGColor];

  [v7 setBackgroundColor:v9];
  [a3 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &a3[direct field offset for Radiosity.UIView.specs];
  v19 = swift_beginAccess();
  v20 = a1(v19, v11, v13, v15, v17, v18[8]);
  v22 = v21;

  [v7 setPath:v22];
  [v7 setFillRule:kCAFillRuleEvenOdd];

  return v7;
}

void sub_10039B928()
{
  v1 = v0;
  v2 = &v0[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v44 = *(v2 + 4);
  v45 = v3;
  v4 = *(v2 + 7);
  v46 = *(v2 + 6);
  v47 = v4;
  v5 = *(v2 + 1);
  *&v42.a = *v2;
  *&v42.c = v5;
  v6 = *(v2 + 3);
  *&v42.tx = *(v2 + 2);
  v43 = v6;
  sub_10039A4B4(&v42, &rect[3]);
  [v1 bounds];
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  *&rect[3] = v42;
  v49 = CGRectApplyAffineTransform(v48, &rect[3]);
  v11 = v49.origin.x;
  rect[0] = *&v49.origin.x;
  rect[2] = *&v49.origin.y;
  v12 = v49.size.width;
  v13 = v49.size.height;
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  rect[1] = COERCE_ID(CGRectGetMinX(v49));
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v14 = CGRectGetWidth(v50);
  v51.origin.x = v11;
  *&v51.origin.y = rect[2];
  v51.size.width = v12;
  v51.size.height = v13;
  v15 = *&rect[1] + (v14 - CGRectGetWidth(v51)) * 0.5;
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v16 = CGRectGetHeight(v52);
  *&v53.origin.x = rect[0];
  *&v53.origin.y = rect[2];
  v53.size.width = v12;
  v53.size.height = v13;
  v17 = CGRectGetHeight(v53);
  sub_10039CCB8(&v42);
  v18 = *&v1[qword_1006105F0];
  [v18 setFrame:{v15, v16 - v17, v12, v13}];
  v19 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v20 = *(v19 + 1);
  *&rect[3] = *v19;
  *&rect[5] = v20;
  *&rect[7] = *(v19 + 2);
  [v18 setTransform:&rect[3]];
  rect[2] = [v18 layer];
  sub_100003ABC(&qword_10060B7A0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004C50C0;
  v22 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v23 = *(v22 + 13);

  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceStyle];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v23(v25);
  isa = sub_1004BC5A4().super.super.isa;
  [v26 setValue:isa forKey:kCAFilterInputAmount];

  v28 = sub_10039DA3C();
  *(v21 + 56) = v28;
  *(v21 + 32) = v26;
  swift_beginAccess();
  v29 = kCAFilterGaussianBlur;
  v30 = objc_allocWithZone(CAFilter);

  v31 = [v30 initWithType:v29];
  v32 = sub_1004BC5A4().super.super.isa;
  [v31 setValue:v32 forKey:kCAFilterInputRadius];

  v33 = sub_1004BC3D4().super.super.isa;
  [v31 setValue:v33 forKey:kCAFilterInputNormalizeEdges];

  *(v21 + 88) = v28;
  *(v21 + 64) = v31;
  v34 = sub_1004BC284().super.isa;

  [rect[2] setFilters:v34];

  v35 = [v18 layer];
  v36 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v37 = *(v36 + 11);

  v38 = [v1 traitCollection];
  v39 = [v38 userInterfaceStyle];

  LODWORD(v16) = v37(v39);

  LODWORD(v40) = LODWORD(v16);
  [v35 setOpacity:v40];
}

void sub_10039BE2C(uint64_t a1)
{
  sub_10039B928();
  v3 = [*(v1 + qword_1006105E8) layer];
  v4 = v3;
  if (a1 == 2)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -2.0;
  }

  if (a1 == 2)
  {
    v6 = -2.0;
  }

  else
  {
    v6 = -1.0;
  }

  [v3 setZPosition:v5];

  v7 = [*(v1 + qword_1006105F0) layer];
  [v7 setZPosition:v6];
}

id Radiosity.UIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Radiosity.UIView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10039BF9C(uint64_t a1)
{
  v2 = *(a1 + direct field offset for Radiosity.UIView.specs + 80);
  v6[4] = *(a1 + direct field offset for Radiosity.UIView.specs + 64);
  v6[5] = v2;
  v3 = *(a1 + direct field offset for Radiosity.UIView.specs + 112);
  v6[6] = *(a1 + direct field offset for Radiosity.UIView.specs + 96);
  v6[7] = v3;
  v4 = *(a1 + direct field offset for Radiosity.UIView.specs + 16);
  v6[0] = *(a1 + direct field offset for Radiosity.UIView.specs);
  v6[1] = v4;
  v5 = *(a1 + direct field offset for Radiosity.UIView.specs + 48);
  v6[2] = *(a1 + direct field offset for Radiosity.UIView.specs + 32);
  v6[3] = v5;
  sub_10039CCB8(v6);
}

__n128 Radiosity.Specs.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 Radiosity.Specs.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t Radiosity.Specs.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = v4;
  result = sub_10002F518(v7);
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  return result;
}

__n128 Radiosity.Specs.shadow.setter(uint64_t a1)
{
  sub_10003CC4C(*(v1 + 72));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsManager.Configuration.animationDuration.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Whitetail.Binding.configurationBlock.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Radiosity.Specs.radiosity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = *(v1 + 96);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

__n128 Radiosity.Specs.radiosity.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v4;
  *(v1 + 120) = *(a1 + 32);
  return result;
}

uint64_t View.radiosity(specs:)(__int128 *a1)
{
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  sub_1004BA414();
  LOBYTE(v3) = v12[0];
  *(&v3 + 1) = *(&v12[0] + 1);
  sub_10039A4B4(a1, v12);
  sub_1004BA124();
  v12[6] = v10;
  v12[7] = v11;
  v12[8] = v3;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = v9;
  v12[0] = v4;
  v12[1] = v5;
  return sub_10039CF90(v12);
}

double Radiosity.Specs.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  v19 = v2[4];
  v20 = v5;
  v6 = v2[7];
  v21 = v2[6];
  v22 = v6;
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  v8 = v2[3];
  v17 = v2[2];
  v18 = v8;
  sub_10039A4B4(v2, &v14);
  a1(&v15);
  v9 = v20;
  a2[4] = v19;
  a2[5] = v9;
  v10 = v22;
  a2[6] = v21;
  a2[7] = v10;
  v11 = v16;
  *a2 = v15;
  a2[1] = v11;
  result = *&v17;
  v13 = v18;
  a2[2] = v17;
  a2[3] = v13;
  return result;
}

__n128 sub_10039C3A4()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.85, 0.85);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.containerDetailHeaderArtwork = v6;
  *algn_100619290 = v5;
  qword_1006192A0 = *&tx;
  unk_1006192A8 = *&ty;
  dword_1006192B0 = 1050253722;
  qword_1006192B8 = v3;
  unk_1006192C0 = 0x402E000000000000;
  qword_1006192C8 = 0;
  unk_1006192D0 = 0;
  qword_1006192D8 = sub_10039C4A4;
  unk_1006192E0 = 0;
  qword_1006192E8 = sub_10039C4CC;
  unk_1006192F0 = 0;
  qword_1006192F8 = 0x4040000000000000;
  return result;
}

float sub_10039C4A4(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0.42;
  }

  else
  {
    return flt_1004E5034[a1];
  }
}

double sub_10039C4CC(unint64_t a1)
{
  if (a1 > 2)
  {
    return 1.8;
  }

  else
  {
    return dbl_1004E5040[a1];
  }
}

__n128 sub_10039C514()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.94, 0.94);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.nowPlaying = v6;
  *algn_100619310 = v5;
  qword_100619320 = *&tx;
  unk_100619328 = *&ty;
  dword_100619330 = 1053609165;
  qword_100619338 = v3;
  unk_100619340 = 0x402E000000000000;
  qword_100619348 = 0;
  unk_100619350 = 0;
  qword_100619358 = variable initialization expression of VerticalToggleSlider._maxValue;
  unk_100619360 = 0;
  qword_100619368 = sub_10039C610;
  unk_100619370 = 0;
  qword_100619378 = 0x4049000000000000;
  return result;
}

__int128 *Radiosity.Specs.nowPlaying.unsafeMutableAddressor()
{
  if (qword_100609D60 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.nowPlaying;
}

uint64_t sub_10039C68C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_10039A4B4(a2, v4);
}

double Radiosity.Specs.pathShadow(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(v4 + 48);
  v25 = *(v4 + 32);
  v26 = v7;
  v27 = *(v4 + 64);
  v8 = *(v4 + 16);
  v23 = *v4;
  v24 = v8;
  v9 = (v4 + 72);
  v10 = *(v4 + 72);
  v22 = *(v4 + 120);
  v11 = *(v4 + 80);
  v12 = *(v5 + 104);
  v20 = *(v5 + 88);
  v21 = v12;
  if (a3)
  {
    sub_10039A4B4(v5, v19);
  }

  else
  {
    v28 = *v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a1;
    sub_10039A4B4(v5, v19);
    sub_10039CFDC(&v28);
    v10 = sub_10039CFD0;
  }

  v15 = v26;
  *(a4 + 32) = v25;
  *(a4 + 48) = v15;
  v16 = v24;
  *a4 = v23;
  *(a4 + 16) = v16;
  result = *&v20;
  v18 = v21;
  *(a4 + 88) = v20;
  *(a4 + 64) = v27;
  *(a4 + 72) = v10;
  *(a4 + 80) = v11;
  *(a4 + 104) = v18;
  *(a4 + 120) = v22;
  return result;
}

id sub_10039C7FC(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRoundedRect:a1 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, a7, a7}];
  v15 = [v14 CGPath];

  v16 = [v13 bezierPathWithRoundedRect:a2 cornerRadius:{a3, a4, a5, a7}];
  sub_1004BC924();
  v19 = [v13 bezierPathWithRoundedRect:sub_100226A94(a2 cornerRadius:{a3, a4, a5, v17, v18)}];
  CGPathCreateMutable();
  v20 = [v16 CGPath];
  sub_1004BCA14();

  v21 = [v19 CGPath];
  sub_1004BCA14();

  return v15;
}

_BYTE *sub_10039C9B8(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

__n128 sub_10039CA14@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v4;
  v5 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v5;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  result = *(v3 + 32);
  v8 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  return result;
}

id sub_10039CA7C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1004B8C74();
  v8 = type metadata accessor for Radiosity.UIView();
  (*(v5 + 16))(v7, v2, v4);
  v9 = sub_1004B8C44();
  v10 = *(v3 + 36);
  LOBYTE(v3) = *(v2 + *(v3 + 40));
  v11 = *(v2 + v10 + 80);
  v18[4] = *(v2 + v10 + 64);
  v18[5] = v11;
  v12 = *(v2 + v10 + 112);
  v18[6] = *(v2 + v10 + 96);
  v18[7] = v12;
  v13 = *(v2 + v10 + 16);
  v18[0] = *(v2 + v10);
  v18[1] = v13;
  v14 = *(v2 + v10 + 48);
  v18[2] = *(v2 + v10 + 32);
  v18[3] = v14;
  sub_10039A4B4(v18, v17);
  v15 = objc_allocWithZone(v8);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(v9, v3, v18);
}

uint64_t sub_10039CBE4(_OWORD *a1)
{
  v3 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v4 = v3[5];
  v17 = v3[4];
  v18 = v4;
  v5 = v3[7];
  v19 = v3[6];
  v20 = v5;
  v6 = v3[1];
  v14[0] = *v3;
  v14[1] = v6;
  v7 = v3[3];
  v15 = v3[2];
  v16 = v7;
  v21[0] = v14[0];
  v21[1] = v6;
  v21[2] = v15;
  v21[3] = v7;
  v21[4] = v17;
  v21[5] = v4;
  v21[6] = v19;
  v21[7] = v5;
  v8 = a1[3];
  v3[2] = a1[2];
  v3[3] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  v10 = a1[7];
  v3[6] = a1[6];
  v3[7] = v10;
  v11 = a1[5];
  v3[4] = a1[4];
  v3[5] = v11;
  sub_10039A4B4(v14, v13);
  sub_10039A4B4(a1, v13);
  sub_10039CCB8(v21);
  sub_10039AACC(v14);
  return sub_10039CCB8(v14);
}

id sub_10039CD14(void *a1, uint64_t a2)
{
  v5 = __chkstk_darwin(a1);
  (*(v7 + 16))(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  sub_1004B8C64();
  [a1 invalidateIntrinsicContentSize];
  v8 = (v2 + *(a2 + 36));
  v9 = v8[5];
  v15[4] = v8[4];
  v15[5] = v9;
  v10 = v8[7];
  v15[6] = v8[6];
  v15[7] = v10;
  v11 = v8[1];
  v15[0] = *v8;
  v15[1] = v11;
  v12 = v8[3];
  v15[2] = v8[2];
  v15[3] = v12;
  sub_10039A4B4(v15, v14);
  sub_10039CBE4(v15);
  sub_10039CCB8(v15);
  return Radiosity.UIView.isRadiosityEnabled.setter(*(v2 + *(a2 + 40)));
}

void sub_10039CEA8(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle];

  sub_10039BE2C(v2);
}

uint64_t sub_10039D038(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10039D050(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_10039D07C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10039D0C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10039D1A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10039D1E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10039D258(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10039D2A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10039D2F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10039D348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10039D3C0()
{
  result = qword_100610678;
  if (!qword_100610678)
  {
    sub_100003B68(&qword_1006105C8);
    sub_1000206D4(&qword_100610680, &qword_1006105B8);
    sub_1000206D4(&qword_100610688, &qword_100610690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610678);
  }

  return result;
}

uint64_t sub_10039D4A4()
{
  sub_1004B8D64();
  sub_10039D508();
  return swift_getWitnessTable();
}

unint64_t sub_10039D508()
{
  result = qword_100610698[0];
  if (!qword_100610698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100610698);
  }

  return result;
}

uint64_t sub_10039D55C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10039D5E4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((v6 + 7) & 0xF8) - 127));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_10039D738(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 120) = 0;
          result = 0.0;
          *(v19 + 104) = 0u;
          *(v19 + 88) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t sub_10039D984()
{
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_10039DA3C()
{
  result = qword_10060B7A8;
  if (!qword_10060B7A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060B7A8);
  }

  return result;
}

uint64_t sub_10039DAEC(uint64_t a1)
{
  v2 = sub_1004B87C4();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1004B8F64();
}

uint64_t Reactions.StackView.Model.reaction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

double sub_10039DC78@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10039DCFC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t Reactions.StackView.Model.reaction.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

void (*Reactions.StackView.Model.reaction.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D5140;
}

uint64_t Reactions.StackView.Model.$reaction.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100610730);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_100610728);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$reaction.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_100610730);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_100610728);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D5144;
}

uint64_t Reactions.StackView.Model.count.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t sub_10039E1DC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10039E260()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t Reactions.StackView.Model.count.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

void (*Reactions.StackView.Model.count.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D5140;
}

uint64_t Reactions.StackView.Model.$count.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100610748);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_100610740);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$count.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_100610748);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_100610740);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D5144;
}

uint64_t Reactions.StackView.Model.userImage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t sub_10039E724@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10039E7A8(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_1004B85B4();
}

uint64_t Reactions.StackView.Model.userImage.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

void (*Reactions.StackView.Model.userImage.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D5140;
}

uint64_t Reactions.StackView.Model.$userImage.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100610758);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_10060EBF0);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$userImage.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_100610758);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_10060EBF0);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D4114;
}

void (*Reactions.StackView.Model.isReacting.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D3DD4;
}

uint64_t Reactions.StackView.Model.$isReacting.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100610768);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_10060D2F0);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$isReacting.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_100610768);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_10060D2F0);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D5144;
}

uint64_t sub_10039F054()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

void (*Reactions.StackView.Model.hasAnimatedBackground.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D5140;
}

uint64_t Reactions.StackView.Model.$hasAnimatedBackground.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100610768);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_10060D2F0);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$hasAnimatedBackground.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_100610768);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_10060D2F0);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D5144;
}

uint64_t Reactions.StackView.Model.__allocating_init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = sub_100003ABC(&qword_10060D2F0);
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = v24 - v6;
  v25 = sub_100003ABC(&qword_10060EBF0);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = v24 - v9;
  v11 = sub_100003ABC(&qword_100610728);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v24[1] = sub_100003ABC(&qword_100610D60);
  sub_1004B8564();
  (*(v12 + 32))(v15 + v16, v14, v11);
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  sub_100003ABC(&qword_10060A770);
  sub_1004B8564();
  (*(v8 + 32))(v15 + v17, v10, v25);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  sub_1004B8564();
  v19 = *(v5 + 32);
  v20 = v26;
  v19(v15 + v18, v7, v26);
  v21 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  sub_1004B8564();
  v19(v15 + v21, v7, v20);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v15 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v12 + 8))(v15 + v16, v11);
  v32 = v27;
  v33 = v28;
  sub_1004B8564();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  sub_1004B8564();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_1004B85B4();
  *(v15 + v22) = v31;
  return v15;
}

uint64_t Reactions.StackView.Model.init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = sub_100003ABC(&qword_10060D2F0);
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v25 - v7;
  v9 = sub_100003ABC(&qword_10060EBF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = sub_100003ABC(&qword_100610728);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v25 = sub_100003ABC(&qword_100610D60);
  sub_1004B8564();
  (*(v14 + 32))(v5 + v17, v16, v13);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  sub_100003ABC(&qword_10060A770);
  sub_1004B8564();
  (*(v10 + 32))(v5 + v18, v12, v9);
  v19 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  sub_1004B8564();
  v20 = *(v6 + 32);
  v21 = v26;
  v20(v5 + v19, v8, v26);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  sub_1004B8564();
  v20(v5 + v22, v8, v21);
  v23 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v5 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v14 + 8))(v5 + v17, v13);
  v32 = v27;
  v33 = v28;
  sub_1004B8564();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  sub_1004B8564();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_1004B85B4();
  *(v5 + v23) = v31;
  return v5;
}

uint64_t Reactions.StackView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = sub_100003ABC(&qword_100610728);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = sub_100003ABC(&qword_100610740);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = sub_100003ABC(&qword_10060EBF0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = sub_100003ABC(&qword_10060D2F0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);
  return v0;
}

uint64_t Reactions.StackView.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = sub_100003ABC(&qword_100610728);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = sub_100003ABC(&qword_100610740);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = sub_100003ABC(&qword_10060EBF0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = sub_100003ABC(&qword_10060D2F0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_10039FF24@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Reactions.StackView.Model(0);
  result = sub_1004B8534();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of Reactions.StackView.model()
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_1003A3778(&qword_100610778, type metadata accessor for Reactions.StackView.Model);

  return sub_1004B8B74();
}

uint64_t Reactions.StackView.model.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Reactions.StackView.$model.getter()
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_1003A3778(&qword_100610778, type metadata accessor for Reactions.StackView.Model);

  return sub_1004B8B84();
}

double Reactions.StackView.specs.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 Reactions.StackView.init(model:specs:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_100003ABC(&qword_10060DE10);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_100003ABC(&unk_100609E70);
  swift_storeEnumTagMultiPayload();
  v7 = v4[8];
  *(a2 + v7) = swift_getKeyPath();
  sub_100003ABC(&unk_10060D340);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Reactions.StackView.Model(0);
  sub_1003A3778(&qword_100610778, type metadata accessor for Reactions.StackView.Model);
  *a2 = sub_1004B8B74();
  *(a2 + 8) = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v10;
  *(a2 + 48) = *(a1 + 32);
  return result;
}

uint64_t Reactions.StackView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v2 = sub_100003ABC(&qword_100610780);
  __chkstk_darwin(v2 - 8);
  v99 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = (&v90 - v5);
  v6 = type metadata accessor for Reactions.StackView(0);
  v103 = *(v6 - 8);
  __chkstk_darwin(v6);
  v104 = v7;
  v105 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100610788);
  v108 = *(v8 - 8);
  v109 = v8;
  __chkstk_darwin(v8);
  v107 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v106 = &v90 - v11;
  v12 = sub_100003ABC(&qword_10060AA68);
  __chkstk_darwin(v12 - 8);
  v14 = &v90 - v13;
  v98 = sub_1004B8C94();
  v15 = *(v98 - 8);
  __chkstk_darwin(v98);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004BA7E4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v102 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v20;
  v22 = __chkstk_darwin(v21);
  v23 = *(v19 + 104);
  v112 = &v90 - v24;
  v23(v22);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v26 = v114;
  v27 = *(v1 + 16);
  if (v27 < v114)
  {
    v26 = *(v1 + 16);
  }

  v28 = __OFSUB__(v26, 1);
  v29 = v26 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    v97 = v1;
    v95 = *(v1 + 48);
    v30 = *(v1 + 24);
    v31 = *(v1 + 32);
    v32 = *(v1 + 40);
    KeyPath = v29;
    v92 = v17;
    v94 = v27;
    sub_100308A40(v17);
    v110 = v19;
    v93 = *(v15 + 16);
    v33 = v17;
    v34 = v98;
    v93(v14, v33, v98);
    v111 = v18;
    v91 = *(v15 + 56);
    v91(v14, 0, 1, v34);
    v35 = sub_1004BCCE4();
    v36 = objc_opt_self();
    v37 = [v36 traitCollectionWithPreferredContentSizeCategory:v35];
    v38 = objc_opt_self();
    v39 = [v38 defaultMetrics];
    [v39 scaledValueForValue:v37 compatibleWithTraitCollection:v30];
    v41 = v40;

    v42 = v14;
    v43 = v14;
    v44 = v92;
    v93(v42, v92, v34);
    v45 = v110;
    v46 = v113;
    v91(v43, 0, 1, v34);
    v47 = v111;
    v48 = sub_1004BCCE4();
    v49 = [v36 traitCollectionWithPreferredContentSizeCategory:v48];
    v50 = [v38 defaultMetrics];
    [v50 scaledValueForValue:v49 compatibleWithTraitCollection:v32];
    v52 = v51;

    (*(v15 + 8))(v44, v34);
    v53 = v94;
    *&v117 = v94;
    *(&v117 + 1) = v41;
    *&v118 = v31;
    *(&v118 + 1) = v52;
    LODWORD(v49) = v95;
    v119 = v95;
    *v46 = sub_1004B9204();
    *(v46 + 8) = v31 - v41;
    *(v46 + 16) = 0;
    v93 = (v46 + *(sub_100003ABC(&qword_100610790) + 44));
    if (v49)
    {
      v54 = KeyPath & ~(KeyPath >> 63);
    }

    else
    {
      v54 = v53;
    }

    v98 = v54;
    *&v114 = 0;
    *(&v114 + 1) = KeyPath & ~(KeyPath >> 63);
    KeyPath = swift_getKeyPath();
    v55 = v97;
    v56 = v105;
    sub_1003A2668(v97, v105);
    v57 = v102;
    v58 = v112;
    (*(v45 + 16))(v102, v112, v47);
    v59 = (*(v103 + 80) + 49) & ~*(v103 + 80);
    v60 = (v104 + *(v45 + 80) + v59) & ~*(v45 + 80);
    v61 = swift_allocObject();
    v62 = v118;
    *(v61 + 16) = v117;
    *(v61 + 32) = v62;
    *(v61 + 48) = v119;
    sub_1003A2968(v56, v61 + v59);
    (*(v45 + 32))(v61 + v60, v57, v47);
    sub_100003ABC(&qword_100610798);
    sub_100003ABC(&qword_1006107A0);
    sub_1003A2AB4();
    sub_1003A2C18();
    v63 = v106;
    sub_1004BA654();
    v64 = sub_1004BA754();
    v65 = v100;
    *v100 = v64;
    *(v65 + 8) = v66;
    v67 = sub_100003ABC(&qword_1006107E0);
    sub_1003A17C4(&v117, v55, v58, v65 + *(v67 + 44));
    v69 = v108;
    v68 = v109;
    v70 = *(v108 + 16);
    v71 = v107;
    v70(v107, v63, v109);
    v72 = v99;
    sub_10000F778(v65, v99, &qword_100610780);
    v73 = v93;
    *v93 = 0;
    *(v73 + 8) = 1;
    v74 = sub_100003ABC(&qword_1006107E8);
    v70(v73 + *(v74 + 48), v71, v68);
    sub_10000F778(v72, v73 + *(v74 + 64), &qword_100610780);
    sub_100007214(v65, &qword_100610780);
    v75 = *(v69 + 8);
    v75(v63, v68);
    sub_100007214(v72, &qword_100610780);
    v75(v71, v68);
    result = v98 + 1;
    if (!__OFADD__(v98, 1))
    {
      Int.seconds.getter(result);
      sub_1004BA754();
      sub_1004B8994();
      v76 = sub_100003ABC(&qword_1006107F0);
      v77 = v113;
      v78 = (v113 + *(v76 + 36));
      v79 = v115;
      *v78 = v114;
      v78[1] = v79;
      v78[2] = v116;
      v80 = sub_1004B9964();
      sub_1004B86C4();
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v88 = v87;
      v89 = v77 + *(sub_100003ABC(&qword_1006107F8) + 36);
      *v89 = v80;
      *(v89 + 8) = v82;
      *(v89 + 16) = v84;
      *(v89 + 24) = v86;
      *(v89 + 32) = v88;
      *(v89 + 40) = 0;
      return (*(v110 + 8))(v112, v111);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003A0CD8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v5 = sub_1004B8D94();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003ABC(&qword_100610AD0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  *a3 = sub_1004BA754();
  a3[1] = v16;
  v17 = sub_100003ABC(&qword_100610B78);
  sub_1003A0FA4(a1, v22, a3 + *(v17 + 44));
  sub_1004BA8B4();
  sub_1004B8DA4();
  sub_1004BA7C4();
  v18 = sub_1003A3778(&qword_100610B18, &type metadata accessor for ScaleTransition);
  sub_1004B8784();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 16))(v12, v15, v9);
  v23 = v5;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_1004B8A04();
  (*(v10 + 8))(v15, v9);
  result = sub_100003ABC(&qword_1006107A0);
  *(a3 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_1003A0FA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a2;
  v46 = a3;
  v3 = sub_100003ABC(&qword_100610B80);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v45 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_100003ABC(&qword_100610AE0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v41 = sub_1004BA294();
  sub_1004BA754();
  sub_1004B8994();
  v40 = v47[1];
  LODWORD(v39) = v48;
  v15 = v49;
  v38 = v50;
  v37 = v51;
  v36 = v52;
  v16 = sub_1004BA2B4();
  v17 = &v14[*(v10 + 44)];
  v18 = *(sub_100003ABC(&qword_100610AE8) + 36);
  v19 = enum case for BlendMode.destinationOut(_:);
  v20 = sub_1004BA7E4();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17 + v18, v19, v20);
  *v17 = v16;
  *(v17 + *(sub_100003ABC(&qword_100610AF0) + 56)) = 256;
  v22 = v40;
  *v14 = v41;
  *(v14 + 1) = v22;
  v14[16] = v39;
  *(v14 + 3) = v15;
  v14[32] = v38;
  v23 = v36;
  *(v14 + 5) = v37;
  *(v14 + 6) = v23;
  v41 = sub_1004BA294();
  sub_1004BA754();
  sub_1004B8994();
  v24 = v53;
  LOBYTE(v15) = v54;
  v25 = v55;
  LOBYTE(v19) = v56;
  v40 = v57;
  v39 = v58;
  sub_1003A140C(v47);
  v26 = v47[0];
  v27 = &v8[*(v4 + 44)];
  v28 = sub_100003ABC(&qword_100610AF8);
  (*(v21 + 16))(v27 + *(v28 + 36), v44, v20);
  *v27 = v26;
  *(v27 + *(sub_100003ABC(&qword_100610B00) + 56)) = 256;
  v29 = v42;
  *v8 = v41;
  *(v8 + 1) = v24;
  v8[16] = v15;
  *(v8 + 3) = v25;
  v8[32] = v19;
  v30 = v39;
  *(v8 + 5) = v40;
  *(v8 + 6) = v30;
  sub_10000F778(v14, v29, &qword_100610AE0);
  v31 = v45;
  sub_10000F778(v8, v45, &qword_100610B80);
  v32 = v46;
  sub_10000F778(v29, v46, &qword_100610AE0);
  v33 = sub_100003ABC(&qword_100610B88);
  sub_10000F778(v31, v32 + *(v33 + 48), &qword_100610B80);
  sub_100007214(v8, &qword_100610B80);
  sub_100007214(v14, &qword_100610AE0);
  sub_100007214(v31, &qword_100610B80);
  return sub_100007214(v29, &qword_100610AE0);
}

uint64_t sub_1003A140C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_100003ABC(&qword_100610B20);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v22 = &v21 - v5;
  v6 = sub_1004B92F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004B87C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Reactions.StackView(0);
  sub_100308EC0(v13);
  sub_100308E70(v9);
  v14 = *(v4 + 56);
  v15 = v11;
  v16 = v22;
  (*(v15 + 32))(v22, v13, v10);
  (*(v7 + 32))(v16 + v14, v9, v6);
  v17 = (*(v15 + 88))(v16, v10);
  if (v17 == enum case for ColorScheme.light(_:))
  {
    if ((*(v7 + 88))(v16 + v14, v6) == enum case for ColorSchemeContrast.increased(_:))
    {
      v18 = [objc_opt_self() secondarySystemFillColor];
      v24 = sub_1004BA304();
LABEL_7:
      *v23 = sub_1004B89A4();
      return (*(v15 + 8))(v16, v10);
    }
  }

  else if (v17 == enum case for ColorScheme.dark(_:) && (*(v7 + 88))(v16 + v14, v6) == enum case for ColorSchemeContrast.increased(_:))
  {
    LODWORD(v24) = sub_1004B9634();
    goto LABEL_7;
  }

  if (*(*(v2 + 8) + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) == 1)
  {
    LODWORD(v24) = sub_1004B9614();
  }

  else
  {
    v20 = [objc_opt_self() secondarySystemFillColor];
    v24 = sub_1004BA304();
  }

  *v23 = sub_1004B89A4();
  return sub_100007214(v16, &qword_100610B20);
}

uint64_t sub_1003A17C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a2;
  v91 = a3;
  v85 = a1;
  v94 = a4;
  v81 = sub_1004B8D94();
  v78 = *(v81 - 8);
  __chkstk_darwin(v81);
  v75 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_100610AD0);
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6);
  v76 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v71 - v9;
  v10 = sub_1004BA334();
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin(v10);
  v72 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003ABC(&qword_10060DF60);
  __chkstk_darwin(v12 - 8);
  v88 = &v71 - v13;
  v89 = sub_100003ABC(&qword_100610AD8) - 8;
  __chkstk_darwin(v89);
  v93 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = sub_100003ABC(&qword_100610AE0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v95 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  v92 = sub_1004BA294();
  v24 = *(a1 + 8);
  sub_1004BA754();
  sub_1004B8994();
  v25 = v123;
  LODWORD(v87) = v124;
  v86 = v125;
  LODWORD(v84) = v126;
  v82 = v128;
  *&v83 = v127;
  v26 = sub_1004BA2B4();
  v27 = &v23[*(v19 + 44)];
  v28 = *(sub_100003ABC(&qword_100610AE8) + 36);
  v29 = enum case for BlendMode.destinationOut(_:);
  v30 = sub_1004BA7E4();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v27 + v28, v29, v30);
  *v27 = v26;
  *(v27 + *(sub_100003ABC(&qword_100610AF0) + 56)) = 256;
  *v23 = v92;
  *(v23 + 1) = v25;
  v23[16] = v87;
  *(v23 + 3) = v86;
  v23[32] = v84;
  v32 = v82;
  *(v23 + 5) = v83;
  *(v23 + 6) = v32;
  v92 = v23;
  sub_1003A230C(&v129);
  v86 = *(&v131 + 1);
  v87 = v131;
  LOBYTE(v27) = v132;
  v33 = sub_1004B9A64();
  v83 = v130;
  v84 = v129;
  v34 = v88;
  (*(*(v33 - 8) + 56))(v88, 1, 1, v33);
  v35 = sub_1004B9AB4();
  sub_100007214(v34, &qword_10060DF60);
  KeyPath = swift_getKeyPath();
  LOBYTE(v129) = v27;
  sub_1004BA754();
  v88 = v24;
  sub_1004B8994();
  sub_1003A140C(&v129);
  v37 = v129;
  v38 = &v17[*(v89 + 44)];
  v39 = sub_100003ABC(&qword_100610AF8);
  (*(v31 + 16))(&v38[*(v39 + 36)], v91, v30);
  *v38 = v37;
  *&v38[*(sub_100003ABC(&qword_100610B00) + 56)] = 256;
  v40 = v83;
  *v17 = v84;
  *(v17 + 1) = v40;
  v41 = v86;
  *(v17 + 4) = v87;
  *(v17 + 5) = v41;
  v17[48] = v27;
  *(v17 + 7) = KeyPath;
  *(v17 + 8) = v35;
  v42 = v140;
  *(v17 + 72) = v139;
  *(v17 + 88) = v42;
  v43 = v17;
  *(v17 + 104) = v141;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v44 = v129;
  if (!v129)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v129 != 1)
  {

LABEL_5:
    sub_1003A3758(&v129);
    goto LABEL_6;
  }

  v45 = v44;
  sub_1004BA314();
  v47 = v72;
  v46 = v73;
  v48 = v74;
  (*(v73 + 104))(v72, enum case for Image.ResizingMode.stretch(_:), v74);
  v91 = sub_1004BA384();

  (*(v46 + 8))(v47, v48);
  v49 = sub_1004BA754();
  v89 = v50;
  v90 = v49;
  sub_1004BA284();
  v87 = sub_1004BA2C4();

  sub_1004BA8B4();
  v51 = v75;
  sub_1004B8DA4();
  sub_1004BA7C4();
  v52 = sub_1003A3778(&qword_100610B18, &type metadata accessor for ScaleTransition);
  v53 = v77;
  v54 = v81;
  sub_1004B8784();

  (*(v78 + 8))(v51, v54);
  v55 = v79;
  v56 = v80;
  (*(v79 + 16))(v76, v53, v80);
  *&v129 = v54;
  *(&v129 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  v57 = sub_1004B8A04();
  (*(v55 + 8))(v53, v56);
  sub_1004BA754();
  sub_1004B8994();

  *(v122 + 8) = v106;
  v116 = v91;
  LOWORD(v117) = 257;
  *(&v117 + 1) = v90;
  *&v118 = v89;
  *(&v118 + 1) = v87;
  *&v119 = 0x3FE0000000000000;
  BYTE8(v119) = 0;
  v120 = 0uLL;
  LOBYTE(v121) = 2;
  *(&v121 + 1) = 0x3FF0000000000000;
  *&v122[0] = v57;
  *(&v122[1] + 8) = v107;
  *(&v122[2] + 8) = v108;
  v58.location = &v116;
  CFRange.init(_:)(v58);
  v135 = v122[0];
  v136 = v122[1];
  v137 = v122[2];
  v138 = *&v122[3];
  v131 = v118;
  v132 = v119;
  v133 = v120;
  v134 = v121;
  v129 = v116;
  v130 = v117;
LABEL_6:
  v59 = v92;
  v60 = v95;
  sub_10000F778(v92, v95, &qword_100610AE0);
  v61 = v93;
  sub_10000F778(v43, v93, &qword_100610AD8);
  v102 = v135;
  v103 = v136;
  v104 = v137;
  v105 = v138;
  v98 = v131;
  v99 = v132;
  v100 = v133;
  v101 = v134;
  v96 = v129;
  v97 = v130;
  v62 = v60;
  v63 = v94;
  sub_10000F778(v62, v94, &qword_100610AE0);
  v64 = sub_100003ABC(&qword_100610B08);
  sub_10000F778(v61, v63 + *(v64 + 48), &qword_100610AD8);
  v65 = v63 + *(v64 + 64);
  v112 = v102;
  v113 = v103;
  v114 = v104;
  v115 = v105;
  v110 = v100;
  v111 = v101;
  v108 = v98;
  v109 = v99;
  v106 = v96;
  v107 = v97;
  sub_10000F778(&v106, &v116, &qword_100610B10);
  sub_100007214(v43, &qword_100610AD8);
  sub_100007214(v59, &qword_100610AE0);
  v66 = v113;
  *(v65 + 96) = v112;
  *(v65 + 112) = v66;
  *(v65 + 128) = v114;
  *(v65 + 144) = v115;
  v67 = v109;
  *(v65 + 32) = v108;
  *(v65 + 48) = v67;
  v68 = v111;
  *(v65 + 64) = v110;
  *(v65 + 80) = v68;
  v69 = v107;
  *v65 = v106;
  *(v65 + 16) = v69;
  v122[0] = v102;
  v122[1] = v103;
  v122[2] = v104;
  *&v122[3] = v105;
  v118 = v98;
  v119 = v99;
  v120 = v100;
  v121 = v101;
  v116 = v96;
  v117 = v97;
  sub_100007214(&v116, &qword_100610B10);
  sub_100007214(v61, &qword_100610AD8);
  return sub_100007214(v95, &qword_100610AE0);
}

double sub_1003A230C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B8D94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (*(&v35 + 1))
  {
    sub_1002C4D1C();
    v9 = sub_1004B9D84();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = sub_1004BA7C4();
    sub_1004BA8B4();
    sub_1004B8DA4();
    (*(v3 + 16))(v5, v8, v2);
    sub_1003A3778(&qword_100610B18, &type metadata accessor for ScaleTransition);
    v17 = sub_1004B8A04();
    (*(v3 + 8))(v8, v2);
    v28 = v9;
    v29 = v11;
    v30 = v13 & 1;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = 0;
  }

  else
  {
    v18 = sub_1004BA344();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    if (v35 == 1)
    {
      v19 = sub_1004BA2D4();
    }

    else
    {
      v19 = sub_1004BA234();
    }

    v20 = v19;
    v21 = sub_1004B9B14();
    KeyPath = swift_getKeyPath();
    v28 = v18;
    v29 = v20;
    v30 = KeyPath;
    v31 = v21;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  sub_100003ABC(&qword_100610B28);
  sub_100003ABC(&qword_100610B30);
  sub_1003A37C0();
  sub_1003A38A4();
  sub_1004B9514();
  result = *&v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  *a1 = v35;
  *(a1 + 16) = v24;
  *(a1 + 32) = v25;
  *(a1 + 48) = v26;
  return result;
}

uint64_t Reactions.StackView.Specs.init(maxItemCount:platterLength:stackSpacing:fontSize:sizingMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t sub_1003A2668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A26CC()
{
  v1 = type metadata accessor for Reactions.StackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 49) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = sub_1004BA7E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = v1[6];
  sub_100003ABC(&qword_10060DE10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1004B87C4();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  sub_100003ABC(&unk_100609E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1004B92F4();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_100003ABC(&unk_10060D340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1004B8C94();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v15 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1003A2968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A29CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Reactions.StackView(0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1004BA7E4() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1003A0CD8(v1 + v4, v7, a1);
}

unint64_t sub_1003A2AB4()
{
  result = qword_1006107A8;
  if (!qword_1006107A8)
  {
    sub_100003B68(&qword_100610798);
    sub_1003A2B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006107A8);
  }

  return result;
}

unint64_t sub_1003A2B38()
{
  result = qword_1006107B0;
  if (!qword_1006107B0)
  {
    sub_100003B68(&qword_1006107B8);
    sub_1003A2BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006107B0);
  }

  return result;
}

unint64_t sub_1003A2BC4()
{
  result = qword_1006107C0;
  if (!qword_1006107C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006107C0);
  }

  return result;
}

unint64_t sub_1003A2C18()
{
  result = qword_1006107C8;
  if (!qword_1006107C8)
  {
    sub_100003B68(&qword_1006107A0);
    sub_1000206D4(&qword_1006107D0, &qword_1006107D8);
    sub_1000206D4(&qword_10060F4C8, &qword_10060F4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006107C8);
  }

  return result;
}

unint64_t sub_1003A2D1C()
{
  result = qword_100610800;
  if (!qword_100610800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610800);
  }

  return result;
}

uint64_t sub_1003A2DB4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100003ABC(&qword_10060DB70);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100003ABC(&qword_10060C7A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100003ABC(&qword_10060C1D8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1003A2F58(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100003ABC(&qword_10060DB70);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100003ABC(&qword_10060C7A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100003ABC(&qword_10060C1D8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_1003A30E8()
{
  sub_1003A31F8();
  if (v0 <= 0x3F)
  {
    sub_1003A328C(319, &qword_10060DBE8, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_1003A328C(319, &unk_10060C818, &type metadata accessor for ColorSchemeContrast);
      if (v2 <= 0x3F)
      {
        sub_1003A328C(319, &qword_10060D850, &type metadata accessor for DynamicTypeSize);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003A31F8()
{
  if (!qword_100610870)
  {
    type metadata accessor for Reactions.StackView.Model(255);
    sub_1003A3778(&qword_100610778, type metadata accessor for Reactions.StackView.Model);
    v0 = sub_1004B8BA4();
    if (!v1)
    {
      atomic_store(v0, &qword_100610870);
    }
  }
}

void sub_1003A328C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004B8804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003A32E8()
{
  sub_100214418(319, &qword_1006108E8, &qword_100610D60);
  if (v0 <= 0x3F)
  {
    sub_1003A3484(319, &unk_1006108F0);
    if (v1 <= 0x3F)
    {
      sub_100214418(319, &unk_10060ED30, &qword_10060A770);
      if (v2 <= 0x3F)
      {
        sub_1003A3484(319, &qword_10060D468);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1003A3484(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1004B85D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1003A34D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003A3514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1003A3580()
{
  result = qword_100610AA0;
  if (!qword_100610AA0)
  {
    sub_100003B68(&qword_100610AA8);
    sub_1003A360C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610AA0);
  }

  return result;
}

unint64_t sub_1003A360C()
{
  result = qword_100610AB0;
  if (!qword_100610AB0)
  {
    sub_100003B68(&qword_1006107F8);
    sub_1003A3698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610AB0);
  }

  return result;
}

unint64_t sub_1003A3698()
{
  result = qword_100610AB8;
  if (!qword_100610AB8)
  {
    sub_100003B68(&qword_1006107F0);
    sub_1000206D4(&qword_100610AC0, &qword_100610AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610AB8);
  }

  return result;
}

double sub_1003A3758(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1003A3778(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003A37C0()
{
  result = qword_100610B38;
  if (!qword_100610B38)
  {
    sub_100003B68(&qword_100610B28);
    sub_1000206D4(&qword_100610B40, &qword_100610B48);
    sub_1000206D4(&qword_10060F4C8, &qword_10060F4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610B38);
  }

  return result;
}

unint64_t sub_1003A38A4()
{
  result = qword_100610B50;
  if (!qword_100610B50)
  {
    sub_100003B68(&qword_100610B30);
    sub_1003A395C();
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610B50);
  }

  return result;
}

unint64_t sub_1003A395C()
{
  result = qword_100610B58;
  if (!qword_100610B58)
  {
    sub_100003B68(&qword_100610B60);
    sub_1000206D4(&qword_100610B68, &qword_100610B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610B58);
  }

  return result;
}

id sub_1003A3AFC(uint64_t a1, uint64_t a2)
{
  sub_1003A7DE4(a1, v16);
  v5 = v17;
  if (v17)
  {
    v6 = sub_100009178(v16, v17);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1004BD9A4();
    (*(v7 + 8))(v10, v5);
    sub_100004C6C(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for SliderView.PanGestureRecognizer();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithTarget:action:", v11, a2);
  swift_unknownObjectRelease();
  sub_1002BE048(a1);
  return v13;
}

uint64_t *SliderView.Specs.barHeight.unsafeMutableAddressor()
{
  if (qword_100609D68 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.barHeight;
}

uint64_t *SliderView.Specs.expandedBarHeight.unsafeMutableAddressor()
{
  if (qword_100609D70 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.expandedBarHeight;
}

CGFloat sub_1003A3E1C()
{
  CGAffineTransformMakeScale(&v1, 1.05, 1.05);
  result = v1.a;
  *static SliderView.Specs.expandedTransform = v1;
  return result;
}

char *SliderView.Specs.expandedTransform.unsafeMutableAddressor()
{
  if (qword_100609D78 != -1)
  {
    swift_once();
  }

  return static SliderView.Specs.expandedTransform;
}

double static SliderView.Specs.expandedTransform.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_100609D78 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&static SliderView.Specs.expandedTransform[16];
  *a1 = *static SliderView.Specs.expandedTransform;
  a1[1] = v1;
  result = *&static SliderView.Specs.expandedTransform[32];
  a1[2] = *&static SliderView.Specs.expandedTransform[32];
  return result;
}

uint64_t *SliderView.Specs.stretchLimit.unsafeMutableAddressor()
{
  if (qword_100609D80 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.stretchLimit;
}

uint64_t *SliderView.Specs.escapeHeight.unsafeMutableAddressor()
{
  if (qword_100609D88 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.escapeHeight;
}

id sub_1003A4054()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1006193E0 = result;
  return result;
}

double sub_1003A40A8()
{
  v0 = Int.seconds.getter(1);
  result = v0 / Int.seconds.getter(100);
  qword_1006193E8 = *&result;
  return result;
}

id SliderView.panRecognizer.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SliderView.PanGestureRecognizer()) initWithTarget:v0 action:"panGestureRecognized:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void SliderView.panRecognizer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = a1;
}

void (*SliderView.panRecognizer.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = SliderView.panRecognizer.getter();
  return sub_1003A41E8;
}

void sub_1003A41E8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = v2;
}

id SliderView.trackLayoutGuide.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackLayoutGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SliderView.elapsedTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.elapsedTrackColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

void (*SliderView.elapsedTrackColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_1003A44F8;
}

void sub_1003A44F8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6))
    {
      v7 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
      swift_beginAccess();
      v8 = v3[9];
    }

    else
    {
      v8 = v3[9];
      v7 = (v8 + v3[10]);
    }

    [v5 setBackgroundColor:*v7];
    v9 = *(v8 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v8 + v10)];
  }

  free(v3);
}

id SliderView.remainingTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.remainingTrackColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v9 = (v1 + v8);
  swift_beginAccess();
  [v6 setBackgroundColor:*v9];
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v1 + v3)];
}

void (*SliderView.remainingTrackColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_1003A47D4;
}

void sub_1003A47D4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
    if (!*(v4 + v6))
    {
      v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
    }

    v8 = *v7;
    v10 = v3[9];
    v9 = v3[10];
    swift_beginAccess();
    [v5 setBackgroundColor:*(v10 + v8)];
    [*(v10 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v10 + v9)];
  }

  free(v3);
}

id SliderView.trackingColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackingColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if ((*(v1 + v7) & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

void (*SliderView.trackingColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_1003A4AAC;
}

void sub_1003A4AAC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6) == 1)
    {
      v7 = v3[9];
      v8 = (v7 + v3[10]);
    }

    else
    {
      v8 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
      swift_beginAccess();
      v7 = v3[9];
    }

    [v5 setBackgroundColor:*v8];
    v9 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v7 + v10)];
  }

  free(v3);
}

double SliderView.value.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void SliderView.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = SliderView.panRecognizer.getter();
  [v4 setEnabled:*(v1 + v3)];
}

void (*SliderView.isEnabled.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1003A4D34;
}

void sub_1003A4D34(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = SliderView.panRecognizer.getter();
    [v6 setEnabled:*(v4 + v5)];
  }

  free(v3);
}

uint64_t SliderView.isTracking.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.transitionStartValue.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  swift_beginAccess();
  return *v1;
}

void SliderView.transitionStartValue.setter(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = *&a1;
  *(v5 + 8) = a2 & 1;
  if (v7)
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && v6 == *&a1)
  {
    return;
  }

  sub_1003A759C();
  if ((v5[1] & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v8)
    {
      v9 = *v5;
      v10 = v8;
      [v2 bounds];
      [v10 setConstant:v9 * CGRectGetWidth(v11)];
    }
  }
}

void (*SliderView.transitionStartValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_1003A4FB0;
}

void sub_1003A4FB0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 32);
  if (a2)
  {
    SliderView.transitionStartValue.setter(*&v4, v5);
    goto LABEL_3;
  }

  v6 = *(v3 + 40) + *(v3 + 48);
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v4;
  *(v6 + 8) = v5;
  if (v8)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v7 == v4)
    {
      v9 = v5;
    }

    else
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = *(v3 + 40) + *(v3 + 48);
  sub_1003A759C();
  if ((*(v10 + 8) & 1) == 0)
  {
    v11 = *(v3 + 40);
    v12 = *&v11[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v12)
    {
      v13 = *&v11[*(v3 + 48)];
      v14 = v12;
      [v11 bounds];
      [v14 setConstant:v13 * CGRectGetWidth(v16)];
    }
  }

LABEL_3:

  free(v3);
}

uint64_t sub_1003A516C(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1003A51F4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id SliderView.semanticContentAttribute.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SliderView();
  return objc_msgSendSuper2(&v2, "semanticContentAttribute");
}

id SliderView.semanticContentAttribute.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v4, "setSemanticContentAttribute:", a1);
  return [*&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] setSemanticContentAttribute:{objc_msgSend(v1, "semanticContentAttribute")}];
}

uint64_t sub_1003A5430(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1004BCE94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100003ABC(&qword_100610D00);
  __chkstk_darwin(v14 - 8);
  v16 = &v95 - v15;
  v17 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v18 = [objc_allocWithZone(UIStackView) init];
  v19 = UIView.forAutolayout.getter();

  *&v5[v17] = v19;
  v20 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v21 = [objc_allocWithZone(UIView) init];
  v22 = UIView.forAutolayout.getter();

  *&v5[v20] = v22;
  v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v24 = [objc_allocWithZone(UIView) init];
  v25 = UIView.forAutolayout.getter();

  *&v5[v23] = v25;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = 0;
  v26 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *&v5[v26] = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v27 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  *v28 = 0u;
  v28[1] = 0u;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer] = 0;
  v29 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *&v5[v29] = [objc_allocWithZone(UILayoutGuide) init];
  v30 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v31 = objc_opt_self();
  *&v5[v30] = [v31 whiteColor];
  v32 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *&v5[v32] = [v31 systemFillColor];
  v33 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_100609AC0 != -1)
  {
    swift_once();
  }

  v34 = static UIColor.MusicTint.normal;
  *&v5[v33] = static UIColor.MusicTint.normal;
  v35 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *&v5[v35] = Int.seconds.getter(0);
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled] = 1;
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking] = 0;
  v36 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  *v36 = 0;
  v36[8] = 1;
  v37 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  *v37 = 0;
  v37[1] = 0;
  v38 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler];
  *v38 = 0;
  v38[1] = 0;
  v39 = type metadata accessor for SliderView();
  v96.receiver = v5;
  v96.super_class = v39;
  v40 = v34;
  v41 = objc_msgSendSuper2(&v96, "initWithFrame:", a1, a2, a3, a4);
  v42 = SliderView.panRecognizer.getter();
  [v42 _setRequiresSystemGesturesToFail:0];

  v43 = *&v41[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer];
  v44 = v41;
  [v44 addGestureRecognizer:v43];
  v45 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  [v44 addLayoutGuide:*&v44[v45]];
  [v44 setExclusiveTouch:1];
  v46 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v47 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  [*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack]];
  [*&v44[v46] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack]];
  [*&v44[v46] setAxis:0];
  v48 = qword_100609D68;
  v49 = *&v44[v46];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = *&static SliderView.Specs.barHeight;
  *v13 = *&static SliderView.Specs.barHeight * 0.5;
  *(v13 + 8) = 1;
  (*(v11 + 104))(v13, enum case for UIView.Corner.Radius.value(_:), v10);
  sub_1004BC8C4();
  sub_1004BCEA4();
  v51 = sub_1004BCEE4();
  (*(*(v51 - 8) + 56))(v16, 0, 1, v51);
  sub_1004BCEF4();

  v52 = [*&v44[v46] layer];
  [v52 setMasksToBounds:1];

  [v44 addSubview:*&v44[v46]];
  v53 = [*&v44[v47] widthAnchor];
  v54 = [v53 constraintEqualToConstant:0.0];

  v55 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint;
  v56 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = v54;

  v57 = [*&v44[v46] heightAnchor];
  v58 = [v57 constraintEqualToConstant:v50];

  v59 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint;
  v60 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = v58;

  sub_100003ABC(&qword_10060EC20);
  result = swift_allocObject();
  *(result + 16) = xmmword_1004D9C80;
  v62 = *&v44[v55];
  if (v62)
  {
    v63 = result;
    *(result + 32) = v62;
    v64 = *&v44[v59];
    if (v64)
    {
      v95 = objc_opt_self();
      v63[5] = v64;
      v65 = *&v44[v46];
      v66 = v62;
      v67 = v64;
      v68 = [v65 leadingAnchor];
      v69 = [v44 leadingAnchor];

      v70 = [v68 constraintEqualToAnchor:v69];
      v63[6] = v70;
      v71 = [*&v44[v46] trailingAnchor];
      v72 = [v44 trailingAnchor];

      v73 = [v71 constraintEqualToAnchor:v72];
      v63[7] = v73;
      v74 = [*&v44[v46] topAnchor];
      v75 = [v44 topAnchor];

      v76 = [v74 constraintEqualToAnchor:v75];
      v63[8] = v76;
      v77 = [*&v44[v46] bottomAnchor];
      v78 = [v44 bottomAnchor];

      v79 = [v77 constraintEqualToAnchor:v78];
      v63[9] = v79;
      v80 = [*&v44[v46] centerYAnchor];
      v81 = [v44 centerYAnchor];

      v82 = [v80 constraintEqualToAnchor:v81];
      v63[10] = v82;
      v83 = [*&v44[v45] leadingAnchor];
      v84 = [v44 leadingAnchor];

      v85 = [v83 constraintEqualToAnchor:v84];
      v63[11] = v85;
      v86 = [*&v44[v45] trailingAnchor];
      v87 = [v44 trailingAnchor];

      v88 = [v86 constraintEqualToAnchor:v87];
      v63[12] = v88;
      v89 = [*&v44[v45] centerYAnchor];
      v90 = [v44 centerYAnchor];

      v91 = [v89 constraintEqualToAnchor:v90];
      v63[13] = v91;
      v92 = [*&v44[v45] heightAnchor];
      v93 = [v92 constraintEqualToConstant:v50];

      v63[14] = v93;
      sub_100009130(0, qword_10060B7B0);
      isa = sub_1004BC284().super.isa;

      [v95 activateConstraints:isa];

      return v44;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SliderView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  if (!CGRectEqualToRect(v11, *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds]))
  {
    v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      Width = CGRectGetWidth(v12);
      v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
      swift_beginAccess();
      [v3 setConstant:Width * *&v0[v5]];

      [v0 bounds];
      *v1 = v6;
      *(v1 + 1) = v7;
      *(v1 + 2) = v8;
      *(v1 + 3) = v9;
    }

    else
    {
      __break(1u);
    }
  }
}

void SliderView.setValue(_:animated:)(char a1, double a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 <= 1.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v4 != *&v2[v5])
  {
    v6 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v6)
    {
      v7 = v6;
      [v2 bounds];
      [v7 setConstant:v4 * CGRectGetWidth(v16)];

      sub_1003A6E50();
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      *(v8 + 24) = v4;
      if (a1)
      {
        v9 = vabdd_f64(*&v2[v5], v4) * 0.25;
        if (v9 > 0.1)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0.1;
        }

        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = sub_1003A79AC;
        *(v12 + 24) = v8;
        aBlock[4] = sub_1000081FC;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000D6C80;
        aBlock[3] = &unk_1005C5678;
        v13 = _Block_copy(aBlock);
        v14 = v2;

        [v11 animateWithDuration:4 delay:v13 options:0 animations:v10 completion:0.0];

        _Block_release(v13);
      }

      else
      {
        *&v2[v5] = v4;
        [v2 layoutIfNeeded];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003A6228(void *a1)
{
  v3 = [a1 state];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v35 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v35] != 1)
      {
        return;
      }

      v36 = swift_allocObject();
      *(v36 + 16) = v1;
      v1[v35] = 0;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = v1;
      *(v37 + 32) = sub_1003A7ED8;
      *(v37 + 40) = v36;
      v27 = objc_opt_self();
      v55 = sub_1003A8244;
      v56 = v37;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v28 = &unk_1005C5820;
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      v24 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v24] != 1)
      {
        return;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = v1;
      v1[v24] = 0;
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = v1;
      *(v26 + 32) = sub_1003A7EBC;
      *(v26 + 40) = v25;
      v27 = objc_opt_self();
      v55 = sub_1003A7EC8;
      v56 = v26;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v28 = &unk_1005C57A8;
    }

    v53 = sub_1000D6C80;
    v54 = v28;
    v38 = _Block_copy(&aBlock);
    v39 = v1;

    [v27 _animateUsingSpringWithDuration:2 delay:v38 options:0 mass:1.0 stiffness:0.0 damping:2.0 initialVelocity:500.0 animations:40.0 completion:0.0];
    goto LABEL_39;
  }

  if (v3 == 1)
  {
    v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (!v29)
    {
      goto LABEL_54;
    }

    [v29 constant];
    v30 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
    *v30 = v31;
    v30[8] = 0;
    v32 = swift_allocObject();
    *(v32 + 16) = v1;
    v33 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (v1[v33] == 1)
    {
      v34 = v1;

      return;
    }

    v1[v33] = 1;
    v40 = swift_allocObject();
    *(v40 + 16) = 1;
    *(v40 + 24) = v1;
    *(v40 + 32) = sub_1003A7EF8;
    *(v40 + 40) = v32;
    v41 = objc_opt_self();
    v55 = sub_1003A8244;
    v56 = v40;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_1000D6C80;
    v54 = &unk_1005C5898;
    v38 = _Block_copy(&aBlock);
    v42 = v1;

    [v41 _animateUsingSpringWithDuration:2 delay:v38 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:288.0 animations:26.5 completion:0.0];
LABEL_39:

    _Block_release(v38);
    return;
  }

  if (v3 != 2)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (v1[v4] != 1 || (v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth + 8] & 1) != 0)
  {
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  [a1 translationInView:v1];
  v7 = v6;
  v9 = fabs(v8);
  if (qword_100609D88 != -1)
  {
    v50 = v9;
    swift_once();
    v9 = v50;
  }

  if (v9 >= *&static SliderView.Specs.escapeHeight)
  {
    v43 = SliderView.panRecognizer.getter();
    [v43 setState:4];

    return;
  }

  v10 = [v1 effectiveUserInterfaceLayoutDirection];
  v11 = -v7;
  if (v10 != 1)
  {
    v11 = v7;
  }

  v12 = v5 + v11;
  [v1 bounds];
  Width = CGRectGetWidth(v58);
  if (Width >= v12)
  {
    Width = v12;
  }

  if (Width < 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = Width;
  }

  v15 = v1;
  [v1 bounds];
  v16 = v14 / CGRectGetWidth(v59);
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  if (v16 <= 1.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  v57 = 14;
  v18 = sub_1002DD06C();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v18) & 1) == 0)
  {
    v23 = 0;
    v19 = v15;
    goto LABEL_43;
  }

  v19 = v1;
  v20 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  if ((v20[1] & 1) == 0)
  {
    v21 = *v20;
    if (qword_100609D98 != -1)
    {
      swift_once();
    }

    v22 = v21 + *&qword_1006193E8;
    if (v21 - *&qword_1006193E8 <= v21 + *&qword_1006193E8)
    {
      if (v21 - *&qword_1006193E8 <= v17)
      {
        v23 = v17 <= v22;
        if (v17 <= v22)
        {
          v17 = v21;
        }

        goto LABEL_43;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

LABEL_27:
  v23 = 0;
LABEL_43:
  v44 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v17 != *&v19[v44])
  {
    v45 = v17 == 1.0;
    if (v17 == 0.0)
    {
      v45 = 1;
    }

    if (v45 || v23)
    {
      [*&v19[OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator] impactOccurred];
    }
  }

  SliderView.setValue(_:animated:)(0, v17);
  v46 = v15;
  v47 = &v15[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  swift_beginAccess();
  v48 = *v47;
  if (*v47)
  {
    v49 = *&v46[v44];

    v48(1, v49);
    sub_10003CC4C(v48);
  }
}

uint64_t sub_1003A693C(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler);
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {

    v3(v4);
    return sub_10003CC4C(v3);
  }

  return result;
}

uint64_t sub_1003A69B0(uint64_t a1, char a2)
{
  v4 = (a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
    swift_beginAccess();
    v8 = *(a1 + v7);

    v6(a2 & 1, v8);
    return sub_10003CC4C(v6);
  }

  return result;
}

void sub_1003A6AD0(char a1, _BYTE *a2, void (*a3)(id))
{
  v6 = sub_1004BCE94();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100003ABC(&qword_100610D00);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  if ((a1 & 1) == 0)
  {
    if (v13)
    {
      v17 = qword_100609D68;
      v15 = v13;
      if (v17 != -1)
      {
        swift_once();
      }

      v16 = &static SliderView.Specs.barHeight;
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
    return;
  }

  if (!v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  v14 = qword_100609D70;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = &static SliderView.Specs.expandedBarHeight;
LABEL_10:
  v18 = *v16;
  [v15 setConstant:*v16];

  *v9 = v18 * 0.5;
  *(v9 + 8) = 1;
  (*(v7 + 104))(v9, enum case for UIView.Corner.Radius.value(_:), v6);
  sub_1004BC8C4();
  sub_1004BCEA4();
  v19 = sub_1004BCEE4();
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  sub_1004BCEF4();
  v20 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
  if (v20)
  {
    v21 = 0.0;
    if (a1)
    {
      v21 = 1.0;
    }

    v20 = [v20 setAlpha:v21];
  }

  if (a3)
  {
    a3(v20);
  }

  v22 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack];
  v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (a2[v23] == 1)
  {
    v24 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v24 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v25 = &a2[v24];
  swift_beginAccess();
  [v22 setBackgroundColor:*v25];
  v26 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack];
  v27 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v26 setBackgroundColor:*&a2[v27]];
  sub_1003A6E50();
  [a2 layoutIfNeeded];
}

void sub_1003A6E50()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v1;
  [v2 constant];
  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint);
  if (!v5)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v6 = v4;
  v7 = v4 * 0.5;
  [v5 constant];
  v9 = v8;
  [*(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView) frame];
  Width = CGRectGetWidth(v24);
  v11 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v6 * 0.5 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{1.57079633, 4.71238898}];
  v12 = v11;
  v13 = Width - v7;
  if (v9 <= Width - v7)
  {
    [v11 addLineToPoint:{v9, 0.0}];
    [v12 addLineToPoint:{v9, v6}];
  }

  else if (v9 >= Width)
  {
    [v11 addLineToPoint:{Width - v7, 0.0}];
    [v12 addArcWithCenter:1 radius:Width - v7 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{4.71238898, 1.57079633}];
  }

  else
  {
    v14 = v7 - (Width - v9);
    v15 = 1.57079633 - acos(v14 / v7);
    v16 = sqrt(v7 * v7 - v14 * v14);
    v17 = v16 + v16;
    [v12 addLineToPoint:{v13, 0.0}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{4.71238898, (v15 + 4.71238898)}];
    [v12 currentPoint];
    v19 = v18;
    [v12 currentPoint];
    [v12 addLineToPoint:{v19, v17 + v20}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{(1.57079633 - v15), 1.57079633}];
  }

  [v12 closePath];
  v21 = [v3 layer];
  v22 = [v12 CGPath];
  [v21 setShadowPath:v22];
}

Swift::Void __swiftcall SliderView.addGlowIfNeeded()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow;
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow])
  {
    v2 = [objc_allocWithZone(UIView) init];
    v3 = v0;
    v4 = UIView.forAutolayout.getter();

    v5 = [v4 layer];
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 CGColor];

    [v5 setShadowColor:v7];
    v8 = [v4 layer];
    [v8 setShadowOpacity:0.0];

    v9 = [v4 layer];
    [v9 setShadowOffset:{0.0, 0.0}];

    v10 = [v4 layer];
    [v10 setShadowRadius:4.0];

    v11 = *&v3[v1];
    *&v3[v1] = v4;
    v12 = v4;

    [v3 addSubview:v12];
    sub_1003A6E50();
    sub_100009130(0, &qword_100611200);
    if (qword_100609D90 != -1)
    {
      swift_once();
    }

    v13 = qword_1006193E0;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v15 = v12;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v13, 0, sub_1003A7BE4, v14, 0, 0, 0.65, 0.0);
  }
}

Swift::Void __swiftcall SliderView.removeGlowIfNeeded()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow];
  if (v1)
  {
    sub_100009130(0, &qword_100611200);
    v2 = qword_100609D90;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_1006193E0;
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v3;
    v8 = v0;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v4, 0, sub_1003A7C44, v5, sub_1003A7C64, v6, 0.65, 0.0);
  }
}

void sub_1003A7538(void *a1, float a2)
{
  v4 = [a1 layer];
  *&v3 = a2;
  [v4 setShadowOpacity:v3];
}

void sub_1003A759C()
{
  v1 = v0;
  v2 = sub_1002DD06C();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
    swift_beginAccess();
    v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark;
    v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
    if (v3[1])
    {
      [v5 removeFromSuperview];
      v6 = *&v1[v4];
      *&v1[v4] = 0;

      isa = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
    }

    else
    {
      if (v5)
      {
        return;
      }

      v8 = *v3;
      v9 = [objc_allocWithZone(UIView) init];
      v10 = UIView.forAutolayout.getter();

      v11 = [objc_opt_self() blackColor];
      [v10 setBackgroundColor:v11];

      v12 = [v10 layer];
      [v12 setCompositingFilter:kCAFilterDestOut];

      v13 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      v14 = 0.0;
      if (v1[v13])
      {
        v14 = 1.0;
      }

      [v10 setAlpha:v14];
      [v1 addSubview:v10];
      v15 = *&v1[v4];
      *&v1[v4] = v10;
      v16 = v10;

      v17 = [v16 leadingAnchor];
      v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView];
      v19 = [v18 leadingAnchor];
      [v1 bounds];
      v20 = [v17 constraintEqualToAnchor:v19 constant:v8 * CGRectGetWidth(v32)];

      v21 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint;
      v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = v20;

      sub_100003ABC(&qword_10060EC20);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1004C5130;
      v24 = [v16 widthAnchor];
      v25 = [v24 constraintEqualToConstant:2.0];

      *(v23 + 32) = v25;
      v26 = [v16 heightAnchor];
      v27 = [v18 heightAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v23 + 40) = v28;
      v29 = *&v1[v21];
      if (!v29)
      {
        __break(1u);
        return;
      }

      v30 = objc_opt_self();
      *(v23 + 48) = v29;
      sub_100009130(0, qword_10060B7B0);
      v31 = v29;
      isa = sub_1004BC284().super.isa;

      [v30 activateConstraints:isa];
    }
  }
}

uint64_t sub_1003A7974()
{

  return swift_deallocObject();
}

id sub_1003A79AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *&v1[v3] = v2;
  return [v1 layoutIfNeeded];
}

id sub_1003A7A28(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1003A7B94()
{

  return swift_deallocObject();
}

uint64_t sub_1003A7BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003A7C0C()
{

  return swift_deallocObject();
}

void sub_1003A7C64()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
}

double sub_1003A7C7C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1003A7CD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1003A7D28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1003A7D80(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1003A7DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100611260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003A7E54()
{
  result = qword_100610C98;
  if (!qword_100610C98)
  {
    sub_100009130(255, &qword_100610C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610C98);
  }

  return result;
}

uint64_t sub_1003A7F18()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void sub_1003A7F60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v3 = [objc_allocWithZone(UIStackView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v6 = [objc_allocWithZone(UIView) init];
  v7 = UIView.forAutolayout.getter();

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = UIView.forAutolayout.getter();

  *(v1 + v8) = v10;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint) = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *(v1 + v11) = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v12 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds);
  *v13 = 0u;
  v13[1] = 0u;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = 0;
  v14 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *(v1 + v14) = [objc_allocWithZone(UILayoutGuide) init];
  v15 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v16 = objc_opt_self();
  *(v1 + v15) = [v16 whiteColor];
  v17 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v1 + v17) = [v16 systemFillColor];
  v18 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_100609AC0 != -1)
  {
    swift_once();
  }

  *(v1 + v18) = static UIColor.MusicTint.normal;
  v19 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *(v1 + v19) = Int.seconds.getter(0);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking) = 0;
  v20 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler);
  *v22 = 0;
  v22[1] = 0;
  sub_1004BD624();
  __break(1u);
}

unint64_t SymbolButton.CustomView.init(view:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>, int64x2_t a3@<Q0>, int64x2_t a4@<Q1>)
{
  a3.i64[0] = 0;
  *a2 = result;
  a4.i64[0] = result;
  v4 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(a4, a3)).i64[0], 0);
  v5 = vandq_s8(*&UIEdgeInsetsZero.bottom, v4);
  v6 = 0x3FF0000000000000;
  *(a2 + 8) = vandq_s8(*&UIEdgeInsetsZero.top, v4);
  if (!result)
  {
    v6 = 0;
  }

  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  return result;
}

BOOL sub_1003A829C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1004BDBA4();
  v4 = qword_1004E5E08[a1];
  sub_1004BDBB4(v4);
  v5 = sub_1004BDBF4();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_1004E5E08[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1003A837C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004BB7D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1003BDD24(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator), v7 = sub_1004BBCD4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1003BDD24(&qword_10060DED8, &type metadata accessor for Playlist.Collaborator);
      v15 = sub_1004BBD84();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1003A8594(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_1004BDBA4();
    sub_1004BDBB4(a1 & 1);
    v5 = sub_1004BDBF4();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t SymbolButton.updateConfigurationIfNeeded(_:animation:)(uint64_t a1, uint64_t a2, id a3, uint64_t a4, int a5)
{
  v6 = v5;
  v77 = a5;
  v78 = a4;
  v76 = a2;
  v75 = sub_1004B8324();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003ABC(&qword_100610320);
  __chkstk_darwin(v10 - 8);
  v12 = &v70 - v11;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F778(a1, v12, &qword_100610320);
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    v18 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_1003BDC54(&v6[v18], v16, type metadata accessor for SymbolButton.Configuration);
    if (v17(v12, 1, v13) != 1)
    {
      sub_100007214(v12, &qword_100610320);
    }
  }

  else
  {
    sub_1003BDCBC(v12, v16, type metadata accessor for SymbolButton.Configuration);
  }

  v19 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  if (v6[v19])
  {
    sub_1002BE638(*(v16 + 25), *(v16 + 26));
    *(v16 + 200) = xmmword_1004C5080;
    *(v16 + 27) = 0;
    *(v16 + 28) = 0;
  }

  v20 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  v21 = &selRef_values;
  if ((v6[v20] & 1) != 0 || *&v16[*(v13 + 68)] != 0.0)
  {
    [v6 state];
    v22 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
    swift_beginAccess();
    v23 = v6[v22];
    v79 = v13;
    v72 = v19;
    if (v23 & 1) != 0 || (v24 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted, swift_beginAccess(), (v6[v24]) || (v25 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected, swift_beginAccess(), v6[v25] == 1))
    {
      if ((v6[v19] & 1) == 0)
      {
        v70 = v22;
        v71 = a3;
        if (qword_100609DD8 != -1)
        {
          swift_once();
        }

        v27 = static SymbolButton.Background.normal;
        v26 = qword_1006194A8;
        v29 = qword_1006194B0;
        v28 = qword_1006194B8;
        v30 = *(v16 + 25);
        v31 = *(v16 + 26);

        v32 = v26;
        sub_1002BE638(v30, v31);
        *(v16 + 25) = v27;
        *(v16 + 26) = v26;
        *(v16 + 27) = v29;
        *(v16 + 28) = v28;
        a3 = v71;
        v13 = v79;
        v21 = &selRef_values;
        v22 = v70;
      }

      v33 = [v6 v21[444]];
      v34 = [v33 userInterfaceIdiom];

      if (v34 == 6)
      {
        v35 = objc_opt_self();
        v36 = [v35 labelColor];

        *(v16 + 14) = v36;
        v13 = v79;
        v37 = [v35 labelColor];

        *(v16 + 22) = v37;
      }

      *&v16[*(v13 + 68)] = 0x3FF0000000000000;
      v19 = v72;
    }

    if (([v6 state] & 2) != 0 && v6[v22] == 1)
    {
      *&v16[*(v13 + 68)] = 0x3FD0000000000000;
    }

    if ([v6 state])
    {
      v38 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
      swift_beginAccess();
      v39 = v79;
      if (v6[v38] == 1)
      {
        if ((v6[v19] & 1) == 0)
        {
          v71 = a3;
          if (qword_100609DE0 != -1)
          {
            swift_once();
          }

          v40 = static SymbolButton.Background.highlighted;
          v41 = qword_1006194C8;
          v42 = qword_1006194D8;
          v70 = qword_1006194D0;
          v43 = *(v16 + 25);
          v44 = *(v16 + 26);

          v45 = v41;
          sub_1002BE638(v43, v44);
          *(v16 + 25) = v40;
          *(v16 + 26) = v41;
          *(v16 + 27) = v70;
          *(v16 + 28) = v42;
          a3 = v71;
          v39 = v79;
          v21 = &selRef_values;
        }

        v46 = *(v39 + 68);
        *&v16[v46] = 0x3FE0000000000000;
        v47 = [v6 v21[444]];
        v48 = [v47 userInterfaceIdiom];

        v49 = v48 == 6;
        v19 = v72;
        if (v49)
        {
          v50 = objc_opt_self();
          v51 = [v50 labelColor];

          *(v16 + 14) = v51;
          v52 = [v50 labelColor];

          *(v16 + 22) = v52;
          *&v16[v46] = 0x3FF0000000000000;
          if ([v6 showsMenuAsPrimaryAction])
          {
            if ([v6 isContextMenuInteractionEnabled])
            {
              v71 = v52;
              v53 = v51;
              if ((v6[v19] & 1) == 0)
              {
                sub_1002BE638(*(v16 + 25), *(v16 + 26));
                *(v16 + 25) = 0x3FF0000000000000;
                *(v16 + 26) = 0;
                *(v16 + 27) = 0;
                *(v16 + 28) = 0;
              }

              v54 = [v50 blackColor];

              *(v16 + 14) = v54;
              v55 = [v50 blackColor];

              *(v16 + 22) = v55;
            }
          }
        }
      }
    }

    if (([v6 state] & 4) != 0)
    {
      v56 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
      swift_beginAccess();
      v57 = v6[v56];
      v58 = v79;
      if (v57 == 1)
      {
        if ((v6[v19] & 1) == 0)
        {
          sub_1002BE638(*(v16 + 25), *(v16 + 26));
          *(v16 + 25) = 0x3FF0000000000000;
          *(v16 + 26) = 0;
          *(v16 + 27) = 0;
          *(v16 + 28) = 0;
        }

        v59 = *(v58 + 68);
        *&v16[v59] = 0x3FF0000000000000;
        v60 = [v6 v21[444]];
        v61 = [v60 userInterfaceIdiom];

        if (v61 == 6)
        {
          v62 = objc_opt_self();
          v63 = [v62 blackColor];

          *(v16 + 14) = v63;
          v64 = [v62 blackColor];

          *(v16 + 22) = v64;
        }

        else if ([v6 state])
        {
          *&v16[v59] = 0x3FE0000000000000;
        }
      }
    }
  }

  v65 = &v6[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v66 = *v65;
  if (*v65)
  {

    v67 = [v6 v21[444]];
    v68 = v73;
    sub_1004B8304();
    [v6 isEnabled];
    sub_1004B82B4();
    [v6 isSelected];
    sub_1004B82D4();
    [v6 isHighlighted];
    sub_1004B82F4();
    v66(v68, v16);
    sub_10003CC4C(v66);
    (*(v74 + 8))(v68, v75);
  }

  SymbolButton.setConfiguration(_:animation:updates:)(v16, v76, a3, v78, v77 & 1, _swiftEmptyArrayStorage);
  return sub_1003BBA80(v16, type metadata accessor for SymbolButton.Configuration);
}

__n128 static SymbolButton.Material.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v6 = 0uLL;
  v7 = 0;
  v8 = 2;
  v9 = 0uLL;
  a1(&v6);
  v3 = v7;
  v4 = v8;
  result = v9;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = result;
  return result;
}

double static SymbolButton.Symbol.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v9 = 0uLL;
  v13 = 0uLL;
  v17 = 0;
  *&v16[7] = 0;
  *&v10 = 0;
  *(&v10 + 1) = UIFontTextStyleSubheadline;
  *&v11 = 0;
  BYTE8(v11) = 1;
  v12 = xmmword_1004D9C90;
  v14[0] = -1;
  *&v14[16] = 0;
  *&v14[24] = 0x3FF0000000000000;
  *&v14[1] = *v16;
  v15 = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v9);
  v5 = *v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v5;
  *(a2 + 96) = *&v14[16];
  *(a2 + 112) = v15;
  v6 = v10;
  *a2 = v9;
  *(a2 + 16) = v6;
  result = *&v11;
  v8 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v8;
  return result;
}

__n128 static SymbolButton.Title.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v7 = 0uLL;
  v8.n128_u64[0] = UIFontTextStyleSubheadline;
  v8.n128_f64[1] = UIFontWeightSemibold;
  v9 = 0uLL;
  v10 = 0x3FF0000000000000uLL;
  LOBYTE(v11) = 0;
  *(&v11 + 1) = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v7);
  v5 = v10;
  *(a2 + 32) = v9;
  *(a2 + 48) = v5;
  *(a2 + 64) = v11;
  result = v8;
  *a2 = v7;
  *(a2 + 16) = result;
  return result;
}

uint64_t static SymbolButton.Background.with(_:)(void (*a1)(uint64_t *))
{
  v2 = 0x3FF0000000000000;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  a1(&v2);
  return v3;
}

char *SymbolButton.__allocating_init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1003BA128(a1, a2, a3);
  sub_10003CC4C(a2);
  return v8;
}

char *SymbolButton.init(configuration:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1003BA128(a1, a2, a3);
  sub_10003CC4C(a2);
  return v4;
}

void sub_1003A9320(void *a1)
{
  if ([a1 sender])
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      v1 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
      swift_beginAccess();
      v2 = *v1;
      if (*v1)
      {

        v2();

        sub_10003CC4C(v2);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100007214(v6, &qword_100611260);
  }
}

id SymbolButton._monochromaticTreatment.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v2, "_monochromaticTreatment");
}

void SymbolButton._monochromaticTreatment.setter(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v5, "_setMonochromaticTreatment:", a1);
  v3 = sub_1003B1EB4();
  [v3 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];

  v4 = sub_1003B1D3C();
  [v4 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];
}

uint64_t SymbolButton.debugLabel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SymbolButton.debugLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t SymbolButton.configurationProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_100003ABC(&qword_100610320);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  swift_beginAccess();
  v9 = *v8;
  *v8 = a1;
  v8[1] = a2;
  sub_10002F518(a1);
  sub_10003CC4C(v9);
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v7, 0, 0, 0, 1);
  sub_10003CC4C(a1);
  return sub_100007214(v7, &qword_100610320);
}

void (*SymbolButton.configurationProvider.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100610320) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *(v4 + 32) = v6;
  swift_beginAccess();
  return sub_1003A9990;
}

void sub_1003A9990(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    sub_100007214(v4, &qword_100610320);
  }

  free(v4);

  free(v3);
}

uint64_t SymbolButton.configurationState.getter()
{
  v1 = [v0 traitCollection];
  sub_1004B8304();
  [v0 isEnabled];
  sub_1004B82B4();
  [v0 isSelected];
  sub_1004B82D4();
  [v0 isHighlighted];
  return sub_1004B82F4();
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100610320) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003BE5DC;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenSelected.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1003A9CF4(char a1, uint64_t *a2)
{
  v5 = a1 & 1;
  v6 = sub_100003ABC(&qword_100610320);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = *a2;
  result = swift_beginAccess();
  v11 = *(v2 + v9);
  *(v2 + v9) = a1;
  if (v11 != v5)
  {
    v12 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v8, 0, 0, 0, 1);
    return sub_100007214(v8, &qword_100610320);
  }

  return result;
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenSelected.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100610320) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003BE5DC;
}

void sub_1003A9EEC(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = (*a1)[3];
  v4 = *(*a1 + 48);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    v6 = v1[4];
    v7 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
    sub_100007214(v6, &qword_100610320);
  }

  free(v1[4]);

  free(v1);
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenDisabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100610320) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003BE5DC;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHidden.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*SymbolButton.automaticallyAdjustsAlphaWhenHidden.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100610320) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003BE5DC;
}

uint64_t SymbolButton.prefersSolariumTreatment.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.prefersSolariumTreatment.modify(uint64_t *a1))(void ***)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100610320) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003AA32C;
}

uint64_t SymbolButton.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  return sub_1003BDC54(v1 + v3, a1, type metadata accessor for SymbolButton.Configuration);
}

void (*SymbolButton.configuration.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 32) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 32) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 40) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003BDC54(v1 + v8, v7, type metadata accessor for SymbolButton.Configuration);
  return sub_1003AA500;
}

void sub_1003AA500(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1003BDC54(*(*a1 + 40), v3, type metadata accessor for SymbolButton.Configuration);
    SymbolButton.setConfiguration(_:animation:updates:)(v3, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_1003BBA80(v3, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    SymbolButton.setConfiguration(_:animation:updates:)(*(*a1 + 40), 0, 0, 0, 1, _swiftEmptyArrayStorage);
  }

  sub_1003BBA80(v4, type metadata accessor for SymbolButton.Configuration);
  free(v4);
  free(v3);

  free(v2);
}

uint64_t *SymbolButton.Background.normal.unsafeMutableAddressor()
{
  if (qword_100609DD8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.normal;
}

uint64_t *SymbolButton.Background.highlighted.unsafeMutableAddressor()
{
  if (qword_100609DE0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.highlighted;
}

uint64_t SymbolButton.Update.alongside.getter()
{
  v1 = *v0;
  sub_10002F518(*v0);
  return v1;
}

uint64_t SymbolButton.Update.alongside.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10003CC4C(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SymbolButton.Update.completion.getter()
{
  v1 = *(v0 + 32);
  sub_10002F518(v1);
  return v1;
}

uint64_t SymbolButton.Update.completion.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10003CC4C(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SymbolButton.Update.init(alongside:animationOptions:completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void SymbolButton.setConfiguration(_:animation:updates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v171 = a6;
  LODWORD(v170) = a5;
  v164 = a4;
  v162 = *&a3;
  v168 = *&a2;
  ObjectType = swift_getObjectType();
  v174 = sub_100003ABC(&qword_10060A778);
  __chkstk_darwin(v174);
  v9 = &v158 - v8;
  v10 = sub_1004B6D14();
  v172 = *(v10 - 8);
  v173 = v10;
  __chkstk_darwin(v10);
  v12 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v165 = *(v13 - 8);
  __chkstk_darwin(v13);
  v175 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v169 = &v158 - v16;
  __chkstk_darwin(v17);
  v167 = &v158 - v18;
  __chkstk_darwin(v19);
  v21 = &v158 - v20;
  v166 = v22;
  __chkstk_darwin(v23);
  v25 = &v158 - v24;
  v26 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003BDC54(v6 + v26, v25, type metadata accessor for SymbolButton.Configuration);
  v27 = a1;
  v28 = _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v25);
  v29 = 0;
  if (v28)
  {
    goto LABEL_62;
  }

  sub_1003BDC54(v27, v21, type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v159 = v21;
  v160 = v6;
  sub_1003BAF9C(v21, v6 + v26);
  swift_endAccess();
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v161 = sub_1004B6CE4();
  v176 = v30;
  v172[1](v12, v173);
  v31 = *(v13 + 36);
  v32 = *(v174 + 12);
  v174 = v25;
  sub_10000F778(&v25[v31], v9, &qword_100610D00);
  sub_10000F778(v27 + v31, &v9[v32], &qword_100610D00);
  v33 = sub_1004BCEE4();
  v34 = *(*(v33 - 8) + 48);
  v35 = v34(v9, 1, v33);
  v36 = v34(&v9[v32], 1, v33);
  v37 = v27;
  if (v35 == 1)
  {
    if (v36 != 1)
    {
      sub_100007214(&v9[v32], &qword_100610D00);
LABEL_6:
      sub_100007214(v9, &qword_100610D00);
      v38 = v160;
      *(v160 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
      v39 = v176;
      goto LABEL_8;
    }
  }

  else if (v36 == 1)
  {
    goto LABEL_6;
  }

  sub_100007214(v9, &qword_10060A778);
  v39 = v176;
  v38 = v160;
LABEL_8:
  v172 = v13;
  [v38 invalidateIntrinsicContentSize];
  [v38 accessibilityUpdateSymbolButton];
  v40 = *(v37 + 8);
  v177 = v37;
  if (v40)
  {
    v41 = *(v37 + 16);
    v42 = sub_1004BBE24();
    v43 = objc_opt_self();
    v44 = [v43 _systemImageNamed:v42];

    if (!v44)
    {
      v45 = sub_1004BBE24();
      v44 = [v43 imageNamed:v45 inBundle:v41];
    }
  }

  else
  {
    v44 = 0;
  }

  [v38 setLargeContentImage:v44];

  v46 = [v38 window];
  if (!v46 || (v46, (v170 & 1) != 0) || (v47 = v168, v168 <= 0.0))
  {
    v60 = v177;
    if (qword_100609AB8 != -1)
    {
      swift_once();
    }

    v61 = sub_1004B80B4();
    v62 = sub_100007084(v61, qword_100618E98);
    v63 = v175;
    sub_1003BDC54(v60, v175, type metadata accessor for SymbolButton.Configuration);
    v64 = v38;

    v65 = sub_1004B8094();
    v66 = sub_1004BC974();

    v67 = os_log_type_enabled(v65, v66);
    v173 = v62;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *&aBlock = v170;
      *v68 = 136446722;
      v69 = &v64[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      v70 = v69[1];
      if (v70)
      {
        v71 = *v69;
        v72 = v70;
      }

      else
      {
        v73 = v64;
        v74 = [v73 description];
        v71 = sub_1004BBE64();
        v72 = v75;

        v63 = v175;
      }

      v76 = sub_1002C4260(v71, v72, &aBlock);

      *(v68 + 4) = v76;
      *(v68 + 12) = 2082;
      *(v68 + 14) = sub_1002C4260(v161, v39, &aBlock);
      *(v68 + 22) = 2082;
      v77 = SymbolButton.Configuration.description.getter();
      v79 = v78;
      sub_1003BBA80(v63, type metadata accessor for SymbolButton.Configuration);
      v80 = sub_1002C4260(v77, v79, &aBlock);

      *(v68 + 24) = v80;
      _os_log_impl(&_mh_execute_header, v65, v66, "[%{public}s] UpdateID=%{public}s — Applying new configuration=%{public}s", v68, 0x20u);
      swift_arrayDestroy();

      v60 = v177;
    }

    else
    {

      sub_1003BBA80(v63, type metadata accessor for SymbolButton.Configuration);
    }

    sub_1003B3290(v60);
    v81 = *(v171 + 16);
    v25 = v174;
    if (v81)
    {
      v82 = v171 + 72;
      while (1)
      {
        v83 = *(v82 - 40);
        v84 = *(v82 - 8);
        if (v83)
        {
          break;
        }

        sub_10002F518(v84);
        if (v84)
        {
          goto LABEL_35;
        }

LABEL_30:
        v82 += 48;
        sub_10003CC4C(v83);
        if (!--v81)
        {
          goto LABEL_36;
        }
      }

      sub_10002F518(v84);
      sub_10002F518(v83);
      v83(v64);
      if (!v84)
      {
        goto LABEL_30;
      }

LABEL_35:
      v84(v64);
      sub_10003CC4C(v84);
      goto LABEL_30;
    }

LABEL_36:
    v85 = *(v25 + 5);
    v191[4] = *(v25 + 4);
    v191[5] = v85;
    v191[6] = *(v25 + 6);
    v192 = *(v25 + 14);
    v86 = *(v25 + 1);
    v191[0] = *v25;
    v191[1] = v86;
    v87 = *(v25 + 3);
    v191[2] = *(v25 + 2);
    v191[3] = v87;
    v88 = v177;
    v89 = *v177;
    v90 = v177[1];
    v91 = v177[3];
    v195 = v177[2];
    v196 = v91;
    aBlock = v89;
    v194 = v90;
    v92 = v177[4];
    v93 = v177[5];
    v94 = v177[6];
    v200 = *(v177 + 14);
    v198 = v93;
    v199 = v94;
    v197 = v92;
    if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v191, &aBlock))
    {
      goto LABEL_48;
    }

    v95 = *(v25 + 15);
    v96 = *(v25 + 16);
    v97 = *(v25 + 152);
    v180 = *(v25 + 136);
    v181 = v97;
    v182 = *(v25 + 168);
    v98 = v25[184];
    v179[0] = v95;
    v179[1] = v96;
    v183 = v98;
    *v184 = *(v25 + 185);
    v99 = *(v25 + 24);
    v100 = *(v88 + 120);
    v101 = *(v88 + 128);
    v102 = *(v88 + 152);
    v186 = *(v88 + 136);
    v187 = v102;
    v188 = *(v88 + 168);
    v103 = *(v88 + 184);
    *&v184[7] = v99;
    v185[0] = v100;
    v185[1] = v101;
    v189 = v103;
    *v190 = *(v88 + 185);
    *&v190[7] = *(v88 + 192);
    if (sub_1003BAA64(v179, v185))
    {
      goto LABEL_48;
    }

    if (v101)
    {
      if ((((*&v96 != 0) & (v98 ^ 1) ^ v103) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (((*&v96 != 0) & (v98 ^ 1)) != 0)
    {
      goto LABEL_48;
    }

    v104 = *(v172 + 10);
    v105 = *&v25[v104];
    v106 = *(v88 + v104);
    if (v105)
    {
      if (v105 != v106)
      {
        goto LABEL_48;
      }

LABEL_47:
      if ((*&v25[*(v172 + 11) + 16] == 1) == (*(v88 + *(v172 + 11) + 16) == 1))
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (!v106)
    {
      goto LABEL_47;
    }

LABEL_48:
    [v64 setNeedsLayout];
LABEL_49:
    v107 = v64;

    v108 = sub_1004B8094();
    v109 = sub_1004BC974();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v178[0] = swift_slowAlloc();
      *v110 = 136446466;
      v111 = &v107[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      if (v111[1])
      {
        v112 = *v111;
        v113 = v111[1];
      }

      else
      {
        v114 = [v107 description];
        v112 = sub_1004BBE64();
        v113 = v115;
      }

      v116 = sub_1002C4260(v112, v113, v178);

      *(v110 + 4) = v116;
      *(v110 + 12) = 2082;
      v117 = sub_1002C4260(v161, v176, v178);

      *(v110 + 14) = v117;
      _os_log_impl(&_mh_execute_header, v108, v109, "[%{public}s] UpdateID=%{public}s — Updated ✅", v110, 0x16u);
      swift_arrayDestroy();

      v29 = 0;
      v25 = v174;
    }

    else
    {

      v29 = 0;
    }

    goto LABEL_62;
  }

  v48 = v177;
  if (qword_100609AB8 != -1)
  {
    swift_once();
  }

  v49 = sub_1004B80B4();
  sub_100007084(v49, qword_100618E98);
  v50 = v167;
  sub_1003BDC54(v48, v167, type metadata accessor for SymbolButton.Configuration);
  v51 = v38;

  v52 = sub_1004B8094();
  LODWORD(v53) = sub_1004BC974();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    *&aBlock = v175;
    *v54 = 136446722;
    v55 = &v51[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v56 = v55[1];
    v57 = v169;
    if (v56)
    {
      v58 = *v55;
      v59 = v56;
    }

    else
    {
      v118 = v51;
      v119 = [v118 description];
      LODWORD(v173) = v53;
      v53 = v119;
      v58 = sub_1004BBE64();
      v59 = v120;

      v50 = v167;
      LOBYTE(v53) = v173;
    }

    v121 = sub_1002C4260(v58, v59, &aBlock);

    *(v54 + 4) = v121;
    *(v54 + 12) = 2082;
    *(v54 + 14) = sub_1002C4260(v161, v39, &aBlock);
    *(v54 + 22) = 2082;
    v122 = SymbolButton.Configuration.description.getter();
    v123 = v50;
    v125 = v124;
    sub_1003BBA80(v123, type metadata accessor for SymbolButton.Configuration);
    v126 = sub_1002C4260(v122, v125, &aBlock);

    *(v54 + 24) = v126;
    _os_log_impl(&_mh_execute_header, v52, v53, "[%{public}s] UpdateID=%{public}s — Animating to new configuration=%{public}s", v54, 0x20u);
    swift_arrayDestroy();

    v48 = v177;
  }

  else
  {

    sub_1003BBA80(v50, type metadata accessor for SymbolButton.Configuration);
    v57 = v169;
  }

  v127 = *&v51[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v128 = v127 + 1;
  v129 = v159;
  if (__OFADD__(v127, 1))
  {
    __break(1u);
  }

  else
  {
    *&v51[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v128;
    if (v128 != v127)
    {
      sub_1003B3D08();
    }

    v130 = swift_allocObject();
    v170 = v130;
    *(v130 + 16) = _swiftEmptyArrayStorage;
    v173 = v130 + 16;
    v175 = objc_opt_self();
    v172 = v51;
    v25 = v174;
    sub_1003BDC54(v174, v129, type metadata accessor for SymbolButton.Configuration);
    sub_1003BDC54(v48, v57, type metadata accessor for SymbolButton.Configuration);
    v131 = *(v165 + 80);
    v132 = (v131 + 16) & ~v131;
    v165 = v166 + v131;
    v133 = (v166 + v131 + v132) & ~v131;
    v166 += 7;
    v167 = v131;
    v134 = (v166 + v133) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    sub_1003BDCBC(v129, v135 + v132, type metadata accessor for SymbolButton.Configuration);
    sub_1003BDCBC(v57, v135 + v133, type metadata accessor for SymbolButton.Configuration);
    v137 = v172;
    v136 = v173;
    *(v135 + v134) = v172;
    *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = v136;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_1003BB3B8;
    *(v138 + 24) = v135;
    v173 = v135;
    *&v195 = sub_1000081FC;
    *(&v195 + 1) = v138;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v168 = COERCE_DOUBLE(&v194);
    *&v194 = sub_100008224;
    *(&v194 + 1) = &unk_1005C5938;
    v139 = _Block_copy(&aBlock);
    v172 = v137;

    [v175 performWithoutAnimation:v139];
    _Block_release(v139);
    LOBYTE(v139) = swift_isEscapingClosureAtFileLocation();

    if ((v139 & 1) == 0)
    {
      v140 = v162;
      v141 = v167;
      v142 = ~v167;
      v143 = v159;
      sub_1003BDC54(v177, v159, type metadata accessor for SymbolButton.Configuration);
      sub_1003BDC54(v25, v169, type metadata accessor for SymbolButton.Configuration);
      v144 = (v141 + 24) & v142;
      v145 = (v165 + v144) & v142;
      v146 = (v166 + v145) & 0xFFFFFFFFFFFFFFF8;
      v147 = swift_allocObject();
      v148 = v172;
      *(v147 + 16) = v172;
      sub_1003BDCBC(v143, v147 + v144, type metadata accessor for SymbolButton.Configuration);
      sub_1003BDCBC(v169, v147 + v145, type metadata accessor for SymbolButton.Configuration);
      v149 = v170;
      v150 = v171;
      *(v147 + v146) = v170;
      *(v147 + ((v146 + 15) & 0xFFFFFFFFFFFFFFF8)) = v150;
      *&v195 = sub_1003BB81C;
      *(&v195 + 1) = v147;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v194 = sub_1000D6C80;
      *(&v194 + 1) = &unk_1005C5988;
      v151 = _Block_copy(&aBlock);
      v152 = v148;

      v153 = swift_allocObject();
      v153[2] = v149;
      v153[3] = v152;
      v154 = v161;
      v153[4] = v150;
      v153[5] = v154;
      v155 = ObjectType;
      v153[6] = v176;
      v153[7] = v155;
      *&v195 = sub_1003BB918;
      *(&v195 + 1) = v153;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v194 = sub_100398C10;
      *(&v194 + 1) = &unk_1005C59D8;
      v156 = _Block_copy(&aBlock);
      v157 = v152;

      [v175 animateKeyframesWithDuration:v164 delay:v151 options:v156 animations:v47 completion:v140];
      _Block_release(v156);
      _Block_release(v151);

      v29 = sub_1003BB3B8;
LABEL_62:
      sub_1003BBA80(v25, type metadata accessor for SymbolButton.Configuration);
      sub_10003CC4C(v29);
      return;
    }
  }

  __break(1u);
}

void sub_1003ABA70(uint64_t a1, __int128 *a2, char *a3, id **a4)
{
  v4 = a3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 96);
  v174 = *(a1 + 80);
  v175 = v9;
  v176 = *(a1 + 112);
  v10 = *(a1 + 32);
  v170 = *(a1 + 16);
  v171 = v10;
  v11 = *(a1 + 64);
  v172 = *(a1 + 48);
  v173 = v11;
  v169[0] = v7;
  v169[1] = v8;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v177[2] = a2[2];
  v177[3] = v14;
  v177[0] = v12;
  v177[1] = v13;
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v178 = *(a2 + 14);
  v177[5] = v16;
  v177[6] = v17;
  v177[4] = v15;
  if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v169, v177))
  {
    v18 = sub_1003B1D3C();
    v19 = a2[5];
    v166[4] = a2[4];
    v166[5] = v19;
    v167 = a2[6];
    v168 = *(a2 + 14);
    v20 = a2[1];
    v166[0] = *a2;
    v166[1] = v20;
    v21 = a2[3];
    v166[2] = a2[2];
    v166[3] = v21;
    v22 = type metadata accessor for SymbolButton.ImageView();
    v156.receiver = objc_allocWithZone(v22);
    v156.super_class = v22;
    v23 = objc_msgSendSuper2(&v156, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v23 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v23 setContentMode:4];
    sub_1003B5834(v166);
    v24 = [v18 preferredSymbolConfiguration];
    [v23 setPreferredSymbolConfiguration:v24];

    [v18 frame];
    [v23 setFrame:?];

    v25 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
    v26 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
    *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = v23;
    v27 = v23;

    [v27 setAlpha:0.0];
    v28 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v29 = *&a3[v25];
    if (([v29 isDescendantOfView:v28] & 1) == 0)
    {
      [v28 addSubview:v29];
    }

    if (!v8 && *(&v166[0] + 1))
    {
      [a3 setNeedsLayout];
      [a3 layoutIfNeeded];
    }

    v30 = *(&v167 + 1);
    v31 = *&a3[v25];
    v32 = *a4;
    v33 = v31;
    v34 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_1003BF1E0(0, v32[2] + 1, 1, v32);
      *a4 = v32;
    }

    v37 = v32[2];
    v36 = v32[3];
    v4 = a3;
    if (v37 >= v36 >> 1)
    {
      *a4 = sub_1003BF1E0((v36 > 1), v37 + 1, 1, v32);
    }

    v38 = *a4;
    v38[2] = (v37 + 1);
    v39 = &v38[11 * v37];
    v39[4] = v31;
    v39[5] = v30;
    v39[6] = 0;
    v39[7] = 0;
    v39[8] = 0;
    v39[9] = v34;
    *(v39 + 5) = xmmword_1004C5080;
    v39[12] = 0;
    v39[13] = 0;
    *(v39 + 112) = 0;
  }

  v40 = *(a1 + 136);
  v41 = *(a1 + 168);
  v164[2] = *(a1 + 152);
  v164[3] = v41;
  v42 = *(a1 + 184);
  v164[0] = *(a1 + 120);
  v164[1] = v40;
  v43 = *(a2 + 136);
  v44 = *(a2 + 168);
  v165[2] = *(a2 + 152);
  v165[3] = v44;
  v165[4] = *(a2 + 184);
  v45 = *(a2 + 120);
  v165[1] = v43;
  v164[4] = v42;
  v165[0] = v45;
  if (sub_1003BAA64(v164, v165))
  {
    v46 = sub_1003B1EB4();
    v47 = *(a2 + 136);
    v48 = *(a2 + 168);
    v161[2] = *(a2 + 152);
    v162 = v48;
    v163 = *(a2 + 184);
    v161[0] = *(a2 + 120);
    v161[1] = v47;
    v49 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_1003BB998(v161, v160);
    v50 = sub_1003B5A78(v161);
    v51 = [v46 font];
    [v50 setFont:v51];

    v52 = v50;
    v53 = v46;
    [v53 frame];
    [v52 setFrame:?];

    v54 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
    v55 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = v52;
    v56 = v52;

    [v56 setAlpha:0.0];
    v57 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v58 = *&v4[v54];
    if (([v58 isDescendantOfView:v57] & 1) == 0)
    {
      [v57 addSubview:v58];
    }

    v59 = v162;
    v60 = *&v4[v54];
    v61 = *(a1 + 136);
    v62 = *(a1 + 168);
    v159[2] = *(a1 + 152);
    v159[3] = v62;
    v63 = *(a1 + 184);
    v159[0] = *(a1 + 120);
    v159[1] = v61;
    v64 = *(a2 + 136);
    v65 = *(a2 + 168);
    v160[2] = *(a2 + 152);
    v160[3] = v65;
    v160[4] = *(a2 + 184);
    v66 = *(a2 + 120);
    v160[1] = v64;
    v159[4] = v63;
    v160[0] = v66;
    v67 = v60;
    v68 = sub_1003BBB2C(v159, v160);
    v69 = *a4;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v69;
    if ((v70 & 1) == 0)
    {
      v69 = sub_1003BF1E0(0, v69[2] + 1, 1, v69);
      *a4 = v69;
    }

    v72 = v69[2];
    v71 = v69[3];
    v4 = a3;
    if (v72 >= v71 >> 1)
    {
      *a4 = sub_1003BF1E0((v71 > 1), v72 + 1, 1, v69);
    }

    v73 = *a4;
    v73[2] = (v72 + 1);
    v74 = &v73[11 * v72];
    v74[4] = v60;
    v74[5] = v59;
    v74[6] = 0;
    v74[7] = 0;
    v74[8] = 0;
    v74[9] = v53;
    *(v74 + 5) = xmmword_1004C5080;
    v74[12] = 0;
    v74[13] = 0;
    *(v74 + 112) = v68 & 1;
  }

  v75 = type metadata accessor for SymbolButton.Configuration(0);
  v76 = *(v75 + 40);
  v77 = *(a1 + v76);
  v78 = a2 + v76;
  v79 = *(a2 + v76);
  if (v77)
  {
    if (v77 == v79)
    {
      goto LABEL_47;
    }

    if (!v79)
    {
      v153 = v75;
      v80 = 0;
      v151 = 1;
      goto LABEL_26;
    }
  }

  else if (!v79)
  {
    goto LABEL_47;
  }

  v153 = v75;
  v81 = v79;
  v151 = 0;
  v80 = v79;
LABEL_26:
  v82 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v83 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView];
  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = v80;
  v84 = v80;

  v85 = a3;
  if (v80)
  {
    v86 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    if ([v86 isDescendantOfView:v86])
    {
      [v86 insertSubview:v84 aboveSubview:v86];
    }

    else
    {

      if (([v84 isDescendantOfView:v86] & 1) == 0)
      {
        [v86 addSubview:v84];
      }
    }

    v85 = a3;
    sub_1003B21A0();
  }

  v87 = *&v85[v82];
  if (v87)
  {
    [v87 setAlpha:0.0];
  }

  sub_1003B21A0();
  [*&v85[v82] layoutIfNeeded];
  if ((v151 & 1) == 0)
  {
    v89 = v79;
    if (v79)
    {
      v88 = *(v78 + 40);
      if (v77)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v88 = 0;
      if (v77)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    v91 = 0;
    goto LABEL_42;
  }

  v79 = 0;
  v88 = 0;
  if (!v77)
  {
    goto LABEL_41;
  }

LABEL_39:
  v90 = v77;
  v91 = 1;
LABEL_42:
  v92 = *a4;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v92;
  if ((v93 & 1) == 0)
  {
    v92 = sub_1003BF1E0(0, v92[2] + 1, 1, v92);
    *a4 = v92;
  }

  v95 = v92[2];
  v94 = v92[3];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_1003BF1E0((v94 > 1), v95 + 1, 1, v92);
    *a4 = v92;
  }

  v92[2] = (v95 + 1);
  v96 = &v92[11 * v95];
  v96[4] = v79;
  v96[5] = v88;
  v96[6] = 0;
  v96[7] = 0;
  v96[8] = 0;
  v96[9] = v77;
  v96[10] = 0;
  v96[11] = v91;
  v96[12] = 0;
  v96[13] = 0;
  *(v96 + 112) = 0;
  v4 = a3;
  v75 = v153;
LABEL_47:
  v97 = *(v75 + 44);
  v98 = *(a1 + v97 + 16);
  v99 = (a2 + v97);
  v100 = v99[2];
  if (v98 == 1)
  {
    if (v100 == 1)
    {
      return;
    }

    v105 = *v99;
    v104 = v99[1];
    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v106 = type metadata accessor for SymbolButton.BadgeView();
    v107 = objc_allocWithZone(v106);
    v152 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
    v108 = objc_allocWithZone(UIView);
    if (v102)
    {
      v109 = v102;
      sub_1003BBA50(v105, v104, v100);
      v110 = v105;
      v111 = [v108 init];
      v112 = objc_opt_self();
      v113 = [v112 blackColor];
      [v111 setBackgroundColor:v113];

      v114 = [v111 layer];
      [v114 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v111;
      v115 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v115 = v110;
      v115[1] = v104;
      v115[2] = v100;
      v158.receiver = v107;
      v158.super_class = v106;
      v116 = v100;
      v117 = objc_msgSendSuper2(&v158, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v118 = v116;
      if (!v100)
      {
        v118 = [v112 tintColor];
      }

      v119 = v116;
      [v117 setBackgroundColor:v118];

      [v117 setAlpha:*&v104];
      [*&v117[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&v104];
      sub_1003B61B4();
      v120 = v110;
    }

    else
    {
      v150 = v100;
      v121 = [v108 init];
      v122 = v105;
      v123 = v121;
      v124 = objc_opt_self();
      v125 = [v124 blackColor];
      [v123 setBackgroundColor:v125];

      v126 = [v123 layer];
      [v126 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v123;
      v127 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v127 = v122;
      v127[1] = v104;
      v127[2] = v100;
      v157.receiver = v107;
      v157.super_class = v106;
      v128 = v150;
      v117 = objc_msgSendSuper2(&v157, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v129 = v128;
      if (!v100)
      {
        v129 = [v124 tintColor];
      }

      v130 = v128;
      [v117 setBackgroundColor:v129];

      [v117 setAlpha:*&v104];
      [*&v117[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&v104];
      sub_1003B61B4();
      sub_1002C8BF0(v122, v104, v100);
      v120 = v122;
    }

    v131 = *v101;
    *v101 = v117;
    v132 = v117;
    sub_1003B1FBC(v131);

    if (*v101)
    {
      [*v101 setAlpha:0.0];
      if (*v101)
      {
        v133 = *v101;
        v134 = [a3 traitCollection];
        v135 = [v134 userInterfaceIdiom];

        if (v135 == 6)
        {
          v136 = 12.0;
        }

        else
        {
          v136 = 8.0;
        }

        [a3 bounds];
        MaxX = CGRectGetMaxX(v179);
        v180.origin.x = 0.0;
        v180.origin.y = 0.0;
        v180.size.width = v136;
        v180.size.height = v136;
        v138 = MaxX - CGRectGetWidth(v180) + 1.0;
        [a3 bounds];
        [v133 setFrame:{v138, CGRectGetMinY(v181) + -1.0, v136, v136}];
      }
    }

    sub_1002C8BF0(v120, v104, v100);
    v98 = 1;
  }

  else
  {
    if (v100 != 1)
    {
      return;
    }

    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    v103 = v102;
    sub_1003B1FBC(v102);

    v104 = 0;
  }

  v139 = *v101;
  if (*v101)
  {
    v140 = v104;
  }

  else
  {
    v140 = 0;
  }

  if (*v101)
  {
    v141 = v98 != 1;
  }

  else
  {
    v141 = 0;
  }

  v142 = *a4;
  v143 = v139;
  v144 = v102;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v142;
  if ((v145 & 1) == 0)
  {
    v142 = sub_1003BF1E0(0, v142[2] + 1, 1, v142);
    *a4 = v142;
  }

  v147 = v142[2];
  v146 = v142[3];
  if (v147 >= v146 >> 1)
  {
    *a4 = sub_1003BF1E0((v146 > 1), v147 + 1, 1, v142);
  }

  v148 = *a4;
  v148[2] = (v147 + 1);
  v149 = &v148[11 * v147];
  v149[4] = v139;
  v149[5] = v140;
  v149[6] = v141;
  v149[7] = 0;
  v149[8] = 0;
  v149[9] = v102;
  v149[10] = 0;
  v149[11] = (v102 != 0);
  v149[12] = 0;
  v149[13] = 0;
  *(v149 + 112) = 0;
}

uint64_t sub_1003AC7C8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v81 = a5;
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  v74 = objc_opt_self();
  sub_1003BDC54(a2, v15, type metadata accessor for SymbolButton.Configuration);
  sub_1003BDC54(a3, v12, type metadata accessor for SymbolButton.Configuration);
  v16 = *(v10 + 80);
  v17 = (v16 + 24) & ~v16;
  v18 = (v11 + v16 + v17) & ~v16;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  sub_1003BDCBC(v15, v19 + v17, type metadata accessor for SymbolButton.Configuration);
  sub_1003BDCBC(v12, v19 + v18, type metadata accessor for SymbolButton.Configuration);
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v87 = sub_1003BE178;
  v88 = v19;
  aBlock = _NSConcreteStackBlock;
  v84 = 1107296256;
  v85 = sub_1000D6C80;
  v86 = &unk_1005C6378;
  v20 = _Block_copy(&aBlock);
  v21 = a1;
  v82 = a4;

  [v74 addKeyframeWithRelativeStartTime:v20 relativeDuration:0.0 animations:1.0];
  _Block_release(v20);
  v22 = *(v81 + 16);
  if (v22)
  {
    v23 = (v81 + 40);
    do
    {
      v24 = *(v23 - 1);
      if (v24)
      {
        v25 = *(v23 + 3);
        v27 = v23[1];
        v26 = v23[2];
        v28 = *v23;
        v29 = swift_allocObject();
        *(v29 + 2) = v24;
        v29[3] = v28;
        *(v29 + 4) = v21;
        v87 = sub_1003BE258;
        v88 = v29;
        aBlock = _NSConcreteStackBlock;
        v84 = 1107296256;
        v85 = sub_1000D6C80;
        v86 = &unk_1005C63C8;
        v30 = _Block_copy(&aBlock);
        sub_10002F518(v24);
        v31 = v21;
        sub_10002F518(v24);
        sub_10002F518(v25);

        [v74 addKeyframeWithRelativeStartTime:v30 relativeDuration:v27 animations:v26];
        sub_10003CC4C(v25);
        _Block_release(v30);
        sub_10003CC4C(v24);
      }

      v23 += 6;
      --v22;
    }

    while (v22);
  }

  v32 = v82;
  swift_beginAccess();
  v33 = v32[2];
  v34 = *(v33 + 16);
  v69 = v33;

  v68 = v34;
  if (!v34)
  {
  }

  v36 = 0;
  v72 = &v85;
  v37 = v69 + 56;
  while (v36 < *(v69 + 16))
  {
    v48 = *(v37 - 24);
    v47 = *(v37 - 16);
    v49 = *(v37 - 8);
    v50 = *v37;
    v51 = *(v37 + 8);
    v52 = *(v37 + 16);
    v54 = *(v37 + 24);
    v53 = *(v37 + 32);
    v55 = *(v37 + 40);
    v81 = *(v37 + 48);
    v56 = *(v37 + 56);
    v82 = v48;
    if ((v48 == 0) | v49 & 1)
    {
      v57 = 1.0;
    }

    else
    {
      v57 = *&v47;
    }

    v80 = v52;
    v79 = v47;
    v78 = v53;
    v77 = v54;
    v76 = v49;
    v75 = v50;
    v73 = v56;
    if (v52)
    {
      v92 = v53 & 1;
      if (v56)
      {
        v58 = 1.0;
      }

      else
      {
        v58 = 0.5;
      }

      v70 = v51;
      v59 = v47;
      v60 = swift_allocObject();
      *(v60 + 16) = v52;
      *(v60 + 24) = v54;
      *(v60 + 32) = v92;
      *(v60 + 33) = *v91;
      *(v60 + 36) = *&v91[3];
      v61 = v81;
      *(v60 + 40) = v55;
      *(v60 + 48) = v61;
      v87 = sub_1003BE300;
      v88 = v60;
      aBlock = _NSConcreteStackBlock;
      v84 = 1107296256;
      v85 = sub_1000D6C80;
      v86 = &unk_1005C6468;
      v62 = _Block_copy(&aBlock);
      v71 = v36;
      v63 = v62;
      v64 = v50;
      v65 = v70;
      sub_1003BDD6C(v82, v59, v49, v64);
      sub_1003BDD6C(v52, v54, v53, v55);
      sub_1003BDD6C(v52, v54, v53, v55);
      v66 = v52;
      sub_10002F518(v55);

      [v74 addKeyframeWithRelativeStartTime:v63 relativeDuration:0.0 animations:v58];
      v67 = v63;
      v36 = v71;
      _Block_release(v67);

      sub_10003CC4C(v55);
      if (v82)
      {
LABEL_8:
        v38 = v76;
        v90 = v76 & 1;
        if (v73)
        {
          v39 = 1.0;
        }

        else
        {
          v39 = 0.5;
        }

        if (v73)
        {
          v40 = 0.0;
        }

        else
        {
          v40 = 0.5;
        }

        v41 = swift_allocObject();
        v42 = v82;
        v43 = v79;
        *(v41 + 16) = v82;
        *(v41 + 24) = v43;
        *(v41 + 32) = v90;
        *(v41 + 33) = *v89;
        *(v41 + 36) = *&v89[3];
        v44 = v75;
        *(v41 + 40) = v75;
        *(v41 + 48) = v65;
        *(v41 + 56) = v57;
        v87 = sub_1003BE290;
        v88 = v41;
        aBlock = _NSConcreteStackBlock;
        v84 = 1107296256;
        v85 = sub_1000D6C80;
        v86 = &unk_1005C6418;
        v45 = _Block_copy(&aBlock);
        sub_1003BDD6C(v42, v43, v38, v44);
        v46 = v42;
        sub_10002F518(v44);

        [v74 addKeyframeWithRelativeStartTime:v45 relativeDuration:v40 animations:v39];
        _Block_release(v45);

        sub_10003CC4C(v44);
        goto LABEL_15;
      }
    }

    else
    {
      sub_1003BDD6C(v82, v47, v49, v50);
      sub_1003BDD6C(0, v54, v53, v55);
      v65 = v51;
      if (v82)
      {
        goto LABEL_8;
      }
    }

    v82 = 0;
    v43 = v79;
    v38 = v76;
    v44 = v75;
LABEL_15:
    ++v36;
    sub_1003BDDB4(v82, v43, v38, v44);
    result = sub_1003BDDB4(v80, v77, v78, v55);
    v37 += 88;
    if (v68 == v36)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003ACFC8(char *a1, uint64_t a2, char **a3, char *a4)
{
  v124 = a4;
  v125 = a1;
  v7 = v131;
  v8 = sub_100003ABC(&qword_100610D00);
  __chkstk_darwin(v8 - 8);
  v127 = &v122 - v9;
  v129 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v129);
  v11 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SymbolButton.Metrics(0);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 traitCollection];
  sub_1003B2D88(v15);
  sub_1003BBA80(v15, type metadata accessor for SymbolButton.Metrics);
  sub_1003BDC54(a2, v11, type metadata accessor for SymbolButton.Configuration);
  sub_1003B23C0(v11, v16, v15);
  v130 = v15;
  sub_1003B3030(v15);
  v17 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v18 = *(a2 + 248);
  v138[0] = *(a2 + 232);
  v138[1] = v18;
  v138[2] = *(a2 + 264);
  v123 = v17;
  sub_1003B4F64(v138);
  v128 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v19 = *(a2 + 200);
  v20 = *(a2 + 208);
  if (v20 == 1)
  {
    v122 = *(a2 + 216);
    v126 = v19;
    if (qword_100609DA8 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_3;
  }

  v21 = *(a2 + 200);
  v24 = *(a2 + 224);
  v25 = *(a2 + 208);
  v22 = v25;
  v23 = *(a2 + 216);
LABEL_5:
  sub_1003BBA08(v19, v20);
  sub_1003B53E0(v22, v21, v23, v24);

  v26 = *(a3 + 17);
  v27 = *(a3 + 21);
  *(v7 + 31) = *(a3 + 19);
  *(v7 + 32) = v27;
  v28 = *(a3 + 23);
  *(v7 + 29) = *(a3 + 15);
  *(v7 + 30) = v26;
  v29 = *(a2 + 152);
  *(v7 + 35) = *(a2 + 136);
  *(v7 + 36) = v29;
  v30 = *(a2 + 184);
  *(v7 + 37) = *(a2 + 168);
  *(v7 + 38) = v30;
  v31 = *(a2 + 120);
  *(v7 + 33) = v28;
  *(v7 + 34) = v31;
  v32 = sub_1003BAA64(&v136, v137);
  v33 = v125;
  if ((v32 & 1) == 0)
  {
    v34 = sub_1003B1EB4();
    v35 = *(a2 + 136);
    *(v7 + 24) = *(a2 + 120);
    *(v7 + 25) = v35;
    v36 = *(a2 + 168);
    *(v7 + 26) = *(a2 + 152);
    *(v7 + 27) = v36;
    *(v7 + 28) = *(a2 + 184);
    v37 = v135[0];
    v38 = v135[1];
    sub_1003B5C00(v135);

    if (v38)
    {
      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v40 = sub_1004BBE24();
        [v33 setAccessibilityLabel:v40];
      }
    }
  }

  v41 = *(a3 + 5);
  *(v7 + 12) = *(a3 + 4);
  *(v7 + 13) = v41;
  *(v7 + 14) = *(a3 + 6);
  v133[14] = a3[14];
  v42 = *(a3 + 1);
  *(v7 + 8) = *a3;
  *(v7 + 9) = v42;
  v43 = *(a3 + 3);
  *(v7 + 10) = *(a3 + 2);
  *(v7 + 11) = v43;
  v44 = *a2;
  v45 = *(a2 + 16);
  v46 = *(a2 + 48);
  *(v7 + 18) = *(a2 + 32);
  *(v7 + 19) = v46;
  *(v7 + 16) = v44;
  *(v7 + 17) = v45;
  v47 = *(a2 + 64);
  v48 = *(a2 + 80);
  v49 = *(a2 + 96);
  v134[14] = *(a2 + 112);
  *(v7 + 21) = v48;
  *(v7 + 22) = v49;
  *(v7 + 20) = v47;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v133, v134))
  {
    v50 = sub_1003B1D3C();
    v51 = *(a2 + 80);
    *(v7 + 4) = *(a2 + 64);
    *(v7 + 5) = v51;
    *(v7 + 6) = *(a2 + 96);
    v132 = *(a2 + 112);
    v52 = *(a2 + 16);
    v131[0] = *a2;
    v131[1] = v52;
    v53 = *(a2 + 48);
    v131[2] = *(a2 + 32);
    v131[3] = v53;
    sub_1003B5834(v131);
  }

  v54 = *(v129 + 44);
  v55 = (a2 + v54);
  v56 = *(a2 + v54 + 16);
  if (v56 != 1 && *(a3 + v54 + 16) != 1)
  {
    v57 = *&v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    if (v57)
    {
      v58 = *v55;
      a3 = v55[1];
      if (v56)
      {
        v59 = v57;
        v60 = v56;
        v61 = v56;
      }

      else
      {
        v62 = objc_opt_self();
        v63 = v57;
        sub_1003BBA50(v58, a3, 0);
        v61 = [v62 tintColor];
        v60 = 0;
      }

      sub_1003BBA50(v58, a3, v56);
      v64 = v60;
      [v57 setBackgroundColor:v61];

      [v57 setAlpha:*&a3];
      [*&v57[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&a3];
      sub_1003B61B4();
      sub_1002C8BF0(v58, a3, v56);
    }
  }

  v65 = [v123 contentView];
  v66 = *(a2 + 280);
  v20 = *(a2 + 288);
  v7 = *(a2 + 296);
  v67 = v7;
  UIView.border.setter(v66, v20, v7);

  [v33 setAlpha:*(a2 + *(v129 + 68))];
  v68 = v130;
  sub_1003B2D88(v130);
  sub_1003B41D0(v68);
  sub_1003BBA80(v68, type metadata accessor for SymbolButton.Metrics);
  v69 = [v33 superview];
  [v69 layoutIfNeeded];

  [v33 layoutIfNeeded];
  if (v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] == 1)
  {
    v122 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    v70 = v123;
    [v123 _setAllowsGroupFiltering:1];
    v71 = [v70 contentView];
    v72 = [v71 subviews];

    sub_100009130(0, &qword_100611200);
    v73 = sub_1004BC2A4();

    v130 = v73;
    if (v73 >> 62)
    {
      v74 = sub_1004BD6A4();
    }

    else
    {
      v74 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 = v129;
    v128 = &v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
    swift_beginAccess();
    if (v74)
    {
      v75 = 0;
      v76 = v130 & 0xC000000000000001;
      v7 = (v130 & 0xFFFFFFFFFFFFFF8);
      a3 = &selRef_shuffleCommand;
      v126 = v130 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v76)
        {
          v77 = sub_1004BD484();
        }

        else
        {
          if (v75 >= v7[2])
          {
            goto LABEL_55;
          }

          v77 = *(v130 + 8 * v75 + 32);
        }

        v78 = v77;
        v20 = (v75 + 1);
        if (__OFADD__(v75, 1))
        {
          goto LABEL_54;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v78 a3[270]] & 1) == 0)
        {
          v79 = a3;
          v80 = *(v128 + *(a2 + 76));
          if (v80 == 2)
          {
            v81 = v128 + *(a2 + 36);
            v82 = v127;
            sub_10000F778(v81, v127, &qword_100610D00);
            v83 = sub_1004BCEE4();
            LOBYTE(v80) = (*(*(v83 - 8) + 48))(v82, 1, v83) != 1;
            v84 = v82;
            a2 = v129;
            v7 = v126;
            sub_100007214(v84, &qword_100610D00);
          }

          [v78 setClipsToBounds:v80 & 1];
          a3 = v79;
        }

        ++v75;
      }

      while (v20 != v74);
    }

    *(v125 + v122) = 0;
  }

  v85 = v124;
  swift_beginAccess();
  v86 = *(v85 + 2);
  v87 = v86[2];
  v125 = v86;

  v124 = v87;
  if (v87)
  {
    v20 = 0;
    v88 = (v125 + 7);
    do
    {
      if (v20 >= v125[2])
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
LABEL_3:
        swift_beginAccess();
        v21 = *&static SymbolButton.Background.clear;
        v22 = qword_100619418;
        v23 = qword_100619420;
        v24 = qword_100619428;

        v25 = v22;
        v19 = v126;
        goto LABEL_5;
      }

      v94 = *(v88 - 3);
      v93 = *(v88 - 2);
      v95 = *(v88 - 1);
      a3 = *v88;
      v96 = v88[2];
      v97 = v88[3];
      v98 = v88[4];
      v129 = v88[1];
      v130 = v97;
      v99 = v88[5];
      v7 = v88[6];
      v127 = v95;
      v128 = a3;
      v126 = v93;
      if (v94)
      {
        if (a3)
        {
          sub_1003BDD6C(v94, v93, v95, a3);
          sub_1003BDD6C(v96, v130, v98, v99);
          v100 = [v123 contentView];
          v122 = v7;
          v101 = v98;
          v102 = v100;
          [v100 bounds];
          v104 = v103;
          v106 = v105;
          v108 = v107;
          v110 = v109;

          a2 = v99;
          (a3)(v104, v106, v108, v110);
          v98 = v101;
          v7 = v122;
          [v94 setFrame:?];
          if (!v96)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_1003BDD6C(v94, v93, v95, 0);
          a2 = v99;
          sub_1003BDD6C(v96, v130, v98, v99);
          if (!v96)
          {
LABEL_38:
            sub_1003BDDB4(v94, v126, v127, v128);
            v89 = 0;
            v90 = v130;
            v91 = v98;
            goto LABEL_39;
          }
        }
      }

      else
      {
        sub_1003BDD6C(0, v93, v95, a3);
        sub_1003BDD6C(v96, v130, v98, v99);
        a2 = v99;
        if (!v96)
        {
          goto LABEL_38;
        }
      }

      if (!a2)
      {
        sub_1003BDDB4(v94, v126, v127, v128);
        v89 = v96;
        v90 = v130;
        v91 = v98;
        v92 = 0;
        goto LABEL_40;
      }

      v111 = v98;
      v112 = [v123 contentView];
      [v112 bounds];
      v114 = v113;
      v116 = v115;
      v118 = v117;
      v120 = v119;

      (a2)(v114, v116, v118, v120);
      [v96 setFrame:?];
      sub_1003BDDB4(v94, v126, v127, v128);
      v89 = v96;
      v90 = v130;
      v91 = v111;
LABEL_39:
      v92 = a2;
LABEL_40:
      sub_1003BDDB4(v89, v90, v91, v92);
      ++v20;
      v88 += 11;
    }

    while (v124 != v20);
  }
}

uint64_t *SymbolButton.Background.clear.unsafeMutableAddressor()
{
  if (qword_100609DA8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.clear;
}

void sub_1003ADAFC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = *(v8 + 16);
  v40 = v8;

  v39 = v9;
  if (v9)
  {
    v10 = 0;
    v6 = (v40 + 56);
    while (v10 < *(v40 + 16))
    {
      v11 = v6[2];
      if (v11)
      {
        v13 = *(v6 - 1);
        v12 = *v6;
        v15 = v6[3];
        v14 = v6[4];
        v16 = v6[5];
        v41 = *(v6 - 2);
        v42 = *(v6 - 3);
        sub_1003BDD6C(v42, v41, v13, *v6);
        sub_1003BDD6C(v11, v15, v14, v16);
        if ([v11 isDescendantOfView:a3])
        {
          [v11 removeFromSuperview];
        }

        sub_1003BDDB4(v42, v41, v13, v12);
        sub_1003BDDB4(v11, v15, v14, v16);
      }

      ++v10;
      v6 += 11;
      if (v39 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_9:

  v10 = a3;
  v17 = *(a4 + 16);
  if (v17)
  {
    v18 = a4 + 72;
    do
    {
      v19 = *(v18 - 8);
      if (v19)
      {
        v20 = *(v18 - 40);
        sub_10002F518(v20);
        sub_10002F518(v19);
        v19(a3);
        sub_10003CC4C(v20);
        sub_10003CC4C(v19);
      }

      v18 += 48;
      --v17;
    }

    while (v17);
  }

  v21 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v22 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_18;
  }

  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v22;
  v6 = a6;
  if (v22 != v21)
  {
    sub_1003B3D08();
  }

  if (qword_100609AB8 != -1)
  {
    goto LABEL_26;
  }

LABEL_18:
  v23 = sub_1004B80B4();
  sub_100007084(v23, qword_100618E98);
  v24 = v10;

  v25 = sub_1004B8094();
  v26 = sub_1004BC974();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v27 = 136446466;
    v28 = &v24[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v29 = v28[1];
    if (v29)
    {
      v30 = *v28;
      v31 = v29;
    }

    else
    {
      v32 = [v24 description];
      v30 = sub_1004BBE64();
      v31 = v33;
    }

    v34 = sub_1002C4260(v30, v31, &v43);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1002C4260(a5, v6, &v43);
    _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}s] UpdateID=%{public}s — Updated ✅", v27, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t SymbolButton.Configuration.background.getter()
{
  v1 = *(v0 + 200);
  sub_1003BBA08(v1, *(v0 + 208));
  return v1;
}

uint64_t SymbolButton.Configuration.background.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1002BE638(*(v4 + 200), *(v4 + 208));
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;
  *(v4 + 216) = a3;
  *(v4 + 224) = a4;
  return result;
}

uint64_t SymbolButton.Configuration.border.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 296);
  return v1;
}

void SymbolButton.Configuration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;
  *(v3 + 296) = a3;
}

uint64_t SymbolButton.Configuration.badge.getter()
{
  v1 = v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  v2 = *v1;
  sub_1003BBA50(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

void SymbolButton.Configuration.badge.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  sub_1002C8BF0(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
}

uint64_t SymbolButton.Configuration.symbolToTextSpacing.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SymbolButton.Configuration.minimumSize.setter(double a1, double a2)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v6 = (v2 + *(result + 52));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t SymbolButton.Configuration.maximumImageSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v8 = v3 + *(result + 56);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t SymbolButton.Configuration.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v10 = (v4 + *(result + 60));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t SymbolButton.Configuration.accessibility.getter()
{
  v1 = (v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 64));
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 1);
  v5 = v3;
  return v2;
}

void SymbolButton.Configuration.accessibility.setter(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

UIContentSizeCategory sub_1003AE75C()
{
  static SymbolButton.Configuration.Accessibility.forBarButtonItem = 1;
  qword_1006193F8 = UIContentSizeCategoryLarge;
  unk_100619400 = UIContentSizeCategoryExtraLarge;
  byte_100619408 = 1;
  v0 = UIContentSizeCategoryLarge;

  return UIContentSizeCategoryExtraLarge;
}

char *SymbolButton.Configuration.Accessibility.forBarButtonItem.unsafeMutableAddressor()
{
  if (qword_100609DA0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Configuration.Accessibility.forBarButtonItem;
}

uint64_t static SymbolButton.Configuration.Accessibility.forBarButtonItem.getter()
{
  if (qword_100609DA0 != -1)
  {
    swift_once();
  }

  v0 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v1 = unk_100619400;
  v2 = qword_1006193F8;
  v3 = v1;
  return v0;
}

uint64_t SymbolButton.Configuration.alpha.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

void *SymbolButton.Configuration.tint.getter()
{
  v1 = *(v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 72));
  v2 = v1;
  return v1;
}

void SymbolButton.Configuration.tint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolButton.Configuration(0) + 72);

  *(v1 + v3) = a1;
}

uint64_t SymbolButton.Configuration.shouldClipToBounds.setter(char a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

void SymbolButton.Configuration.init()(uint64_t a1@<X8>)
{
  HIBYTE(v30) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_1004D9C90;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 81) = v30;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  v2 = UIFontTextStyleSubheadline;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v2;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 232) = 1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  v4 = v3[9];
  v5 = sub_1004BCEE4();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = a1 + v3[10];
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  v7 = (a1 + v3[11]);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 1;
  *(a1 + v3[12]) = 0x4010000000000000;
  *(a1 + v3[13]) = vdupq_n_s64(0x4040000000000000uLL);
  v8 = a1 + v3[14];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = (a1 + v3[15]);
  v10 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v9 = *&NSDirectionalEdgeInsetsZero.top;
  v9[1] = v10;
  v11 = a1 + v3[16];
  *v11 = 1;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(a1 + v3[17]) = 0x3FF0000000000000;
  *(a1 + v3[18]) = 0;
  *(a1 + v3[19]) = 2;
  v12 = qword_100609DD8;
  v13 = v2;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_1006194B8;
  *(a1 + 200) = static SymbolButton.Background.normal;
  v28 = qword_1006194A8;
  *(a1 + 208) = *&qword_1006194A8;
  *(a1 + 224) = v14;
  v15 = objc_opt_self();

  v16 = v28;
  v17 = [v15 currentTraitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 6)
  {
    if (qword_100609DE8 != -1)
    {
      swift_once();
    }

    v19 = static SymbolButton.Material.xr;
    v20 = qword_1006194E8;
    v21 = qword_1006194F0;
    v29 = qword_1006194F0;
    v22 = byte_1006194F8;
    v24 = qword_100619500;
    v23 = unk_100619508;
    *(a1 + 232) = static SymbolButton.Material.xr;
    *(a1 + 240) = v20;
    *(a1 + 248) = v21;
    *(a1 + 256) = v22;
    *(a1 + 264) = v24;
    *(a1 + 272) = v23;

    v25 = v19;
    v26 = v20;

    v27 = v29;
  }
}

uint64_t *SymbolButton.Material.xr.unsafeMutableAddressor()
{
  if (qword_100609DE8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Material.xr;
}