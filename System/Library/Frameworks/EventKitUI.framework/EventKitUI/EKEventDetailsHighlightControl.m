@interface EKEventDetailsHighlightControl
+ (double)bottomMarginConstant;
+ (double)interLabelBaselineDeltaConstant;
+ (double)topMarginConstant;
+ (id)titleFont;
- (EKEventDetailsHighlightControl)initWithFrame:(CGRect)a3 leadingMargin:(double)a4;
- (void)_updateSubtitleAndActionText;
- (void)_updateTitleAndSubtitleConstraints;
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)setActionText:(id)a3 color:(id)a4;
- (void)setSubtitleAttributedText:(id)a3;
- (void)setSubtitleText:(id)a3;
- (void)setTitleText:(id)a3;
@end

@implementation EKEventDetailsHighlightControl

+ (id)titleFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:2 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (double)topMarginConstant
{
  v2 = [a1 titleFont];
  [v2 _bodyLeading];
  v4 = v3 * 1.11111111;

  return v4;
}

+ (double)interLabelBaselineDeltaConstant
{
  v2 = [objc_opt_class() subtitleFont];
  [v2 _bodyLeading];
  v4 = v3;

  return v4;
}

+ (double)bottomMarginConstant
{
  v2 = [a1 titleFont];
  [v2 _bodyLeading];
  v4 = v3 * 0.666666667;

  return v4;
}

