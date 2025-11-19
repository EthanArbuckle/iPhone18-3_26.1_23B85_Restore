@interface FloatingPlayerController
- (_TtC5Books24FloatingPlayerController)initWithCoder:(id)a3;
- (_TtC5Books24FloatingPlayerController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation FloatingPlayerController

- (_TtC5Books24FloatingPlayerController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books24FloatingPlayerController_cancellable) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books24FloatingPlayerController____lazy_storage___floatingPlayerContainerView) = 0;
  swift_unknownObjectWeakInit();
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100242DAC();
}

- (_TtC5Books24FloatingPlayerController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end