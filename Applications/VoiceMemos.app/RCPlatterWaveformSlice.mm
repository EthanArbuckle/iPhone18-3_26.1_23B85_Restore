@interface RCPlatterWaveformSlice
- (RCPlatterWaveformSlice)init;
- (void)setupView;
@end

@implementation RCPlatterWaveformSlice

- (RCPlatterWaveformSlice)init
{
  v5.receiver = self;
  v5.super_class = RCPlatterWaveformSlice;
  v2 = [(RCPlatterWaveformSlice *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RCPlatterWaveformSlice *)v2 setupView];
  }

  return v3;
}

- (void)setupView
{
  v8 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(RCPlatterWaveformSlice *)self setView:v8];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v3 platterWaveformSliceWidth];
  v5 = v4;
  [v8 setFrame:{0.0, 0.0, v5, v5}];
  layer = [v8 layer];
  [layer setCornerRadius:v5 * 0.5];

  layer2 = [v8 layer];
  [layer2 setAllowsEdgeAntialiasing:1];
}

@end