@interface OrderWelcomeAnimation
- (_TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation)initWithCoder:(id)a3;
- (_TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation)initWithFrame:(CGRect)a3;
@end

@implementation OrderWelcomeAnimation

- (_TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_238700B54(x, y, width, height);

  return v7;
}

- (_TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation)initWithCoder:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_animationLayer) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUIP33_172278BA321E1BA0EC85D0F29C77481C21OrderWelcomeAnimation_originalSize);
  *v4 = 0;
  v4[1] = 0;
  result = sub_23875F520();
  __break(1u);
  return result;
}

@end