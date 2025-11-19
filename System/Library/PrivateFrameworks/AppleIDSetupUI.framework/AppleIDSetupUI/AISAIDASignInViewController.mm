@interface AISAIDASignInViewController
- (AISAIDASignInViewController)init;
- (uint64_t)uiController:didPresentRootViewController:;
@end

@implementation AISAIDASignInViewController

- (AISAIDASignInViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)uiController:didPresentRootViewController:
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "AIDASignInViewController uiController(_:didPresentRootViewController:)", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  return (*(v1 + 8))(v5, v0);
}

@end