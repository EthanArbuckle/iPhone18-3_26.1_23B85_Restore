void sub_1005517E8()
{
  v1 = v0;
  v37 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
  [v37 setHidden:0];
  v36 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
  [v36 setHidden:0];
  [*&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel] setHidden:0];
  v2 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView];
  [v2 setHidden:(v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost] & 1) == 0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView] setHidden:0];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v2 topAnchor];
    v6 = [v4 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    [v7 setConstant:20.0];
    [v7 setActive:1];
  }

  v8 = [v2 superview];
  if (v8)
  {
    v9 = v8;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 leadingAnchor];
    v11 = [v9 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:12.0];
    [v12 setActive:1];
  }

  v13 = [v2 superview];
  if (v13)
  {
    v14 = v13;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v2 trailingAnchor];
    v16 = [v14 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:-20.0];
    if (v17)
    {
      [v17 setActive:1];

      LODWORD(v18) = 1132068864;
      [v17 setPriority:v18];
      v14 = v17;
    }
  }

  v19 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalLayoutGuide;
  [v1 addLayoutGuide:*&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalLayoutGuide]];
  v20 = [*&v1[v19] leadingAnchor];
  v21 = [*(*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView] + OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView) contentView];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [*&v1[v19] widthAnchor];
  v25 = [v1 widthAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 multiplier:0.11];

  [v26 setActive:1];
  v27 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView];
  v28 = [v27 leadingAnchor];
  v29 = [*&v1[v19] trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  [v30 setActive:1];
  v31 = [v27 superview];
  if (v31)
  {
    v32 = v31;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [v27 trailingAnchor];
    v34 = [v32 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    [v35 setConstant:-20.0];
    [v35 setActive:1];
  }

  [v27 setCustomSpacing:v37 afterView:4.0];
  [v27 setCustomSpacing:v36 afterView:2.0];

  sub_10054F69C();
}

void sub_100551DE4(double a1, double a2, double a3, double a4)
{
  v9 = v4;
  v50 = *&v4[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
  [v50 setHidden:0];
  v10 = *&v4[OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView];
  [v10 setHidden:(v9[OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost] & 1) == 0];
  [*&v9[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel] setHidden:0];
  [*&v9[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel] setHidden:1];
  [*&v9[OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView] setHidden:1];
  v11 = [v10 superview];
  if (v11)
  {
    v12 = v11;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [v10 topAnchor];
    v14 = [v12 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    [v15 setConstant:8.0];
    [v15 setActive:1];
  }

  v16 = [v10 superview];
  if (v16)
  {
    v17 = v16;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [v10 leadingAnchor];
    v19 = [v17 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    [v20 setConstant:8.0];
    [v20 setActive:1];
  }

  v21 = [v10 superview];
  if (v21)
  {
    v22 = v21;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [v10 trailingAnchor];
    v24 = [v22 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    [v25 setConstant:-6.0];
    if (v25)
    {
      [v25 setActive:1];

      LODWORD(v26) = 1132068864;
      [v25 setPriority:v26];
      v22 = v25;
    }
  }

  v27 = *&v9[OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView];
  v28 = [v27 superview];
  if (v28)
  {
    v29 = v28;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [v27 leadingAnchor];
    v31 = [v29 leadingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    [v32 setConstant:a1];
    [v32 setActive:1];
  }

  v33 = [v27 superview];
  if (v33)
  {
    v34 = v33;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v27 trailingAnchor];
    v36 = [v34 trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    [v37 setConstant:a2];
    [v37 setActive:1];
  }

  v38 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide;
  [v9 addLayoutGuide:*&v9[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide]];
  v39 = [*&v9[v38] topAnchor];
  v40 = [*(*&v9[OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView] + OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView) contentView];
  v41 = [v40 topAnchor];

  v42 = [v39 constraintEqualToAnchor:v41];
  [v42 setActive:1];

  v43 = [*&v9[v38] heightAnchor];
  v44 = [v9 heightAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 multiplier:0.18];

  [v45 setActive:1];
  v46 = [v27 topAnchor];
  v47 = [*&v9[v38] bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  [v48 setActive:1];
  [v27 setCustomSpacing:v50 afterView:a4];
  sub_10054EDFC();
  v49 = sub_100028DA0(0, 1, 0.0);
}

void sub_1005524C4()
{
  v1 = v0;
  v43 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
  [v43 setHidden:0];
  v42 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
  [v42 setHidden:0];
  [*&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel] setHidden:0];
  v2 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView];
  [v2 setHidden:(v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost] & 1) == 0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView] setHidden:0];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v2 topAnchor];
    v6 = [v4 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    [v7 setConstant:16.0];
    [v7 setActive:1];
  }

  v8 = [v2 superview];
  if (v8)
  {
    v9 = v8;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 leadingAnchor];
    v11 = [v9 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:12.0];
    [v12 setActive:1];
  }

  v13 = [v2 superview];
  if (v13)
  {
    v14 = v13;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v2 trailingAnchor];
    v16 = [v14 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:-16.0];
    if (v17)
    {
      [v17 setActive:1];

      LODWORD(v18) = 1132068864;
      [v17 setPriority:v18];
      v14 = v17;
    }
  }

  v19 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalLayoutGuide;
  [v1 addLayoutGuide:*&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalLayoutGuide]];
  v20 = [*&v1[v19] leadingAnchor];
  v21 = [*(*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView] + OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView) contentView];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [*&v1[v19] widthAnchor];
  v25 = [v1 widthAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 multiplier:0.11];

  [v26 setActive:1];
  v27 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView];
  v28 = [v27 leadingAnchor];
  v29 = [*&v1[v19] trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  [v30 setActive:1];
  v31 = [v27 superview];
  if (v31)
  {
    v32 = v31;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [v27 trailingAnchor];
    v34 = [v32 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    [v35 setConstant:-16.0];
    [v35 setActive:1];
  }

  v36 = [v27 superview];
  if (v36)
  {
    v37 = v36;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [v27 topAnchor];
    v39 = [v37 topAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    [v40 setConstant:20.0];
    if (v40)
    {
      [v40 setActive:1];

      LODWORD(v41) = 1132068864;
      [v40 setPriority:v41];
      v37 = v40;
    }
  }

  [v27 setCustomSpacing:v43 afterView:4.0];
  [v27 setCustomSpacing:v42 afterView:2.0];

  sub_10054F69C();
}

void sub_100552B7C()
{
  v1 = v0;
  v37 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
  [v37 setHidden:0];
  v36 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
  [v36 setHidden:0];
  [*&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel] setHidden:0];
  v2 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView];
  [v2 setHidden:(v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost] & 1) == 0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView] setHidden:0];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v2 topAnchor];
    v6 = [v4 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    [v7 setConstant:40.0];
    [v7 setActive:1];
  }

  v8 = [v2 superview];
  if (v8)
  {
    v9 = v8;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 leadingAnchor];
    v11 = [v9 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:40.0];
    [v12 setActive:1];
  }

  v13 = [v2 superview];
  if (v13)
  {
    v14 = v13;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v2 trailingAnchor];
    v16 = [v14 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:-40.0];
    if (v17)
    {
      [v17 setActive:1];

      LODWORD(v18) = 1132068864;
      [v17 setPriority:v18];
      v14 = v17;
    }
  }

  v19 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalLayoutGuide;
  [v1 addLayoutGuide:*&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalLayoutGuide]];
  v20 = [*&v1[v19] leadingAnchor];
  v21 = [*(*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView] + OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView) contentView];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [*&v1[v19] widthAnchor];
  v25 = [v1 widthAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 multiplier:0.11];

  [v26 setActive:1];
  v27 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView];
  v28 = [v27 leadingAnchor];
  v29 = [*&v1[v19] trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  [v30 setActive:1];
  v31 = [v27 superview];
  if (v31)
  {
    v32 = v31;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [v27 trailingAnchor];
    v34 = [v32 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    [v35 setConstant:-40.0];
    [v35 setActive:1];
  }

  [v27 setCustomSpacing:v37 afterView:8.0];
  [v27 setCustomSpacing:v36 afterView:2.0];

  sub_10054F69C();
}

void sub_100553178()
{
  v1 = v0;
  v43 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_titleLabel];
  [v43 setHidden:0];
  v2 = *&v0[OBJC_IVAR____TtC7Journal17ConfettiAssetView_hostingIndicatorView];
  [v2 setHidden:(v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_isHost] & 1) == 0];
  v42 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_dateLabel];
  [v42 setHidden:0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_placeNameLabel] setHidden:0];
  [*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_mirroredImageView] setHidden:1];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v2 topAnchor];
    v6 = [v4 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    [v7 setConstant:8.0];
    [v7 setActive:1];
  }

  v8 = [v2 superview];
  if (v8)
  {
    v9 = v8;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 leadingAnchor];
    v11 = [v9 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:8.0];
    [v12 setActive:1];
  }

  v13 = [v2 superview];
  if (v13)
  {
    v14 = v13;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v2 trailingAnchor];
    v16 = [v14 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:-6.0];
    if (v17)
    {
      [v17 setActive:1];

      LODWORD(v18) = 1132068864;
      [v17 setPriority:v18];
      v14 = v17;
    }
  }

  v19 = *&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_labelStackView];
  v20 = [v19 superview];
  if (v20)
  {
    v21 = v20;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [v19 leadingAnchor];
    v23 = [v21 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    [v24 setConstant:20.0];
    [v24 setActive:1];
  }

  v25 = [v19 superview];
  if (v25)
  {
    v26 = v25;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v19 trailingAnchor];
    v28 = [v26 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    [v29 setConstant:-20.0];
    [v29 setActive:1];
  }

  v30 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide;
  [v1 addLayoutGuide:*&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide]];
  v31 = [*&v1[v30] topAnchor];
  v32 = [*(*&v1[OBJC_IVAR____TtC7Journal17ConfettiAssetView_maskedBlurView] + OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView) contentView];
  v33 = [v32 topAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [*&v1[v30] heightAnchor];
  v36 = [v1 heightAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 multiplier:0.18];

  [v37 setActive:1];
  v38 = [v19 topAnchor];
  v39 = [*&v1[v30] bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  [v40 setActive:1];
  [v19 setCustomSpacing:v43 afterView:10.0];
  [v19 setCustomSpacing:v42 afterView:4.0];
  sub_10054EDFC();
  v41 = sub_100028DA0(0, 1, 0.0);
}

id sub_10055384C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_interTextSpacingSmall] = 0x4000000000000000;
  *&v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_interTextSpacingMedium] = 0x4010000000000000;
  *&v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_interTextSpacingLarge] = 0x4024000000000000;
  *&v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelMarginSmall] = 0x4018000000000000;
  *&v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelMarginMedium] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelMarginLarge] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelMarginXLarge] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelMarginXXLarge] = 0x4034000000000000;
  *&v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelBottomMarginXXLarge] = 0x403A000000000000;
  *&v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelMarginXXXLarge] = 0x4044000000000000;
  *&v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalBlurMarginPercentage] = 0x3FC70A3D70A3D70ALL;
  *&v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalBlurMarginPercentage] = 0x3FBC28F5C28F5C29;
  v9 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_largeSemiBoldFont;
  *&v4[v9] = [objc_opt_self() systemFontOfSize:48.0 weight:UIFontWeightSemibold];
  v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_previousSizeType] = 8;
  v10 = &v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_previousSizeClass];
  *v10 = 0;
  v10[8] = 1;
  v4[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_isImageMirrored] = 0;
  v11 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalLayoutGuide;
  *&v4[v11] = [objc_allocWithZone(UILayoutGuide) init];
  v12 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide;
  *&v4[v12] = [objc_allocWithZone(UILayoutGuide) init];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ConfettiAssetGridView();
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100553A74(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_interTextSpacingSmall] = 0x4000000000000000;
  *&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_interTextSpacingMedium] = 0x4010000000000000;
  *&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_interTextSpacingLarge] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelMarginSmall] = 0x4018000000000000;
  *&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelMarginMedium] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelMarginLarge] = 0x4028000000000000;
  *&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelMarginXLarge] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelMarginXXLarge] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelBottomMarginXXLarge] = 0x403A000000000000;
  *&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_labelMarginXXXLarge] = 0x4044000000000000;
  *&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalBlurMarginPercentage] = 0x3FC70A3D70A3D70ALL;
  *&v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalBlurMarginPercentage] = 0x3FBC28F5C28F5C29;
  v3 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_largeSemiBoldFont;
  *&v1[v3] = [objc_opt_self() systemFontOfSize:48.0 weight:UIFontWeightSemibold];
  v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_previousSizeType] = 8;
  v4 = &v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_previousSizeClass];
  *v4 = 0;
  v4[8] = 1;
  v1[OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_isImageMirrored] = 0;
  v5 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_horizontalLayoutGuide;
  *&v1[v5] = [objc_allocWithZone(UILayoutGuide) init];
  v6 = OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide;
  *&v1[v6] = [objc_allocWithZone(UILayoutGuide) init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ConfettiAssetGridView();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

void sub_100553C9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal21ConfettiAssetGridView_verticalLayoutGuide);
}

id sub_100553CEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfettiAssetGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConfettiAssetGridView()
{
  result = qword_100AE9150;
  if (!qword_100AE9150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100554094(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for SettingsKey();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a3, v5, v7);
  v10 = a1;
  SettingsKey.rawValue.getter();
  (*(v6 + 8))(v9, v5);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 integerForKey:v11];

  return v12;
}

void sub_1005541DC(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = type metadata accessor for SettingsKey();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *a4, v7, v9);
  v12 = a1;
  SettingsKey.rawValue.getter();
  (*(v8 + 8))(v11, v7);
  v13 = String._bridgeToObjectiveC()();

  [v12 setInteger:a3 forKey:v13];
}

void sub_100554398(char a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v19 = a3;
  v20 = a4;
  v6 = v4;
  v8 = type metadata accessor for SettingsKey();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 104);
  v13(v12, *a2, v8, v10);
  SettingsKey.rawValue.getter();
  v14 = *(v9 + 8);
  v14(v12, v8);
  v15 = String._bridgeToObjectiveC()();
  v16 = v6;

  [v6 setBool:a1 & 1 forKey:v15];

  if ((a1 & 1) == 0)
  {
    (v13)(v12, *v19, v8);
    SettingsKey.rawValue.getter();
    v14(v12, v8);
    v17 = String._bridgeToObjectiveC()();

    [v16 removeObjectForKey:v17];

    (v13)(v12, *v20, v8);
    SettingsKey.rawValue.getter();
    v14(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    [v16 removeObjectForKey:v18];
  }
}

unint64_t sub_1005547F4()
{
  result = qword_100AE91F8;
  if (!qword_100AE91F8)
  {
    sub_1000F2A18(&qword_100AE9200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE91F8);
  }

  return result;
}

uint64_t sub_100554858@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100554B98(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1005548C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10095D830[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100554948()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10095D830[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100554994@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100554C10(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1005549EC()
{
  result = qword_100AE9208;
  if (!qword_100AE9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9208);
  }

  return result;
}

uint64_t sub_100554A40()
{
  v0 = type metadata accessor for SettingsKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026188();
  v4 = static NSUserDefaults.shared.getter();
  (*(v1 + 104))(v3, enum case for SettingsKey.addEntryTitle(_:), v0);
  SettingsKey.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 integerForKey:v5];

  if (v6 == 2)
  {
    return 2;
  }

  else
  {
    return v6 == 1;
  }
}

uint64_t sub_100554B98(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 5:
      return 2;
    case 15:
      return 3;
  }

  return 5;
}

uint64_t sub_100554C10(uint64_t result)
{
  if (result > 4)
  {
    if (result == 15)
    {
      return 3;
    }

    if (result == 5)
    {
      return 2;
    }

    return 4;
  }

  if (result > 1)
  {
    return 4;
  }

  return result;
}

void sub_100554C50(char a1)
{
  v2 = type metadata accessor for SettingsKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026188();
  v6 = static NSUserDefaults.shared.getter();
  v7 = String._bridgeToObjectiveC()();
  [v6 removeObjectForKey:v7];

  v8 = String._bridgeToObjectiveC()();
  [v6 removeObjectForKey:v8];

  v9 = qword_10095D850[a1];
  (*(v3 + 104))(v5, enum case for SettingsKey.lockJournalState(_:), v2);
  SettingsKey.rawValue.getter();
  (*(v3 + 8))(v5, v2);
  v10 = String._bridgeToObjectiveC()();

  [v6 setInteger:v9 forKey:v10];
}

void sub_100554E20()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = 0;
  if (v7 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v8 = *(v3 + 104);
  v8(v5, enum case for SettingsKey.journalingScheduleData(_:), v2);
  SettingsKey.rawValue.getter();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = String._bridgeToObjectiveC()();

  [v1 setObject:isa forKey:v10];
  swift_unknownObjectRelease();

  v8(v5, enum case for SettingsKey.journalingScheduleDataLegacy(_:), v2);
  SettingsKey.rawValue.getter();
  v9(v5, v2);
  v11 = String._bridgeToObjectiveC()();

  [v1 removeObjectForKey:v11];
}

uint64_t getEnumTagSinglePayload for SettingsManager.LockJournalState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SettingsManager.LockJournalState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100555160(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100555174(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_100555198()
{
  result = qword_100AE9210;
  if (!qword_100AE9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9210);
  }

  return result;
}

char *sub_100555284(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal33FullScreenRouteCollectionViewCell_routeAsset] = 0;
  v9 = OBJC_IVAR____TtC7Journal33FullScreenRouteCollectionViewCell_routeView;
  type metadata accessor for RouteAssetView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28.receiver = v4;
  v28.super_class = type metadata accessor for FullScreenRouteCollectionViewCell();
  v10 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();
  __asm { FMOV            V0.2D, #1.0 }

  v27 = _Q0;
  v16 = v10;
  static UIView.Invalidating.subscript.setter();
  v17 = OBJC_IVAR____TtC7Journal33FullScreenRouteCollectionViewCell_routeView;
  v18 = *&v16[OBJC_IVAR____TtC7Journal33FullScreenRouteCollectionViewCell_routeView];
  v19 = v18[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v18[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v20 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v18[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v21 = v18;
LABEL_8:
    sub_100213060();
    v18[v20] = 1;

    goto LABEL_9;
  }

  if (v19 > 3 && v19 > 6)
  {

    goto LABEL_9;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v23 = v18;

  if ((v22 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v24 = *&v16[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView];

  [v24 addSubview:{*&v16[v17], v27}];
  v25 = *&v16[v17];
  sub_100013178(0.0);

  return v16;
}

void sub_100555578()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal33FullScreenRouteCollectionViewCell_routeView);
}

id sub_1005555B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenRouteCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenRouteCollectionViewCell()
{
  result = qword_100AE9248;
  if (!qword_100AE9248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1005556E0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal33FullScreenRouteCollectionViewCell_routeView);
  v2 = v1;
  return v1;
}

void *sub_100555714()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal33FullScreenRouteCollectionViewCell_routeAsset);
  v2 = v1;
  return v1;
}

id sub_100555748()
{
  v1 = OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController____lazy_storage___indexingAlertView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController____lazy_storage___indexingAlertView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController____lazy_storage___indexingAlertView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for IndexingAlertView()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100555A38(uint64_t a1, void *a2, uint64_t a3)
{
  v65 = a1;
  v66 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v5 = *(v66 - 8);
  __chkstk_darwin(v66);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICollectionLayoutListConfiguration();
  v67 = *(v12 - 8);
  v68 = v12;
  __chkstk_darwin(v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&unk_100AE92B0);
  v61 = *(v15 - 8);
  v62 = v15;
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  swift_beginAccess();
  v63 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v19 = *(Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource), v64 = a2, v20 = Strong, v21 = v19, v20, !v19))
  {
    v22 = 0;
    v23 = 6;
    goto LABEL_7;
  }

  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  v22 = v69;
  if (v70 <= 6)
  {
    if (v70 == 2)
    {
      v43 = objc_opt_self();
      v44 = [v43 fractionalWidthDimension:1.0];
      v45 = [v43 estimatedDimension:50.0];
      v46 = objc_opt_self();
      v47 = [v46 sizeWithWidthDimension:v44 heightDimension:v45];

      v48 = [objc_opt_self() itemWithLayoutSize:v47];
      v49 = [v43 fractionalWidthDimension:1.0];
      v50 = [v43 estimatedDimension:50.0];
      v51 = [v46 sizeWithWidthDimension:v49 heightDimension:v50];

      v52 = objc_opt_self();
      sub_1000F24EC(&unk_100AD4780);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100941D50;
      *(v53 + 32) = v48;
      sub_1000065A8(0, &unk_100AD8A80);
      v54 = v48;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v56 = [v52 horizontalGroupWithLayoutSize:v51 subitems:isa];

      v25 = [objc_opt_self() sectionWithGroup:v56];
      [v25 contentInsets];
      [v25 setContentInsets:?];
      [v25 contentInsets];
      [v25 setContentInsets:?];

      sub_10007258C(v22, 2uLL);
      return v25;
    }

    v23 = v70;
LABEL_7:
    (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.Appearance.sidebar(_:), v8);
    UICollectionLayoutListConfiguration.init(appearance:)();
    (*(v5 + 104))(v7, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v66);
    UICollectionLayoutListConfiguration.headerMode.setter();
    v24 = [objc_opt_self() clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
    UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
    sub_1000065A8(0, &unk_100AD4440);
    v25 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    [v25 contentInsets];
    [v25 setContentInsets:?];
    [v25 contentInsets];
    [v25 setContentInsets:?];
    if (v23 <= 2)
    {
      if (v23)
      {
        sub_10007258C(v22, 1uLL);
      }

      else
      {
        sub_10007258C(v22, 0);
      }
    }

    else
    {
      if (v23 > 4)
      {
        v27 = v67;
        v26 = v68;
        if (v23 == 5)
        {
          v28 = v68;
          sub_10007258C(v22, 5uLL);
          v26 = v28;
        }

        goto LABEL_18;
      }

      if (v23 == 3)
      {
        sub_10007258C(v22, 3uLL);
      }

      else
      {
        sub_10007258C(v22, 4uLL);
        [v25 contentInsets];
        [v25 setContentInsets:?];
      }
    }

    v27 = v67;
    v26 = v68;
LABEL_18:
    (*(v27 + 8))(v14, v26);
    return v25;
  }

  v30 = v70;
  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31 && (v32 = *(v31 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource), v33 = v31, v34 = v32, v33, v32))
  {
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v35 = v62;
    v36 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v61 + 8))(v17, v35);
    v37 = *(v36 + 16);
    v38 = v37 != 0;
    v39 = 0;
    if (v37)
    {
      v40 = (v36 + 40);
      v41 = v65;
      while (1)
      {
        v42 = *v40;
        v40 += 2;
        if (v42 > 5)
        {
          break;
        }

        v38 = v37 != ++v39;
        if (v37 == v39)
        {
          v39 = 0;
          break;
        }
      }
    }

    else
    {
      v41 = v65;
    }
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v41 = v65;
  }

  swift_beginAccess();
  v57 = swift_unknownObjectWeakLoadStrong();
  if (v57)
  {
    v58 = v57;
    v59 = v39 == v41 && v30 > 5 && v38;
    v25 = sub_10007294C(v59, v64);

    v60 = v25;
    [v60 contentInsets];
    [v60 setContentInsets:?];
    sub_10007258C(v22, v30);
  }

  else
  {
    sub_10007258C(v22, v30);
    return 0;
  }

  return v25;
}

uint64_t sub_10055627C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = type metadata accessor for UIListSeparatorConfiguration();
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = IndexPath.row.getter();
  v13 = *(v5 + 104);
  if (v12)
  {
    v13(v10, enum case for UIListSeparatorConfiguration.Visibility.visible(_:), v4);
    v14 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
  }

  else
  {
    v14 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    v13(v10, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v4);
  }

  UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  v13(v8, v14, v4);
  UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
  return UIListSeparatorConfiguration.topSeparatorInsets.setter();
}

