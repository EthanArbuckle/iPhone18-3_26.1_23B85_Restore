@interface EKExpandedReminderStackCell
+ (id)exampleCell;
- (EKExpandedReminderStackCell)initWithFrame:(CGRect)frame;
- (void)setVisibleForExpandingAnimation:(BOOL)animation;
- (void)setupCellWithTitle:(id)title completed:(BOOL)completed editable:(BOOL)editable date:(id)date buttonColor:(id)color buttonImageName:(id)name backgroundColor:(id)backgroundColor recurringString:(id)self0 delegate:(id)self1;
@end

@implementation EKExpandedReminderStackCell

- (EKExpandedReminderStackCell)initWithFrame:(CGRect)frame
{
  v97[17] = *MEMORY[0x1E69E9840];
  v96.receiver = self;
  v96.super_class = EKExpandedReminderStackCell;
  v3 = [(EKExpandedReminderStackCell *)&v96 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    title = v3->_title;
    v3->_title = v4;

    [(UILabel *)v3->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_title setNumberOfLines:1];
    [(UILabel *)v3->_title setAdjustsFontForContentSizeCategory:1];
    contentView = [(EKExpandedReminderStackCell *)v3 contentView];
    [contentView addSubview:v3->_title];

    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    time = v3->_time;
    v3->_time = v7;

    [(UILabel *)v3->_time setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_time setNumberOfLines:1];
    [(UILabel *)v3->_time setAdjustsFontForContentSizeCategory:1];
    v9 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x10000];
    [(UILabel *)v3->_time setFont:v9];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_time setTextColor:secondaryLabelColor];

    contentView2 = [(EKExpandedReminderStackCell *)v3 contentView];
    [contentView2 addSubview:v3->_time];

    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundColorView = v3->_backgroundColorView;
    v3->_backgroundColorView = v12;

    [(UIView *)v3->_backgroundColorView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)v3->_backgroundColorView layer];
    [layer setCornerRadius:12.0];

    contentView3 = [(EKExpandedReminderStackCell *)v3 contentView];
    [contentView3 addSubview:v3->_backgroundColorView];

    contentView4 = [(EKExpandedReminderStackCell *)v3 contentView];
    [contentView4 sendSubviewToBack:v3->_backgroundColorView];

    v17 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    backgroundImageView = v3->_backgroundImageView;
    v3->_backgroundImageView = v17;

    [(UIImageView *)v3->_backgroundImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView5 = [(EKExpandedReminderStackCell *)v3 contentView];
    [contentView5 addSubview:v3->_backgroundImageView];

    contentView6 = [(EKExpandedReminderStackCell *)v3 contentView];
    [contentView6 sendSubviewToBack:v3->_backgroundImageView];

    objc_initWeak(&location, v3);
    v21 = MEMORY[0x1E69DC628];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __45__EKExpandedReminderStackCell_initWithFrame___block_invoke;
    v93[3] = &unk_1E8441A90;
    objc_copyWeak(&v94, &location);
    v90 = [v21 actionWithHandler:v93];
    v22 = MEMORY[0x1E69DC738];
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v24 = [v22 buttonWithConfiguration:plainButtonConfiguration primaryAction:v90];
    circle = v3->_circle;
    v3->_circle = v24;

    [(UIButton *)v3->_circle setExclusiveTouch:1];
    LODWORD(v26) = 1148846080;
    [(UIButton *)v3->_circle setContentCompressionResistancePriority:0 forAxis:v26];
    [(UIButton *)v3->_circle setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView7 = [(EKExpandedReminderStackCell *)v3 contentView];
    [contentView7 addSubview:v3->_circle];

    topAnchor = [(UILabel *)v3->_title topAnchor];
    topAnchor2 = [(UIView *)v3->_backgroundColorView topAnchor];
    v92 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:11.0];

    LODWORD(v30) = 1132068864;
    [v92 setPriority:v30];
    bottomAnchor = [(UILabel *)v3->_time bottomAnchor];
    bottomAnchor2 = [(UIView *)v3->_backgroundColorView bottomAnchor];
    v91 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-11.0];

    LODWORD(v33) = 1132068864;
    [v91 setPriority:v33];
    v44 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIButton *)v3->_circle leadingAnchor];
    leadingAnchor2 = [(UIView *)v3->_backgroundColorView leadingAnchor];
    v87 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:11.0];
    v97[0] = v87;
    firstBaselineAnchor = [(UIButton *)v3->_circle firstBaselineAnchor];
    firstBaselineAnchor2 = [(UILabel *)v3->_title firstBaselineAnchor];
    v84 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    v97[1] = v84;
    leadingAnchor3 = [(UILabel *)v3->_title leadingAnchor];
    trailingAnchor = [(UIButton *)v3->_circle trailingAnchor];
    v81 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
    v97[2] = v81;
    trailingAnchor2 = [(UILabel *)v3->_title trailingAnchor];
    trailingAnchor3 = [(UIView *)v3->_backgroundColorView trailingAnchor];
    v78 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:-11.0];
    v97[3] = v78;
    leadingAnchor4 = [(UILabel *)v3->_time leadingAnchor];
    trailingAnchor4 = [(UIButton *)v3->_circle trailingAnchor];
    v75 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:10.0];
    v97[4] = v75;
    trailingAnchor5 = [(UILabel *)v3->_time trailingAnchor];
    trailingAnchor6 = [(UIView *)v3->_backgroundColorView trailingAnchor];
    v72 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6 constant:-11.0];
    v97[5] = v72;
    topAnchor3 = [(UILabel *)v3->_time topAnchor];
    bottomAnchor3 = [(UILabel *)v3->_title bottomAnchor];
    v69 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:2.0];
    v97[6] = v69;
    v97[7] = v92;
    v97[8] = v91;
    leadingAnchor5 = [(UIView *)v3->_backgroundColorView leadingAnchor];
    contentView8 = [(EKExpandedReminderStackCell *)v3 contentView];
    leadingAnchor6 = [contentView8 leadingAnchor];
    v65 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v97[9] = v65;
    topAnchor4 = [(UIView *)v3->_backgroundColorView topAnchor];
    contentView9 = [(EKExpandedReminderStackCell *)v3 contentView];
    topAnchor5 = [contentView9 topAnchor];
    v61 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v97[10] = v61;
    trailingAnchor7 = [(UIView *)v3->_backgroundColorView trailingAnchor];
    contentView10 = [(EKExpandedReminderStackCell *)v3 contentView];
    trailingAnchor8 = [contentView10 trailingAnchor];
    v57 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v97[11] = v57;
    bottomAnchor4 = [(UIView *)v3->_backgroundColorView bottomAnchor];
    contentView11 = [(EKExpandedReminderStackCell *)v3 contentView];
    bottomAnchor5 = [contentView11 bottomAnchor];
    v53 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v97[12] = v53;
    leadingAnchor7 = [(UIImageView *)v3->_backgroundImageView leadingAnchor];
    contentView12 = [(EKExpandedReminderStackCell *)v3 contentView];
    leadingAnchor8 = [contentView12 leadingAnchor];
    v49 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v97[13] = v49;
    topAnchor6 = [(UIImageView *)v3->_backgroundImageView topAnchor];
    contentView13 = [(EKExpandedReminderStackCell *)v3 contentView];
    topAnchor7 = [contentView13 topAnchor];
    v45 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    v97[14] = v45;
    trailingAnchor9 = [(UIImageView *)v3->_backgroundImageView trailingAnchor];
    contentView14 = [(EKExpandedReminderStackCell *)v3 contentView];
    trailingAnchor10 = [contentView14 trailingAnchor];
    v37 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v97[15] = v37;
    bottomAnchor6 = [(UIImageView *)v3->_backgroundImageView bottomAnchor];
    contentView15 = [(EKExpandedReminderStackCell *)v3 contentView];
    bottomAnchor7 = [contentView15 bottomAnchor];
    v41 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v97[16] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:17];
    [v44 activateConstraints:v42];

    objc_destroyWeak(&v94);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __45__EKExpandedReminderStackCell_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 82);
    [v2 reminderToggled:v3];

    WeakRetained = v3;
  }
}

