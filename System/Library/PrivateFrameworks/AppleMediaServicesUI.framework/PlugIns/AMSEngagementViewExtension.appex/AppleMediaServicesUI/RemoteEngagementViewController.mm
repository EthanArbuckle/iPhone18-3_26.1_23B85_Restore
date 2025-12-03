@interface RemoteEngagementViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (_TtC26AMSEngagementViewExtension30RemoteEngagementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)presentEngagementRequest:(id)request bagData:(id)data clientInfo:(id)info completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RemoteEngagementViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000399C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100003CE4(appear, &selRef_viewWillAppear_, &ViewControllerPresenter.viewWillAppear());
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100003ABC(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100003B80(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100003CE4(disappear, &selRef_viewDidDisappear_, &ViewControllerPresenter.viewDidDisappear());
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

- (_TtC26AMSEngagementViewExtension30RemoteEngagementViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100005FDC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100005194(v5, v7, bundle);
}

- (void)presentEngagementRequest:(id)request bagData:(id)data clientInfo:(id)info completion:(id)completion
{
  v9 = _Block_copy(completion);
  requestCopy = request;
  infoCopy = info;
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = sub_100005E3C();
    v15 = v14;
  }

  else
  {
    v15 = 0xF000000000000000;
  }

  _Block_copy(v9);
  sub_1000053D0(request, data, v15, info, self, v9);
  _Block_release(v9);
  sub_10000583C(data, v15);
}

@end