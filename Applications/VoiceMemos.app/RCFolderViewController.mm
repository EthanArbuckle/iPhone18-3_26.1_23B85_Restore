@interface RCFolderViewController
- (BOOL)_shouldDisplaySiriTipView;
- (BOOL)isRecordButtonVisible;
- (RCFolderViewController)initWithBuiltInFolderType:(int64_t)type folderUUID:(id)d;
- (RCFolderViewController)initWithUserFolderNamed:(id)named folderUUID:(id)d;
- (RCLibraryActionHandler)libraryActionHandler;
- (RCRecordingViewControllerDelegate)recordingViewControllerDelegate;
- (id)_selectedUUIDForPlayback;
- (id)undoManager;
- (void)_clearNavigationBarPalette;
- (void)_commonInit;
- (void)_handleEraseAll:(id)all;
- (void)_handleEraseSelected:(id)selected;
- (void)_handleRecoverAll:(id)all;
- (void)_handleRecoverSelected:(id)selected;
- (void)_performDeleteItems:(id)items;
- (void)_performShareRows:(id)rows;
- (void)_setupDeletableToolbarItems;
- (void)_setupNavigationBarPalette;
- (void)_setupRecentlyDeletedToolbarItems;
- (void)_styleView;
- (void)_updateNavigationBarPaletteHeightIfNeeded;
- (void)_updateNavigationBarSubtitle;
- (void)_updateNavigationBarTitle;
- (void)_updateRightBarButtonItems;
- (void)_updateSearchPositioning;
- (void)_updateToolbarItems;
- (void)assignSearchControllerIfNeeded;
- (void)didDismissSiriTipView;
- (void)finishedTransitionToEditing:(BOOL)editing;
- (void)loadView;
- (void)presentSearchController;
- (void)recordButtonTapped;
- (void)restyle;
- (void)setFolderTitle:(id)title;
- (void)setLibraryActionHandler:(id)handler;
- (void)setRecordingViewController:(id)controller;
- (void)setRecordingViewControllerDelegate:(id)delegate;
- (void)setRecordingsCollectionViewController:(id)controller;
- (void)updateNavigationItemForCurrentState;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RCFolderViewController

- (BOOL)_shouldDisplaySiriTipView
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  supportsSiriTipView = [v3 supportsSiriTipView];

  v5 = +[AFPreferences sharedPreferences];
  assistantIsEnabled = [v5 assistantIsEnabled];

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"RCSiriTipViewWasDismissed"];

  if (supportsSiriTipView)
  {
    supportsRecording = [(RCFolderViewController *)self supportsRecording];
    if (supportsRecording)
    {
      LOBYTE(supportsRecording) = assistantIsEnabled & (v8 ^ 1);
    }
  }

  else
  {
    LOBYTE(supportsRecording) = 0;
  }

  return supportsRecording;
}

- (void)_commonInit
{
  v3 = objc_alloc_init(_TtC10VoiceMemos24RCRecordButtonRepository);
  [(RCFolderViewController *)self setRecordButtonRepository:v3];

  v4 = [RCRecordingViewController alloc];
  recordButtonRepository = [(RCFolderViewController *)self recordButtonRepository];
  v6 = [(RCRecordingViewController *)v4 initWithRecordButtonRepository:recordButtonRepository interactionHandler:self];

  [(RCFolderViewController *)self setRecordingViewController:v6];
  [(RCFolderViewController *)self setShouldDisplaySiriTipView:[(RCFolderViewController *)self _shouldDisplaySiriTipView]];
}

- (RCRecordingViewControllerDelegate)recordingViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingViewControllerDelegate);

  return WeakRetained;
}

- (RCLibraryActionHandler)libraryActionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryActionHandler);

  return WeakRetained;
}

