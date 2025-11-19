@interface MediaAuthenticationProtocolHandler
- (_TtC11AppStoreKit34MediaAuthenticationProtocolHandler)initWithTokenService:(id)a3;
- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6;
@end

@implementation MediaAuthenticationProtocolHandler

- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1E1A27230(v10, v11, a5, a6);
}

- (_TtC11AppStoreKit34MediaAuthenticationProtocolHandler)initWithTokenService:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(AMSMediaProtocolHandler *)&v5 initWithTokenService:a3];
}

@end