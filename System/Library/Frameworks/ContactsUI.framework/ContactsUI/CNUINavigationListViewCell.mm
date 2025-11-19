@interface CNUINavigationListViewCell
+ (CGSize)desiredContentSizeForTitle:(id)a3 subTitle:(id)a4 navigationListStyle:(id)a5;
+ (double)contentViewBottomAnchorConstraintConstantForNavigationListStyle:(id)a3;
+ (double)subtitleLabelFirstBaselineAnchorConstraintConstantForSubtitle:(id)a3 navigationListStyle:(id)a4;
+ (double)titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:(id)a3;
+ (id)accessoryImageViewAccessibilityLabel;
+ (id)expandedAccessoryImageViewAccessibilityLabel;
+ (id)highlightedDisclosureImage;
- (CNUINavigationListViewCell)initWithCoder:(id)a3;
- (CNUINavigationListViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)contentViewBottomAnchorConstraintConstant;
- (double)minimumContentHeight;
- (double)subtitleLabelFirstBaselineAnchorConstraintConstant;
- (double)titleLabelFirstBaselineAnchorConstraintConstant;
- (void)applyStyle;
- (void)dealloc;
- (void)loadContentView;
- (void)loadContentViewConstraints;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForReuse;
- (void)setAccessoryControlExpanded:(BOOL)a3;
- (void)setAccessoryControlExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setNavigationListStyle:(id)a3;
- (void)setSeparatorStyle:(int64_t)a3;
- (void)setSubtitleLabelFirstBaselineAnchorConstraint:(id)a3;
- (void)setSubtitleLabelLeadingAnchorConstraint:(id)a3;
- (void)setSubtitleLabelTrailingAnchorConstraint:(id)a3;
- (void)setTitleLabelFirstBaselineAnchorConstraint:(id)a3;
- (void)setTitleLabelLeadingAnchorConstraint:(id)a3;
- (void)setTitleLabelTrailingAnchorConstraint:(id)a3;
- (void)setupAccessoryImageViewInView:(id)a3;
- (void)styleUpdated;
- (void)updateConstraints;
- (void)updateConstraintsConstants;
- (void)updateVisualStateAnimated:(BOOL)a3;
@end

