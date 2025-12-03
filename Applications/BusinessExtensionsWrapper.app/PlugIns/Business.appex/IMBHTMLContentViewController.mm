@interface IMBHTMLContentViewController
- (void)shareButtonTapped:(id)tapped;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
@end

@implementation IMBHTMLContentViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for IMBHTMLContentViewController();
  v2 = v5.receiver;
  [(IMBDetailedMessageViewController *)&v5 viewDidLoad];
  if ([*&v2[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] rootObject])
  {
    type metadata accessor for IMBContent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *&v2[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content];
      *&v2[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content] = v3;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_10002DA94();
  sub_10002E8A8();
}

- (void)shareButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_100030538();
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  viewCopy = view;
  actionCopy = action;
  selfCopy = self;
  sub_10003065C(actionCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end