- (void)_updateNavigationBarSubtitle
{
  v21 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v21 showsNavBarSubtitle])
  {
    recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
    recordingsDataCoordinator = [recordingsCollectionViewController recordingsDataCoordinator];
    searchString = [recordingsDataCoordinator searchString];
    v6 = [searchString length];

    allUUIDs = [recordingsCollectionViewController allUUIDs];
    v8 = [allUUIDs count];

    if (v6)
    {
      folderTitle = [(RCFolderViewController *)self folderTitle];
      recordingsCollectionViewController2 = [(RCFolderViewController *)self recordingsCollectionViewController];
      recordingsDataCoordinator2 = [recordingsCollectionViewController2 recordingsDataCoordinator];
      searchScope = [recordingsDataCoordinator2 searchScope];

      if (!searchScope)
      {
        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"ALL_RECORDINGS" value:&stru_100295BB8 table:0];

        folderTitle = v14;
      }

      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"%@ value:%lu results" table:{&stru_100295BB8, 0}];
      v17 = [NSString localizedStringWithFormat:v16, folderTitle, v8];
      navigationItem = [(RCFolderViewController *)self navigationItem];
      [navigationItem setSubtitle:v17];
    }

    else
    {
      if (!v8)
      {
        folderTitle = [(RCFolderViewController *)self navigationItem];
        [folderTitle setSubtitle:0];
        goto LABEL_9;
      }

      folderTitle = +[NSBundle mainBundle];
      v15 = [folderTitle localizedStringForKey:@"%lu Recordings" value:&stru_100295BB8 table:0];
      v19 = [NSString localizedStringWithFormat:v15, v8];
      navigationItem2 = [(RCFolderViewController *)self navigationItem];
      [navigationItem2 setSubtitle:v19];
    }

LABEL_9:
  }
}

- (void)loadView
{
  v3 = [_TtC10VoiceMemos24RCRecordButtonAppFactory alloc];
  recordButtonRepository = [(RCFolderViewController *)self recordButtonRepository];
  v5 = [(RCRecordButtonAppFactory *)v3 initWithRecordButtonRepository:recordButtonRepository interactionHandler:self];
  [(RCFolderViewController *)self setRecordButtonFactory:v5];

  v6 = [_TtC10VoiceMemos12RCFolderView alloc];
  recordButtonFactory = [(RCFolderViewController *)self recordButtonFactory];
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  view = [recordingsCollectionViewController view];
  recordingsCollectionViewController2 = [(RCFolderViewController *)self recordingsCollectionViewController];
  collectionView = [recordingsCollectionViewController2 collectionView];
  v13 = [(RCFolderView *)v6 initWithRecordButtonFactory:recordButtonFactory recordingsCollectionViewControllerWrapperView:view recordingsCollectionView:collectionView allowsNewRecordings:[(RCFolderViewController *)self supportsRecording]];

  [(RCFolderViewController *)self setView:v13];
  view2 = [(RCFolderViewController *)self view];
  [view2 setAccessibilityIdentifier:@"FolderView"];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = RCFolderViewController;
  [(RCFolderViewController *)&v9 viewDidLoad];
  view = [(RCFolderViewController *)self view];
  [view setDelegate:self];

  view2 = [(RCFolderViewController *)self view];
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  [recordingsCollectionViewController setEditStateHandler:view2];

  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v6 usesLargeTitles])
  {
    navigationItem = [(RCFolderViewController *)self navigationItem];
    [navigationItem setLargeTitleDisplayMode:1];

    navigationItem2 = [(RCFolderViewController *)self navigationItem];
    [navigationItem2 _setSupportsTwoLineLargeTitles:1];
  }

  [(RCFolderViewController *)self _updateRightBarButtonItems];
  [(RCFolderViewController *)self _setupNavigationBarPalette];
  [(RCFolderViewController *)self assignSearchControllerIfNeeded];
}

