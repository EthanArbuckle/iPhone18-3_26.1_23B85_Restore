@interface FMNoDeviceView
- (_TtC6FindMy14FMNoDeviceView)initWithCoder:(id)coder;
- (void)handleAction;
@end

@implementation FMNoDeviceView

- (void)handleAction
{
  selfCopy = self;
  sub_1002678CC();
}

- (_TtC6FindMy14FMNoDeviceView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMNoDeviceView();
  return [(FMEmptyListView *)&v5 initWithCoder:coder];
}

@end