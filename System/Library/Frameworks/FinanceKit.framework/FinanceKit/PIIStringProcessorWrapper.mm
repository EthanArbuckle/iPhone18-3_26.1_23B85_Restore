@interface PIIStringProcessorWrapper
+ (id)makeProcessor;
- (_TtC10FinanceKit25PIIStringProcessorWrapper)init;
- (id)redactFromString:(id)string forCountryCodes:(id)codes;
@end

@implementation PIIStringProcessorWrapper

+ (id)makeProcessor
{
  v2 = _s10FinanceKit25PIIStringProcessorWrapperC04makeD0ACyFZ_0();

  return v2;
}

- (id)redactFromString:(id)string forCountryCodes:(id)codes
{
  v5 = sub_1B7800868();
  v7 = v6;
  v8 = sub_1B7800FA8();
  selfCopy = self;
  PIIStringProcessor.redact(from:forCountryCodes:)(v5, v7, v8, &v12);

  if (v13 == 1)
  {
  }

  else
  {
    sub_1B7223CC4();
  }

  v10 = sub_1B7800838();

  return v10;
}

- (_TtC10FinanceKit25PIIStringProcessorWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end