@interface CNUINavigationListViewCell
+ (CGSize)desiredContentSizeForTitle:(id)title subTitle:(id)subTitle navigationListStyle:(id)style;
+ (double)contentViewBottomAnchorConstraintConstantForNavigationListStyle:(id)style;
+ (double)subtitleLabelFirstBaselineAnchorConstraintConstantForSubtitle:(id)subtitle navigationListStyle:(id)style;
+ (double)titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:(id)style;
+ (id)accessoryImageViewAccessibilityLabel;
+ (id)expandedAccessoryImageViewAccessibilityLabel;
+ (id)highlightedDisclosureImage;
- (CNUINavigationListViewCell)initWithCoder:(id)coder;
- (CNUINavigationListViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)contentViewBottomAnchorConstraintConstant;
- (double)minimumContentHeight;
- (double)subtitleLabelFirstBaselineAnchorConstraintConstant;
- (double)titleLabelFirstBaselineAnchorConstraintConstant;
- (void)applyStyle;
- (void)dealloc;
- (void)loadContentView;
- (void)loadContentViewConstraints;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForReuse;
- (void)setAccessoryControlExpanded:(BOOL)expanded;
- (void)setAccessoryControlExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setNavigationListStyle:(id)style;
- (void)setSeparatorStyle:(int64_t)style;
- (void)setSubtitleLabelFirstBaselineAnchorConstraint:(id)constraint;
- (void)setSubtitleLabelLeadingAnchorConstraint:(id)constraint;
- (void)setSubtitleLabelTrailingAnchorConstraint:(id)constraint;
- (void)setTitleLabelFirstBaselineAnchorConstraint:(id)constraint;
- (void)setTitleLabelLeadingAnchorConstraint:(id)constraint;
- (void)setTitleLabelTrailingAnchorConstraint:(id)constraint;
- (void)setupAccessoryImageViewInView:(id)view;
- (void)styleUpdated;
- (void)updateConstraints;
- (void)updateConstraintsConstants;
- (void)updateVisualStateAnimated:(BOOL)animated;
@end

