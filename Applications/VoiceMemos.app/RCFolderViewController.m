@interface RCFolderViewController
- (BOOL)_shouldDisplaySiriTipView;
- (BOOL)isRecordButtonVisible;
- (RCFolderViewController)initWithBuiltInFolderType:(int64_t)a3 folderUUID:(id)a4;
- (RCFolderViewController)initWithUserFolderNamed:(id)a3 folderUUID:(id)a4;
- (RCLibraryActionHandler)libraryActionHandler;
- (RCRecordingViewControllerDelegate)recordingViewControllerDelegate;
- (id)_selectedUUIDForPlayback;
- (id)undoManager;
- (void)_clearNavigationBarPalette;
- (void)_commonInit;
- (void)_handleEraseAll:(id)a3;
- (void)_handleEraseSelected:(id)a3;
- (void)_handleRecoverAll:(id)a3;
- (void)_handleRecoverSelected:(id)a3;
- (void)_performDeleteItems:(id)a3;
- (void)_performShareRows:(id)a3;
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
- (void)finishedTransitionToEditing:(BOOL)a3;
- (void)loadView;
- (void)presentSearchController;
- (void)recordButtonTapped;
- (void)restyle;
- (void)setFolderTitle:(id)a3;
- (void)setLibraryActionHandler:(id)a3;
- (void)setRecordingViewController:(id)a3;
- (void)setRecordingViewControllerDelegate:(id)a3;
- (void)setRecordingsCollectionViewController:(id)a3;
- (void)updateNavigationItemForCurrentState;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RCFolderViewController

- (BOOL)_shouldDisplaySiriTipView
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [v3 supportsSiriTipView];

  v5 = +[AFPreferences sharedPreferences];
  v6 = [v5 assistantIsEnabled];

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"RCSiriTipViewWasDismissed"];

  if (v4)
  {
    v9 = [(RCFolderViewController *)self supportsRecording];
    if (v9)
    {
      LOBYTE(v9) = v6 & (v8 ^ 1);
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_commonInit
{
  v3 = objc_alloc_init(_TtC10VoiceMemos24RCRecordButtonRepository);
  [(RCFolderViewController *)self setRecordButtonRepository:v3];

  v4 = [RCRecordingViewController alloc];
  v5 = [(RCFolderViewController *)self recordButtonRepository];
  v6 = [(RCRecordingViewController *)v4 initWithRecordButtonRepository:v5 interactionHandler:self];

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
    v3 = [(RCFolderViewController *)self recordingsCollectionViewController];
    v4 = [v3 recordingsDataCoordinator];
    v5 = [v4 searchString];
    v6 = [v5 length];

    v7 = [v3 allUUIDs];
    v8 = [v7 count];

    if (v6)
    {
      v9 = [(RCFolderViewController *)self folderTitle];
      v10 = [(RCFolderViewController *)self recordingsCollectionViewController];
      v11 = [v10 recordingsDataCoordinator];
      v12 = [v11 searchScope];

      if (!v12)
      {
        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"ALL_RECORDINGS" value:&stru_100295BB8 table:0];

        v9 = v14;
      }

      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"%@ value:%lu results" table:{&stru_100295BB8, 0}];
      v17 = [NSString localizedStringWithFormat:v16, v9, v8];
      v18 = [(RCFolderViewController *)self navigationItem];
      [v18 setSubtitle:v17];
    }

    else
    {
      if (!v8)
      {
        v9 = [(RCFolderViewController *)self navigationItem];
        [v9 setSubtitle:0];
        goto LABEL_9;
      }

      v9 = +[NSBundle mainBundle];
      v15 = [v9 localizedStringForKey:@"%lu Recordings" value:&stru_100295BB8 table:0];
      v19 = [NSString localizedStringWithFormat:v15, v8];
      v20 = [(RCFolderViewController *)self navigationItem];
      [v20 setSubtitle:v19];
    }

LABEL_9:
  }
}