- (EKEventDetailsHighlightControl)initWithFrame:(CGRect)a3 leadingMargin:(double)a4
{
  v102[3] = *MEMORY[0x1E69E9840];
  v98.receiver = self;
  v98.super_class = EKEventDetailsHighlightControl;
  v5 = [(EKEventDetailsHighlightControl *)&v98 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v5 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(EKEventDetailsHighlightControl *)v5 setBackgroundColor:v7];

    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x1E695F058], v10, v11, v12}];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v13;

    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v9, v10, v11, v12}];
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v15;

    v17 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v9, v10, v11, v12}];
    actionLabel = v5->_actionLabel;
    v5->_actionLabel = v17;

    v19 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v9, v10, v11, v12}];
    iconStack = v5->_iconStack;
    v5->_iconStack = v19;

    v21 = v5->_titleLabel;
    v22 = [objc_opt_class() titleFont];
    [(UILabel *)v21 setFont:v22];

    [(UILabel *)v5->_titleLabel setTextAlignment:4];
    v23 = v5->_titleLabel;
    v24 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v23 setTextColor:v24];

    [(UILabel *)v5->_titleLabel setLineBreakMode:0];
    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    v25 = v5->_subtitleLabel;
    v26 = [objc_opt_class() subtitleFont];
    [(UILabel *)v25 setFont:v26];

    [(UILabel *)v5->_subtitleLabel setTextAlignment:4];
    [(UILabel *)v5->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v5->_subtitleLabel setLineBreakMode:0];
    v27 = v5->_subtitleLabel;
    v28 = [objc_opt_class() subtitleColor];
    [(UILabel *)v27 setTextColor:v28];

    v29 = v5->_actionLabel;
    v30 = [objc_opt_class() subtitleFont];
    [(UILabel *)v29 setFont:v30];

    [(UILabel *)v5->_actionLabel setTextAlignment:4];
    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_actionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v5->_iconStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKEventDetailsHighlightControl *)v5 addSubview:v5->_titleLabel];
    [(EKEventDetailsHighlightControl *)v5 addSubview:v5->_subtitleLabel];
    [(EKEventDetailsHighlightControl *)v5 addSubview:v5->_actionLabel];
    [(EKEventDetailsHighlightControl *)v5 addSubview:v5->_iconStack];
    LODWORD(v31) = 1148846080;
    [(UILabel *)v5->_titleLabel setContentHuggingPriority:1 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [(UILabel *)v5->_subtitleLabel setContentHuggingPriority:1 forAxis:v32];
    LODWORD(v33) = 1148846080;
    [(UILabel *)v5->_actionLabel setContentCompressionResistancePriority:0 forAxis:v33];
    LODWORD(v34) = 1148846080;
    [(UIImageView *)v5->_iconStack setContentHuggingPriority:0 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [(UIImageView *)v5->_iconStack setContentHuggingPriority:1 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [(UIImageView *)v5->_iconStack setContentCompressionResistancePriority:0 forAxis:v36];
    LODWORD(v37) = 1148846080;
    [(UIImageView *)v5->_iconStack setContentCompressionResistancePriority:1 forAxis:v37];
    LODWORD(v38) = 1148846080;
    [(EKEventDetailsHighlightControl *)v5 setContentCompressionResistancePriority:1 forAxis:v38];
    LODWORD(v39) = 1148846080;
    [(EKEventDetailsHighlightControl *)v5 setContentHuggingPriority:1 forAxis:v39];
    v40 = MEMORY[0x1E696ACD8];
    v41 = v5->_titleLabel;
    [objc_opt_class() topMarginConstant];
    v43 = [v40 constraintWithItem:v41 attribute:12 relatedBy:0 toItem:v5 attribute:3 multiplier:1.0 constant:v42];
    [(NSLayoutConstraint *)v43 setIdentifier:@"MessageSuggestionBannerTitle.topMargin"];
    v44 = MEMORY[0x1E696ACD8];
    v45 = v5->_subtitleLabel;
    v46 = v5->_titleLabel;
    [objc_opt_class() interLabelBaselineDeltaConstant];
    v48 = [v44 constraintWithItem:v45 attribute:12 relatedBy:0 toItem:v46 attribute:11 multiplier:1.0 constant:v47];
    [(NSLayoutConstraint *)v48 setIdentifier:@"MessageSuggestionBannerTitle.titleSubtitleBaselineDistance"];
    v49 = MEMORY[0x1E696ACD8];
    v50 = v5->_subtitleLabel;
    [objc_opt_class() bottomMarginConstant];
    v52 = [v49 constraintWithItem:v5 attribute:4 relatedBy:0 toItem:v50 attribute:11 multiplier:1.0 constant:v51];
    [(NSLayoutConstraint *)v52 setIdentifier:@"MessageSuggestionBannerTitle.bottomMargin"];
    v97 = [MEMORY[0x1E696ACD8] constraintWithItem:v5->_subtitleLabel attribute:5 relatedBy:0 toItem:v5->_titleLabel attribute:5 multiplier:1.0 constant:0.0];
    topMarginConstraint = v5->_topMarginConstraint;
    v5->_topMarginConstraint = v43;
    v96 = v43;

    interLabelPaddingConstraint = v5->_interLabelPaddingConstraint;
    v5->_interLabelPaddingConstraint = v48;
    v94 = v48;

    bottomMarginConstraint = v5->_bottomMarginConstraint;
    v5->_bottomMarginConstraint = v52;
    v95 = v52;

    v93 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelSubt.isa, v5->_titleLabel, v5->_subtitleLabel, v5->_iconStack, v5->_actionLabel, 0);
    v101[0] = @"iconStackLeading";
    v56 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v102[0] = v56;
    v102[1] = &unk_1F4F32350;
    v101[1] = @"iconStackTrailing";
    v101[2] = @"subtitleTrailingPadding";
    v102[2] = &unk_1F4F32368;
    v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:3];

    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v96, v97, 0}];
    v58 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[_subtitleLabel]-(==subtitleTrailingPadding)-[_actionLabel]" options:2048 metrics:v92 views:v93];
    v59 = [v58 arrayByAddingObject:v95];
    v60 = [v59 arrayByAddingObject:v94];
    titleAndSubtitleVisibleContraints = v5->_titleAndSubtitleVisibleContraints;
    v5->_titleAndSubtitleVisibleContraints = v60;

    v62 = MEMORY[0x1E696ACD8];
    v63 = v5->_titleLabel;
    [objc_opt_class() bottomMarginConstant];
    v65 = [v62 constraintWithItem:v5 attribute:4 relatedBy:0 toItem:v63 attribute:11 multiplier:1.0 constant:v64];
    v100 = v65;
    v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
    justTitleVisibleContraints = v5->_justTitleVisibleContraints;
    v5->_justTitleVisibleContraints = v66;

    v68 = [MEMORY[0x1E696ACD8] constraintWithItem:v5->_actionLabel attribute:5 relatedBy:0 toItem:v5->_titleLabel attribute:5 multiplier:1.0 constant:0.0];
    v99[0] = v68;
    v69 = MEMORY[0x1E696ACD8];
    v70 = v5->_actionLabel;
    [objc_opt_class() bottomMarginConstant];
    v72 = [v69 constraintWithItem:v5 attribute:4 relatedBy:0 toItem:v70 attribute:11 multiplier:1.0 constant:v71];
    v99[1] = v72;
    v73 = MEMORY[0x1E696ACD8];
    v74 = v5->_actionLabel;
    v75 = v5->_titleLabel;
    [objc_opt_class() interLabelBaselineDeltaConstant];
    v77 = [v73 constraintWithItem:v74 attribute:12 relatedBy:0 toItem:v75 attribute:11 multiplier:1.0 constant:v76];
    v99[2] = v77;
    v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:3];
    justTitleAndActionVisibleContraints = v5->_justTitleAndActionVisibleContraints;
    v5->_justTitleAndActionVisibleContraints = v78;

    v80 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[_subtitleLabel]-(>=subtitleTrailingPadding)-[_actionLabel]-(==0)-|" options:2048 metrics:v92 views:v93];
    v81 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-[_subtitleLabel]-|" options:0 metrics:v92 views:v93];
    v82 = [v80 arrayByAddingObjectsFromArray:v81];
    v83 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-[_actionLabel]-|" options:0 metrics:v92 views:v93];
    v84 = [v82 arrayByAddingObjectsFromArray:v83];
    justSubtitleVisibleContraints = v5->_justSubtitleVisibleContraints;
    v5->_justSubtitleVisibleContraints = v84;

    [v57 addObjectsFromArray:v5->_titleAndSubtitleVisibleContraints];
    [v57 addObjectsFromArray:v5->_justTitleVisibleContraints];
    [v57 addObjectsFromArray:v5->_justSubtitleVisibleContraints];
    [v57 addObjectsFromArray:v5->_justTitleAndActionVisibleContraints];
    v86 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(iconStackLeading)-[_iconStack]-iconStackTrailing-[_titleLabel]-(>=0)-|" options:0 metrics:v92 views:v93];
    [v57 addObjectsFromArray:v86];

    v87 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[_actionLabel]-(>=0)-|" options:0 metrics:v92 views:v93];
    [v57 addObjectsFromArray:v87];

    v88 = [(UIImageView *)v5->_iconStack centerYAnchor];
    v89 = [(UILabel *)v5->_titleLabel centerYAnchor];
    v90 = [v88 constraintEqualToAnchor:v89];
    [v57 addObject:v90];

    [(EKEventDetailsHighlightControl *)v5 addConstraints:v57];
    [MEMORY[0x1E696ACD8] deactivateConstraints:v5->_justTitleVisibleContraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:v5->_justSubtitleVisibleContraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:v5->_justTitleAndActionVisibleContraints];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = EKEventDetailsHighlightControl;
  [(EKEventDetailsHighlightControl *)&v4 dealloc];
}

