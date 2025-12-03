@interface FindMyMessagesAppViewController
- (BOOL)displaysAfterAppearance;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (UIColor)messageTintColor;
- (UINavigationItem)navigationItem;
- (_TtC17FindMyMessagesApp31FindMyMessagesAppViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (void)_validateMessageForSending:(MSMessage *)sending conversation:(MSConversation *)conversation associatedText:(NSString *)text completionHandler:(id)handler;
- (void)didBecomeActiveWithConversation:(id)conversation;
- (void)didCancelSendingMessage:(id)message conversation:(id)conversation;
- (void)didReceiveMessage:(id)message conversation:(id)conversation;
- (void)didResignActiveWithConversation:(id)conversation;
- (void)didStartSendingMessage:(id)message conversation:(id)conversation;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation FindMyMessagesAppViewController

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  FindMyMessagesAppViewController.willBecomeActive(with:)(conversationCopy);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  FindMyMessagesAppViewController.preferredContentSizeDidChange(forChildContentContainer:)(container);
  swift_unknownObjectRelease();
}

- (void)didBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  FindMyMessagesAppViewController.didBecomeActive(with:)(conversationCopy);
}

- (BOOL)displaysAfterAppearance
{
  selfCopy = self;
  FindMyMessagesAppViewController.displaysAfterAppearance()();

  return 0;
}

- (void)didResignActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  FindMyMessagesAppViewController.didResignActive(with:)(conversationCopy);
}

- (void)didReceiveMessage:(id)message conversation:(id)conversation
{
  messageCopy = message;
  conversationCopy = conversation;
  selfCopy = self;
  FindMyMessagesAppViewController.didReceive(_:conversation:)(messageCopy, conversationCopy);
}

- (void)didStartSendingMessage:(id)message conversation:(id)conversation
{
  messageCopy = message;
  conversationCopy = conversation;
  selfCopy = self;
  FindMyMessagesAppViewController.didStartSending(_:conversation:)(messageCopy, conversationCopy);
}

- (void)didCancelSendingMessage:(id)message conversation:(id)conversation
{
  messageCopy = message;
  conversationCopy = conversation;
  selfCopy = self;
  FindMyMessagesAppViewController.didCancelSending(_:conversation:)(messageCopy, conversationCopy);
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  FindMyMessagesAppViewController.willTransition(to:)(style);
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  FindMyMessagesAppViewController.didTransition(to:)(style);
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  if ([(FindMyMessagesAppViewController *)selfCopy presentationStyle]== &dword_0 + 2)
  {
    [(FindMyMessagesAppViewController *)selfCopy _balloonMaskEdgeInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController) preferredContentSize];
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
  navigationItem = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController) navigationItem];

  return navigationItem;
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  v3 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController) contentScrollViewForEdge:edge];

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  FindMyMessagesAppViewController.viewDidLoad()();
}

- (UIColor)messageTintColor
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel);
  selfCopy = self;
  v4 = sub_E504();

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  FindMyMessagesAppViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  FindMyMessagesAppViewController.viewDidDisappear(_:)(disappear);
}

- (void)_validateMessageForSending:(MSMessage *)sending conversation:(MSConversation *)conversation associatedText:(NSString *)text completionHandler:(id)handler
{
  v11 = sub_19DC(&qword_184C0, &qword_EE70);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = sending;
  v16[3] = conversation;
  v16[4] = text;
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
  sendingCopy = sending;
  conversationCopy = conversation;
  textCopy = text;
  selfCopy = self;
  sub_C35C(0, 0, v14, &unk_F008, v19);
}

- (_TtC17FindMyMessagesApp31FindMyMessagesAppViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_E654();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return FindMyMessagesAppViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end