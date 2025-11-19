@interface ADAnnounceIncomingCallRequest
- (ADAnnounceIncomingCallRequest)initWithCall:(id)a3 completion:(id)a4;
@end

@implementation ADAnnounceIncomingCallRequest

- (ADAnnounceIncomingCallRequest)initWithCall:(id)a3 completion:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ADAnnounceIncomingCallRequest;
  v7 = [(ADAnnouncementRequest *)&v11 initWithAnnouncementRequestType:2 platform:1 completion:a4];
  if (v7)
  {
    v8 = [v6 copy];
    call = v7->_call;
    v7->_call = v8;
  }

  return v7;
}

@end