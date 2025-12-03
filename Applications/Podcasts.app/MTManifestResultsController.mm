@interface MTManifestResultsController
- (MTManifestResultsController)initWithPlayerController:(id)controller;
- (unint64_t)startingIndexForDisplay;
- (void)_manifestDidChange;
- (void)dealloc;
- (void)reloadData;
- (void)setManifest:(id)manifest;
@end

@implementation MTManifestResultsController

- (MTManifestResultsController)initWithPlayerController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = MTManifestResultsController;
  v5 = [(MTListResultsController *)&v10 init];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = IMAVPlayerNotification_MediaItemDidChange;
    player = [controllerCopy player];
    [v6 addObserver:v5 selector:"_manifestDidChange" name:v7 object:player];
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

- (void)setManifest:(id)manifest
{
  objc_storeStrong(&self->_manifest, manifest);
  manifestCopy = manifest;
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_manifestDidChange" name:IMPlayerManifestDidChange object:manifestCopy];

  [(MTManifestResultsController *)self reloadData];
}

- (unint64_t)startingIndexForDisplay
{
  manifest = [(MTManifestResultsController *)self manifest];
  currentIndex = [manifest currentIndex];

  if (currentIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return currentIndex;
  }
}

- (void)reloadData
{
  v3 = [NSMutableArray alloc];
  manifest = [(MTManifestResultsController *)self manifest];
  v10 = [v3 initWithCapacity:{objc_msgSend(manifest, "count")}];

  for (i = [(MTManifestResultsController *)self startingIndexForDisplay]; ; ++i)
  {
    manifest2 = [(MTManifestResultsController *)self manifest];
    v7 = [manifest2 count];

    if (i >= v7)
    {
      break;
    }

    manifest3 = [(MTManifestResultsController *)self manifest];
    v9 = [manifest3 objectAtIndex:i];

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