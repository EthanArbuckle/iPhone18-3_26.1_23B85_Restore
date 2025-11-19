@interface SiriPronunciationDataViewController
- (CGSize)_cellSizeForWidth:(double)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (Class)footerViewClass;
- (SiriPronunciationDataViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)desiredHeightForWidth:(double)a3;
- (id)_cancelCommands;
- (id)_pronunciationItems;
- (id)_selectNoneCommands;
- (id)_selectionStatsForSelectedIndex:(int64_t)a3;
- (id)_selectionStatsForType:(int64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)sashItem;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_cancelButtonTapped:(id)a3;
- (void)_configureCell:(id)a3 forPronunciationIndex:(int64_t)a4;
- (void)_incrementPlayCountForItemAtIndex:(int64_t)a3;
- (void)_resetPlayCounts;
- (void)_setItemAtIndex:(int64_t)a3 isPlaying:(BOOL)a4;
- (void)_tellSiriAgainTapped:(id)a3;
- (void)configureReusableFooterView:(id)a3;
- (void)loadView;
- (void)setSnippet:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SiriPronunciationDataViewController

- (SiriPronunciationDataViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = SiriPronunciationDataViewController;
  v4 = [(SiriPronunciationDataViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 siriUILocalizedStringForKey:@"PRONOUNCE_TITLE" table:0];
    [(SiriPronunciationDataViewController *)v4 setTitle:v6];

    [(SiriPronunciationDataViewController *)v4 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(SiriPronunciationDataViewController *)v4 setWantsConfirmationInsets:0];
  }

  return v4;
}

