@interface AISAppleIDSignInResult
- (AISAppleIDSignInResult)init;
- (NSDictionary)authResults;
- (void)setAuthResults:(id)results;
@end

@implementation AISAppleIDSignInResult

- (NSDictionary)authResults
{
  v3 = OBJC_IVAR___AISAppleIDSignInResult_authResults;
  swift_beginAccess();
  v4 = *(self + v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
  v5 = sub_240759F54();

  return v5;
}

- (void)setAuthResults:(id)results
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
  v4 = sub_240759F74();
  v5 = OBJC_IVAR___AISAppleIDSignInResult_authResults;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (AISAppleIDSignInResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end