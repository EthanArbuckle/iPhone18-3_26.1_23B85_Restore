@interface IntroductionUIProvider.IntroductionCardContentViewController
- (_TtCC21TDGSharingViewService22IntroductionUIProvider37IntroductionCardContentViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation IntroductionUIProvider.IntroductionCardContentViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for IntroductionUIProvider.IntroductionCardContentViewController();
  v2 = v6.receiver;
  [(IntroductionUIProvider.IntroductionCardContentViewController *)&v6 viewDidLoad];
  v3 = *&v2[OBJC_IVAR____TtCC21TDGSharingViewService22IntroductionUIProvider37IntroductionCardContentViewController_viewDidLoadCompletionHandler];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtCC21TDGSharingViewService22IntroductionUIProvider37IntroductionCardContentViewController_viewDidLoadCompletionHandler + 8];

    v3(v5);

    sub_100009ED0(v3);
  }

  else
  {
  }
}

- (_TtCC21TDGSharingViewService22IntroductionUIProvider37IntroductionCardContentViewController)initWithContentView:(id)a3
{
  v5 = &self->PRXCardContentViewController_opaque[OBJC_IVAR____TtCC21TDGSharingViewService22IntroductionUIProvider37IntroductionCardContentViewController_viewDidLoadCompletionHandler];
  v6 = type metadata accessor for IntroductionUIProvider.IntroductionCardContentViewController();
  *v5 = 0;
  *(v5 + 1) = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(IntroductionUIProvider.IntroductionCardContentViewController *)&v8 initWithContentView:a3];
}

@end