@interface ClimateVerticalQuickActionPopover
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (NSArray)preferredFocusEnvironments;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation ClimateVerticalQuickActionPopover

- (NSArray)preferredFocusEnvironments
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_focusManager))
  {
    selfCopy = self;

    sub_100030784();
  }

  sub_1000040E8(&unk_1001150F0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_focusManager))
  {
    contextCopy = context;
    selfCopy = self;

    v6 = sub_1000309B8(contextCopy);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = type metadata accessor for ClimateVerticalQuickActionPopover();
    return [(ClimateVerticalQuickActionPopover *)&v9 shouldUpdateFocusInContext:context];
  }

  return v6;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClimateVerticalQuickActionPopover();
  contextCopy = context;
  coordinatorCopy = coordinator;
  v8 = v9.receiver;
  [(ClimateQuickActionPopover *)&v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  if (*&v8[OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_focusManager])
  {

    sub_10003417C(contextCopy);
  }
}

@end