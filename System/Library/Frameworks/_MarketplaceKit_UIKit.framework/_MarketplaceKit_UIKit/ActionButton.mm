@interface ActionButton
- (UIColor)backgroundColor;
- (UIColor)tintColor;
- (_TtC21_MarketplaceKit_UIKit12ActionButton)initWithCoder:(id)coder;
- (_TtC21_MarketplaceKit_UIKit12ActionButton)initWithFrame:(CGRect)frame;
- (void)defaultAction:(id)action event:(id)event;
- (void)setBackgroundColor:(id)color;
- (void)setTintColor:(id)color;
@end

@implementation ActionButton

- (_TtC21_MarketplaceKit_UIKit12ActionButton)initWithCoder:(id)coder
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_23B7D276C();
}

- (UIColor)backgroundColor
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__backgroundColor);

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  colorCopy = color;
  selfCopy = self;
  sub_23B7D28B8(color);
}

- (UIColor)tintColor
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ActionButton(0);
  tintColor = [(ActionButton *)&v5 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for ActionButton(0);
  colorCopy = color;
  selfCopy = self;
  [(ActionButton *)&v10 setTintColor:colorCopy];
  sub_23B7CF0C4();
  v7 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate);
  v8 = sub_23B7CF5D4();
  v9 = *(v7 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v7 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v8;

  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView) _updateContent];
  [(ActionButton *)selfCopy setNeedsLayout];
}

- (void)defaultAction:(id)action event:(id)event
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  actionCopy = action;
  eventCopy = event;
  selfCopy = self;
  sub_23B7D3538(eventCopy);
}

- (_TtC21_MarketplaceKit_UIKit12ActionButton)initWithFrame:(CGRect)frame
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end