- (void)_setupNavigationBarPalette
{
  navigationItem = [(RCFolderViewController *)self navigationItem];
  if ([(RCFolderViewController *)self shouldDisplaySiriTipView])
  {
    _bottomPalette = [navigationItem _bottomPalette];

    if (!_bottomPalette)
    {
      navigationController = [(RCFolderViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = [[_TtC10VoiceMemos22RCSiriTipContainerView alloc] initWithFrame:v7, v9, v11, v13];
      [(RCSiriTipContainerView *)v14 setDelegate:self];
      v15 = [[_UINavigationBarPalette alloc] initWithContentView:v14];
      [navigationItem _setBottomPalette:v15];
      [v15 _setLayoutPriority:2];
      [v15 _setContentViewMarginType:1];
      [(RCFolderViewController *)self _updateNavigationBarPaletteHeightIfNeeded];
    }
  }
}

- (id)undoManager
{
  WeakRetained = objc_loadWeakRetained(&self->_undoManager);

  return WeakRetained;
}

- (void)updateNavigationItemForCurrentState
{
  [(RCFolderViewController *)self _updateNavigationBarTitle];
  [(RCFolderViewController *)self _updateNavigationBarSubtitle];

  [(RCFolderViewController *)self _updateToolbarItems];
}

- (void)_updateNavigationBarTitle
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  usesLargeTitles = [v3 usesLargeTitles];

  if (usesLargeTitles)
  {
    navigationItem = [(RCFolderViewController *)self navigationItem];
    [navigationItem _setSupportsTwoLineLargeTitles:1];
    recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
    collectionView = [recordingsCollectionViewController collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v8 = [indexPathsForSelectedItems count];

    isEditing = [collectionView isEditing];
    recordingsDataCoordinator = [recordingsCollectionViewController recordingsDataCoordinator];
    searchString = [recordingsDataCoordinator searchString];
    v12 = [searchString length];

    if (isEditing && v8)
    {
      folderTitle = +[NSBundle mainBundle];
      v14 = [folderTitle localizedStringForKey:@"%lu Selected" value:&stru_100295BB8 table:0];
      v15 = [NSString localizedStringWithFormat:v14, v8];
      [navigationItem setTitle:v15];
    }

    else if (v12)
    {
      folderTitle = +[NSBundle mainBundle];
      v16 = [folderTitle localizedStringForKey:@"SEARCHING" value:&stru_100295BB8 table:0];
      [navigationItem setTitle:v16];
    }

    else
    {
      folderTitle = [(RCFolderViewController *)self folderTitle];
      [navigationItem setTitle:folderTitle];
    }
  }
}

- (void)_updateToolbarItems
{
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  collectionView = [recordingsCollectionViewController collectionView];
  isEditing = [collectionView isEditing];

  if (isEditing)
  {
    if ([(RCFolderViewController *)self folderType]== 3)
    {

      [(RCFolderViewController *)self _setupRecentlyDeletedToolbarItems];
    }

    else
    {

      [(RCFolderViewController *)self _setupDeletableToolbarItems];
    }
  }
}

- (void)setRecordingViewControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_recordingViewControllerDelegate, delegateCopy);
  recordingViewController = [(RCFolderViewController *)self recordingViewController];
  [recordingViewController setRecordingViewControllerDelegate:delegateCopy];
}

- (void)setRecordingViewController:(id)controller
{
  objc_storeStrong(&self->_recordingViewController, controller);
  controllerCopy = controller;
  recordingViewControllerDelegate = [(RCFolderViewController *)self recordingViewControllerDelegate];
  [controllerCopy setRecordingViewControllerDelegate:recordingViewControllerDelegate];

  [(RCFolderViewController *)self addChildViewController:controllerCopy];
  [controllerCopy didMoveToParentViewController:self];
}

- (void)setRecordingsCollectionViewController:(id)controller
{
  objc_storeStrong(&self->_recordingsCollectionViewController, controller);
  controllerCopy = controller;
  [controllerCopy willMoveToParentViewController:self];
  [(RCFolderViewController *)self addChildViewController:controllerCopy];
  [controllerCopy didMoveToParentViewController:self];
  libraryActionHandler = [(RCFolderViewController *)self libraryActionHandler];
  [(RCRecordingsCollectionViewController *)self->_recordingsCollectionViewController setLibraryActionHandler:libraryActionHandler];
}

- (void)setLibraryActionHandler:(id)handler
{
  handlerCopy = handler;
  objc_storeWeak(&self->_libraryActionHandler, handlerCopy);
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  [recordingsCollectionViewController setLibraryActionHandler:handlerCopy];
}

- (void)setFolderTitle:(id)title
{
  titleCopy = title;
  v5 = [titleCopy copy];
  folderTitle = self->_folderTitle;
  self->_folderTitle = v5;

  navigationItem = [(RCFolderViewController *)self navigationItem];
  [navigationItem setTitle:titleCopy];

  [(RCFolderViewController *)self _updateNavigationBarSubtitle];
}

