@interface FindMyMessagesAppViewController
- (BOOL)displaysAfterAppearance;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (UIColor)messageTintColor;
- (UINavigationItem)navigationItem;
- (_TtC17FindMyMessagesApp31FindMyMessagesAppViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)_validateMessageForSending:(MSMessage *)a3 conversation:(MSConversation *)a4 associatedText:(NSString *)a5 completionHandler:(id)a6;
- (void)didBecomeActiveWithConversation:(id)a3;
- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4;
- (void)didReceiveMessage:(id)a3 conversation:(id)a4;
- (void)didResignActiveWithConversation:(id)a3;
- (void)didStartSendingMessage:(id)a3 conversation:(id)a4;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation FindMyMessagesAppViewController

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  FindMyMessagesAppViewController.willBecomeActive(with:)(v4);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  FindMyMessagesAppViewController.preferredContentSizeDidChange(forChildContentContainer:)(a3);
  swift_unknownObjectRelease();
}

- (void)didBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  FindMyMessagesAppViewController.didBecomeActive(with:)(v4);
}

- (BOOL)displaysAfterAppearance
{
  v2 = self;
  FindMyMessagesAppViewController.displaysAfterAppearance()();

  return 0;
}

- (void)didResignActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  FindMyMessagesAppViewController.didResignActive(with:)(v4);
}

- (void)didReceiveMessage:(id)a3 conversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  FindMyMessagesAppViewController.didReceive(_:conversation:)(v6, v7);
}

- (void)didStartSendingMessage:(id)a3 conversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  FindMyMessagesAppViewController.didStartSending(_:conversation:)(v6, v7);
}

- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  FindMyMessagesAppViewController.didCancelSending(_:conversation:)(v6, v7);
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  v4 = self;
  FindMyMessagesAppViewController.willTransition(to:)(a3);
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  v4 = self;
  FindMyMessagesAppViewController.didTransition(to:)(a3);
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  if ([(FindMyMessagesAppViewController *)v5 presentationStyle]== &dword_0 + 2)
  {
    [(FindMyMessagesAppViewController *)v5 _balloonMaskEdgeInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [*(&v5->super.super.super.super.isa + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController) preferredContentSize];
    v15 = v14;
    v17 = v16;

    width = v13 + v9 + v15;
    height = v11 + v7 + v17 + 1.0;
  }

  else
  {
  }

  v18 = width;
  v19 = height;
  result.height = v19;
  result.width = v18;
  return result;
}

- (UINavigationItem)navigationItem
{
  v2 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController) navigationItem];

  return v2;
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v3 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController) contentScrollViewForEdge:a3];

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  FindMyMessagesAppViewController.viewDidLoad()();
}

- (UIColor)messageTintColor
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel);
  v3 = self;
  v4 = sub_E504();

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  FindMyMessagesAppViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  FindMyMessagesAppViewController.viewDidDisappear(_:)(a3);
}

- (void)_validateMessageForSending:(MSMessage *)a3 conversation:(MSConversation *)a4 associatedText:(NSString *)a5 completionHandler:(id)a6
{
  v11 = sub_19DC(&qword_184C0, &qword_EE70);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_E6F4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_EFE8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_EFF8;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_C35C(0, 0, v14, &unk_F008, v19);
}

- (_TtC17FindMyMessagesApp31FindMyMessagesAppViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_E654();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return FindMyMessagesAppViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end