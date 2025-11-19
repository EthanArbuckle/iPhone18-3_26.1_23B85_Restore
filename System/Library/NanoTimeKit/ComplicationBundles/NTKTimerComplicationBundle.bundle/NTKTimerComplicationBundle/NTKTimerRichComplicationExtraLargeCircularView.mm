@interface NTKTimerRichComplicationExtraLargeCircularView
- (NTKTimerRichComplicationExtraLargeCircularView)init;
- (int64_t)_backgroundFilterStyle;
- (int64_t)_foregroundFilterStyle;
@end

@implementation NTKTimerRichComplicationExtraLargeCircularView

- (NTKTimerRichComplicationExtraLargeCircularView)init
{
  v3.receiver = self;
  v3.super_class = NTKTimerRichComplicationExtraLargeCircularView;
  return [(NTKTimerRichComplicationBaseCircularView *)&v3 initWithFamily:12];
}

- (int64_t)_backgroundFilterStyle
{
  v2 = [(NTKTimerRichComplicationExtraLargeCircularView *)self device];
  v3 = NTKShowGossamerUI();

  if (v3)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_foregroundFilterStyle
{
  v2 = [(NTKTimerRichComplicationExtraLargeCircularView *)self device];
  v3 = NTKShowGossamerUI();

  if (v3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

@end