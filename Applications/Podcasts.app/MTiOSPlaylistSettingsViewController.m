@interface MTiOSPlaylistSettingsViewController
- (void)addDeleteButtonInFooter;
- (void)updateTitle:(id)a3;
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

  v5 = [(MTiOSPlaylistSettingsViewController *)self navigationController];
  v6 = [v5 navigationBar];
  [v6 setPrefersLargeTitles:0];

  v7 = [(MTiOSPlaylistSettingsViewController *)self navigationItem];
  [v7 setLargeTitleDisplayMode:2];
}

- (void)addDeleteButtonInFooter
{
  v3 = [UIButton buttonWithType:1];
  [(MTiOSPlaylistSettingsViewController *)self setDeleteButton:v3];

  v4 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  v5 = +[UIColor redColor];
  [v4 setTintColor:v5];

  v6 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Delete Station" value:&stru_1004F3018 table:0];
  [v6 setTitle:v8 forState:0];

  v9 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  v10 = [v9 titleLabel];
  v11 = +[UIFont buttonFont];
  [v10 setFont:v11];

  v12 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  [v12 addTarget:self action:"deletePlaylist:" forControlEvents:64];

  v13 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  [v13 setFrame:{10.0, 0.0, 300.0, 44.0}];

  v14 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  [v14 setAutoresizingMask:2];

  v17 = [[UIView alloc] initWithFrame:{0.0, 0.0, 320.0, 64.0}];
  v15 = [(MTiOSPlaylistSettingsViewController *)self deleteButton];
  [v17 addSubview:v15];

  v16 = [(MTiOSPlaylistSettingsViewController *)self tableView];
  [v16 setTableFooterView:v17];
}

- (void)updateTitle:(id)a3
{
  v7.receiver = self;
  v7.super_class = MTiOSPlaylistSettingsViewController;
  [(MTPlaylistSettingsViewController *)&v7 updateTitle:a3];
  v4 = +[MTCoreSpotlightController sharedInstance];
  v5 = [(MTPlaylistSettingsViewController *)self playlistUuid];
  v6 = [NSSet setWithObject:v5];
  [v4 updateStationsWithUUIDs:v6];
}

@end