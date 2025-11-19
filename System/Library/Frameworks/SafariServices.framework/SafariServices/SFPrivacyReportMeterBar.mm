@interface SFPrivacyReportMeterBar
- (CGSize)intrinsicContentSize;
- (SFPrivacyReportMeterBar)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation SFPrivacyReportMeterBar

- (SFPrivacyReportMeterBar)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = SFPrivacyReportMeterBar;
  v3 = [(SFPrivacyReportMeterBar *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SFPrivacyReportMeterBar *)v3 tintColor];
    [(SFPrivacyReportMeterBar *)v4 setBackgroundColor:v5];

    v6 = *MEMORY[0x1E69796E0];
    v7 = [(SFPrivacyReportMeterBar *)v4 layer];
    [v7 setCornerCurve:v6];

    v8 = [(SFPrivacyReportMeterBar *)v4 widthAnchor];
    v9 = [(SFPrivacyReportMeterBar *)v4 heightAnchor];
    v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9];
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
  v3 = [(SFPrivacyReportMeterBar *)self tintColor];
  [(SFPrivacyReportMeterBar *)self setBackgroundColor:v3];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SFPrivacyReportMeterBar;
  [(SFPrivacyReportMeterBar *)&v5 layoutSubviews];
  [(SFPrivacyReportMeterBar *)self bounds];
  v3 = CGRectGetHeight(v6) * 0.5;
  v4 = [(SFPrivacyReportMeterBar *)self layer];
  [v4 setCornerRadius:v3];
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