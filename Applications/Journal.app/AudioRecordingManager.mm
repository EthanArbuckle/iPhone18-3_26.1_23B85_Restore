@interface AudioRecordingManager
- (double)amplitudeForSliceWithTimeRange:(id)a3 fullTimeRangeSampled:(BOOL *)a4;
@end

@implementation AudioRecordingManager

- (double)amplitudeForSliceWithTimeRange:(id)a3 fullTimeRangeSampled:(BOOL *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;

  sub_10086FAC0(a4, var0, var1);
  v8 = v7;

  return v8;
}

@end