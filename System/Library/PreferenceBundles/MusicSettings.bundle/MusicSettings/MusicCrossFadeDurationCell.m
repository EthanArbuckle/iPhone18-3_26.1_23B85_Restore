@interface MusicCrossFadeDurationCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (MusicCrossFadeDurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)labelWithAlignment:(int64_t)a3 fontTextStyle:(id)a4;
- (void)setupWithSpeficier:(id)a3;
- (void)sliderValueChanged:(id)a3;
@end

@implementation MusicCrossFadeDurationCell

- (MusicCrossFadeDurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v73.receiver = self;
  v73.super_class = MusicCrossFadeDurationCell;
  v4 = [(MusicCrossFadeDurationCell *)&v73 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(UIStackView);
    [(MusicCrossFadeDurationCell *)v4 setVerticalStack:v5];

    v6 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    [v6 setAxis:1];

    v7 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    [v7 setDistribution:0];

    v8 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    [v8 setAlignment:1];

    v9 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = objc_alloc_init(UIStackView);
    [(MusicCrossFadeDurationCell *)v4 setHorizontalStack:v10];

    v11 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    [v11 setAxis:0];

    v12 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    [v12 setAlignment:3];

    v13 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    [v13 setDistribution:0];

    v14 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    [v14 setSpacing:8.0];

    v15 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(MusicCrossFadeDurationCell *)v4 labelWithAlignment:0 fontTextStyle:UIFontTextStyleSubheadline];
    [(MusicCrossFadeDurationCell *)v4 setValueLabel:v16];

    v17 = [(MusicCrossFadeDurationCell *)v4 labelWithAlignment:0 fontTextStyle:UIFontTextStyleSubheadline];
    [(MusicCrossFadeDurationCell *)v4 setMinLabel:v17];

    v18 = [(MusicCrossFadeDurationCell *)v4 labelWithAlignment:2 fontTextStyle:UIFontTextStyleSubheadline];
    [(MusicCrossFadeDurationCell *)v4 setMaxLabel:v18];

    v19 = objc_alloc_init(UISlider);
    [(MusicCrossFadeDurationCell *)v4 setSlider:v19];

    v20 = [(MusicCrossFadeDurationCell *)v4 slider];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(MusicCrossFadeDurationCell *)v4 slider];
    [v21 addTarget:v4 action:"sliderValueChanged:" forControlEvents:4096];

    v22 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    v23 = [(MusicCrossFadeDurationCell *)v4 minLabel];
    [v22 addArrangedSubview:v23];

    v24 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    v25 = [(MusicCrossFadeDurationCell *)v4 slider];
    [v24 addArrangedSubview:v25];

    v26 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    v27 = [(MusicCrossFadeDurationCell *)v4 maxLabel];
    [v26 addArrangedSubview:v27];

    v28 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    v29 = [(MusicCrossFadeDurationCell *)v4 valueLabel];
    [v28 addArrangedSubview:v29];

    v30 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    v31 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    [v30 addArrangedSubview:v31];

    v32 = [(MusicCrossFadeDurationCell *)v4 contentView];
    v33 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    [v32 addSubview:v33];

    v72 = [(MusicCrossFadeDurationCell *)v4 contentView];
    v71 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    v69 = [v71 leadingAnchor];
    v70 = [(MusicCrossFadeDurationCell *)v4 contentView];
    v68 = [v70 layoutMarginsGuide];
    v67 = [v68 leadingAnchor];
    v66 = [v69 constraintEqualToAnchor:v67];
    v74[0] = v66;
    v65 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    v63 = [v65 trailingAnchor];
    v64 = [(MusicCrossFadeDurationCell *)v4 contentView];
    v62 = [v64 layoutMarginsGuide];
    v61 = [v62 trailingAnchor];
    v60 = [v63 constraintEqualToAnchor:v61];
    v74[1] = v60;
    v59 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    v57 = [v59 topAnchor];
    v58 = [(MusicCrossFadeDurationCell *)v4 contentView];
    v56 = [v58 layoutMarginsGuide];
    v55 = [v56 topAnchor];
    v54 = [v57 constraintEqualToAnchor:v55];
    v74[2] = v54;
    v53 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    v51 = [v53 bottomAnchor];
    v52 = [(MusicCrossFadeDurationCell *)v4 contentView];
    v50 = [v52 layoutMarginsGuide];
    v49 = [v50 bottomAnchor];
    v48 = [v51 constraintEqualToAnchor:v49];
    v74[3] = v48;
    v47 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    v45 = [v47 leadingAnchor];
    v46 = [(MusicCrossFadeDurationCell *)v4 contentView];
    v44 = [v46 layoutMarginsGuide];
    v34 = [v44 leadingAnchor];
    v35 = [v45 constraintEqualToAnchor:v34];
    v74[4] = v35;
    v36 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    v37 = [v36 trailingAnchor];
    v38 = [(MusicCrossFadeDurationCell *)v4 contentView];
    v39 = [v38 layoutMarginsGuide];
    v40 = [v39 trailingAnchor];
    v41 = [v37 constraintEqualToAnchor:v40];
    v74[5] = v41;
    v42 = [NSArray arrayWithObjects:v74 count:6];
    [v72 addConstraints:v42];
  }

  return v4;
}

