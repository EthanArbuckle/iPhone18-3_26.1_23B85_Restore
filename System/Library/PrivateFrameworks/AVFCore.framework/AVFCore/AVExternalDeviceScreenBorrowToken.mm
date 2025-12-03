@interface AVExternalDeviceScreenBorrowToken
- (AVExternalDeviceScreenBorrowToken)initWithExternalDevice:(id)device client:(id)client reason:(id)reason;
- (void)dealloc;
@end

@implementation AVExternalDeviceScreenBorrowToken

- (AVExternalDeviceScreenBorrowToken)initWithExternalDevice:(id)device client:(id)client reason:(id)reason
{
  v15.receiver = self;
  v15.super_class = AVExternalDeviceScreenBorrowToken;
  v8 = [(AVExternalDeviceScreenBorrowToken *)&v15 init];
  if (v8)
  {
    v8->_externalDevice = device;
    v8->_client = [client copy];
    v8->_reason = [reason copy];
    figEndpoint = [(AVExternalDevice *)v8->_externalDevice figEndpoint];
    if (figEndpoint)
    {
      v10 = figEndpoint;
      FigEndpointExtendedGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        client = v8->_client;
        reason = v8->_reason;
        v13 = *(*(CMBaseObjectGetVTable() + 24) + 16);
        if (v13)
        {
          v13(v10, client, reason);
        }
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  figEndpoint = [(AVExternalDevice *)self->_externalDevice figEndpoint];
  if (figEndpoint)
  {
    v4 = figEndpoint;
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      client = self->_client;
      reason = self->_reason;
      v7 = *(*(CMBaseObjectGetVTable() + 24) + 24);
      if (v7)
      {
        v7(v4, client, reason);
      }
    }
  }

  v8.receiver = self;
  v8.super_class = AVExternalDeviceScreenBorrowToken;
  [(AVExternalDeviceScreenBorrowToken *)&v8 dealloc];
}

@end