- (void)loadView
{
  v3 = [_TtC10VoiceMemos24RCRecordButtonAppFactory alloc];
  v4 = [(RCFolderViewController *)self recordButtonRepository];
  v5 = [(RCRecordButtonAppFactory *)v3 initWithRecordButtonRepository:v4 interactionHandler:self];
  [(RCFolderViewController *)self setRecordButtonFactory:v5];

  v6 = [_TtC10VoiceMemos12RCFolderView alloc];
  v7 = [(RCFolderViewController *)self recordButtonFactory];
  v8 = [(RCFolderViewController *)self recordingsCollectionViewController];
  v9 = [v8 view];
  v10 = [(RCFolderViewController *)self recordingsCollectionViewController];
  v11 = [v10 collectionView];
  v13 = [(RCFolderView *)v6 initWithRecordButtonFactory:v7 recordingsCollectionViewControllerWrapperView:v9 recordingsCollectionView:v11 allowsNewRecordings:[(RCFolderViewController *)self supportsRecording]];

  [(RCFolderViewController *)self setView:v13];
  v12 = [(RCFolderViewController *)self view];
  [v12 setAccessibilityIdentifier:@"FolderView"];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = RCFolderViewController;
  [(RCFolderViewController *)&v9 viewDidLoad];
  v3 = [(RCFolderViewController *)self view];
  [v3 setDelegate:self];

  v4 = [(RCFolderViewController *)self view];
  v5 = [(RCFolderViewController *)self recordingsCollectionViewController];
  [v5 setEditStateHandler:v4];

  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v6 usesLargeTitles])
  {
    v7 = [(RCFolderViewController *)self navigationItem];
    [v7 setLargeTitleDisplayMode:1];

    v8 = [(RCFolderViewController *)self navigationItem];
    [v8 _setSupportsTwoLineLargeTitles:1];
  }

  [(RCFolderViewController *)self _updateRightBarButtonItems];
  [(RCFolderViewController *)self _setupNavigationBarPalette];
  [(RCFolderViewController *)self assignSearchControllerIfNeeded];
}

- (void)_setupNavigationBarPalette
{
  v16 = [(RCFolderViewController *)self navigationItem];
  if ([(RCFolderViewController *)self shouldDisplaySiriTipView])
  {
    v3 = [v16 _bottomPalette];

    if (!v3)
    {
      v4 = [(RCFolderViewController *)self navigationController];
      v5 = [v4 navigationBar];
      [v5 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = [[_TtC10VoiceMemos22RCSiriTipContainerView alloc] initWithFrame:v7, v9, v11, v13];
      [(RCSiriTipContainerView *)v14 setDelegate:self];
      v15 = [[_UINavigationBarPalette alloc] initWithContentView:v14];
      [v16 _setBottomPalette:v15];
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
  v4 = [v3 usesLargeTitles];

  if (v4)
  {
    v17 = [(RCFolderViewController *)self navigationItem];
    [v17 _setSupportsTwoLineLargeTitles:1];
    v5 = [(RCFolderViewController *)self recordingsCollectionViewController];
    v6 = [v5 collectionView];
    v7 = [v6 indexPathsForSelectedItems];
    v8 = [v7 count];

    v9 = [v6 isEditing];
    v10 = [v5 recordingsDataCoordinator];
    v11 = [v10 searchString];
    v12 = [v11 length];

    if (v9 && v8)
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"%lu Selected" value:&stru_100295BB8 table:0];
      v15 = [NSString localizedStringWithFormat:v14, v8];
      [v17 setTitle:v15];
    }

    else if (v12)
    {
      v13 = +[NSBundle mainBundle];
      v16 = [v13 localizedStringForKey:@"SEARCHING" value:&stru_100295BB8 table:0];
      [v17 setTitle:v16];
    }

    else
    {
      v13 = [(RCFolderViewController *)self folderTitle];
      [v17 setTitle:v13];
    }
  }
}

- (void)_updateToolbarItems
{
  v3 = [(RCFolderViewController *)self recordingsCollectionViewController];
  v4 = [v3 collectionView];
  v5 = [v4 isEditing];

  if (v5)
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

- (void)setRecordingViewControllerDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_recordingViewControllerDelegate, v4);
  v5 = [(RCFolderViewController *)self recordingViewController];
  [v5 setRecordingViewControllerDelegate:v4];
}

- (void)setRecordingViewController:(id)a3
{
  objc_storeStrong(&self->_recordingViewController, a3);
  v6 = a3;
  v5 = [(RCFolderViewController *)self recordingViewControllerDelegate];
  [v6 setRecordingViewControllerDelegate:v5];

  [(RCFolderViewController *)self addChildViewController:v6];
  [v6 didMoveToParentViewController:self];
}

- (void)setRecordingsCollectionViewController:(id)a3
{
  objc_storeStrong(&self->_recordingsCollectionViewController, a3);
  v5 = a3;
  [v5 willMoveToParentViewController:self];
  [(RCFolderViewController *)self addChildViewController:v5];
  [v5 didMoveToParentViewController:self];
  v6 = [(RCFolderViewController *)self libraryActionHandler];
  [(RCRecordingsCollectionViewController *)self->_recordingsCollectionViewController setLibraryActionHandler:v6];
}

