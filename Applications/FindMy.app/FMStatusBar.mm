@interface FMStatusBar
- (_TtC6FindMy11FMStatusBar)initWithFrame:(CGRect)frame;
- (void)handleTapWithSender:(id)sender;
- (void)layoutSubviews;
@end

@implementation FMStatusBar

- (void)handleTapWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10033C440();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10033B8A8();
}

- (_TtC6FindMy11FMStatusBar)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end