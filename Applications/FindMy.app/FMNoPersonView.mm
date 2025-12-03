@interface FMNoPersonView
- (_TtC6FindMy14FMNoPersonView)initWithCoder:(id)coder;
- (void)handleAction;
@end

@implementation FMNoPersonView

- (void)handleAction
{
  selfCopy = self;
  sub_10044CC00();
}

- (_TtC6FindMy14FMNoPersonView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMNoPersonView();
  return [(FMEmptyListView *)&v5 initWithCoder:coder];
}

@end