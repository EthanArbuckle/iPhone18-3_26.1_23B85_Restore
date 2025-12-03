@interface RCActivityWaveformDataProvider
- (RCActivityWaveformDataProvider)initWithWaveformProcessor:(id)processor;
- (RCActivityWaveformProcessor)processor;
- (double)amplitudeForSliceWithTimeRange:(id)range fullTimeRangeSampled:(BOOL *)sampled;
- (float)_processAmplitude:(float)amplitude;
@end

@implementation RCActivityWaveformDataProvider

- (RCActivityWaveformDataProvider)initWithWaveformProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = RCActivityWaveformDataProvider;
  v5 = [(RCActivityWaveformDataProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(RCActivityWaveformDataProvider *)v5 setProcessor:processorCopy];
  }

  return v6;
}

- (float)_processAmplitude:(float)amplitude
{
  processor = [(RCActivityWaveformDataProvider *)self processor];
  [processor runningAverage];
  v6 = v5;

  v7 = (1.0 - sub_100054D04(v6)) * 6.0 * amplitude;
  if (v7 > 1.0)
  {
    return 1.0;
  }

  return v7;
}

- (double)amplitudeForSliceWithTimeRange:(id)range fullTimeRangeSampled:(BOOL *)sampled
{
  var1 = range.var1;
  var0 = range.var0;
  processor = [(RCActivityWaveformDataProvider *)self processor];
  [processor recordingStartTime];
  v10 = v9;

  processor2 = [(RCActivityWaveformDataProvider *)self processor];
  [processor2 punchInTime];
  v13 = v12;

  v20 = 0.0;
  processor3 = [(RCActivityWaveformDataProvider *)self processor];
  v15 = [processor3 getAmplitudes:&v20 count:1 startTime:v10 + var0 - v13 + -0.1 endTime:v10 + var1 - v13 + -0.1];

  if (sampled)
  {
    *sampled = v15;
  }

  *&v16 = v20;
  v17 = 0.0;
  if (v20 != 0.0)
  {
    [(RCActivityWaveformDataProvider *)self _processAmplitude:v16, 0.0];
    return v18;
  }

  return v17;
}

- (RCActivityWaveformProcessor)processor
{
  WeakRetained = objc_loadWeakRetained(&self->_processor);

  return WeakRetained;
}

@end