- (void)_updateTitleAndSubtitleConstraints
{
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_justTitleVisibleContraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_justSubtitleVisibleContraints];
  p_titleAndSubtitleVisibleContraints = &self->_titleAndSubtitleVisibleContraints;
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_titleAndSubtitleVisibleContraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_justTitleAndActionVisibleContraints];
  v4 = [(UILabel *)self->_titleLabel text];

  v5 = [(UILabel *)self->_subtitleLabel text];

  if (v4)
  {
    if (!v5)
    {
      v6 = [(UILabel *)self->_actionLabel text];

      if (v6)
      {
        p_titleAndSubtitleVisibleContraints = &self->_justTitleAndActionVisibleContraints;
      }

      else
      {
        p_titleAndSubtitleVisibleContraints = &self->_justTitleVisibleContraints;
      }
    }
  }

  else
  {
    p_titleAndSubtitleVisibleContraints = &self->_justSubtitleVisibleContraints;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  [MEMORY[0x1E696ACD8] activateConstraints:*p_titleAndSubtitleVisibleContraints];
LABEL_8:

  [(EKEventDetailsHighlightControl *)self setNeedsUpdateConstraints];
}

- (void)setTitleText:(id)a3
{
  [(UILabel *)self->_titleLabel setText:a3];

  [(EKEventDetailsHighlightControl *)self _updateTitleAndSubtitleConstraints];
}

