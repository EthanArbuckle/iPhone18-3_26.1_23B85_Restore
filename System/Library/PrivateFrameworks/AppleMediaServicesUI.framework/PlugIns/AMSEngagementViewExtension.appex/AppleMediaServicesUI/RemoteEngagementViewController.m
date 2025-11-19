@interface RemoteEngagementViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (_TtC26AMSEngagementViewExtension30RemoteEngagementViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)presentEngagementRequest:(id)a3 bagData:(id)a4 clientInfo:(id)a5 completion:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RemoteEngagementViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10000399C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100003CE4(a3, &selRef_viewWillAppear_, &ViewControllerPresenter.viewWillAppear());
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100003ABC(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100003B80(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100003CE4(a3, &selRef_viewDidDisappear_, &ViewControllerPresenter.viewDidDisappear());
}

+ (id)_exportedInterface
{
  v2 = sub_100003E00(&protocolRef_AMSUIEngagementTaskRemoteInterface);

  return v2;
}

+ (id)_remoteViewControllerInterface
{
  v2 = sub_100003E00(&protocolRef_AMSUIEngagementTaskHostInterface);

  return v2;
}

- (_TtC26AMSEngagementViewExtension30RemoteEngagementViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100005FDC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100005194(v5, v7, a4);
}

- (void)presentEngagementRequest:(id)a3 bagData:(id)a4 clientInfo:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = a3;
  v11 = a5;
  v12 = self;
  if (a4)
  {
    v13 = a4;
    a4 = sub_100005E3C();
    v15 = v14;
  }

  else
  {
    v15 = 0xF000000000000000;
  }

  _Block_copy(v9);
  sub_1000053D0(a3, a4, v15, a5, self, v9);
  _Block_release(v9);
  sub_10000583C(a4, v15);
}

@end