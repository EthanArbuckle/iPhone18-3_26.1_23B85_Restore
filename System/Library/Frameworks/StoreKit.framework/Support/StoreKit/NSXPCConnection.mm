@interface NSXPCConnection
- (BOOL)sk_allowAdvancedPurchase;
- (BOOL)sk_allowAdvancedTransactionQueries;
- (BOOL)sk_allowArcade;
- (BOOL)sk_allowArticle;
- (BOOL)sk_allowClientOverride;
- (BOOL)sk_allowPaymentRequestData;
- (BOOL)sk_connectionIsOctaneService;
- (BOOL)sk_getTaskAllowed;
- (BOOL)sk_isOctanePrivileged;
- (NSData)sk_auditTokenData;
@end

@implementation NSXPCConnection

- (BOOL)sk_allowArcade
{
  v2 = self;
  v3 = sub_1001B5BC8();

  return v3 & 1;
}

- (BOOL)sk_allowClientOverride
{
  v2 = self;
  v3 = sub_1001B5D10();

  return v3 & 1;
}

- (BOOL)sk_allowAdvancedPurchase
{
  v2 = self;
  v3 = sub_1001B5DFC();

  return v3;
}

- (BOOL)sk_allowAdvancedTransactionQueries
{
  v2 = self;
  v3 = sub_1001B5E38();

  return v3;
}

- (BOOL)sk_allowPaymentRequestData
{
  v2 = self;
  v3 = sub_1001B5E74();

  return v3 & 1;
}

- (BOOL)sk_allowArticle
{
  v2 = self;
  v3 = sub_1001B5FA4();

  return v3;
}

- (BOOL)sk_isOctanePrivileged
{
  v2 = self;
  v3 = sub_1001B6050();

  return v3 & 1;
}

- (BOOL)sk_getTaskAllowed
{
  v2 = self;
  v3 = sub_1001B608C();

  return v3 & 1;
}

- (NSData)sk_auditTokenData
{
  v2 = self;
  v3 = sub_1001B68CC();
  v5 = v4;

  v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10008E168(v3, v5);

  return v6.super.isa;
}

- (BOOL)sk_connectionIsOctaneService
{
  v2 = self;
  v3 = sub_1001B6980();

  return v3 & 1;
}

@end