- (void)_updateSubtitleAndActionText
{
  v29[2] = *MEMORY[0x1E69E9840];
  v3 = 0x1E69DD000uLL;
  v4 = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  v5 = [(EKEventDetailsHighlightControl *)self traitCollection];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v5];

  if ([(NSString *)self->_subtitleText length]&& self->_actionText)
  {
    v6 = objc_alloc(MEMORY[0x1E696AD40]);
    v7 = [(NSString *)self->_subtitleText stringByAppendingString:@" "];
    v27 = *MEMORY[0x1E69DB648];
    v8 = v27;
    v9 = [objc_opt_class() subtitleFont];
    v29[0] = v9;
    v28 = *MEMORY[0x1E69DB650];
    v10 = v28;
    v11 = [objc_opt_class() subtitleColor];
    v29[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v27 count:2];
    v13 = [v6 initWithString:v7 attributes:v12];

    v14 = objc_alloc(MEMORY[0x1E696AAB0]);
    actionText = self->_actionText;
    v25[0] = v8;
    v16 = [objc_opt_class() subtitleFont];
    v25[1] = v10;
    v26[0] = v16;
    v26[1] = self->_actionColor;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v18 = [v14 initWithString:actionText attributes:v17];

    v3 = 0x1E69DD000;
    [v13 appendAttributedString:v18];
    [(UILabel *)self->_subtitleLabel setText:0];
    [(UILabel *)self->_subtitleLabel setAttributedText:v13];
    [(UILabel *)self->_actionLabel setText:0];

LABEL_8:
    goto LABEL_9;
  }

  if (self->_subtitleText)
  {
    [(UILabel *)self->_subtitleLabel setAttributedText:0];
    [(UILabel *)self->_subtitleLabel setText:self->_subtitleText];
    [(UILabel *)self->_actionLabel setText:0];
  }

  else if (self->_actionText)
  {
    v19 = objc_alloc(MEMORY[0x1E696AAB0]);
    v20 = self->_actionText;
    v23[0] = *MEMORY[0x1E69DB648];
    v21 = [objc_opt_class() subtitleFont];
    v23[1] = *MEMORY[0x1E69DB650];
    v24[0] = v21;
    v24[1] = self->_actionColor;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v13 = [v19 initWithString:v20 attributes:v22];

    [(UILabel *)self->_subtitleLabel setText:0];
    [(UILabel *)self->_subtitleLabel setAttributedText:0];
    [(UILabel *)self->_actionLabel setAttributedText:v13];
    goto LABEL_8;
  }

LABEL_9:
  [(EKEventDetailsHighlightControl *)self _updateTitleAndSubtitleConstraints];
  [*(v3 + 440) _setCurrentTraitCollection:v4];
}

- (void)setActionText:(id)a3 color:(id)a4
{
  v6 = a3;
  v7 = a4;
  actionText = self->_actionText;
  self->_actionText = v6;
  v9 = v6;

  actionColor = self->_actionColor;
  self->_actionColor = v7;

  [(EKEventDetailsHighlightControl *)self _updateSubtitleAndActionText];
}

- (void)setSubtitleText:(id)a3
{
  objc_storeStrong(&self->_subtitleText, a3);

  [(EKEventDetailsHighlightControl *)self _updateSubtitleAndActionText];
}

- (void)setSubtitleAttributedText:(id)a3
{
  [(UILabel *)self->_subtitleLabel setAttributedText:a3];

  [(EKEventDetailsHighlightControl *)self _updateTitleAndSubtitleConstraints];
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  titleLabel = self->_titleLabel;
  v5 = [objc_opt_class() titleFont];
  [(UILabel *)titleLabel setFont:v5];

  subtitleLabel = self->_subtitleLabel;
  v7 = [objc_opt_class() subtitleFont];
  [(UILabel *)subtitleLabel setFont:v7];

  actionLabel = self->_actionLabel;
  v9 = [objc_opt_class() subtitleFont];
  [(UILabel *)actionLabel setFont:v9];

  topMarginConstraint = self->_topMarginConstraint;
  [objc_opt_class() topMarginConstant];
  [(NSLayoutConstraint *)topMarginConstraint setConstant:?];
  interLabelPaddingConstraint = self->_interLabelPaddingConstraint;
  [objc_opt_class() interLabelBaselineDeltaConstant];
  [(NSLayoutConstraint *)interLabelPaddingConstraint setConstant:?];
  bottomMarginConstraint = self->_bottomMarginConstraint;
  [objc_opt_class() bottomMarginConstant];

  [(NSLayoutConstraint *)bottomMarginConstraint setConstant:?];
}

@end