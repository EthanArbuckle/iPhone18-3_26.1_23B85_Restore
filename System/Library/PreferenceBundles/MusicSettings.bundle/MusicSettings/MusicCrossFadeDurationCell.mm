@interface MusicCrossFadeDurationCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (MusicCrossFadeDurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)labelWithAlignment:(int64_t)alignment fontTextStyle:(id)style;
- (void)setupWithSpeficier:(id)speficier;
- (void)sliderValueChanged:(id)changed;
@end

@implementation MusicCrossFadeDurationCell

- (MusicCrossFadeDurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v73.receiver = self;
  v73.super_class = MusicCrossFadeDurationCell;
  v4 = [(MusicCrossFadeDurationCell *)&v73 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(UIStackView);
    [(MusicCrossFadeDurationCell *)v4 setVerticalStack:v5];

    verticalStack = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    [verticalStack setAxis:1];

    verticalStack2 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    [verticalStack2 setDistribution:0];

    verticalStack3 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    [verticalStack3 setAlignment:1];

    verticalStack4 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    [verticalStack4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = objc_alloc_init(UIStackView);
    [(MusicCrossFadeDurationCell *)v4 setHorizontalStack:v10];

    horizontalStack = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    [horizontalStack setAxis:0];

    horizontalStack2 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    [horizontalStack2 setAlignment:3];

    horizontalStack3 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    [horizontalStack3 setDistribution:0];

    horizontalStack4 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    [horizontalStack4 setSpacing:8.0];

    horizontalStack5 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    [horizontalStack5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(MusicCrossFadeDurationCell *)v4 labelWithAlignment:0 fontTextStyle:UIFontTextStyleSubheadline];
    [(MusicCrossFadeDurationCell *)v4 setValueLabel:v16];

    v17 = [(MusicCrossFadeDurationCell *)v4 labelWithAlignment:0 fontTextStyle:UIFontTextStyleSubheadline];
    [(MusicCrossFadeDurationCell *)v4 setMinLabel:v17];

    v18 = [(MusicCrossFadeDurationCell *)v4 labelWithAlignment:2 fontTextStyle:UIFontTextStyleSubheadline];
    [(MusicCrossFadeDurationCell *)v4 setMaxLabel:v18];

    v19 = objc_alloc_init(UISlider);
    [(MusicCrossFadeDurationCell *)v4 setSlider:v19];

    slider = [(MusicCrossFadeDurationCell *)v4 slider];
    [slider setTranslatesAutoresizingMaskIntoConstraints:0];

    slider2 = [(MusicCrossFadeDurationCell *)v4 slider];
    [slider2 addTarget:v4 action:"sliderValueChanged:" forControlEvents:4096];

    horizontalStack6 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    minLabel = [(MusicCrossFadeDurationCell *)v4 minLabel];
    [horizontalStack6 addArrangedSubview:minLabel];

    horizontalStack7 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    slider3 = [(MusicCrossFadeDurationCell *)v4 slider];
    [horizontalStack7 addArrangedSubview:slider3];

    horizontalStack8 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    maxLabel = [(MusicCrossFadeDurationCell *)v4 maxLabel];
    [horizontalStack8 addArrangedSubview:maxLabel];

    verticalStack5 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    valueLabel = [(MusicCrossFadeDurationCell *)v4 valueLabel];
    [verticalStack5 addArrangedSubview:valueLabel];

    verticalStack6 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    horizontalStack9 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    [verticalStack6 addArrangedSubview:horizontalStack9];

    contentView = [(MusicCrossFadeDurationCell *)v4 contentView];
    verticalStack7 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    [contentView addSubview:verticalStack7];

    contentView2 = [(MusicCrossFadeDurationCell *)v4 contentView];
    verticalStack8 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    leadingAnchor = [verticalStack8 leadingAnchor];
    contentView3 = [(MusicCrossFadeDurationCell *)v4 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v66 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v74[0] = v66;
    verticalStack9 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    trailingAnchor = [verticalStack9 trailingAnchor];
    contentView4 = [(MusicCrossFadeDurationCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v60 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v74[1] = v60;
    verticalStack10 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    topAnchor = [verticalStack10 topAnchor];
    contentView5 = [(MusicCrossFadeDurationCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v54 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v74[2] = v54;
    verticalStack11 = [(MusicCrossFadeDurationCell *)v4 verticalStack];
    bottomAnchor = [verticalStack11 bottomAnchor];
    contentView6 = [(MusicCrossFadeDurationCell *)v4 contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v48 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v74[3] = v48;
    horizontalStack10 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    leadingAnchor3 = [horizontalStack10 leadingAnchor];
    contentView7 = [(MusicCrossFadeDurationCell *)v4 contentView];
    layoutMarginsGuide5 = [contentView7 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide5 leadingAnchor];
    v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v74[4] = v35;
    horizontalStack11 = [(MusicCrossFadeDurationCell *)v4 horizontalStack];
    trailingAnchor3 = [horizontalStack11 trailingAnchor];
    contentView8 = [(MusicCrossFadeDurationCell *)v4 contentView];
    layoutMarginsGuide6 = [contentView8 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide6 trailingAnchor];
    v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v74[5] = v41;
    v42 = [NSArray arrayWithObjects:v74 count:6];
    [contentView2 addConstraints:v42];
  }

  return v4;
}

- (id)labelWithAlignment:(int64_t)alignment fontTextStyle:(id)style
{
  v6 = objc_alloc_init(UILabel);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTextAlignment:alignment];
  textLabel = [(MusicCrossFadeDurationCell *)self textLabel];
  font = [textLabel font];
  [v6 setFont:font];

  LODWORD(v9) = 1148829696;
  [v6 setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v10];

  return v6;
}

- (void)setupWithSpeficier:(id)speficier
{
  speficierCopy = speficier;
  v5 = [speficierCopy propertyForKey:@"min"];
  [v5 floatValue];
  v7 = v6;
  slider = [(MusicCrossFadeDurationCell *)self slider];
  LODWORD(v9) = v7;
  [slider setMinimumValue:v9];

  v10 = [speficierCopy propertyForKey:@"max"];

  [v10 floatValue];
  v12 = v11;
  slider2 = [(MusicCrossFadeDurationCell *)self slider];
  LODWORD(v14) = v12;
  [slider2 setMaximumValue:v14];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"CROSS_FADE_BOUNDS_FORMAT" value:&stru_25A88 table:@"MusicSettings"];
  slider3 = [(MusicCrossFadeDurationCell *)self slider];
  [slider3 minimumValue];
  v19 = [NSString localizedStringWithFormat:v16, v18];
  minLabel = [(MusicCrossFadeDurationCell *)self minLabel];
  [minLabel setText:v19];

  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"CROSS_FADE_BOUNDS_FORMAT" value:&stru_25A88 table:@"MusicSettings"];
  slider4 = [(MusicCrossFadeDurationCell *)self slider];
  [slider4 maximumValue];
  v25 = [NSString localizedStringWithFormat:v22, v24];
  maxLabel = [(MusicCrossFadeDurationCell *)self maxLabel];
  [maxLabel setText:v25];

  v27 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v27 crossFadeDuration];
  v29 = v28;
  slider5 = [(MusicCrossFadeDurationCell *)self slider];
  *&v31 = v29;
  [slider5 setValue:v31];

  slider6 = [(MusicCrossFadeDurationCell *)self slider];
  [(MusicCrossFadeDurationCell *)self sliderValueChanged:slider6];
}

- (void)sliderValueChanged:(id)changed
{
  changedCopy = changed;
  [changedCopy value];
  v6 = v5;
  v7 = roundf(v5);
  *&v8 = v7;
  [changedCopy setValue:v8];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v9 localizedStringForKey:@"CROSS_FADE_DURATION_FORMAT" value:&stru_25A88 table:@"MusicSettings"];

  v10 = [NSString localizedStringWithFormat:v13, vcvtas_u32_f32(v6)];
  valueLabel = [(MusicCrossFadeDurationCell *)self valueLabel];
  [valueLabel setText:v10];

  v12 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v12 setCrossFadeDuration:v7];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = [(MusicCrossFadeDurationCell *)self verticalStack:fits.width];
  [v4 sizeThatFits:{width, 1.79769313e308}];
  v6 = v5;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end