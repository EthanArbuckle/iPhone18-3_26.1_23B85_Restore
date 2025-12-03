@interface ARDepthData(ARKitCore)
- (id)tracingEntry;
@end

@implementation ARDepthData(ARKitCore)

- (id)tracingEntry
{
  v2 = ARQATraceableDefaultEntryForResultData(self);
  v3 = [v2 mutableCopy];

  [self cameraIntrinsics];
  v4 = [ARQAHelper arrayWithMatrix3x3:?];
  [v3 setObject:v4 forKeyedSubscript:@"cameraIntrinsics"];

  [self extrinsicsToAppNode];
  v5 = [ARQAHelper arrayWithMatrix4x4:?];
  [v3 setObject:v5 forKeyedSubscript:@"extrinsicsToAppNode"];

  [self deviceTransform];
  v6 = [ARQAHelper arrayWithMatrix4x4:?];
  [v3 setObject:v6 forKeyedSubscript:@"deviceTransform"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isValid")}];
  [v3 setObject:v7 forKeyedSubscript:@"isValid"];

  return v3;
}

@end