uint64_t sub_100556438(uint64_t a1)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static UIListContentConfiguration.cell()();
  v6 = type metadata accessor for UICellConfigurationState();
  v30[3] = v6;
  v30[4] = &protocol witness table for UICellConfigurationState;
  v7 = sub_10001A770(v30);
  (*(*(v6 - 8) + 16))(v7, a1, v6);
  UIListContentConfiguration.updated(for:)();
  (*(v3 + 8))(v5, v2);
  sub_10000BA7C(v30);
  v8 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:-1];
  v9 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
  v9(v30, 0);
  v10 = [objc_opt_self() secondaryLabelColor];
  v11 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.tintColor.setter();
  v11(v30, 0);
  v12 = [objc_opt_self() defaultMetrics];
  v13 = UICellConfigurationState.traitCollection.getter();
  [v12 scaledValueForValue:v13 compatibleWithTraitCollection:25.0];
  v15 = v14;

  v16 = UIListContentConfiguration.imageProperties.modify();
  v17 = UIListContentConfiguration.ImageProperties.reservedLayoutSize.modify();
  *v18 = v15;
  v17(v29, 0);
  v16(v30, 0);
  UIListContentConfiguration.imageToTextPadding.setter();
  v19 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v20 + 8) = 0;
  v19(v30, 0);
  v22 = UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.modify();
  if (*v21)
  {
    *v21 &= ~1uLL;
  }

  v22(v30, 0);
  v23 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v24 + 16) = 0x4030000000000000;
  v23(v30, 0);
  v25 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *v26 = 0x4030000000000000;
  return v25(v30, 0);
}

uint64_t sub_100556798()
{
  v0 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  UICollectionViewCell.configurationUpdateHandler.setter();
  static UIBackgroundConfiguration.clear()();
  v3 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return UICollectionViewCell.backgroundConfiguration.setter();
}

uint64_t sub_100556874(uint64_t a1, uint64_t a2)
{
  v28[0] = a2;
  v28[1] = a1;
  v2 = type metadata accessor for UIListContentConfiguration.TextProperties.TextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.cell()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIListContentConfiguration.text.setter();
  v12 = [objc_opt_self() preferredFontForTextStyle:{UIFontTextStyleBody, v28[0]}];
  v13 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v13(v29, 0);
  v14 = [objc_opt_self() secondaryLabelColor];
  v15 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v15(v29, 0);
  v16 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v16(v29, 0);
  (*(v3 + 104))(v5, enum case for UIListContentConfiguration.TextProperties.TextAlignment.natural(_:), v2);
  v17 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.alignment.setter();
  v17(v29, 0);
  v18 = UICellConfigurationState.traitCollection.getter();
  v19 = [v18 userInterfaceIdiom];

  if (!v19)
  {
    v20 = UIListContentConfiguration.directionalLayoutMargins.modify();
    *(v21 + 8) = 0;
    v20(v29, 0);
    v22 = UIListContentConfiguration.directionalLayoutMargins.modify();
    *v23 = 0;
    v22(v29, 0);
    v25 = UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.modify();
    if ((*v24 & 3) != 0)
    {
      *v24 &= 0xFFFFFFFFFFFFFFFCLL;
    }

    v25(v29, 0);
  }

  v29[3] = v8;
  v29[4] = &protocol witness table for UIListContentConfiguration;
  v26 = sub_10001A770(v29);
  (*(v9 + 16))(v26, v11, v8);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v9 + 8))(v11, v8);
}

id sub_100556CCC(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v9 = *a3;
  v8 = a3[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  UICollectionViewCell.configurationUpdateHandler.setter();
  static UIBackgroundConfiguration.clear()();
  v11 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  UICollectionViewCell.backgroundConfiguration.setter();
  v12 = UIAccessibilityTraitButton;
  v13 = [a1 accessibilityTraits];
  if ((v12 & ~v13) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  return [a1 setAccessibilityTraits:v14 | v13];
}

uint64_t sub_100556E1C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UIListContentConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100556438(a2);
  if (qword_100AD0988 != -1)
  {
    swift_once();
  }

  v7 = qword_100B30E60;
  UIListContentConfiguration.image.setter();

  UIListContentConfiguration.text.setter();
  v11[3] = v3;
  v11[4] = &protocol witness table for UIListContentConfiguration;
  v8 = sub_10001A770(v11);
  (*(v4 + 16))(v8, v6, v3);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v4 + 8))(v6, v3);
}

id sub_100556F9C(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v10;

  UICollectionViewCell.configurationUpdateHandler.setter();
  static UIBackgroundConfiguration.clear()();
  v12 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  UICollectionViewCell.backgroundConfiguration.setter();
  v13 = UIAccessibilityTraitButton;
  v14 = [a1 accessibilityTraits];
  if ((v13 & ~v14) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return [a1 setAccessibilityTraits:v15 | v14];
}

uint64_t sub_1005570FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100556438(a2);
  sub_1002F7D4C(a3);
  UIListContentConfiguration.image.setter();
  sub_1002F654C(a3, a4, a5);
  UIListContentConfiguration.text.setter();
  v16[3] = v9;
  v16[4] = &protocol witness table for UIListContentConfiguration;
  v13 = sub_10001A770(v16);
  (*(v10 + 16))(v13, v12, v9);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v10 + 8))(v12, v9);
}

id sub_100557248(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  LOBYTE(a3) = *a3;
  *(swift_allocObject() + 16) = a3;
  UICollectionViewCell.configurationUpdateHandler.setter();
  static UIBackgroundConfiguration.clear()();
  v8 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  UICollectionViewCell.backgroundConfiguration.setter();
  v9 = UIAccessibilityTraitButton;
  v10 = [a1 accessibilityTraits];
  if ((v9 & ~v10) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return [a1 setAccessibilityTraits:v11 | v10];
}

uint64_t sub_100557384(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100556438(a2);
  sub_10032C5FC(a3);
  UIListContentConfiguration.image.setter();
  FilterOption.description.getter(a3);
  UIListContentConfiguration.text.setter();
  v12[3] = v5;
  v12[4] = &protocol witness table for UIListContentConfiguration;
  v9 = sub_10001A770(v12);
  (*(v6 + 16))(v9, v8, v5);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005574B8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-v6];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchSuggestionItemMap;
    v10 = result;
    swift_beginAccess();
    v11 = *&v10[v9];

    if (*(v11 + 16) && (v12 = sub_100361E08(a3), (v13 & 1) != 0))
    {
      sub_100086C04(*(v11 + 56) + 40 * v12, v20);

      sub_100364784(v20, v21);
      sub_100086C04(v21, v20);
      v14 = swift_allocObject();
      sub_100364784(v20, v14 + 16);
      UICollectionViewCell.configurationUpdateHandler.setter();
      static UIBackgroundConfiguration.clear()();
      v15 = type metadata accessor for UIBackgroundConfiguration();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
      UICollectionViewCell.backgroundConfiguration.setter();
      v16 = UIAccessibilityTraitButton;
      v17 = [a1 accessibilityTraits];
      if ((v16 & ~v17) != 0)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      [a1 setAccessibilityTraits:v18 | v17];
      return sub_10000BA7C(v21);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1005576C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100556438(a2);
  v9 = a3[3];
  v10 = a3[4];
  sub_10000CA14(a3, v9);
  v11 = *(v10 + 32);
  v11(v15, v9, v10);
  sub_100517E30();
  sub_1001A911C(v15);
  UIListContentConfiguration.image.setter();
  v11(v16, v9, v10);

  sub_1001A911C(v16);
  UIListContentConfiguration.text.setter();
  v14[3] = v5;
  v14[4] = &protocol witness table for UIListContentConfiguration;
  v12 = sub_10001A770(v14);
  (*(v6 + 16))(v12, v8, v5);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10055788C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35[1] = a5;
  v35[2] = a8;
  v35[3] = a4;
  *&v36 = a7;
  v37 = a2;
  v38 = a1;
  v9 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v9 - 8);
  v11 = v35 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v16 - 8);
  v18 = v35 - v17;
  v19 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005623CC(a3, v22, type metadata accessor for JournalEntryCollectionViewController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        LOBYTE(v39) = *v22;
        sub_1000065A8(0, &qword_100AD4D40);
        return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      }

      (*(v13 + 32))(v15, v22, v12);
      (*(v13 + 16))(v11, v15, v12);
      (*(v13 + 56))(v11, 0, 1, v12);
      sub_1000065A8(0, &qword_100ADE560);
      v33 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_100004F84(v11, &qword_100AD1420);
      (*(v13 + 8))(v15, v12);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_100014184(v22, type metadata accessor for JournalEntryCollectionViewController.Item);
LABEL_11:
        if (qword_100ACFBF8 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_10000617C(v26, qword_100B2F718);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Unhandled cell type", v29, 2u);
        }

        v39 = xmmword_100943C10;
        sub_1000065A8(0, &qword_100ADE560);
        return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      }

      v31 = *v22;
      *&v39 = v31;
      type metadata accessor for JournalEntryCollectionViewCell();
      sub_1000065A8(0, &qword_100AD43F0);
      v32 = v31;
      v33 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    }

    return v33;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      goto LABEL_11;
    }

    sub_1005623CC(a3, v18, type metadata accessor for JournalEntryCollectionViewController.Item);
    (*(v20 + 56))(v18, 0, 1, v19);
    sub_1000065A8(0, &qword_100AD4D40);
    v33 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_100004F84(v18, &unk_100AD7CB0);
    return v33;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v24 = *(v22 + 1);
    *&v39 = *v22;
    *(&v39 + 1) = v24;
    sub_1000065A8(0, &qword_100AD4D40);
    v25 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    v34 = *(v22 + 2);
    v36 = *v22;
    v39 = v36;
    v40 = v34;
    sub_1000065A8(0, &qword_100ADE560);
    v25 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  return v25;
}

void sub_100557E8C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    UICollectionViewCell.configurationUpdateHandler.setter();

    [a1 setIsAccessibilityElement:0];
    v4 = [a1 contentView];
    [v4 setIsAccessibilityElement:1];

    v5 = [a1 contentView];
    v6 = UIAccessibilityTraitHeader;
    v7 = [v5 accessibilityTraits];
    if ((v6 & ~v7) != 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    [v5 setAccessibilityTraits:v8 | v7];
  }
}

uint64_t sub_100557FD0(unint64_t a1, uint64_t a2)
{
  v79 = a1;
  v75 = sub_1000F24EC(&unk_100AE92B0);
  v76 = *(v75 - 8);
  v3 = __chkstk_darwin(v75);
  v73 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v74 = &v68 - v5;
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v68 - v12;
  __chkstk_darwin(v11);
  v15 = &v68 - v14;
  v16 = UICellConfigurationState.traitCollection.getter();
  v17 = sub_10002E3AC();

  sub_10023DEC0(v17, v83);
  static UIListContentConfiguration.prominentInsetGroupedHeader()();
  v18 = type metadata accessor for UICellConfigurationState();
  v81 = v18;
  v82 = &protocol witness table for UICellConfigurationState;
  v19 = sub_10001A770(v80);
  (*(*(v18 - 8) + 16))(v19, a2, v18);
  UIListContentConfiguration.updated(for:)();
  v20 = *(v7 + 8);
  v78 = v7 + 8;
  v77 = v20;
  v20(v10, v6);
  sub_10000BA7C(v80);
  v21 = UICellConfigurationState.traitCollection.getter();
  v22 = [v21 userInterfaceIdiom];

  v23 = &UIFontTextStyleTitle2;
  if (v22 != 5)
  {
    v23 = &UIFontTextStyleTitle3;
  }

  v24 = *v23;
  sub_100047788(v24, &off_100A5A460, 0);

  sub_100047D60(&unk_100A5A480);
  v25 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v25(v80, 0);
  v26 = [objc_opt_self() labelColor];
  v27 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v27(v80, 0);
  v28 = v7;
  NSDirectionalEdgeInsets.init(_:)();
  UIListContentConfiguration.directionalLayoutMargins.setter();
  UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.setter();
  (*(v7 + 32))(v15, v13, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v31 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
    v32 = *(Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
    if (v32)
    {
      v33 = v32;
      v34 = v74;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v35 = v75;
      v36 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      v37 = *(v76 + 8);
      v76 += 8;
      v74 = v37;
      (v37)(v34, v35);
      v38 = 0;
      v39 = 0;
      v40 = *(v36 + 16);
      v41 = v36 + 40;
      while (2)
      {
        v42 = &v40[-v38];
        if (v40 != v38)
        {
          v43 = *(v36 + 16);
          v44 = v43 >= v38;
          v45 = v43 - v38;
          if (v44)
          {
            v46 = v45;
          }

          else
          {
            v46 = 0;
          }

          v47 = (v41 + 16 * v38++);
          while (1)
          {
            if (!v46)
            {
              __break(1u);
              goto LABEL_28;
            }

            v48 = *v47;
            if (*v47 >= 6)
            {
              v49 = *&v30[v31];
              if (v49)
              {
                break;
              }
            }

            --v46;
            v47 += 2;
            ++v38;
            if (!--v42)
            {
              goto LABEL_18;
            }
          }

          v72 = v28;
          v50 = *(v47 - 1);
          v69 = v40;
          v68 = v41;
          sub_100071864(v50, v48);
          v51 = v49;
          v70 = v39;
          v52 = v73;
          dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

          v80[0] = v50;
          v80[1] = v48;
          v71 = v6;
          v53 = v75;
          v54 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
          v55 = v52;
          v56 = v70;
          v57 = v53;
          v6 = v71;
          (v74)(v55, v57);
          v58 = v50;
          v28 = v72;
          sub_100071878(v58, v48);
          v59 = *(v54 + 16);

          v41 = v68;
          v40 = v69;
          v60 = __OFADD__(v56, v59);
          v39 = v56 + v59;
          if (!v60)
          {
            continue;
          }

          __break(1u);
        }

        break;
      }

LABEL_18:
    }

    else
    {
      v39 = 0;
    }

    v38 = v79;
    if (qword_100AD04F8 != -1)
    {
LABEL_28:
      swift_once();
    }

    sub_1000F24EC(&unk_100AD5B10);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100940080;
    *(v61 + 56) = &type metadata for Int;
    *(v61 + 64) = &protocol witness table for Int;
    *(v61 + 32) = v39;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v38 = v79;
  }

  UIListContentConfiguration.text.setter();
  v81 = v6;
  v82 = &protocol witness table for UIListContentConfiguration;
  v62 = sub_10001A770(v80);
  (*(v28 + 16))(v62, v15, v6);
  UICollectionViewCell.contentConfiguration.setter();
  v63 = [v38 contentView];
  UIListContentConfiguration.text.getter();
  if (v64)
  {
    v65 = String._bridgeToObjectiveC()();
  }

  else
  {
    v65 = 0;
  }

  v66 = v77;
  [v63 setAccessibilityLabel:v65];

  return v66(v15, v6);
}

void sub_100558708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1000F24EC(&unk_100ADFBE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for UICellAccessory.Placement();
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin(v11);
  v59 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v60 = *(v13 - 8);
  __chkstk_darwin(v13);
  v58 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UIButton.Configuration.Size();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UIButton.Configuration();
  v54 = *(v18 - 8);
  v55 = v18;
  v19 = __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v48 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = *&Strong[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource];
    if (v26)
    {
      v51 = v13;
      v52 = v10;
      v27 = v26;
      IndexPath.section.getter();
      dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();
      v28 = v62;
      if (v62 == 6)
      {
      }

      else
      {
        v50 = v27;
        v29 = a1;
        v30 = v61;
        v31 = swift_allocObject();
        v31[2] = v30;
        v31[3] = v28;
        v31[4] = a6;
        sub_100071864(v30, v28);
        UICollectionViewCell.configurationUpdateHandler.setter();
        if (v28 == 5)
        {
          v49 = v29;
          sub_1000F24EC(&unk_100AD4410);
          type metadata accessor for UICellAccessory();
          *(swift_allocObject() + 16) = xmmword_100940080;
          static UIButton.Configuration.borderless()();
          if (qword_100AD0760 != -1)
          {
            swift_once();
          }

          UIButton.Configuration.title.setter();
          (*(v53 + 104))(v17, enum case for UIButton.Configuration.Size.medium(_:), v15);
          UIButton.Configuration.buttonSize.setter();
          sub_1000065A8(0, &qword_100ADFC10);
          v33 = v54;
          v32 = v55;
          (*(v54 + 16))(v21, v23, v55);
          sub_1000065A8(0, &qword_100AD4420);
          swift_allocObject();
          swift_unknownObjectWeakInit();
          UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          v34 = UIButton.init(configuration:primaryAction:)();
          v35 = sub_1000F24EC(&qword_100AD4E00);
          v36 = v59;
          v37 = &v59[*(v35 + 48)];
          v38 = enum case for UICellAccessory.DisplayedState.always(_:);
          v39 = type metadata accessor for UICellAccessory.DisplayedState();
          (*(*(v39 - 8) + 104))(v36, v38, v39);
          *v37 = variable initialization expression of RecentSearch.tokens;
          v37[1] = 0;
          (*(v56 + 104))(v36, enum case for UICellAccessory.Placement.trailing(_:), v57);
          v40 = type metadata accessor for UICellAccessory.LayoutDimension();
          (*(*(v40 - 8) + 56))(v52, 1, 1, v40);
          v41 = v34;
          v42 = v58;
          UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
          static UICellAccessory.customView(configuration:)();

          (*(v60 + 8))(v42, v51);
          (*(v33 + 8))(v23, v32);
          v29 = v49;
          UICollectionViewListCell.accessories.setter();
        }

        else
        {
          UICollectionViewListCell.accessories.setter();
          sub_10007258C(v30, v28);
        }

        [v29 setIsAccessibilityElement:0];
        v43 = [v29 contentView];
        [v43 setIsAccessibilityElement:1];

        v44 = [v29 contentView];
        v45 = UIAccessibilityTraitHeader;
        v46 = [v44 accessibilityTraits];
        if ((v45 & ~v46) != 0)
        {
          v47 = v45;
        }

        else
        {
          v47 = 0;
        }

        [v44 setAccessibilityTraits:v47 | v46];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100558E8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v43[1] = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v43[0] = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v43 - v16;
  __chkstk_darwin(v15);
  v19 = v43 - v18;
  v20 = UICellConfigurationState.traitCollection.getter();
  v21 = sub_10002E3AC();

  sub_10023DEC0(v21, v49);
  static UIListContentConfiguration.prominentInsetGroupedHeader()();
  v22 = type metadata accessor for UICellConfigurationState();
  v47 = v22;
  v48 = &protocol witness table for UICellConfigurationState;
  v23 = sub_10001A770(v46);
  (*(*(v22 - 8) + 16))(v23, a2, v22);
  UIListContentConfiguration.updated(for:)();
  v44 = *(v11 + 8);
  v44(v14, v10);
  sub_10000BA7C(v46);
  v24 = UICellConfigurationState.traitCollection.getter();
  v25 = [v24 userInterfaceIdiom];

  v26 = &UIFontTextStyleTitle2;
  if (v25 != 5)
  {
    v26 = &UIFontTextStyleTitle3;
  }

  v27 = *v26;
  sub_100047788(v27, &off_100A5A498, 0);

  sub_100047D60(&unk_100A5A4B8);
  v28 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v28(v46, 0);
  v29 = [objc_opt_self() labelColor];
  v30 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v30(v46, 0);
  NSDirectionalEdgeInsets.init(_:)();
  UIListContentConfiguration.directionalLayoutMargins.setter();
  UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.setter();
  (*(v11 + 32))(v19, v17, v10);
  switch(a4)
  {
    case 5:
      if (qword_100AD0758 != -1)
      {
        swift_once();
      }

      UIListContentConfiguration.text.setter();
      v31 = UIListContentConfiguration.directionalLayoutMargins.modify();
      *(v32 + 24) = 0;
      v31(v46, 0);
      break;
    case 4:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
LABEL_10:
      UIListContentConfiguration.text.setter();
      break;
    case 3:
      if (qword_100AD0750 != -1)
      {
        swift_once();
      }

      goto LABEL_10;
    default:
      if (qword_100ACFBF8 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000617C(v33, qword_100B2F718);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Unhandled header type", v36, 2u);
      }

      break;
  }

  v47 = v10;
  v48 = &protocol witness table for UIListContentConfiguration;
  v37 = sub_10001A770(v46);
  (*(v11 + 16))(v37, v19, v10);
  v38 = v45;
  UICollectionViewCell.contentConfiguration.setter();
  v39 = [v38 contentView];
  UIListContentConfiguration.text.getter();
  if (v40)
  {
    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v41 = 0;
  }

  [v39 setAccessibilityLabel:v41];

  return (v44)(v19, v10);
}

uint64_t sub_1005594C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v5 == a3)
  {
    goto LABEL_12;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_13;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v8 == a3)
  {
LABEL_12:

    goto LABEL_13;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  sub_1000065A8(0, &qword_100AD4D40);
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

uint64_t sub_1005595D4(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v97 = &v89 - v4;
  v5 = sub_1000F24EC(&unk_100AE92D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v89 - v6;
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  v99 = v8;
  v100 = v9;
  __chkstk_darwin(v8);
  v98 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&unk_100AE92B0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v96 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v89 - v19;
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  __chkstk_darwin(v24);
  v101 = &v89 - v25;
  sub_100070594(a1);
  result = (*(v16 + 48))(a1, 1, v15);
  if (result == 1)
  {
    v27 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
    v28 = *&v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource];
    if (v28)
    {
      v95 = v1;
      v29 = v28;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v30 = v101;
      (*(v16 + 32))(v101, v23, v15);
      v31 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      v32 = *(v31 + 16);
      if (!v32)
      {
LABEL_7:
        (*(v16 + 8))(v30, v15);
      }

      v33 = 0;
      v34 = 40;
      while (*(v31 + v34) < 6uLL)
      {
        ++v33;
        v34 += 16;
        if (v32 == v33)
        {
          goto LABEL_7;
        }
      }

      v94 = v27;

      v35 = *&v95[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
      if (v35)
      {
        v93 = _UICollectionViewListLayoutElementKindSectionHeader;
        sub_1000F24EC(&unk_100AD8A90);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_100940050;
        *(v36 + 32) = v33;
        *(v36 + 40) = 0;
        v37 = v93;
        v38 = v35;
        IndexPath.init(arrayLiteral:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v12 + 8))(v14, v11);
        v40 = [v38 supplementaryViewForElementKind:v37 atIndexPath:isa];

        if (v40)
        {
          objc_opt_self();
          v41 = swift_dynamicCastObjCClass();
          v42 = v94;
          if (v41)
          {
            v43 = v41;
            v44 = v40;
            UICollectionViewCell.contentConfiguration.getter();
            if (!v103)
            {

              (*(v16 + 8))(v101, v15);
              sub_100004F84(v102, &unk_100ADFC00);
              (*(v100 + 56))(v7, 1, 1, v99);
              return sub_100004F84(v7, &unk_100AE92D0);
            }

            sub_1000F24EC(&qword_100AD3268);
            v45 = v99;
            v46 = swift_dynamicCast();
            v47 = v100;
            (*(v100 + 56))(v7, v46 ^ 1u, 1, v45);
            v48 = (*(v47 + 48))(v7, 1, v45);
            v49 = v101;
            if (v48 == 1)
            {

              (*(v16 + 8))(v49, v15);
              return sub_100004F84(v7, &unk_100AE92D0);
            }

            v92 = v43;
            v93 = v44;
            (*(v47 + 32))(v98, v7, v45);
            v50 = v95;
            v51 = *&v95[v42];
            if (v51)
            {
              v52 = v51;
              dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

              v53 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
              v45 = v16 + 8;
              v54 = *(v16 + 8);
              v54(v20, v15);
              v55 = 0;
              v56 = 0;
              v57 = *(v53 + 16);
              v58 = v53 + 40;
              while (2)
              {
                v59 = v57 - v55;
                if (v57 != v55)
                {
                  v60 = *(v53 + 16);
                  v61 = v60 >= v55;
                  v62 = v60 - v55;
                  if (v61)
                  {
                    v63 = v62;
                  }

                  else
                  {
                    v63 = 0;
                  }

                  v64 = (v58 + 16 * v55++);
                  while (1)
                  {
                    if (!v63)
                    {
                      __break(1u);
                      goto LABEL_38;
                    }

                    v65 = *v64;
                    if (*v64 >= 6)
                    {
                      v66 = *&v50[v94];
                      if (v66)
                      {
                        break;
                      }
                    }

                    --v63;
                    v64 += 2;
                    ++v55;
                    if (!--v59)
                    {
                      goto LABEL_31;
                    }
                  }

                  v67 = *(v64 - 1);
                  v68 = *v64;
                  v89 = v58;
                  v90 = v57;
                  sub_100071864(v67, v68);
                  v69 = v66;
                  v91 = v54;
                  v70 = v96;
                  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

                  v102[0] = v67;
                  v102[1] = v65;
                  v71 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
                  v72 = v70;
                  v54 = v91;
                  v91(v72, v15);
                  v73 = v67;
                  v50 = v95;
                  sub_100071878(v73, v65);
                  v74 = *(v71 + 16);

                  v58 = v89;
                  v57 = v90;
                  v75 = __OFADD__(v56, v74);
                  v56 += v74;
                  if (!v75)
                  {
                    continue;
                  }

                  __break(1u);
                }

                break;
              }

LABEL_31:

              v45 = v99;
            }

            else
            {
              v56 = 0;
            }

            if (qword_100AD04F8 != -1)
            {
LABEL_38:
              swift_once();
            }

            sub_1000F24EC(&unk_100AD5B10);
            v76 = swift_allocObject();
            *(v76 + 16) = xmmword_100940080;
            *(v76 + 56) = &type metadata for Int;
            *(v76 + 64) = &protocol witness table for Int;
            *(v76 + 32) = v56;
            static String.localizedStringWithFormat(_:_:)();

            v77 = v98;
            UIListContentConfiguration.text.setter();
            v103 = v45;
            v104 = &protocol witness table for UIListContentConfiguration;
            v78 = sub_10001A770(v102);
            v79 = v100;
            (*(v100 + 16))(v78, v77, v45);
            v80 = v92;
            UICollectionViewCell.contentConfiguration.setter();
            v81 = [v80 contentView];
            v82 = v93;

            v83 = String._bridgeToObjectiveC()();

            [v81 setAccessibilityLabel:v83];

            UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v80);
            v84 = type metadata accessor for TaskPriority();
            v85 = v97;
            (*(*(v84 - 8) + 56))(v97, 1, 1, v84);
            type metadata accessor for MainActor();
            v86 = v95;
            v87 = static MainActor.shared.getter();
            v88 = swift_allocObject();
            v88[2] = v87;
            v88[3] = &protocol witness table for MainActor;
            v88[4] = v86;
            sub_1003E9628(0, 0, v85, &unk_10095DA60, v88);

            (*(v79 + 8))(v98, v45);
          }

          else
          {
          }
        }
      }

      return (*(v16 + 8))(v101, v15);
    }
  }

  return result;
}

void sub_100559F84()
{
  v0 = type metadata accessor for JournalFeatureFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v1 + 104))(v3, enum case for JournalFeatureFlags.search(_:), v0);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate;
      v7 = Strong;
      v8 = swift_unknownObjectWeakLoadStrong();
      v9 = *(v6 + 8);

      if (v8)
      {
        ObjectType = swift_getObjectType();
        (*(v9 + 48))(ObjectType, v9);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {

      v12 = [objc_opt_self() standardUserDefaults];
      v13 = String._bridgeToObjectiveC()();
      [v12 setValue:0 forKey:v13];
    }

    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      sub_1006D49B8();
    }
  }
}

