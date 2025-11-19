@interface NTKMoonPhaseDailyDividerView
- (CGSize)intrinsicContentSize;
- (NTKMoonPhaseDailyDividerView)initWithFrame:(CGRect)a3;
@end

@implementation NTKMoonPhaseDailyDividerView

- (NTKMoonPhaseDailyDividerView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = NTKMoonPhaseDailyDividerView;
  v3 = [(NTKMoonPhaseDailyDividerView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIColor colorWithWhite:1.0 alpha:0.25];
    [(NTKMoonPhaseDailyDividerView *)v3 setBackgroundColor:v4];

    [(NTKMoonPhaseDailyDividerView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [(NTKMoonPhaseDailyDividerView *)v3 setContentHuggingPriority:0 forAxis:v5];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = 1.0;
  result.height = v2;
  result.width = v3;
  return result;
}

@end