@interface _AppExtensionHostView.HostCoordinator
- (_TtCV10ContactsUI21_AppExtensionHostView15HostCoordinator)init;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:error:;
@end

@implementation _AppExtensionHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_199AF9BE4(activateCopy);
}

- (_TtCV10ContactsUI21_AppExtensionHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)hostViewControllerWillDeactivate:error:
{
  if (qword_1EAF71E88 != -1)
  {
    swift_once();
  }

  v0 = sub_199DF804C();
  __swift_project_value_buffer(v0, qword_1EAF73D00);
  oslog = sub_199DF802C();
  v1 = sub_199DFA33C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_199A75000, oslog, v1, "Will be deactivating the host view...", v2, 2u);
    MEMORY[0x19A8FA1A0](v2, -1, -1);
  }
}

@end