- (RCFolderViewController)initWithUserFolderNamed:(id)named folderUUID:(id)d
{
  namedCopy = named;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = RCFolderViewController;
  v8 = [(RCFolderViewController *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_folderType = 4;
    v10 = [dCopy copy];
    folderUUID = v9->_folderUUID;
    v9->_folderUUID = v10;

    v12 = [[RCRecordingsCollectionViewController alloc] initWithUserFolderNamed:namedCopy folderUUID:dCopy];
    [(RCFolderViewController *)v9 setRecordingsCollectionViewController:v12];

    [(RCFolderViewController *)v9 _commonInit];
  }

  return v9;
}

- (RCFolderViewController)initWithBuiltInFolderType:(int64_t)type folderUUID:(id)d
{
  dCopy = d;
  v36.receiver = self;
  v36.super_class = RCFolderViewController;
  v7 = [(RCFolderViewController *)&v36 init];
  v8 = v7;
  if (v7)
  {
    v7->_folderType = type;
    v9 = [dCopy copy];
    folderUUID = v8->_folderUUID;
    v8->_folderUUID = v9;

    [(RCFolderViewController *)v8 _commonInit];
    if (type == 3)
    {
      v11 = objc_alloc_init(RCRecentlyDeletedRecordingsCollectionViewController);
      [(RCFolderViewController *)v8 setRecordingsCollectionViewController:v11];

      v12 = [UIBarButtonItem alloc];
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"RECOVER_ALL" value:&stru_100295BB8 table:0];
      v15 = [v12 initWithTitle:v14 style:0 target:v8 action:"_handleRecoverAll:"];
      [(RCFolderViewController *)v8 setRecoverRecordingsButton:v15];

      v16 = +[NSBundle mainBundle];
      v17 = [v16 localizedStringForKey:@"RECOVER_ALL" value:&stru_100295BB8 table:0];
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"RECOVER" value:&stru_100295BB8 table:0];
      v20 = [NSSet setWithObjects:v17, v19, 0];
      recoverRecordingsButton = [(RCFolderViewController *)v8 recoverRecordingsButton];
      [recoverRecordingsButton setPossibleTitles:v20];

      recoverRecordingsButton2 = [(RCFolderViewController *)v8 recoverRecordingsButton];
      [recoverRecordingsButton2 setEnabled:1];

      v23 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:v8 action:0];
      [(RCFolderViewController *)v8 setFlexBarItem:v23];

      v24 = [UIBarButtonItem alloc];
      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"DELETE_ALL" value:&stru_100295BB8 table:0];
      v27 = [v24 initWithTitle:v26 style:0 target:v8 action:"_handleEraseAll:"];
      [(RCFolderViewController *)v8 setEraseRecordingsButton:v27];

      v28 = +[NSBundle mainBundle];
      v29 = [v28 localizedStringForKey:@"DELETE_ALL" value:&stru_100295BB8 table:0];
      v30 = +[NSBundle mainBundle];
      v31 = [v30 localizedStringForKey:@"DELETE" value:&stru_100295BB8 table:0];
      v32 = [NSSet setWithObjects:v29, v31, 0];
      eraseRecordingsButton = [(RCFolderViewController *)v8 eraseRecordingsButton];
      [eraseRecordingsButton setPossibleTitles:v32];

      eraseRecordingsButton2 = [(RCFolderViewController *)v8 eraseRecordingsButton];
      [(RCRecordingsCollectionViewController *)eraseRecordingsButton2 setEnabled:1];
    }

    else
    {
      eraseRecordingsButton2 = [[RCRecordingsCollectionViewController alloc] initWithBuiltInFolderType:type folderUUID:dCopy];
      [(RCFolderViewController *)v8 setRecordingsCollectionViewController:eraseRecordingsButton2];
    }
  }

  return v8;
}

