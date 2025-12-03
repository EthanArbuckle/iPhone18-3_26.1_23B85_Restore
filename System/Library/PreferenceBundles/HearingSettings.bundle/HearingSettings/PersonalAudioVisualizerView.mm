@interface PersonalAudioVisualizerView
- (CGSize)intrinsicContentSize;
- (PersonalAudioVisualizerView)initWithTuningIndex:(unint64_t)index;
- (void)updateWithMagnitudes:(id)magnitudes;
@end

@implementation PersonalAudioVisualizerView

- (PersonalAudioVisualizerView)initWithTuningIndex:(unint64_t)index
{
  v18.receiver = self;
  v18.super_class = PersonalAudioVisualizerView;
  v4 = [(PersonalAudioVisualizerView *)&v18 init];
  v5 = v4;
  if (v4)
  {
    [(PersonalAudioVisualizerView *)v4 setTuningIndex:index];
    v6 = +[NSMutableArray array];
    numberOfPips = [(PersonalAudioVisualizerView *)v5 numberOfPips];
    if (numberOfPips)
    {
      v8 = numberOfPips;
      do
      {
        v9 = objc_alloc_init(CAShapeLayer);
        v10 = +[UIColor systemGrayColor];
        [v9 setFillColor:{objc_msgSend(v10, "CGColor")}];

        layer = [(PersonalAudioVisualizerView *)v5 layer];
        [layer addSublayer:v9];

        [v6 addObject:v9];
        --v8;
      }

      while (v8);
    }

    [(PersonalAudioVisualizerView *)v5 setLevels:v6];
    v12 = objc_alloc_init(CAShapeLayer);
    baseLine = v5->_baseLine;
    v5->_baseLine = v12;

    v14 = v5->_baseLine;
    v15 = +[UIColor systemLightGrayColor];
    -[CAShapeLayer setFillColor:](v14, "setFillColor:", [v15 CGColor]);

    layer2 = [(PersonalAudioVisualizerView *)v5 layer];
    [layer2 addSublayer:v5->_baseLine];
  }

  return v5;
}

- (void)updateWithMagnitudes:(id)magnitudes
{
  magnitudesCopy = magnitudes;
  v3 = magnitudesCopy;
  AXPerformBlockOnMainThread();
}

- (CGSize)intrinsicContentSize
{
  v2 = 300.0;
  v3 = 115.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end