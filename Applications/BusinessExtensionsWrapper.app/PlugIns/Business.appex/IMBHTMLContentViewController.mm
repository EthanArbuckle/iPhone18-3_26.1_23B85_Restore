@interface IMBHTMLContentViewController
- (void)shareButtonTapped:(id)a3;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
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

- (void)shareButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100030538();
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10003065C(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end