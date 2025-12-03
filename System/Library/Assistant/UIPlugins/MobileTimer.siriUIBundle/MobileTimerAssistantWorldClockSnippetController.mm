@interface MobileTimerAssistantWorldClockSnippetController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (MobileTimerAssistantWorldClockSnippetController)initWithClockSnippet:(id)snippet;
- (double)desiredHeightForWidth:(double)width;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)sashItem;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
@end

@implementation MobileTimerAssistantWorldClockSnippetController

- (MobileTimerAssistantWorldClockSnippetController)initWithClockSnippet:(id)snippet
{
  snippetCopy = snippet;
  v25.receiver = self;
  v25.super_class = MobileTimerAssistantWorldClockSnippetController;
  v5 = [(MobileTimerAssistantWorldClockSnippetController *)&v25 init];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [NSMutableArray alloc];
    clocks = [snippetCopy clocks];
    v8 = [v6 initWithCapacity:{objc_msgSend(clocks, "count")}];
    clocks = v5->_clocks;
    v5->_clocks = v8;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    clocks2 = [snippetCopy clocks];
    v11 = [clocks2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(clocks2);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          v16 = [SAClockObject alloc];
          dictionary = [v15 dictionary];
          v18 = [v16 initWithDictionary:dictionary];

          [(NSMutableArray *)v5->_clocks addObject:v18];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [clocks2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    [(MobileTimerAssistantWorldClockSnippetController *)v5 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v19 = v5;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = MobileTimerAssistantWorldClockSnippetController;
  [(MobileTimerAssistantWorldClockSnippetController *)&v6 loadView];
  collectionView = [(MobileTimerAssistantWorldClockSnippetController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[MobileTimerAssistantWorldClockSnippetCell reuseIdentifier];
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v5];
}

- (double)desiredHeightForWidth:(double)width
{
  v4 = [(NSMutableArray *)self->_clocks count];
  [(MobileTimerAssistantWorldClockSnippetController *)self _cellHeight];
  return v5 * v4;
}

- (id)sashItem
{
  v2 = [SiriUISashItem alloc];
  v3 = [v2 initWithApplicationBundleIdentifier:MTClockBundleID];

  return v3;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  else
  {
    return [(NSMutableArray *)self->_clocks count];
  }
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
    v9 = +[MobileTimerAssistantWorldClockSnippetCell reuseIdentifier];
    v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

    v10 = -[NSMutableArray objectAtIndex:](self->_clocks, "objectAtIndex:", [pathCopy row]);
    [v8 setClock:v10];
  }

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  path = [NSURL mtURLForClockAppSection:0, path];
  v6 = +[NAScheduler mtMainThreadScheduler];
  v7 = [path reschedule:v6];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_4434;
  v9[3] = &unk_105A0;
  v9[4] = self;
  v8 = [v7 addSuccessBlock:v9];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = [(MobileTimerAssistantWorldClockSnippetController *)self delegate:view];
  [v6 siriViewControllerExpectedWidth:self];
  v8 = v7;
  [(MobileTimerAssistantWorldClockSnippetController *)self _cellHeight];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end