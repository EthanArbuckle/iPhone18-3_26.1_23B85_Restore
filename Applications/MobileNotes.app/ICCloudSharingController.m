@interface ICCloudSharingController
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ICCloudSharingController

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICCloudSharingController;
  [(ICCloudSharingController *)&v5 viewWillAppear:a3];
  v4 = [(ICCloudSharingController *)self share];
  [(ICCloudSharingController *)self setCanDeferDismissal:v4 == 0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICCloudSharingController *)self share];
  if (v5 && ![(ICCloudSharingController *)self deferDismissal])
  {
    v8 = [(ICCloudSharingController *)self canDeferDismissal];

    if (v8)
    {
      [(ICCloudSharingController *)self setDeferDismissal:1];
    }
  }

  else
  {
  }

  if ([(ICCloudSharingController *)self deferDismissal])
  {
    [(ICCloudSharingController *)self setDeferDismissal:0];
  }

  else
  {
    v6 = [(ICCloudSharingController *)self dismissed];

    if (v6)
    {
      v7 = [(ICCloudSharingController *)self dismissed];
      v7[2]();
    }

    [(ICCloudSharingController *)self setDismissed:0];
  }

  v9.receiver = self;
  v9.super_class = ICCloudSharingController;
  [(ICCloudSharingController *)&v9 viewDidDisappear:v3];
}

@end