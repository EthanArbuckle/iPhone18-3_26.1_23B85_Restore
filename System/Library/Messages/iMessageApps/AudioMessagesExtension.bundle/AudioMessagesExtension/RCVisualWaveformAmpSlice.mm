@interface RCVisualWaveformAmpSlice
+ (id)colorForSliceColor:(unint64_t)a3 dimmed:(BOOL)a4;
+ (void)setPrimaryColor:(id)a3;
+ (void)setSecondaryColor:(id)a3;
- (RCVisualWaveformAmpSlice)initWithIndex:(double)a3 amplitude:(double)a4;
- (double)visualAmplitudeHeight;
- (void)setColor:(unint64_t)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHasProcessedSegments:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setVisualAmplitudeHeight:(double)a3;
- (void)setVisualAmplitudeHeightInterpolatingFrames:(int64_t)a3;
@end

@implementation RCVisualWaveformAmpSlice

+ (void)setPrimaryColor:(id)a3
{
  v6 = a3;
  objc_storeStrong(&qword_822F0, a3);
  v4 = [qword_822F0 colorWithAlphaComponent:0.15];
  v5 = qword_822F8;
  qword_822F8 = v4;
}

+ (void)setSecondaryColor:(id)a3
{
  v6 = a3;
  objc_storeStrong(&qword_82300, a3);
  v4 = [qword_82300 colorWithAlphaComponent:0.15];
  v5 = qword_82308;
  qword_82308 = v4;
}

+ (id)colorForSliceColor:(unint64_t)a3 dimmed:(BOOL)a4
{
  if (a3 == 1)
  {
    v5 = &qword_822F0;
    v6 = &qword_822F8;
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v5 = &qword_82300;
    v6 = &qword_82308;
LABEL_5:
    if (a4)
    {
      v5 = v6;
    }

    v7 = *v5;

    return v7;
  }

  v7 = 0;

  return v7;
}

- (RCVisualWaveformAmpSlice)initWithIndex:(double)a3 amplitude:(double)a4
{
  v7.receiver = self;
  v7.super_class = RCVisualWaveformAmpSlice;
  result = [(RCVisualWaveformAmpSlice *)&v7 init];
  if (result)
  {
    result->_hasProcessedSegments = 0;
    result->_sliceIndex = a3;
    result->_amplitude = a4;
    result->_visualAmplitudeHeight = 0.0;
    result->_visualAmplitudeHeightInterpolatingFrames = 0;
  }

  return result;
}

- (void)setColor:(unint64_t)a3
{
  v5 = [RCVisualWaveformAmpSlice colorForSliceColor:a3 dimmed:0];
  if (self->_lastColor != v5)
  {
    v10 = v5;
    self->_color = a3;
    v6 = [(RCVisualWaveformAmpSlice *)self uiColor];
    lastColor = self->_lastColor;
    self->_lastColor = v6;

    v8 = [(UIColor *)self->_lastColor CGColor];
    v9 = [(RCVisualWaveformAmpSlice *)self sliceLayer];
    [v9 setBackgroundColor:v8];

    v5 = v10;
  }
}

- (void)setHasProcessedSegments:(BOOL)a3
{
  if (self->_hasProcessedSegments != a3)
  {
    self->_hasProcessedSegments = a3;
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  self->_hidden = a3;
  v4 = [(RCVisualWaveformAmpSlice *)self sliceLayer];
  [v4 setHidden:v3];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = +[UIScreen mainScreen];
  [v18 scale];
  v9 = v8;

  v19 = [(RCVisualWaveformAmpSlice *)self sliceLayer];
  [v19 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (COERCE__INT64(v9 * v11) != COERCE__INT64(x * v9) || COERCE__INT64(v9 * v13) != COERCE__INT64(y * v9) || COERCE__INT64(v9 * v15) != COERCE__INT64(height * v9))
  {
    v20 = [(RCVisualWaveformAmpSlice *)self sliceLayer];
    [v20 setFrame:{x, y, width, height}];
  }
}

- (void)setVisualAmplitudeHeightInterpolatingFrames:(int64_t)a3
{
  self->_visualAmplitudeHeightInterpolatingFrames = a3;
  if (!a3)
  {
    self->_interpolatingvisualAmplitudeHeight = self->_visualAmplitudeHeight;
    self->_interpolatingvisualAmplitudeHeightDiff = 0.0;
    self->_interpolatingVisualAmplitudeHeightFrameCount = 0;
  }
}

- (void)setVisualAmplitudeHeight:(double)a3
{
  visualAmplitudeHeight = self->_visualAmplitudeHeight;
  if (vabdd_f64(visualAmplitudeHeight, a3) > 2.22044605e-16)
  {
    visualAmplitudeHeightInterpolatingFrames = self->_visualAmplitudeHeightInterpolatingFrames;
    if (visualAmplitudeHeightInterpolatingFrames < 1)
    {
      self->_interpolatingVisualAmplitudeHeightFrameCount = 0;
      self->_interpolatingvisualAmplitudeHeight = a3;
    }

    else
    {
      self->_interpolatingvisualAmplitudeHeight = visualAmplitudeHeight;
      self->_interpolatingvisualAmplitudeHeightDiff = (a3 - visualAmplitudeHeight) / visualAmplitudeHeightInterpolatingFrames;
      self->_interpolatingVisualAmplitudeHeightFrameCount = visualAmplitudeHeightInterpolatingFrames;
    }
  }

  self->_visualAmplitudeHeight = a3;
}

- (double)visualAmplitudeHeight
{
  interpolatingVisualAmplitudeHeightFrameCount = self->_interpolatingVisualAmplitudeHeightFrameCount;
  v3 = interpolatingVisualAmplitudeHeightFrameCount < 1;
  v4 = interpolatingVisualAmplitudeHeightFrameCount - 1;
  if (v3)
  {
    return self->_visualAmplitudeHeight;
  }

  result = self->_interpolatingvisualAmplitudeHeight + self->_interpolatingvisualAmplitudeHeightDiff;
  self->_interpolatingvisualAmplitudeHeight = result;
  self->_interpolatingVisualAmplitudeHeightFrameCount = v4;
  return result;
}

@end