uint64_t sub_10055A250(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v4 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_currentSearchText);
  *v15 = a2;
  v15[1] = a3;

  v16 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v16 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = *(v4 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentEntryIds);
  }

  else
  {
    v17 = 0;
  }

  if ((sub_1007ECD60(*(v4 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentFilterOptions), a1) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!*(v4 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentEntryIds))
  {

    if (!v17)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (!v17)
  {
LABEL_13:

    if (!(*(a1 + 16) | v17))
    {
      return result;
    }

    goto LABEL_14;
  }

  v19 = sub_1007ECDBC(v18, v17);

  if ((v19 & 1) == 0)
  {
LABEL_14:
    sub_1000065A8(0, &qword_100AD6210);
    v21 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = DebugData.init(name:);
    v23[4] = 0;
    v23[5] = v17;
    v23[6] = a1;
    v23[7] = ObjectType;
    aBlock[4] = sub_100562504;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A732F0;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100562464(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v26 + 8))(v11, v9);
    return (*(v12 + 8))(v14, v25);
  }
}

uint64_t sub_10055A678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v12 = *(v24 - 8);
  __chkstk_darwin(v24);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v4 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_currentSearchText);
  *v15 = a2;
  v15[1] = a3;

  v16 = *(v4 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentFilterOptions);
  if ((sub_1007ECD60(v16, v16) & 1) == 0 || !*(v4 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentEntryIds))
  {

    goto LABEL_8;
  }

  v18 = sub_1007ECDBC(v17, a1);

  if ((v18 & 1) == 0)
  {
LABEL_8:
    sub_1000065A8(0, &qword_100AD6210);
    v20 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = DebugData.init(name:);
    v22[4] = 0;
    v22[5] = a1;
    v22[6] = v16;
    v22[7] = ObjectType;
    aBlock[4] = sub_100562460;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A732A0;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100562464(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v25 + 8))(v11, v9);
    return (*(v12 + 8))(v14, v24);
  }
}

void sub_10055AA58()
{
  v1 = (v0 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_currentSearchText);
  *v1 = 0;
  v1[1] = 0;

  *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentEntryIds) = 0;

  *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentFilterOptions) = &off_100A572F0;

  sub_1006D49B8();
  UIViewController.contentUnavailableConfiguration.setter();

  sub_10055AEAC();
}

void sub_10055AAEC(char a1)
{
  if (a1)
  {

    sub_10055AB4C();
  }

  else
  {
    UIViewController.contentUnavailableConfiguration.setter();

    sub_10055AEAC();
  }
}

uint64_t sub_10055AB4C()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v20[-1] - v2;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for UIContentUnavailableConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfiguration.empty()();
  if (qword_100AD0768 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.text.setter();
  if (qword_100AD0770 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.secondaryText.setter();
  v9 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
  *(v10 + 8) = 0x4034000000000000;
  v9(v20, 0);
  v11 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
  *(v12 + 24) = 0x4034000000000000;
  v11(v20, 0);
  static UIBackgroundConfiguration.clear()();
  UIContentUnavailableConfiguration.background.setter();
  v20[3] = v5;
  v20[4] = &protocol witness table for UIContentUnavailableConfiguration;
  v13 = sub_10001A770(v20);
  (*(v6 + 16))(v13, v8, v5);
  UIViewController.contentUnavailableConfiguration.setter();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = v0;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_1003E9628(0, 0, v3, &unk_10095DAA0, v17);

  return (*(v6 + 8))(v8, v5);
}

void sub_10055AEAC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AE92A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = type metadata accessor for JournalFeatureFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_isIndexing) = 0;
  (*(v7 + 104))(v9, enum case for JournalFeatureFlags.search(_:), v6);
  v10 = JournalFeatureFlags.isEnabled.getter();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    type metadata accessor for JournalEntryCollectionViewController.Item(0);
    sub_100562464(&qword_100ADE6B0, type metadata accessor for JournalEntryCollectionViewController.Item);
    NSDiffableDataSourceSectionSnapshot.init()();
    v11 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
    if (v11)
    {
      v14 = xmmword_1009510C0;
      v12 = v11;
      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v13 = sub_100555748();
    [v13 removeFromSuperview];
  }
}

void sub_10055B108()
{
  v1 = v0;
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JournalSearchResultsViewController();
  v11.receiver = v1;
  v11.super_class = v6;
  objc_msgSendSuper2(&v11, "viewDidLayoutSubviews");
  (*(v3 + 104))(v5, enum case for JournalFeatureFlags.search(_:), v2);
  v7 = JournalFeatureFlags.isEnabled.getter();
  (*(v3 + 8))(v5, v2);
  if ((v7 & 1) == 0)
  {
    v8 = *&v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
    if (v8)
    {
      v9 = v8;
      v10 = sub_100555748();
      [v10 frame];

      [v9 contentInset];
      [v9 setContentInset:?];
    }
  }
}

uint64_t sub_10055B2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v15 = v5;

  sub_100021E80(a4);
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  sub_1003E9628(0, 0, v13, &unk_10095DA48, v17);
}

uint64_t sub_10055B448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v16;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = sub_1000F24EC(&qword_100AD5CF0);
  v8[23] = swift_task_alloc();
  v11 = type metadata accessor for EntryListType();
  v8[24] = v11;
  v8[25] = *(v11 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = sub_1000F24EC(&unk_100AE92C0);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  sub_1000F24EC(&unk_100ADE5F0);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = type metadata accessor for MainActor();
  v8[39] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[40] = v12;
  v8[41] = v13;

  return _swift_task_switch(sub_10055B758, v12, v13);
}

uint64_t sub_10055B758()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel;
  v0[42] = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v0[37];
    v5 = v0[24];
    v6 = v0[25];
    v7 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
    swift_beginAccess();
    sub_1005623CC(v3 + v7, v4, type metadata accessor for EntryListType);
    v8 = *(v6 + 56);
    v9 = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v8(v4, 0, 1, v5);
  }

  else
  {
    v10 = v0[25];
    v8 = *(v10 + 56);
    v9 = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v8(v0[37], 1, 1, v0[24]);
  }

  v0[43] = v8;
  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[31];
  v14 = v0[29];
  v15 = v0[24];
  v16 = v0[25];
  v17 = sub_1000F24EC(&qword_100AD47A0);
  v0[44] = v17;
  v18 = *(v17 - 8);
  v0[45] = v18;
  v19 = *(v18 + 56);
  v0[46] = v19;
  v0[47] = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v19(v12, 1, 2, v17);
  v0[48] = v9;
  v8(v12, 0, 1, v15);
  v20 = *(v14 + 48);
  sub_1000082B4(v11, v13, &unk_100ADE5F0);
  sub_1000082B4(v12, v13 + v20, &unk_100ADE5F0);
  v21 = *(v16 + 48);
  v0[49] = v21;
  v0[50] = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v21(v13, 1, v15) != 1)
  {
    v24 = v0[24];
    sub_1000082B4(v0[31], v0[35], &unk_100ADE5F0);
    v25 = v21(v13 + v20, 1, v24);
    v27 = v0[36];
    v26 = v0[37];
    v28 = v0[35];
    if (v25 != 1)
    {
      v32 = v0[31];
      v33 = v0[28];
      sub_100561BB4(v13 + v20, v33, type metadata accessor for EntryListType);
      v34 = sub_100023858(v28, v33);
      sub_100014184(v33, type metadata accessor for EntryListType);
      sub_100004F84(v27, &unk_100ADE5F0);
      sub_100004F84(v26, &unk_100ADE5F0);
      sub_100014184(v28, type metadata accessor for EntryListType);
      sub_100004F84(v32, &unk_100ADE5F0);
      if (v34)
      {
        goto LABEL_12;
      }

LABEL_10:
      v0[57] = static MainActor.shared.getter();
      v29 = dispatch thunk of Actor.unownedExecutor.getter();
      v0[58] = v29;
      v0[59] = v30;
      v31 = sub_10055C840;
      goto LABEL_13;
    }

    sub_100004F84(v0[36], &unk_100ADE5F0);
    sub_100004F84(v26, &unk_100ADE5F0);
    sub_100014184(v28, type metadata accessor for EntryListType);
LABEL_9:
    sub_100004F84(v0[31], &unk_100AE92C0);
    goto LABEL_10;
  }

  v22 = v0[37];
  v23 = v0[24];
  sub_100004F84(v0[36], &unk_100ADE5F0);
  sub_100004F84(v22, &unk_100ADE5F0);
  if (v21(v13 + v20, 1, v23) != 1)
  {
    goto LABEL_9;
  }

  sub_100004F84(v0[31], &unk_100ADE5F0);
LABEL_12:
  v0[51] = static MainActor.shared.getter();
  v29 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[52] = v29;
  v0[53] = v30;
  v31 = sub_10055BBDC;
LABEL_13:

  return _swift_task_switch(v31, v29, v30);
}

uint64_t sub_10055BBDC()
{
  v1 = *(v0 + 88);
  v6 = *(v0 + 72);
  v2 = static MainActor.shared.getter();
  *(v0 + 432) = v2;
  v3 = swift_task_alloc();
  *(v0 + 440) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 448) = v4;
  *v4 = v0;
  v4[1] = sub_10055BD24;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 581, v2, &protocol witness table for MainActor, 0xD00000000000004CLL, 0x80000001008FA4C0, sub_100561D08, v3, &type metadata for Bool);
}

uint64_t sub_10055BD24()
{
  v1 = *v0;

  v2 = *(v1 + 424);
  v3 = *(v1 + 416);

  return _swift_task_switch(sub_10055BEB8, v3, v2);
}

uint64_t sub_10055BEB8()
{

  *(v0 + 582) = *(v0 + 581);
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_10055BF50, v1, v2);
}

uint64_t sub_10055BF50()
{
  v1 = *(v0 + 582);
  v2 = *(v0 + 104);
  if (v2)
  {
    v2(*(v0 + 582));
  }

  if (v1)
  {
    v3 = *(v0 + 80);
    sub_1003169B4(v3);
    if (v3 >> 62)
    {
      v65 = _CocoaArrayWrapper.endIndex.getter();
      *(v0 + 504) = v65;
      if (v65)
      {
LABEL_6:
        v5 = *(v0 + 80);
        *(v0 + 576) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }
        }

        *(v0 + 512) = v6;
        *(v0 + 520) = 1;
        v9 = *(*(v0 + 72) + *(v0 + 336));
        if (v9)
        {
          v10 = *(v0 + 272);
          v11 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
          swift_beginAccess();
          sub_1005623CC(v9 + v11, v10, type metadata accessor for EntryListType);
        }

        v73 = *(v0 + 392);
        v12 = *(v0 + 368);
        v14 = *(v0 + 344);
        v13 = *(v0 + 352);
        v16 = *(v0 + 264);
        v15 = *(v0 + 272);
        v17 = *(v0 + 240);
        v72 = *(v0 + 232);
        v18 = *(v0 + 192);
        v14(v15);
        v12(v16, 1, 2, v13);
        (v14)(v16, 0, 1, v18);
        v19 = v17;
        v20 = *(v72 + 48);
        sub_1000082B4(v15, v17, &unk_100ADE5F0);
        sub_1000082B4(v16, v17 + v20, &unk_100ADE5F0);
        v21 = v73(v17, 1, v18);
        v22 = *(v0 + 392);
        if (v21 == 1)
        {
          v23 = *(v0 + 272);
          v24 = *(v0 + 192);
          sub_100004F84(*(v0 + 264), &unk_100ADE5F0);
          sub_100004F84(v23, &unk_100ADE5F0);
          if (v22(v17 + v20, 1, v24) == 1)
          {
            goto LABEL_37;
          }

          goto LABEL_21;
        }

        v25 = *(v0 + 192);
        sub_1000082B4(*(v0 + 240), *(v0 + 256), &unk_100ADE5F0);
        v26 = v22(v17 + v20, 1, v25);
        v27 = *(v0 + 256);
        if (v26 == 1)
        {
          v28 = *(v0 + 272);
          sub_100004F84(*(v0 + 264), &unk_100ADE5F0);
          sub_100004F84(v28, &unk_100ADE5F0);
          sub_100014184(v27, type metadata accessor for EntryListType);
LABEL_21:
          v29 = *(v0 + 240);
          v30 = &unk_100AE92C0;
LABEL_31:
          sub_100004F84(v29, v30);
          v52 = *(v0 + 312);

          if (v52)
          {
            swift_getObjectType();
            v53 = dispatch thunk of Actor.unownedExecutor.getter();
            v55 = v54;
          }

          else
          {
            v53 = 0;
            v55 = 0;
          }

          *(v0 + 560) = v55;
          *(v0 + 552) = v53;
          v56 = sub_10055E174;
          goto LABEL_41;
        }

        v31 = *(v0 + 352);
        v32 = *(v0 + 360);
        v33 = *(v0 + 216);
        v34 = *(v0 + 176);
        v35 = *(v0 + 184);
        sub_100561BB4(v19 + v20, v33, type metadata accessor for EntryListType);
        v36 = *(v34 + 48);
        sub_1005623CC(v27, v35, type metadata accessor for EntryListType);
        sub_1005623CC(v33, v35 + v36, type metadata accessor for EntryListType);
        v37 = *(v32 + 48);
        v38 = v37(v35, 2, v31);
        v39 = *(v0 + 352);
        if (v38)
        {
          if (v38 == 1)
          {
            v41 = *(v0 + 264);
            v40 = *(v0 + 272);
            sub_100014184(*(v0 + 216), type metadata accessor for EntryListType);
            sub_100004F84(v41, &unk_100ADE5F0);
            sub_100004F84(v40, &unk_100ADE5F0);
            if (v37(v35 + v36, 2, v39) == 1)
            {
              goto LABEL_36;
            }

            goto LABEL_29;
          }

          v50 = *(v0 + 264);
          v49 = *(v0 + 272);
          sub_100014184(*(v0 + 216), type metadata accessor for EntryListType);
          sub_100004F84(v50, &unk_100ADE5F0);
          sub_100004F84(v49, &unk_100ADE5F0);
          if (v37(v35 + v36, 2, v39) != 2)
          {
LABEL_29:
            sub_100004F84(*(v0 + 184), &qword_100AD5CF0);
LABEL_30:
            v51 = *(v0 + 240);
            sub_100014184(*(v0 + 256), type metadata accessor for EntryListType);
            v30 = &unk_100ADE5F0;
            v29 = v51;
            goto LABEL_31;
          }
        }

        else
        {
          sub_1005623CC(*(v0 + 184), *(v0 + 208), type metadata accessor for EntryListType);
          v42 = v37(v35 + v36, 2, v39);
          v44 = *(v0 + 264);
          v43 = *(v0 + 272);
          v45 = *(v0 + 208);
          v46 = *(v0 + 216);
          if (v42)
          {
            v47 = *(v0 + 152);
            v48 = *(v0 + 160);
            sub_100014184(*(v0 + 216), type metadata accessor for EntryListType);
            sub_100004F84(v44, &unk_100ADE5F0);
            sub_100004F84(v43, &unk_100ADE5F0);
            (*(v48 + 8))(v45, v47);
            goto LABEL_29;
          }

          v58 = *(v0 + 160);
          v57 = *(v0 + 168);
          v59 = *(v0 + 152);
          (*(v58 + 32))(v57, v35 + v36, v59);
          v60 = static UUID.== infix(_:_:)();
          v61 = *(v58 + 8);
          v61(v57, v59);
          sub_100014184(v46, type metadata accessor for EntryListType);
          sub_100004F84(v44, &unk_100ADE5F0);
          sub_100004F84(v43, &unk_100ADE5F0);
          v61(v45, v59);
          if ((v60 & 1) == 0)
          {
            sub_100014184(*(v0 + 184), type metadata accessor for EntryListType);
            goto LABEL_30;
          }
        }

LABEL_36:
        v62 = *(v0 + 256);
        sub_100014184(*(v0 + 184), type metadata accessor for EntryListType);
        sub_100014184(v62, type metadata accessor for EntryListType);
LABEL_37:
        v63 = *(v0 + 312);
        sub_100004F84(*(v0 + 240), &unk_100ADE5F0);

        if (v63)
        {
          swift_getObjectType();
          v53 = dispatch thunk of Actor.unownedExecutor.getter();
          v55 = v64;
        }

        else
        {
          v53 = 0;
          v55 = 0;
        }

        *(v0 + 536) = v55;
        *(v0 + 528) = v53;
        v56 = sub_10055D580;
LABEL_41:

        return _swift_task_switch(v56, v53, v55);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 504) = v4;
      if (v4)
      {
        goto LABEL_6;
      }
    }

    v66 = *(v0 + 72);

    v67 = *(v66 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext);
    *(v0 + 64) = 0;
    v68 = [v67 save:v0 + 64];
    v69 = *(v0 + 64);
    if (v68)
    {
      v70 = v69;
    }

    else
    {
      v71 = v69;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10055C840()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {

    *(v0 + 583) = 1;
    v4 = *(v0 + 320);
    v5 = *(v0 + 328);

    return _swift_task_switch(sub_10055CC90, v4, v5);
  }

  else
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v12 = *(v0 + 72);
    v8 = static MainActor.shared.getter();
    *(v0 + 480) = v8;
    v9 = swift_task_alloc();
    *(v0 + 488) = v9;
    v9[1] = vextq_s8(v12, v12, 8uLL);
    v9[2].i64[0] = v6;
    v9[2].i64[1] = v7;
    v10 = swift_task_alloc();
    *(v0 + 496) = v10;
    *v10 = v0;
    v10[1] = sub_10055CA64;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 580, v8, &protocol witness table for MainActor, 0xD000000000000052, 0x80000001008E0D50, sub_10015CCBC, v9, &type metadata for Bool);
  }
}

uint64_t sub_10055CA64()
{
  v1 = *v0;

  v2 = *(v1 + 472);
  v3 = *(v1 + 464);

  return _swift_task_switch(sub_10055CBF8, v3, v2);
}

uint64_t sub_10055CBF8()
{

  *(v0 + 583) = *(v0 + 580);
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_10055CC90, v1, v2);
}

