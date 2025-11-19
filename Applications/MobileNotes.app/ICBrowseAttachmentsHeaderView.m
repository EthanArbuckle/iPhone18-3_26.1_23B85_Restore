@interface ICBrowseAttachmentsHeaderView
- (ICBrowseAttachmentsHeaderViewDelegate)delegate;
- (UIButton)seeAllButton;
- (UILabel)sectionLabel;
- (id)constraintsForAXLargerTextSizes;
- (id)constraintsForRegularTextSizes;
- (void)awakeFromNib;
- (void)contentSizeCategoryDidChange;
- (void)seeAll:(id)a3;
- (void)setLeadingMargin:(double)a3;
- (void)setTrailingMargin:(double)a3;
- (void)updateConstraints;
@end

@implementation ICBrowseAttachmentsHeaderView

- (void)awakeFromNib
{
  v7.receiver = self;
  v7.super_class = ICBrowseAttachmentsHeaderView;
  [(ICBrowseAttachmentsHeaderView *)&v7 awakeFromNib];
  v3 = [(ICBrowseAttachmentsHeaderView *)self sectionLabel];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:UIAccessibilityTraitHeader | v4];

  v5 = +[UIColor labelColor];
  v6 = [(ICBrowseAttachmentsHeaderView *)self sectionLabel];
  [v6 setTextColor:v5];

  [(ICBrowseAttachmentsHeaderView *)self setClipsToBounds:0];
}

- (void)seeAll:(id)a3
{
  v4 = [(ICBrowseAttachmentsHeaderView *)self delegate];
  [v4 showAllForAttachmentSection:{-[ICBrowseAttachmentsHeaderView attachmentSection](self, "attachmentSection")}];
}

- (void)contentSizeCategoryDidChange
{
  v7 = +[UIFont ic_attachmentBrowserTitleFont];
  v3 = [(ICBrowseAttachmentsHeaderView *)self sectionLabel];
  [v3 setFont:v7];

  v4 = +[UIFont ic_attachmentBrowserSeeAllButtonFont];
  v5 = [(ICBrowseAttachmentsHeaderView *)self seeAllButton];
  v6 = [v5 titleLabel];
  [v6 setFont:v4];

  [(ICBrowseAttachmentsHeaderView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v3 = [(ICBrowseAttachmentsHeaderView *)self window];
  v4 = [v3 windowScene];
  v5 = [v4 interfaceOrientation];

  v6 = [(ICBrowseAttachmentsHeaderView *)self traitCollection];
  v7 = [v6 horizontalSizeClass];

  v8 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
  v9 = [(ICBrowseAttachmentsHeaderView *)self sectionLabel];
  v10 = v9;
  if (v8 && (v5 - 3) >= 0xFFFFFFFFFFFFFFFELL && v7 == 1)
  {
    [v9 setNumberOfLines:0];

    v11 = [(ICBrowseAttachmentsHeaderView *)self constraintsForRegularTextSizes];
    [NSLayoutConstraint deactivateConstraints:v11];

    v12 = [(ICBrowseAttachmentsHeaderView *)self constraintsForAXLargerTextSizes];
  }

  else
  {
    [v9 setNumberOfLines:1];

    v13 = [(ICBrowseAttachmentsHeaderView *)self constraintsForAXLargerTextSizes];
    [NSLayoutConstraint deactivateConstraints:v13];

    v12 = [(ICBrowseAttachmentsHeaderView *)self constraintsForRegularTextSizes];
  }

  v14 = v12;
  [NSLayoutConstraint activateConstraints:v12];

  v15.receiver = self;
  v15.super_class = ICBrowseAttachmentsHeaderView;
  [(ICBrowseAttachmentsHeaderView *)&v15 updateConstraints];
}

- (id)constraintsForRegularTextSizes
{
  v3 = +[NSMutableArray array];
  v4 = [(ICBrowseAttachmentsHeaderView *)self sectionLabelBottomConstraint];
  [v3 ic_addNonNilObject:v4];

  v5 = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonLeadingConstraint];
  [v3 ic_addNonNilObject:v5];

  v6 = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonTrailingConstraint];
  [v3 ic_addNonNilObject:v6];

  v7 = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonBaselineConstraint];
  [v3 ic_addNonNilObject:v7];

  v8 = [v3 copy];

  return v8;
}

- (id)constraintsForAXLargerTextSizes
{
  v3 = +[NSMutableArray array];
  v4 = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonAXTopConstraint];
  [v3 ic_addNonNilObject:v4];

  v5 = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonAXLeadingConstraint];
  [v3 ic_addNonNilObject:v5];

  v6 = [v3 copy];

  return v6;
}

- (void)setLeadingMargin:(double)a3
{
  v5 = [(ICBrowseAttachmentsHeaderView *)self sectionLabelLeadingConstraint];
  [v5 setConstant:a3];

  v6 = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonAXLeadingConstraint];
  [v6 setConstant:a3];
}

- (void)setTrailingMargin:(double)a3
{
  v4 = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonTrailingConstraint];
  [v4 setConstant:a3];
}

- (UILabel)sectionLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_sectionLabel);

  return WeakRetained;
}

- (UIButton)seeAllButton
{
  WeakRetained = objc_loadWeakRetained(&self->_seeAllButton);

  return WeakRetained;
}

- (ICBrowseAttachmentsHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end