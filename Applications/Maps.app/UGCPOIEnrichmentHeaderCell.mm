@interface UGCPOIEnrichmentHeaderCell
- (UGCPOIEnrichmentHeaderCell)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UGCPOIEnrichmentHeaderCell

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = UGCPOIEnrichmentHeaderCell;
  changeCopy = change;
  [(UGCPOIEnrichmentHeaderCell *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(UGCPOIEnrichmentHeaderCell *)self traitCollection:v10.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    v9 = +[UGCFontManager poiEnrichmentSectionHeaderTitleFont];
    [(UILabel *)self->_headerLabel setFont:v9];
  }
}

- (UGCPOIEnrichmentHeaderCell)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = UGCPOIEnrichmentHeaderCell;
  v3 = [(UGCPOIEnrichmentEditorCell *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(UGCPOIEnrichmentHeaderCell *)v3 setAccessibilityIdentifier:v5];

    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v6;

    [(UILabel *)v3->_headerLabel setAccessibilityIdentifier:@"HeaderLabel"];
    v8 = +[UGCFontManager poiEnrichmentSectionHeaderTitleFont];
    [(UILabel *)v3->_headerLabel setFont:v8];

    [(UILabel *)v3->_headerLabel setNumberOfLines:0];
    [(UGCPOIEnrichmentHeaderCell *)v3 addSubview:v3->_headerLabel];
    v9 = [MUEdgeLayout alloc];
    v10 = v3->_headerLabel;
    layoutMarginsGuide = [(UGCPOIEnrichmentHeaderCell *)v3 layoutMarginsGuide];
    v12 = [v9 initWithItem:v10 container:layoutMarginsGuide];
    [v12 activate];
  }

  return v3;
}

@end