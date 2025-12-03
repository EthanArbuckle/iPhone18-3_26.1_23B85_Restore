@interface MobileTimerAssistantTimerSnippetController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (MobileTimerAssistantTimerSnippetController)initWithTimerSnippet:(id)snippet;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)sashItem;
- (id)snippetCell;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)handleMarkStaleNotification:(id)notification;
- (void)handleTimerStateChanged;
- (void)loadView;
@end

@implementation MobileTimerAssistantTimerSnippetController

- (MobileTimerAssistantTimerSnippetController)initWithTimerSnippet:(id)snippet
{
  snippetCopy = snippet;
  v19.receiver = self;
  v19.super_class = MobileTimerAssistantTimerSnippetController;
  v5 = [(MobileTimerAssistantTimerSnippetController *)&v19 init];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [SATimerObject alloc];
    timers = [snippetCopy timers];
    v8 = [timers objectAtIndex:0];
    dictionary = [v8 dictionary];
    v10 = [v6 initWithDictionary:dictionary];
    timer = v5->_timer;
    v5->_timer = v10;

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 postNotificationName:@"MTTimerMarkStaleNotification" object:v5];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v5 selector:"handleMarkStaleNotification:" name:@"MTTimerMarkStaleNotification" object:0];

    v14 = objc_alloc_init(MTTimerManager);
    timerManager = v5->_timerManager;
    v5->_timerManager = v14;

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v5 selector:"handleTimerStateChanged" name:MTTimerManagerTimersChanged object:v5->_timerManager];

    [(MobileTimerAssistantTimerSnippetController *)v5 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v17 = v5;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  snippetCell = [(MobileTimerAssistantTimerSnippetController *)self snippetCell];
  [snippetCell markStale];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = MobileTimerAssistantTimerSnippetController;
  [(MobileTimerAssistantTimerSnippetController *)&v5 dealloc];
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = MobileTimerAssistantTimerSnippetController;
  [(MobileTimerAssistantTimerSnippetController *)&v6 loadView];
  collectionView = [(MobileTimerAssistantTimerSnippetController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[MobileTimerAssistantTimerSnippetCell reuseIdentifier];
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v5];
}

- (id)snippetCell
{
  collectionView = [(MobileTimerAssistantTimerSnippetController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  v4 = [visibleCells count];

  if (v4)
  {
    visibleCells2 = [collectionView visibleCells];
    v6 = [visibleCells2 objectAtIndex:0];

    objc_opt_class();
    v4 = 0;
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }
  }

  return v4;
}

- (void)handleMarkStaleNotification:(id)notification
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  snippetCell = [(MobileTimerAssistantTimerSnippetController *)self snippetCell];
  [snippetCell markStale];
}

- (void)handleTimerStateChanged
{
  snippetCell = [(MobileTimerAssistantTimerSnippetController *)self snippetCell];
  if ([snippetCell isDeviceTimer] && (objc_msgSend(snippetCell, "isStale") & 1) == 0)
  {
    currentTimer = [(MTTimerManager *)self->_timerManager currentTimer];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_3A14;
    v6[3] = &unk_105F8;
    v6[4] = self;
    v7 = snippetCell;
    v5 = [currentTimer addCompletionBlock:v6];
  }
}

- (id)sashItem
{
  v2 = [SiriUISashItem alloc];
  v3 = [v2 initWithApplicationBundleIdentifier:MTClockBundleID];

  return v3;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v8 = 0;
  }

  else
  {
    v9 = +[MobileTimerAssistantTimerSnippetCell reuseIdentifier];
    v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

    [v8 setTimer:self->_timer];
  }

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = [(MobileTimerAssistantTimerSnippetController *)self timerManager:view];
  v6 = [NSURL mtURLForClockAppSection:4 timerManager:v5];
  v7 = +[NAScheduler mtMainThreadScheduler];
  v8 = [v6 reschedule:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3D44;
  v10[3] = &unk_105A0;
  v10[4] = self;
  v9 = [v8 addSuccessBlock:v10];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = [(MobileTimerAssistantTimerSnippetController *)self delegate:view];
  [v6 siriViewControllerExpectedWidth:self];
  v8 = v7;
  [(MobileTimerAssistantTimerSnippetController *)self _cellHeight];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end