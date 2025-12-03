@interface THGlossaryDefinitionsViewController
- (CGRect)p_contentFrameForEntryIndex:(int64_t)index;
- (CGRect)p_definitionViewFrame;
- (CGRect)p_scrollViewFrameForPaging:(BOOL)paging;
- (THGlossaryDefinitionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)displayedEntry;
- (id)p_createGlossaryEntryViewController;
- (id)p_dequeueRecycledEntryController;
- (int64_t)p_currentEntryIndex;
- (int64_t)p_entryIndexForContentFrame:(CGRect)frame;
- (void)_stylizeForTheme;
- (void)awakeFromNib;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)displayIndex:(id)index withEntry:(id)entry animated:(BOOL)animated;
- (void)layoutScrollView;
- (void)loadView;
- (void)p_loadEntryAtIndex:(int64_t)index scrollLocation:(int)location;
- (void)p_recycleEntry:(id)entry;
- (void)p_releaseControllerForIndex:(int64_t)index;
- (void)p_showEntry:(id)entry animated:(BOOL)animated;
- (void)p_updateForContentFrame:(CGRect)frame;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setTheme:(id)theme;
- (void)unload;
- (void)viewDidLayoutSubviews;
@end

@implementation THGlossaryDefinitionsViewController

- (THGlossaryDefinitionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = THGlossaryDefinitionsViewController;
  v4 = [(THGlossaryDefinitionsViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(THGlossaryDefinitionsViewController *)v4 p_initCommon];
  }

  return v5;
}

- (void)dealloc
{
  [(THGlossaryDefinitionsViewController *)self setDidLayoutBlock:0];
  [(NSMutableSet *)self->mRecycledEntries makeObjectsPerformSelector:"teardown"];
  [(NSMutableSet *)self->mRecycledEntries removeAllObjects];

  self->mScrollView = 0;
  self->mEntryViewControllers = 0;

  self->mEntryIndex = 0;
  self->mRecycledEntries = 0;

  self->_theme = 0;
  v3.receiver = self;
  v3.super_class = THGlossaryDefinitionsViewController;
  [(THGlossaryDefinitionsViewController *)&v3 dealloc];
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = THGlossaryDefinitionsViewController;
  [(THGlossaryDefinitionsViewController *)&v3 awakeFromNib];
  [(THGlossaryDefinitionsViewController *)self p_initCommon];
}

