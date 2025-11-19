@interface FMTerminalView
- (_TtC6FindMy14FMTerminalView)initWithCoder:(id)a3;
- (void)handleAction;
@end

@implementation FMTerminalView

- (_TtC6FindMy14FMTerminalView)initWithCoder:(id)a3
{
  *&self->super.mediator[OBJC_IVAR____TtC6FindMy14FMTerminalView_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMTerminalView_isVisible) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMTerminalView_isPeopleTab) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMTerminalView_state) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMTerminalView_conditionSubcription) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)handleAction
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMTerminalView_state);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v6 = self;
      v4 = self;
      sub_10040BD04();
    }

    else
    {
      if (v2 != 5)
      {
        return;
      }

      v6 = self;
      v3 = self;
      sub_10040BE38();
    }
  }

  else
  {
    if (v2 - 1 >= 2 && !*(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMTerminalView_state))
    {
      return;
    }

    v6 = self;
    v5 = self;
    sub_10040C818();
  }
}

@end