@interface BiometricInterface
+ (_TtC12ClarityBoard18BiometricInterface)sharedInstance;
- (void)forceBioLockout;
- (void)setNeedsAuthentication:(BOOL)a3;
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
  v2 = self;
  sub_1000591C8();
}

- (void)setNeedsAuthentication:(BOOL)a3
{
  v4 = self;
  sub_1000596A8(a3);
}

@end