- (BOOL)isRecordButtonVisible
{
  if ([(RCFolderViewController *)self supportsRecording])
  {
    view = [(RCFolderViewController *)self view];
    v4 = [view isBottomContainerViewHidden] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = RCFolderViewController;
  [(RCFolderViewController *)&v10 viewWillAppear:appear];
  setupBlock = [(RCFolderViewController *)self setupBlock];

  if (setupBlock)
  {
    setupBlock2 = [(RCFolderViewController *)self setupBlock];
    setupBlock2[2]();
  }

  folderTitle = [(RCFolderViewController *)self folderTitle];
  navigationItem = [(RCFolderViewController *)self navigationItem];
  [navigationItem setTitle:folderTitle];

  [(RCFolderViewController *)self _updateNavigationBarSubtitle];
  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  LOBYTE(navigationItem) = [v8 usesLargeTitles];

  if ((navigationItem & 1) == 0 && [(RCFolderViewController *)self folderType]== 3)
  {
    [(RCFolderViewController *)self _setupRecentlyDeletedToolbarItems];
    navigationController = [(RCFolderViewController *)self navigationController];
    [navigationController setToolbarHidden:0 animated:1];
  }

  [(RCFolderViewController *)self setIsInactive:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = RCFolderViewController;
  [(RCFolderViewController *)&v6 viewDidAppear:appear];
  navigationItem = [(RCFolderViewController *)self navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];

  if (_bottomPalette)
  {
    [_bottomPalette setMinimumHeight:0.0];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  teardownBlock = [(RCFolderViewController *)self teardownBlock];

  if (teardownBlock)
  {
    teardownBlock2 = [(RCFolderViewController *)self teardownBlock];
    teardownBlock2[2]();
  }

  v7.receiver = self;
  v7.super_class = RCFolderViewController;
  [(RCFolderViewController *)&v7 viewDidDisappear:disappearCopy];
  [(RCFolderViewController *)self setIsInactive:1];
}

- (id)_selectedUUIDForPlayback
{
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  uuidOfSelectedRecording = [recordingsCollectionViewController uuidOfSelectedRecording];

  if (!uuidOfSelectedRecording)
  {
    recordingViewController = [(RCFolderViewController *)self recordingViewController];
    uuidOfSelectedRecording = [recordingViewController uuidBeingDisplayed];
  }

  return uuidOfSelectedRecording;
}

- (void)_setupRecentlyDeletedToolbarItems
{
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  collectionView = [recordingsCollectionViewController collectionView];

  if ([collectionView isEditing] && (objc_msgSend(collectionView, "indexPathsForSelectedItems"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = &selRef__handleEraseSelected_;
    v8 = &selRef__handleRecoverSelected_;
    v9 = @"DELETE";
    v10 = @"RECOVER";
  }

  else
  {
    v7 = &selRef__handleEraseAll_;
    v8 = &selRef__handleRecoverAll_;
    v9 = @"DELETE_ALL";
    v10 = @"RECOVER_ALL";
  }

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:v10 value:&stru_100295BB8 table:0];
  recoverRecordingsButton = [(RCFolderViewController *)self recoverRecordingsButton];
  [recoverRecordingsButton setTitle:v12];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:v9 value:&stru_100295BB8 table:0];
  eraseRecordingsButton = [(RCFolderViewController *)self eraseRecordingsButton];
  [eraseRecordingsButton setTitle:v15];

  recoverRecordingsButton2 = [(RCFolderViewController *)self recoverRecordingsButton];
  [recoverRecordingsButton2 setAction:*v8];

  eraseRecordingsButton2 = [(RCFolderViewController *)self eraseRecordingsButton];
  [eraseRecordingsButton2 setAction:*v7];

  recoverRecordingsButton3 = [(RCFolderViewController *)self recoverRecordingsButton];
  [recoverRecordingsButton3 setAccessibilityIdentifier:@"FolderView/RecoverButton"];

  eraseRecordingsButton3 = [(RCFolderViewController *)self eraseRecordingsButton];
  [eraseRecordingsButton3 setAccessibilityIdentifier:@"FolderView/EraseButton"];

  recoverRecordingsButton4 = [(RCFolderViewController *)self recoverRecordingsButton];
  flexBarItem = [(RCFolderViewController *)self flexBarItem];
  v25[1] = flexBarItem;
  eraseRecordingsButton4 = [(RCFolderViewController *)self eraseRecordingsButton];
  v25[2] = eraseRecordingsButton4;
  v24 = [NSArray arrayWithObjects:v25 count:3];
  [(RCFolderViewController *)self setToolbarItems:v24 animated:1];
}

- (void)_setupDeletableToolbarItems
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  collectionView = [recordingsCollectionViewController collectionView];

  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v7 = [indexPathsForSelectedItems count] != 0;

  v8 = [UIBarButtonItem alloc];
  shareToolbarMenuImage = [v3 shareToolbarMenuImage];
  v10 = [v8 initWithImage:shareToolbarMenuImage style:0 target:self action:"_performShareRows:"];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"AX_SHARE_BUTTON" value:&stru_100295BB8 table:0];
  [v10 setAccessibilityLabel:v12];

  [v10 setAccessibilityIdentifier:@"FolderView/ShareButton"];
  [v10 setEnabled:v7];
  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:self action:0];
  v14 = [UIBarButtonItem alloc];
  trashBottomToolbarImage = [v3 trashBottomToolbarImage];
  v16 = [v14 initWithImage:trashBottomToolbarImage style:0 target:self action:"_performDeleteItems:"];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"AX_DELETE" value:&stru_100295BB8 table:0];
  [v16 setAccessibilityLabel:v18];

  [v16 setAccessibilityIdentifier:@"FolderView/DeleteButton"];
  [v16 setEnabled:v7];
  v20[0] = v10;
  v20[1] = v13;
  v20[2] = v16;
  v19 = [NSArray arrayWithObjects:v20 count:3];
  [(RCFolderViewController *)self setToolbarItems:v19 animated:0];
}