+ (id)exampleCell
{
  v2 = [EKExpandedReminderStackCell alloc];
  v3 = [(EKExpandedReminderStackCell *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = [MEMORY[0x1E695DF00] now];
  blueColor = [MEMORY[0x1E69DC888] blueColor];
  v6 = *MEMORY[0x1E69932F8];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(EKExpandedReminderStackCell *)v3 setupCellWithTitle:@"Example" completed:0 editable:1 date:v4 buttonColor:blueColor buttonImageName:v6 backgroundColor:systemBackgroundColor recurringString:@"Daily" delegate:0];

  return v3;
}

- (void)setupCellWithTitle:(id)title completed:(BOOL)completed editable:(BOOL)editable date:(id)date buttonColor:(id)color buttonImageName:(id)name backgroundColor:(id)backgroundColor recurringString:(id)self0 delegate:(id)self1
{
  editableCopy = editable;
  completedCopy = completed;
  titleCopy = title;
  stringCopy = string;
  backgroundColorCopy = backgroundColor;
  nameCopy = name;
  colorCopy = color;
  dateCopy = date;
  objc_storeWeak(&self->_delegate, delegate);
  [(UIView *)self->_backgroundColorView setBackgroundColor:backgroundColorCopy];

  [(UILabel *)self->_title setText:titleCopy];
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = *MEMORY[0x1E69DDCF8];
  v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v48 = *MEMORY[0x1E69DB648];
  [v19 setObject:v21 forKeyedSubscript:?];

  if (!editableCopy || completedCopy)
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  else
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  v23 = tertiaryLabelColor;
  v24 = *MEMORY[0x1E69DB650];
  [v19 setObject:tertiaryLabelColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v49 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleCopy attributes:v19];
  [(UILabel *)self->_title setAttributedText:?];
  v25 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v25 setTimeStyle:1];
  [v25 setDateStyle:0];
  [v25 setDoesRelativeDateFormatting:1];
  v52 = [v25 stringFromDate:dateCopy];

  if (stringCopy)
  {
    v26 = MEMORY[0x1E69DB7F0];
    v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"repeat"];
    v47 = [v26 textAttachmentWithImage:v27];

    v28 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v47];
    v29 = objc_alloc(MEMORY[0x1E696AAB0]);
    v30 = EventKitUIBundle();
    v31 = [v30 localizedStringForKey:@"%@ value:%@ %@" table:{&stru_1F4EF6790, 0}];
    v32 = v25;
    selfCopy = self;
    v34 = v24;
    v35 = v19;
    v36 = v20;
    v37 = [v29 initWithString:v31];

    v38 = 0x1E69DC000;
    stringCopy = [MEMORY[0x1E696AD40] localizedAttributedStringWithFormat:v37, v52, v28, stringCopy];

    v20 = v36;
    v19 = v35;
    v24 = v34;
    self = selfCopy;
    v25 = v32;
  }

  else
  {
    v38 = 0x1E69DC000uLL;
    stringCopy = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v52];
  }

  v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v40 setObject:v41 forKeyedSubscript:v48];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v40 setObject:secondaryLabelColor forKeyedSubscript:v24];

  [stringCopy addAttributes:v40 range:{0, objc_msgSend(stringCopy, "length")}];
  [(UILabel *)self->_time setAttributedText:stringCopy];
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [plainButtonConfiguration contentInsets];
  [plainButtonConfiguration setContentInsets:?];
  v44 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v20 weight:*MEMORY[0x1E69DB980]];
  v45 = [MEMORY[0x1E69DCAD8] configurationWithFont:v44 scale:3];
  v46 = [*(v38 + 2744) systemImageNamed:nameCopy withConfiguration:v45];

  [plainButtonConfiguration setImage:v46];
  [plainButtonConfiguration setBaseForegroundColor:colorCopy];

  [(UIButton *)self->_circle setConfiguration:plainButtonConfiguration];
}

- (void)setVisibleForExpandingAnimation:(BOOL)animation
{
  circle = self->_circle;
  if (animation)
  {
    [(UIButton *)circle setAlpha:1.0];
    [(UILabel *)self->_title setAlpha:1.0];
    [(UILabel *)self->_time setAlpha:1.0];
    layer = [(UIView *)self->_backgroundColorView layer];
    [layer setCornerRadius:12.0];

    [(UIView *)self->_backgroundColorView setAlpha:1.0];
    p_backgroundImageView = &self->_backgroundImageView;
  }

  else
  {
    [(UIButton *)circle setAlpha:0.0];
    [(UILabel *)self->_title setAlpha:0.0];
    [(UILabel *)self->_time setAlpha:0.0];
    p_backgroundImageView = &self->_backgroundColorView;
    layer2 = [(UIView *)self->_backgroundColorView layer];
    [layer2 setCornerRadius:0.0];

    [(UIImageView *)self->_backgroundImageView setAlpha:1.0];
  }

  v8 = *p_backgroundImageView;

  [v8 setAlpha:0.0];
}

@end