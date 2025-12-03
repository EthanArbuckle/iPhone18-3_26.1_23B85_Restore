@interface MTiOSPlaylistSettingsViewController
- (void)addDeleteButtonInFooter;
- (void)updateTitle:(id)title;
- (void)viewDidLoad;
@end

@implementation MTiOSPlaylistSettingsViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = MTiOSPlaylistSettingsViewController;
  [(MTPlaylistSettingsViewController *)&v8 viewDidLoad];
  [(MTiOSPlaylistSettingsViewController *)self addDeleteButtonInFooter];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Station Settings" value:&stru_1004F3018 table:0];
  [(MTiOSPlaylistSettingsViewController *)self setTitle:v4];

  navigationController = [(MTiOSPlaylistSettingsViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:0];

  navigationItem = [(MTiOSPlaylistSettingsViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];
}

- (void)addDeleteButtonInFooter
{
  v3 = [UIButton buttonWithType:1];
  [(MTiOSPlaylistSettingsViewController *)self setDeleteButton:v3];

  deleteButton = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  v5 = +[UIColor redColor];
  [deleteButton setTintColor:v5];

  deleteButton2 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Delete Station" value:&stru_1004F3018 table:0];
  [deleteButton2 setTitle:v8 forState:0];

  deleteButton3 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  titleLabel = [deleteButton3 titleLabel];
  v11 = +[UIFont buttonFont];
  [titleLabel setFont:v11];

  deleteButton4 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  [deleteButton4 addTarget:self action:"deletePlaylist:" forControlEvents:64];

  deleteButton5 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  [deleteButton5 setFrame:{10.0, 0.0, 300.0, 44.0}];

  deleteButton6 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  [deleteButton6 setAutoresizingMask:2];

  v17 = [[UIView alloc] initWithFrame:{0.0, 0.0, 320.0, 64.0}];
  deleteButton7 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  [v17 addSubview:deleteButton7];

  tableView = [(MTiOSPlaylistSettingsViewController *)self tableView];
  [tableView setTableFooterView:v17];
}

- (void)updateTitle:(id)title
{
  v7.receiver = self;
  v7.super_class = MTiOSPlaylistSettingsViewController;
  [(MTPlaylistSettingsViewController *)&v7 updateTitle:title];
  v4 = +[MTCoreSpotlightController sharedInstance];
  playlistUuid = [(MTPlaylistSettingsViewController *)self playlistUuid];
  v6 = [NSSet setWithObject:playlistUuid];
  [v4 updateStationsWithUUIDs:v6];
}

@end