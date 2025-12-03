@interface TTRISearchResultContainerViewController
- (_TtC9Reminders39TTRISearchResultContainerViewController)initWithCoder:(id)coder;
- (_TtC9Reminders39TTRISearchResultContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)scrollViewWillBeginDragging:(id)dragging;
@end

@implementation TTRISearchResultContainerViewController

- (_TtC9Reminders39TTRISearchResultContainerViewController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultViewController);
  *v3 = 0;
  v3[1] = 0;
  v4 = self + OBJC_IVAR____TtC9Reminders39TTRISearchResultContainerViewController_resultModuleInterface;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9Reminders39TTRISearchResultContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_100506A0C();
}

@end