- (void)setLibraryActionHandler:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_libraryActionHandler, v4);
  v5 = [(RCFolderViewController *)self recordingsCollectionViewController];
  [v5 setLibraryActionHandler:v4];
}

- (void)setFolderTitle:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  folderTitle = self->_folderTitle;
  self->_folderTitle = v5;

  v7 = [(RCFolderViewController *)self navigationItem];
  [v7 setTitle:v4];

  [(RCFolderViewController *)self _updateNavigationBarSubtitle];
}

- (RCFolderViewController)initWithUserFolderNamed:(id)a3 folderUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RCFolderViewController;
  v8 = [(RCFolderViewController *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_folderType = 4;
    v10 = [v7 copy];
    folderUUID = v9->_folderUUID;
    v9->_folderUUID = v10;

    v12 = [[RCRecordingsCollectionViewController alloc] initWithUserFolderNamed:v6 folderUUID:v7];
    [(RCFolderViewController *)v9 setRecordingsCollectionViewController:v12];

    [(RCFolderViewController *)v9 _commonInit];
  }

  return v9;
}

- (RCFolderViewController)initWithBuiltInFolderType:(int64_t)a3 folderUUID:(id)a4
{
  v6 = a4;
  v36.receiver = self;
  v36.super_class = RCFolderViewController;
  v7 = [(RCFolderViewController *)&v36 init];
  v8 = v7;
  if (v7)
  {
    v7->_folderType = a3;
    v9 = [v6 copy];
    folderUUID = v8->_folderUUID;
    v8->_folderUUID = v9;

    [(RCFolderViewController *)v8 _commonInit];
    if (a3 == 3)
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
      v21 = [(RCFolderViewController *)v8 recoverRecordingsButton];
      [v21 setPossibleTitles:v20];

      v22 = [(RCFolderViewController *)v8 recoverRecordingsButton];
      [v22 setEnabled:1];

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
      v33 = [(RCFolderViewController *)v8 eraseRecordingsButton];
      [v33 setPossibleTitles:v32];

      v34 = [(RCFolderViewController *)v8 eraseRecordingsButton];
      [(RCRecordingsCollectionViewController *)v34 setEnabled:1];
    }

    else
    {
      v34 = [[RCRecordingsCollectionViewController alloc] initWithBuiltInFolderType:a3 folderUUID:v6];
      [(RCFolderViewController *)v8 setRecordingsCollectionViewController:v34];
    }
  }

  return v8;
}

