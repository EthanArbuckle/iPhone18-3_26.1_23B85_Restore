@interface MCDFuseTableViewController
- (BOOL)_contentItemIsPlaying:(id)playing;
- (MCDFuseTableViewController)init;
- (void)contentManager:(id)manager shouldDisplayViewController:(id)controller;
- (void)loadContentManager:(id)manager;
- (void)playbackManager:(id)manager shouldShowError:(id)error;
- (void)playbackManagerShouldShowNowPlaying:(id)playing;
- (void)setHasLoadedStoreContent:(BOOL)content;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)loadContentManager:(id)manager
{
  managerCopy = manager;
  _contentManager = [(MCDFuseTableViewController *)self _contentManager];
  contentManager = self->_contentManager;
  self->_contentManager = _contentManager;

  [(MCDFuseTableViewController *)self setCompletionHandler:managerCopy];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = MCDFuseTableViewController;
  [(MCDTableViewController *)&v9 viewDidLoad];
  if (!self->_contentManager)
  {
    _contentManager = [(MCDFuseTableViewController *)self _contentManager];
    contentManager = self->_contentManager;
    self->_contentManager = _contentManager;
  }

  v10 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v6 = [(MCDFuseTableViewController *)self registerForTraitChanges:v5 withHandler:&stru_101097C30];

  tableView = [(MCDFuseTableViewController *)self tableView];
  contentManager = [(MCDFuseTableViewController *)self contentManager];
  [contentManager setTableView:tableView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MCDFuseTableViewController;
  [(MCDTableViewController *)&v5 viewWillAppear:appear];
  contentManager = [(MCDFuseTableViewController *)self contentManager];
  [contentManager displayPlaceholderViewIfNeeded];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = MCDFuseTableViewController;
  [(MCDFuseTableViewController *)&v4 viewSafeAreaInsetsDidChange];
  contentManager = [(MCDFuseTableViewController *)self contentManager];
  [contentManager updatePlaceholderViewFrameIfNeeded];
}

- (void)setHasLoadedStoreContent:(BOOL)content
{
  if (self->_hasLoadedStoreContent != content)
  {
    self->_hasLoadedStoreContent = content;
    if (content)
    {
      completionHandler = [(MCDFuseTableViewController *)self completionHandler];

      if (completionHandler)
      {
        completionHandler2 = [(MCDFuseTableViewController *)self completionHandler];
        completionHandler2[2](completionHandler2, 0);

        [(MCDFuseTableViewController *)self setCompletionHandler:0];
      }
    }
  }
}

- (void)playbackManagerShouldShowNowPlaying:(id)playing
{
  contentManager = [(MCDFuseTableViewController *)self contentManager];
  [contentManager clearActivityIndicatorForSelectedIndexPath];

  contentManager2 = [(MCDFuseTableViewController *)self contentManager];
  tableView = [contentManager2 tableView];
  [tableView reloadData];
}

- (void)playbackManager:(id)manager shouldShowError:(id)error
{
  v5 = MCDCarDisplayBundle();
  v6 = [v5 localizedStringForKey:@"An Error Occurred" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  v13 = [UIAlertController alertControllerWithTitle:0 message:v6 preferredStyle:1];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_101107168 table:0];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];

  [v13 addAction:v9];
  [(MCDFuseTableViewController *)self presentViewController:v13 animated:1 completion:0];
  contentManager = [(MCDFuseTableViewController *)self contentManager];
  [contentManager clearActivityIndicatorForSelectedIndexPath];

  contentManager2 = [(MCDFuseTableViewController *)self contentManager];
  tableView = [contentManager2 tableView];
  [tableView reloadData];
}

- (void)contentManager:(id)manager shouldDisplayViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000DA0C8;
    v8[3] = &unk_101097C58;
    v9 = controllerCopy;
    selfCopy = self;
    [v9 loadContentManager:v8];
  }

  else
  {
    navigationController = [(MCDFuseTableViewController *)self navigationController];
    [navigationController pushViewController:controllerCopy animated:1];

    contentManager = [(MCDFuseTableViewController *)self contentManager];
    [contentManager clearActivityIndicatorForSelectedIndexPath];
  }
}

- (BOOL)_contentItemIsPlaying:(id)playing
{
  playingCopy = playing;
  v5 = +[_TtC5Music15CarPlayObserver shared];
  currentPlayingSong = [v5 currentPlayingSong];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(MCDTableViewController *)self currentAppIsPlaying])
    {
      LOBYTE(adamID2) = 0;
      identifiers = 0;
      identifiers2 = 0;
      goto LABEL_31;
    }

    identifiers = [currentPlayingSong identifiers];
    identifiers2 = [playingCopy identifiers];
  }

  else
  {
    identifiers = 0;
    identifiers2 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  if ([(MCDTableViewController *)self currentAppIsPlaying])
  {
    album = [currentPlayingSong album];
    identifiers3 = [album identifiers];

    identifiers4 = [playingCopy identifiers];

    identifiers = identifiers3;
    identifiers2 = identifiers4;
LABEL_8:
    if (identifiers && identifiers2)
    {
      universalStore = [identifiers universalStore];
      if ([universalStore purchasedAdamID])
      {
        universalStore2 = [identifiers2 universalStore];
        purchasedAdamID = [universalStore2 purchasedAdamID];

        if (!purchasedAdamID)
        {
          LODWORD(adamID2) = 0;
LABEL_20:
          universalStore3 = [identifiers universalStore];
          if ([universalStore3 subscriptionAdamID])
          {
            universalStore4 = [identifiers2 universalStore];
            purchasedAdamID2 = [universalStore4 purchasedAdamID];
            v24 = purchasedAdamID2 != 0;
            v25 = purchasedAdamID2 == 0;

            if ((v25 | adamID2))
            {
              LODWORD(adamID2) = v24 | adamID2;
LABEL_25:
              universalStore5 = [identifiers universalStore];
              if (![universalStore5 adamID])
              {
LABEL_30:

                goto LABEL_31;
              }

              universalStore6 = [identifiers2 universalStore];
              adamID = [universalStore6 adamID];
              v29 = adamID != 0;
              v30 = adamID == 0;

              if ((v30 | adamID2))
              {
                LOBYTE(adamID2) = v29 | adamID2;
                goto LABEL_31;
              }

              universalStore5 = [identifiers universalStore];
              adamID2 = [universalStore5 adamID];
              universalStore7 = [identifiers2 universalStore];
              LOBYTE(adamID2) = adamID2 == [universalStore7 adamID];
LABEL_29:

              goto LABEL_30;
            }

            universalStore3 = [identifiers universalStore];
            adamID2 = [universalStore3 subscriptionAdamID];
            universalStore8 = [identifiers2 universalStore];
            LODWORD(adamID2) = adamID2 == [universalStore8 subscriptionAdamID];
          }

          goto LABEL_25;
        }

        universalStore = [identifiers universalStore];
        adamID2 = [universalStore purchasedAdamID];
        universalStore9 = [identifiers2 universalStore];
        LODWORD(adamID2) = adamID2 == [universalStore9 purchasedAdamID];
      }

      else
      {
        LODWORD(adamID2) = 0;
      }

      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      universalStore5 = +[_TtC5Music15CarPlayObserver shared];
      universalStore7 = [universalStore5 currentPlayingPlaylist];
      identifiers5 = [universalStore7 identifiers];
      identifiers6 = [playingCopy identifiers];
      LOBYTE(adamID2) = [identifiers5 intersectsSet:identifiers6];

      goto LABEL_29;
    }
  }

  LOBYTE(adamID2) = 0;
LABEL_31:

  return adamID2 & 1;
}

@end