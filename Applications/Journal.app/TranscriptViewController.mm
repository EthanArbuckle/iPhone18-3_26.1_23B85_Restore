@interface TranscriptViewController
- (_TtC7Journal24TranscriptViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleTap:(id)tap;
- (void)loadView;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation TranscriptViewController

- (void)loadView
{
  selfCopy = self;
  sub_100596528();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1005969E0(scrollCopy);
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_100598698(tapCopy);
}

- (_TtC7Journal24TranscriptViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end