@implementation CNUINavigationListViewCell

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(CNUINavigationListViewCell *)self subtitleLabel];
  v14 = v13;
  if (v13 == v11)
  {
    if ([v10 isEqualToString:@"text"])
    {
    }

    else
    {
      v15 = [v10 isEqualToString:@"attributedText"];

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
  [(CNUINavigationListViewCell *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_8:
}

- (void)updateVisualStateAnimated:(BOOL)a3
{
  v3 = 0.2;
  if (!a3)
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
  v5 = [(CNUINavigationListViewCell *)self contentViewBottomAnchorConstraint];
  [v5 setConstant:v4];

  [(CNUINavigationListViewCell *)self subtitleLabelFirstBaselineAnchorConstraintConstant];
  v7 = v6;
  v8 = [(CNUINavigationListViewCell *)self subtitleLabelFirstBaselineAnchorConstraint];
  [v8 setConstant:v7];

  [(CNUINavigationListViewCell *)self titleLabelFirstBaselineAnchorConstraintConstant];
  v10 = v9;
  v11 = [(CNUINavigationListViewCell *)self titleLabelFirstBaselineAnchorConstraint];
  [v11 setConstant:v10];

  v15 = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v15 cellUserActionLeftMargin];
  v13 = v12;
  v14 = [(CNUINavigationListViewCell *)self titleLabelLeadingAnchorConstraint];
  [v14 setConstant:v13];
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
    v3 = [(CNUINavigationListViewCell *)self contentView];
    v83 = [MEMORY[0x1E695DF70] array];
    v80 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v82 = [(UILayoutGuide *)self->_titleImageViewLayoutGuide leadingAnchor];
    v78 = [v3 leadingAnchor];
    v76 = [v82 constraintEqualToAnchor:v78];
    v87[0] = v76;
    v74 = [(UILayoutGuide *)self->_titleImageViewLayoutGuide trailingAnchor];
    v72 = [(UILabel *)self->_titleLabel leadingAnchor];
    v70 = [v74 constraintEqualToAnchor:v72];
    v87[1] = v70;
    v68 = [(UILayoutGuide *)self->_titleImageViewLayoutGuide topAnchor];
    v66 = [v3 topAnchor];
    v64 = [v68 constraintEqualToAnchor:v66];
    v87[2] = v64;
    v62 = [(UILayoutGuide *)self->_titleImageViewLayoutGuide bottomAnchor];
    v60 = [v3 bottomAnchor];
    v58 = [v62 constraintEqualToAnchor:v60];
    v87[3] = v58;
    v4 = [(UIImageView *)self->_titleImageView imageContentGuide];
    v5 = [v4 centerXAnchor];
    v6 = [(UILayoutGuide *)self->_titleImageViewLayoutGuide centerXAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    v87[4] = v7;
    v8 = [(UIImageView *)self->_titleImageView firstBaselineAnchor];
    v9 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v87[5] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:6];
    [v83 addObjectsFromArray:v11];

    v12 = v3;
    v13 = [(UILabel *)self->_titleLabel leadingAnchor];
    v14 = [v3 leadingAnchor];
    v15 = [(CNUINavigationListViewCell *)self navigationListStyle];
    [v15 cellUserActionLeftMargin];
    v16 = [v13 constraintEqualToAnchor:v14 constant:?];
    titleLabelLeadingAnchorConstraint = self->_titleLabelLeadingAnchorConstraint;
    self->_titleLabelLeadingAnchorConstraint = v16;

    if (v80)
    {
      v18 = [(UILabel *)self->_titleLabel trailingAnchor];
      v19 = [v3 trailingAnchor];
      [v18 constraintLessThanOrEqualToAnchor:v19 constant:5.0];
    }

    else
    {
      v18 = [(UILabel *)self->_subtitleLabel leadingAnchor];
      v19 = [(UILabel *)self->_titleLabel trailingAnchor];
      [v18 constraintEqualToAnchor:v19 constant:8.0];
    }
    v20 = ;
    objc_storeStrong(&self->_titleLabelTrailingAnchorConstraint, v20);

    v21 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v22 = [v3 topAnchor];
    [(CNUINavigationListViewCell *)self titleLabelFirstBaselineAnchorConstraintConstant];
    v23 = [v21 constraintEqualToAnchor:v22 constant:?];
    titleLabelFirstBaselineAnchorConstraint = self->_titleLabelFirstBaselineAnchorConstraint;
    self->_titleLabelFirstBaselineAnchorConstraint = v23;

    titleLabelTrailingAnchorConstraint = self->_titleLabelTrailingAnchorConstraint;
    v86[0] = self->_titleLabelLeadingAnchorConstraint;
    v86[1] = titleLabelTrailingAnchorConstraint;
    v86[2] = self->_titleLabelFirstBaselineAnchorConstraint;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:3];
    v27 = 1056;
    v28 = v83;
    [v83 addObjectsFromArray:v26];

    if (v80)
    {
      v26 = [(UILabel *)self->_subtitleLabel leadingAnchor];
      v27 = [(UILabel *)self->_titleLabel leadingAnchor];
      v29 = [v26 constraintEqualToAnchor:v27];
    }

    else
    {
      v29 = self->_titleLabelTrailingAnchorConstraint;
    }

    objc_storeStrong(&self->_subtitleLabelLeadingAnchorConstraint, v29);
    if (v80)
    {
    }

    v30 = [(UILabel *)self->_subtitleLabel firstBaselineAnchor];
    v31 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    [(CNUINavigationListViewCell *)self subtitleLabelFirstBaselineAnchorConstraintConstant];
    v32 = [v30 constraintEqualToAnchor:v31 constant:?];
    subtitleLabelFirstBaselineAnchorConstraint = self->_subtitleLabelFirstBaselineAnchorConstraint;
    self->_subtitleLabelFirstBaselineAnchorConstraint = v32;

    v34 = self->_subtitleLabelFirstBaselineAnchorConstraint;
    v85[0] = self->_subtitleLabelLeadingAnchorConstraint;
    v85[1] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    [v83 addObjectsFromArray:v35];

    if (self->_accessoryImageView)
    {
      v36 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide leadingAnchor];
      if (v80)
      {
        [(CNUINavigationListViewCell *)self titleLabel];
      }

      else
      {
        [(CNUINavigationListViewCell *)self subtitleLabel];
      }
      v37 = ;
      v38 = [v37 trailingAnchor];
      v39 = [v36 constraintGreaterThanOrEqualToAnchor:v38 constant:0.0];
      objc_storeStrong(&self->_subtitleLabelTrailingAnchorConstraint, v39);

      subtitleLabelTrailingAnchorConstraint = self->_subtitleLabelTrailingAnchorConstraint;
      v84[0] = self->_subtitleLabelLeadingAnchorConstraint;
      v84[1] = subtitleLabelTrailingAnchorConstraint;
      v79 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide trailingAnchor];
      v77 = [v3 trailingAnchor];
      v75 = [v79 constraintEqualToAnchor:v77 constant:-22.0];
      v84[2] = v75;
      v73 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide topAnchor];
      v71 = [v3 topAnchor];
      v69 = [v73 constraintEqualToAnchor:v71];
      v84[3] = v69;
      v67 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide bottomAnchor];
      v65 = [v3 bottomAnchor];
      v63 = [v67 constraintEqualToAnchor:v65];
      v84[4] = v63;
      v61 = [(UIImageView *)self->_accessoryImageView centerXAnchor];
      v59 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide centerXAnchor];
      v57 = [v61 constraintEqualToAnchor:v59];
      v84[5] = v57;
      v56 = [(UIImageView *)self->_accessoryImageView widthAnchor];
      v55 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide widthAnchor];
      v54 = [v56 constraintLessThanOrEqualToAnchor:v55];
      v84[6] = v54;
      [(UIImageView *)self->_accessoryImageView firstBaselineAnchor];
      v41 = v81 = v3;
      v42 = [(CNUINavigationListViewCell *)self titleLabel];
      v43 = [v42 firstBaselineAnchor];
      v44 = [v41 constraintEqualToAnchor:v43];
      v84[7] = v44;
      v45 = [(UIImageView *)self->_accessoryImageView heightAnchor];
      v46 = [(UILayoutGuide *)self->_accessoryImageViewLayoutGuide heightAnchor];
      v47 = [v45 constraintLessThanOrEqualToAnchor:v46];
      v84[8] = v47;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:9];
      v28 = v83;
      [v83 addObjectsFromArray:v48];

      v12 = v81;
    }

    v49 = [v12 bottomAnchor];
    v50 = [(UILabel *)self->_subtitleLabel firstBaselineAnchor];
    [(CNUINavigationListViewCell *)self contentViewBottomAnchorConstraintConstant];
    v51 = [v49 constraintEqualToAnchor:v50 constant:?];
    contentViewBottomAnchorConstraint = self->_contentViewBottomAnchorConstraint;
    self->_contentViewBottomAnchorConstraint = v51;

    LODWORD(v53) = 1148829696;
    [(NSLayoutConstraint *)self->_contentViewBottomAnchorConstraint setPriority:v53];
    [v28 addObject:self->_contentViewBottomAnchorConstraint];
    [MEMORY[0x1E696ACD8] activateConstraints:v28];
    self->_contentViewConstraintsLoaded = 1;
  }
}