uint64_t sub_10055CC90()
{
  v1 = *(v0 + 583);
  v2 = *(v0 + 104);
  if (v2)
  {
    v2(*(v0 + 583));
  }

  if (v1)
  {
    v3 = *(v0 + 80);
    sub_1003169B4(v3);
    if (v3 >> 62)
    {
      v65 = _CocoaArrayWrapper.endIndex.getter();
      *(v0 + 504) = v65;
      if (v65)
      {
LABEL_6:
        v5 = *(v0 + 80);
        *(v0 + 576) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }
        }

        *(v0 + 512) = v6;
        *(v0 + 520) = 1;
        v9 = *(*(v0 + 72) + *(v0 + 336));
        if (v9)
        {
          v10 = *(v0 + 272);
          v11 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
          swift_beginAccess();
          sub_1005623CC(v9 + v11, v10, type metadata accessor for EntryListType);
        }

        v73 = *(v0 + 392);
        v12 = *(v0 + 368);
        v14 = *(v0 + 344);
        v13 = *(v0 + 352);
        v16 = *(v0 + 264);
        v15 = *(v0 + 272);
        v17 = *(v0 + 240);
        v72 = *(v0 + 232);
        v18 = *(v0 + 192);
        v14(v15);
        v12(v16, 1, 2, v13);
        (v14)(v16, 0, 1, v18);
        v19 = v17;
        v20 = *(v72 + 48);
        sub_1000082B4(v15, v17, &unk_100ADE5F0);
        sub_1000082B4(v16, v17 + v20, &unk_100ADE5F0);
        v21 = v73(v17, 1, v18);
        v22 = *(v0 + 392);
        if (v21 == 1)
        {
          v23 = *(v0 + 272);
          v24 = *(v0 + 192);
          sub_100004F84(*(v0 + 264), &unk_100ADE5F0);
          sub_100004F84(v23, &unk_100ADE5F0);
          if (v22(v17 + v20, 1, v24) == 1)
          {
            goto LABEL_37;
          }

          goto LABEL_21;
        }

        v25 = *(v0 + 192);
        sub_1000082B4(*(v0 + 240), *(v0 + 256), &unk_100ADE5F0);
        v26 = v22(v17 + v20, 1, v25);
        v27 = *(v0 + 256);
        if (v26 == 1)
        {
          v28 = *(v0 + 272);
          sub_100004F84(*(v0 + 264), &unk_100ADE5F0);
          sub_100004F84(v28, &unk_100ADE5F0);
          sub_100014184(v27, type metadata accessor for EntryListType);
LABEL_21:
          v29 = *(v0 + 240);
          v30 = &unk_100AE92C0;
LABEL_31:
          sub_100004F84(v29, v30);
          v52 = *(v0 + 312);

          if (v52)
          {
            swift_getObjectType();
            v53 = dispatch thunk of Actor.unownedExecutor.getter();
            v55 = v54;
          }

          else
          {
            v53 = 0;
            v55 = 0;
          }

          *(v0 + 560) = v55;
          *(v0 + 552) = v53;
          v56 = sub_10055E174;
          goto LABEL_41;
        }

        v31 = *(v0 + 352);
        v32 = *(v0 + 360);
        v33 = *(v0 + 216);
        v34 = *(v0 + 176);
        v35 = *(v0 + 184);
        sub_100561BB4(v19 + v20, v33, type metadata accessor for EntryListType);
        v36 = *(v34 + 48);
        sub_1005623CC(v27, v35, type metadata accessor for EntryListType);
        sub_1005623CC(v33, v35 + v36, type metadata accessor for EntryListType);
        v37 = *(v32 + 48);
        v38 = v37(v35, 2, v31);
        v39 = *(v0 + 352);
        if (v38)
        {
          if (v38 == 1)
          {
            v41 = *(v0 + 264);
            v40 = *(v0 + 272);
            sub_100014184(*(v0 + 216), type metadata accessor for EntryListType);
            sub_100004F84(v41, &unk_100ADE5F0);
            sub_100004F84(v40, &unk_100ADE5F0);
            if (v37(v35 + v36, 2, v39) == 1)
            {
              goto LABEL_36;
            }

            goto LABEL_29;
          }

          v50 = *(v0 + 264);
          v49 = *(v0 + 272);
          sub_100014184(*(v0 + 216), type metadata accessor for EntryListType);
          sub_100004F84(v50, &unk_100ADE5F0);
          sub_100004F84(v49, &unk_100ADE5F0);
          if (v37(v35 + v36, 2, v39) != 2)
          {
LABEL_29:
            sub_100004F84(*(v0 + 184), &qword_100AD5CF0);
LABEL_30:
            v51 = *(v0 + 240);
            sub_100014184(*(v0 + 256), type metadata accessor for EntryListType);
            v30 = &unk_100ADE5F0;
            v29 = v51;
            goto LABEL_31;
          }
        }

        else
        {
          sub_1005623CC(*(v0 + 184), *(v0 + 208), type metadata accessor for EntryListType);
          v42 = v37(v35 + v36, 2, v39);
          v44 = *(v0 + 264);
          v43 = *(v0 + 272);
          v45 = *(v0 + 208);
          v46 = *(v0 + 216);
          if (v42)
          {
            v47 = *(v0 + 152);
            v48 = *(v0 + 160);
            sub_100014184(*(v0 + 216), type metadata accessor for EntryListType);
            sub_100004F84(v44, &unk_100ADE5F0);
            sub_100004F84(v43, &unk_100ADE5F0);
            (*(v48 + 8))(v45, v47);
            goto LABEL_29;
          }

          v58 = *(v0 + 160);
          v57 = *(v0 + 168);
          v59 = *(v0 + 152);
          (*(v58 + 32))(v57, v35 + v36, v59);
          v60 = static UUID.== infix(_:_:)();
          v61 = *(v58 + 8);
          v61(v57, v59);
          sub_100014184(v46, type metadata accessor for EntryListType);
          sub_100004F84(v44, &unk_100ADE5F0);
          sub_100004F84(v43, &unk_100ADE5F0);
          v61(v45, v59);
          if ((v60 & 1) == 0)
          {
            sub_100014184(*(v0 + 184), type metadata accessor for EntryListType);
            goto LABEL_30;
          }
        }

LABEL_36:
        v62 = *(v0 + 256);
        sub_100014184(*(v0 + 184), type metadata accessor for EntryListType);
        sub_100014184(v62, type metadata accessor for EntryListType);
LABEL_37:
        v63 = *(v0 + 312);
        sub_100004F84(*(v0 + 240), &unk_100ADE5F0);

        if (v63)
        {
          swift_getObjectType();
          v53 = dispatch thunk of Actor.unownedExecutor.getter();
          v55 = v64;
        }

        else
        {
          v53 = 0;
          v55 = 0;
        }

        *(v0 + 536) = v55;
        *(v0 + 528) = v53;
        v56 = sub_10055D580;
LABEL_41:

        return _swift_task_switch(v56, v53, v55);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 504) = v4;
      if (v4)
      {
        goto LABEL_6;
      }
    }

    v66 = *(v0 + 72);

    v67 = *(v66 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext);
    *(v0 + 64) = 0;
    v68 = [v67 save:v0 + 64];
    v69 = *(v0 + 64);
    if (v68)
    {
      v70 = v69;
    }

    else
    {
      v71 = v69;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10055D580()
{
  (*(*(v0 + 128) + 104))(*(v0 + 144), *(v0 + 576), *(v0 + 120));

  v1 = swift_task_alloc();
  *(v0 + 544) = v1;
  *v1 = v0;
  v1[1] = sub_10055D69C;
  v2 = *(v0 + 512);
  v3 = *(v0 + 144);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v3, sub_100163FAC, v2, &type metadata for () + 8);
}

uint64_t sub_10055D69C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[16] + 8))(v2[18], v2[15]);

    v4 = v2[67];
    v5 = v2[66];

    return _swift_task_switch(sub_10055D838, v5, v4);
  }
}

uint64_t sub_10055D838()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_10055D8C8, v1, v2);
}

uint64_t sub_10055D8C8()
{
  v1 = v0[65];
  v2 = v0[63];

  if (v1 == v2)
  {
    v3 = v0[9];

    v4 = *(v3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext);
    v0[8] = 0;
    v5 = [v4 save:v0 + 8];
    v6 = v0[8];
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v11 = v6;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v12 = v0[1];

    return v12();
  }

  v8 = v0[65];
  v9 = v0[10];
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }
  }

  v0[64] = v10;
  v0[65] = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_46:
    __break(1u);
  }

  v14 = *(v0[9] + v0[42]);
  if (v14)
  {
    v15 = v0[34];
    v16 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
    swift_beginAccess();
    sub_1005623CC(v14 + v16, v15, type metadata accessor for EntryListType);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v72 = v0[49];
  v18 = v0[46];
  v20 = v0[43];
  v19 = v0[44];
  v22 = v0[33];
  v21 = v0[34];
  v23 = v0[30];
  v71 = v0[29];
  v24 = v0[24];
  v20(v21, v17, 1, v24);
  v18(v22, 1, 2, v19);
  v20(v22, 0, 1, v24);
  v25 = v23;
  v26 = *(v71 + 48);
  sub_1000082B4(v21, v23, &unk_100ADE5F0);
  sub_1000082B4(v22, v23 + v26, &unk_100ADE5F0);
  v27 = v72(v23, 1, v24);
  v28 = v0[49];
  if (v27 == 1)
  {
    v29 = v0[34];
    v30 = v0[24];
    sub_100004F84(v0[33], &unk_100ADE5F0);
    sub_100004F84(v29, &unk_100ADE5F0);
    if (v28(v23 + v26, 1, v30) == 1)
    {
      goto LABEL_37;
    }

    goto LABEL_21;
  }

  v31 = v0[24];
  sub_1000082B4(v0[30], v0[32], &unk_100ADE5F0);
  if (v28(v23 + v26, 1, v31) == 1)
  {
    v32 = v0[34];
    v33 = v0[32];
    sub_100004F84(v0[33], &unk_100ADE5F0);
    sub_100004F84(v32, &unk_100ADE5F0);
    sub_100014184(v33, type metadata accessor for EntryListType);
LABEL_21:
    v34 = v0[30];
    v35 = &unk_100AE92C0;
LABEL_31:
    sub_100004F84(v34, v35);
    v58 = v0[39];

    if (v58)
    {
      swift_getObjectType();
      v59 = dispatch thunk of Actor.unownedExecutor.getter();
      v61 = v60;
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    v0[70] = v61;
    v0[69] = v59;
    v62 = sub_10055E174;
    goto LABEL_41;
  }

  v36 = v0[44];
  v37 = v0[45];
  v38 = v0[32];
  v39 = v0[27];
  v40 = v0[22];
  v41 = v0[23];
  sub_100561BB4(v25 + v26, v39, type metadata accessor for EntryListType);
  v42 = *(v40 + 48);
  sub_1005623CC(v38, v41, type metadata accessor for EntryListType);
  sub_1005623CC(v39, v41 + v42, type metadata accessor for EntryListType);
  v43 = *(v37 + 48);
  v44 = v43(v41, 2, v36);
  v45 = v0[44];
  if (v44)
  {
    if (v44 == 1)
    {
      v47 = v0[33];
      v46 = v0[34];
      sub_100014184(v0[27], type metadata accessor for EntryListType);
      sub_100004F84(v47, &unk_100ADE5F0);
      sub_100004F84(v46, &unk_100ADE5F0);
      if (v43(v41 + v42, 2, v45) == 1)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    }

    v56 = v0[33];
    v55 = v0[34];
    sub_100014184(v0[27], type metadata accessor for EntryListType);
    sub_100004F84(v56, &unk_100ADE5F0);
    sub_100004F84(v55, &unk_100ADE5F0);
    if (v43(v41 + v42, 2, v45) != 2)
    {
LABEL_29:
      sub_100004F84(v0[23], &qword_100AD5CF0);
LABEL_30:
      v57 = v0[30];
      sub_100014184(v0[32], type metadata accessor for EntryListType);
      v35 = &unk_100ADE5F0;
      v34 = v57;
      goto LABEL_31;
    }
  }

  else
  {
    sub_1005623CC(v0[23], v0[26], type metadata accessor for EntryListType);
    v48 = v43(v41 + v42, 2, v45);
    v50 = v0[33];
    v49 = v0[34];
    v51 = v0[26];
    v52 = v0[27];
    if (v48)
    {
      v53 = v0[19];
      v54 = v0[20];
      sub_100014184(v0[27], type metadata accessor for EntryListType);
      sub_100004F84(v50, &unk_100ADE5F0);
      sub_100004F84(v49, &unk_100ADE5F0);
      (*(v54 + 8))(v51, v53);
      goto LABEL_29;
    }

    v64 = v0[20];
    v63 = v0[21];
    v65 = v0[19];
    (*(v64 + 32))(v63, v41 + v42, v65);
    v66 = static UUID.== infix(_:_:)();
    v67 = *(v64 + 8);
    v67(v63, v65);
    sub_100014184(v52, type metadata accessor for EntryListType);
    sub_100004F84(v50, &unk_100ADE5F0);
    sub_100004F84(v49, &unk_100ADE5F0);
    v67(v51, v65);
    if ((v66 & 1) == 0)
    {
      sub_100014184(v0[23], type metadata accessor for EntryListType);
      goto LABEL_30;
    }
  }

LABEL_36:
  v68 = v0[32];
  sub_100014184(v0[23], type metadata accessor for EntryListType);
  sub_100014184(v68, type metadata accessor for EntryListType);
LABEL_37:
  v69 = v0[39];
  sub_100004F84(v0[30], &unk_100ADE5F0);

  if (v69)
  {
    swift_getObjectType();
    v59 = dispatch thunk of Actor.unownedExecutor.getter();
    v61 = v70;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  v0[67] = v61;
  v0[66] = v59;
  v62 = sub_10055D580;
LABEL_41:

  return _swift_task_switch(v62, v59, v61);
}

uint64_t sub_10055E174()
{
  (*(*(v0 + 128) + 104))(*(v0 + 136), *(v0 + 576), *(v0 + 120));

  v1 = swift_task_alloc();
  *(v0 + 568) = v1;
  *v1 = v0;
  v1[1] = sub_10055E290;
  v2 = *(v0 + 512);
  v3 = *(v0 + 136);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v3, sub_100318E5C, v2, &type metadata for () + 8);
}

uint64_t sub_10055E290()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);

    v4 = v2[70];
    v5 = v2[69];

    return _swift_task_switch(sub_10055E42C, v5, v4);
  }
}

uint64_t sub_10055E42C()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_100562510, v1, v2);
}

uint64_t sub_10055E4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v7;
  v6[8] = v8;

  return _swift_task_switch(sub_10055E58C, v7, v8);
}

uint64_t sub_10055E58C()
{
  if (v0[3] >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_10055E680;
  v3 = v0[4];
  v2 = v0[5];

  return sub_100416764(v3, v2);
}

uint64_t sub_10055E680(char a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_10055E7DC, v4, v3);
}

uint64_t sub_10055E7DC()
{
  v1 = *(v0 + 80);

  if (v1 == 1)
  {
    v2 = *(v0 + 24);
    if (v2 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
LABEL_13:
        v11 = *(*(v0 + 32) + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext);
        *(v0 + 16) = 0;
        v12 = [v11 save:v0 + 16];
        v13 = *(v0 + 16);
        if (v12)
        {
          v14 = v13;
        }

        else
        {
          v15 = v13;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        goto LABEL_16;
      }
    }

    if (v3 < 1)
    {
      __break(1u);
    }

    v4 = *(v0 + 24);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        ++v5;
        v6 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 32);
        JournalEntryMO.recoverRecentlyDeleted()();

        swift_unknownObjectRelease();
      }

      while (v3 != v5);
    }

    else
    {
      v7 = (v4 + 32);
      do
      {
        v8 = *v7++;
        v9 = *(v8 + 32);

        v10 = v9;
        JournalEntryMO.recoverRecentlyDeleted()();

        --v3;
      }

      while (v3);
    }

    goto LABEL_13;
  }

LABEL_16:
  v16 = *(v0 + 8);

  return v16();
}

Class sub_10055E9A4(uint64_t a1)
{
  v70 = a1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v68 = (&v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v65 = &v63 - v9;
  v10 = type metadata accessor for EntryListType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&unk_100AE92C0);
  __chkstk_darwin(v13);
  v15 = &v63 - v14;
  v16 = sub_1000F24EC(&unk_100ADE5F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v63 - v20;
  __chkstk_darwin(v22);
  v24 = &v63 - v23;
  v69 = v1;
  v25 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel);
  if (v25)
  {
    v26 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
    swift_beginAccess();
    sub_1005623CC(v25 + v26, v24, type metadata accessor for EntryListType);
    v27 = *(v11 + 56);
    v27(v24, 0, 1, v10);
  }

  else
  {
    v27 = *(v11 + 56);
    v27(&v63 - v23, 1, 1, v10);
  }

  v28 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v28 - 8) + 56))(v21, 1, 2, v28);
  v27(v21, 0, 1, v10);
  v29 = *(v13 + 48);
  sub_1000082B4(v24, v15, &unk_100ADE5F0);
  sub_1000082B4(v21, &v15[v29], &unk_100ADE5F0);
  v30 = *(v11 + 48);
  if (v30(v15, 1, v10) == 1)
  {
    sub_100004F84(v21, &unk_100ADE5F0);
    sub_100004F84(v24, &unk_100ADE5F0);
    v31 = v30(&v15[v29], 1, v10);
    v32 = v70;
    if (v31 == 1)
    {
      sub_100004F84(v15, &unk_100ADE5F0);
LABEL_14:
      sub_1000F24EC(&unk_100AD4780);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_100941D60;
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v43._countAndFlagsBits = 0x207265766F636552;
      v43._object = 0xE800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v43);
      if (v32 >> 62)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v44 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v64 = v44;
      v68 = v42;
      v67 = sub_1000065A8(0, &unk_100AD4D00);
      v70 = sub_1000065A8(0, &qword_100AD4420);
      v71 = v44;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v45._countAndFlagsBits = 0x73656972746E4520;
      v45._object = 0xE800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      if (qword_100AD09E8 != -1)
      {
        swift_once();
      }

      v46 = qword_100B30EC0;
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      *(v48 + 16) = v47;
      *(v48 + 24) = v32;
      v49 = v46;

      v50 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v51 = v68;
      v68[4].super.super.isa = v50;
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100941D50;
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v53._countAndFlagsBits = 0x206574656C6544;
      v53._object = 0xE700000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v53);
      v71 = v64;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v54._countAndFlagsBits = 0x73656972746E4520;
      v54._object = 0xE800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v54);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      if (qword_100AD0978 != -1)
      {
        swift_once();
      }

      v55 = qword_100B30E50;
      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      *(v57 + 24) = v32;
      v58 = v55;

      *(v52 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      v72.value.super.isa = 0;
      v72.is_nil = 0;
      v51[5].super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v59, 0, v72, 1, 0xFFFFFFFFFFFFFFFFLL, v52, v61).super.super.isa;
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      v73.value.super.isa = 0;
      v73.is_nil = 0;
      return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v60, 0, v73, 0, 0xFFFFFFFFFFFFFFFFLL, v51, v62).super.super.isa;
    }

    goto LABEL_9;
  }

  sub_1000082B4(v15, v18, &unk_100ADE5F0);
  if (v30(&v15[v29], 1, v10) == 1)
  {
    sub_100004F84(v21, &unk_100ADE5F0);
    sub_100004F84(v24, &unk_100ADE5F0);
    sub_100014184(v18, type metadata accessor for EntryListType);
    v32 = v70;
LABEL_9:
    sub_100004F84(v15, &unk_100AE92C0);
    goto LABEL_10;
  }

  v40 = v64;
  sub_100561BB4(&v15[v29], v64, type metadata accessor for EntryListType);
  v41 = sub_100023858(v18, v40);
  sub_100014184(v40, type metadata accessor for EntryListType);
  sub_100004F84(v21, &unk_100ADE5F0);
  sub_100004F84(v24, &unk_100ADE5F0);
  sub_100014184(v18, type metadata accessor for EntryListType);
  sub_100004F84(v15, &unk_100ADE5F0);
  v32 = v70;
  if (v41)
  {
    goto LABEL_14;
  }

LABEL_10:
  sub_1000F24EC(&unk_100AD4780);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100941D50;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v34 = String._bridgeToObjectiveC()();
  v35 = [objc_opt_self() systemImageNamed:v34];

  if (v32 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  sub_1000065A8(0, &qword_100AD4420);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v32;

  *(v33 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v38 = sub_1005F9B54(v32, v33);

  return v38;
}

void sub_10055F56C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [a1 presentationSourceItem];
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    type metadata accessor for MainActor();

    v12 = v9;
    swift_unknownObjectRetain();
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = a3;
    v14[5] = v12;
    v14[6] = v10;
    sub_1003E9628(0, 0, v7, &unk_10095DA40, v14);

    swift_unknownObjectRelease();
  }
}

void sub_10055F708(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [a1 presentationSourceItem];
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    type metadata accessor for MainActor();
    v12 = v9;

    swift_unknownObjectRetain();
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    v14[5] = a3;
    v14[6] = v10;
    v14[7] = 0;
    v14[8] = 0;
    v14[9] = 0;
    sub_1003E9628(0, 0, v7, &unk_10095DA28, v14);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10055F8A8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 72))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10055F938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v61 = *(v6 - 8);
  __chkstk_darwin(v6);
  v62 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AE92B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - v10;
  sub_1003067A4(a1, &v48 - v10);
  v12 = [v2 traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13)
  {
    return (*(v9 + 32))(a2, v11, v8);
  }

  v15 = &v3[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v9 + 32))(a2, v11, v8);
  }

  v17 = *&v3[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_suggestions];
  if (!v17 || (v63 = *(v17 + 16)) == 0)
  {
    swift_unknownObjectRelease();
    return (*(v9 + 32))(a2, v11, v8);
  }

  v18 = *(v15 + 1);
  v66 = xmmword_1009510C0;
  v19 = Strong;

  v60 = v17;
  NSDiffableDataSourceSnapshot.insertSections(_:beforeSection:)();
  ObjectType = swift_getObjectType();
  v21 = (*(v18 + 24))(ObjectType, v18);
  v22 = v60;
  if (*(v60 + 16) >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = *(v60 + 16);
  }

  if (v23 <= 0)
  {
    swift_unknownObjectRelease();

    return (*(v9 + 32))(a2, v11, v8);
  }

  v49 = v9;
  v50 = a2;
  v24 = 0;
  v25 = OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchSuggestionItemMap;
  v59 = v60 + 32;
  v51 = v61 + 16;
  v58 = (v61 + 8);
  v53 = xmmword_100940080;
  v52 = xmmword_10095D920;
  v57 = v8;
  v56 = v6;
  v55 = v19;
  v54 = v23;
  while (1)
  {
    if (v24 >= v63)
    {
      goto LABEL_13;
    }

    if (v24 >= *(v22 + 16))
    {
      break;
    }

    v29 = v11;
    sub_100086C04(v59 + 40 * v24, &v66);
    v30 = v67;
    v31 = v68;
    sub_10000CA14(&v66, v67);
    v32 = v62;
    (*(v31 + 8))(v30, v31);
    swift_beginAccess();
    sub_100086C04(&v66, v65);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *&v3[v25];
    v34 = v64;
    *&v3[v25] = 0x8000000000000000;
    v36 = sub_100361E08(v32);
    v37 = v34[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_31;
    }

    v40 = v35;
    if (v34[3] >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v43 = v64;
        if ((v35 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_100822738();
        v43 = v64;
        if ((v40 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_10081E0E8(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_100361E08(v32);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_33;
      }

      v36 = v41;
      v43 = v64;
      if ((v40 & 1) == 0)
      {
LABEL_23:
        v43[(v36 >> 6) + 8] |= 1 << v36;
        v44 = v61;
        (*(v61 + 16))(v43[6] + *(v61 + 72) * v36, v32, v6);
        sub_100364784(v65, v43[7] + 40 * v36);
        (*(v44 + 8))(v32, v6);
        v45 = v43[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_32;
        }

        v43[2] = v47;
        goto LABEL_12;
      }
    }

    v26 = v43[7] + 40 * v36;
    sub_10000BA7C(v26);
    sub_100364784(v65, v26);
    (*v58)(v32, v6);
LABEL_12:
    *&v3[v25] = v43;

    swift_endAccess();
    sub_1000F24EC(&qword_100AD7CD0);
    type metadata accessor for JournalEntryCollectionViewController.Item(0);
    *(swift_allocObject() + 16) = v53;
    v28 = v67;
    v27 = v68;
    sub_10000CA14(&v66, v67);
    (*(v27 + 8))(v28, v27);
    swift_storeEnumTagMultiPayload();
    v65[0] = v52;
    v8 = v57;
    v11 = v29;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    ++v24;
    sub_10000BA7C(&v66);
    v6 = v56;
    v22 = v60;
    v23 = v54;
LABEL_13:
    if (v24 >= v23)
    {
      swift_unknownObjectRelease();

      a2 = v50;
      v9 = v49;
      return (*(v9 + 32))(a2, v11, v8);
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10055FFA4(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_currentSearchText];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_currentTokenCount] = 0;
  *&v1[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_suggestions] = 0;
  *&v1[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_recentSearches] = 0;
  v4 = OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchSuggestionItemMap;
  *&v1[v4] = sub_100018290(_swiftEmptyArrayStorage);
  v1[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_isIndexing] = 0;
  *&v1[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController____lazy_storage___indexingAlertView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for JournalSearchResultsViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1005600B4(void *a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = (v2 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_currentSearchText);
  *v5 = 0;
  v5[1] = 0;
  *(v2 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_currentTokenCount) = 0;
  *(v2 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_suggestions) = 0;
  *(v2 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_recentSearches) = 0;
  v6 = OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchSuggestionItemMap;
  *(v2 + v6) = sub_100018290(_swiftEmptyArrayStorage);
  *(v2 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_isIndexing) = 0;
  *(v2 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController____lazy_storage___indexingAlertView) = 0;

  return sub_100013708(a1, a2);
}

void sub_100560174()
{
  sub_100038534(v0 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate);

  v1 = *(v0 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController____lazy_storage___indexingAlertView);
}

id sub_1005601F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalSearchResultsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005602C8(void *a1)
{
  v3 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v20 - v11;
  if ([a1 dataSource])
  {
    sub_1000F24EC(&unk_100AD7CC0);
    if (swift_dynamicCastClass())
    {
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v13 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
LABEL_6:
  sub_1000082B4(v12, v8, &unk_100AD7CB0);
  v14 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) != 1)
  {
    sub_1000082B4(v8, v5, &unk_100AD7CB0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload != 4 && EnumCaseMultiPayload != 5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_100004F84(v12, &unk_100AD7CB0);
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 3)
      {
LABEL_15:
        sub_100014184(v5, type metadata accessor for JournalEntryCollectionViewController.Item);
        goto LABEL_7;
      }
    }

    sub_100004F84(v12, &unk_100AD7CB0);
    sub_100014184(v5, type metadata accessor for JournalEntryCollectionViewController.Item);
LABEL_17:
    v17 = 1;
    goto LABEL_18;
  }

LABEL_7:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v16 = type metadata accessor for JournalSearchResultsViewController();
  v20.receiver = v1;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, "collectionView:canPerformPrimaryActionForItemAtIndexPath:", a1, isa);

  sub_100004F84(v12, &unk_100AD7CB0);
LABEL_18:
  sub_100004F84(v8, &unk_100AD7CB0);
  return v17;
}

uint64_t sub_1005606E8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v49 - v15;
  if ([a1 dataSource])
  {
    sub_1000F24EC(&unk_100AD7CC0);
    if (swift_dynamicCastClass())
    {
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v17 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
LABEL_6:
  sub_1000082B4(v16, v12, &unk_100AD7CB0);
  v18 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  if ((*(*(v18 - 8) + 48))(v12, 1, v18) == 1)
  {
LABEL_7:
    v19 = &v1[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 1);
      ObjectType = swift_getObjectType();
      (*(v20 + 80))(ObjectType, v20);
      swift_unknownObjectRelease();
    }

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v23 = type metadata accessor for JournalSearchResultsViewController();
    v52.receiver = v2;
    v52.super_class = v23;
    objc_msgSendSuper2(&v52, "collectionView:performPrimaryActionForItemAtIndexPath:", a1, isa);

    goto LABEL_10;
  }

  sub_1000082B4(v12, v9, &unk_100AD7CB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v45 = *v9;
      v44 = v9[1];
      v46 = &v1[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v47 = *(v46 + 1);
        v48 = swift_getObjectType();
        (*(v47 + 16))(v45, v44, v48, v47);

        swift_unknownObjectRelease();
        goto LABEL_10;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_24;
      }

      v35 = *v9;
      v34 = v9[1];
      v36 = v9[2];
      v37 = &v2[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v38 = *(v37 + 1);
        v39 = swift_getObjectType();
        (*(v38 + 56))(v35, v34, v36, v39, v38);
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v26 = v49;
      (*(v49 + 32))(v6, v9, v4);
      v27 = OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchSuggestionItemMap;
      swift_beginAccess();
      v28 = *&v2[v27];
      if (*(v28 + 16))
      {

        v29 = sub_100361E08(v6);
        if (v30)
        {
          sub_100086C04(*(v28 + 56) + 40 * v29, v50);

          sub_100364784(v50, v51);
          v31 = &v2[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = *(v31 + 1);
            v33 = swift_getObjectType();
            (*(v32 + 40))(v51, v33, v32);
            swift_unknownObjectRelease();
          }

          sub_10000BA7C(v51);
        }

        else
        {
        }
      }

      (*(v26 + 8))(v6, v4);
      goto LABEL_10;
    }

LABEL_24:
    sub_100014184(v9, type metadata accessor for JournalEntryCollectionViewController.Item);
    goto LABEL_7;
  }

  v40 = *v9;
  v41 = &v2[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v41 + 1);
    v43 = swift_getObjectType();
    (*(v42 + 8))(v40, v43, v42);
    swift_unknownObjectRelease();
  }

LABEL_10:
  sub_100004F84(v16, &unk_100AD7CB0);
  return sub_100004F84(v12, &unk_100AD7CB0);
}

uint64_t sub_100560E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for JournalFeatureFlags();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_100560F88, v7, v6);
}

uint64_t sub_100560F88()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v1 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_spotlightDelegate);
  v0[9] = v1;
  if (v1)
  {
    v2 = v0[6];

    v3 = v1;
    if (v2)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v0[10] = v4;
    v0[11] = v6;

    return _swift_task_switch(sub_1005610C0, v4, v6);
  }

  else
  {

    sub_10055AEAC();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1005610C0()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC7Journal32JournalCoreDataSpotlightDelegate_indexTimeKeeper);
  *(v0 + 96) = v1;
  return _swift_task_switch(sub_1005610EC, v1, 0);
}