@implementation CNUINavigationListViewCell

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  subtitleLabel = [(CNUINavigationListViewCell *)self subtitleLabel];
  v14 = subtitleLabel;
  if (subtitleLabel == objectCopy)
  {
    if ([pathCopy isEqualToString:@"text"])
    {
    }

    else
    {
      v15 = [pathCopy isEqualToString:@"attributedText"];

      if ((v15 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    [(CNUINavigationListViewCell *)self updateConstraintsConstants];
    goto LABEL_8;
  }

LABEL_3:
  v16.receiver = self;
  v16.super_class = CNUINavigationListViewCell;
  [(CNUINavigationListViewCell *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_8:
}

- (void)updateVisualStateAnimated:(BOOL)animated
{
  v3 = 0.2;
  if (!animated)
  {
    v3 = 0.0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__CNUINavigationListViewCell_updateVisualStateAnimated___block_invoke;
  v4[3] = &unk_1E74E6A88;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:v3];
}

void __56__CNUINavigationListViewCell_updateVisualStateAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isAccessoryControlExpanded];
  v3 = [*(a1 + 32) styleApplier];
  v4 = v3;
  v5 = *(a1 + 32);
  if (v2)
  {
    [v3 applyExpandedBackgroundNavigationListStyleToCell:v5];
  }

  else
  {
    [v3 applyCollapsedBackgroundNavigationListStyleToCell:v5];
  }

  v6 = [*(a1 + 32) isHighlighted];
  v7 = [*(a1 + 32) navigationListStyle];
  v8 = v7;
  if (v6)
  {
    [v7 actionIconFillHighlightedColor];
  }

  else
  {
    [v7 actionIconFillColor];
  }
  v9 = ;
  v10 = [*(a1 + 32) titleImageView];
  [v10 setTintColor:v9];

  v11 = [*(a1 + 32) isAccessoryControlExpanded];
  v12 = objc_opt_class();
  if (v11)
  {
    [v12 expandedAccessoryImageViewAccessibilityLabel];
  }

  else
  {
    [v12 accessoryImageViewAccessibilityLabel];
  }
  v13 = ;
  v14 = [*(a1 + 32) accessoryImageView];
  [v14 setAccessibilityLabel:v13];

  if ([*(a1 + 32) isAccessoryControlExpanded])
  {
    CGAffineTransformMakeRotation(&v18, 3.14159265);
  }

  else
  {
    v15 = *(MEMORY[0x1E695EFD0] + 16);
    *&v18.a = *MEMORY[0x1E695EFD0];
    *&v18.c = v15;
    *&v18.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  v16 = [*(a1 + 32) accessoryImageView];
  v17 = v18;
  [v16 setTransform:&v17];
}

- (void)updateConstraintsConstants
{
  [(CNUINavigationListViewCell *)self contentViewBottomAnchorConstraintConstant];
  v4 = v3;
  contentViewBottomAnchorConstraint = [(CNUINavigationListViewCell *)self contentViewBottomAnchorConstraint];
  [contentViewBottomAnchorConstraint setConstant:v4];

  [(CNUINavigationListViewCell *)self subtitleLabelFirstBaselineAnchorConstraintConstant];
  v7 = v6;
  subtitleLabelFirstBaselineAnchorConstraint = [(CNUINavigationListViewCell *)self subtitleLabelFirstBaselineAnchorConstraint];
  [subtitleLabelFirstBaselineAnchorConstraint setConstant:v7];

  [(CNUINavigationListViewCell *)self titleLabelFirstBaselineAnchorConstraintConstant];
  v10 = v9;
  titleLabelFirstBaselineAnchorConstraint = [(CNUINavigationListViewCell *)self titleLabelFirstBaselineAnchorConstraint];
  [titleLabelFirstBaselineAnchorConstraint setConstant:v10];

  navigationListStyle = [(CNUINavigationListViewCell *)self navigationListStyle];
  [navigationListStyle cellUserActionLeftMargin];
  v13 = v12;
  titleLabelLeadingAnchorConstraint = [(CNUINavigationListViewCell *)self titleLabelLeadingAnchorConstraint];
  [titleLabelLeadingAnchorConstraint setConstant:v13];
}

- (void)updateConstraints
{
  if (![(CNUINavigationListViewCell *)self isContentViewConstraintsLoaded])
  {
    [(CNUINavigationListViewCell *)self loadContentViewConstraints];
  }

  v3.receiver = self;
  v3.super_class = CNUINavigationListViewCell;
  [(CNUINavigationListViewCell *)&v3 updateConstraints];
  [(CNUINavigationListViewCell *)self updateConstraintsConstants];
}

- (void)loadContentViewConstraints
{
  v87[6] = *MEMORY[0x1E69E9840];
  if (!self->_contentViewConstraintsLoaded)
  {
    contentView = [(CNUINavigationListViewCell *)self contentView];
    array = [MEMORY[0x1E695DF70] array];
    ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    leadingAnchor = [(UILayoutGuide *)self->_titleImageViewLayoutGuide leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v76 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v87[0] = v76;
    trailingAnchor = [(UILayoutGuide *)self->_titleImageViewLayoutGuide trailingAnchor];
    leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
    v70 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
    v87[1] = v70;
    topAnchor = [(UILayoutGuide *)self->_titleImageViewLayoutGuide topAnchor];
    topAnchor2 = [contentView topAnchor];
    v64 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v87[2] = v64;
    bottomAnchor = [(UILayoutGuide *)self->_titleImageViewLayoutGuide bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v87[3] = v58;
    imageContentGuide = [(UIImageView *)self->_titleImageView imageContentGuide];
    centerXAnchor = [imageContentGuide centerXAnchor];
    centerXAnchor2 = [(UILayoutGuide *)self->_titleImageViewLayoutGuide centerXAnchor];
    v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v87[4] = v7;
    firstBaselineAnchor = [(UIImageView *)self->_titleImageView firstBaselineAnchor];
    firstBaselineAnchor2 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v10 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    v87[5] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:6];
    [array addObjectsFromArray:v11];

    v12 = contentView;
    leadingAnchor4 = [(UILabel *)self->_titleLabel leadingAnchor];
    leadingAnchor5 = [contentView leadingAnchor];
    navigationListStyle = [(CNUINavigationListViewCell *)self navigationListStyle];
    [navigationListStyle cellUserActionLeftMargin];
    v16 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:?];
    titleLabelLeadingAnchorConstraint = self->_titleLabelLeadingAnchorConstraint;
    self->_titleLabelLeadingAnchorConstraint = v16;

    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
      trailingAnchor3 = [contentView trailingAnchor];
      [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:5.0];
    }

    else
    {
      trailingAnchor2 = [(UILabel *)self->_subtitleLabel leadingAnchor];
      trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
      [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:8.0];
    }
    v20 = ;
    objc_storeStrong(&self->_titleLabelTrailingAnchorConstraint, v20);

    firstBaselineAnchor3 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    topAnchor3 = [contentView topAnchor];
    [(CNUINavigationListViewCell *)self titleLabelFirstBaselineAnchorConstraintConstant];
    v23 = [firstBaselineAnchor3 constraintEqualToAnchor:topAnchor3 constant:?];
    titleLabelFirstBaselineAnchorConstraint = self->_titleLabelFirstBaselineAnchorConstraint;
    self->_titleLabelFirstBaselineAnchorConstraint = v23;

    titleLabelTrailingAnchorConstraint = self->_titleLabelTrailingAnchorConstraint;
    v86[0] = self->_titleLabelLeadingAnchorConstraint;
    v86[1] = titleLabelTrailingAnchorConstraint;
    v86[2] = self->_titleLabelFirstBaselineAnchorConstraint;
    leadingAnchor6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:3];
    leadingAnchor7 = 1056;
    v28 = array;
    [array addObjectsFromArray:leadingAnchor6];

    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      leadingAnchor6 = [(UILabel *)self->_subtitleLabel leadingAnchor];
      leadingAnchor7 = [(UILabel *)self->_titleLabel leadingAnchor];
      v29 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    }

    else
    {
      v29 = self->_titleLabelTrailingAnchorConstraint;
    }

    objc_storeStrong(&self->_subtitleLabelLeadingAnchorConstraint, v29);
    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
    }

    firstBaselineAnchor4 = [(UILabel *)self->_subtitleLabel firstBaselineAnchor];
    firstBaselineAnchor5 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    [(CNUINavigationListViewCell *)self subtitleLabelFirstBaselineAnchorConstraintConstant];
    v32 = [firstBaselineAnchor4 constraintEqualToAnchor:firstBaselineAnchor5 constant:?];
    subtitleLabelFirstBaselineAnchorConstraint = self->_subtitleLabelFirstBaselineAnchorConstraint;
    self->_subtitleLabelFirstBaselineAnchorConstraint = v32;

    v34 = self->_subtitleLabelFirstBaselineAnchorConstraint;
    v85[0] = self->_subtitleLabelLeadingAnchorConstraint;
    v85[1] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    [array addObjectsFromArray:v35];

    if (self->_accessoryImageView)
    {
      leadingAnchor8 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide leadingAnchor];
      if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
      {
        [(CNUINavigationListViewCell *)self titleLabel];
      }

      else
      {
        [(CNUINavigationListViewCell *)self subtitleLabel];
      }
      v37 = ;
      trailingAnchor4 = [v37 trailingAnchor];
      v39 = [leadingAnchor8 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:0.0];
      objc_storeStrong(&self->_subtitleLabelTrailingAnchorConstraint, v39);

      subtitleLabelTrailingAnchorConstraint = self->_subtitleLabelTrailingAnchorConstraint;
      v84[0] = self->_subtitleLabelLeadingAnchorConstraint;
      v84[1] = subtitleLabelTrailingAnchorConstraint;
      trailingAnchor5 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide trailingAnchor];
      trailingAnchor6 = [contentView trailingAnchor];
      v75 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-22.0];
      v84[2] = v75;
      topAnchor4 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide topAnchor];
      topAnchor5 = [contentView topAnchor];
      v69 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
      v84[3] = v69;
      bottomAnchor3 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide bottomAnchor];
      bottomAnchor4 = [contentView bottomAnchor];
      v63 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v84[4] = v63;
      centerXAnchor3 = [(UIImageView *)self->_accessoryImageView centerXAnchor];
      centerXAnchor4 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide centerXAnchor];
      v57 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      v84[5] = v57;
      widthAnchor = [(UIImageView *)self->_accessoryImageView widthAnchor];
      widthAnchor2 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide widthAnchor];
      v54 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
      v84[6] = v54;
      [(UIImageView *)self->_accessoryImageView firstBaselineAnchor];
      v41 = v81 = contentView;
      titleLabel = [(CNUINavigationListViewCell *)self titleLabel];
      firstBaselineAnchor6 = [titleLabel firstBaselineAnchor];
      v44 = [v41 constraintEqualToAnchor:firstBaselineAnchor6];
      v84[7] = v44;
      heightAnchor = [(UIImageView *)self->_accessoryImageView heightAnchor];
      heightAnchor2 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide heightAnchor];
      v47 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
      v84[8] = v47;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:9];
      v28 = array;
      [array addObjectsFromArray:v48];

      v12 = v81;
    }

    bottomAnchor5 = [v12 bottomAnchor];
    firstBaselineAnchor7 = [(UILabel *)self->_subtitleLabel firstBaselineAnchor];
    [(CNUINavigationListViewCell *)self contentViewBottomAnchorConstraintConstant];
    v51 = [bottomAnchor5 constraintEqualToAnchor:firstBaselineAnchor7 constant:?];
    contentViewBottomAnchorConstraint = self->_contentViewBottomAnchorConstraint;
    self->_contentViewBottomAnchorConstraint = v51;

    LODWORD(v53) = 1148829696;
    [(NSLayoutConstraint *)self->_contentViewBottomAnchorConstraint setPriority:v53];
    [v28 addObject:self->_contentViewBottomAnchorConstraint];
    [MEMORY[0x1E696ACD8] activateConstraints:v28];
    self->_contentViewConstraintsLoaded = 1;
  }
}