- (CGRect)p_definitionViewFrame
{
  mDelegate = self->mDelegate;
  if (mDelegate)
  {
    [-[THGlossaryDefinitionsViewControllerDelegate glossaryEntryLayoutStyleProvider](mDelegate "glossaryEntryLayoutStyleProvider")];
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)p_contentFrameForEntryIndex:(int64_t)index
{
  [(THGlossaryDefinitionsViewController *)self p_definitionViewFrame];
  v7 = (v6 + 1.0) * index;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v7;
  result.origin.x = v4;
  return result;
}

- (int64_t)p_entryIndexForContentFrame:(CGRect)frame
{
  y = frame.origin.y;
  [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:1, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  return (y / v4 + 0.5);
}

- (CGRect)p_scrollViewFrameForPaging:(BOOL)paging
{
  pagingCopy = paging;
  [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:0];
  v7 = v6;
  v9 = v8;
  if (pagingCopy)
  {
    [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:1];
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  [-[THGlossaryDefinitionsViewController view](self "view")];
  v13 = v12;
  v14 = v7;
  v15 = v9;
  v16 = v11;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)layoutScrollView
{
  p_currentEntryIndex = [(THGlossaryDefinitionsViewController *)self p_currentEntryIndex];
  keyEnumerator = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers keyEnumerator];
  if (keyEnumerator)
  {
    v5 = keyEnumerator;
    nextKey = [keyEnumerator nextKey];
    if (nextKey != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = nextKey; i != 0x7FFFFFFFFFFFFFFFLL; i = [v5 nextKey])
      {
        [(THGlossaryDefinitionsViewController *)self p_releaseControllerForIndex:i];
      }
    }
  }

  [(THGlossaryDefinitionsViewController *)self p_scrollViewFrameForPaging:1];
  [(UIScrollView *)self->mScrollView setFrame:?];
  [(UIScrollView *)self->mScrollView frame];
  v9 = v8;
  [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:[(THGlossaryIndex *)self->mEntryIndex numberOfEntries]];
  [(UIScrollView *)self->mScrollView setContentSize:v9];
  [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:p_currentEntryIndex];
  [(THGlossaryDefinitionsViewController *)self p_updateForContentFrame:?];
  v10 = [(THGlossaryIndex *)self->mEntryIndex entryAtIndex:p_currentEntryIndex];

  [(THGlossaryDefinitionsViewController *)self p_showEntry:v10 animated:0];
}

- (void)loadView
{
  v3 = +[UIColor bc_booksBackground];
  [(THGlossaryDefinitionsViewController *)self setView:objc_alloc_init(UIView)];
  [-[THGlossaryDefinitionsViewController view](self "view")];
  [-[THGlossaryDefinitionsViewController view](self "view")];
  v4 = [UIScrollView alloc];
  [(THGlossaryDefinitionsViewController *)self p_scrollViewFrameForPaging:1];
  v5 = [v4 initWithFrame:?];
  self->mScrollView = v5;
  [(UIScrollView *)v5 setContentInsetAdjustmentBehavior:2];
  [(UIScrollView *)self->mScrollView setScrollEnabled:1];
  [(UIScrollView *)self->mScrollView setClipsToBounds:0];
  [(UIScrollView *)self->mScrollView setBackgroundColor:v3];
  [(UIScrollView *)self->mScrollView setDelegate:self];
  [(UIScrollView *)self->mScrollView setPagingEnabled:1];
  view = [(THGlossaryDefinitionsViewController *)self view];
  mScrollView = self->mScrollView;

  [view addSubview:mScrollView];
}

- (void)didReceiveMemoryWarning
{
  v3 = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers count];
  if (v3 >= 2)
  {
    v4 = v3;
    keyEnumerator = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers keyEnumerator];
    p_currentEntryIndex = [(THGlossaryDefinitionsViewController *)self p_currentEntryIndex];
    v7 = [[NSMutableArray alloc] initWithCapacity:v4];
    nextKey = [keyEnumerator nextKey];
    if (nextKey != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = nextKey; i != 0x7FFFFFFFFFFFFFFFLL; i = [keyEnumerator nextKey])
      {
        if (i != p_currentEntryIndex)
        {
          v10 = [[NSNumber alloc] initWithInteger:i];
          [v7 addObject:v10];
        }
      }
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v7);
          }

          -[THGlossaryDefinitionsViewController p_releaseControllerForIndex:](self, "p_releaseControllerForIndex:", [*(*(&v16 + 1) + 8 * j) intValue]);
        }

        v12 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  [(NSMutableSet *)self->mRecycledEntries makeObjectsPerformSelector:"teardown"];
  [(NSMutableSet *)self->mRecycledEntries removeAllObjects];
  v15.receiver = self;
  v15.super_class = THGlossaryDefinitionsViewController;
  [(THGlossaryDefinitionsViewController *)&v15 didReceiveMemoryWarning];
}

- (void)setTheme:(id)theme
{
  if (([(IMTheme *)self->_theme isEqual:?]& 1) == 0)
  {
    themeCopy = theme;

    self->_theme = theme;

    [(THGlossaryDefinitionsViewController *)self _stylizeForTheme];
  }
}

- (void)_stylizeForTheme
{
  v3 = [(IMTheme *)[(THGlossaryDefinitionsViewController *)self theme] backgroundColorForTraitEnvironment:self];
  [-[THGlossaryDefinitionsViewController view](self "view")];
  [(UIScrollView *)[(THGlossaryDefinitionsViewController *)self scrollView] setBackgroundColor:v3];
  p_currentEntryIndex = [(THGlossaryDefinitionsViewController *)self p_currentEntryIndex];

  [(THGlossaryDefinitionsViewController *)self p_loadEntryAtIndex:p_currentEntryIndex scrollLocation:0];
}

- (void)p_recycleEntry:(id)entry
{
  [entry viewWillDisappear:0];
  [objc_msgSend(entry "view")];
  [entry viewDidDisappear:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_BCC08;
  v5[3] = &unk_45CF58;
  v5[4] = self;
  v5[5] = entry;
  [entry unloadEntryOnComplete:v5];
}

- (void)p_releaseControllerForIndex:(int64_t)index
{
  v5 = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers objectForKey:?];
  [(TSUIntegerKeyDictionary *)self->mEntryViewControllers removeObjectForKey:index];
  [(THGlossaryDefinitionsViewController *)self p_recycleEntry:v5];
}

- (id)p_dequeueRecycledEntryController
{
  anyObject = [(NSMutableSet *)self->mRecycledEntries anyObject];
  v4 = anyObject;
  if (anyObject)
  {
    v5 = anyObject;
    [(NSMutableSet *)self->mRecycledEntries removeObject:v4];
  }

  return v4;
}

