@interface ActionButton
- (UIColor)backgroundColor;
- (UIColor)tintColor;
- (_TtC21_MarketplaceKit_UIKit12ActionButton)initWithCoder:(id)a3;
- (_TtC21_MarketplaceKit_UIKit12ActionButton)initWithFrame:(CGRect)a3;
- (void)defaultAction:(id)a3 event:(id)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation ActionButton

- (_TtC21_MarketplaceKit_UIKit12ActionButton)initWithCoder:(id)a3
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
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

- (void)setBackgroundColor:(id)a3
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a3;
  v5 = self;
  sub_23B7D28B8(a3);
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
  v3 = [(ActionButton *)&v5 tintColor];

  return v3;
}

- (void)setTintColor:(id)a3
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
  v5 = a3;
  v6 = self;
  [(ActionButton *)&v10 setTintColor:v5];
  sub_23B7CF0C4();
  v7 = *(&v6->super.super.super.super.isa + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate);
  v8 = sub_23B7CF5D4();
  v9 = *(v7 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v7 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v8;

  [*(&v6->super.super.super.super.isa + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView) _updateContent];
  [(ActionButton *)v6 setNeedsLayout];
}

- (void)defaultAction:(id)a3 event:(id)a4
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_23B7D3538(v8);
}

- (_TtC21_MarketplaceKit_UIKit12ActionButton)initWithFrame:(CGRect)a3
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