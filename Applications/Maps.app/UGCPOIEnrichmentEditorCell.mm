@interface UGCPOIEnrichmentEditorCell
- (UGCPOIEnrichmentEditorCell)initWithFrame:(CGRect)frame;
- (void)setShowBottomHairline:(BOOL)hairline;
- (void)setShowTopHairline:(BOOL)hairline;
@end

@implementation UGCPOIEnrichmentEditorCell

- (void)setShowBottomHairline:(BOOL)hairline
{
  hairlineCopy = hairline;
  if ([(UGCPOIEnrichmentEditorCell *)self showBottomHairline]!= hairline)
  {
    if (hairlineCopy)
    {
      v5 = [[UGCHairlineView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      bottomHairlineView = self->_bottomHairlineView;
      self->_bottomHairlineView = v5;

      [(UGCHairlineView *)self->_bottomHairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UGCPOIEnrichmentEditorCell *)self addSubview:self->_bottomHairlineView];
      bottomAnchor = [(UGCHairlineView *)self->_bottomHairlineView bottomAnchor];
      bottomAnchor2 = [(UGCPOIEnrichmentEditorCell *)self bottomAnchor];
      v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v19[0] = v8;
      leadingAnchor = [(UGCHairlineView *)self->_bottomHairlineView leadingAnchor];
      layoutMarginsGuide = [(UGCPOIEnrichmentEditorCell *)self layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v19[1] = v12;
      trailingAnchor = [(UGCHairlineView *)self->_bottomHairlineView trailingAnchor];
      trailingAnchor2 = [(UGCPOIEnrichmentEditorCell *)self trailingAnchor];
      v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v19[2] = v15;
      v16 = [NSArray arrayWithObjects:v19 count:3];
      [NSLayoutConstraint activateConstraints:v16];
    }

    else
    {
      v17 = self->_bottomHairlineView;

      [(UGCHairlineView *)v17 removeFromSuperview];
    }
  }
}

- (void)setShowTopHairline:(BOOL)hairline
{
  hairlineCopy = hairline;
  if ([(UGCPOIEnrichmentEditorCell *)self showTopHairline]!= hairline)
  {
    if (hairlineCopy)
    {
      v5 = [[UGCHairlineView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      topHairlineView = self->_topHairlineView;
      self->_topHairlineView = v5;

      [(UGCHairlineView *)self->_topHairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UGCPOIEnrichmentEditorCell *)self addSubview:self->_topHairlineView];
      topAnchor = [(UGCHairlineView *)self->_topHairlineView topAnchor];
      topAnchor2 = [(UGCPOIEnrichmentEditorCell *)self topAnchor];
      v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v19[0] = v8;
      leadingAnchor = [(UGCHairlineView *)self->_topHairlineView leadingAnchor];
      layoutMarginsGuide = [(UGCPOIEnrichmentEditorCell *)self layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v19[1] = v12;
      trailingAnchor = [(UGCHairlineView *)self->_topHairlineView trailingAnchor];
      trailingAnchor2 = [(UGCPOIEnrichmentEditorCell *)self trailingAnchor];
      v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v19[2] = v15;
      v16 = [NSArray arrayWithObjects:v19 count:3];
      [NSLayoutConstraint activateConstraints:v16];
    }

    else
    {
      v17 = self->_topHairlineView;

      [(UGCHairlineView *)v17 removeFromSuperview];
    }
  }
}

- (UGCPOIEnrichmentEditorCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UGCPOIEnrichmentEditorCell;
  v3 = [(UGCPOIEnrichmentEditorCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UGCPOIEnrichmentEditorCell *)v3 _mapsui_resetLayoutMargins];
  }

  return v4;
}

@end