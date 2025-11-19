@interface PersonalAudioVisualizerView
- (CGSize)intrinsicContentSize;
- (PersonalAudioVisualizerView)initWithTuningIndex:(unint64_t)a3;
- (void)updateWithMagnitudes:(id)a3;
@end

@implementation PersonalAudioVisualizerView

- (PersonalAudioVisualizerView)initWithTuningIndex:(unint64_t)a3
{
  v18.receiver = self;
  v18.super_class = PersonalAudioVisualizerView;
  v4 = [(PersonalAudioVisualizerView *)&v18 init];
  v5 = v4;
  if (v4)
  {
    [(PersonalAudioVisualizerView *)v4 setTuningIndex:a3];
    v6 = +[NSMutableArray array];
    v7 = [(PersonalAudioVisualizerView *)v5 numberOfPips];
    if (v7)
    {
      v8 = v7;
      do
      {
        v9 = objc_alloc_init(CAShapeLayer);
        v10 = +[UIColor systemGrayColor];
        [v9 setFillColor:{objc_msgSend(v10, "CGColor")}];

        v11 = [(PersonalAudioVisualizerView *)v5 layer];
        [v11 addSublayer:v9];

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

    v16 = [(PersonalAudioVisualizerView *)v5 layer];
    [v16 addSublayer:v5->_baseLine];
  }

  return v5;
}

- (void)updateWithMagnitudes:(id)a3
{
  v4 = a3;
  v3 = v4;
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