- (void)setTitleLabelTrailingAnchorConstraint:(id)constraint
{
  constraintCopy = constraint;
  titleLabelTrailingAnchorConstraint = self->_titleLabelTrailingAnchorConstraint;
  if (titleLabelTrailingAnchorConstraint != constraintCopy)
  {
    v7 = constraintCopy;
    [(NSLayoutConstraint *)titleLabelTrailingAnchorConstraint setActive:0];
    objc_storeStrong(&self->_titleLabelTrailingAnchorConstraint, constraint);
    constraintCopy = v7;
  }

  MEMORY[0x1EEE66BB8](titleLabelTrailingAnchorConstraint, constraintCopy);
}

- (void)setTitleLabelLeadingAnchorConstraint:(id)constraint
{
  constraintCopy = constraint;
  titleLabelLeadingAnchorConstraint = self->_titleLabelLeadingAnchorConstraint;
  if (titleLabelLeadingAnchorConstraint != constraintCopy)
  {
    v7 = constraintCopy;
    [(NSLayoutConstraint *)titleLabelLeadingAnchorConstraint setActive:0];
    objc_storeStrong(&self->_titleLabelLeadingAnchorConstraint, constraint);
    constraintCopy = v7;
  }

  MEMORY[0x1EEE66BB8](titleLabelLeadingAnchorConstraint, constraintCopy);
}

