@interface ReportLinkCell
- (ReportLinkCell)initWithFrame:(CGRect)a3;
- (void)setReportLink:(id)a3;
@end

@implementation ReportLinkCell

- (void)setReportLink:(id)a3
{
  v8 = a3;
  if (([(ReportLink *)self->_reportLink isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_reportLink, a3);
    v5 = [v8 title];
    v6 = [v8 subtitle];
    v7 = [v8 icon];
    [(UserProfilePersonalizationLinkCell *)self updateTitle:v5 subtitle:v6 icon:v7];
  }
}

- (ReportLinkCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = ReportLinkCell;
  v3 = [(UserProfilePersonalizationLinkCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(ReportLinkCell *)v3 setAccessibilityIdentifier:v5];

    v6 = +[UIColor systemBlueColor];
    [(UserProfilePersonalizationLinkCell *)v3 setGlyphTintColor:v6];

    v7 = +[UIColor systemLightGrayColor];
    [(UserProfilePersonalizationLinkCell *)v3 setGlyphBackgroundColor:v7];

    v8 = [(UserProfilePersonalizationLinkCell *)v3 titleLabel];
    [v8 setNumberOfLines:2];
  }

  return v3;
}

@end