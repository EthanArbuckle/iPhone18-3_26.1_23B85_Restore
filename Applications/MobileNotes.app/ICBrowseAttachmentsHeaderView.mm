@interface ICBrowseAttachmentsHeaderView
- (ICBrowseAttachmentsHeaderViewDelegate)delegate;
- (UIButton)seeAllButton;
- (UILabel)sectionLabel;
- (id)constraintsForAXLargerTextSizes;
- (id)constraintsForRegularTextSizes;
- (void)awakeFromNib;
- (void)contentSizeCategoryDidChange;
- (void)seeAll:(id)all;
- (void)setLeadingMargin:(double)margin;
- (void)setTrailingMargin:(double)margin;
- (void)updateConstraints;
@end

@implementation ICBrowseAttachmentsHeaderView

- (void)awakeFromNib
{
  v7.receiver = self;
  v7.super_class = ICBrowseAttachmentsHeaderView;
  [(ICBrowseAttachmentsHeaderView *)&v7 awakeFromNib];
  sectionLabel = [(ICBrowseAttachmentsHeaderView *)self sectionLabel];
  accessibilityTraits = [sectionLabel accessibilityTraits];
  [sectionLabel setAccessibilityTraits:UIAccessibilityTraitHeader | accessibilityTraits];

  v5 = +[UIColor labelColor];
  sectionLabel2 = [(ICBrowseAttachmentsHeaderView *)self sectionLabel];
  [sectionLabel2 setTextColor:v5];

  [(ICBrowseAttachmentsHeaderView *)self setClipsToBounds:0];
}

- (void)seeAll:(id)all
{
  delegate = [(ICBrowseAttachmentsHeaderView *)self delegate];
  [delegate showAllForAttachmentSection:{-[ICBrowseAttachmentsHeaderView attachmentSection](self, "attachmentSection")}];
}

- (void)contentSizeCategoryDidChange
{
  v7 = +[UIFont ic_attachmentBrowserTitleFont];
  sectionLabel = [(ICBrowseAttachmentsHeaderView *)self sectionLabel];
  [sectionLabel setFont:v7];

  v4 = +[UIFont ic_attachmentBrowserSeeAllButtonFont];
  seeAllButton = [(ICBrowseAttachmentsHeaderView *)self seeAllButton];
  titleLabel = [seeAllButton titleLabel];
  [titleLabel setFont:v4];

  [(ICBrowseAttachmentsHeaderView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  window = [(ICBrowseAttachmentsHeaderView *)self window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  traitCollection = [(ICBrowseAttachmentsHeaderView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  v8 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
  sectionLabel = [(ICBrowseAttachmentsHeaderView *)self sectionLabel];
  v10 = sectionLabel;
  if (v8 && (interfaceOrientation - 3) >= 0xFFFFFFFFFFFFFFFELL && horizontalSizeClass == 1)
  {
    [sectionLabel setNumberOfLines:0];

    constraintsForRegularTextSizes = [(ICBrowseAttachmentsHeaderView *)self constraintsForRegularTextSizes];
    [NSLayoutConstraint deactivateConstraints:constraintsForRegularTextSizes];

    constraintsForAXLargerTextSizes = [(ICBrowseAttachmentsHeaderView *)self constraintsForAXLargerTextSizes];
  }

  else
  {
    [sectionLabel setNumberOfLines:1];

    constraintsForAXLargerTextSizes2 = [(ICBrowseAttachmentsHeaderView *)self constraintsForAXLargerTextSizes];
    [NSLayoutConstraint deactivateConstraints:constraintsForAXLargerTextSizes2];

    constraintsForAXLargerTextSizes = [(ICBrowseAttachmentsHeaderView *)self constraintsForRegularTextSizes];
  }

  v14 = constraintsForAXLargerTextSizes;
  [NSLayoutConstraint activateConstraints:constraintsForAXLargerTextSizes];

  v15.receiver = self;
  v15.super_class = ICBrowseAttachmentsHeaderView;
  [(ICBrowseAttachmentsHeaderView *)&v15 updateConstraints];
}

- (id)constraintsForRegularTextSizes
{
  v3 = +[NSMutableArray array];
  sectionLabelBottomConstraint = [(ICBrowseAttachmentsHeaderView *)self sectionLabelBottomConstraint];
  [v3 ic_addNonNilObject:sectionLabelBottomConstraint];

  seeAllButtonLeadingConstraint = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonLeadingConstraint];
  [v3 ic_addNonNilObject:seeAllButtonLeadingConstraint];

  seeAllButtonTrailingConstraint = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonTrailingConstraint];
  [v3 ic_addNonNilObject:seeAllButtonTrailingConstraint];

  seeAllButtonBaselineConstraint = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonBaselineConstraint];
  [v3 ic_addNonNilObject:seeAllButtonBaselineConstraint];

  v8 = [v3 copy];

  return v8;
}

- (id)constraintsForAXLargerTextSizes
{
  v3 = +[NSMutableArray array];
  seeAllButtonAXTopConstraint = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonAXTopConstraint];
  [v3 ic_addNonNilObject:seeAllButtonAXTopConstraint];

  seeAllButtonAXLeadingConstraint = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonAXLeadingConstraint];
  [v3 ic_addNonNilObject:seeAllButtonAXLeadingConstraint];

  v6 = [v3 copy];

  return v6;
}

- (void)setLeadingMargin:(double)margin
{
  sectionLabelLeadingConstraint = [(ICBrowseAttachmentsHeaderView *)self sectionLabelLeadingConstraint];
  [sectionLabelLeadingConstraint setConstant:margin];

  seeAllButtonAXLeadingConstraint = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonAXLeadingConstraint];
  [seeAllButtonAXLeadingConstraint setConstant:margin];
}

- (void)setTrailingMargin:(double)margin
{
  seeAllButtonTrailingConstraint = [(ICBrowseAttachmentsHeaderView *)self seeAllButtonTrailingConstraint];
  [seeAllButtonTrailingConstraint setConstant:margin];
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