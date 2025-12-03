@interface StepperButton
- (_TtC8PaperKit13StepperButton)initWithFrame:(CGRect)frame;
- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
- (void)removeTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
- (void)updateUI;
@end

@implementation StepperButton

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  if (target)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  StepperButton.addTarget(_:action:for:)(v10, action, events);

  outlined destroy of Any?(v10);
}

- (void)removeTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  if (target)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  StepperButton.removeTarget(_:action:for:)(v10, action, events);

  outlined destroy of Any?(v10);
}

- (void)updateUI
{
  selfCopy = self;
  StepperButton.updateUI()();
}

- (_TtC8PaperKit13StepperButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end