- (void)setTitleLabelTrailingAnchorConstraint:(id)a3
{
  v5 = a3;
  titleLabelTrailingAnchorConstraint = self->_titleLabelTrailingAnchorConstraint;
  if (titleLabelTrailingAnchorConstraint != v5)
  {
    v7 = v5;
    [(NSLayoutConstraint *)titleLabelTrailingAnchorConstraint setActive:0];
    objc_storeStrong(&self->_titleLabelTrailingAnchorConstraint, a3);
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](titleLabelTrailingAnchorConstraint, v5);
}

- (void)setTitleLabelLeadingAnchorConstraint:(id)a3
{
  v5 = a3;
  titleLabelLeadingAnchorConstraint = self->_titleLabelLeadingAnchorConstraint;
  if (titleLabelLeadingAnchorConstraint != v5)
  {
    v7 = v5;
    [(NSLayoutConstraint *)titleLabelLeadingAnchorConstraint setActive:0];
    objc_storeStrong(&self->_titleLabelLeadingAnchorConstraint, a3);
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](titleLabelLeadingAnchorConstraint, v5);
}

- (void)setTitleLabelFirstBaselineAnchorConstraint:(id)a3
{
  v5 = a3;
  titleLabelFirstBaselineAnchorConstraint = self->_titleLabelFirstBaselineAnchorConstraint;
  if (titleLabelFirstBaselineAnchorConstraint != v5)
  {
    v7 = v5;
    [(NSLayoutConstraint *)titleLabelFirstBaselineAnchorConstraint setActive:0];
    objc_storeStrong(&self->_titleLabelFirstBaselineAnchorConstraint, a3);
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](titleLabelFirstBaselineAnchorConstraint, v5);
}

- (void)setSubtitleLabelTrailingAnchorConstraint:(id)a3
{
  v5 = a3;
  subtitleLabelTrailingAnchorConstraint = self->_subtitleLabelTrailingAnchorConstraint;
  if (subtitleLabelTrailingAnchorConstraint != v5)
  {
    v7 = v5;
    [(NSLayoutConstraint *)subtitleLabelTrailingAnchorConstraint setActive:0];
    objc_storeStrong(&self->_subtitleLabelTrailingAnchorConstraint, a3);
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](subtitleLabelTrailingAnchorConstraint, v5);
}

