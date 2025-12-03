@interface _BESwiftCBridge
+ (BOOL)checkEntitlement:(id)entitlement forAuditToken:(id *)token;
+ (BOOL)checkEntitlementForCurrentProcess:(id)process;
- (_BESwiftCBridge)init;
@end

@implementation _BESwiftCBridge

+ (BOOL)checkEntitlement:(id)entitlement forAuditToken:(id *)token
{
  v4 = *token->var0;
  v5 = *&token->var0[2];
  v6 = *&token->var0[4];
  v7 = *&token->var0[6];
  v8 = sub_236E9D0F8();
  LOBYTE(v4) = sub_236E9CE88(v8, v9);

  return v4 & 1;
}

+ (BOOL)checkEntitlementForCurrentProcess:(id)process
{
  v3 = sub_236E9D0F8();
  v5 = sub_236E9CFA0(v3, v4);

  return v5 & 1;
}

- (_BESwiftCBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SwiftCBridge();
  return [(_BESwiftCBridge *)&v3 init];
}

@end