@interface SampleTimerSecureCodingConfig
- (_TtC24SensitiveContentAnalysis29SampleTimerSecureCodingConfig)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SampleTimerSecureCodingConfig

- (void)encodeWithCoder:(id)coder
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    coderCopy = coder;
    selfCopy = self;
    sub_1AEAF5D48(v6);
  }

  else
  {
    sub_1AEAFA01C();
    __break(1u);
  }
}

- (_TtC24SensitiveContentAnalysis29SampleTimerSecureCodingConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end