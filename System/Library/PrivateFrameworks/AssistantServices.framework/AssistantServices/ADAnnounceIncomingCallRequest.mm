@interface ADAnnounceIncomingCallRequest
- (ADAnnounceIncomingCallRequest)initWithCall:(id)call completion:(id)completion;
@end

@implementation ADAnnounceIncomingCallRequest

- (ADAnnounceIncomingCallRequest)initWithCall:(id)call completion:(id)completion
{
  callCopy = call;
  v11.receiver = self;
  v11.super_class = ADAnnounceIncomingCallRequest;
  v7 = [(ADAnnouncementRequest *)&v11 initWithAnnouncementRequestType:2 platform:1 completion:completion];
  if (v7)
  {
    v8 = [callCopy copy];
    call = v7->_call;
    v7->_call = v8;
  }

  return v7;
}

@end