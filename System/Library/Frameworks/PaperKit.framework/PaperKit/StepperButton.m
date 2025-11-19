@interface StepperButton
- (_TtC8PaperKit13StepperButton)initWithFrame:(CGRect)a3;
- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5;
- (void)removeTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5;
- (void)updateUI;
@end

@implementation StepperButton

- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = self;
  }

  StepperButton.addTarget(_:action:for:)(v10, a4, a5);

  outlined destroy of Any?(v10);
}

- (void)removeTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = self;
  }

  StepperButton.removeTarget(_:action:for:)(v10, a4, a5);

  outlined destroy of Any?(v10);
}

- (void)updateUI
{
  v2 = self;
  StepperButton.updateUI()();
}

- (_TtC8PaperKit13StepperButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end