- (void)_updateRightBarButtonItems
{
  v10 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v10 usesLargeTitles])
  {
    v3 = +[NSMutableArray array];
    recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
    editButtonItem = [recordingsCollectionViewController editButtonItem];

    if (editButtonItem)
    {
      [v3 addObject:editButtonItem];
    }

    if ([v10 needsSearchBarButtonItemInRecordingsList])
    {
      searchButtonItem = [(RCFolderViewController *)self searchButtonItem];

      if (!searchButtonItem)
      {
        v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:12 target:self action:"presentSearchController"];
        [(RCFolderViewController *)self setSearchButtonItem:v7];
      }

      searchButtonItem2 = [(RCFolderViewController *)self searchButtonItem];
      [v3 addObject:searchButtonItem2];
    }

    navigationItem = [(RCFolderViewController *)self navigationItem];
    [navigationItem setRightBarButtonItems:v3];
  }
}

- (void)_clearNavigationBarPalette
{
  navigationItem = [(RCFolderViewController *)self navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];
  v4 = _bottomPalette;
  if (_bottomPalette)
  {
    [_bottomPalette frame];
    v6 = v5;
    recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
    collectionView = [recordingsCollectionViewController collectionView];

    [collectionView contentOffset];
    v10 = v9;
    v12 = v6 + v11;
    [navigationItem _setBottomPalette:0];
    [collectionView setContentOffset:0 animated:{v10, v12}];
    recordingsCollectionViewController2 = [(RCFolderViewController *)self recordingsCollectionViewController];
    [recordingsCollectionViewController2 scrollToTop];
  }
}

- (void)_performShareRows:(id)rows
{
  rowsCopy = rows;
  libraryActionHandler = [(RCFolderViewController *)self libraryActionHandler];
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  [libraryActionHandler performAction:29 atPosition:0 forUUID:recordingsCollectionViewController sourceController:rowsCopy source:0.0];
}

- (void)_performDeleteItems:(id)items
{
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  [recordingsCollectionViewController deleteSelectedItems];
}

- (void)_handleRecoverSelected:(id)selected
{
  selectedCopy = selected;
  libraryActionHandler = [(RCFolderViewController *)self libraryActionHandler];
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  [libraryActionHandler performAction:20 atPosition:0 forUUID:recordingsCollectionViewController sourceController:selectedCopy source:0.0];
}

- (void)_handleRecoverAll:(id)all
{
  allCopy = all;
  libraryActionHandler = [(RCFolderViewController *)self libraryActionHandler];
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  [libraryActionHandler performAction:21 atPosition:0 forUUID:recordingsCollectionViewController sourceController:allCopy source:0.0];
}

- (void)_handleEraseAll:(id)all
{
  allCopy = all;
  libraryActionHandler = [(RCFolderViewController *)self libraryActionHandler];
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  [libraryActionHandler performAction:18 atPosition:0 forUUID:recordingsCollectionViewController sourceController:allCopy source:0.0];
}

- (void)_handleEraseSelected:(id)selected
{
  selectedCopy = selected;
  libraryActionHandler = [(RCFolderViewController *)self libraryActionHandler];
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  [libraryActionHandler performAction:17 atPosition:0 forUUID:recordingsCollectionViewController sourceController:selectedCopy source:0.0];
}

