@interface MTManifestResultsController
- (MTManifestResultsController)initWithPlayerController:(id)a3;
- (unint64_t)startingIndexForDisplay;
- (void)_manifestDidChange;
- (void)dealloc;
- (void)reloadData;
- (void)setManifest:(id)a3;
@end

@implementation MTManifestResultsController

- (MTManifestResultsController)initWithPlayerController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MTManifestResultsController;
  v5 = [(MTListResultsController *)&v10 init];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = IMAVPlayerNotification_MediaItemDidChange;
    v8 = [v4 player];
    [v6 addObserver:v5 selector:"_manifestDidChange" name:v7 object:v8];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTManifestResultsController;
  [(MTManifestResultsController *)&v4 dealloc];
}

- (void)setManifest:(id)a3
{
  objc_storeStrong(&self->_manifest, a3);
  v5 = a3;
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_manifestDidChange" name:IMPlayerManifestDidChange object:v5];

  [(MTManifestResultsController *)self reloadData];
}

- (unint64_t)startingIndexForDisplay
{
  v2 = [(MTManifestResultsController *)self manifest];
  v3 = [v2 currentIndex];

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (void)reloadData
{
  v3 = [NSMutableArray alloc];
  v4 = [(MTManifestResultsController *)self manifest];
  v10 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  for (i = [(MTManifestResultsController *)self startingIndexForDisplay]; ; ++i)
  {
    v6 = [(MTManifestResultsController *)self manifest];
    v7 = [v6 count];

    if (i >= v7)
    {
      break;
    }

    v8 = [(MTManifestResultsController *)self manifest];
    v9 = [v8 objectAtIndex:i];

    if (v9)
    {
      [v10 addObject:v9];
    }
  }

  [(MTListResultsController *)self setObjects:v10];
}

- (void)_manifestDidChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D1B70;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end