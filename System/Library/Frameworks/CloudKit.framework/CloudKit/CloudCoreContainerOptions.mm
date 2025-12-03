@interface CloudCoreContainerOptions
- (BOOL)bypassPCSEncryption;
- (BOOL)isServiceManatee;
- (CKAccountOverrideInfo)accountOverrideInfo;
- (CKPersona)persona;
- (Class)classForCoder;
- (void)setAccountOverrideInfo:(id)info;
- (void)setIsServiceManatee:(BOOL)manatee;
- (void)setPersona:(id)persona;
@end

@implementation CloudCoreContainerOptions

- (BOOL)bypassPCSEncryption
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1884AC868();

  return v3;
}

- (void)setAccountOverrideInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_1884AC924(info);
}

- (CKPersona)persona
{
  selfCopy = self;
  v3 = sub_1884ACA70();

  return v3;
}

- (void)setPersona:(id)persona
{
  personaCopy = persona;
  selfCopy = self;
  sub_1884ACCE4(persona);
}

- (BOOL)isServiceManatee
{
  selfCopy = self;
  sub_188445778();
  v4 = v3;

  return v4 & 1;
}

- (void)setIsServiceManatee:(BOOL)manatee
{
  manateeCopy = manatee;
  selfCopy = self;
  sub_1884ACF38(manateeCopy);
}

@end