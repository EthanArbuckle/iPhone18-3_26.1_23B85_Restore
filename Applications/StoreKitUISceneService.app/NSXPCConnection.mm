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
  selfCopy = self;
  v3 = sub_100081A18();

  return v3 & 1;
}

- (BOOL)sk_allowClientOverride
{
  selfCopy = self;
  v3 = sub_100081B60();

  return v3 & 1;
}

- (BOOL)sk_allowAdvancedPurchase
{
  selfCopy = self;
  v3 = sub_100081C4C();

  return v3;
}

- (BOOL)sk_allowAdvancedTransactionQueries
{
  selfCopy = self;
  v3 = sub_100081DA0();

  return v3;
}

- (BOOL)sk_allowPaymentRequestData
{
  selfCopy = self;
  v3 = sub_100081DDC();

  return v3 & 1;
}

- (BOOL)sk_allowArticle
{
  selfCopy = self;
  v3 = sub_100081F0C();

  return v3;
}

- (BOOL)sk_isOctanePrivileged
{
  selfCopy = self;
  v3 = sub_100081FB8();

  return v3 & 1;
}

- (BOOL)sk_getTaskAllowed
{
  selfCopy = self;
  v3 = sub_100081FF4();

  return v3 & 1;
}

- (NSData)sk_auditTokenData
{
  selfCopy = self;
  v3 = sub_100082834();
  v5 = v4;

  v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100018DF0(v3, v5);

  return v6.super.isa;
}

- (BOOL)sk_connectionIsOctaneService
{
  selfCopy = self;
  v3 = sub_1000828E8();

  return v3 & 1;
}

@end