@interface MCDUpNextViewController
- (MCDUpNextViewController)initWithContentManager:(id)manager tracklist:(id)tracklist;
- (void)_processResponse:(id)response error:(id)error;
- (void)playbackManagerShouldShowNowPlaying:(id)playing;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MCDUpNextViewController

- (MCDUpNextViewController)initWithContentManager:(id)manager tracklist:(id)tracklist
{
  managerCopy = manager;
  tracklistCopy = tracklist;
  v14.receiver = self;
  v14.super_class = MCDUpNextViewController;
  v9 = [(MCDTableViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentManager, manager);
    v11 = [[_TtC5Music25CarPlayUpNextControlsView alloc] initWithTracklist:tracklistCopy];
    controlsView = v10->controlsView;
    v10->controlsView = v11;
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MCDUpNextViewController;
  [(MCDTableViewController *)&v5 viewWillAppear:appear];
  tableView = [(MCDNowPlayingContentManager *)self->_contentManager tableView];
  [tableView _scrollToTopIfPossible:0];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = MCDUpNextViewController;
  [(MCDTableViewController *)&v13 viewDidLoad];
  v3 = _os_feature_enabled_impl();
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"Queue";
  }

  else
  {
    v6 = @"Playing Next";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_101107168 table:0];
  [(MCDUpNextViewController *)self setTitle:v7];

  [(MCDNowPlayingContentManager *)self->_contentManager setTableCellConfigurationBlock:&stru_101098310];
  tableView = [(MCDUpNextViewController *)self tableView];
  [(MCDNowPlayingContentManager *)self->_contentManager setTableView:tableView];

  v9 = [[MCDPlaybackManager alloc] initWithDelegate:self];
  [(MCDNowPlayingContentManager *)self->_contentManager setPlaybackManager:v9];

  controlsView = self->controlsView;
  tableView2 = [(MCDUpNextViewController *)self tableView];
  [tableView2 setTableHeaderView:controlsView];

  tableView3 = [(MCDUpNextViewController *)self tableView];
  [tableView3 setSectionHeaderTopPadding:8.0];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = MCDUpNextViewController;
  [(MCDUpNextViewController *)&v3 viewSafeAreaInsetsDidChange];
  if (objc_opt_respondsToSelector())
  {
    [(MCDNowPlayingContentManager *)self->_contentManager updateNoContentViewFrameIfNeeded];
  }
}

- (void)playbackManagerShouldShowNowPlaying:(id)playing
{
  navigationController = [(MCDUpNextViewController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)_processResponse:(id)response error:(id)error
{
  tracklist = [response tracklist];
  [(CarPlayUpNextControlsView *)self->controlsView setTracklist:tracklist];
}

@end