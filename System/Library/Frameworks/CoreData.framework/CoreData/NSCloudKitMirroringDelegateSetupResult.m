@interface NSCloudKitMirroringDelegateSetupResult
- (void)dealloc;
@end

@implementation NSCloudKitMirroringDelegateSetupResult

- (void)dealloc
{
  self->_container = 0;

  self->_database = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringDelegateSetupResult;
  [(NSCloudKitMirroringResult *)&v3 dealloc];
}

@end