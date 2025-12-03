@interface RCVisualWaveformAmpSlice
+ (id)colorForSliceColor:(unint64_t)color dimmed:(BOOL)dimmed;
+ (void)setResolvedHighlightColor:(id)color;
+ (void)setResolvedMainColor:(id)color;
- (RCVisualWaveformAmpSlice)initWithIndex:(double)index amplitude:(double)amplitude;
- (double)visualAmplitudeHeight;
- (void)setColor:(unint64_t)color;
- (void)setFrame:(CGRect)frame;
- (void)setHasProcessedSegments:(BOOL)segments;
- (void)setHidden:(BOOL)hidden;
- (void)setVisualAmplitudeHeight:(double)height;
- (void)setVisualAmplitudeHeightInterpolatingFrames:(int64_t)frames;
@end

@implementation RCVisualWaveformAmpSlice

+ (void)setResolvedMainColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&qword_1002D7048, color);
  v4 = [qword_1002D7048 colorWithAlphaComponent:0.15];
  v5 = qword_1002D7050;
  qword_1002D7050 = v4;
}

+ (void)setResolvedHighlightColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&qword_1002D7058, color);
  v4 = [qword_1002D7058 colorWithAlphaComponent:0.15];
  v5 = qword_1002D7060;
  qword_1002D7060 = v4;
}

+ (id)colorForSliceColor:(unint64_t)color dimmed:(BOOL)dimmed
{
  if (color == 1)
  {
    v5 = &qword_1002D7048;
    v6 = &qword_1002D7050;
    goto LABEL_5;
  }

  if (color == 2)
  {
    v5 = &qword_1002D7058;
    v6 = &qword_1002D7060;
LABEL_5:
    if (dimmed)
    {
      v5 = v6;
    }

    v7 = *v5;

    return v7;
  }

  v7 = 0;

  return v7;
}

- (RCVisualWaveformAmpSlice)initWithIndex:(double)index amplitude:(double)amplitude
{
  v7.receiver = self;
  v7.super_class = RCVisualWaveformAmpSlice;
  result = [(RCVisualWaveformAmpSlice *)&v7 init];
  if (result)
  {
    result->_hasProcessedSegments = 0;
    result->_sliceIndex = index;
    result->_amplitude = amplitude;
    result->_visualAmplitudeHeight = 0.0;
    result->_visualAmplitudeHeightInterpolatingFrames = 0;
  }

  return result;
}

- (void)setColor:(unint64_t)color
{
  v5 = [RCVisualWaveformAmpSlice colorForSliceColor:color dimmed:0];
  if (self->_lastColor != v5)
  {
    v10 = v5;
    self->_color = color;
    uiColor = [(RCVisualWaveformAmpSlice *)self uiColor];
    lastColor = self->_lastColor;
    self->_lastColor = uiColor;

    cGColor = [(UIColor *)self->_lastColor CGColor];
    sliceLayer = [(RCVisualWaveformAmpSlice *)self sliceLayer];
    [sliceLayer setBackgroundColor:cGColor];

    v5 = v10;
  }
}

- (void)setHasProcessedSegments:(BOOL)segments
{
  if (self->_hasProcessedSegments != segments)
  {
    self->_hasProcessedSegments = segments;
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_hidden = hidden;
  sliceLayer = [(RCVisualWaveformAmpSlice *)self sliceLayer];
  [sliceLayer setHidden:hiddenCopy];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v18 = +[UIScreen mainScreen];
  [v18 scale];
  v9 = v8;

  sliceLayer = [(RCVisualWaveformAmpSlice *)self sliceLayer];
  [sliceLayer frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (COERCE__INT64(v9 * v11) != COERCE__INT64(x * v9) || COERCE__INT64(v9 * v13) != COERCE__INT64(y * v9) || COERCE__INT64(v9 * v15) != COERCE__INT64(height * v9))
  {
    sliceLayer2 = [(RCVisualWaveformAmpSlice *)self sliceLayer];
    [sliceLayer2 setFrame:{x, y, width, height}];
  }
}

- (void)setVisualAmplitudeHeightInterpolatingFrames:(int64_t)frames
{
  self->_visualAmplitudeHeightInterpolatingFrames = frames;
  if (!frames)
  {
    self->_interpolatingvisualAmplitudeHeight = self->_visualAmplitudeHeight;
    self->_interpolatingvisualAmplitudeHeightDiff = 0.0;
    self->_interpolatingVisualAmplitudeHeightFrameCount = 0;
  }
}

- (void)setVisualAmplitudeHeight:(double)height
{
  visualAmplitudeHeight = self->_visualAmplitudeHeight;
  if (vabdd_f64(visualAmplitudeHeight, height) > 2.22044605e-16)
  {
    visualAmplitudeHeightInterpolatingFrames = self->_visualAmplitudeHeightInterpolatingFrames;
    if (visualAmplitudeHeightInterpolatingFrames < 1)
    {
      self->_interpolatingVisualAmplitudeHeightFrameCount = 0;
      self->_interpolatingvisualAmplitudeHeight = height;
    }

    else
    {
      self->_interpolatingvisualAmplitudeHeight = visualAmplitudeHeight;
      self->_interpolatingvisualAmplitudeHeightDiff = (height - visualAmplitudeHeight) / visualAmplitudeHeightInterpolatingFrames;
      self->_interpolatingVisualAmplitudeHeightFrameCount = visualAmplitudeHeightInterpolatingFrames;
    }
  }

  self->_visualAmplitudeHeight = height;
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