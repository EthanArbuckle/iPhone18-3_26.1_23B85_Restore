@interface THGlossaryDefinitionsViewController
- (CGRect)p_contentFrameForEntryIndex:(int64_t)a3;
- (CGRect)p_definitionViewFrame;
- (CGRect)p_scrollViewFrameForPaging:(BOOL)a3;
- (THGlossaryDefinitionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)displayedEntry;
- (id)p_createGlossaryEntryViewController;
- (id)p_dequeueRecycledEntryController;
- (int64_t)p_currentEntryIndex;
- (int64_t)p_entryIndexForContentFrame:(CGRect)a3;
- (void)_stylizeForTheme;
- (void)awakeFromNib;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)displayIndex:(id)a3 withEntry:(id)a4 animated:(BOOL)a5;
- (void)layoutScrollView;
- (void)loadView;
- (void)p_loadEntryAtIndex:(int64_t)a3 scrollLocation:(int)a4;
- (void)p_recycleEntry:(id)a3;
- (void)p_releaseControllerForIndex:(int64_t)a3;
- (void)p_showEntry:(id)a3 animated:(BOOL)a4;
- (void)p_updateForContentFrame:(CGRect)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setTheme:(id)a3;
- (void)unload;
- (void)viewDidLayoutSubviews;
@end

@implementation THGlossaryDefinitionsViewController

- (THGlossaryDefinitionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = THGlossaryDefinitionsViewController;
  v4 = [(THGlossaryDefinitionsViewController *)&v7 initWithNibName:a3 bundle:a4];
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

- (CGRect)p_contentFrameForEntryIndex:(int64_t)a3
{
  [(THGlossaryDefinitionsViewController *)self p_definitionViewFrame];
  v7 = (v6 + 1.0) * a3;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v7;
  result.origin.x = v4;
  return result;
}

- (int64_t)p_entryIndexForContentFrame:(CGRect)a3
{
  y = a3.origin.y;
  [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:1, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  return (y / v4 + 0.5);
}

- (CGRect)p_scrollViewFrameForPaging:(BOOL)a3
{
  v3 = a3;
  [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:0];
  v7 = v6;
  v9 = v8;
  if (v3)
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
  v3 = [(THGlossaryDefinitionsViewController *)self p_currentEntryIndex];
  v4 = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers keyEnumerator];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 nextKey];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v6; i != 0x7FFFFFFFFFFFFFFFLL; i = [v5 nextKey])
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
  [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:v3];
  [(THGlossaryDefinitionsViewController *)self p_updateForContentFrame:?];
  v10 = [(THGlossaryIndex *)self->mEntryIndex entryAtIndex:v3];

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
  v6 = [(THGlossaryDefinitionsViewController *)self view];
  mScrollView = self->mScrollView;

  [v6 addSubview:mScrollView];
}

- (void)didReceiveMemoryWarning
{
  v3 = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers count];
  if (v3 >= 2)
  {
    v4 = v3;
    v5 = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers keyEnumerator];
    v6 = [(THGlossaryDefinitionsViewController *)self p_currentEntryIndex];
    v7 = [[NSMutableArray alloc] initWithCapacity:v4];
    v8 = [v5 nextKey];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v8; i != 0x7FFFFFFFFFFFFFFFLL; i = [v5 nextKey])
      {
        if (i != v6)
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

- (void)setTheme:(id)a3
{
  if (([(IMTheme *)self->_theme isEqual:?]& 1) == 0)
  {
    v5 = a3;

    self->_theme = a3;

    [(THGlossaryDefinitionsViewController *)self _stylizeForTheme];
  }
}

- (void)_stylizeForTheme
{
  v3 = [(IMTheme *)[(THGlossaryDefinitionsViewController *)self theme] backgroundColorForTraitEnvironment:self];
  [-[THGlossaryDefinitionsViewController view](self "view")];
  [(UIScrollView *)[(THGlossaryDefinitionsViewController *)self scrollView] setBackgroundColor:v3];
  v4 = [(THGlossaryDefinitionsViewController *)self p_currentEntryIndex];

  [(THGlossaryDefinitionsViewController *)self p_loadEntryAtIndex:v4 scrollLocation:0];
}

- (void)p_recycleEntry:(id)a3
{
  [a3 viewWillDisappear:0];
  [objc_msgSend(a3 "view")];
  [a3 viewDidDisappear:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_BCC08;
  v5[3] = &unk_45CF58;
  v5[4] = self;
  v5[5] = a3;
  [a3 unloadEntryOnComplete:v5];
}

- (void)p_releaseControllerForIndex:(int64_t)a3
{
  v5 = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers objectForKey:?];
  [(TSUIntegerKeyDictionary *)self->mEntryViewControllers removeObjectForKey:a3];
  [(THGlossaryDefinitionsViewController *)self p_recycleEntry:v5];
}

- (id)p_dequeueRecycledEntryController
{
  v3 = [(NSMutableSet *)self->mRecycledEntries anyObject];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    [(NSMutableSet *)self->mRecycledEntries removeObject:v4];
  }

  return v4;
}

- (id)p_createGlossaryEntryViewController
{
  v3 = [(THGlossaryDefinitionsViewController *)self p_dequeueRecycledEntryController];
  if (!v3)
  {
    v3 = [[THGlossaryEntryViewController alloc] initWithDocumentRoot:[(THGlossaryController *)[(THGlossaryDefinitionsViewController *)self glossaryController] documentRoot] bookNavigator:[(THGlossaryDefinitionsViewControllerDelegate *)[(THGlossaryDefinitionsViewController *)self delegate] bookNavigator]];
    [(THGlossaryEntryViewController *)v3 setGlossaryController:[(THGlossaryDefinitionsViewController *)self glossaryController]];
    [(THGlossaryEntryViewController *)v3 setModalViewControllerProvider:[(THGlossaryDefinitionsViewControllerDelegate *)[(THGlossaryDefinitionsViewController *)self delegate] modalViewControllerProviderForGlossaryDefinitionsViewController:self]];
    [(THGlossaryEntryViewController *)v3 setLinkHandler:[(THGlossaryDefinitionsViewController *)self glossaryViewController]];
    [(THGlossaryEntryViewController *)v3 setTheme:[(THGlossaryDefinitionsViewController *)self theme]];
  }

  return v3;
}

