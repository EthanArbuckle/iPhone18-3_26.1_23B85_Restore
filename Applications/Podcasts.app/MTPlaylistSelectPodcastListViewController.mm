@interface MTPlaylistSelectPodcastListViewController
- (id)newCellInstanceWithReuseIdentifier:(id)identifier;
- (void)configureCell:(id)cell withObject:(id)object atIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)togglePodcastUuid:(id)uuid;
- (void)updateAllPodcastsTo:(BOOL)to;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MTPlaylistSelectPodcastListViewController

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = MTPlaylistSelectPodcastListViewController;
  [(MTBasePodcastListViewController *)&v19 viewDidLoad];
  tableView = [(MTBasePodcastListViewController *)self tableView];
  [tableView bounds];

  +[(MTTableViewCell *)MTPodcastPlaylistCell];
  v4 = [MTPodcastPlaylistSheetHeaderView alloc];
  view = [(MTPlaylistSelectPodcastListViewController *)self view];
  [view bounds];
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

  navigationItem = [(MTPlaylistSelectPodcastListViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MTPlaylistSelectPodcastListViewController;
  [(MTBasePodcastListViewController *)&v5 viewWillDisappear:disappear];
  saveDelegate = [(MTPlaylistSelectPodcastListViewController *)self saveDelegate];
  [saveDelegate saveNewPlaylists];
}

- (void)updateAllPodcastsTo:(BOOL)to
{
  toCopy = to;
  v5 = +[MTDB sharedInstance];
  mainQueueContext = [v5 mainQueueContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E1CAC;
  v9[3] = &unk_1004DA0E0;
  v12 = toCopy;
  v10 = mainQueueContext;
  selfCopy = self;
  v7 = mainQueueContext;
  [v7 performBlockAndWait:v9];
  tableView = [(MTBasePodcastListViewController *)self tableView];
  [tableView reloadData];

  [(MTPlaylistSelectPodcastListViewController *)self setAllPodcastsSelected:toCopy];
}

- (void)togglePodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  podcastUuids = self->_podcastUuids;
  v10 = uuidCopy;
  if (!podcastUuids)
  {
    v6 = objc_opt_new();
    v7 = self->_podcastUuids;
    self->_podcastUuids = v6;

    uuidCopy = v10;
    podcastUuids = self->_podcastUuids;
  }

  v8 = [(NSMutableSet *)podcastUuids containsObject:uuidCopy];
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

- (void)configureCell:(id)cell withObject:(id)object atIndexPath:(id)path
{
  objectCopy = object;
  cellCopy = cell;
  [cellCopy updateWithObject:objectCopy];
  podcastUuids = self->_podcastUuids;
  uuid = [objectCopy uuid];

  [cellCopy setAdded:{-[NSMutableSet containsObject:](podcastUuids, "containsObject:", uuid)}];
  [cellCopy setEnabled:{-[MTPlaylistSelectPodcastListViewController allPodcastsSelected](self, "allPodcastsSelected") ^ 1}];
}

- (id)newCellInstanceWithReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[MTPodcastPlaylistCell alloc] initWithStyle:0 reuseIdentifier:identifierCopy];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = MTPlaylistSelectPodcastListViewController;
  pathCopy = path;
  viewCopy = view;
  [(MTBasePodcastListViewController *)&v8 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v7 = [viewCopy cellForRowAtIndexPath:{pathCopy, v8.receiver, v8.super_class}];
  [v7 setAdded:{objc_msgSend(v7, "isAdded") ^ 1}];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

@end