- (void)setTitleLabelFirstBaselineAnchorConstraint:(id)constraint
{
  constraintCopy = constraint;
  titleLabelFirstBaselineAnchorConstraint = self->_titleLabelFirstBaselineAnchorConstraint;
  if (titleLabelFirstBaselineAnchorConstraint != constraintCopy)
  {
    v7 = constraintCopy;
    [(NSLayoutConstraint *)titleLabelFirstBaselineAnchorConstraint setActive:0];
    objc_storeStrong(&self->_titleLabelFirstBaselineAnchorConstraint, constraint);
    constraintCopy = v7;
  }

  MEMORY[0x1EEE66BB8](titleLabelFirstBaselineAnchorConstraint, constraintCopy);
}

- (void)setSubtitleLabelTrailingAnchorConstraint:(id)constraint
{
  constraintCopy = constraint;
  subtitleLabelTrailingAnchorConstraint = self->_subtitleLabelTrailingAnchorConstraint;
  if (subtitleLabelTrailingAnchorConstraint != constraintCopy)
  {
    v7 = constraintCopy;
    [(NSLayoutConstraint *)subtitleLabelTrailingAnchorConstraint setActive:0];
    objc_storeStrong(&self->_subtitleLabelTrailingAnchorConstraint, constraint);
    constraintCopy = v7;
  }

  MEMORY[0x1EEE66BB8](subtitleLabelTrailingAnchorConstraint, constraintCopy);
}

