@interface AMWaveformDataSource
- (AMWaveformDataSource)initWithWaveformGenerator:(id)generator;
- (void)appendAveragePowerLevelsByDigestingWaveformSegment:(id)segment;
- (void)beginLoading;
@end

@implementation AMWaveformDataSource

- (AMWaveformDataSource)initWithWaveformGenerator:(id)generator
{
  v7.receiver = self;
  v7.super_class = AMWaveformDataSource;
  v3 = [(RCWaveformDataSource *)&v7 initWithWaveformGenerator:generator generatedWaveformOutputURL:0];
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
  waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
  [waveformGenerator beginLoading];

  waveformGenerator2 = [(RCWaveformDataSource *)self waveformGenerator];
  [waveformGenerator2 addSegmentOutputObserver:self];
}

- (void)appendAveragePowerLevelsByDigestingWaveformSegment:(id)segment
{
  segmentCopy = segment;
  waveformGenerator = [(RCWaveformDataSource *)self waveformGenerator];
  state = [waveformGenerator state];

  if (state == &dword_0 + 1)
  {
    waveformGenerator2 = [(RCWaveformDataSource *)self waveformGenerator];
    v9 = segmentCopy;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [waveformGenerator2 appendAveragePowerLevelsByDigestingWaveformSegments:v8];
  }
}

@end