- (BOOL)isRecordButtonVisible
{
  if ([(RCFolderViewController *)self supportsRecording])
  {
    v3 = [(RCFolderViewController *)self view];
    v4 = [v3 isBottomContainerViewHidden] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = RCFolderViewController;
  [(RCFolderViewController *)&v10 viewWillAppear:a3];
  v4 = [(RCFolderViewController *)self setupBlock];

  if (v4)
  {
    v5 = [(RCFolderViewController *)self setupBlock];
    v5[2]();
  }

  v6 = [(RCFolderViewController *)self folderTitle];
  v7 = [(RCFolderViewController *)self navigationItem];
  [v7 setTitle:v6];

  [(RCFolderViewController *)self _updateNavigationBarSubtitle];
  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  LOBYTE(v7) = [v8 usesLargeTitles];

  if ((v7 & 1) == 0 && [(RCFolderViewController *)self folderType]== 3)
  {
    [(RCFolderViewController *)self _setupRecentlyDeletedToolbarItems];
    v9 = [(RCFolderViewController *)self navigationController];
    [v9 setToolbarHidden:0 animated:1];
  }

  [(RCFolderViewController *)self setIsInactive:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = RCFolderViewController;
  [(RCFolderViewController *)&v6 viewDidAppear:a3];
  v4 = [(RCFolderViewController *)self navigationItem];
  v5 = [v4 _bottomPalette];

  if (v5)
  {
    [v5 setMinimumHeight:0.0];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCFolderViewController *)self teardownBlock];

  if (v5)
  {
    v6 = [(RCFolderViewController *)self teardownBlock];
    v6[2]();
  }

  v7.receiver = self;
  v7.super_class = RCFolderViewController;
  [(RCFolderViewController *)&v7 viewDidDisappear:v3];
  [(RCFolderViewController *)self setIsInactive:1];
}

- (id)_selectedUUIDForPlayback
{
  v3 = [(RCFolderViewController *)self recordingsCollectionViewController];
  v4 = [v3 uuidOfSelectedRecording];

  if (!v4)
  {
    v5 = [(RCFolderViewController *)self recordingViewController];
    v4 = [v5 uuidBeingDisplayed];
  }

  return v4;
}

- (void)_setupRecentlyDeletedToolbarItems
{
  v3 = [(RCFolderViewController *)self recordingsCollectionViewController];
  v4 = [v3 collectionView];

  if ([v4 isEditing] && (objc_msgSend(v4, "indexPathsForSelectedItems"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
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
  v13 = [(RCFolderViewController *)self recoverRecordingsButton];
  [v13 setTitle:v12];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:v9 value:&stru_100295BB8 table:0];
  v16 = [(RCFolderViewController *)self eraseRecordingsButton];
  [v16 setTitle:v15];

  v17 = [(RCFolderViewController *)self recoverRecordingsButton];
  [v17 setAction:*v8];

  v18 = [(RCFolderViewController *)self eraseRecordingsButton];
  [v18 setAction:*v7];

  v19 = [(RCFolderViewController *)self recoverRecordingsButton];
  [v19 setAccessibilityIdentifier:@"FolderView/RecoverButton"];

  v20 = [(RCFolderViewController *)self eraseRecordingsButton];
  [v20 setAccessibilityIdentifier:@"FolderView/EraseButton"];

  v21 = [(RCFolderViewController *)self recoverRecordingsButton];
  v22 = [(RCFolderViewController *)self flexBarItem];
  v25[1] = v22;
  v23 = [(RCFolderViewController *)self eraseRecordingsButton];
  v25[2] = v23;
  v24 = [NSArray arrayWithObjects:v25 count:3];
  [(RCFolderViewController *)self setToolbarItems:v24 animated:1];
}

- (void)_setupDeletableToolbarItems
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [(RCFolderViewController *)self recordingsCollectionViewController];
  v5 = [v4 collectionView];

  v6 = [v5 indexPathsForSelectedItems];
  v7 = [v6 count] != 0;

  v8 = [UIBarButtonItem alloc];
  v9 = [v3 shareToolbarMenuImage];
  v10 = [v8 initWithImage:v9 style:0 target:self action:"_performShareRows:"];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"AX_SHARE_BUTTON" value:&stru_100295BB8 table:0];
  [v10 setAccessibilityLabel:v12];

  [v10 setAccessibilityIdentifier:@"FolderView/ShareButton"];
  [v10 setEnabled:v7];
  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:self action:0];
  v14 = [UIBarButtonItem alloc];
  v15 = [v3 trashBottomToolbarImage];
  v16 = [v14 initWithImage:v15 style:0 target:self action:"_performDeleteItems:"];

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
    v4 = [(RCFolderViewController *)self recordingsCollectionViewController];
    v5 = [v4 editButtonItem];

    if (v5)
    {
      [v3 addObject:v5];
    }

    if ([v10 needsSearchBarButtonItemInRecordingsList])
    {
      v6 = [(RCFolderViewController *)self searchButtonItem];

      if (!v6)
      {
        v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:12 target:self action:"presentSearchController"];
        [(RCFolderViewController *)self setSearchButtonItem:v7];
      }

      v8 = [(RCFolderViewController *)self searchButtonItem];
      [v3 addObject:v8];
    }

    v9 = [(RCFolderViewController *)self navigationItem];
    [v9 setRightBarButtonItems:v3];
  }
}

- (void)_clearNavigationBarPalette
{
  v14 = [(RCFolderViewController *)self navigationItem];
  v3 = [v14 _bottomPalette];
  v4 = v3;
  if (v3)
  {
    [v3 frame];
    v6 = v5;
    v7 = [(RCFolderViewController *)self recordingsCollectionViewController];
    v8 = [v7 collectionView];

    [v8 contentOffset];
    v10 = v9;
    v12 = v6 + v11;
    [v14 _setBottomPalette:0];
    [v8 setContentOffset:0 animated:{v10, v12}];
    v13 = [(RCFolderViewController *)self recordingsCollectionViewController];
    [v13 scrollToTop];
  }
}

- (void)_performShareRows:(id)a3
{
  v4 = a3;
  v6 = [(RCFolderViewController *)self libraryActionHandler];
  v5 = [(RCFolderViewController *)self recordingsCollectionViewController];
  [v6 performAction:29 atPosition:0 forUUID:v5 sourceController:v4 source:0.0];
}

- (void)_performDeleteItems:(id)a3
{
  v3 = [(RCFolderViewController *)self recordingsCollectionViewController];
  [v3 deleteSelectedItems];
}