- (void)assignSearchControllerIfNeeded
{
  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (([v8 needsSearchBarButtonItemInRecordingsList] & 1) == 0)
  {
    navigationItem = [(RCFolderViewController *)self navigationItem];
    searchController = [navigationItem searchController];

    if (!searchController)
    {
      recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
      searchController2 = [recordingsCollectionViewController searchController];

      [navigationItem setSearchController:searchController2];
      [navigationItem setSearchBarPlacementAllowsExternalIntegration:1];
    }

    if ([v8 shouldUseIntegratedButtonSearchBarPlacementInRecordingsList])
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    [navigationItem setPreferredSearchBarPlacement:v7];
  }
}

- (void)presentSearchController
{
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  searchController = [recordingsCollectionViewController searchController];

  [(RCFolderViewController *)self presentViewController:searchController animated:1 completion:0];
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  supportsHideRecordButtonDuringSearch = [v4 supportsHideRecordButtonDuringSearch];

  if (supportsHideRecordButtonDuringSearch)
  {
    recordingsCollectionViewController2 = [(RCFolderViewController *)self recordingsCollectionViewController];
    editStateHandler = [recordingsCollectionViewController2 editStateHandler];
    [editStateHandler updateBottomLayoutForEditing:objc_msgSend(recordingsCollectionViewController2 isSearching:"isEditing") delegate:{1, recordingsCollectionViewController2}];
  }
}

- (void)restyle
{
  [(RCFolderViewController *)self _styleView];

  [(RCFolderViewController *)self _updateSearchPositioning];
}

- (void)_styleView
{
  recordingsCollectionViewController = [(RCFolderViewController *)self recordingsCollectionViewController];
  [recordingsCollectionViewController restyle];
}

- (void)_updateSearchPositioning
{
  [(RCFolderViewController *)self assignSearchControllerIfNeeded];

  [(RCFolderViewController *)self _updateRightBarButtonItems];
}

- (void)finishedTransitionToEditing:(BOOL)editing
{
  editingCopy = editing;
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  alwaysShowsRecordingsCollectionViewToolbarInRecentlyDeleted = [v5 alwaysShowsRecordingsCollectionViewToolbarInRecentlyDeleted];

  if ((alwaysShowsRecordingsCollectionViewToolbarInRecentlyDeleted & 1) == 0)
  {
    navigationController = [(RCFolderViewController *)self navigationController];
    isToolbarHidden = [navigationController isToolbarHidden];
    if (isToolbarHidden == editingCopy)
    {
      [navigationController setToolbarHidden:isToolbarHidden & editingCopy ^ 1 animated:1];
    }
  }
}

- (void)didDismissSiriTipView
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:1 forKey:@"RCSiriTipViewWasDismissed"];

  [(RCFolderViewController *)self _clearNavigationBarPalette];
}

- (void)_updateNavigationBarPaletteHeightIfNeeded
{
  navigationItem = [(RCFolderViewController *)self navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];

  v3 = _bottomPalette;
  if (_bottomPalette)
  {
    contentView = [_bottomPalette contentView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v3 = _bottomPalette;
    if (isKindOfClass)
    {
      contentView2 = [_bottomPalette contentView];
      [contentView2 preferredHeight];
      v8 = v7;
      [_bottomPalette preferredHeight];
      if (v9 != v8)
      {
        [_bottomPalette setPreferredHeight:v8];
      }

      v3 = _bottomPalette;
    }
  }
}

- (void)recordButtonTapped
{
  recordButtonRepository = [(RCFolderViewController *)self recordButtonRepository];
  state = [recordButtonRepository state];

  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        return;
      }

      v5 = 2;
    }

    else
    {
      recordButtonRepository2 = [(RCFolderViewController *)self recordButtonRepository];
      trackState = [recordButtonRepository2 trackState];

      if (trackState == 2)
      {
        v5 = 4;
      }

      else
      {
        v5 = 1;
      }
    }
  }

  else
  {
    switch(state)
    {
      case 2:
        v5 = 3;
        break;
      case 3:
        v5 = 4;
        break;
      case 4:
        v5 = 5;
        break;
      default:
        return;
    }
  }

  recordingViewController = [(RCFolderViewController *)self recordingViewController];
  [recordingViewController actionActivated:v5];
}

@end