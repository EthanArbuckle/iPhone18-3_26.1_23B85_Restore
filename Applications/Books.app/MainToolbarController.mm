@interface MainToolbarController
- (_TtC5Books21MainToolbarController)initWithCoder:(id)coder;
- (_TtC5Books21MainToolbarController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setSyncLayoutController:(id)controller;
- (void)syncLayoutControllerNeedsFlushing:(id)flushing;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MainToolbarController

- (void)setSyncLayoutController:(id)controller
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books21MainToolbarController_syncLayoutController);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books21MainToolbarController_syncLayoutController) = controller;
  controllerCopy = controller;
}

- (_TtC5Books21MainToolbarController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_10065B844();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10065BE20();
}

- (_TtC5Books21MainToolbarController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)syncLayoutControllerNeedsFlushing:(id)flushing
{
  selfCopy = self;
  view = [(MainToolbarController *)selfCopy view];
  [view setNeedsLayout];
}

@end