- (void)setSubtitleLabelLeadingAnchorConstraint:(id)a3
{
  v5 = a3;
  subtitleLabelLeadingAnchorConstraint = self->_subtitleLabelLeadingAnchorConstraint;
  if (subtitleLabelLeadingAnchorConstraint != v5)
  {
    v7 = v5;
    [(NSLayoutConstraint *)subtitleLabelLeadingAnchorConstraint setActive:0];
    objc_storeStrong(&self->_subtitleLabelLeadingAnchorConstraint, a3);
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](subtitleLabelLeadingAnchorConstraint, v5);
}

- (void)setSubtitleLabelFirstBaselineAnchorConstraint:(id)a3
{
  v5 = a3;
  subtitleLabelFirstBaselineAnchorConstraint = self->_subtitleLabelFirstBaselineAnchorConstraint;
  if (subtitleLabelFirstBaselineAnchorConstraint != v5)
  {
    v7 = v5;
    [(NSLayoutConstraint *)subtitleLabelFirstBaselineAnchorConstraint setActive:0];
    objc_storeStrong(&self->_subtitleLabelFirstBaselineAnchorConstraint, a3);
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](subtitleLabelFirstBaselineAnchorConstraint, v5);
}

- (void)setSeparatorStyle:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = CNUINavigationListViewCell;
  [(CNUINavigationListViewCell *)&v3 setSeparatorStyle:[(CNUINavigationListViewCell *)self showSeparator]];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8.receiver = self;
  v8.super_class = CNUINavigationListViewCell;
  if ([(CNUINavigationListViewCell *)&v8 isHighlighted]!= a3)
  {
    v7.receiver = self;
    v7.super_class = CNUINavigationListViewCell;
    [(CNUINavigationListViewCell *)&v7 setHighlighted:v5 animated:v4];
    [(CNUINavigationListViewCell *)self updateVisualStateAnimated:v4];
  }
}

- (void)setAccessoryControlExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CNUINavigationListViewCell *)self isAccessoryControlExpanded];
  [(CNUINavigationListViewCell *)self setAccessoryControlExpanded:v5];
  if (v7 != [(CNUINavigationListViewCell *)self isAccessoryControlExpanded])
  {

    [(CNUINavigationListViewCell *)self updateVisualStateAnimated:v4];
  }
}

- (void)setAccessoryControlExpanded:(BOOL)a3
{
  if (self->_accessoryControlExpanded != a3)
  {
    v5 = [(CNUINavigationListViewCell *)self accessoryImageView];
    v6 = [v5 isHidden];

    if ((v6 & 1) == 0)
    {
      self->_accessoryControlExpanded = a3;
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

- (void)setupAccessoryImageViewInView:(id)a3
{
  v4 = MEMORY[0x1E69DCC20];
  v12 = a3;
  v5 = objc_alloc_init(v4);
  accessoryImageViewLayoutGuide = self->_accessoryImageViewLayoutGuide;
  self->_accessoryImageViewLayoutGuide = v5;

  [v12 addLayoutGuide:self->_accessoryImageViewLayoutGuide];
  v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  accessoryImageView = self->_accessoryImageView;
  self->_accessoryImageView = v7;

  v9 = [objc_opt_class() disclosureImage];
  [(UIImageView *)self->_accessoryImageView setImage:v9];

  [(UIImageView *)self->_accessoryImageView setHidden:1];
  v10 = [objc_opt_class() highlightedDisclosureImage];
  [(UIImageView *)self->_accessoryImageView setHighlightedImage:v10];

  v11 = [objc_opt_class() accessoryImageViewAccessibilityLabel];
  [(UIImageView *)self->_accessoryImageView setAccessibilityLabel:v11];

  [(UIImageView *)self->_accessoryImageView setIsAccessibilityElement:1];
  [(UIImageView *)self->_accessoryImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 addSubview:self->_accessoryImageView];
}

- (void)loadContentView
{
  v15 = [(CNUINavigationListViewCell *)self contentView];
  v3 = [MEMORY[0x1E69DC730] effectWithStyle:3];
  v4 = [MEMORY[0x1E69DD248] effectForBlurEffect:v3 style:4];
  v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];
  [v5 setAutoresizingMask:18];
  [v15 bounds];
  [v5 setFrame:?];
  [v15 addSubview:v5];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  titleImageViewLayoutGuide = self->_titleImageViewLayoutGuide;
  self->_titleImageViewLayoutGuide = v6;

  [v15 addLayoutGuide:self->_titleImageViewLayoutGuide];
  v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  titleImageView = self->_titleImageView;
  self->_titleImageView = v8;

  [(UIImageView *)self->_titleImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v5 contentView];
  [v10 addSubview:self->_titleImageView];

  v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v11;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 addSubview:self->_titleLabel];
  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v13;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 addSubview:self->_subtitleLabel];
  [(CNUINavigationListViewCell *)self applyStyle];
  [(CNUINavigationListViewCell *)self setupAccessoryImageViewInView:v15];
}

