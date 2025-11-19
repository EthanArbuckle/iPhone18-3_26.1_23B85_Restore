@interface TranscriptViewController
- (_TtC7Journal24TranscriptViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleTap:(id)a3;
- (void)loadView;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation TranscriptViewController

- (void)loadView
{
  v2 = self;
  sub_100596528();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005969E0(v4);
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100598698(v4);
}

- (_TtC7Journal24TranscriptViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end