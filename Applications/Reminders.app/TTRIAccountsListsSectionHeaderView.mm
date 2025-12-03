@interface TTRIAccountsListsSectionHeaderView
- (BOOL)accessibilityActivate;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)accessibilityCustomActions;
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityHint;
- (NSString)accessibilityIdentifier;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (_TtC9Reminders34TTRIAccountsListsSectionHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)handleLongPressGesture:(id)gesture;
- (void)migrateButtonAction:(id)action;
- (void)setAccessibilityCustomActions:(id)actions;
- (void)toggleExpandState;
@end

@implementation TTRIAccountsListsSectionHeaderView

- (_TtC9Reminders34TTRIAccountsListsSectionHeaderView)initWithReuseIdentifier:(id)identifier
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

  return sub_100334A98(v3, v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_outerStackView) effectiveLayoutSizeFittingSize:{fits.width, fits.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)toggleExpandState
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v4[3] = type metadata accessor for TTRIAccountsListsSectionHeaderView();
    v4[4] = sub_100337B00(&qword_10077F948, type metadata accessor for TTRIAccountsListsSectionHeaderView);
    v4[0] = self;
    selfCopy = self;
    dispatch thunk of TTRITreeViewCellDelegate.treeCellViewToggleExpandState(_:)();
    swift_unknownObjectRelease();
    sub_100004758(v4);
  }
}

- (void)handleLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_100335620(gestureCopy);
}

- (void)migrateButtonAction:(id)action
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100335A24();

  sub_100004758(&v5);
}

- (NSString)accessibilityIdentifier
{
  if (*&self->identifier[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_identifier])
  {

LABEL_5:
    v6 = String._bridgeToObjectiveC()();

    goto LABEL_6;
  }

  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (NSArray)accessibilityUserInputLabels
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_100058000(&unk_100771E10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10062D400;
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
  }

  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

- (NSString)accessibilityValue
{
  selfCopy = self;
  sub_100336960();
  static TTRAccesibility.General.Label.Separator.getter();
  sub_100058000(&unk_100781F20);
  sub_10006089C();
  BidirectionalCollection<>.joined(separator:)();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)accessibilityHint
{
  selfCopy = self;
  sub_1003360C0();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v3 = sub_100336548();

  return v3 & 1;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_1003366F4();

  if (v3)
  {
    sub_100003540(0, &qword_10076BCE0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setAccessibilityCustomActions:(id)actions
{
  isa = actions;
  if (actions)
  {
    sub_100003540(0, &qword_10076BCE0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRIAccountsListsSectionHeaderView();
  [(TTRIAccountsListsSectionHeaderView *)&v7 setAccessibilityCustomActions:isa];
}

@end