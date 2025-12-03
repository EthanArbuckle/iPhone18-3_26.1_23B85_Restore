@interface TTRIPinnedListControl
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)accessibilityCustomActions;
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (_TtC9Reminders21TTRIPinnedListControl)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(void *)interaction previewForHighlightingMenuWithConfiguration:(void *)configuration;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (unint64_t)accessibilityTraits;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setAccessibilityCustomActions:(id)isa;
- (void)tintColorDidChange;
@end

@implementation TTRIPinnedListControl

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIPinnedListControl *)&v3 tintColorDidChange];
  sub_10002CBD0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_grid) sizeThatFits:{fits.width, fits.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100038350();
}

- (id)contextMenuInteraction:(void *)interaction previewForHighlightingMenuWithConfiguration:(void *)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_1001AA7E4(interactionCopy);

  return v9;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v8 = self + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    swift_getObjectType();
    v10 = *(v9 + 16);
    interactionCopy = interaction;
    selfCopy = self;
    v13 = v10(x, y);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_1001A8A4C(contextCopy, coordinatorCopy);
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v3 = sub_1001A8C64();

  return v3;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_1001A8D98();
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

- (NSArray)accessibilityUserInputLabels
{
  selfCopy = self;
  v3 = sub_1001A9BB8();

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (NSString)accessibilityHint
{
  selfCopy = self;
  if ((UIAccessibilityTraitNotEnabled & ~sub_1001A8C64()) != 0)
  {
    static TTRAccesibility.AccountsList.Hint.List.getter();

    v4 = String._bridgeToObjectiveC()();

    v3 = v4;
  }

  else
  {

    v3 = 0;
  }

  return v3;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_1001A9D7C();

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

- (void)setAccessibilityCustomActions:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
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

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIPinnedListControl *)&v8 setAccessibilityCustomActions:isa];
}

- (_TtC9Reminders21TTRIPinnedListControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v6 = self + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 8);
    interactionCopy = interaction;
    swift_unknownObjectRetain();
    selfCopy = self;
    v11 = v8();
    swift_unknownObjectRelease();
    sub_1001AA0A0(v11, interactionCopy);

    swift_unknownObjectRelease();
  }

  sub_100003540(0, &qword_10076BAC0);
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

@end