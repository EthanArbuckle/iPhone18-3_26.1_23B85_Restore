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
  v3 = sub_100081A18();

  return v3 & 1;
}

- (BOOL)sk_allowClientOverride
{
  v2 = self;
  v3 = sub_100081B60();

  return v3 & 1;
}

- (BOOL)sk_allowAdvancedPurchase
{
  v2 = self;
  v3 = sub_100081C4C();

  return v3;
}

- (BOOL)sk_allowAdvancedTransactionQueries
{
  v2 = self;
  v3 = sub_100081DA0();

  return v3;
}

- (BOOL)sk_allowPaymentRequestData
{
  v2 = self;
  v3 = sub_100081DDC();

  return v3 & 1;
}

- (BOOL)sk_allowArticle
{
  v2 = self;
  v3 = sub_100081F0C();

  return v3;
}

- (BOOL)sk_isOctanePrivileged
{
  v2 = self;
  v3 = sub_100081FB8();

  return v3 & 1;
}

- (BOOL)sk_getTaskAllowed
{
  v2 = self;
  v3 = sub_100081FF4();

  return v3 & 1;
}

- (NSData)sk_auditTokenData
{
  v2 = self;
  v3 = sub_100082834();
  v5 = v4;

  v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100018DF0(v3, v5);

  return v6.super.isa;
}

- (BOOL)sk_connectionIsOctaneService
{
  v2 = self;
  v3 = sub_1000828E8();

  return v3 & 1;
}

@end