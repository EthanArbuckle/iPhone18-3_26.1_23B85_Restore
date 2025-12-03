@interface SRCarPlayView
- (_TtC4Siri13SRCarPlayView)initWithFrame:(CGRect)frame;
- (void)didTapToDismissWithSender:(id)sender;
@end

@implementation SRCarPlayView

- (void)didTapToDismissWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1000C6494(senderCopy);
}

- (_TtC4Siri13SRCarPlayView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end