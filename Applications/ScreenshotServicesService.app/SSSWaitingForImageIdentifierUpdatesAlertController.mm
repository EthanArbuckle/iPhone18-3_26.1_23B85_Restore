@interface SSSWaitingForImageIdentifierUpdatesAlertController
+ (id)newWaitingForImageIdentifierUpdatesAlertController;
- (SSSWaitingForImageIdentifierUpdatesAlertControllerDelegate)delegate;
- (void)setProgress:(double)progress;
@end

@implementation SSSWaitingForImageIdentifierUpdatesAlertController

+ (id)newWaitingForImageIdentifierUpdatesAlertController
{
  v2 = [self alertControllerWithTitle:0 message:0 preferredStyle:1];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"PREPARING_TO_SHARE_ALERT_TITLE" value:@"Preparing..." table:0];
  [v2 setTitle:v4];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"PREPARING_TO_SHARE_ALERT_CANCEL_BUTTON" value:@"Cancel" table:0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100030CF0;
  v12[3] = &unk_1000BACC8;
  v7 = v2;
  v13 = v7;
  v8 = [UIAlertAction actionWithTitle:v6 style:1 handler:v12];
  [v7 addAction:v8];
  v9 = objc_alloc_init(SSSWaitingForImageIdentifierUpdatesAlertContentViewController);
  [v7 setContentViewController:v9];
  v10 = v7;

  return v10;
}

- (void)setProgress:(double)progress
{
  _waitingContentViewController = [(SSSWaitingForImageIdentifierUpdatesAlertController *)self _waitingContentViewController];
  [_waitingContentViewController setProgress:progress];
}

- (SSSWaitingForImageIdentifierUpdatesAlertControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end