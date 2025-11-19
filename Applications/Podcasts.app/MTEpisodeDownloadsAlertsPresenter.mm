@interface MTEpisodeDownloadsAlertsPresenter
- (void)showEpisodeFeedDeleted:(id)a3 onDismiss:(id)a4;
- (void)showEpisodeRestricted:(id)a3;
- (void)showGenericAlert:(id)a3;
- (void)showNoInternet:(id)a3;
- (void)showOrUpdateNetworkErrorAlert:(id)a3 body:(id)a4 onRetry:(id)a5 onDismiss:(id)a6;
- (void)showSubscriptionRequired:(id)a3;
@end

@implementation MTEpisodeDownloadsAlertsPresenter

- (void)showGenericAlert:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Download Failed" value:&stru_1004F3018 table:0];
  v6 = [NSString localizedStringWithFormat:v5];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Download error." value:&stru_1004F3018 table:0];
  v9 = [NSString localizedStringWithFormat:v8];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_1004F3018 table:0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B76FC;
  v15[3] = &unk_1004DB318;
  v16 = v3;
  v12 = v3;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:v15];

  v14 = [MTAlertController alertControllerWithTitle:v6 message:v9 preferredStyle:1];
  [v14 addAction:v13];
  [v14 presentAnimated:1 completion:0];
}

- (void)showOrUpdateNetworkErrorAlert:(id)a3 body:(id)a4 onRetry:(id)a5 onDismiss:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"DOWNLOAD_FAILED_DONE" value:&stru_1004F3018 table:0];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000B7948;
  v27[3] = &unk_1004DB318;
  v28 = v10;
  v15 = v10;
  v16 = [UIAlertAction actionWithTitle:v14 style:1 handler:v27];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"DOWNLOAD_FAILED_RETRY" value:&stru_1004F3018 table:0];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1000B7958;
  v25 = &unk_1004DB318;
  v26 = v9;
  v19 = v9;
  v20 = [UIAlertAction actionWithTitle:v18 style:0 handler:&v22];

  v21 = [MTAlertController alertControllerWithTitle:v12 message:v11 preferredStyle:1, v22, v23, v24, v25];

  [v21 addAction:v16];
  [v21 addAction:v20];
  [v21 presentAnimated:1 completion:0];
}

- (void)showEpisodeFeedDeleted:(id)a3 onDismiss:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MTEpisodeUnavailableUtil sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B7A38;
  v9[3] = &unk_1004D9870;
  v10 = v5;
  v8 = v5;
  [v7 showDialogForReason:3 podcastTitle:v6 completion:v9];
}

- (void)showSubscriptionRequired:(id)a3
{
  v3 = a3;
  v4 = +[MTEpisodeUnavailableUtil sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B7AFC;
  v6[3] = &unk_1004D9870;
  v7 = v3;
  v5 = v3;
  [v4 showDialogForReason:7 podcastTitle:0 completion:v6];
}

- (void)showEpisodeRestricted:(id)a3
{
  v3 = a3;
  v4 = +[MTEpisodeUnavailableUtil sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B7BC0;
  v6[3] = &unk_1004D9870;
  v7 = v3;
  v5 = v3;
  [v4 showDialogForReason:1 podcastTitle:0 completion:v6];
}

- (void)showNoInternet:(id)a3
{
  v3 = a3;
  v4 = +[MTReachability sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B7C7C;
  v6[3] = &unk_1004D84D0;
  v7 = v3;
  v5 = v3;
  [v4 showInternetUnreachableDialogWithAcknowledmentBlock:v6];
}

@end