- (void)applyStyle
{
  v3 = [(CNUINavigationListViewCell *)self styleApplier];
  [v3 applyNavigationListStyleToCell:self];
}

- (void)styleUpdated
{
  v3 = [CNUINavigationListStyleApplier alloc];
  v4 = [(CNUINavigationListViewCell *)self navigationListStyle];
  v5 = [(CNUINavigationListStyleApplier *)v3 initWithNavigationListStyle:v4];
  [(CNUINavigationListViewCell *)self setStyleApplier:v5];

  [(CNUINavigationListViewCell *)self applyStyle];
}

- (void)setNavigationListStyle:(id)a3
{
  objc_storeStrong(&self->_navigationListStyle, a3);

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

- (CNUINavigationListViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CNUINavigationListViewCell;
  v4 = [(CNUINavigationListViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
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

- (CNUINavigationListViewCell)initWithCoder:(id)a3
{
  [(CNUINavigationListViewCell *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (double)titleLabelFirstBaselineAnchorConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v3 titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:v4];
  v6 = v5;

  return v6;
}

- (double)subtitleLabelFirstBaselineAnchorConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(CNUINavigationListViewCell *)self subtitleLabel];
  v5 = [v4 text];
  v6 = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v3 subtitleLabelFirstBaselineAnchorConstraintConstantForSubtitle:v5 navigationListStyle:v6];
  v8 = v7;

  return v8;
}

- (double)contentViewBottomAnchorConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v3 contentViewBottomAnchorConstraintConstantForNavigationListStyle:v4];
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

+ (CGSize)desiredContentSizeForTitle:(id)a3 subTitle:(id)a4 navigationListStyle:(id)a5
{
  v34[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v10 cellUserActionLeftMargin];
  v12 = v11 + 22.0 + 8.0 + 5.0;
  v13 = [v10 cellTitleFont];
  v14 = [v10 cellSubtitleFont];
  [a1 titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:v10];
  v16 = v15;
  [a1 contentViewBottomAnchorConstraintConstantForNavigationListStyle:v10];
  v18 = v17;
  [a1 subtitleLabelFirstBaselineAnchorConstraintConstantForSubtitle:v9 navigationListStyle:v10];
  v20 = v19;

  v21 = *MEMORY[0x1E6996568];
  if (((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v8) & 1) == 0)
  {
    if (v13)
    {
      v33 = *MEMORY[0x1E69DB648];
      v34[0] = v13;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    }

    else
    {
      v22 = 0;
    }

    [v8 sizeWithAttributes:v22];
    v12 = v12 + ceil(v23);
  }

  if (((*(v21 + 16))(v21, v9) & 1) == 0)
  {
    if (v14)
    {
      v31 = *MEMORY[0x1E69DB648];
      v32 = v14;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    }

    else
    {
      v24 = 0;
    }

    [v9 sizeWithAttributes:v24];
    v12 = v12 + ceil(v25);
  }

  v26 = [a1 disclosureImage];
  [v26 size];
  v28 = v27;

  v29 = ceil(v16 + v18 + v20);
  v30 = v12 + v28;
  result.height = v29;
  result.width = v30;
  return result;
}

+ (double)subtitleLabelFirstBaselineAnchorConstraintConstantForSubtitle:(id)a3 navigationListStyle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 0.0;
  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] && ((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
    v8 = [v6 cellSubtitleFont];
    [v6 cellSubtitleLabelFirstBaselineAnchorConstraintConstant];
    [v8 _scaledValueForValue:?];
    v7 = ceil(v9);
  }

  return v7;
}

+ (double)contentViewBottomAnchorConstraintConstantForNavigationListStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 cellSubtitleFont];
  [v3 cellContentViewBottomAnchorConstraintConstant];
  v6 = v5;

  [v4 _scaledValueForValue:v6];
  v8 = ceil(v7);

  return v8;
}

+ (double)titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 cellTitleFont];
  [v3 cellTitleLabelFirstBaselineAnchorConstraintConstant];
  v6 = v5;

  [v4 _scaledValueForValue:v6];
  v8 = ceil(v7);

  return v8;
}

@end