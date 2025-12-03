@interface ViewServiceUIViewControllerExtendedHeight
- (_TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight)initWithContentView:(id)view;
- (void)viewDidLayoutSubviews;
@end

@implementation ViewServiceUIViewControllerExtendedHeight

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10002A1FC();
}

- (_TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight)initWithContentView:(id)view
{
  swift_weakInit();
  v5 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight_viewDidAppearCompletionHandler];
  v6 = type metadata accessor for ViewServiceUIViewControllerExtendedHeight();
  *v5 = 0;
  *(v5 + 1) = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(ViewServiceUIViewControllerExtendedHeight *)&v8 initWithContentView:view];
}

@end