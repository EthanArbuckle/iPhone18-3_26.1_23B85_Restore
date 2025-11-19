@interface MTPlaylistSelectPodcastListViewController
- (id)newCellInstanceWithReuseIdentifier:(id)a3;
- (void)configureCell:(id)a3 withObject:(id)a4 atIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)togglePodcastUuid:(id)a3;
- (void)updateAllPodcastsTo:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MTPlaylistSelectPodcastListViewController

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = MTPlaylistSelectPodcastListViewController;
  [(MTBasePodcastListViewController *)&v19 viewDidLoad];
  v3 = [(MTBasePodcastListViewController *)self tableView];
  [v3 bounds];

  +[(MTTableViewCell *)MTPodcastPlaylistCell];
  v4 = [MTPodcastPlaylistSheetHeaderView alloc];
  v5 = [(MTPlaylistSelectPodcastListViewController *)self view];
  [v5 bounds];
  Width = CGRectGetWidth(v20);
  +[(MTTableViewCell *)MTPodcastPlaylistCell];
  v8 = [(MTPodcastPlaylistSheetHeaderView *)v4 initWithFrame:0.0, 0.0, Width, v7];

  [(MTPodcastPlaylistSheetHeaderView *)v8 setOn:[(MTPlaylistSelectPodcastListViewController *)self allPodcastsSelected]];
  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000E1B1C;
  v16 = &unk_1004DBD50;
  objc_copyWeak(&v17, &location);
  [(MTPodcastPlaylistSheetHeaderView *)v8 setAction:&v13];
  v9 = [(MTBasePodcastListViewController *)self tableView:v13];
  [v9 setTableHeaderView:v8];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Add Podcasts" value:&stru_1004F3018 table:0];
  [(MTPlaylistSelectPodcastListViewController *)self setTitle:v11];

  v12 = [(MTPlaylistSelectPodcastListViewController *)self navigationItem];
  [v12 setLargeTitleDisplayMode:2];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MTPlaylistSelectPodcastListViewController;
  [(MTBasePodcastListViewController *)&v5 viewWillDisappear:a3];
  v4 = [(MTPlaylistSelectPodcastListViewController *)self saveDelegate];
  [v4 saveNewPlaylists];
}

- (void)updateAllPodcastsTo:(BOOL)a3
{
  v3 = a3;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainQueueContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E1CAC;
  v9[3] = &unk_1004DA0E0;
  v12 = v3;
  v10 = v6;
  v11 = self;
  v7 = v6;
  [v7 performBlockAndWait:v9];
  v8 = [(MTBasePodcastListViewController *)self tableView];
  [v8 reloadData];

  [(MTPlaylistSelectPodcastListViewController *)self setAllPodcastsSelected:v3];
}

- (void)togglePodcastUuid:(id)a3
{
  v4 = a3;
  podcastUuids = self->_podcastUuids;
  v10 = v4;
  if (!podcastUuids)
  {
    v6 = objc_opt_new();
    v7 = self->_podcastUuids;
    self->_podcastUuids = v6;

    v4 = v10;
    podcastUuids = self->_podcastUuids;
  }

  v8 = [(NSMutableSet *)podcastUuids containsObject:v4];
  v9 = self->_podcastUuids;
  if (v8)
  {
    [(NSMutableSet *)v9 removeObject:v10];
  }

  else
  {
    [(NSMutableSet *)v9 addObject:v10];
  }
}

- (void)configureCell:(id)a3 withObject:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v10 = a3;
  [v10 updateWithObject:v7];
  podcastUuids = self->_podcastUuids;
  v9 = [v7 uuid];

  [v10 setAdded:{-[NSMutableSet containsObject:](podcastUuids, "containsObject:", v9)}];
  [v10 setEnabled:{-[MTPlaylistSelectPodcastListViewController allPodcastsSelected](self, "allPodcastsSelected") ^ 1}];
}

- (id)newCellInstanceWithReuseIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[MTPodcastPlaylistCell alloc] initWithStyle:0 reuseIdentifier:v3];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = MTPlaylistSelectPodcastListViewController;
  v5 = a4;
  v6 = a3;
  [(MTBasePodcastListViewController *)&v8 tableView:v6 didSelectRowAtIndexPath:v5];
  v7 = [v6 cellForRowAtIndexPath:{v5, v8.receiver, v8.super_class}];
  [v7 setAdded:{objc_msgSend(v7, "isAdded") ^ 1}];
  [v6 deselectRowAtIndexPath:v5 animated:1];
}

@end