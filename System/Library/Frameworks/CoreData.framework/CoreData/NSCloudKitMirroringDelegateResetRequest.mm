@interface NSCloudKitMirroringDelegateResetRequest
- (NSCloudKitMirroringDelegateResetRequest)initWithError:(id)error completionBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringDelegateResetRequest

- (NSCloudKitMirroringDelegateResetRequest)initWithError:(id)error completionBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = NSCloudKitMirroringDelegateResetRequest;
  v5 = [(NSCloudKitMirroringRequest *)&v7 initWithOptions:0 completionBlock:block];
  if (v5)
  {
    v5->_causedByError = error;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringDelegateResetRequest;
  [(NSCloudKitMirroringRequest *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringDelegateResetRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 copyWithZone:zone];
  v4[10] = self->_causedByError;
  return v4;
}

@end