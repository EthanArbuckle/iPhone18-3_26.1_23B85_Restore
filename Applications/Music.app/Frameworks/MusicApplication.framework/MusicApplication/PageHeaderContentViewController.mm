@interface PageHeaderContentViewController
- (_TtC16MusicApplication31PageHeaderContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PageHeaderContentViewController

- (_TtC16MusicApplication31PageHeaderContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return PageHeaderContentViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)loadView
{
  selfCopy = self;
  PageHeaderContentViewController.loadView()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  PageHeaderContentViewController.viewDidLayoutSubviews()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  PageHeaderContentViewController.viewDidLoad()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  PageHeaderContentViewController.traitCollectionDidChange(_:)(v9);
}

@end