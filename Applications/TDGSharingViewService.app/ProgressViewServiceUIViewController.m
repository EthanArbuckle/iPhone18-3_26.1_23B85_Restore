@interface ProgressViewServiceUIViewController
- (_TtC21TDGSharingViewService35ProgressViewServiceUIViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation ProgressViewServiceUIViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ProgressViewServiceUIViewController();
  v2 = v6.receiver;
  [(ProgressViewServiceUIViewController *)&v6 viewDidLoad];
  v3 = *&v2[OBJC_IVAR____TtC21TDGSharingViewService35ProgressViewServiceUIViewController_actionHandler];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC21TDGSharingViewService35ProgressViewServiceUIViewController_actionHandler + 8];
    v5 = v3;

    sub_100025A28(v5, v4);
  }
}

- (_TtC21TDGSharingViewService35ProgressViewServiceUIViewController)initWithContentView:(id)a3
{
  v5 = &self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC21TDGSharingViewService35ProgressViewServiceUIViewController_actionHandler];
  v6 = type metadata accessor for ProgressViewServiceUIViewController();
  *v5 = 0;
  *(v5 + 1) = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(ViewServiceUIViewControllerExtendedHeight *)&v8 initWithContentView:a3];
}

@end