@interface ActivityTileSectionHeader
+ (NSString)reuseIdentifier;
- (_TtC10FitnessApp25ActivityTileSectionHeader)initWithReuseIdentifier:(id)a3;
- (void)configureWithTitle:(id)a3 subtitle:(id)a4 buttonAction:(id)a5 horizontalMargin:(double)a6;
- (void)didTapButton;
- (void)prepareForReuse;
@end

@implementation ActivityTileSectionHeader

- (_TtC10FitnessApp25ActivityTileSectionHeader)initWithReuseIdentifier:(id)a3
{
  if (a3)
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

- (void)configureWithTitle:(id)a3 subtitle:(id)a4 buttonAction:(id)a5 horizontalMargin:(double)a6
{
  v10 = _Block_copy(a5);
  if (a3)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v12;
    if (a4)
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
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4 = v14;
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
  v16 = self;
  sub_10050ADC0(v11, a3, v13, a4, v10, v15, a6);
  sub_1000245E0(v10);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10050B968();
}

- (void)didTapButton
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp25ActivityTileSectionHeader_buttonAction);
  if (v2)
  {
    v3 = self;
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