@interface AISChildAccountCutOffAgeResponse
- (AISChildAccountCutOffAgeResponse)init;
- (NSString)childCutOffAgeLocalized;
- (int64_t)childCutOffAge;
@end

@implementation AISChildAccountCutOffAgeResponse

- (NSString)childCutOffAgeLocalized
{
  v2 = *(&self->super.isa + OBJC_IVAR___AISChildAccountCutOffAgeResponse_wrappedResponse);
  v3 = self;
  sub_240759894();

  v4 = sub_24075A084();

  return v4;
}

- (int64_t)childCutOffAge
{
  v2 = *(&self->super.isa + OBJC_IVAR___AISChildAccountCutOffAgeResponse_wrappedResponse);
  v3 = self;
  v4 = sub_240759884();

  return v4;
}

- (AISChildAccountCutOffAgeResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end