uint64_t sub_1005610EC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  *(v0 + 104) = *(v2 + 112);
  *(v0 + 120) = *(v2 + 120);
  return _swift_task_switch(sub_100561118, *(v0 + 80), v1);
}

uint64_t sub_100561118()
{
  if (*(v0 + 120))
  {

    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    v3 = sub_1005615FC;
  }

  else
  {
    *(v0 + 112) = CFAbsoluteTimeGetCurrent();

    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    v3 = sub_1005611AC;
  }

  return _swift_task_switch(v3, v1, v2);
}

id sub_1005611AC()
{
  if (*(v0 + 112) - *(v0 + 104) >= 5.0)
  {
    v6 = *(v0 + 72);

    sub_10055AEAC();
  }

  else
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v3 = *(v0 + 24);
    *(*(v0 + 16) + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_isIndexing) = 1;
    (*(v2 + 104))(v1, enum case for JournalFeatureFlags.search(_:), v3);
    v4 = JournalFeatureFlags.isEnabled.getter();
    (*(v2 + 8))(v1, v3);
    if ((v4 & 1) == 0)
    {
      result = [*(v0 + 16) view];
      if (result)
      {
        v8 = result;
        v9 = *(v0 + 16);
        v10 = sub_100555748();
        [v8 addSubview:v10];

        v11 = OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController____lazy_storage___indexingAlertView;
        v12 = *(v9 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController____lazy_storage___indexingAlertView);
        p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
        v14 = [v12 superview];
        if (v14)
        {
          v15 = v14;
          [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
          v16 = [v12 leadingAnchor];
          v17 = [v15 leadingAnchor];
          v18 = [v16 constraintEqualToAnchor:v17];

          p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
          [v18 setConstant:0.0];
          [v18 setActive:1];

          v12 = v18;
        }

        v19 = *(v9 + v11);
        v20 = [v19 p_ivar_lyt[467]];
        if (v20)
        {
          v21 = v20;
          [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
          v22 = [v19 trailingAnchor];
          v23 = [v21 trailingAnchor];
          v24 = [v22 constraintEqualToAnchor:v23];

          [v24 setConstant:0.0];
          [v24 setActive:1];

          v19 = v24;
        }

        v25 = *(v0 + 16);
        v26 = *(v9 + v11);
        v27 = sub_100028DA0(0, 1, 0.0);

        v28 = [*(*(v9 + v11) + OBJC_IVAR____TtC7Journal17IndexingAlertView_bodyLabel) bottomAnchor];
        result = [v25 view];
        if (result)
        {
          v29 = result;
          v30 = *(v0 + 72);

          v31 = [v29 keyboardLayoutGuide];

          v32 = [v31 topAnchor];
          v33 = [v28 constraintLessThanOrEqualToAnchor:v32 constant:-16.0];

          [v33 setActive:1];
          goto LABEL_12;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v5 = *(v0 + 72);

    sub_1006D4E10(1);
  }

LABEL_12:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1005615FC()
{
  v1 = *(v0 + 72);

  sub_10055AEAC();

  v2 = *(v0 + 8);

  return v2();
}

void sub_100561734(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = objc_opt_self();
    v6 = [v5 standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 stringArrayForKey:v7];

    if (v8)
    {
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v10 = v9[2];
    if (v10 >= 3)
    {
      sub_10060FD24(v9, (v9 + 4), 0, 5uLL);
      v12 = v11;

      v10 = v12[2];
      v9 = v12;
    }

    if (v10)
    {
      v13 = 0;
      v14 = v9 + 5;
      while (1)
      {
        v15 = *(v14 - 1) == a1 && *v14 == a2;
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v13;
        v14 += 2;
        if (v10 == v13)
        {
          goto LABEL_19;
        }
      }

      sub_100691630(v13);
    }

LABEL_19:
    v16 = v9[2];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v16 >= v9[3] >> 1)
    {
      sub_10009BCC8(isUniquelyReferenced_nonNull_native, v16 + 1, 1, v9);
    }

    sub_10019BA44(0, 0, 1, a1, a2);

    v18 = [v5 standardUserDefaults];
    isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = String._bridgeToObjectiveC()();
    [v18 setValue:isa forKey:v20];
  }
}

uint64_t sub_100561990()
{
  v1 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  if (!v12)
  {
    (*(v5 + 56))(v3, 1, 1, v4, v9);
    goto LABEL_5;
  }

  v13 = v12;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_5:
    sub_100004F84(v3, &unk_100AD7CB0);
    v15 = 0;
    return v15 & 1;
  }

  sub_100561BB4(v3, v11, type metadata accessor for JournalEntryCollectionViewController.Item);
  swift_storeEnumTagMultiPayload();
  v14 = sub_10006FA94(v11, v7);
  sub_100014184(v7, type metadata accessor for JournalEntryCollectionViewController.Item);
  sub_100014184(v11, type metadata accessor for JournalEntryCollectionViewController.Item);
  v15 = v14 ^ 1;
  return v15 & 1;
}

uint64_t sub_100561BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100561C1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032EC8;

  return sub_10055B448(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100561D14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_10055E4BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100561DDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032ECC;

  return sub_10055B448(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100561EC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100560E94(a1, v4, v5, v6);
}

uint64_t sub_100561F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(sub_1000F24EC(&unk_100AE9300) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1000F24EC(&qword_100AE92F8) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1000F24EC(&qword_100AE92E8) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(sub_1000F24EC(&qword_100AE92E0) - 8);
  v16 = (v13 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(sub_1000F24EC(&qword_100AE92F0) - 8);
  v19 = (v16 + v17 + *(v18 + 80)) & ~*(v18 + 80);
  sub_1000F24EC(&qword_100AF1550);
  sub_1000F24EC(&qword_100ADE620);
  return sub_10055788C(a1, a2, a3, v3 + v7, v3 + v10, v3 + v13, v3 + v16, v3 + v19);
}

uint64_t sub_1005622E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100ADE610);

  return sub_1005594C8(a1, a2, a3);
}

uint64_t sub_1005623CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100562464(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005624AC()
{

  return swift_deallocObject();
}

uint64_t sub_100562510()
{

  return sub_10055D8C8();
}

id sub_100562600(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_pipelineComponentProvider] = 0;
  v3 = OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_routePinRenderer;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for RoutePinRenderer()) init];
  v4 = OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_locationPinRenderer;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for LocationPinRenderer()) init];
  v5 = OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_thumbnailRenderer;
  *&v1[OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_thumbnailRenderer] = 0;
  v6 = OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_latestImageRequestID;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[v5] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for EntryMapPinRenderer();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_100562728()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntryMapPinRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EntryMapPinRenderer()
{
  result = qword_100AE9370;
  if (!qword_100AE9370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100562834()
{
  sub_10006D1E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1005628FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhotoPinAnnotation();
  if (swift_dynamicCastClass())
  {
    v5 = OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_thumbnailRenderer;
  }

  else
  {
    type metadata accessor for RoutePinAnnotation();
    if (swift_dynamicCastClass())
    {
      v5 = OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_routePinRenderer;
    }

    else
    {
      type metadata accessor for LocationPinAnnotation();
      swift_dynamicCastClass();
      v5 = OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_locationPinRenderer;
    }
  }

  v6 = [*(v2 + v5) viewForAnnotation:a1 andMapView:a2];

  return v6;
}

size_t sub_100562A2C(void *a1, double a2, double a3)
{
  v7 = [a1 array];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_100584CFC(v8);

  if (!v9)
  {
    if ([a1 firstObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
    }

    v89 = v87;
    v90 = v88;
    if (*(&v88 + 1))
    {
      type metadata accessor for DataAggregator.EntryPlace(0);
      if (swift_dynamicCast())
      {
        v16 = *&v85[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName];
        v15 = *&v85[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName + 8];

        goto LABEL_16;
      }
    }

    else
    {
      sub_100004F84(&v89, &qword_100AD13D0);
    }

    v16 = 0;
    v15 = 0;
LABEL_16:
    if ([a1 firstObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
    }

    v89 = v87;
    v90 = v88;
    if (*(&v88 + 1))
    {
      type metadata accessor for DataAggregator.EntryPlace(0);
      if (swift_dynamicCast())
      {
        v17 = *&v85[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes];
        v18 = v17;

LABEL_24:
        v19 = type metadata accessor for LocationPinAnnotation();
        v20 = objc_allocWithZone(v19);
        v21 = &v20[OBJC_IVAR____TtC7Journal21LocationPinAnnotation_placeName];
        *v21 = 0;
        *(v21 + 1) = 0;
        v22 = OBJC_IVAR____TtC7Journal21LocationPinAnnotation_styleAttributes;
        *v21 = v16;
        *(v21 + 1) = v15;
        *&v20[v22] = v17;
        v86.receiver = v20;
        v86.super_class = v19;
        v14 = v17;
        v23 = objc_msgSendSuper2(&v86, "init");
LABEL_74:
        v34 = v23;
        [v34 setCoordinate:{a2, a3}];
        [v34 setGeotaggables:a1];

LABEL_84:
        return v34;
      }
    }

    else
    {
      sub_100004F84(&v89, &qword_100AD13D0);
    }

    v17 = 0;
    goto LABEL_24;
  }

  result = sub_100184C78();
  LOBYTE(v11) = result;
  if (!(v9 >> 62))
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_26:
    v14 = 0;
LABEL_27:
    if (v11 <= 1u)
    {
      if (!v11)
      {

        if (v14)
        {
          v29 = *&v14[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName];
          v28 = *&v14[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName + 8];
          v30 = *&v14[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes];
          v31 = v30;
        }

        else
        {
          v30 = 0;
          v29 = 0;
          v28 = 0;
        }

        v57 = type metadata accessor for LocationPinAnnotation();
        v58 = objc_allocWithZone(v57);
        v59 = &v58[OBJC_IVAR____TtC7Journal21LocationPinAnnotation_placeName];
        *v59 = 0;
        *(v59 + 1) = 0;
        v60 = OBJC_IVAR____TtC7Journal21LocationPinAnnotation_styleAttributes;
        *v59 = v29;
        *(v59 + 1) = v28;
        *&v58[v60] = v30;
        v81.receiver = v58;
        v81.super_class = v57;
        v61 = v30;
        v34 = objc_msgSendSuper2(&v81, "init");
        [v34 setCoordinate:{a2, a3}];
        [v34 setGeotaggables:a1];

        [v34 setCoordinate:{a2, a3}];
        [v34 setGeotaggables:a1];
        [v34 setRenderer:*(v3 + OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_locationPinRenderer)];
        v62 = *(v3 + OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_pipelineComponentProvider);
        if (v62)
        {
          v36 = [v62 selectionHandler];
          goto LABEL_81;
        }

        goto LABEL_82;
      }

      v78 = v14;
      if (v12)
      {
        v40 = 0;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v40 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_95;
            }

            v41 = *(v9 + 8 * v40 + 32);
          }

          v11 = v41;
          v42 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

          *&v89 = v41;
          if (sub_1005635A0(&v89))
          {
            break;
          }

          ++v40;
          if (v42 == v12)
          {
            goto LABEL_57;
          }
        }

        v72 = *&v11[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName];
        v71 = *&v11[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName + 8];
        v73 = type metadata accessor for PhotoPinAnnotation();
        v74 = objc_allocWithZone(v73);
        v75 = &v74[OBJC_IVAR____TtC7Journal18PhotoPinAnnotation_placeName];
        *v75 = v72;
        *(v75 + 1) = v71;
        v79.receiver = v74;
        v79.super_class = v73;

        v34 = objc_msgSendSuper2(&v79, "init");
        [v34 setCoordinate:{a2, a3}];
        [v34 setGeotaggables:a1];
        [v34 setCoordinate:{a2, a3}];
        [v34 setGeotaggables:a1];
        [v34 setRenderer:*(v3 + OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_thumbnailRenderer)];
        v76 = *(v3 + OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_pipelineComponentProvider);
        if (v76)
        {
          v70 = [v76 selectionHandler];
          goto LABEL_89;
        }

LABEL_90:
        v77 = 0;
        goto LABEL_91;
      }
    }

    else
    {
      if (v11 == 2)
      {

        v32 = type metadata accessor for RoutePinAnnotation();
        v80.receiver = objc_allocWithZone(v32);
        v80.super_class = v32;
        v33 = objc_msgSendSuper2(&v80, "init");
        [v33 setGeotaggables:a1];
        [v33 setCoordinate:{a2, a3}];
        v34 = v33;
        [v34 setCoordinate:{a2, a3}];
        [v34 setGeotaggables:a1];
        [v34 setRenderer:*(v3 + OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_routePinRenderer)];
        v35 = *(v3 + OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_pipelineComponentProvider);
        if (v35)
        {
          v36 = [v35 selectionHandler];
LABEL_81:
          v63 = v36;
LABEL_83:
          [v34 setSelectionHandler:v63];

          swift_unknownObjectRelease();
          goto LABEL_84;
        }

LABEL_82:
        v63 = 0;
        goto LABEL_83;
      }

      if (v11 == 3)
      {

        if (v14)
        {
          v25 = *&v14[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName];
          v24 = *&v14[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName + 8];
          v26 = *&v14[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes];
          v27 = v26;
        }

        else
        {
          v26 = 0;
          v25 = 0;
          v24 = 0;
        }

        v51 = type metadata accessor for LocationPinAnnotation();
        v52 = objc_allocWithZone(v51);
        v53 = &v52[OBJC_IVAR____TtC7Journal21LocationPinAnnotation_placeName];
        *v53 = 0;
        *(v53 + 1) = 0;
        v54 = OBJC_IVAR____TtC7Journal21LocationPinAnnotation_styleAttributes;
        *v53 = v25;
        *(v53 + 1) = v24;
        *&v52[v54] = v26;
        v84.receiver = v52;
        v84.super_class = v51;
        v55 = v26;
        v34 = objc_msgSendSuper2(&v84, "init");
        [v34 setCoordinate:{a2, a3}];
        [v34 setGeotaggables:a1];

        [v34 setCoordinate:{a2, a3}];
        [v34 setGeotaggables:a1];
        [v34 setRenderer:*(v3 + OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_locationPinRenderer)];
        v56 = *(v3 + OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_pipelineComponentProvider);
        if (v56)
        {
          v36 = [v56 selectionHandler];
          goto LABEL_81;
        }

        goto LABEL_82;
      }

      v78 = v14;
      if (v12)
      {
        v37 = 0;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v37 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_94;
            }

            v38 = *(v9 + 8 * v37 + 32);
          }

          v11 = v38;
          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_93;
          }

          *&v89 = v38;
          if (sub_1005635A0(&v89))
          {
            break;
          }

          ++v37;
          if (v39 == v12)
          {
            goto LABEL_57;
          }
        }

        v65 = *&v11[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName];
        v64 = *&v11[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName + 8];
        v66 = type metadata accessor for PhotoPinAnnotation();
        v67 = objc_allocWithZone(v66);
        v68 = &v67[OBJC_IVAR____TtC7Journal18PhotoPinAnnotation_placeName];
        *v68 = v65;
        *(v68 + 1) = v64;
        v83.receiver = v67;
        v83.super_class = v66;

        v34 = objc_msgSendSuper2(&v83, "init");
        [v34 setCoordinate:{a2, a3}];
        [v34 setGeotaggables:a1];
        [v34 setCoordinate:{a2, a3}];
        [v34 setGeotaggables:a1];
        [v34 setRenderer:*(v3 + OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_thumbnailRenderer)];
        v69 = *(v3 + OBJC_IVAR____TtC7Journal19EntryMapPinRenderer_pipelineComponentProvider);
        if (!v69)
        {
          goto LABEL_90;
        }

        v70 = [v69 selectionHandler];
LABEL_89:
        v77 = v70;
LABEL_91:
        v14 = v78;
        [v34 setSelectionHandler:v77];

        swift_unknownObjectRelease();
        goto LABEL_84;
      }
    }

