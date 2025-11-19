@interface ViewServiceUIViewControllerExtendedHeight
- (_TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight)initWithContentView:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation ViewServiceUIViewControllerExtendedHeight

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10002A1FC();
}

- (_TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight)initWithContentView:(id)a3
{
  swift_weakInit();
  v5 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC21TDGSharingViewService41ViewServiceUIViewControllerExtendedHeight_viewDidAppearCompletionHandler];
  v6 = type metadata accessor for ViewServiceUIViewControllerExtendedHeight();
  *v5 = 0;
  *(v5 + 1) = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(ViewServiceUIViewControllerExtendedHeight *)&v8 initWithContentView:a3];
}

@end