@interface LegacyMediaAuthenticationProtocolHandler
- (_TtC11AppStoreKit40LegacyMediaAuthenticationProtocolHandler)init;
- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6;
@end

@implementation LegacyMediaAuthenticationProtocolHandler

- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1E1A26F10(v10, v11, a5, a6);
}

- (_TtC11AppStoreKit40LegacyMediaAuthenticationProtocolHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LegacyMediaAuthenticationProtocolHandler();
  return [(AMSURLProtocolHandler *)&v3 init];
}

@end