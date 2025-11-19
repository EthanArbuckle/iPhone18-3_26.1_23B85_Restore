@interface NSCloudKitMirroringFetchRecordsResult
- (void)dealloc;
@end

@implementation NSCloudKitMirroringFetchRecordsResult

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringFetchRecordsResult;
  [(NSCloudKitMirroringResult *)&v3 dealloc];
}

@end