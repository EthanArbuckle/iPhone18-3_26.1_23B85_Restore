@interface CRLiOSFolderGridViewController.ListItem.ListViewController
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
@end

@implementation CRLiOSFolderGridViewController.ListItem.ListViewController

- (void)updateViewConstraints
{
  selfCopy = self;
  if (sub_100A4F68C())
  {
    sub_100A518F8();
    sub_100A51AD8();
    sub_100A52F8C();
    sub_100A531B8(0);
    sub_100A53560();

    v3.receiver = selfCopy;
    v3.super_class = _s8ListItemC18ListViewControllerCMa();
    [(CRLiOSFolderGridViewController.ListItem.ListViewController *)&v3 updateViewConstraints];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _s8ListItemC18ListViewControllerCMa();
  v2 = v3.receiver;
  [(CRLiOSFolderGridViewController.ListItem.ListViewController *)&v3 viewDidLayoutSubviews];
  sub_100A51364(1);
}

@end