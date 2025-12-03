@interface BiometricInterface
+ (_TtC12ClarityBoard18BiometricInterface)sharedInstance;
- (void)forceBioLockout;
- (void)setNeedsAuthentication:(BOOL)authentication;
@end

@implementation BiometricInterface

+ (_TtC12ClarityBoard18BiometricInterface)sharedInstance
{
  if (qword_10032B4D8 != -1)
  {
    swift_once();
  }

  v3 = qword_1003368B0;

  return v3;
}

- (void)forceBioLockout
{
  selfCopy = self;
  sub_1000591C8();
}

- (void)setNeedsAuthentication:(BOOL)authentication
{
  selfCopy = self;
  sub_1000596A8(authentication);
}

@end