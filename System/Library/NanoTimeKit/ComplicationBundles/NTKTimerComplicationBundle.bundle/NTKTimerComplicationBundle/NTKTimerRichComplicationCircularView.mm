@interface NTKTimerRichComplicationCircularView
- (NTKTimerRichComplicationCircularView)init;
- (int64_t)_backgroundFilterStyle;
- (int64_t)_foregroundFilterStyle;
@end

@implementation NTKTimerRichComplicationCircularView

- (NTKTimerRichComplicationCircularView)init
{
  v3.receiver = self;
  v3.super_class = NTKTimerRichComplicationCircularView;
  return [(NTKTimerRichComplicationBaseCircularView *)&v3 initWithFamily:10];
}

- (int64_t)_backgroundFilterStyle
{
  device = [(NTKTimerRichComplicationCircularView *)self device];
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
  device = [(NTKTimerRichComplicationCircularView *)self device];
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