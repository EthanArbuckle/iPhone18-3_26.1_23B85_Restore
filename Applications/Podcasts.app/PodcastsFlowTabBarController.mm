@interface PodcastsFlowTabBarController
- (unint64_t)supportedInterfaceOrientations;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation PodcastsFlowTabBarController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PodcastsFlowTabBarController *)&v3 viewDidLoad];

  PodcastsTabBarPresenter.viewDidLoad()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10002FB54(change);
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end