- (id)labelWithAlignment:(int64_t)a3 fontTextStyle:(id)a4
{
  v6 = objc_alloc_init(UILabel);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTextAlignment:a3];
  v7 = [(MusicCrossFadeDurationCell *)self textLabel];
  v8 = [v7 font];
  [v6 setFont:v8];

  LODWORD(v9) = 1148829696;
  [v6 setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v10];

  return v6;
}

- (void)setupWithSpeficier:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"min"];
  [v5 floatValue];
  v7 = v6;
  v8 = [(MusicCrossFadeDurationCell *)self slider];
  LODWORD(v9) = v7;
  [v8 setMinimumValue:v9];

  v10 = [v4 propertyForKey:@"max"];

  [v10 floatValue];
  v12 = v11;
  v13 = [(MusicCrossFadeDurationCell *)self slider];
  LODWORD(v14) = v12;
  [v13 setMaximumValue:v14];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"CROSS_FADE_BOUNDS_FORMAT" value:&stru_25A88 table:@"MusicSettings"];
  v17 = [(MusicCrossFadeDurationCell *)self slider];
  [v17 minimumValue];
  v19 = [NSString localizedStringWithFormat:v16, v18];
  v20 = [(MusicCrossFadeDurationCell *)self minLabel];
  [v20 setText:v19];

  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"CROSS_FADE_BOUNDS_FORMAT" value:&stru_25A88 table:@"MusicSettings"];
  v23 = [(MusicCrossFadeDurationCell *)self slider];
  [v23 maximumValue];
  v25 = [NSString localizedStringWithFormat:v22, v24];
  v26 = [(MusicCrossFadeDurationCell *)self maxLabel];
  [v26 setText:v25];

  v27 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v27 crossFadeDuration];
  v29 = v28;
  v30 = [(MusicCrossFadeDurationCell *)self slider];
  *&v31 = v29;
  [v30 setValue:v31];

  v32 = [(MusicCrossFadeDurationCell *)self slider];
  [(MusicCrossFadeDurationCell *)self sliderValueChanged:v32];
}

- (void)sliderValueChanged:(id)a3
{
  v4 = a3;
  [v4 value];
  v6 = v5;
  v7 = roundf(v5);
  *&v8 = v7;
  [v4 setValue:v8];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v9 localizedStringForKey:@"CROSS_FADE_DURATION_FORMAT" value:&stru_25A88 table:@"MusicSettings"];

  v10 = [NSString localizedStringWithFormat:v13, vcvtas_u32_f32(v6)];
  v11 = [(MusicCrossFadeDurationCell *)self valueLabel];
  [v11 setText:v10];

  v12 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v12 setCrossFadeDuration:v7];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = [(MusicCrossFadeDurationCell *)self verticalStack:a3.width];
  [v4 sizeThatFits:{width, 1.79769313e308}];
  v6 = v5;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end