@interface AISSignInViewModel
- (UIImage)headerImage;
- (_TtC14AppleIDSetupUI18AISSignInViewModel)init;
- (id)authenticationContext;
- (uint64_t)signInViewControllerDidCancel:;
- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results completionHandler:(id)handler;
- (void)willAuthenticateWithContext:(id)context;
@end

@implementation AISSignInViewModel

- (UIImage)headerImage
{
  v2 = sub_240986400();

  return v2;
}

- (_TtC14AppleIDSetupUI18AISSignInViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = sub_240A2BEBC();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = sub_240A2C24C();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_240A2C21C();
  selfCopy = self;

  v17 = sub_240A2C20C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v13;
  v18[5] = selfCopy;
  v18[6] = sub_240963BB4;
  v18[7] = v14;
  sub_2409230D4(0, 0, v11, &unk_240A34810, v18);
}

- (void)willAuthenticateWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_240986694(contextCopy);
}

- (id)authenticationContext
{
  selfCopy = self;
  v3 = sub_240986060();

  return v3;
}

- (uint64_t)signInViewControllerDidCancel:
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "AISSignInViewModel: signInViewControllerDidCancel", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  return (*(v1 + 8))(v5, v0);
}

@end