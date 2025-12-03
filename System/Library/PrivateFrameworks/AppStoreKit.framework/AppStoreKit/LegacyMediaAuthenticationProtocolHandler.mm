@interface LegacyMediaAuthenticationProtocolHandler
- (_TtC11AppStoreKit40LegacyMediaAuthenticationProtocolHandler)init;
- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error;
@end

@implementation LegacyMediaAuthenticationProtocolHandler

- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error
{
  requestCopy = request;
  taskCopy = task;
  selfCopy = self;
  sub_1E1A26F10(requestCopy, taskCopy, redirect, error);
}

- (_TtC11AppStoreKit40LegacyMediaAuthenticationProtocolHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LegacyMediaAuthenticationProtocolHandler();
  return [(AMSURLProtocolHandler *)&v3 init];
}

@end