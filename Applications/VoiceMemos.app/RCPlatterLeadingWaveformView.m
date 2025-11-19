@interface RCPlatterLeadingWaveformView
- (double)_sliceScale;
- (double)slicePadding;
- (double)sliceWidth;
- (id)accessibilityLabel;
- (unint64_t)numberOfSlices;
@end

@implementation RCPlatterLeadingWaveformView

- (unint64_t)numberOfSlices
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 platterCompactViewSliceCount];

  return v3;
}

- (double)sliceWidth
{
  v7.receiver = self;
  v7.super_class = RCPlatterLeadingWaveformView;
  [(RCPlatterWaveformView *)&v7 sliceWidth];
  v4 = v3;
  [(RCPlatterLeadingWaveformView *)self _sliceScale];
  return v4 * v5;
}

- (double)slicePadding
{
  v7.receiver = self;
  v7.super_class = RCPlatterLeadingWaveformView;
  [(RCPlatterWaveformView *)&v7 slicePadding];
  v4 = v3;
  [(RCPlatterLeadingWaveformView *)self _sliceScale];
  return v4 * v5;
}

- (double)_sliceScale
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 platterWaveformSliceScaleFactorForExpandedMode];
  v5 = v4;

  result = 1.0;
  if (self->_style)
  {
    return v5;
  }

  return result;
}

- (id)accessibilityLabel
{
  style = self->_style;
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (style)
  {
    v5 = @"AX_WAVEFORM";
  }

  else
  {
    v5 = @"AX_JINDO_WAVEFORM";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_100295BB8 table:0];

  return v6;
}

@end