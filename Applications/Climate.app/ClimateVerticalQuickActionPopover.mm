@interface ClimateVerticalQuickActionPopover
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (NSArray)preferredFocusEnvironments;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation ClimateVerticalQuickActionPopover

- (NSArray)preferredFocusEnvironments
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_focusManager))
  {
    v2 = self;

    sub_100030784();
  }

  sub_1000040E8(&unk_1001150F0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_focusManager))
  {
    v4 = a3;
    v5 = self;

    v6 = sub_1000309B8(v4);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = type metadata accessor for ClimateVerticalQuickActionPopover();
    return [(ClimateVerticalQuickActionPopover *)&v9 shouldUpdateFocusInContext:a3];
  }

  return v6;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClimateVerticalQuickActionPopover();
  v6 = a3;
  v7 = a4;
  v8 = v9.receiver;
  [(ClimateQuickActionPopover *)&v9 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  if (*&v8[OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_focusManager])
  {

    sub_10003417C(v6);
  }
}

@end