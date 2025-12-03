@interface FMPlatterButton
- (_TtC6FindMy15FMPlatterButton)initWithCoder:(id)coder;
- (_TtC6FindMy15FMPlatterButton)initWithFrame:(CGRect)frame;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMPlatterButton

- (void)traitCollectionDidChange:(id)change
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0xE0);
  selfCopy = self;
  v3();
}

- (_TtC6FindMy15FMPlatterButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy15FMPlatterButton_alignment) = 3;
  v4 = OBJC_IVAR____TtC6FindMy15FMPlatterButton_bottomSeparator;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMy15FMPlatterButton_topSeparator;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v10.receiver = selfCopy;
  v10.super_class = type metadata accessor for FMPlatterButton();
  [(FMPlatterButton *)&v10 touchesBegan:isa withEvent:eventCopy];

  secondarySystemFillColor = [objc_opt_self() secondarySystemFillColor];
  [(FMPlatterButton *)selfCopy setBackgroundColor:secondarySystemFillColor];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  sub_1004F465C(v6, event);
}

- (_TtC6FindMy15FMPlatterButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end