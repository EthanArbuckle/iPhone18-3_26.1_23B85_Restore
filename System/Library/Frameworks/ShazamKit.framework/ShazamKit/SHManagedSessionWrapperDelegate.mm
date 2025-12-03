@interface SHManagedSessionWrapperDelegate
- (_TtC9ShazamKit31SHManagedSessionWrapperDelegate)init;
- (void)didCalculateSpectralData:(id)data;
- (void)finishedManagedSession:(id)session;
@end

@implementation SHManagedSessionWrapperDelegate

- (void)finishedManagedSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_230F7FEF4();
}

- (void)didCalculateSpectralData:(id)data
{
  sub_230F7FE60();
  v4 = sub_230FDB7FC();
  selfCopy = self;
  sub_230F7E6C4(v4);
}

- (_TtC9ShazamKit31SHManagedSessionWrapperDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end