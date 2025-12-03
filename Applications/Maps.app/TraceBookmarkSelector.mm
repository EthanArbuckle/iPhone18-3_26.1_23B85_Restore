@interface TraceBookmarkSelector
- (MNTraceBookmarkSelectorDelegate)delegate;
- (TraceBookmarkSelector)initWithStyle:(int64_t)style;
- (UITableViewCell)_noBookmarksCell;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_done;
- (void)dealloc;
- (void)reloadBookmarks;
- (void)setTracePlayer:(id)player;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation TraceBookmarkSelector

- (MNTraceBookmarkSelectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v10 = -[NSArray objectAtIndexedSubscript:](self->_bookmarks, "objectAtIndexedSubscript:", [path row]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
    v6 = +[MNNavigationService sharedService];
    traceBookmarks = [v6 traceBookmarks];
    bookmarkIndex = [v5 bookmarkIndex];

    v9 = [traceBookmarks objectAtIndexedSubscript:bookmarkIndex];

    [v9 timestamp];
    [v6 setTracePosition:?];
  }

  [(TraceBookmarkSelector *)self _done];
}

- (void)_done
{
  presentingViewController = [(TraceBookmarkSelector *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (UITableViewCell)_noBookmarksCell
{
  noBookmarksCell = self->_noBookmarksCell;
  if (!noBookmarksCell)
  {
    v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_noBookmarksCell;
    self->_noBookmarksCell = v4;

    noBookmarksCell = self->_noBookmarksCell;
  }

  return noBookmarksCell;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSArray objectAtIndexedSubscript:](self->_bookmarks, "objectAtIndexedSubscript:", [pathCopy row]);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = 100.0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TraceBookmarkSelector;
    [(TraceBookmarkSelector *)&v12 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    v9 = v10;
  }

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = -[NSArray objectAtIndexedSubscript:](self->_bookmarks, "objectAtIndexedSubscript:", [path row]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [viewCopy dequeueReusableCellWithIdentifier:@"TraceGuideMeBookmarkCell"];
      if (v8)
      {
LABEL_12:
        [v7 configureCell:v8];
        goto LABEL_17;
      }

      _noBookmarksCell = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"TraceGuideMeBookmarkCell"];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
        goto LABEL_17;
      }

      _noBookmarksCell = [(TraceBookmarkSelector *)self _noBookmarksCell];
    }

    v8 = _noBookmarksCell;
    goto LABEL_12;
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"TraceNavBookmarkCell"];
  if (!v8)
  {
    v8 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"TraceNavBookmarkCell"];
  }

  bookmarkIndex = [v7 bookmarkIndex];
  [v7 configureCell:v8];
  v10 = [(NSCache *)self->_bookmarkImageCache objectForKey:v7];

  if (v10)
  {
    v11 = [(NSCache *)self->_bookmarkImageCache objectForKey:v7];
    imageView = [v8 imageView];
    [imageView setImage:v11];
  }

  else
  {
    v14 = +[MNNavigationService sharedService];
    traceBookmarks = [v14 traceBookmarks];
    v16 = [traceBookmarks objectAtIndexedSubscript:bookmarkIndex];

    imageData = [v16 imageData];
    if ([imageData length])
    {
      v18 = [UIImage imageWithData:imageData];
      [(NSCache *)self->_bookmarkImageCache setObject:v18 forKey:v7];
      imageView2 = [v8 imageView];
      [imageView2 setImage:v18];
    }
  }

LABEL_17:

  return v8;
}

- (void)setTracePlayer:(id)player
{
  playerCopy = player;
  if (self->_tracePlayer != playerCopy)
  {
    v6 = playerCopy;
    objc_storeStrong(&self->_tracePlayer, player);
    [(NSCache *)self->_bookmarkImageCache removeAllObjects];
    [(TraceBookmarkSelector *)self reloadBookmarks];
    playerCopy = v6;
  }
}

- (void)reloadBookmarks
{
  v2 = +[NSMutableArray array];
  +[MNNavigationService sharedService];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = v21 = 0u;
  traceBookmarks = [v16 traceBookmarks];
  v4 = [traceBookmarks countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(traceBookmarks);
        }

        v10 = *(*(&v18 + 1) + 8 * v8);
        v11 = [TraceNavBookmarkRow alloc];
        v6 = v9 + 1;
        [v10 timestamp];
        v12 = [(TraceNavBookmarkRow *)v11 initWithBookmarkIndex:v9 time:?];
        [(NSArray *)v2 addObject:v12];

        v8 = v8 + 1;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [traceBookmarks countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  if (![(NSArray *)v2 count])
  {
    v13 = [(TraceBookmarkRow *)[TraceNoBookmarksRow alloc] initWithName:@"No bookmarks." detail:&stru_1016631F0];
    [(NSArray *)v2 addObject:v13];
  }

  bookmarks = self->_bookmarks;
  self->_bookmarks = v2;

  tableView = [(TraceBookmarkSelector *)self tableView];
  [tableView reloadData];
}

- (void)dealloc
{
  [(TraceBookmarkSelector *)self setTracePlayer:0];
  bookmarkImageCache = self->_bookmarkImageCache;
  self->_bookmarkImageCache = 0;

  v4.receiver = self;
  v4.super_class = TraceBookmarkSelector;
  [(TraceBookmarkSelector *)&v4 dealloc];
}

- (TraceBookmarkSelector)initWithStyle:(int64_t)style
{
  v11.receiver = self;
  v11.super_class = TraceBookmarkSelector;
  v3 = [(TraceBookmarkSelector *)&v11 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    navigationItem = [(TraceBookmarkSelector *)v3 navigationItem];
    [navigationItem setTitle:@"Bookmarks"];

    v6 = objc_alloc_init(NSCache);
    bookmarkImageCache = v4->_bookmarkImageCache;
    v4->_bookmarkImageCache = v6;

    [(NSCache *)v4->_bookmarkImageCache setCountLimit:10];
    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v4 action:"_done"];
    navigationItem2 = [(TraceBookmarkSelector *)v4 navigationItem];
    [navigationItem2 setRightBarButtonItem:v8];
  }

  return v4;
}

@end