LABEL_57:

    if ([a1 firstObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
    }

    v89 = v87;
    v90 = v88;
    if (*(&v88 + 1))
    {
      type metadata accessor for DataAggregator.EntryPlace(0);
      if (swift_dynamicCast())
      {
        v44 = *&v85[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName];
        v43 = *&v85[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName + 8];

        goto LABEL_65;
      }
    }

    else
    {
      sub_100004F84(&v89, &qword_100AD13D0);
    }

    v44 = 0;
    v43 = 0;
LABEL_65:
    if ([a1 firstObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
    }

    v89 = v87;
    v90 = v88;
    if (*(&v88 + 1))
    {
      type metadata accessor for DataAggregator.EntryPlace(0);
      if (swift_dynamicCast())
      {
        v45 = *&v85[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes];
        v46 = v45;

LABEL_73:
        v47 = type metadata accessor for LocationPinAnnotation();
        v48 = objc_allocWithZone(v47);
        v49 = &v48[OBJC_IVAR____TtC7Journal21LocationPinAnnotation_placeName];
        *v49 = 0;
        *(v49 + 1) = 0;
        v50 = OBJC_IVAR____TtC7Journal21LocationPinAnnotation_styleAttributes;
        *v49 = v44;
        *(v49 + 1) = v43;
        *&v48[v50] = v45;
        v82.receiver = v48;
        v82.super_class = v47;
        v14 = v45;
        v23 = objc_msgSendSuper2(&v82, "init");
        goto LABEL_74;
      }
    }

    else
    {
      sub_100004F84(&v89, &qword_100AD13D0);
    }

    v45 = 0;
    goto LABEL_73;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v12 = result;
  if (!result)
  {
    goto LABEL_26;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_96:
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v9 + 32);
LABEL_7:
    v14 = v13;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005635A0(uint64_t *a1)
{
  v2 = type metadata accessor for AssetType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v60 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000F24EC(&unk_100ADC680);
  __chkstk_darwin(v5);
  v59 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v63 = &v54[-v8];
  __chkstk_darwin(v9);
  v11 = &v54[-v10];
  v12 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v12 - 8);
  v57 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v62 = &v54[-v15];
  __chkstk_darwin(v16);
  v58 = &v54[-v17];
  __chkstk_darwin(v18);
  v61 = &v54[-v19];
  __chkstk_darwin(v20);
  v22 = &v54[-v21];
  __chkstk_darwin(v23);
  v25 = &v54[-v24];
  v26 = *a1;
  v27 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
  swift_beginAccess();
  v28 = v3[13];
  v67 = v3 + 13;
  v65 = v28;
  v28(v25, enum case for AssetType.photo(_:), v2);
  v29 = v3[7];
  v66 = v3 + 7;
  v64 = v29;
  v29(v25, 0, 1, v2);
  v70 = v5;
  v30 = *(v5 + 48);
  v68 = v27;
  v69 = v26;
  sub_1000082B4(v26 + v27, v11, &qword_100AE4290);
  v31 = v3;
  sub_1000082B4(v25, &v11[v30], &qword_100AE4290);
  v32 = v3[6];
  if ((v32)(v11, 1, v2) == 1)
  {
    sub_100004F84(v25, &qword_100AE4290);
    if ((v32)(&v11[v30], 1, v2) == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  sub_1000082B4(v11, v22, &qword_100AE4290);
  if ((v32)(&v11[v30], 1, v2) == 1)
  {
    sub_100004F84(v25, &qword_100AE4290);
    (v31[1])(v22, v2);
LABEL_6:
    sub_100004F84(v11, &unk_100ADC680);
    v33 = v63;
    goto LABEL_7;
  }

  v42 = v32;
  v43 = v60;
  (v31[4])(v60, &v11[v30], v2);
  sub_100006ACC(&qword_100ADC690, &type metadata accessor for AssetType);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = v31;
  v44 = v31[1];
  v45 = v43;
  v32 = v42;
  v44(v45, v2);
  sub_100004F84(v25, &qword_100AE4290);
  v44(v22, v2);
  v31 = v56;
  sub_100004F84(v11, &qword_100AE4290);
  v33 = v63;
  if (v55)
  {
    goto LABEL_17;
  }

LABEL_7:
  v34 = v61;
  v65(v61, enum case for AssetType.livePhoto(_:), v2);
  v64(v34, 0, 1, v2);
  v35 = *(v70 + 48);
  sub_1000082B4(v69 + v68, v33, &qword_100AE4290);
  sub_1000082B4(v34, v33 + v35, &qword_100AE4290);
  if ((v32)(v33, 1, v2) != 1)
  {
    v39 = v58;
    sub_1000082B4(v33, v58, &qword_100AE4290);
    if ((v32)(v33 + v35, 1, v2) != 1)
    {
      v47 = v60;
      (v31[4])(v60, v33 + v35, v2);
      sub_100006ACC(&qword_100ADC690, &type metadata accessor for AssetType);
      LODWORD(v56) = dispatch thunk of static Equatable.== infix(_:_:)();
      v63 = v32;
      v48 = v31;
      v49 = v31[1];
      v49(v47, v2);
      sub_100004F84(v34, &qword_100AE4290);
      v49(v39, v2);
      v31 = v48;
      v32 = v63;
      sub_100004F84(v33, &qword_100AE4290);
      v37 = v62;
      if (v56)
      {
        goto LABEL_17;
      }

LABEL_13:
      v65(v37, enum case for AssetType.video(_:), v2);
      v64(v37, 0, 1, v2);
      v40 = *(v70 + 48);
      v11 = v59;
      sub_1000082B4(v69 + v68, v59, &qword_100AE4290);
      sub_1000082B4(v37, &v11[v40], &qword_100AE4290);
      if ((v32)(v11, 1, v2) == 1)
      {
        sub_100004F84(v37, &qword_100AE4290);
        if ((v32)(&v11[v40], 1, v2) == 1)
        {
LABEL_15:
          v38 = v11;
          goto LABEL_16;
        }
      }

      else
      {
        v46 = v57;
        sub_1000082B4(v11, v57, &qword_100AE4290);
        if ((v32)(&v11[v40], 1, v2) != 1)
        {
          v50 = v60;
          (v31[4])(v60, &v11[v40], v2);
          sub_100006ACC(&qword_100ADC690, &type metadata accessor for AssetType);
          v51 = v46;
          v41 = dispatch thunk of static Equatable.== infix(_:_:)();
          v52 = v31[1];
          v52(v50, v2);
          sub_100004F84(v37, &qword_100AE4290);
          v52(v51, v2);
          sub_100004F84(v11, &qword_100AE4290);
          return v41 & 1;
        }

        sub_100004F84(v37, &qword_100AE4290);
        (v31[1])(v46, v2);
      }

      sub_100004F84(v11, &unk_100ADC680);
      v41 = 0;
      return v41 & 1;
    }

    sub_100004F84(v34, &qword_100AE4290);
    (v31[1])(v39, v2);
    v37 = v62;
LABEL_12:
    sub_100004F84(v33, &unk_100ADC680);
    goto LABEL_13;
  }

  sub_100004F84(v34, &qword_100AE4290);
  v36 = (v32)(v33 + v35, 1, v2);
  v37 = v62;
  if (v36 != 1)
  {
    goto LABEL_12;
  }

  v38 = v33;
LABEL_16:
  sub_100004F84(v38, &qword_100AE4290);
LABEL_17:
  v41 = 1;
  return v41 & 1;
}

uint64_t sub_100564218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005642B4, v6, v5);
}

uint64_t sub_1005642B4()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10056438C;
  v5 = v0[2];

  return sub_1005653C4(v5);
}

uint64_t sub_10056438C(uint64_t a1, void *a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 32);
  v9 = *v3;

  swift_unknownObjectRelease();

  if (v2)
  {
    if (v7)
    {
      v10 = *(v6 + 48);
      v11 = _convertErrorToNSError(_:)();

      (v10)[2](v10, 0, 0, v11, 0);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else
  {
    if (v7)
    {
      v12 = *(v6 + 48);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      (v12)[2](v12, a1, a2, 0, isa);
      _Block_release(v12);
    }

    swift_unknownObjectRelease();
  }

  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_1005645BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100032ECC;

  return sub_100564218(v2, v3, v5, v4);
}

uint64_t sub_100564694(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = v9;
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AE9470);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  if (qword_100ACFB88 != -1)
  {
    swift_once();
  }

  v47 = qword_100B2F620;
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = *(v12 + 32);
  v56 = v16;
  v17(v16 + v15, v14, v11);
  v18 = [objc_opt_self() currentTraitCollection];
  v19 = (*((swift_isaMask & *a2) + 0x2F8))(0, 6, v18);
  v21 = v20;
  v22 = *((swift_isaMask & *a2) + 0x2F0);
  v48 = v18;
  v45 = v22(6, 0, 1, v19, v20, v18);
  v23 = swift_getObjectType();
  v24 = swift_conformsToProtocol2();
  if (v24)
  {
    v44 = sub_1000387D4(v23, v24);
  }

  else
  {
    v44 = 0;
  }

  v25 = (a2 + OBJC_IVAR____TtC7Journal5Asset_thumbnailCacheKey);
  *v25 = v19;
  v25[1] = v21;

  v43 = *(a2 + OBJC_IVAR____TtC7Journal5Asset_attachmentIdsMissingFile);
  v26 = *(a2 + OBJC_IVAR____TtC7Journal5Asset_attachments);
  if (v26 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v8 + 16))(v10, a2 + OBJC_IVAR____TtC7Journal5Asset_id, v7);
  v27 = v7;
  v28 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v29 = v28 + v46;
  v30 = (((v28 + v46) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = v19;
  *(v31 + 3) = v21;
  v32 = v56;
  *(v31 + 4) = sub_10008E31C;
  *(v31 + 5) = v32;
  v33 = v45;
  v34 = v47;
  *(v31 + 6) = v45;
  *(v31 + 7) = v34;
  *(v31 + 8) = v42;
  (*(v8 + 32))(&v31[v28], v10, v27);
  v31[v29] = v44;
  *&v31[(v29 & 0xFFFFFFFFFFFFFFF8) + 8] = v43;
  *&v31[v30] = ObjectType;
  aBlock[4] = sub_100077704;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A73430;
  v35 = _Block_copy(aBlock);

  v36 = v33;
  v34;
  v37 = v50;
  static DispatchQoS.unspecified.getter();
  v57 = _swiftEmptyArrayStorage;
  sub_100006ACC(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  v38 = v52;
  v39 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  (*(v54 + 8))(v38, v39);
  (*(v51 + 8))(v37, v53);
}

uint64_t sub_100564D88(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100032EC8;

  return v6();
}

uint64_t sub_100564E70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100032ECC;

  return v7();
}

uint64_t sub_100564F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000082B4(a3, v23 - v10, &qword_100AD5170);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100004F84(v11, &qword_100AD5170);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100004F84(a3, &qword_100AD5170);

    return v21;
  }

LABEL_8:
  sub_100004F84(a3, &qword_100AD5170);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100565254(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032EC8;

  return sub_100008D4C(a1, v4);
}

uint64_t sub_10056530C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032ECC;

  return sub_100008D4C(a1, v4);
}

uint64_t sub_1005653C4(uint64_t a1)
{
  v1[9] = a1;
  v2 = type metadata accessor for ImageResource();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v5;
  v1[19] = v4;

  return _swift_task_switch(sub_100565518, v5, v4);
}

uint64_t sub_100565518()
{
  type metadata accessor for DataAggregator.EntryPlace(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    sub_1000F24EC(&unk_100AD4780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100941D50;
    *(inited + 32) = v2;
    swift_unknownObjectRetain_n();
    v4 = sub_100184C78();
    swift_setDeallocating();
    swift_arrayDestroy();
    if (sub_1006B7EA4(v4, &off_100A5A4D0))
    {
      v5 = *(v2 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs);
      if (v5)
      {
        if (*(v5 + 16))
        {
          (*(v0[14] + 16))(v0[15], v5 + ((*(v0[14] + 80) + 32) & ~*(v0[14] + 80)), v0[13]);
          if (qword_100ACFE28 != -1)
          {
            swift_once();
          }

          v6 = v0[15];
          v7 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
          v8 = swift_task_alloc();
          *(v8 + 16) = v6;
          *(v8 + 24) = v7;
          v9 = v7;
          sub_1000F24EC(&unk_100AE9460);
          NSManagedObjectContext.performAndWait<A>(_:)();

          v24 = v0[7];
          v0[20] = v24;
          if (v24)
          {
            v0[21] = static MainActor.shared.getter();
            v25 = dispatch thunk of Actor.unownedExecutor.getter();
            v18 = v26;
            v0[22] = v25;
            v0[23] = v26;
            v16 = sub_100565964;
            v17 = v25;

            return _swift_task_switch(v16, v17, v18);
          }

          (*(v0[14] + 8))(v0[15], v0[13]);
        }
      }
    }

    swift_unknownObjectRelease();
  }

  sub_10003B9B4();
  if (qword_100AD0D80 != -1)
  {
    swift_once();
  }

  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];
  v13 = sub_10000617C(v12, qword_100B31790);
  (*(v11 + 16))(v10, v13, v12);
  v14 = UIImage.init(resource:)();
  v15 = [v14 CGImage];

  if (!v15)
  {
    __break(1u);
    return _swift_task_switch(v16, v17, v18);
  }

  v19 = v15;

  v20 = sub_1003630D0(_swiftEmptyArrayStorage);

  swift_unknownObjectRetain();

  v21 = v0[1];
  v22 = v0[9];

  return v21(v22, v19, v20);
}

uint64_t sub_100565964()
{
  v1 = v0[20];
  v2 = static MainActor.shared.getter();
  v0[24] = v2;
  v3 = swift_task_alloc();
  v0[25] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[26] = v4;
  v5 = sub_1000F24EC(&qword_100AE4D18);
  *v4 = v0;
  v4[1] = sub_100565A80;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 8, v2, &protocol witness table for MainActor, 0xD000000000000011, 0x80000001008FA710, sub_100565E90, v3, v5);
}

uint64_t sub_100565A80()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_100565BE0, v3, v2);
}

uint64_t sub_100565BE0()
{

  v0[27] = v0[8];
  v1 = v0[18];
  v2 = v0[19];

  return _swift_task_switch(sub_100565C4C, v1, v2);
}

void sub_100565C4C()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = [*(v0 + 216) CGImage];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + 160);
      v6 = *(v0 + 112);
      v5 = *(v0 + 120);
      v7 = *(v0 + 104);

      swift_unknownObjectRetain();
      v8 = sub_1003630D0(_swiftEmptyArrayStorage);

      swift_unknownObjectRelease();
      (*(v6 + 8))(v5, v7);
      goto LABEL_10;
    }
  }

  swift_unknownObjectRelease();
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 104);

  (*(v10 + 8))(v9, v11);
  sub_10003B9B4();
  if (qword_100AD0D80 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v14 = *(v0 + 80);
  v15 = sub_10000617C(v14, qword_100B31790);
  (*(v13 + 16))(v12, v15, v14);
  v16 = UIImage.init(resource:)();
  v17 = [v16 CGImage];

  if (!v17)
  {
    __break(1u);
    return;
  }

  v3 = v17;

  v8 = sub_1003630D0(_swiftEmptyArrayStorage);

  swift_unknownObjectRetain();
LABEL_10:

  v18 = *(v0 + 8);
  v19 = *(v0 + 72);

  v18(v19, v3, v8);
}

uint64_t sub_100565ED8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[0] = a3;
  v26 = a1;
  v27 = a2;
  v28 = sub_1000F24EC(&qword_100AE9518);
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = v23 - v4;
  v6 = sub_1000F24EC(&qword_100AE9520);
  __chkstk_darwin(v6 - 8);
  v8 = v23 - v7;
  v9 = sub_1000F24EC(&qword_100AE9528);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  v13 = sub_1000F24EC(&qword_100AE9530);
  v24 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = v23 - v15;
  (*(v10 + 16))(v12, v23[1], v9, v14);
  sub_10000B58C(&qword_100AE9538, &qword_100AE9528);
  dispatch thunk of Sequence.makeIterator()();
  sub_10000B58C(&qword_100AE9540, &qword_100AE9530);
  dispatch thunk of IteratorProtocol.next()();
  v17 = *(v25 + 48);
  while (1)
  {
    if (v17(v8, 1, v28) == 1)
    {
      (*(v24 + 8))(v16, v13);
      v19 = 1;
      v20 = v23[0];
      return (*(v25 + 56))(v20, v19, 1, v28);
    }

    sub_100573218(v8, v5);
    v18 = v26(v5);
    if (v3)
    {
      sub_100004F84(v5, &qword_100AE9518);
      return (*(v24 + 8))(v16, v13);
    }

    if (v18)
    {
      break;
    }

    sub_100004F84(v5, &qword_100AE9518);
    dispatch thunk of IteratorProtocol.next()();
  }

  (*(v24 + 8))(v16, v13);
  v22 = v23[0];
  sub_100573218(v5, v23[0]);
  v20 = v22;
  v19 = 0;
  return (*(v25 + 56))(v20, v19, 1, v28);
}

uint64_t sub_1005662D4()
{
  v1 = type metadata accessor for IndexSet.Index();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100AE94F8);
  v10 = __chkstk_darwin(v9);
  v12 = v29 - v11;
  (*(v6 + 16))(v8, v0, v5, v10);
  sub_10004B990(&qword_100AE9500, &type metadata accessor for IndexSet);
  dispatch thunk of Sequence.makeIterator()();
  sub_10004B990(&qword_100AE9508, &type metadata accessor for IndexSet);
  dispatch thunk of Collection.endIndex.getter();
  v13 = sub_10004B990(&qword_100AE9510, &type metadata accessor for IndexSet.Index);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = v2 + 8;
  v30 = *(v2 + 8);
  v30(v4, v1);
  v16 = 0;
  v29[1] = v14;
  if ((v14 & 1) == 0)
  {
    v18 = dispatch thunk of Collection.subscript.read();
    v16 = *v19;
    v18(v31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    while (1)
    {
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30(v4, v1);
      if (v20)
      {
        break;
      }

      v21 = v12;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v4;
      v24 = v1;
      v25 = v13;
      v26 = v15;
      v28 = *v27;
      v22(v31, 0);
      dispatch thunk of Collection.formIndex(after:)();
      if (v16 <= v28)
      {
        v16 = v28;
      }

      v15 = v26;
      v13 = v25;
      v1 = v24;
      v4 = v23;
      v12 = v21;
      dispatch thunk of Collection.endIndex.getter();
    }
  }

  sub_100004F84(v12, &qword_100AE94F8);
  return v16;
}

uint64_t sub_1005666C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = type metadata accessor for AssetPlacement();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v5[12] = *(v9 + 64);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v10 = type metadata accessor for JournalFeatureFlags();
  v5[15] = v10;
  v5[16] = *(v10 - 8);
  v5[17] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v5[18] = v11;
  v5[19] = v13;

  return _swift_task_switch(sub_100566890, v11, v13);
}

uint64_t sub_100566890()
{
  v56 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v2 + 104))(v1, enum case for JournalFeatureFlags.enhancedSync(_:), v3);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_100ACFF60 != -1)
    {
      swift_once();
    }

    v5 = v0[14];
    v6 = v0[10];
    v7 = v0[11];
    v9 = v0[4];
    v8 = v0[5];
    v10 = type metadata accessor for Logger();
    sub_10000617C(v10, qword_100AE9478);
    v11 = *(v7 + 16);
    v11(v5, v8, v6);
    v12 = v9;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[14];
    v54 = v11;
    if (v15)
    {
      v52 = v0[11];
      v49 = v0[13];
      v50 = v0[10];
      v17 = v0[4];
      v18 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v18 = 136315394;
      v19 = v17;
      v20 = [v19 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = sub_100008458(v21, v23, &v55);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      v11(v49, v16, v50);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      (*(v52 + 8))(v16, v50);
      v28 = sub_100008458(v25, v27, &v55);

      *(v18 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v13, v14, "EntryViewModel.moveAsset %s, to: %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v35 = v0[10];
      v36 = v0[11];

      (*(v36 + 8))(v16, v35);
    }

    v37 = v0[13];
    v39 = v0[10];
    v38 = v0[11];
    v40 = v0[8];
    v51 = v0[7];
    v53 = v0[9];
    v42 = v0[4];
    v41 = v0[5];
    v43 = swift_allocObject();
    swift_weakInit();
    v54(v37, v41, v39);
    v44 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v45 = swift_allocObject();
    v0[20] = v45;
    *(v45 + 16) = v43;
    *(v45 + 24) = v42;
    (*(v38 + 32))(v45 + v44, v37, v39);
    (*(v40 + 104))(v53, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v51);
    v46 = v42;
    v47 = swift_task_alloc();
    v0[21] = v47;
    *v47 = v0;
    v47[1] = sub_100566D60;
    v48 = v0[9];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v47, v48, sub_100572EA0, v45, &type metadata for () + 8);
  }

  else
  {
    v29 = swift_task_alloc();
    v0[22] = v29;
    *v29 = v0;
    v29[1] = sub_100566EB4;
    v30 = v0[5];
    v31 = v0[3];
    v32 = v0[4];
    v33 = v0[2];

    return sub_1001FE290(v33, v31, v32, v30);
  }
}

uint64_t sub_100566D60()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v4 = v2[18];
    v5 = v2[19];

    return _swift_task_switch(sub_100573288, v4, v5);
  }
}

uint64_t sub_100566EB4()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_100573288, v3, v2);
}

uint64_t sub_100566FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  sub_1000F24EC(&qword_100AD1420);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for MergeableEntryAttributes();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD6260);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for MergeableEntryAssetsPlacement();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE94C8);
  v5[18] = swift_task_alloc();
  v9 = type metadata accessor for AssetPlacement();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v10 = type metadata accessor for JournalFeatureFlags();
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v5[25] = v11;
  v5[26] = v13;

  return _swift_task_switch(sub_100567294, v11, v13);
}

uint64_t sub_100567294()
{
  v55 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  (*(v2 + 104))(v1, enum case for JournalFeatureFlags.enhancedSync(_:), v3);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_100ACFF60 != -1)
    {
      swift_once();
    }

    v6 = v0[7];
    v5 = v0[8];
    v7 = type metadata accessor for Logger();
    v0[27] = sub_10000617C(v7, qword_100AE9478);
    v8 = v6;
    v9 = v5;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v52 = v11;
      v12 = v0[7];
      v13 = v0[8];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v14 = 138413058;
      *(v14 + 4) = v12;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v13;
      *v15 = v12;
      v15[1] = v13;
      *(v14 + 22) = 2080;
      type metadata accessor for UUID();
      sub_10004B990(&qword_100AE19B0, &type metadata accessor for UUID);
      v16 = v12;
      v13;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = sub_100008458(v17, v18, &v54);

      *(v14 + 24) = v19;
      *(v14 + 32) = 2080;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = sub_100008458(v20, v21, &v54);

      *(v14 + 34) = v22;
      _os_log_impl(&_mh_execute_header, v10, v52, "EntryViewModel.replaceAsset(old: %@, new: %@ [oldAssetId: %s, newAssetId: %s]", v14, 0x2Au);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    v23 = v0[14];
    v24 = v0[11];
    v25 = v0[12];
    v26 = v0[9];
    v27 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_1000082B4(v26 + v27, v23, &qword_100AD6260);
    v28 = (*(v25 + 48))(v23, 1, v24);
    v29 = v0[19];
    v30 = v0[20];
    v31 = v0[18];
    if (v28)
    {
      sub_100004F84(v0[14], &qword_100AD6260);
      (*(v30 + 56))(v31, 1, 1, v29);
    }

    else
    {
      v39 = v0[16];
      v38 = v0[17];
      v40 = v0[14];
      v41 = v0[12];
      v42 = v0[13];
      v43 = v0[11];
      v53 = v0[15];
      (*(v41 + 16))(v42, v40, v43);
      sub_100004F84(v40, &qword_100AD6260);
      MergeableEntryAttributes.assetPlacement.getter();
      (*(v41 + 8))(v42, v43);
      MergeableEntryAssetsPlacement.assetPlacement(forAssetID:)();
      (*(v39 + 8))(v38, v53);
      if ((*(v30 + 48))(v31, 1, v29) != 1)
      {
        (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
LABEL_15:
        v48 = swift_task_alloc();
        v0[28] = v48;
        *v48 = v0;
        v48[1] = sub_100567880;
        v49 = v0[6];
        v50 = v0[7];
        v51 = v0[5];

        return sub_10056E37C(v51, v49, v50, 0);
      }
    }

    v45 = v0[20];
    v44 = v0[21];
    v47 = v0[18];
    v46 = v0[19];
    *v44 = static AssetPlacement.maxGridCount.getter();
    (*(v45 + 104))(v44, enum case for AssetPlacement.grid(_:), v46);
    if ((*(v45 + 48))(v47, 1, v46) != 1)
    {
      sub_100004F84(v0[18], &qword_100AE94C8);
    }

    goto LABEL_15;
  }

  v32 = swift_task_alloc();
  v0[31] = v32;
  *v32 = v0;
  v32[1] = sub_100568064;
  v33 = v0[8];
  v34 = v0[6];
  v35 = v0[7];
  v36 = v0[5];

  return sub_1001FC7C4(v36, v34, v35, v33);
}

uint64_t sub_100567880(char a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);

  return _swift_task_switch(sub_1005679A8, v4, v3);
}

uint64_t sub_1005679A8()
{
  if (*(v0 + 256) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 232) = v1;
    *v1 = v0;
    v1[1] = sub_100567C00;
    v2 = *(v0 + 168);
    v3 = *(v0 + 64);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);

    return sub_10056B238(v5, v4, v3, v2, 1);
  }

  else
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 56);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 56);
      v12 = *(v0 + 64);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      *(v14 + 4) = v13;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v12;
      *v15 = v13;
      v15[1] = v12;
      v16 = v13;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "EntryViewModel.replaceAsset exiting early because remove failed. oldAsset=%@ newAsset=%@", v14, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }

    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v20 = *(v0 + 152);

    (*(v19 + 8))(v18, v20);

    v21 = *(v0 + 8);

    return v21(0);
  }
}

uint64_t sub_100567C00()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return _swift_task_switch(sub_100567D20, v3, v2);
}

uint64_t sub_100567D20()
{
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_100567DB8;
  v2 = *(v0 + 40);

  return sub_1001FB328(v2);
}

uint64_t sub_100567DB8()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return _swift_task_switch(sub_100567ED8, v3, v2);
}

uint64_t sub_100567ED8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[10];
  v5 = v0[8];
  v6 = OBJC_IVAR____TtC7Journal5Asset_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, v5 + v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  sub_1001F81C4(v4);
  sub_100004F84(v4, &qword_100AD1420);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(1);
}

uint64_t sub_100568064(char a1)
{
  v2 = *v1;
  *(*v1 + 257) = a1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);

  return _swift_task_switch(sub_10056818C, v4, v3);
}

