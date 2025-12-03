@interface SFPrivacyReportMeterBar
- (CGSize)intrinsicContentSize;
- (SFPrivacyReportMeterBar)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation SFPrivacyReportMeterBar

- (SFPrivacyReportMeterBar)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = SFPrivacyReportMeterBar;
  v3 = [(SFPrivacyReportMeterBar *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    tintColor = [(SFPrivacyReportMeterBar *)v3 tintColor];
    [(SFPrivacyReportMeterBar *)v4 setBackgroundColor:tintColor];

    v6 = *MEMORY[0x1E69796E0];
    layer = [(SFPrivacyReportMeterBar *)v4 layer];
    [layer setCornerCurve:v6];

    widthAnchor = [(SFPrivacyReportMeterBar *)v4 widthAnchor];
    heightAnchor = [(SFPrivacyReportMeterBar *)v4 heightAnchor];
    v10 = [widthAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor];
    [v10 setActive:1];

    v11 = v4;
  }

  return v4;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = SFPrivacyReportMeterBar;
  [(SFPrivacyReportMeterBar *)&v4 tintColorDidChange];
  tintColor = [(SFPrivacyReportMeterBar *)self tintColor];
  [(SFPrivacyReportMeterBar *)self setBackgroundColor:tintColor];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SFPrivacyReportMeterBar;
  [(SFPrivacyReportMeterBar *)&v5 layoutSubviews];
  [(SFPrivacyReportMeterBar *)self bounds];
  v3 = CGRectGetHeight(v6) * 0.5;
  layer = [(SFPrivacyReportMeterBar *)self layer];
  [layer setCornerRadius:v3];
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  v3 = 5.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end