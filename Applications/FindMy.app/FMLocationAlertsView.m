@interface FMLocationAlertsView
- (_TtC6FindMy20FMLocationAlertsView)initWithCoder:(id)a3;
- (void)handleAction;
- (void)handleFenceTapWithSender:(id)a3;
- (void)handleSecondaryAction;
@end

@implementation FMLocationAlertsView

- (_TtC6FindMy20FMLocationAlertsView)initWithCoder:(id)a3
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
    v5 = self;
    v3 = v5;
    while (1)
    {
      v4 = v3;
      v3 = [(FMLocationAlertsView *)v3 nextResponder];

      if (!v3)
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

- (void)handleFenceTapWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10037825C(v4);
}

- (void)handleSecondaryAction
{
  v2 = self;
  sub_1003784EC();
}

@end