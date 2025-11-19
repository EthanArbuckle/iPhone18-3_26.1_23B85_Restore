@interface MainToolbarController
- (_TtC5Books21MainToolbarController)initWithCoder:(id)a3;
- (_TtC5Books21MainToolbarController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setSyncLayoutController:(id)a3;
- (void)syncLayoutControllerNeedsFlushing:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MainToolbarController

- (void)setSyncLayoutController:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books21MainToolbarController_syncLayoutController);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books21MainToolbarController_syncLayoutController) = a3;
  v3 = a3;
}

- (_TtC5Books21MainToolbarController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books21MainToolbarController_cancellable) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books21MainToolbarController____lazy_storage___toolbarView) = 0;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10065B844();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10065BE20();
}

- (_TtC5Books21MainToolbarController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)syncLayoutControllerNeedsFlushing:(id)a3
{
  v4 = self;
  v3 = [(MainToolbarController *)v4 view];
  [v3 setNeedsLayout];
}

@end