uint64_t sub_10056818C()
{
  v1 = *(v0 + 257);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10056824C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  v6 = type metadata accessor for UUID();
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[34] = v7;
  v4[35] = *(v7 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v8 = type metadata accessor for JournalFeatureFlags();
  v4[38] = v8;
  v4[39] = *(v8 - 8);
  v4[40] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v4[41] = v9;
  v4[42] = v11;

  return _swift_task_switch(sub_100568410, v9, v11);
}

uint64_t sub_100568410()
{
  v27 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  (*(v2 + 104))(v1, enum case for JournalFeatureFlags.enhancedSync(_:), v3);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_100ACFF60 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000617C(v5, qword_100AE9478);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v8 = 136315138;
      sub_10004B990(&qword_100AD4B40, &type metadata accessor for UUID);
      v10 = Set.description.getter();
      v12 = sub_100008458(v10, v11, &v26);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "EntryViewModel.removeAssets(%s)", v8, 0xCu);
      sub_10000BA7C(v9);
    }

    v13 = *(v0 + 296);
    v14 = *(v0 + 280);
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    *(v0 + 344) = *(v15 + 24);
    v17 = swift_allocObject();
    *(v0 + 352) = v17;
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    *(v17 + 32) = 1;
    *(v0 + 424) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    v18 = *(v14 + 104);
    *(v0 + 360) = v18;
    *(v0 + 368) = (v14 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v18(v13);

    v19 = swift_task_alloc();
    *(v0 + 376) = v19;
    *v19 = v0;
    v19[1] = sub_10056879C;
    v20 = *(v0 + 296);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 428, v20, sub_100572DC8, v17, &type metadata for Bool);
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 416) = v21;
    *v21 = v0;
    v21[1] = sub_100569094;
    v22 = *(v0 + 232);
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);

    return sub_1001FA5DC(v24, v23, v22);
  }
}

uint64_t sub_10056879C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[37];
    v5 = v2[34];
    v6 = v2[35];
    v7 = *(v6 + 8);
    v2[48] = v7;
    v2[49] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[41];
    v9 = v2[42];

    return _swift_task_switch(sub_1005688EC, v8, v9);
  }
}

uint64_t sub_1005688EC()
{
  v1 = swift_task_alloc();
  *(v0 + 400) = v1;
  *v1 = v0;
  v1[1] = sub_100568984;
  v2 = *(v0 + 216);

  return sub_1001FB328(v2);
}

uint64_t sub_100568984()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return _swift_task_switch(sub_100568AA4, v3, v2);
}

uint64_t sub_100568AA4()
{
  (*(v0 + 360))(*(v0 + 288), *(v0 + 424), *(v0 + 272));

  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_100568B84;
  v2 = *(v0 + 288);
  v3 = *(v0 + 240);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_100572DE8, v3, &type metadata for () + 8);
}

uint64_t sub_100568B84()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 384))(*(v2 + 288), *(v2 + 272));

    v4 = *(v2 + 328);
    v5 = *(v2 + 336);

    return _swift_task_switch(sub_100568CD0, v4, v5);
  }
}

void sub_100568CD0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  *(v0 + 208) = sub_1004959AC(&off_100A58710);
  PassthroughSubject.send(_:)();

  v3 = v2 + 56;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);
  v7 = (63 - v5) >> 6;
  v31 = v0 + 48;
  v28 = v2;
  v29 = v1;
  v27 = (v1 + 32);

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
      v10 = v0 + 120;
LABEL_9:
      (*(v29 + 16))(*(v0 + 264), *(v28 + 48) + *(v29 + 72) * (__clz(__rbit64(v6)) | (v9 << 6)), *(v0 + 248));
      v30 = [objc_opt_self() defaultCenter];
      if (qword_100ACFFB0 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 264);
      v12 = *(v0 + 248);
      v13 = qword_100B2FBA0;
      *(v0 + 192) = 0x44497465737361;
      *(v0 + 200) = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      *(v0 + 112) = v12;
      v14 = sub_10001A770((v0 + 88));
      (*v27)(v14, v11, v12);
      sub_1000F24EC(&qword_100AD8788);
      v15 = static _DictionaryStorage.allocate(capacity:)();
      sub_1000082B4(v31, v10, &unk_100AD5810);
      v16 = sub_100361EDC(v10);
      if (v17)
      {
        break;
      }

      v15[(v16 >> 6) + 8] |= 1 << v16;
      v18 = v15[6] + 40 * v16;
      v19 = *v10;
      v20 = *(v10 + 16);
      *(v18 + 32) = *(v10 + 32);
      *v18 = v19;
      *(v18 + 16) = v20;
      sub_10002432C((v0 + 160), (v15[7] + 32 * v16));
      v21 = v15[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v6 &= v6 - 1;
      v24 = *(v0 + 240);
      v15[2] = v23;
      sub_100004F84(v31, &unk_100AD5810);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v30 postNotificationName:v13 object:v24 userInfo:isa];

      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v0 + 120;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_9;
      }
    }

    v26 = *(v0 + 8);

    v26();
  }
}

uint64_t sub_100569094()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return _swift_task_switch(sub_1005691B4, v3, v2);
}

uint64_t sub_1005691B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10056923C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = type metadata accessor for UUID();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = sub_1000F24EC(&qword_100AE94D0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for AssetPlacement();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100AE94C8);
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v8 = type metadata accessor for MapSize();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v3[26] = v9;
  v3[27] = v11;

  return _swift_task_switch(sub_1005694EC, v9, v11);
}

uint64_t sub_1005694EC()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
  *(v0 + 224) = v1;
  if (!v1)
  {
LABEL_25:

    v63 = *(v0 + 8);

    return v63();
  }

  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = v1;
  NSManagedObjectContext.performAndWait<A>(_:)();
  v8 = v7;
  sub_10056FE0C(v8, v6);
  (*(v5 + 16))(v3, v2, v4);
  v9 = (*(v5 + 88))(v3, v4);
  if (v9 == enum case for MapSize.hidden(_:))
  {
    v10 = *(v0 + 168);
    v11 = *(v0 + 144);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v96 = v8;

    v94 = enum case for AssetPlacement.hidden(_:);
    v91 = *(v13 + 104);
    v91(v11);
    (*(v13 + 56))(v11, 0, 1, v12);
    v16 = *(v15 + 48);
    sub_1000082B4(v10, v14, &qword_100AE94C8);
    sub_1000082B4(v11, v14 + v16, &qword_100AE94C8);
    v17 = *(v13 + 48);
    if (v17(v14, 1, v12) == 1)
    {
      v18 = *(v0 + 96);
      sub_100004F84(*(v0 + 144), &qword_100AE94C8);
      if (v17(v14 + v16, 1, v18) == 1)
      {
        v19 = *(v0 + 80);

LABEL_6:
        sub_100004F84(v19, &qword_100AE94C8);
LABEL_24:
        v60 = *(v0 + 200);
        v61 = *(v0 + 176);
        v62 = *(v0 + 184);
        sub_100004F84(*(v0 + 168), &qword_100AE94C8);
        (*(v62 + 8))(v60, v61);
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    v34 = *(v0 + 96);
    sub_1000082B4(*(v0 + 80), *(v0 + 136), &qword_100AE94C8);
    v35 = v17(v14 + v16, 1, v34);
    v36 = *(v0 + 136);
    v37 = *(v0 + 144);
    if (v35 == 1)
    {
      v38 = *(v0 + 96);
      v39 = *(v0 + 104);
      sub_100004F84(*(v0 + 144), &qword_100AE94C8);
      (*(v39 + 8))(v36, v38);
LABEL_12:
      sub_100004F84(*(v0 + 80), &qword_100AE94D0);
LABEL_13:
      (v91)(*(v0 + 112), v94, *(v0 + 96));
      v32 = swift_task_alloc();
      *(v0 + 352) = v32;
      *v32 = v0;
      v33 = sub_10056A9AC;
      goto LABEL_14;
    }

    v56 = *(v0 + 104);
    v55 = *(v0 + 112);
    v57 = *(v0 + 96);
    v90 = *(v0 + 80);
    (*(v56 + 32))(v55, v14 + v16, v57);
    sub_10004B990(&qword_100AE45B8, &type metadata accessor for AssetPlacement);
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v59 = *(v56 + 8);
    v59(v55, v57);
    sub_100004F84(v37, &qword_100AE94C8);
    v59(v36, v57);
    sub_100004F84(v90, &qword_100AE94C8);
    if ((v58 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:

    goto LABEL_24;
  }

  if (v9 == enum case for MapSize.grid(_:))
  {
    v20 = v8;
    v21 = *(v0 + 128);
    v92 = *(v0 + 168);
    v22 = *(v0 + 96);
    v23 = *(v0 + 104);
    v96 = v20;

    sub_1000F24EC(&qword_100AE94D8);
    v24 = *(v21 + 72);
    v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100942000;
    v27 = *(v23 + 104);
    v27(v26 + v25, enum case for AssetPlacement.canvas(_:), v22);
    v28 = *(v23 + 56);
    v28(v26 + v25, 0, 1, v22);
    v27(v26 + v25 + v24, enum case for AssetPlacement.hidden(_:), v22);
    v28(v26 + v25 + v24, 0, 1, v22);
    v27(v26 + v25 + 2 * v24, enum case for AssetPlacement.slim(_:), v22);
    v28(v26 + v25 + 2 * v24, 0, 1, v22);
    v29 = sub_1006B789C(v92, v26);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v29)
    {
      v30 = *(v0 + 112);
      v31 = *(v0 + 96);
      *v30 = static AssetPlacement.maxGridCount.getter();
      v27(v30, enum case for AssetPlacement.grid(_:), v31);
      v32 = swift_task_alloc();
      *(v0 + 232) = v32;
      *v32 = v0;
      v33 = sub_10056A0EC;
LABEL_14:
      v32[1] = v33;
      v40 = *(v0 + 112);
      v41 = *(v0 + 24);
      v42 = *(v0 + 16);
      v43 = v96;
LABEL_15:

      return sub_1005666C0(v42, v41, v43, v40);
    }

    goto LABEL_23;
  }

  if (v9 == enum case for MapSize.small(_:))
  {
    v97 = v8;
    v46 = *(v0 + 160);
    v45 = *(v0 + 168);
    v48 = *(v0 + 96);
    v47 = *(v0 + 104);
    v49 = *(v0 + 88);
    v50 = *(v0 + 72);
    *(v0 + 432) = enum case for AssetPlacement.slim(_:);
    v51 = *(v47 + 104);
    *(v0 + 240) = v51;
    *(v0 + 248) = (v47 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v95 = v51;
    v51(v46);
    (*(v47 + 56))(v46, 0, 1, v48);
    v52 = *(v50 + 48);
    sub_1000082B4(v45, v49, &qword_100AE94C8);
    sub_1000082B4(v46, v49 + v52, &qword_100AE94C8);
    v53 = *(v47 + 48);
    if (v53(v49, 1, v48) == 1)
    {
      v54 = *(v0 + 96);
      sub_100004F84(*(v0 + 160), &qword_100AE94C8);
      if (v53(v49 + v52, 1, v54) == 1)
      {
        v19 = *(v0 + 88);

        goto LABEL_6;
      }
    }

    else
    {
      v64 = *(v0 + 96);
      sub_1000082B4(*(v0 + 88), *(v0 + 152), &qword_100AE94C8);
      v65 = v53(v49 + v52, 1, v64);
      v66 = *(v0 + 152);
      v67 = *(v0 + 160);
      if (v65 != 1)
      {
        v83 = *(v0 + 104);
        v84 = *(v0 + 112);
        v85 = *(v0 + 96);
        v93 = *(v0 + 88);
        (*(v83 + 32))(v84, v49 + v52, v85);
        sub_10004B990(&qword_100AE45B8, &type metadata accessor for AssetPlacement);
        v86 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87 = *(v83 + 8);
        v87(v84, v85);
        sub_100004F84(v67, &qword_100AE94C8);
        v87(v66, v85);
        sub_100004F84(v93, &qword_100AE94C8);
        if (v86)
        {

          goto LABEL_24;
        }

LABEL_34:
        v70 = *(*(v0 + 32) + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset);
        *(v0 + 256) = v70;
        if (v70)
        {
          v72 = *(v0 + 56);
          v71 = *(v0 + 64);
          v73 = *(v0 + 40);
          v74 = *(v0 + 48);
          v75 = *(v74 + 16);
          v75(v71, &v70[OBJC_IVAR____TtC7Journal5Asset_id], v73);
          v75(v72, &v97[OBJC_IVAR____TtC7Journal5Asset_id], v73);
          v76 = v70;

          sub_10004B990(&qword_100AD9220, &type metadata accessor for UUID);
          v77 = dispatch thunk of static Equatable.== infix(_:_:)();
          v78 = *(v74 + 8);
          v78(v72, v73);
          v78(v71, v73);
          if ((v77 & 1) == 0)
          {
            v79 = *(v0 + 112);
            v80 = *(v0 + 96);
            v81 = v76;
            *v79 = static AssetPlacement.maxGridCount.getter();
            v95(v79, enum case for AssetPlacement.grid(_:), v80);
            v82 = swift_task_alloc();
            *(v0 + 264) = v82;
            *v82 = v0;
            v82[1] = sub_10056A270;
            v40 = *(v0 + 112);
            v41 = *(v0 + 24);
            v42 = *(v0 + 16);
            v43 = v81;
            goto LABEL_15;
          }
        }

        else
        {
          v76 = v97;
        }

        v88 = *(v0 + 224);
        (*(v0 + 240))(*(v0 + 112), *(v0 + 432), *(v0 + 96));
        v89 = swift_task_alloc();
        *(v0 + 272) = v89;
        *v89 = v0;
        v89[1] = sub_10056A4CC;
        v40 = *(v0 + 112);
        v41 = *(v0 + 24);
        v42 = *(v0 + 16);
        v43 = v88;
        goto LABEL_15;
      }

      v69 = *(v0 + 96);
      v68 = *(v0 + 104);
      sub_100004F84(*(v0 + 160), &qword_100AE94C8);
      (*(v68 + 8))(v66, v69);
    }

    sub_100004F84(*(v0 + 88), &qword_100AE94D0);
    goto LABEL_34;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_10056A0EC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 216);
  v6 = *(v1 + 208);

  return _swift_task_switch(sub_1005732A4, v6, v5);
}

uint64_t sub_10056A270()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 96);

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 216);
  v7 = *(v1 + 208);

  return _swift_task_switch(sub_10056A40C, v7, v6);
}

uint64_t sub_10056A40C()
{
  v1 = *(v0 + 224);
  (*(v0 + 240))(*(v0 + 112), *(v0 + 432), *(v0 + 96));
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  v2[1] = sub_10056A4CC;
  v3 = *(v0 + 112);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16);

  return sub_1005666C0(v5, v4, v1, v3);
}

uint64_t sub_10056A4CC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 216);
  v6 = *(v1 + 208);

  return _swift_task_switch(sub_10056A650, v6, v5);
}

uint64_t sub_10056A650()
{
  *(v0 + 280) = type metadata accessor for MainActor();
  *(v0 + 288) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10056A6E8, v2, v1);
}

uint64_t sub_10056A6E8()
{
  v1 = v0[4];

  v0[37] = swift_unknownObjectWeakLoadStrong();
  v0[38] = *(v1 + 56);
  v2 = v0[26];
  v3 = v0[27];

  return _swift_task_switch(sub_10056A764, v2, v3);
}

uint64_t sub_10056A764()
{
  if (v0[37])
  {
    v1 = v0[38];
    v0[39] = swift_getObjectType();
    v0[40] = sub_1004959AC(&off_100A58988);
    v0[41] = *(v1 + 8);
    v0[42] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x2794000000000000;
    v0[43] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_10056A864;
  }

  else
  {
    v0[45] = type metadata accessor for MainActor();
    v0[46] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = sub_10056AB30;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_10056A864()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[4];

  v2(v5, v1, v3, v4);
  swift_unknownObjectRelease();

  v6 = v0[26];
  v7 = v0[27];

  return _swift_task_switch(sub_10056A914, v6, v7);
}

uint64_t sub_10056A914()
{
  *(v0 + 360) = type metadata accessor for MainActor();
  *(v0 + 368) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10056AB30, v2, v1);
}

uint64_t sub_10056A9AC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 216);
  v6 = *(v1 + 208);

  return _swift_task_switch(sub_1005732A4, v6, v5);
}

uint64_t sub_10056AB30()
{
  v1 = v0[4];

  v0[47] = swift_unknownObjectWeakLoadStrong();
  v0[48] = *(v1 + 56);
  v2 = v0[26];
  v3 = v0[27];

  return _swift_task_switch(sub_10056ABAC, v2, v3);
}

uint64_t sub_10056ABAC()
{
  if (*(v0 + 376))
  {
    v1 = *(v0 + 384);
    *(v0 + 392) = swift_getObjectType();
    *(v0 + 400) = sub_1004959AC(&off_100A589B0);
    *(v0 + 408) = *(v1 + 8);
    *(v0 + 416) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x2794000000000000;
    *(v0 + 424) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10056AD84, v3, v2);
  }

  else
  {

    v4 = *(v0 + 200);
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    sub_100004F84(*(v0 + 168), &qword_100AE94C8);
    (*(v6 + 8))(v4, v5);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10056AD84()
{
  v1 = v0[50];
  v2 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[4];

  v2(v5, v1, v3, v4);
  swift_unknownObjectRelease();

  v6 = v0[26];
  v7 = v0[27];

  return _swift_task_switch(sub_10056AE34, v6, v7);
}

uint64_t sub_10056AE34()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  sub_100004F84(*(v0 + 168), &qword_100AE94C8);
  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10056AFC0()
{
  v0 = type metadata accessor for UUID();
  sub_100006118(v0, qword_100AE94A8);
  sub_10000617C(v0, qword_100AE94A8);
  return UUID.init()();
}

void sub_10056B00C(void *a1, double a2)
{
  if (qword_100ACFF60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AE9478);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 138412802;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2080;
    type metadata accessor for UUID();
    sub_10004B990(&qword_100AE19B0, &type metadata accessor for UUID);
    v10 = v5;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = sub_100008458(v11, v12, &v15);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2048;
    *(v7 + 24) = CFAbsoluteTimeGetCurrent() - a2;
    _os_log_impl(&_mh_execute_header, oslog, v6, "EntryViewModel.addAsset(%@) [assetId: %s] %f seconds", v7, 0x20u);
    sub_100004F84(v8, &unk_100AD4BB0);

    sub_10000BA7C(v9);
  }
}

uint64_t sub_10056B238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 88) = a4;
  *(v6 + 96) = v5;
  *(v6 + 340) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  sub_1000F24EC(&qword_100AD1420);
  *(v6 + 104) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  *(v6 + 144) = v9;
  *(v6 + 152) = *(v9 - 8);
  *(v6 + 160) = swift_task_alloc();
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  v11 = type metadata accessor for AssetPlacement();
  *(v6 + 200) = v11;
  v12 = *(v11 - 8);
  *(v6 + 208) = v12;
  *(v6 + 216) = *(v12 + 64);
  *(v6 + 224) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *(v6 + 232) = v13;
  *(v6 + 240) = v15;

  return _swift_task_switch(sub_10056B4AC, v13, v15);
}

uint64_t sub_10056B4AC()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 176);
  v16 = *(v0 + 192);
  v5 = *(v0 + 88);
  v15 = *(v0 + 340);
  v6 = *(v0 + 80);
  *(v0 + 248) = *(*(v0 + 96) + 24);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v1, v5, v3);
  v8 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v0 + 256) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  *(v9 + 32) = v15;
  (*(v2 + 32))(v9 + v8, v1, v3);
  *(v0 + 336) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v4 + 104);
  *(v0 + 264) = v10;
  *(v0 + 272) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v16);
  v11 = v6;
  v12 = swift_task_alloc();
  *(v0 + 280) = v12;
  *v12 = v0;
  v12[1] = sub_10056B684;
  v13 = *(v0 + 192);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v13, sub_100572D0C, v9, &type metadata for () + 8);
}

uint64_t sub_10056B684()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[24];
    v5 = v2[21];
    v6 = v2[22];
    v7 = *(v6 + 8);
    v2[36] = v7;
    v2[37] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[29];
    v9 = v2[30];

    return _swift_task_switch(sub_10056B7D4, v8, v9);
  }
}

uint64_t sub_10056B7D4()
{
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_10056B880;
  v2 = *(v0 + 64);

  return sub_1001DA5A8(v2);
}

uint64_t sub_10056B880()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_10056B9A0, v3, v2);
}

uint64_t sub_10056B9A0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 336);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 80);
  v6 = swift_allocObject();
  *(v0 + 312) = v6;
  *(v6 + 16) = v5;
  v1(v3, v2, v4);
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 320) = v8;
  *v8 = v0;
  v8[1] = sub_10056BAC0;
  v9 = *(v0 + 184);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_100572D80, v6, &type metadata for () + 8);
}

uint64_t sub_10056BAC0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 288))(*(v2 + 184), *(v2 + 168));

    v4 = *(v2 + 232);
    v5 = *(v2 + 240);

    return _swift_task_switch(sub_10056BC10, v4, v5);
  }
}

uint64_t sub_10056BC10()
{
  v61 = v0;
  v1 = v0[12];
  v2 = v0[10] + OBJC_IVAR____TtC7Journal5Asset_id;
  v3 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;

  v6 = sub_100068DDC(sub_100069618, v5, v4);

  if (v6)
  {
    if (qword_100ACFF60 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v7 = type metadata accessor for Logger();
      sub_10000617C(v7, qword_100AE9478);
      v8 = v6;

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v9, v10))
      {

        goto LABEL_26;
      }

      v50 = v10;
      log = v9;
      v11 = v0[19];
      v12 = v0[20];
      v53 = v0;
      v13 = v0[18];
      v14 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v14 = 136446722;
      (*(v11 + 16))(v12, v8 + OBJC_IVAR____TtC7Journal5Asset_type, v13);
      sub_10004B990(&qword_100AD8780, &type metadata accessor for AssetType);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v11 + 8))(v12, v13);
      v18 = sub_100008458(v15, v17, v60);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v19 = v8;
      v20 = [v19 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v48 = v19;
      v6 = sub_100008458(v21, v23, v60);

      *(v14 + 14) = v6;
      buf = v14;
      *(v14 + 22) = 2082;
      v24 = *&v1[v3];
      v25 = v24 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v25)
      {
        break;
      }

      v3 = 0;
      v26 = v0[15];
      v59 = v24 & 0xC000000000000001;
      v57 = (v26 + 16);
      v58 = v24 & 0xFFFFFFFFFFFFFF8;
      v55 = (v26 + 48);
      v56 = (v26 + 56);
      v52 = v26;
      v27 = _swiftEmptyArrayStorage;
      v54 = v24;
      v1 = (v26 + 32);
      while (1)
      {
        if (v59)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(v58 + 16))
          {
            goto LABEL_30;
          }

          v28 = *(v24 + 8 * v3 + 32);
        }

        v29 = v28;
        v6 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v31 = v0[13];
        v30 = v0[14];
        (*v57)(v31, &v28[OBJC_IVAR____TtC7Journal5Asset_id], v30);
        (*v56)(v31, 0, 1, v30);

        if ((*v55)(v31, 1, v30) == 1)
        {
          sub_100004F84(v0[13], &qword_100AD1420);
        }

        else
        {
          v33 = v0[16];
          v32 = v0[17];
          v34 = v0[14];
          v35 = *v1;
          (*v1)(v32, v0[13], v34);
          v35(v33, v32, v34);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_100055CEC(0, *(v27 + 2) + 1, 1, v27);
          }

          v37 = *(v27 + 2);
          v36 = *(v27 + 3);
          v0 = v53;
          if (v37 >= v36 >> 1)
          {
            v27 = sub_100055CEC(v36 > 1, v37 + 1, 1, v27);
          }

          v38 = v53[16];
          v39 = v53[14];
          *(v27 + 2) = v37 + 1;
          v35(v27 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v37, v38, v39);
        }

        v24 = v54;
        ++v3;
        if (v6 == v25)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
    }