- (void)_handleRecoverSelected:(id)a3
{
  v4 = a3;
  v6 = [(RCFolderViewController *)self libraryActionHandler];
  v5 = [(RCFolderViewController *)self recordingsCollectionViewController];
  [v6 performAction:20 atPosition:0 forUUID:v5 sourceController:v4 source:0.0];
}

- (void)_handleRecoverAll:(id)a3
{
  v4 = a3;
  v6 = [(RCFolderViewController *)self libraryActionHandler];
  v5 = [(RCFolderViewController *)self recordingsCollectionViewController];
  [v6 performAction:21 atPosition:0 forUUID:v5 sourceController:v4 source:0.0];
}

- (void)_handleEraseAll:(id)a3
{
  v4 = a3;
  v6 = [(RCFolderViewController *)self libraryActionHandler];
  v5 = [(RCFolderViewController *)self recordingsCollectionViewController];
  [v6 performAction:18 atPosition:0 forUUID:v5 sourceController:v4 source:0.0];
}

- (void)_handleEraseSelected:(id)a3
{
  v4 = a3;
  v6 = [(RCFolderViewController *)self libraryActionHandler];
  v5 = [(RCFolderViewController *)self recordingsCollectionViewController];
  [v6 performAction:17 atPosition:0 forUUID:v5 sourceController:v4 source:0.0];
}

- (void)assignSearchControllerIfNeeded
{
  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (([v8 needsSearchBarButtonItemInRecordingsList] & 1) == 0)
  {
    v3 = [(RCFolderViewController *)self navigationItem];
    v4 = [v3 searchController];

    if (!v4)
    {
      v5 = [(RCFolderViewController *)self recordingsCollectionViewController];
      v6 = [v5 searchController];

      [v3 setSearchController:v6];
      [v3 setSearchBarPlacementAllowsExternalIntegration:1];
    }

    if ([v8 shouldUseIntegratedButtonSearchBarPlacementInRecordingsList])
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    [v3 setPreferredSearchBarPlacement:v7];
  }
}

- (void)presentSearchController
{
  v3 = [(RCFolderViewController *)self recordingsCollectionViewController];
  v8 = [v3 searchController];

  [(RCFolderViewController *)self presentViewController:v8 animated:1 completion:0];
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  v5 = [v4 supportsHideRecordButtonDuringSearch];

  if (v5)
  {
    v6 = [(RCFolderViewController *)self recordingsCollectionViewController];
    v7 = [v6 editStateHandler];
    [v7 updateBottomLayoutForEditing:objc_msgSend(v6 isSearching:"isEditing") delegate:{1, v6}];
  }
}

- (void)restyle
{
  [(RCFolderViewController *)self _styleView];

  [(RCFolderViewController *)self _updateSearchPositioning];
}

- (void)_styleView
{
  v2 = [(RCFolderViewController *)self recordingsCollectionViewController];
  [v2 restyle];
}

- (void)_updateSearchPositioning
{
  [(RCFolderViewController *)self assignSearchControllerIfNeeded];

  [(RCFolderViewController *)self _updateRightBarButtonItems];
}

- (void)finishedTransitionToEditing:(BOOL)a3
{
  v3 = a3;
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v6 = [v5 alwaysShowsRecordingsCollectionViewToolbarInRecentlyDeleted];

  if ((v6 & 1) == 0)
  {
    v8 = [(RCFolderViewController *)self navigationController];
    v7 = [v8 isToolbarHidden];
    if (v7 == v3)
    {
      [v8 setToolbarHidden:v7 & v3 ^ 1 animated:1];
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
  v2 = [(RCFolderViewController *)self navigationItem];
  v10 = [v2 _bottomPalette];

  v3 = v10;
  if (v10)
  {
    v4 = [v10 contentView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v3 = v10;
    if (isKindOfClass)
    {
      v6 = [v10 contentView];
      [v6 preferredHeight];
      v8 = v7;
      [v10 preferredHeight];
      if (v9 != v8)
      {
        [v10 setPreferredHeight:v8];
      }

      v3 = v10;
    }
  }
}

- (void)recordButtonTapped
{
  v3 = [(RCFolderViewController *)self recordButtonRepository];
  v4 = [v3 state];

  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = 2;
    }

    else
    {
      v6 = [(RCFolderViewController *)self recordButtonRepository];
      v7 = [v6 trackState];

      if (v7 == 2)
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
    switch(v4)
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

  v8 = [(RCFolderViewController *)self recordingViewController];
  [v8 actionActivated:v5];
}

@end