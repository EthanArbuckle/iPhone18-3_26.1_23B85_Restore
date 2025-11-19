@interface AVExternalDeviceScreenBorrowToken
- (AVExternalDeviceScreenBorrowToken)initWithExternalDevice:(id)a3 client:(id)a4 reason:(id)a5;
- (void)dealloc;
@end

@implementation AVExternalDeviceScreenBorrowToken

- (AVExternalDeviceScreenBorrowToken)initWithExternalDevice:(id)a3 client:(id)a4 reason:(id)a5
{
  v15.receiver = self;
  v15.super_class = AVExternalDeviceScreenBorrowToken;
  v8 = [(AVExternalDeviceScreenBorrowToken *)&v15 init];
  if (v8)
  {
    v8->_externalDevice = a3;
    v8->_client = [a4 copy];
    v8->_reason = [a5 copy];
    v9 = [(AVExternalDevice *)v8->_externalDevice figEndpoint];
    if (v9)
    {
      v10 = v9;
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
  v3 = [(AVExternalDevice *)self->_externalDevice figEndpoint];
  if (v3)
  {
    v4 = v3;
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