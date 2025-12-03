@interface AppSelectionSectionHeaderView
- (_TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView)initWithCoder:(id)coder;
- (_TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)performAuxillaryAction;
- (void)prepareForReuse;
@end

@implementation AppSelectionSectionHeaderView

- (_TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_100002D84(v3, v4);
}

- (_TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_headerLabel;
  coderCopy = coder;
  *(&self->super.super.super.super.isa + v4) = sub_1000028A0();
  v6 = OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_actionButton;
  *(&self->super.super.super.super.isa + v6) = sub_1000029A8();
  v7 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action);
  *v7 = 0;
  v7[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100002F18();
}

- (void)performAuxillaryAction
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action);
  if (v2)
  {
    v3 = *&self->headerLabel[OBJC_IVAR____TtC22GuestUserHandoverSetup29AppSelectionSectionHeaderView_action];
    selfCopy = self;
    v5 = sub_100003918(v2);
    v2(v5);

    sub_100003908(v2);
  }
}

@end