@interface SiriPronunciationDataViewController
- (CGSize)_cellSizeForWidth:(double)width;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (Class)footerViewClass;
- (SiriPronunciationDataViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)desiredHeightForWidth:(double)width;
- (id)_cancelCommands;
- (id)_pronunciationItems;
- (id)_selectNoneCommands;
- (id)_selectionStatsForSelectedIndex:(int64_t)index;
- (id)_selectionStatsForType:(int64_t)type;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)sashItem;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_configureCell:(id)cell forPronunciationIndex:(int64_t)index;
- (void)_incrementPlayCountForItemAtIndex:(int64_t)index;
- (void)_resetPlayCounts;
- (void)_setItemAtIndex:(int64_t)index isPlaying:(BOOL)playing;
- (void)_tellSiriAgainTapped:(id)tapped;
- (void)configureReusableFooterView:(id)view;
- (void)loadView;
- (void)setSnippet:(id)snippet;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SiriPronunciationDataViewController

- (SiriPronunciationDataViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = SiriPronunciationDataViewController;
  v4 = [(SiriPronunciationDataViewController *)&v8 initWithNibName:name bundle:bundle];
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

- (void)setSnippet:(id)snippet
{
  v9.receiver = self;
  v9.super_class = SiriPronunciationDataViewController;
  [(SiriPronunciationDataViewController *)&v9 setSnippet:snippet];
  snippet = [(SiriPronunciationDataViewController *)self snippet];
  orthography = [snippet orthography];

  if (orthography)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 siriUILocalizedStringForKey:@"PRONOUNCE_SUBTITLE_QUOTED_ORTHOGRAPHY_FORMAT" table:0];

    v8 = [NSString stringWithValidatedFormat:v7 validFormatSpecifiers:@"“%@”" error:0, orthography];
    [(SiriPronunciationDataViewController *)self setSubtitle:v8];
  }
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SiriPronunciationDataViewController;
  [(SiriPronunciationDataViewController *)&v6 loadView];
  collectionView = [(SiriPronunciationDataViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[SiriPronunciationItemCell reuseIdentifier];
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SiriPronunciationDataViewController;
  [(SiriPronunciationDataViewController *)&v4 viewWillAppear:appear];
  [(SiriPronunciationDataViewController *)self _resetPlayCounts];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SiriPronunciationDataViewController;
  [(SiriPronunciationDataViewController *)&v7 viewWillDisappear:disappear];
  if ([(NSMutableDictionary *)self->_playCounts count])
  {
    delegate = [(SiriPronunciationDataViewController *)self delegate];
    v5 = [(SiriPronunciationDataViewController *)self _selectionStatsForType:1];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
    [delegate siriViewController:self performAceCommands:v6];

    [(SiriPronunciationDataViewController *)self _resetPlayCounts];
  }
}

- (id)_selectNoneCommands
{
  snippet = [(SiriPronunciationDataViewController *)self snippet];
  selectNoneCommands = [snippet selectNoneCommands];

  return selectNoneCommands;
}

- (id)_cancelCommands
{
  snippet = [(SiriPronunciationDataViewController *)self snippet];
  cancelCommands = [snippet cancelCommands];

  return cancelCommands;
}

- (id)_pronunciationItems
{
  snippet = [(SiriPronunciationDataViewController *)self snippet];
  pronunciations = [snippet pronunciations];

  return pronunciations;
}

- (CGSize)_cellSizeForWidth:(double)width
{
  +[SiriPronunciationItemCell defaultCellHeight];
  v5 = v4;
  widthCopy = width;
  result.height = v5;
  result.width = widthCopy;
  return result;
}

- (void)_setItemAtIndex:(int64_t)index isPlaying:(BOOL)playing
{
  playingIndexes = self->_playingIndexes;
  if (playing)
  {
    if (!playingIndexes)
    {
      v7 = objc_alloc_init(NSMutableIndexSet);
      v8 = self->_playingIndexes;
      self->_playingIndexes = v7;

      playingIndexes = self->_playingIndexes;
    }

    [(NSMutableIndexSet *)playingIndexes addIndex:index];

    [(SiriPronunciationDataViewController *)self _incrementPlayCountForItemAtIndex:index];
  }

  else
  {

    [(NSMutableIndexSet *)playingIndexes removeIndex:index];
  }
}

- (id)sashItem
{
  v2 = [[SiriUISashItem alloc] initWithApplicationBundleIdentifier:@"com.apple.MobileAddressBook"];

  return v2;
}

- (void)_incrementPlayCountForItemAtIndex:(int64_t)index
{
  playCounts = self->_playCounts;
  v6 = [NSNumber numberWithInteger:?];
  v7 = [(NSMutableDictionary *)playCounts objectForKey:v6];
  integerValue = [v7 integerValue];

  v9 = self->_playCounts;
  v11 = [NSNumber numberWithInteger:integerValue + 1];
  v10 = [NSNumber numberWithInteger:index];
  [(NSMutableDictionary *)v9 setObject:v11 forKey:v10];
}

- (void)_resetPlayCounts
{
  self->_playCounts = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

- (id)_selectionStatsForType:(int64_t)type
{
  v5 = objc_alloc_init(SASTTSSelectionStatistics);
  snippet = [(SiriPronunciationDataViewController *)self snippet];
  interactionId = [snippet interactionId];
  [v5 setInteractionId:interactionId];

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
  if (type > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = **(&off_18550 + type);
  }

  [v5 setCompletionType:v13];

  return v5;
}

- (id)_selectionStatsForSelectedIndex:(int64_t)index
{
  v4 = [(SiriPronunciationDataViewController *)self _selectionStatsForType:0];
  [v4 setSelectedItemIndex:index];

  return v4;
}

- (void)_configureCell:(id)cell forPronunciationIndex:(int64_t)index
{
  cellCopy = cell;
  _pronunciationItems = [(SiriPronunciationDataViewController *)self _pronunciationItems];
  [cellCopy setShowingPlaying:{-[SiriPronunciationDataViewController _itemAtIndexIsPlaying:](self, "_itemAtIndexIsPlaying:", index)}];
  objc_initWeak(&location, self);
  objc_initWeak(&from, cellCopy);
  v8 = [_pronunciationItems objectAtIndex:index];
  v9 = [v8 tts];
  title = [v8 title];
  [cellCopy setPlayTitle:title];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_2D70;
  v22[3] = &unk_18508;
  objc_copyWeak(&v24, &from);
  objc_copyWeak(v25, &location);
  v25[1] = index;
  v11 = v9;
  v23 = v11;
  [cellCopy setPlayHandler:v22];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 siriUILocalizedStringForKey:@"SELECT_BUTTON_TITLE" table:0];
  [cellCopy setConfirmTitle:v13];

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_3020;
  v18 = &unk_18530;
  objc_copyWeak(v21, &location);
  selfCopy = self;
  v21[1] = index;
  v14 = v8;
  v20 = v14;
  [cellCopy setConfirmHandler:&v15];
  [cellCopy setKeylineType:{objc_msgSend(_pronunciationItems, "count", v15, v16, v17, v18, selfCopy) - 1 != index}];

  objc_destroyWeak(v21);
  objc_destroyWeak(v25);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (double)desiredHeightForWidth:(double)width
{
  _pronunciationItems = [(SiriPronunciationDataViewController *)self _pronunciationItems];
  v6 = [_pronunciationItems count];
  [(SiriPronunciationDataViewController *)self _cellSizeForWidth:width];
  v8 = v7 * v6;

  return v8;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(SiriPronunciationDataViewController *)self _pronunciationItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if (([pathCopy section] & 0x8000000000000000) != 0 || (v9 = objc_msgSend(pathCopy, "section"), -[SiriPronunciationDataViewController _pronunciationItems](self, "_pronunciationItems"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9 >= v11))
  {
    sub_C3D0(self, pathCopy, a2);
  }

  item = [pathCopy item];
  v13 = +[SiriPronunciationItemCell reuseIdentifier];
  v14 = [viewCopy dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:pathCopy];

  [(SiriPronunciationDataViewController *)self _configureCell:v14 forPronunciationIndex:item];

  return v14;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = [(SiriPronunciationDataViewController *)self delegate:view];
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
  _selectNoneCommands = [(SiriPronunciationDataViewController *)self _selectNoneCommands];
  if ([_selectNoneCommands count])
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

- (void)configureReusableFooterView:(id)view
{
  viewCopy = view;
  [viewCopy prepareForReuse];
  rightButton = [viewCopy rightButton];
  snippet = [(SiriPronunciationDataViewController *)self snippet];
  selectNoneText = [snippet selectNoneText];
  [rightButton setTitle:selectNoneText forState:0];

  [rightButton addTarget:self action:"_tellSiriAgainTapped:" forControlEvents:64];
  leftButton = [viewCopy leftButton];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 siriUILocalizedStringForKey:@"CANCEL" table:0];
  [leftButton setTitle:v9 forState:0];

  [leftButton addTarget:self action:"_cancelButtonTapped:" forControlEvents:64];
}

- (void)_tellSiriAgainTapped:(id)tapped
{
  delegate = [(SiriPronunciationDataViewController *)self delegate];
  v5 = [(SiriPronunciationDataViewController *)self _selectionStatsForType:2];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  [delegate siriViewController:self performAceCommands:v6];

  delegate2 = [(SiriPronunciationDataViewController *)self delegate];
  _selectNoneCommands = [(SiriPronunciationDataViewController *)self _selectNoneCommands];
  [delegate2 siriViewController:self performAceCommands:_selectNoneCommands];

  [(SiriPronunciationDataViewController *)self _resetPlayCounts];
}

- (void)_cancelButtonTapped:(id)tapped
{
  delegate = [(SiriPronunciationDataViewController *)self delegate];
  v5 = [(SiriPronunciationDataViewController *)self _selectionStatsForType:1];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  [delegate siriViewController:self performAceCommands:v6];

  delegate2 = [(SiriPronunciationDataViewController *)self delegate];
  _cancelCommands = [(SiriPronunciationDataViewController *)self _cancelCommands];
  [delegate2 siriViewController:self performAceCommands:_cancelCommands];

  [(SiriPronunciationDataViewController *)self _resetPlayCounts];
}

@end