- (id)p_createGlossaryEntryViewController
{
  p_dequeueRecycledEntryController = [(THGlossaryDefinitionsViewController *)self p_dequeueRecycledEntryController];
  if (!p_dequeueRecycledEntryController)
  {
    p_dequeueRecycledEntryController = [[THGlossaryEntryViewController alloc] initWithDocumentRoot:[(THGlossaryController *)[(THGlossaryDefinitionsViewController *)self glossaryController] documentRoot] bookNavigator:[(THGlossaryDefinitionsViewControllerDelegate *)[(THGlossaryDefinitionsViewController *)self delegate] bookNavigator]];
    [(THGlossaryEntryViewController *)p_dequeueRecycledEntryController setGlossaryController:[(THGlossaryDefinitionsViewController *)self glossaryController]];
    [(THGlossaryEntryViewController *)p_dequeueRecycledEntryController setModalViewControllerProvider:[(THGlossaryDefinitionsViewControllerDelegate *)[(THGlossaryDefinitionsViewController *)self delegate] modalViewControllerProviderForGlossaryDefinitionsViewController:self]];
    [(THGlossaryEntryViewController *)p_dequeueRecycledEntryController setLinkHandler:[(THGlossaryDefinitionsViewController *)self glossaryViewController]];
    [(THGlossaryEntryViewController *)p_dequeueRecycledEntryController setTheme:[(THGlossaryDefinitionsViewController *)self theme]];
  }

  return p_dequeueRecycledEntryController;
}

- (void)p_loadEntryAtIndex:(int64_t)index scrollLocation:(int)location
{
  v7 = [(THGlossaryIndex *)self->mEntryIndex entryAtIndex:?];
  if (v7)
  {
    v8 = v7;
    p_createGlossaryEntryViewController = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers objectForKey:index];
    if (!p_createGlossaryEntryViewController)
    {
      p_createGlossaryEntryViewController = [(THGlossaryDefinitionsViewController *)self p_createGlossaryEntryViewController];
      [(TSUIntegerKeyDictionary *)self->mEntryViewControllers setObject:p_createGlossaryEntryViewController forKey:index];

      [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:index];
      [objc_msgSend(p_createGlossaryEntryViewController "view")];
      [p_createGlossaryEntryViewController viewWillAppear:0];
      -[UIScrollView addSubview:](self->mScrollView, "addSubview:", [p_createGlossaryEntryViewController view]);
      [p_createGlossaryEntryViewController viewDidAppear:0];
    }

    [p_createGlossaryEntryViewController setTheme:{-[THGlossaryDefinitionsViewController theme](self, "theme")}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_BCF64;
    v14[3] = &unk_45CF80;
    v14[4] = self;
    v14[5] = p_createGlossaryEntryViewController;
    locationCopy = location;
    [p_createGlossaryEntryViewController loadEntry:v8 withLayoutStyleProvider:-[THGlossaryDefinitionsViewController p_layoutStyleProvider](self onComplete:{"p_layoutStyleProvider"), v14}];
  }
}

- (void)p_updateForContentFrame:(CGRect)frame
{
  v4 = [(THGlossaryDefinitionsViewController *)self p_entryIndexForContentFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(THGlossaryDefinitionsViewController *)self p_loadEntryAtIndex:v4 scrollLocation:0];
  [THGlossaryDefinitionsViewController p_loadEntryAtIndex:"p_loadEntryAtIndex:scrollLocation:" scrollLocation:?];
  [THGlossaryDefinitionsViewController p_loadEntryAtIndex:"p_loadEntryAtIndex:scrollLocation:" scrollLocation:?];
  keyEnumerator = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers keyEnumerator];
  if (keyEnumerator)
  {
    v6 = keyEnumerator;
    nextKey = [keyEnumerator nextKey];
    if (nextKey != 0x7FFFFFFFFFFFFFFFLL)
    {
      nextKey2 = nextKey;
      v9 = v4 - 2;
      v10 = v4 + 2;
      do
      {
        if (nextKey2 < v9 || nextKey2 > v10)
        {
          [(THGlossaryDefinitionsViewController *)self p_releaseControllerForIndex:?];
        }

        nextKey2 = [v6 nextKey];
      }

      while (nextKey2 != 0x7FFFFFFFFFFFFFFFLL);
    }
  }
}

- (int64_t)p_currentEntryIndex
{
  [(UIScrollView *)self->mScrollView bounds];
  if (v3 == 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = v3;
  }

  [(UIScrollView *)self->mScrollView contentOffset];
  return (v5 / v4);
}

