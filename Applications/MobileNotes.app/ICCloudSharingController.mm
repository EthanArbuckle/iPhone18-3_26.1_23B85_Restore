@interface ICCloudSharingController
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ICCloudSharingController

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ICCloudSharingController;
  [(ICCloudSharingController *)&v5 viewWillAppear:appear];
  share = [(ICCloudSharingController *)self share];
  [(ICCloudSharingController *)self setCanDeferDismissal:share == 0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  share = [(ICCloudSharingController *)self share];
  if (share && ![(ICCloudSharingController *)self deferDismissal])
  {
    canDeferDismissal = [(ICCloudSharingController *)self canDeferDismissal];

    if (canDeferDismissal)
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
    dismissed = [(ICCloudSharingController *)self dismissed];

    if (dismissed)
    {
      dismissed2 = [(ICCloudSharingController *)self dismissed];
      dismissed2[2]();
    }

    [(ICCloudSharingController *)self setDismissed:0];
  }

  v9.receiver = self;
  v9.super_class = ICCloudSharingController;
  [(ICCloudSharingController *)&v9 viewDidDisappear:disappearCopy];
}

@end