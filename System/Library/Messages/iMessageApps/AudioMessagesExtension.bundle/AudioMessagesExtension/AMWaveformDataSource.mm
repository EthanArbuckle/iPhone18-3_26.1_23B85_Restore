@interface AMWaveformDataSource
- (AMWaveformDataSource)initWithWaveformGenerator:(id)a3;
- (void)appendAveragePowerLevelsByDigestingWaveformSegment:(id)a3;
- (void)beginLoading;
@end

@implementation AMWaveformDataSource

- (AMWaveformDataSource)initWithWaveformGenerator:(id)a3
{
  v7.receiver = self;
  v7.super_class = AMWaveformDataSource;
  v3 = [(RCWaveformDataSource *)&v7 initWithWaveformGenerator:a3 generatedWaveformOutputURL:0];
  if (v3)
  {
    v4 = +[NSMutableArray array];
    waveformSegments = v3->_waveformSegments;
    v3->_waveformSegments = v4;
  }

  return v3;
}

- (void)beginLoading
{
  v3 = [(RCWaveformDataSource *)self waveformGenerator];
  [v3 beginLoading];

  v4 = [(RCWaveformDataSource *)self waveformGenerator];
  [v4 addSegmentOutputObserver:self];
}

- (void)appendAveragePowerLevelsByDigestingWaveformSegment:(id)a3
{
  v4 = a3;
  v5 = [(RCWaveformDataSource *)self waveformGenerator];
  v6 = [v5 state];

  if (v6 == &dword_0 + 1)
  {
    v7 = [(RCWaveformDataSource *)self waveformGenerator];
    v9 = v4;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [v7 appendAveragePowerLevelsByDigestingWaveformSegments:v8];
  }
}

@end