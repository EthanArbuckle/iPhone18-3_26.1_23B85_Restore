@interface MCDUpNextViewController
- (MCDUpNextViewController)initWithContentManager:(id)a3 tracklist:(id)a4;
- (void)_processResponse:(id)a3 error:(id)a4;
- (void)playbackManagerShouldShowNowPlaying:(id)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MCDUpNextViewController

- (MCDUpNextViewController)initWithContentManager:(id)a3 tracklist:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MCDUpNextViewController;
  v9 = [(MCDTableViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentManager, a3);
    v11 = [[_TtC5Music25CarPlayUpNextControlsView alloc] initWithTracklist:v8];
    controlsView = v10->controlsView;
    v10->controlsView = v11;
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MCDUpNextViewController;
  [(MCDTableViewController *)&v5 viewWillAppear:a3];
  v4 = [(MCDNowPlayingContentManager *)self->_contentManager tableView];
  [v4 _scrollToTopIfPossible:0];
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
  v8 = [(MCDUpNextViewController *)self tableView];
  [(MCDNowPlayingContentManager *)self->_contentManager setTableView:v8];

  v9 = [[MCDPlaybackManager alloc] initWithDelegate:self];
  [(MCDNowPlayingContentManager *)self->_contentManager setPlaybackManager:v9];

  controlsView = self->controlsView;
  v11 = [(MCDUpNextViewController *)self tableView];
  [v11 setTableHeaderView:controlsView];

  v12 = [(MCDUpNextViewController *)self tableView];
  [v12 setSectionHeaderTopPadding:8.0];
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

- (void)playbackManagerShouldShowNowPlaying:(id)a3
{
  v4 = [(MCDUpNextViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)_processResponse:(id)a3 error:(id)a4
{
  v5 = [a3 tracklist];
  [(CarPlayUpNextControlsView *)self->controlsView setTracklist:v5];
}

@end