- (void)p_showEntry:(id)entry animated:(BOOL)animated
{
  animatedCopy = animated;
  p_currentEntryIndex = [(THGlossaryDefinitionsViewController *)self p_currentEntryIndex];
  v8 = [(THGlossaryIndex *)self->mEntryIndex indexForEntry:entry];
  [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(THGlossaryDefinitionsViewController *)self p_updateForContentFrame:?];
  v15 = p_currentEntryIndex - v8;
  if (p_currentEntryIndex - v8 < 0)
  {
    v15 = v8 - p_currentEntryIndex;
  }

  v16 = v15 < 3;
  [(UIScrollView *)self->mScrollView frame];
  v18 = v17;
  v19 = v16 & animatedCopy;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  if (v19)
  {
    v20 = v8;
  }

  self->mScrollTargetEntryIndex = v20;
  [-[TSUIntegerKeyDictionary objectForKey:](self->mEntryViewControllers objectForKey:{v8), "scrollToLocation:animated:", 1, v19}];
  mScrollView = self->mScrollView;

  [(UIScrollView *)mScrollView scrollRectToVisible:v19 animated:v10, v12, v14, v18];
}

- (void)displayIndex:(id)index withEntry:(id)entry animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([-[THGlossaryDefinitionsViewController view](self "view")])
  {
    if (![(THGlossaryIndex *)self->mEntryIndex isEqual:index])
    {
      entryCopy = entry;

      self->mEntryIndex = index;
      numberOfEntries = [index numberOfEntries];
      v9 = [[TSUIntegerKeyDictionary alloc] initWithCapacity:numberOfEntries];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      valueEnumerator = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers valueEnumerator];
      v11 = [valueEnumerator countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        v12 = *v28;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(valueEnumerator);
            }

            v14 = *(*(&v27 + 1) + 8 * i);
            v15 = [index indexForEntry:{objc_msgSend(v14, "entry")}];
            if (v15 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [(THGlossaryDefinitionsViewController *)self p_recycleEntry:v14];
            }

            else
            {
              [v9 setObject:v14 forKey:v15];
              [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:v15];
              [objc_msgSend(v14 "view")];
            }
          }

          v11 = [valueEnumerator countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v11);
      }

      self->mEntryViewControllers = v9;
      [(UIScrollView *)self->mScrollView frame];
      v21 = v20;
      [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:numberOfEntries];
      [(UIScrollView *)self->mScrollView setContentSize:v21];
      animatedCopy = 0;
      entry = entryCopy;
    }

    [(THGlossaryDefinitionsViewController *)self p_showEntry:entry animated:animatedCopy];
  }

  else
  {
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3052000000;
    v26[3] = sub_BD50C;
    v26[4] = sub_BD51C;
    v26[5] = self;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_BD528;
    v24[3] = &unk_45CFA8;
    v24[5] = entry;
    v24[6] = v26;
    v24[4] = index;
    v25 = animatedCopy;
    [(THGlossaryDefinitionsViewController *)self setDidLayoutBlock:v24];
    _Block_object_dispose(v26, 8);
  }
}

- (id)displayedEntry
{
  p_currentEntryIndex = [(THGlossaryDefinitionsViewController *)self p_currentEntryIndex];
  mEntryIndex = self->mEntryIndex;

  return [(THGlossaryIndex *)mEntryIndex entryAtIndex:p_currentEntryIndex];
}

- (void)unload
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  valueEnumerator = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers valueEnumerator];
  v4 = [valueEnumerator countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(valueEnumerator);
        }

        [(THGlossaryDefinitionsViewController *)self p_recycleEntry:*(*(&v17 + 1) + 8 * i)];
      }

      v5 = [valueEnumerator countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  self->mEntryViewControllers = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mRecycledEntries = self->mRecycledEntries;
  v9 = [(NSMutableSet *)mRecycledEntries countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(mRecycledEntries);
        }

        [*(*(&v13 + 1) + 8 * j) teardown];
      }

      v10 = [(NSMutableSet *)mRecycledEntries countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }

  [(NSMutableSet *)self->mRecycledEntries removeAllObjects];

  self->mEntryIndex = 0;
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(UIScrollView *)self->mScrollView bounds];

  [(THGlossaryDefinitionsViewController *)self p_updateForContentFrame:?];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  self->mScrollTargetEntryIndex = 0x7FFFFFFFFFFFFFFFLL;
  mDelegate = self->mDelegate;
  displayedEntry = [(THGlossaryDefinitionsViewController *)self displayedEntry];

  [(THGlossaryDefinitionsViewControllerDelegate *)mDelegate didScrollToEntry:displayedEntry];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = THGlossaryDefinitionsViewController;
  [(THGlossaryDefinitionsViewController *)&v3 viewDidLayoutSubviews];
  [(THGlossaryDefinitionsViewController *)self layoutScrollView];
  if ([(THGlossaryDefinitionsViewController *)self didLayoutBlock])
  {
    (*([(THGlossaryDefinitionsViewController *)self didLayoutBlock]+ 2))();
    [(THGlossaryDefinitionsViewController *)self setDidLayoutBlock:0];
  }
}

@end