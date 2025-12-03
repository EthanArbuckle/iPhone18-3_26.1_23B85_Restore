@interface APSystemAppOutlet
- (APSystemAppOutlet)init;
- (APSystemAppOutlet)initWithSystemAppInterface:(id)interface;
- (void)invalidate;
- (void)noteAllScenesDismissedForApplication:(id)application;
- (void)noteSceneWillBecomeForegroundVisibleForApplication:(id)application;
- (void)resume;
@end

@implementation APSystemAppOutlet

- (void)noteSceneWillBecomeForegroundVisibleForApplication:(id)application
{
  applicationCopy = application;
  selfCopy = self;
  sub_185AC3BDC(applicationCopy);
}

- (APSystemAppOutlet)initWithSystemAppInterface:(id)interface
{
  swift_unknownObjectRetain();
  v4 = sub_185AECAB8(interface);
  swift_unknownObjectRelease();
  return v4;
}

- (void)noteAllScenesDismissedForApplication:(id)application
{
  applicationCopy = application;
  selfCopy = self;
  sub_185AE9EB4(applicationCopy);
}

- (void)resume
{
  selfCopy = self;
  sub_185AEAEF4();
}

- (void)invalidate
{
  selfCopy = self;
  sub_185AEB1D4();
}

- (APSystemAppOutlet)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end