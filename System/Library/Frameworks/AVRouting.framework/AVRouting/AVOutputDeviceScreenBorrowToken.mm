@interface AVOutputDeviceScreenBorrowToken
- (AVOutputDeviceScreenBorrowToken)initWithEndpoint:(OpaqueFigEndpoint *)a3 client:(id)a4 reason:(id)a5;
- (void)dealloc;
@end

@implementation AVOutputDeviceScreenBorrowToken

- (AVOutputDeviceScreenBorrowToken)initWithEndpoint:(OpaqueFigEndpoint *)a3 client:(id)a4 reason:(id)a5
{
  v17.receiver = self;
  v17.super_class = AVOutputDeviceScreenBorrowToken;
  v8 = [(AVOutputDeviceScreenBorrowToken *)&v17 init];
  if (v8)
  {
    if (a3)
    {
      v9 = CFRetain(a3);
    }

    else
    {
      v9 = 0;
    }

    v8->_endpoint = v9;
    v8->_client = [a4 copy];
    v8->_reason = [a5 copy];
    endpoint = v8->_endpoint;
    if (endpoint)
    {
      FigEndpointExtendedGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        client = v8->_client;
        reason = v8->_reason;
        VTable = CMBaseObjectGetVTable();
        v14 = *(*(VTable + 24) + 16);
        if (v14)
        {
          v15 = *(VTable + 24) + 16;
          v14(endpoint, client, reason);
        }
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      client = self->_client;
      reason = self->_reason;
      VTable = CMBaseObjectGetVTable();
      v7 = *(*(VTable + 24) + 24);
      if (v7)
      {
        v8 = *(VTable + 24) + 24;
        v7(endpoint, client, reason);
      }
    }

    v9 = self->_endpoint;
    if (v9)
    {
      CFRelease(v9);
    }
  }

  v10.receiver = self;
  v10.super_class = AVOutputDeviceScreenBorrowToken;
  [(AVOutputDeviceScreenBorrowToken *)&v10 dealloc];
}

@end