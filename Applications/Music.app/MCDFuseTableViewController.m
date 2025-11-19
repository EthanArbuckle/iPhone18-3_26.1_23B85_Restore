@interface MCDFuseTableViewController
- (BOOL)_contentItemIsPlaying:(id)a3;
- (MCDFuseTableViewController)init;
- (void)contentManager:(id)a3 shouldDisplayViewController:(id)a4;
- (void)loadContentManager:(id)a3;
- (void)playbackManager:(id)a3 shouldShowError:(id)a4;
- (void)playbackManagerShouldShowNowPlaying:(id)a3;
- (void)setHasLoadedStoreContent:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MCDFuseTableViewController

- (MCDFuseTableViewController)init
{
  v6.receiver = self;
  v6.super_class = MCDFuseTableViewController;
  v2 = [(MCDTableViewController *)&v6 init];
  if (v2)
  {
    v3 = [(MCDPlaybackManager *)[MCDStorePlaybackManager alloc] initWithDelegate:v2];
    playbackManager = v2->_playbackManager;
    v2->_playbackManager = v3;
  }

  return v2;
}

- (void)loadContentManager:(id)a3
{
  v6 = a3;
  v4 = [(MCDFuseTableViewController *)self _contentManager];
  contentManager = self->_contentManager;
  self->_contentManager = v4;

  [(MCDFuseTableViewController *)self setCompletionHandler:v6];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = MCDFuseTableViewController;
  [(MCDTableViewController *)&v9 viewDidLoad];
  if (!self->_contentManager)
  {
    v3 = [(MCDFuseTableViewController *)self _contentManager];
    contentManager = self->_contentManager;
    self->_contentManager = v3;
  }

  v10 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v6 = [(MCDFuseTableViewController *)self registerForTraitChanges:v5 withHandler:&stru_101097C30];

  v7 = [(MCDFuseTableViewController *)self tableView];
  v8 = [(MCDFuseTableViewController *)self contentManager];
  [v8 setTableView:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MCDFuseTableViewController;
  [(MCDTableViewController *)&v5 viewWillAppear:a3];
  v4 = [(MCDFuseTableViewController *)self contentManager];
  [v4 displayPlaceholderViewIfNeeded];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = MCDFuseTableViewController;
  [(MCDFuseTableViewController *)&v4 viewSafeAreaInsetsDidChange];
  v3 = [(MCDFuseTableViewController *)self contentManager];
  [v3 updatePlaceholderViewFrameIfNeeded];
}

- (void)setHasLoadedStoreContent:(BOOL)a3
{
  if (self->_hasLoadedStoreContent != a3)
  {
    self->_hasLoadedStoreContent = a3;
    if (a3)
    {
      v4 = [(MCDFuseTableViewController *)self completionHandler];

      if (v4)
      {
        v5 = [(MCDFuseTableViewController *)self completionHandler];
        v5[2](v5, 0);

        [(MCDFuseTableViewController *)self setCompletionHandler:0];
      }
    }
  }
}

- (void)playbackManagerShouldShowNowPlaying:(id)a3
{
  v4 = [(MCDFuseTableViewController *)self contentManager];
  [v4 clearActivityIndicatorForSelectedIndexPath];

  v6 = [(MCDFuseTableViewController *)self contentManager];
  v5 = [v6 tableView];
  [v5 reloadData];
}

- (void)playbackManager:(id)a3 shouldShowError:(id)a4
{
  v5 = MCDCarDisplayBundle();
  v6 = [v5 localizedStringForKey:@"An Error Occurred" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  v13 = [UIAlertController alertControllerWithTitle:0 message:v6 preferredStyle:1];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_101107168 table:0];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];

  [v13 addAction:v9];
  [(MCDFuseTableViewController *)self presentViewController:v13 animated:1 completion:0];
  v10 = [(MCDFuseTableViewController *)self contentManager];
  [v10 clearActivityIndicatorForSelectedIndexPath];

  v11 = [(MCDFuseTableViewController *)self contentManager];
  v12 = [v11 tableView];
  [v12 reloadData];
}

- (void)contentManager:(id)a3 shouldDisplayViewController:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000DA0C8;
    v8[3] = &unk_101097C58;
    v9 = v5;
    v10 = self;
    [v9 loadContentManager:v8];
  }

  else
  {
    v6 = [(MCDFuseTableViewController *)self navigationController];
    [v6 pushViewController:v5 animated:1];

    v7 = [(MCDFuseTableViewController *)self contentManager];
    [v7 clearActivityIndicatorForSelectedIndexPath];
  }
}

- (BOOL)_contentItemIsPlaying:(id)a3
{
  v4 = a3;
  v5 = +[_TtC5Music15CarPlayObserver shared];
  v6 = [v5 currentPlayingSong];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(MCDTableViewController *)self currentAppIsPlaying])
    {
      LOBYTE(v16) = 0;
      v7 = 0;
      v8 = 0;
      goto LABEL_31;
    }

    v7 = [v6 identifiers];
    v8 = [v4 identifiers];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  if ([(MCDTableViewController *)self currentAppIsPlaying])
  {
    v9 = [v6 album];
    v10 = [v9 identifiers];

    v11 = [v4 identifiers];

    v7 = v10;
    v8 = v11;
LABEL_8:
    if (v7 && v8)
    {
      v12 = [v7 universalStore];
      if ([v12 purchasedAdamID])
      {
        v13 = [v8 universalStore];
        v14 = [v13 purchasedAdamID];

        if (!v14)
        {
          LODWORD(v16) = 0;
LABEL_20:
          v21 = [v7 universalStore];
          if ([v21 subscriptionAdamID])
          {
            v22 = [v8 universalStore];
            v23 = [v22 purchasedAdamID];
            v24 = v23 != 0;
            v25 = v23 == 0;

            if ((v25 | v16))
            {
              LODWORD(v16) = v24 | v16;
LABEL_25:
              v17 = [v7 universalStore];
              if (![v17 adamID])
              {
LABEL_30:

                goto LABEL_31;
              }

              v27 = [v8 universalStore];
              v28 = [v27 adamID];
              v29 = v28 != 0;
              v30 = v28 == 0;

              if ((v30 | v16))
              {
                LOBYTE(v16) = v29 | v16;
                goto LABEL_31;
              }

              v17 = [v7 universalStore];
              v16 = [v17 adamID];
              v18 = [v8 universalStore];
              LOBYTE(v16) = v16 == [v18 adamID];
LABEL_29:

              goto LABEL_30;
            }

            v21 = [v7 universalStore];
            v16 = [v21 subscriptionAdamID];
            v26 = [v8 universalStore];
            LODWORD(v16) = v16 == [v26 subscriptionAdamID];
          }

          goto LABEL_25;
        }

        v12 = [v7 universalStore];
        v16 = [v12 purchasedAdamID];
        v15 = [v8 universalStore];
        LODWORD(v16) = v16 == [v15 purchasedAdamID];
      }

      else
      {
        LODWORD(v16) = 0;
      }

      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = +[_TtC5Music15CarPlayObserver shared];
      v18 = [v17 currentPlayingPlaylist];
      v19 = [v18 identifiers];
      v20 = [v4 identifiers];
      LOBYTE(v16) = [v19 intersectsSet:v20];

      goto LABEL_29;
    }
  }

  LOBYTE(v16) = 0;
LABEL_31:

  return v16 & 1;
}

@end