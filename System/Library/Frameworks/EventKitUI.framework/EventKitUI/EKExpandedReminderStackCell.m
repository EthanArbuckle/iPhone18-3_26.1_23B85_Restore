@interface EKExpandedReminderStackCell
+ (id)exampleCell;
- (EKExpandedReminderStackCell)initWithFrame:(CGRect)a3;
- (void)setVisibleForExpandingAnimation:(BOOL)a3;
- (void)setupCellWithTitle:(id)a3 completed:(BOOL)a4 editable:(BOOL)a5 date:(id)a6 buttonColor:(id)a7 buttonImageName:(id)a8 backgroundColor:(id)a9 recurringString:(id)a10 delegate:(id)a11;
@end

@implementation EKExpandedReminderStackCell

- (EKExpandedReminderStackCell)initWithFrame:(CGRect)a3
{
  v97[17] = *MEMORY[0x1E69E9840];
  v96.receiver = self;
  v96.super_class = EKExpandedReminderStackCell;
  v3 = [(EKExpandedReminderStackCell *)&v96 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    title = v3->_title;
    v3->_title = v4;

    [(UILabel *)v3->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_title setNumberOfLines:1];
    [(UILabel *)v3->_title setAdjustsFontForContentSizeCategory:1];
    v6 = [(EKExpandedReminderStackCell *)v3 contentView];
    [v6 addSubview:v3->_title];

    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    time = v3->_time;
    v3->_time = v7;

    [(UILabel *)v3->_time setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_time setNumberOfLines:1];
    [(UILabel *)v3->_time setAdjustsFontForContentSizeCategory:1];
    v9 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x10000];
    [(UILabel *)v3->_time setFont:v9];

    v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_time setTextColor:v10];

    v11 = [(EKExpandedReminderStackCell *)v3 contentView];
    [v11 addSubview:v3->_time];

    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundColorView = v3->_backgroundColorView;
    v3->_backgroundColorView = v12;

    [(UIView *)v3->_backgroundColorView setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(UIView *)v3->_backgroundColorView layer];
    [v14 setCornerRadius:12.0];

    v15 = [(EKExpandedReminderStackCell *)v3 contentView];
    [v15 addSubview:v3->_backgroundColorView];

    v16 = [(EKExpandedReminderStackCell *)v3 contentView];
    [v16 sendSubviewToBack:v3->_backgroundColorView];

    v17 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    backgroundImageView = v3->_backgroundImageView;
    v3->_backgroundImageView = v17;

    [(UIImageView *)v3->_backgroundImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [(EKExpandedReminderStackCell *)v3 contentView];
    [v19 addSubview:v3->_backgroundImageView];

    v20 = [(EKExpandedReminderStackCell *)v3 contentView];
    [v20 sendSubviewToBack:v3->_backgroundImageView];

    objc_initWeak(&location, v3);
    v21 = MEMORY[0x1E69DC628];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __45__EKExpandedReminderStackCell_initWithFrame___block_invoke;
    v93[3] = &unk_1E8441A90;
    objc_copyWeak(&v94, &location);
    v90 = [v21 actionWithHandler:v93];
    v22 = MEMORY[0x1E69DC738];
    v23 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v24 = [v22 buttonWithConfiguration:v23 primaryAction:v90];
    circle = v3->_circle;
    v3->_circle = v24;

    [(UIButton *)v3->_circle setExclusiveTouch:1];
    LODWORD(v26) = 1148846080;
    [(UIButton *)v3->_circle setContentCompressionResistancePriority:0 forAxis:v26];
    [(UIButton *)v3->_circle setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [(EKExpandedReminderStackCell *)v3 contentView];
    [v27 addSubview:v3->_circle];

    v28 = [(UILabel *)v3->_title topAnchor];
    v29 = [(UIView *)v3->_backgroundColorView topAnchor];
    v92 = [v28 constraintEqualToAnchor:v29 constant:11.0];

    LODWORD(v30) = 1132068864;
    [v92 setPriority:v30];
    v31 = [(UILabel *)v3->_time bottomAnchor];
    v32 = [(UIView *)v3->_backgroundColorView bottomAnchor];
    v91 = [v31 constraintEqualToAnchor:v32 constant:-11.0];

    LODWORD(v33) = 1132068864;
    [v91 setPriority:v33];
    v44 = MEMORY[0x1E696ACD8];
    v89 = [(UIButton *)v3->_circle leadingAnchor];
    v88 = [(UIView *)v3->_backgroundColorView leadingAnchor];
    v87 = [v89 constraintEqualToAnchor:v88 constant:11.0];
    v97[0] = v87;
    v86 = [(UIButton *)v3->_circle firstBaselineAnchor];
    v85 = [(UILabel *)v3->_title firstBaselineAnchor];
    v84 = [v86 constraintEqualToAnchor:v85];
    v97[1] = v84;
    v83 = [(UILabel *)v3->_title leadingAnchor];
    v82 = [(UIButton *)v3->_circle trailingAnchor];
    v81 = [v83 constraintEqualToAnchor:v82 constant:10.0];
    v97[2] = v81;
    v80 = [(UILabel *)v3->_title trailingAnchor];
    v79 = [(UIView *)v3->_backgroundColorView trailingAnchor];
    v78 = [v80 constraintLessThanOrEqualToAnchor:v79 constant:-11.0];
    v97[3] = v78;
    v77 = [(UILabel *)v3->_time leadingAnchor];
    v76 = [(UIButton *)v3->_circle trailingAnchor];
    v75 = [v77 constraintEqualToAnchor:v76 constant:10.0];
    v97[4] = v75;
    v74 = [(UILabel *)v3->_time trailingAnchor];
    v73 = [(UIView *)v3->_backgroundColorView trailingAnchor];
    v72 = [v74 constraintLessThanOrEqualToAnchor:v73 constant:-11.0];
    v97[5] = v72;
    v71 = [(UILabel *)v3->_time topAnchor];
    v70 = [(UILabel *)v3->_title bottomAnchor];
    v69 = [v71 constraintEqualToAnchor:v70 constant:2.0];
    v97[6] = v69;
    v97[7] = v92;
    v97[8] = v91;
    v67 = [(UIView *)v3->_backgroundColorView leadingAnchor];
    v68 = [(EKExpandedReminderStackCell *)v3 contentView];
    v66 = [v68 leadingAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v97[9] = v65;
    v63 = [(UIView *)v3->_backgroundColorView topAnchor];
    v64 = [(EKExpandedReminderStackCell *)v3 contentView];
    v62 = [v64 topAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v97[10] = v61;
    v59 = [(UIView *)v3->_backgroundColorView trailingAnchor];
    v60 = [(EKExpandedReminderStackCell *)v3 contentView];
    v58 = [v60 trailingAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v97[11] = v57;
    v55 = [(UIView *)v3->_backgroundColorView bottomAnchor];
    v56 = [(EKExpandedReminderStackCell *)v3 contentView];
    v54 = [v56 bottomAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v97[12] = v53;
    v51 = [(UIImageView *)v3->_backgroundImageView leadingAnchor];
    v52 = [(EKExpandedReminderStackCell *)v3 contentView];
    v50 = [v52 leadingAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v97[13] = v49;
    v47 = [(UIImageView *)v3->_backgroundImageView topAnchor];
    v48 = [(EKExpandedReminderStackCell *)v3 contentView];
    v46 = [v48 topAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v97[14] = v45;
    v34 = [(UIImageView *)v3->_backgroundImageView trailingAnchor];
    v35 = [(EKExpandedReminderStackCell *)v3 contentView];
    v36 = [v35 trailingAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    v97[15] = v37;
    v38 = [(UIImageView *)v3->_backgroundImageView bottomAnchor];
    v39 = [(EKExpandedReminderStackCell *)v3 contentView];
    v40 = [v39 bottomAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
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
  v5 = [MEMORY[0x1E69DC888] blueColor];
  v6 = *MEMORY[0x1E69932F8];
  v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(EKExpandedReminderStackCell *)v3 setupCellWithTitle:@"Example" completed:0 editable:1 date:v4 buttonColor:v5 buttonImageName:v6 backgroundColor:v7 recurringString:@"Daily" delegate:0];

  return v3;
}

- (void)setupCellWithTitle:(id)a3 completed:(BOOL)a4 editable:(BOOL)a5 date:(id)a6 buttonColor:(id)a7 buttonImageName:(id)a8 backgroundColor:(id)a9 recurringString:(id)a10 delegate:(id)a11
{
  v14 = a5;
  v15 = a4;
  v54 = a3;
  v53 = a10;
  v17 = a9;
  v50 = a8;
  v51 = a7;
  v18 = a6;
  objc_storeWeak(&self->_delegate, a11);
  [(UIView *)self->_backgroundColorView setBackgroundColor:v17];

  [(UILabel *)self->_title setText:v54];
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = *MEMORY[0x1E69DDCF8];
  v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v48 = *MEMORY[0x1E69DB648];
  [v19 setObject:v21 forKeyedSubscript:?];

  if (!v14 || v15)
  {
    v22 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  else
  {
    v22 = [MEMORY[0x1E69DC888] labelColor];
  }

  v23 = v22;
  v24 = *MEMORY[0x1E69DB650];
  [v19 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v49 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v54 attributes:v19];
  [(UILabel *)self->_title setAttributedText:?];
  v25 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v25 setTimeStyle:1];
  [v25 setDateStyle:0];
  [v25 setDoesRelativeDateFormatting:1];
  v52 = [v25 stringFromDate:v18];

  if (v53)
  {
    v26 = MEMORY[0x1E69DB7F0];
    v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"repeat"];
    v47 = [v26 textAttachmentWithImage:v27];

    v28 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v47];
    v29 = objc_alloc(MEMORY[0x1E696AAB0]);
    v30 = EventKitUIBundle();
    v31 = [v30 localizedStringForKey:@"%@ value:%@ %@" table:{&stru_1F4EF6790, 0}];
    v32 = v25;
    v33 = self;
    v34 = v24;
    v35 = v19;
    v36 = v20;
    v37 = [v29 initWithString:v31];

    v38 = 0x1E69DC000;
    v39 = [MEMORY[0x1E696AD40] localizedAttributedStringWithFormat:v37, v52, v28, v53];

    v20 = v36;
    v19 = v35;
    v24 = v34;
    self = v33;
    v25 = v32;
  }

  else
  {
    v38 = 0x1E69DC000uLL;
    v39 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v52];
  }

  v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v40 setObject:v41 forKeyedSubscript:v48];

  v42 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v40 setObject:v42 forKeyedSubscript:v24];

  [v39 addAttributes:v40 range:{0, objc_msgSend(v39, "length")}];
  [(UILabel *)self->_time setAttributedText:v39];
  v43 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [v43 contentInsets];
  [v43 setContentInsets:?];
  v44 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v20 weight:*MEMORY[0x1E69DB980]];
  v45 = [MEMORY[0x1E69DCAD8] configurationWithFont:v44 scale:3];
  v46 = [*(v38 + 2744) systemImageNamed:v50 withConfiguration:v45];

  [v43 setImage:v46];
  [v43 setBaseForegroundColor:v51];

  [(UIButton *)self->_circle setConfiguration:v43];
}

- (void)setVisibleForExpandingAnimation:(BOOL)a3
{
  circle = self->_circle;
  if (a3)
  {
    [(UIButton *)circle setAlpha:1.0];
    [(UILabel *)self->_title setAlpha:1.0];
    [(UILabel *)self->_time setAlpha:1.0];
    v5 = [(UIView *)self->_backgroundColorView layer];
    [v5 setCornerRadius:12.0];

    [(UIView *)self->_backgroundColorView setAlpha:1.0];
    p_backgroundImageView = &self->_backgroundImageView;
  }

  else
  {
    [(UIButton *)circle setAlpha:0.0];
    [(UILabel *)self->_title setAlpha:0.0];
    [(UILabel *)self->_time setAlpha:0.0];
    p_backgroundImageView = &self->_backgroundColorView;
    v7 = [(UIView *)self->_backgroundColorView layer];
    [v7 setCornerRadius:0.0];

    [(UIImageView *)self->_backgroundImageView setAlpha:1.0];
  }

  v8 = *p_backgroundImageView;

  [v8 setAlpha:0.0];
}

@end