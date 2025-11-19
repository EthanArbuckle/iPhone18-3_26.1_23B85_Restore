@interface PageHeaderContentViewController
- (_TtC16MusicApplication31PageHeaderContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PageHeaderContentViewController

- (_TtC16MusicApplication31PageHeaderContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return PageHeaderContentViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)loadView
{
  v2 = self;
  PageHeaderContentViewController.loadView()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  PageHeaderContentViewController.viewDidLayoutSubviews()();
}

- (void)viewDidLoad
{
  v2 = self;
  PageHeaderContentViewController.viewDidLoad()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  PageHeaderContentViewController.traitCollectionDidChange(_:)(v9);
}

@end