@interface APSystemAppOutlet
- (APSystemAppOutlet)init;
- (APSystemAppOutlet)initWithSystemAppInterface:(id)a3;
- (void)invalidate;
- (void)noteAllScenesDismissedForApplication:(id)a3;
- (void)noteSceneWillBecomeForegroundVisibleForApplication:(id)a3;
- (void)resume;
@end

@implementation APSystemAppOutlet

- (void)noteSceneWillBecomeForegroundVisibleForApplication:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_185AC3BDC(v4);
}

- (APSystemAppOutlet)initWithSystemAppInterface:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_185AECAB8(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (void)noteAllScenesDismissedForApplication:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_185AE9EB4(v4);
}

- (void)resume
{
  v2 = self;
  sub_185AEAEF4();
}

- (void)invalidate
{
  v2 = self;
  sub_185AEB1D4();
}

- (APSystemAppOutlet)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end