- (void)setSubtitleLabelLeadingAnchorConstraint:(id)constraint
{
  constraintCopy = constraint;
  subtitleLabelLeadingAnchorConstraint = self->_subtitleLabelLeadingAnchorConstraint;
  if (subtitleLabelLeadingAnchorConstraint != constraintCopy)
  {
    v7 = constraintCopy;
    [(NSLayoutConstraint *)subtitleLabelLeadingAnchorConstraint setActive:0];
    objc_storeStrong(&self->_subtitleLabelLeadingAnchorConstraint, constraint);
    constraintCopy = v7;
  }

  MEMORY[0x1EEE66BB8](subtitleLabelLeadingAnchorConstraint, constraintCopy);
}

- (void)setSubtitleLabelFirstBaselineAnchorConstraint:(id)constraint
{
  constraintCopy = constraint;
  subtitleLabelFirstBaselineAnchorConstraint = self->_subtitleLabelFirstBaselineAnchorConstraint;
  if (subtitleLabelFirstBaselineAnchorConstraint != constraintCopy)
  {
    v7 = constraintCopy;
    [(NSLayoutConstraint *)subtitleLabelFirstBaselineAnchorConstraint setActive:0];
    objc_storeStrong(&self->_subtitleLabelFirstBaselineAnchorConstraint, constraint);
    constraintCopy = v7;
  }

  MEMORY[0x1EEE66BB8](subtitleLabelFirstBaselineAnchorConstraint, constraintCopy);
}

- (void)setSeparatorStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = CNUINavigationListViewCell;
  [(CNUINavigationListViewCell *)&v3 setSeparatorStyle:[(CNUINavigationListViewCell *)self showSeparator]];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = CNUINavigationListViewCell;
  if ([(CNUINavigationListViewCell *)&v8 isHighlighted]!= highlighted)
  {
    v7.receiver = self;
    v7.super_class = CNUINavigationListViewCell;
    [(CNUINavigationListViewCell *)&v7 setHighlighted:highlightedCopy animated:animatedCopy];
    [(CNUINavigationListViewCell *)self updateVisualStateAnimated:animatedCopy];
  }
}

- (void)setAccessoryControlExpanded:(BOOL)expanded animated:(BOOL)animated
{
  animatedCopy = animated;
  expandedCopy = expanded;
  isAccessoryControlExpanded = [(CNUINavigationListViewCell *)self isAccessoryControlExpanded];
  [(CNUINavigationListViewCell *)self setAccessoryControlExpanded:expandedCopy];
  if (isAccessoryControlExpanded != [(CNUINavigationListViewCell *)self isAccessoryControlExpanded])
  {

    [(CNUINavigationListViewCell *)self updateVisualStateAnimated:animatedCopy];
  }
}

