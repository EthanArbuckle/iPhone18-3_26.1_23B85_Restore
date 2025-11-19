@interface CloudCoreContainerOptions
- (BOOL)bypassPCSEncryption;
- (BOOL)isServiceManatee;
- (CKAccountOverrideInfo)accountOverrideInfo;
- (CKPersona)persona;
- (Class)classForCoder;
- (void)setAccountOverrideInfo:(id)a3;
- (void)setIsServiceManatee:(BOOL)a3;
- (void)setPersona:(id)a3;
@end

@implementation CloudCoreContainerOptions

- (BOOL)bypassPCSEncryption
{
  v2 = self;
  sub_188445778();
  v4 = v3;

  return v4 & 1;
}

- (Class)classForCoder
{
  sub_1884ABC5C();

  return swift_getObjCClassFromMetadata();
}

- (CKAccountOverrideInfo)accountOverrideInfo
{
  v2 = self;
  v3 = sub_1884AC868();

  return v3;
}

- (void)setAccountOverrideInfo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1884AC924(a3);
}

- (CKPersona)persona
{
  v2 = self;
  v3 = sub_1884ACA70();

  return v3;
}

- (void)setPersona:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1884ACCE4(a3);
}

- (BOOL)isServiceManatee
{
  v2 = self;
  sub_188445778();
  v4 = v3;

  return v4 & 1;
}

- (void)setIsServiceManatee:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1884ACF38(v3);
}

@end