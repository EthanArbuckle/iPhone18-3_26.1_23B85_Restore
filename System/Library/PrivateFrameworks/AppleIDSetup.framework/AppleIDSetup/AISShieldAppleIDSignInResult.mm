@interface AISShieldAppleIDSignInResult
- (AISShieldAppleIDSignInResult)init;
- (AISShieldAppleIDSignInResult)initWithAuthResults:(id)results;
- (NSDictionary)authResults;
@end

@implementation AISShieldAppleIDSignInResult

- (NSDictionary)authResults
{
  v2 = *(self + OBJC_IVAR___AISShieldAppleIDSignInResult_authResults);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
  v3 = sub_240759F54();

  return v3;
}

- (AISShieldAppleIDSignInResult)initWithAuthResults:(id)results
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
  *(self + OBJC_IVAR___AISShieldAppleIDSignInResult_authResults) = sub_240759F74();
  v5.receiver = self;
  v5.super_class = AISShieldAppleIDSignInResult;
  return [(AISShieldAppleIDSignInResult *)&v5 init];
}

- (AISShieldAppleIDSignInResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end