@interface SHManagedSessionWrapperDelegate
- (_TtC9ShazamKit31SHManagedSessionWrapperDelegate)init;
- (void)didCalculateSpectralData:(id)a3;
- (void)finishedManagedSession:(id)a3;
@end

@implementation SHManagedSessionWrapperDelegate

- (void)finishedManagedSession:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_230F7FEF4();
}

- (void)didCalculateSpectralData:(id)a3
{
  sub_230F7FE60();
  v4 = sub_230FDB7FC();
  v5 = self;
  sub_230F7E6C4(v4);
}

- (_TtC9ShazamKit31SHManagedSessionWrapperDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end