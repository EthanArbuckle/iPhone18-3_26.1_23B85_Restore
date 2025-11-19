@interface NSCloudKitMirroringDelegateResetRequest
- (NSCloudKitMirroringDelegateResetRequest)initWithError:(id)a3 completionBlock:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringDelegateResetRequest

- (NSCloudKitMirroringDelegateResetRequest)initWithError:(id)a3 completionBlock:(id)a4
{
  v7.receiver = self;
  v7.super_class = NSCloudKitMirroringDelegateResetRequest;
  v5 = [(NSCloudKitMirroringRequest *)&v7 initWithOptions:0 completionBlock:a4];
  if (v5)
  {
    v5->_causedByError = a3;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringDelegateResetRequest;
  [(NSCloudKitMirroringRequest *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringDelegateResetRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 copyWithZone:a3];
  v4[10] = self->_causedByError;
  return v4;
}

@end