- (void)setSnippet:(id)a3
{
  v9.receiver = self;
  v9.super_class = SiriPronunciationDataViewController;
  [(SiriPronunciationDataViewController *)&v9 setSnippet:a3];
  v4 = [(SiriPronunciationDataViewController *)self snippet];
  v5 = [v4 orthography];

  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 siriUILocalizedStringForKey:@"PRONOUNCE_SUBTITLE_QUOTED_ORTHOGRAPHY_FORMAT" table:0];

    v8 = [NSString stringWithValidatedFormat:v7 validFormatSpecifiers:@"“%@”" error:0, v5];
    [(SiriPronunciationDataViewController *)self setSubtitle:v8];
  }
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SiriPronunciationDataViewController;
  [(SiriPronunciationDataViewController *)&v6 loadView];
  v3 = [(SiriPronunciationDataViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[SiriPronunciationItemCell reuseIdentifier];
  [v3 registerClass:v4 forCellWithReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SiriPronunciationDataViewController;
  [(SiriPronunciationDataViewController *)&v4 viewWillAppear:a3];
  [(SiriPronunciationDataViewController *)self _resetPlayCounts];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SiriPronunciationDataViewController;
  [(SiriPronunciationDataViewController *)&v7 viewWillDisappear:a3];
  if ([(NSMutableDictionary *)self->_playCounts count])
  {
    v4 = [(SiriPronunciationDataViewController *)self delegate];
    v5 = [(SiriPronunciationDataViewController *)self _selectionStatsForType:1];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
    [v4 siriViewController:self performAceCommands:v6];

    [(SiriPronunciationDataViewController *)self _resetPlayCounts];
  }
}

- (id)_selectNoneCommands
{
  v2 = [(SiriPronunciationDataViewController *)self snippet];
  v3 = [v2 selectNoneCommands];

  return v3;
}

- (id)_cancelCommands
{
  v2 = [(SiriPronunciationDataViewController *)self snippet];
  v3 = [v2 cancelCommands];

  return v3;
}

- (id)_pronunciationItems
{
  v2 = [(SiriPronunciationDataViewController *)self snippet];
  v3 = [v2 pronunciations];

  return v3;
}

- (CGSize)_cellSizeForWidth:(double)a3
{
  +[SiriPronunciationItemCell defaultCellHeight];
  v5 = v4;
  v6 = a3;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)_setItemAtIndex:(int64_t)a3 isPlaying:(BOOL)a4
{
  playingIndexes = self->_playingIndexes;
  if (a4)
  {
    if (!playingIndexes)
    {
      v7 = objc_alloc_init(NSMutableIndexSet);
      v8 = self->_playingIndexes;
      self->_playingIndexes = v7;

      playingIndexes = self->_playingIndexes;
    }

    [(NSMutableIndexSet *)playingIndexes addIndex:a3];

    [(SiriPronunciationDataViewController *)self _incrementPlayCountForItemAtIndex:a3];
  }

  else
  {

    [(NSMutableIndexSet *)playingIndexes removeIndex:a3];
  }
}

- (id)sashItem
{
  v2 = [[SiriUISashItem alloc] initWithApplicationBundleIdentifier:@"com.apple.MobileAddressBook"];

  return v2;
}

- (void)_incrementPlayCountForItemAtIndex:(int64_t)a3
{
  playCounts = self->_playCounts;
  v6 = [NSNumber numberWithInteger:?];
  v7 = [(NSMutableDictionary *)playCounts objectForKey:v6];
  v8 = [v7 integerValue];

  v9 = self->_playCounts;
  v11 = [NSNumber numberWithInteger:v8 + 1];
  v10 = [NSNumber numberWithInteger:a3];
  [(NSMutableDictionary *)v9 setObject:v11 forKey:v10];
}

- (void)_resetPlayCounts
{
  self->_playCounts = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

- (id)_selectionStatsForType:(int64_t)a3
{
  v5 = objc_alloc_init(SASTTSSelectionStatistics);
  v6 = [(SiriPronunciationDataViewController *)self snippet];
  v7 = [v6 interactionId];
  [v5 setInteractionId:v7];

  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableArray);
  playCounts = self->_playCounts;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_29F8;
  v18 = &unk_184B8;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  [(NSMutableDictionary *)playCounts enumerateKeysAndObjectsUsingBlock:&v15];
  [v5 setListenedItems:{v11, v15, v16, v17, v18}];
  [v5 setTimesListened:v12];
  if (a3 > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = **(&off_18550 + a3);
  }

  [v5 setCompletionType:v13];

  return v5;
}

- (id)_selectionStatsForSelectedIndex:(int64_t)a3
{
  v4 = [(SiriPronunciationDataViewController *)self _selectionStatsForType:0];
  [v4 setSelectedItemIndex:a3];

  return v4;
}

- (void)_configureCell:(id)a3 forPronunciationIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(SiriPronunciationDataViewController *)self _pronunciationItems];
  [v6 setShowingPlaying:{-[SiriPronunciationDataViewController _itemAtIndexIsPlaying:](self, "_itemAtIndexIsPlaying:", a4)}];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v8 = [v7 objectAtIndex:a4];
  v9 = [v8 tts];
  v10 = [v8 title];
  [v6 setPlayTitle:v10];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_2D70;
  v22[3] = &unk_18508;
  objc_copyWeak(&v24, &from);
  objc_copyWeak(v25, &location);
  v25[1] = a4;
  v11 = v9;
  v23 = v11;
  [v6 setPlayHandler:v22];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 siriUILocalizedStringForKey:@"SELECT_BUTTON_TITLE" table:0];
  [v6 setConfirmTitle:v13];

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_3020;
  v18 = &unk_18530;
  objc_copyWeak(v21, &location);
  v19 = self;
  v21[1] = a4;
  v14 = v8;
  v20 = v14;
  [v6 setConfirmHandler:&v15];
  [v6 setKeylineType:{objc_msgSend(v7, "count", v15, v16, v17, v18, v19) - 1 != a4}];

  objc_destroyWeak(v21);
  objc_destroyWeak(v25);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (double)desiredHeightForWidth:(double)a3
{
  v5 = [(SiriPronunciationDataViewController *)self _pronunciationItems];
  v6 = [v5 count];
  [(SiriPronunciationDataViewController *)self _cellSizeForWidth:a3];
  v8 = v7 * v6;

  return v8;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(SiriPronunciationDataViewController *)self _pronunciationItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v7 = a4;
  v8 = a3;
  if (([v7 section] & 0x8000000000000000) != 0 || (v9 = objc_msgSend(v7, "section"), -[SiriPronunciationDataViewController _pronunciationItems](self, "_pronunciationItems"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9 >= v11))
  {
    sub_C3D0(self, v7, a2);
  }

  v12 = [v7 item];
  v13 = +[SiriPronunciationItemCell reuseIdentifier];
  v14 = [v8 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v7];

  [(SiriPronunciationDataViewController *)self _configureCell:v14 forPronunciationIndex:v12];

  return v14;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = [(SiriPronunciationDataViewController *)self delegate:a3];
  [v6 siriViewControllerExpectedWidth:self];
  [(SiriPronunciationDataViewController *)self _cellSizeForWidth:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (Class)footerViewClass
{
  v2 = [(SiriPronunciationDataViewController *)self _selectNoneCommands];
  if ([v2 count])
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)configureReusableFooterView:(id)a3
{
  v4 = a3;
  [v4 prepareForReuse];
  v10 = [v4 rightButton];
  v5 = [(SiriPronunciationDataViewController *)self snippet];
  v6 = [v5 selectNoneText];
  [v10 setTitle:v6 forState:0];

  [v10 addTarget:self action:"_tellSiriAgainTapped:" forControlEvents:64];
  v7 = [v4 leftButton];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 siriUILocalizedStringForKey:@"CANCEL" table:0];
  [v7 setTitle:v9 forState:0];

  [v7 addTarget:self action:"_cancelButtonTapped:" forControlEvents:64];
}

- (void)_tellSiriAgainTapped:(id)a3
{
  v4 = [(SiriPronunciationDataViewController *)self delegate];
  v5 = [(SiriPronunciationDataViewController *)self _selectionStatsForType:2];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  [v4 siriViewController:self performAceCommands:v6];

  v7 = [(SiriPronunciationDataViewController *)self delegate];
  v8 = [(SiriPronunciationDataViewController *)self _selectNoneCommands];
  [v7 siriViewController:self performAceCommands:v8];

  [(SiriPronunciationDataViewController *)self _resetPlayCounts];
}

- (void)_cancelButtonTapped:(id)a3
{
  v4 = [(SiriPronunciationDataViewController *)self delegate];
  v5 = [(SiriPronunciationDataViewController *)self _selectionStatsForType:1];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  [v4 siriViewController:self performAceCommands:v6];

  v7 = [(SiriPronunciationDataViewController *)self delegate];
  v8 = [(SiriPronunciationDataViewController *)self _cancelCommands];
  [v7 siriViewController:self performAceCommands:v8];

  [(SiriPronunciationDataViewController *)self _resetPlayCounts];
}

@end