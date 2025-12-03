@interface FMLocationAlertsView
- (_TtC6FindMy20FMLocationAlertsView)initWithCoder:(id)coder;
- (void)handleAction;
- (void)handleFenceTapWithSender:(id)sender;
- (void)handleSecondaryAction;
@end

@implementation FMLocationAlertsView

- (_TtC6FindMy20FMLocationAlertsView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_fencesRow) = _swiftEmptyArrayStorage;
  *(&self->super.titleLabel + OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_viewModel;
  v5 = type metadata accessor for FMPersonDetailViewModel(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_canSetNotifyMe) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_canSetNotifyOther) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_disabled) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)handleAction
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_disabled) == 1)
  {
    selfCopy = self;
    nextResponder = selfCopy;
    while (1)
    {
      v4 = nextResponder;
      nextResponder = [(FMLocationAlertsView *)nextResponder nextResponder];

      if (!nextResponder)
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1000C5474(0, 0, 0, 0);

        break;
      }
    }
  }
}

- (void)handleFenceTapWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10037825C(senderCopy);
}

- (void)handleSecondaryAction
{
  selfCopy = self;
  sub_1003784EC();
}

@end