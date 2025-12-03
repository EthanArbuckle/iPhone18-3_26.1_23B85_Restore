@interface ReportLinkCell
- (ReportLinkCell)initWithFrame:(CGRect)frame;
- (void)setReportLink:(id)link;
@end

@implementation ReportLinkCell

- (void)setReportLink:(id)link
{
  linkCopy = link;
  if (([(ReportLink *)self->_reportLink isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_reportLink, link);
    title = [linkCopy title];
    subtitle = [linkCopy subtitle];
    icon = [linkCopy icon];
    [(UserProfilePersonalizationLinkCell *)self updateTitle:title subtitle:subtitle icon:icon];
  }
}

- (ReportLinkCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = ReportLinkCell;
  v3 = [(UserProfilePersonalizationLinkCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(ReportLinkCell *)v3 setAccessibilityIdentifier:v5];

    v6 = +[UIColor systemBlueColor];
    [(UserProfilePersonalizationLinkCell *)v3 setGlyphTintColor:v6];

    v7 = +[UIColor systemLightGrayColor];
    [(UserProfilePersonalizationLinkCell *)v3 setGlyphBackgroundColor:v7];

    titleLabel = [(UserProfilePersonalizationLinkCell *)v3 titleLabel];
    [titleLabel setNumberOfLines:2];
  }

  return v3;
}

@end