- (void)setAccessoryControlExpanded:(BOOL)expanded
{
  if (self->_accessoryControlExpanded != expanded)
  {
    accessoryImageView = [(CNUINavigationListViewCell *)self accessoryImageView];
    isHidden = [accessoryImageView isHidden];

    if ((isHidden & 1) == 0)
    {
      self->_accessoryControlExpanded = expanded;
    }
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CNUINavigationListViewCell;
  [(CNUINavigationListViewCell *)&v3 prepareForReuse];
  [(CNUINavigationListViewCell *)self setAccessoryControlExpanded:0];
  [(CNUINavigationListViewCell *)self setHighlighted:0];
  [(CNUINavigationListViewCell *)self updateVisualStateAnimated:0];
}

- (void)setupAccessoryImageViewInView:(id)view
{
  v4 = MEMORY[0x1E69DCC20];
  viewCopy = view;
  v5 = objc_alloc_init(v4);
  accessoryImageViewLayoutGuide = self->_accessoryImageViewLayoutGuide;
  self->_accessoryImageViewLayoutGuide = v5;

  [viewCopy addLayoutGuide:self->_accessoryImageViewLayoutGuide];
  v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  accessoryImageView = self->_accessoryImageView;
  self->_accessoryImageView = v7;

  disclosureImage = [objc_opt_class() disclosureImage];
  [(UIImageView *)self->_accessoryImageView setImage:disclosureImage];

  [(UIImageView *)self->_accessoryImageView setHidden:1];
  highlightedDisclosureImage = [objc_opt_class() highlightedDisclosureImage];
  [(UIImageView *)self->_accessoryImageView setHighlightedImage:highlightedDisclosureImage];

  accessoryImageViewAccessibilityLabel = [objc_opt_class() accessoryImageViewAccessibilityLabel];
  [(UIImageView *)self->_accessoryImageView setAccessibilityLabel:accessoryImageViewAccessibilityLabel];

  [(UIImageView *)self->_accessoryImageView setIsAccessibilityElement:1];
  [(UIImageView *)self->_accessoryImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy addSubview:self->_accessoryImageView];
}

- (void)loadContentView
{
  contentView = [(CNUINavigationListViewCell *)self contentView];
  v3 = [MEMORY[0x1E69DC730] effectWithStyle:3];
  v4 = [MEMORY[0x1E69DD248] effectForBlurEffect:v3 style:4];
  v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];
  [v5 setAutoresizingMask:18];
  [contentView bounds];
  [v5 setFrame:?];
  [contentView addSubview:v5];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  titleImageViewLayoutGuide = self->_titleImageViewLayoutGuide;
  self->_titleImageViewLayoutGuide = v6;

  [contentView addLayoutGuide:self->_titleImageViewLayoutGuide];
  v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  titleImageView = self->_titleImageView;
  self->_titleImageView = v8;

  [(UIImageView *)self->_titleImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [v5 contentView];
  [contentView2 addSubview:self->_titleImageView];

  v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v11;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:self->_titleLabel];
  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v13;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:self->_subtitleLabel];
  [(CNUINavigationListViewCell *)self applyStyle];
  [(CNUINavigationListViewCell *)self setupAccessoryImageViewInView:contentView];
}

- (void)applyStyle
{
  styleApplier = [(CNUINavigationListViewCell *)self styleApplier];
  [styleApplier applyNavigationListStyleToCell:self];
}

- (void)styleUpdated
{
  v3 = [CNUINavigationListStyleApplier alloc];
  navigationListStyle = [(CNUINavigationListViewCell *)self navigationListStyle];
  v5 = [(CNUINavigationListStyleApplier *)v3 initWithNavigationListStyle:navigationListStyle];
  [(CNUINavigationListViewCell *)self setStyleApplier:v5];

  [(CNUINavigationListViewCell *)self applyStyle];
}

- (void)setNavigationListStyle:(id)style
{
  objc_storeStrong(&self->_navigationListStyle, style);

  [(CNUINavigationListViewCell *)self styleUpdated];
}

- (void)dealloc
{
  [(UILabel *)self->_subtitleLabel removeObserver:self forKeyPath:@"text"];
  [(UILabel *)self->_subtitleLabel removeObserver:self forKeyPath:@"attributedText"];
  v3.receiver = self;
  v3.super_class = CNUINavigationListViewCell;
  [(CNUINavigationListViewCell *)&v3 dealloc];
}

- (CNUINavigationListViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CNUINavigationListViewCell;
  v4 = [(CNUINavigationListViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_contentViewConstraintsLoaded = 0;
    v4->_showSeparator = 1;
    [(CNUINavigationListViewCell *)v4 loadContentView];
    [(CNUINavigationListViewCell *)v5 loadContentViewConstraints];
    [(UILabel *)v5->_subtitleLabel addObserver:v5 forKeyPath:@"text" options:0 context:0];
    [(UILabel *)v5->_subtitleLabel addObserver:v5 forKeyPath:@"attributedText" options:0 context:0];
    v6 = v5;
  }

  return v5;
}

- (CNUINavigationListViewCell)initWithCoder:(id)coder
{
  [(CNUINavigationListViewCell *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (double)titleLabelFirstBaselineAnchorConstraintConstant
{
  v3 = objc_opt_class();
  navigationListStyle = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v3 titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:navigationListStyle];
  v6 = v5;

  return v6;
}

- (double)subtitleLabelFirstBaselineAnchorConstraintConstant
{
  v3 = objc_opt_class();
  subtitleLabel = [(CNUINavigationListViewCell *)self subtitleLabel];
  text = [subtitleLabel text];
  navigationListStyle = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v3 subtitleLabelFirstBaselineAnchorConstraintConstantForSubtitle:text navigationListStyle:navigationListStyle];
  v8 = v7;

  return v8;
}

- (double)contentViewBottomAnchorConstraintConstant
{
  v3 = objc_opt_class();
  navigationListStyle = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v3 contentViewBottomAnchorConstraintConstantForNavigationListStyle:navigationListStyle];
  v6 = v5;

  return v6;
}

- (double)minimumContentHeight
{
  [(CNUINavigationListViewCell *)self titleLabelFirstBaselineAnchorConstraintConstant];
  v4 = v3;
  [(CNUINavigationListViewCell *)self contentViewBottomAnchorConstraintConstant];
  return ceil(v4 + v5);
}

+ (id)expandedAccessoryImageViewAccessibilityLabel
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"CLOSE_DISAMBIGUATION_CATEGORY" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

+ (id)accessoryImageViewAccessibilityLabel
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"EXPAND_DISAMBIGUATION_CATEGORY" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

+ (id)highlightedDisclosureImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = +[CNUIColorRepository navigationListDisclosureImageHighlightedColor];
  v4 = [v2 cnui_symbolImageNamed:@"chevron.down" scale:1 withColor:v3 useFixedSize:0];

  return v4;
}

