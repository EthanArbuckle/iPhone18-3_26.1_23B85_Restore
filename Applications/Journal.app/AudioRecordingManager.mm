@interface AudioRecordingManager
- (double)amplitudeForSliceWithTimeRange:(id)range fullTimeRangeSampled:(BOOL *)sampled;
@end

@implementation AudioRecordingManager

- (double)amplitudeForSliceWithTimeRange:(id)range fullTimeRangeSampled:(BOOL *)sampled
{
  var1 = range.var1;
  var0 = range.var0;

  sub_10086FAC0(sampled, var0, var1);
  v8 = v7;

  return v8;
}

@end