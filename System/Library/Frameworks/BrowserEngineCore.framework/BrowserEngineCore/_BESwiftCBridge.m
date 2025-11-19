@interface _BESwiftCBridge
+ (BOOL)checkEntitlement:(id)a3 forAuditToken:(id *)a4;
+ (BOOL)checkEntitlementForCurrentProcess:(id)a3;
- (_BESwiftCBridge)init;
@end

@implementation _BESwiftCBridge

+ (BOOL)checkEntitlement:(id)a3 forAuditToken:(id *)a4
{
  v4 = *a4->var0;
  v5 = *&a4->var0[2];
  v6 = *&a4->var0[4];
  v7 = *&a4->var0[6];
  v8 = sub_236E9D0F8();
  LOBYTE(v4) = sub_236E9CE88(v8, v9);

  return v4 & 1;
}

+ (BOOL)checkEntitlementForCurrentProcess:(id)a3
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