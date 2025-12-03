@interface ActivityTileSectionHeader
+ (NSString)reuseIdentifier;
- (_TtC10FitnessApp25ActivityTileSectionHeader)initWithReuseIdentifier:(id)identifier;
- (void)configureWithTitle:(id)title subtitle:(id)subtitle buttonAction:(id)action horizontalMargin:(double)margin;
- (void)didTapButton;
- (void)prepareForReuse;
@end

@implementation ActivityTileSectionHeader

- (_TtC10FitnessApp25ActivityTileSectionHeader)initWithReuseIdentifier:(id)identifier
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

  return sub_100509878(v3, v4);
}

- (void)configureWithTitle:(id)title subtitle:(id)subtitle buttonAction:(id)action horizontalMargin:(double)margin
{
  v10 = _Block_copy(action);
  if (title)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    title = v12;
    if (subtitle)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = 0;
  if (!subtitle)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  subtitle = v14;
  if (v10)
  {
LABEL_4:
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    v10 = sub_10050C1BC;
    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  selfCopy = self;
  sub_10050ADC0(v11, title, v13, subtitle, v10, v15, margin);
  sub_1000245E0(v10);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10050B968();
}

- (void)didTapButton
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction);
  if (v2)
  {
    selfCopy = self;
    sub_10000B210(v2);
    v2(1);

    sub_1000245E0(v2);
  }
}

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end