LABEL_25:

    v42 = Array.description.getter();
    v44 = v43;

    v45 = sub_100008458(v42, v44, v60);

    *(buf + 3) = v45;
    _os_log_impl(&_mh_execute_header, log, v50, "Asset already exists in allAssets. Won't add %{public}s asset with id %{public}s. AllAssets: %{public}s", buf, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v40 = v0[10];
    swift_beginAccess();
    v41 = v40;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10003A5DC();
  }

LABEL_26:

  v46 = v0[1];

  return v46();
}

void sub_10056C318(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v118 = a4;
  LODWORD(v117) = a3;
  v6 = sub_1000F24EC(&qword_100AE94C0);
  __chkstk_darwin(v6 - 8);
  v108 = &v98 - v7;
  v8 = type metadata accessor for MergeableEntryAttributes.MutatingAction();
  v109 = *(v8 - 8);
  v110 = v8;
  __chkstk_darwin(v8);
  v104 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v9;
  __chkstk_darwin(v10);
  v106 = &v98 - v11;
  v111 = type metadata accessor for MergeableEntryAttributes();
  v113 = *(v111 - 8);
  __chkstk_darwin(v111);
  v105 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v112 = &v98 - v14;
  v15 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v15 - 8);
  v107 = (&v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v116 = (&v98 - v18);
  __chkstk_darwin(v19);
  v120 = &v98 - v20;
  v21 = type metadata accessor for AssetPlacement();
  v119 = *(v21 - 8);
  __chkstk_darwin(v21);
  v121 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FileStoreConfiguration();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v27 - 8);
  v29 = &v98 - v28;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v114 = v21;
    v115 = v4;
    v32 = *(Strong + 24);
    v33 = sub_10028376C(v32);

    [*(v31 + 32) addAssetsObject:v33];
    v34 = sub_1008250F4();
    v35 = &a2[OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryPath];
    *v35 = v34;
    *(v35 + 1) = v36;

    sub_1008250F4();
    if (v37)
    {
      static FileStoreConfiguration.shared.getter();
      FileStoreConfiguration.getAttachmentURL(from:isDirectory:)();

      (*(v24 + 8))(v26, v23);
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v40 = v120;
    v39 = v121;
    v41 = type metadata accessor for URL();
    (*(*(v41 - 8) + 56))(v29, v38, 1, v41);
    v42 = OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryURL;
    swift_beginAccess();
    sub_10032964C(v29, &a2[v42]);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v44 = swift_conformsToProtocol2();
    if (v44)
    {
      v45 = v44;
      v46 = a2;
      sub_10078C26C(ObjectType, v45);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v47 = a2;
      sub_1001D8A9C();
    }

    if ((v117 & 1) == 0)
    {
      sub_10056D224(&a2[OBJC_IVAR____TtC7Journal5Asset_id], v118);
LABEL_34:
      [*(v31 + 32) setIsUploadedToCloud:0];

      return;
    }

    v117 = sub_1004959AC(&off_100A5A4F8);
    if (qword_100AD08E0 != -1)
    {
      swift_once();
    }

    v102 = xmmword_100B30DA0;
    (*(v119 + 16))(v39, v118, v114);
    v118 = swift_allocObject();
    *(v118 + 16) = v33;
    v48 = swift_allocObject();
    *(v48 + 16) = v33;
    v49 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    v101 = v49;
    sub_1000082B4(v31 + v49, v40, &qword_100AD6260);
    v50 = OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager;
    v51 = *(v31 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
    if (v51)
    {
      v100 = OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager;
      v52 = qword_100AD0A70;
      v53 = v33;
      v99 = v51;
      if (v52 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_10000617C(v54, qword_100AF0C08);
      v55 = *(&v102 + 1);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v122 = v59;
        *v58 = 136315138;

        v60 = sub_100008458(v102, v55, &v122);
        v61 = v48;
        v62 = v60;

        *(v58 + 4) = v62;
        v48 = v61;
        _os_log_impl(&_mh_execute_header, v56, v57, "undoable (%s)", v58, 0xCu);
        sub_10000BA7C(v59);
        v40 = v120;

        v39 = v121;
      }

      v63 = v116;
      v64 = v99;
      v65 = [v99 groupingLevel];
      v50 = v100;
      if (!v65)
      {
        [v64 beginUndoGrouping];
      }
    }

    else
    {
      v66 = v33;
      v63 = v116;
    }

    sub_10056D11C(v31, a2, v39);
    [v33 setIsUndoablyDeleted:0];
    v67 = *&v50[v31];
    if (v67)
    {
      v116 = v48;
      v68 = v67;

      sub_1000082B4(v40, v63, &qword_100AD6260);
      v69 = v113;
      v70 = *(v113 + 48);
      v71 = v111;
      if (v70(v63, 1, v111) == 1)
      {

        sub_100004F84(v40, &qword_100AD6260);
        v72 = v63;
        v73 = &qword_100AD6260;
LABEL_32:
        sub_100004F84(v72, v73);
        v39 = v121;
        goto LABEL_33;
      }

      v100 = v68;
      (*(v69 + 32))(v112, v63, v71);
      v75 = v107;
      sub_1000082B4(v101 + v31, v107, &qword_100AD6260);
      if (v70(v75, 1, v71))
      {

        (*(v69 + 8))(v112, v71);
        sub_100004F84(v40, &qword_100AD6260);
        sub_100004F84(v75, &qword_100AD6260);
        v76 = v108;
        (*(v109 + 56))(v108, 1, 1, v110);
LABEL_31:
        v73 = &qword_100AE94C0;
        v72 = v76;
        goto LABEL_32;
      }

      v77 = v105;
      (*(v69 + 16))(v105, v75, v71);
      sub_100004F84(v75, &qword_100AD6260);
      v76 = v108;
      MergeableEntryAttributes.actionUndoingDifference(from:)();
      v80 = *(v69 + 8);
      v79 = v69 + 8;
      v78 = v80;
      (v80)(v77, v71);
      v81 = v109;
      if ((*(v109 + 48))(v76, 1, v110) == 1)
      {

        (v78)(v112, v71);
        sub_100004F84(v40, &qword_100AD6260);
        goto LABEL_31;
      }

      v107 = v78;
      v101 = *(v81 + 32);
      v105 = (v81 + 32);
      v82 = v110;
      v101(v106, v76, v110);
      v83 = v81;
      v84 = String._bridgeToObjectiveC()();
      [v100 setActionName:v84];

      v85 = v104;
      (*(v83 + 16))(v104, v106, v82);
      v86 = (*(v83 + 80) + 16) & ~*(v83 + 80);
      v113 = v79;
      v87 = (v103 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
      v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
      v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
      v108 = ((v89 + 23) & 0xFFFFFFFFFFFFFFF8);
      v90 = swift_allocObject();
      v101((v90 + v86), v85, v82);
      v39 = v121;
      v91 = v118;
      *(v90 + v87) = v117;
      v92 = (v90 + v88);
      v93 = *(&v102 + 1);
      *v92 = v102;
      v92[1] = v93;
      v94 = (v90 + v89);
      v95 = v116;
      *v94 = sub_100572DB0;
      v94[1] = v95;
      v96 = &v108[v90];
      *v96 = sub_100572D9C;
      v96[1] = v91;
      type metadata accessor for EntryViewModel();

      v97 = v100;
      NSUndoManager.registerUndo<A>(withTarget:handler:)();

      (*(v109 + 8))(v106, v110);
      (v107)(v112, v111);
      v74 = v120;
    }

    else
    {

      v74 = v40;
    }

    sub_100004F84(v74, &qword_100AD6260);
LABEL_33:
    (*(v119 + 8))(v39, v114);
    goto LABEL_34;
  }
}

uint64_t sub_10056D11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100ACFF68 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000617C(v5, qword_100AE9490);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "updating asset placement", v8, 2u);
  }

  return sub_10056D224(a2 + OBJC_IVAR____TtC7Journal5Asset_id, a3);
}

uint64_t sub_10056D224(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = a2;
  v3 = sub_1000F24EC(&unk_100AE4B90);
  __chkstk_darwin(v3 - 8);
  v62 = &v49 - v4;
  v5 = sub_1000F24EC(&qword_100AE94C8);
  v6 = __chkstk_darwin(v5 - 8);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v49 - v8;
  v9 = type metadata accessor for MergeableEntryAttributes();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&qword_100AD6260);
  v14 = __chkstk_darwin(v13 - 8);
  v56 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v55 = type metadata accessor for MergeableEntryAssetsPlacement();
  v63 = *(v55 - 8);
  v18 = __chkstk_darwin(v55);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v49 - v22;
  __chkstk_darwin(v21);
  v25 = &v49 - v24;
  v26 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v57 = v2;
  sub_1000082B4(v2 + v26, v17, &qword_100AD6260);
  v27 = v10[6];
  if (v27(v17, 1, v9))
  {
    return sub_100004F84(v17, &qword_100AD6260);
  }

  v51 = v20;
  v50 = v10[2];
  v50(v12, v17, v9);
  sub_100004F84(v17, &qword_100AD6260);
  MergeableEntryAttributes.assetPlacement.getter();
  v29 = v10[1];
  v52 = v12;
  v53 = v10 + 1;
  v29(v12, v9);
  v30 = *(v63 + 32);
  v54 = v25;
  v31 = v25;
  v32 = v55;
  v30(v31, v23, v55);
  v34 = v56;
  v33 = v57;
  sub_1000082B4(v57 + v26, v56, &qword_100AD6260);
  v35 = v33;
  if (v27(v34, 1, v9))
  {
    v36 = v32;
    sub_100004F84(v34, &qword_100AD6260);
    v37 = type metadata accessor for AssetPlacement();
    v38 = v58;
    (*(*(v37 - 8) + 56))(v58, 1, 1, v37);
    v39 = v62;
    v40 = v63;
    goto LABEL_7;
  }

  v41 = v52;
  v50(v52, v34, v9);
  sub_100004F84(v34, &qword_100AD6260);
  v42 = v51;
  MergeableEntryAttributes.assetPlacement.getter();
  v29(v41, v9);
  v38 = v58;
  MergeableEntryAssetsPlacement.assetPlacement(forAssetID:)();
  v43 = v63;
  v36 = v32;
  (*(v63 + 8))(v42, v32);
  v37 = type metadata accessor for AssetPlacement();
  v44 = *(v37 - 8);
  v40 = v43;
  if ((*(v44 + 48))(v38, 1, v37) == 1)
  {
    v39 = v62;
LABEL_7:
    type metadata accessor for AssetPlacement();
    v45 = *(v37 - 8);
    v46 = v61;
    (*(v45 + 56))(v61, 1, 1, v37);
    if ((*(v45 + 48))(v38, 1, v37) != 1)
    {
      sub_100004F84(v38, &qword_100AE94C8);
    }

    goto LABEL_10;
  }

  v46 = v61;
  (*(v44 + 32))(v61, v38, v37);
  (*(v44 + 56))(v46, 0, 1, v37);
  v39 = v62;
LABEL_10:
  v47 = v54;
  MergeableEntryAssetsPlacement.addOrMoveAsset(withID:to:from:)();
  (*(v40 + 16))(v39, v47, v36);
  (*(v40 + 56))(v39, 0, 1, v36);
  sub_10077CC1C(v39);
  sub_100004F84(v39, &unk_100AE4B90);
  v48 = *(v35 + 32);
  JournalEntryMO.modifyLegacyAssetOrderingFields(from:)();
  [v48 setIsUploadedToCloud:0];
  sub_1007852C0();
  sub_100004F84(v46, &qword_100AE94C8);
  return (*(v40 + 8))(v47, v36);
}

void sub_10056D964()
{
  sub_100059FA4();
  if (qword_100ACFF60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000617C(v0, qword_100AE9478);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    if (qword_100ACFF70 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for UUID();
    sub_10000617C(v5, qword_100AE94A8);
    sub_10004B990(&qword_100AE19B0, &type metadata accessor for UUID);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_100008458(v6, v7, &v9);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s (addAsset) Done adding asset to viewModel", v3, 0xCu);
    sub_10000BA7C(v4);
  }
}

uint64_t sub_10056DB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = type metadata accessor for UUID();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[10] = v7;
  v4[11] = v9;

  return _swift_task_switch(sub_10056DC44, v7, v9);
}

size_t sub_10056DC44()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    result = sub_100199D3C(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = v0[7];
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v6 = v0[9];
        v7 = v0[6];
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*(v4 + 16))(v6, v8 + OBJC_IVAR____TtC7Journal5Asset_id, v7);
        swift_unknownObjectRelease();
        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (*&v10 >= *&v9 >> 1)
        {
          sub_100199D3C(*&v9 > 1uLL, *&v10 + 1, 1);
        }

        v11 = v0[9];
        v12 = v0[6];
        *&_swiftEmptyArrayStorage[2] = *&v10 + 1;
        (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * *&v10, v11, v12);
      }
    }

    else
    {
      v13 = (v0[4] + 32);
      v14 = *(v4 + 16);
      do
      {
        v14(v0[8], *v13 + OBJC_IVAR____TtC7Journal5Asset_id, v0[6]);
        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (*&v16 >= *&v15 >> 1)
        {
          sub_100199D3C(*&v15 > 1uLL, *&v16 + 1, 1);
        }

        v17 = v0[8];
        v18 = v0[6];
        *&_swiftEmptyArrayStorage[2] = *&v16 + 1;
        (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * *&v16, v17, v18);
        ++v13;
        --v2;
      }

      while (v2);
    }
  }

  v19 = sub_100891384(_swiftEmptyArrayStorage);
  v0[12] = v19;

  v20 = swift_task_alloc();
  v0[13] = v20;
  *v20 = v0;
  v20[1] = sub_10056DF00;
  v22 = v0[2];
  v21 = v0[3];

  return sub_10056824C(v22, v21, v19);
}

uint64_t sub_10056DF00()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_10056E044, v3, v2);
}

uint64_t sub_10056E044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10056E0AC(uint64_t a1)
{
  v2 = type metadata accessor for MergeableEntryAttributes();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for MergeableEntryAssetsPlacement();
  v18 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  sub_10003A464();
  v15 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_1000082B4(a1 + v15, v8, &qword_100AD6260);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_100004F84(v8, &qword_100AD6260);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_100004F84(v8, &qword_100AD6260);
  MergeableEntryAttributes.assetPlacement.getter();
  (*(v3 + 8))(v5, v2);
  v17 = v18;
  (*(v18 + 32))(v14, v12, v9);
  JournalEntryMO.modifyLegacyAssetOrderingFields(from:)();
  return (*(v17 + 8))(v14, v9);
}

uint64_t sub_10056E37C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 97) = a4;
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v5 + 32) = v7;
  *(v5 + 40) = *(v7 - 8);
  *(v5 + 48) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v5 + 56) = v8;
  *(v5 + 64) = v10;

  return _swift_task_switch(sub_10056E47C, v8, v10);
}

uint64_t sub_10056E47C()
{
  v1 = *(v0 + 40);
  v15 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 97);
  v5 = *(v0 + 16);
  sub_1000F24EC(&unk_100AE1A40);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100940080;
  (*(v7 + 16))(v9 + v8, v5 + OBJC_IVAR____TtC7Journal5Asset_id, v6);
  v10 = sub_1004960D4(v9);
  *(v0 + 72) = v10;
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  v11 = swift_allocObject();
  *(v0 + 80) = v11;
  *(v11 + 16) = v3;
  *(v11 + 24) = v10;
  *(v11 + 32) = v4;
  (*(v1 + 104))(v15, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v2);

  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_1001FBE60;
  v13 = *(v0 + 48);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 96, v13, sub_10057328C, v11, &type metadata for Bool);
}

id sub_10056E6CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v134 = a3;
  v116 = a4;
  v7 = sub_1000F24EC(&qword_100AE94C0);
  __chkstk_darwin(v7 - 8);
  v107 = &v101 - v8;
  v109 = type metadata accessor for MergeableEntryAttributes.MutatingAction();
  v9 = *(v109 - 8);
  v10 = __chkstk_darwin(v109);
  v103 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v11;
  __chkstk_darwin(v10);
  v105 = &v101 - v12;
  v112 = type metadata accessor for MergeableEntryAttributes();
  v111 = *(v112 - 8);
  v13 = __chkstk_darwin(v112);
  v104 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = &v101 - v15;
  v16 = sub_1000F24EC(&qword_100AD6260);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v101 - v21;
  __chkstk_darwin(v20);
  v117 = &v101 - v23;
  v24 = type metadata accessor for Locale();
  __chkstk_darwin(v24 - 8);
  v115 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v26 - 8);
  v114 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v28 - 8);
  v113 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UUID();
  v119 = *(v30 - 8);
  __chkstk_darwin(v30);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v118 = a1;
  v34 = *(a1 + v33);
  v133 = _swiftEmptyArrayStorage;
  if (v34 >> 62)
  {
    goto LABEL_68;
  }

  for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v108 = v9;
    v106 = v19;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v124 = v34 & 0xFFFFFFFFFFFFFF8;
    v125 = (v34 & 0xC000000000000001);
    v122 = v22;
    v123 = v34 + 32;
    v128 = v119 + 16;
    v129 = (a2 + 7);
    v127 = v119 + 8;
    v130 = a2;
    v120 = i;
    v121 = v34;
    while (1)
    {
      if (v125)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v124 + 16))
        {
          goto LABEL_67;
        }

        v36 = *(v123 + 8 * v4);
      }

      v131 = v36;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v126 = v4;
      if (a2[2])
      {
        sub_10004B990(&qword_100AD4B40, &type metadata accessor for UUID);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(a2 + 32);
        v9 = v38 & ~v39;
        if ((*&v129[(v9 >> 3) & 0xFFFFFFFFFFFFFF8] >> v9))
        {
          v40 = ~v39;
          v19 = *(v119 + 72);
          v41 = *(v119 + 16);
          while (1)
          {
            v41(v32, v130[6] + v19 * v9, v30);
            sub_10004B990(&qword_100AD9220, &type metadata accessor for UUID);
            v42 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v127)(v32, v30);
            if (v42)
            {
              break;
            }

            v9 = (v9 + 1) & v40;
            if (((*&v129[(v9 >> 3) & 0xFFFFFFFFFFFFFF8] >> v9) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
LABEL_16:
        }

        v34 = v121;
        v22 = v122;
        a2 = v130;
        i = v120;
      }

      else
      {
      }

      v4 = v126;
      if (v126 == i)
      {
        v43 = v133;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_22:

  LODWORD(v44) = v43 < 0 || (v43 & 0x4000000000000000) != 0;
  if (v44 == 1)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v45 = *(v43 + 16);
  }

  if (v45 == a2[2])
  {
    v46 = sub_1004959AC(&off_100A5A520);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v47._countAndFlagsBits = 0x2065766F6D6552;
    v47._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v47);
    v133 = a2[2];
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v48._countAndFlagsBits = 0x6D68636174744120;
    v48._object = 0xEC00000073746E65;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    v126 = String.init(localized:table:bundle:locale:comment:)();
    v131 = v49;
    v127 = swift_allocObject();
    *(v127 + 16) = v43;
    v128 = swift_allocObject();
    *(v128 + 16) = v43;
    v50 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    v51 = v118;
    swift_beginAccess();
    v125 = v50;
    sub_1000082B4(v51 + v50, v117, &qword_100AD6260);
    v129 = v46;
    if ((v134 & 1) == 0 || (v52 = *(v51 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager)) == 0)
    {
      swift_retain_n();
      goto LABEL_38;
    }

    v130 = a2;
    v53 = qword_100AD0A70;
    swift_retain_n();
    v4 = v52;
    if (v53 != -1)
    {
      goto LABEL_71;
    }

    while (1)
    {
      v54 = type metadata accessor for Logger();
      sub_10000617C(v54, qword_100AF0C08);
      v55 = v131;

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        LODWORD(v124) = v57;
        v59 = v58;
        v60 = swift_slowAlloc();
        v132 = v60;
        *v59 = 136315138;

        v61 = v22;
        v62 = sub_100008458(v126, v55, &v132);

        *(v59 + 4) = v62;
        v22 = v61;
        _os_log_impl(&_mh_execute_header, v56, v124, "undoable (%s)", v59, 0xCu);
        sub_10000BA7C(v60);
      }

      a2 = v130;
      if (![v4 groupingLevel])
      {
        [v4 beginUndoGrouping];
      }

LABEL_38:
      sub_10056F76C(a2);
      if (v44)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
        if (!v44)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v44 = *(v43 + 16);
        if (!v44)
        {
          goto LABEL_50;
        }
      }

      if (v44 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_71:
      swift_once();
    }

    for (j = 0; j != v44; ++j)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v66 = *(v43 + 8 * j + 32);
      }

      v67 = v66;
      v68 = *&v66[OBJC_IVAR____TtC7Journal5Asset_assetMO];
      if (v68)
      {
        v69 = v68;
        [v69 setIsUndoablyDeleted:1];
      }
    }

LABEL_50:
    if ((v134 & 1) == 0)
    {

      sub_100004F84(v117, &qword_100AD6260);
      v70 = v118;
LABEL_63:
      result = [*(v70 + 32) setIsUploadedToCloud:0];
      v64 = 1;
      goto LABEL_64;
    }

    v70 = v118;
    v71 = *(v118 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
    if (v71)
    {
      v72 = v117;
      sub_1000082B4(v117, v22, &qword_100AD6260);
      v73 = v111;
      v74 = *(v111 + 48);
      v75 = v112;
      if (v74(v22, 1, v112) == 1)
      {

        sub_100004F84(v72, &qword_100AD6260);
        v76 = v22;
        v77 = &qword_100AD6260;
LABEL_62:
        sub_100004F84(v76, v77);
        goto LABEL_63;
      }

      (*(v73 + 32))(v110, v22, v75);
      v78 = v106;
      sub_1000082B4(v125 + v70, v106, &qword_100AD6260);
      if (v74(v78, 1, v75))
      {

        (*(v73 + 8))(v110, v75);
        sub_100004F84(v72, &qword_100AD6260);
        sub_100004F84(v78, &qword_100AD6260);
        v79 = v107;
        (*(v108 + 56))(v107, 1, 1, v109);
LABEL_61:
        v77 = &qword_100AE94C0;
        v76 = v79;
        goto LABEL_62;
      }

      v80 = v104;
      (*(v73 + 16))(v104, v78, v75);
      v130 = v71;
      sub_100004F84(v78, &qword_100AD6260);
      v79 = v107;
      MergeableEntryAttributes.actionUndoingDifference(from:)();
      v83 = *(v73 + 8);
      v81 = v73 + 8;
      v82 = v83;
      v83(v80, v75);
      v84 = v108;
      v85 = v109;
      if ((*(v108 + 48))(v79, 1, v109) == 1)
      {

        v82(v110, v112);
        sub_100004F84(v72, &qword_100AD6260);
        goto LABEL_61;
      }

      v124 = *(v84 + 32);
      v111 = v81;
      v86 = v105;
      (v124)();
      v87 = String._bridgeToObjectiveC()();
      [v130 setActionName:v87];

      v88 = v103;
      (*(v84 + 16))(v103, v86, v85);
      v89 = (*(v84 + 80) + 16) & ~*(v84 + 80);
      v90 = (v102 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
      v125 = v82;
      v92 = (v91 + 23) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      (v124)(v93 + v89, v88, v85);
      v94 = v128;
      *(v93 + v90) = v129;
      v95 = (v93 + v91);
      v70 = v118;
      v96 = v131;
      *v95 = v126;
      v95[1] = v96;
      v97 = (v93 + v92);
      *v97 = sub_100572E24;
      v97[1] = v94;
      v98 = (v93 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8));
      v99 = v127;
      *v98 = sub_100572E04;
      v98[1] = v99;
      type metadata accessor for EntryViewModel();

      v100 = v130;
      NSUndoManager.registerUndo<A>(withTarget:handler:)();

      (*(v108 + 8))(v105, v109);
      v125(v110, v112);
    }

    else
    {
    }

    v77 = &qword_100AD6260;
    v76 = v117;
    goto LABEL_62;
  }

  v64 = 0;
LABEL_64:
  *v116 = v64;
  return result;
}