- (void)p_loadEntryAtIndex:(int64_t)a3 scrollLocation:(int)a4
{
  v7 = [(THGlossaryIndex *)self->mEntryIndex entryAtIndex:?];
  if (v7)
  {
    v8 = v7;
    v9 = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers objectForKey:a3];
    if (!v9)
    {
      v9 = [(THGlossaryDefinitionsViewController *)self p_createGlossaryEntryViewController];
      [(TSUIntegerKeyDictionary *)self->mEntryViewControllers setObject:v9 forKey:a3];

      [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:a3];
      [objc_msgSend(v9 "view")];
      [v9 viewWillAppear:0];
      -[UIScrollView addSubview:](self->mScrollView, "addSubview:", [v9 view]);
      [v9 viewDidAppear:0];
    }

    [v9 setTheme:{-[THGlossaryDefinitionsViewController theme](self, "theme")}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_BCF64;
    v14[3] = &unk_45CF80;
    v14[4] = self;
    v14[5] = v9;
    v15 = a4;
    [v9 loadEntry:v8 withLayoutStyleProvider:-[THGlossaryDefinitionsViewController p_layoutStyleProvider](self onComplete:{"p_layoutStyleProvider"), v14}];
  }
}

- (void)p_updateForContentFrame:(CGRect)a3
{
  v4 = [(THGlossaryDefinitionsViewController *)self p_entryIndexForContentFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(THGlossaryDefinitionsViewController *)self p_loadEntryAtIndex:v4 scrollLocation:0];
  [THGlossaryDefinitionsViewController p_loadEntryAtIndex:"p_loadEntryAtIndex:scrollLocation:" scrollLocation:?];
  [THGlossaryDefinitionsViewController p_loadEntryAtIndex:"p_loadEntryAtIndex:scrollLocation:" scrollLocation:?];
  v5 = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers keyEnumerator];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 nextKey];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      v9 = v4 - 2;
      v10 = v4 + 2;
      do
      {
        if (v8 < v9 || v8 > v10)
        {
          [(THGlossaryDefinitionsViewController *)self p_releaseControllerForIndex:?];
        }

        v8 = [v6 nextKey];
      }

      while (v8 != 0x7FFFFFFFFFFFFFFFLL);
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

- (void)p_showEntry:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(THGlossaryDefinitionsViewController *)self p_currentEntryIndex];
  v8 = [(THGlossaryIndex *)self->mEntryIndex indexForEntry:a3];
  [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(THGlossaryDefinitionsViewController *)self p_updateForContentFrame:?];
  v15 = v7 - v8;
  if (v7 - v8 < 0)
  {
    v15 = v8 - v7;
  }

  v16 = v15 < 3;
  [(UIScrollView *)self->mScrollView frame];
  v18 = v17;
  v19 = v16 & v4;
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

- (void)displayIndex:(id)a3 withEntry:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  if ([-[THGlossaryDefinitionsViewController view](self "view")])
  {
    if (![(THGlossaryIndex *)self->mEntryIndex isEqual:a3])
    {
      v22 = a4;

      self->mEntryIndex = a3;
      v23 = [a3 numberOfEntries];
      v9 = [[TSUIntegerKeyDictionary alloc] initWithCapacity:v23];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers valueEnumerator];
      v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        v12 = *v28;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v27 + 1) + 8 * i);
            v15 = [a3 indexForEntry:{objc_msgSend(v14, "entry")}];
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

          v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v11);
      }

      self->mEntryViewControllers = v9;
      [(UIScrollView *)self->mScrollView frame];
      v21 = v20;
      [(THGlossaryDefinitionsViewController *)self p_contentFrameForEntryIndex:v23];
      [(UIScrollView *)self->mScrollView setContentSize:v21];
      v5 = 0;
      a4 = v22;
    }

    [(THGlossaryDefinitionsViewController *)self p_showEntry:a4 animated:v5];
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
    v24[5] = a4;
    v24[6] = v26;
    v24[4] = a3;
    v25 = v5;
    [(THGlossaryDefinitionsViewController *)self setDidLayoutBlock:v24];
    _Block_object_dispose(v26, 8);
  }
}

- (id)displayedEntry
{
  v3 = [(THGlossaryDefinitionsViewController *)self p_currentEntryIndex];
  mEntryIndex = self->mEntryIndex;

  return [(THGlossaryIndex *)mEntryIndex entryAtIndex:v3];
}

- (void)unload
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(TSUIntegerKeyDictionary *)self->mEntryViewControllers valueEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(THGlossaryDefinitionsViewController *)self p_recycleEntry:*(*(&v17 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
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

- (void)scrollViewDidScroll:(id)a3
{
  [(UIScrollView *)self->mScrollView bounds];

  [(THGlossaryDefinitionsViewController *)self p_updateForContentFrame:?];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  self->mScrollTargetEntryIndex = 0x7FFFFFFFFFFFFFFFLL;
  mDelegate = self->mDelegate;
  v4 = [(THGlossaryDefinitionsViewController *)self displayedEntry];

  [(THGlossaryDefinitionsViewControllerDelegate *)mDelegate didScrollToEntry:v4];
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