+ (CGSize)desiredContentSizeForTitle:(id)title subTitle:(id)subTitle navigationListStyle:(id)style
{
  v34[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subTitleCopy = subTitle;
  styleCopy = style;
  [styleCopy cellUserActionLeftMargin];
  v12 = v11 + 22.0 + 8.0 + 5.0;
  cellTitleFont = [styleCopy cellTitleFont];
  cellSubtitleFont = [styleCopy cellSubtitleFont];
  [self titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:styleCopy];
  v16 = v15;
  [self contentViewBottomAnchorConstraintConstantForNavigationListStyle:styleCopy];
  v18 = v17;
  [self subtitleLabelFirstBaselineAnchorConstraintConstantForSubtitle:subTitleCopy navigationListStyle:styleCopy];
  v20 = v19;

  v21 = *MEMORY[0x1E6996568];
  if (((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], titleCopy) & 1) == 0)
  {
    if (cellTitleFont)
    {
      v33 = *MEMORY[0x1E69DB648];
      v34[0] = cellTitleFont;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    }

    else
    {
      v22 = 0;
    }

    [titleCopy sizeWithAttributes:v22];
    v12 = v12 + ceil(v23);
  }

  if (((*(v21 + 16))(v21, subTitleCopy) & 1) == 0)
  {
    if (cellSubtitleFont)
    {
      v31 = *MEMORY[0x1E69DB648];
      v32 = cellSubtitleFont;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    }

    else
    {
      v24 = 0;
    }

    [subTitleCopy sizeWithAttributes:v24];
    v12 = v12 + ceil(v25);
  }

  disclosureImage = [self disclosureImage];
  [disclosureImage size];
  v28 = v27;

  v29 = ceil(v16 + v18 + v20);
  v30 = v12 + v28;
  result.height = v29;
  result.width = v30;
  return result;
}

+ (double)subtitleLabelFirstBaselineAnchorConstraintConstantForSubtitle:(id)subtitle navigationListStyle:(id)style
{
  subtitleCopy = subtitle;
  styleCopy = style;
  v7 = 0.0;
  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] && ((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
    cellSubtitleFont = [styleCopy cellSubtitleFont];
    [styleCopy cellSubtitleLabelFirstBaselineAnchorConstraintConstant];
    [cellSubtitleFont _scaledValueForValue:?];
    v7 = ceil(v9);
  }

  return v7;
}

+ (double)contentViewBottomAnchorConstraintConstantForNavigationListStyle:(id)style
{
  styleCopy = style;
  cellSubtitleFont = [styleCopy cellSubtitleFont];
  [styleCopy cellContentViewBottomAnchorConstraintConstant];
  v6 = v5;

  [cellSubtitleFont _scaledValueForValue:v6];
  v8 = ceil(v7);

  return v8;
}

+ (double)titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:(id)style
{
  styleCopy = style;
  cellTitleFont = [styleCopy cellTitleFont];
  [styleCopy cellTitleLabelFirstBaselineAnchorConstraintConstant];
  v6 = v5;

  [cellTitleFont _scaledValueForValue:v6];
  v8 = ceil(v7);

  return v8;
}

@end