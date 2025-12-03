@interface AVMediaSelectionTableViewController
- (AVMediaSelectionTableViewController)initWithStyle:(int64_t)style;
- (BOOL)_isSelectedOrCurrentAudioMediaSelectionOption:(id)option;
- (BOOL)_isSelectedOrCurrentLegibleMediaSelectionOption:(id)option;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)playerControllerMediaSelectionChanged:(id)changed;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AVMediaSelectionTableViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v40 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  playerController = [(AVMediaSelectionTableViewController *)self playerController];
  [defaultCenter removeObserver:self name:@"AVPlayerControllerSelectedMediaOptionDidChangeNotification" object:playerController];

  selfCopy = self;
  playerController2 = [(AVMediaSelectionTableViewController *)self playerController];
  if (playerController2)
  {
    v12 = [viewCopy cellForRowAtIndexPath:pathCopy];
    representedObject = [v12 representedObject];

    v14 = playerController2;
    v32 = representedObject;
    v33 = pathCopy;
    if ([playerController2 hasAudioMediaSelectionOptions] && !objc_msgSend(pathCopy, "section"))
    {
      selectedAudioMediaSelectionOption = selfCopy->_selectedAudioMediaSelectionOption;
      selfCopy->_selectedAudioMediaSelectionOption = 0;

      [playerController2 setCurrentAudioMediaSelectionOption:representedObject];
    }

    else
    {
      selectedLegibleMediaSelectionOption = selfCopy->_selectedLegibleMediaSelectionOption;
      selfCopy->_selectedLegibleMediaSelectionOption = 0;

      [playerController2 setCurrentLegibleMediaSelectionOption:representedObject];
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [viewCopy visibleCells];
    v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        v19 = 0;
        do
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v35 + 1) + 8 * v19);
          representedObject2 = [v20 representedObject];
          if ([v14 hasAudioMediaSelectionOptions] && (objc_msgSend(viewCopy, "indexPathForCell:", v20), v22 = v14, v23 = viewCopy, v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "section"), v24, viewCopy = v23, v14 = v22, !v25))
          {
            v26 = [(AVMediaSelectionTableViewController *)selfCopy _isSelectedOrCurrentAudioMediaSelectionOption:representedObject2];
          }

          else
          {
            v26 = [(AVMediaSelectionTableViewController *)selfCopy _isSelectedOrCurrentLegibleMediaSelectionOption:representedObject2];
          }

          if (v26)
          {
            v27 = 3;
          }

          else
          {
            v27 = 0;
          }

          [v20 setAccessoryType:v27];

          ++v19;
        }

        while (v17 != v19);
        v28 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        v17 = v28;
      }

      while (v28);
    }

    pathCopy = v33;
    playerController2 = v14;
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  playerController3 = [(AVMediaSelectionTableViewController *)selfCopy playerController];
  [defaultCenter2 addObserver:selfCopy selector:sel_playerControllerMediaSelectionChanged_ name:@"AVPlayerControllerSelectedMediaOptionDidChangeNotification" object:playerController3];
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  textLabel = [headerViewCopy textLabel];
  [AVBackdropView applySecondaryGlyphTintToView:textLabel];

  [AVBackdropView applySecondaryGlyphTintToView:headerViewCopy];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  playerController = [(AVMediaSelectionTableViewController *)self playerController];
  v6 = playerController;
  if (playerController)
  {
    if (((section == 0) & [playerController hasAudioMediaSelectionOptions]) != 0)
    {
      v7 = @"MEDIA_SELECTION_VIEW_CONTROLLER_AUDIO_OPTIONS_HEADER_TITLE";
    }

    else
    {
      v7 = @"MEDIA_SELECTION_VIEW_CONTROLLER_LEGIBLE_OPTIONS_HEADER_TITLE";
    }

    v8 = AVLocalizedString(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  playerController = [(AVMediaSelectionTableViewController *)self playerController];
  v4 = playerController;
  if (playerController)
  {
    hasAudioMediaSelectionOptions = [playerController hasAudioMediaSelectionOptions];
    v6 = [v4 hasLegibleMediaSelectionOptions] + hasAudioMediaSelectionOptions;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"AVMediaSelectionViewControllerCellReuseIdentifier" forIndexPath:pathCopy];
  playerController = [(AVMediaSelectionTableViewController *)self playerController];
  v9 = playerController;
  if (playerController)
  {
    if ([playerController hasAudioMediaSelectionOptions] && !objc_msgSend(pathCopy, "section"))
    {
      audioMediaSelectionOptions = [v9 audioMediaSelectionOptions];
      v11 = [audioMediaSelectionOptions objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      v12 = [(AVMediaSelectionTableViewController *)self _isSelectedOrCurrentAudioMediaSelectionOption:v11];
    }

    else
    {
      audioMediaSelectionOptions = [v9 legibleMediaSelectionOptions];
      v11 = [audioMediaSelectionOptions objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      v12 = [(AVMediaSelectionTableViewController *)self _isSelectedOrCurrentLegibleMediaSelectionOption:v11];
    }

    v13 = v12;

    v14 = [MEMORY[0x1E69DC888] colorWithWhite:0.0745098039 alpha:0.75];
    [v7 setBackgroundColor:v14];

    if (v13)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    [v7 setAccessoryType:v15];
    [v7 setRepresentedObject:v11];
    textLabel = [v7 textLabel];
    localizedDisplayName = [v11 localizedDisplayName];
    [textLabel setText:localizedDisplayName];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v7 setTintColor:whiteColor];
  }

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  playerController = [(AVMediaSelectionTableViewController *)self playerController];
  v6 = playerController;
  if (playerController)
  {
    hasAudioMediaSelectionOptions = [playerController hasAudioMediaSelectionOptions];
    if (section || !hasAudioMediaSelectionOptions)
    {
      legibleMediaSelectionOptions = [v6 legibleMediaSelectionOptions];
    }

    else
    {
      legibleMediaSelectionOptions = [v6 audioMediaSelectionOptions];
    }

    v10 = legibleMediaSelectionOptions;
    v9 = [legibleMediaSelectionOptions count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isSelectedOrCurrentLegibleMediaSelectionOption:(id)option
{
  optionCopy = option;
  selectedLegibleMediaSelectionOption = self->_selectedLegibleMediaSelectionOption;
  if (selectedLegibleMediaSelectionOption)
  {
    currentLegibleMediaSelectionOption = selectedLegibleMediaSelectionOption;
  }

  else
  {
    playerController = [(AVMediaSelectionTableViewController *)self playerController];
    currentLegibleMediaSelectionOption = [playerController currentLegibleMediaSelectionOption];
  }

  objc_storeStrong(&self->_selectedLegibleMediaSelectionOption, currentLegibleMediaSelectionOption);
  if (currentLegibleMediaSelectionOption == optionCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = [(AVMediaSelectionOption *)optionCopy isEqual:currentLegibleMediaSelectionOption];
  }

  return v8;
}

- (BOOL)_isSelectedOrCurrentAudioMediaSelectionOption:(id)option
{
  optionCopy = option;
  selectedAudioMediaSelectionOption = self->_selectedAudioMediaSelectionOption;
  if (selectedAudioMediaSelectionOption)
  {
    currentAudioMediaSelectionOption = selectedAudioMediaSelectionOption;
  }

  else
  {
    playerController = [(AVMediaSelectionTableViewController *)self playerController];
    currentAudioMediaSelectionOption = [playerController currentAudioMediaSelectionOption];
  }

  objc_storeStrong(&self->_selectedAudioMediaSelectionOption, currentAudioMediaSelectionOption);
  if (currentAudioMediaSelectionOption == optionCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = [(AVMediaSelectionOption *)optionCopy isEqual:currentAudioMediaSelectionOption];
  }

  return v8;
}

- (void)playerControllerMediaSelectionChanged:(id)changed
{
  selectedAudioMediaSelectionOption = self->_selectedAudioMediaSelectionOption;
  self->_selectedAudioMediaSelectionOption = 0;

  selectedLegibleMediaSelectionOption = self->_selectedLegibleMediaSelectionOption;
  self->_selectedLegibleMediaSelectionOption = 0;

  tableView = [(AVMediaSelectionTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = AVMediaSelectionTableViewController;
  [(AVMediaSelectionTableViewController *)&v5 viewDidAppear:appear];
  tableView = [(AVMediaSelectionTableViewController *)self tableView];
  [tableView flashScrollIndicators];
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = AVMediaSelectionTableViewController;
  [(AVMediaSelectionTableViewController *)&v15 viewWillAppear:?];
  tableView = [(AVMediaSelectionTableViewController *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__AVMediaSelectionTableViewController_viewWillAppear___block_invoke;
    aBlock[3] = &unk_1E7208B88;
    aBlock[4] = self;
    appearCopy = appear;
    tableView2 = _Block_copy(aBlock);
    transitionCoordinator = [(AVMediaSelectionTableViewController *)self transitionCoordinator];
    v9 = transitionCoordinator;
    if (transitionCoordinator && [transitionCoordinator initiallyInteractive])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__AVMediaSelectionTableViewController_viewWillAppear___block_invoke_2;
      v10[3] = &unk_1E7208720;
      v11 = v9;
      v12 = tableView2;
      [v11 notifyWhenInteractionChangesUsingBlock:v10];
    }

    else
    {
      tableView2[2](tableView2);
    }
  }

  else
  {
    tableView2 = [(AVMediaSelectionTableViewController *)self tableView];
    [tableView2 reloadData];
  }
}

void __54__AVMediaSelectionTableViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 indexPathsForSelectedRows];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [*(a1 + 32) tableView];
        [v9 deselectRowAtIndexPath:v8 animated:*(a1 + 40)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

uint64_t __54__AVMediaSelectionTableViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)viewDidLoad
{
  v26[2] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = AVMediaSelectionTableViewController;
  [(AVMediaSelectionTableViewController *)&v25 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  playerController = [(AVMediaSelectionTableViewController *)self playerController];
  [defaultCenter addObserver:self selector:sel_playerControllerMediaSelectionChanged_ name:@"AVPlayerControllerSelectedMediaOptionDidChangeNotification" object:playerController];

  v5 = [MEMORY[0x1E69DC898] colorEffectSaturate:1.8];
  v6 = [MEMORY[0x1E69DC730] effectWithBlurRadius:30.0];
  v7 = MEMORY[0x1E69DD290];
  v26[0] = v6;
  v26[1] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v9 = [v7 effectCombiningEffects:v8];

  v10 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v9];
  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v11 setAutoresizingMask:18];
  v12 = MEMORY[0x1E69DD850];
  v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.0901960784 alpha:1.0];
  v14 = [v12 layerWithFillColor:v13 opacity:*MEMORY[0x1E6979D40] filterType:0.5];

  v15 = [MEMORY[0x1E69DD840] configWithContentConfig:v14];
  contentConfig = [v15 contentConfig];
  [contentConfig configureLayerView:v11];

  contentView = [v10 contentView];
  [contentView addSubview:v11];

  tableView = [(AVMediaSelectionTableViewController *)self tableView];
  [tableView setBackgroundView:v10];

  tableView2 = [(AVMediaSelectionTableViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"AVMediaSelectionViewControllerCellReuseIdentifier"];

  tableView3 = [(AVMediaSelectionTableViewController *)self tableView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [tableView3 setBackgroundColor:clearColor];

  tableView4 = [(AVMediaSelectionTableViewController *)self tableView];
  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v23 lineHeight];
  [tableView4 setEstimatedRowHeight:?];

  tableView5 = [(AVMediaSelectionTableViewController *)self tableView];
  [tableView5 setSeparatorStyle:1];
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v8 = "[AVMediaSelectionTableViewController dealloc]";
    v9 = 1024;
    v10 = 93;
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  playerController = [(AVMediaSelectionTableViewController *)self playerController];
  [defaultCenter removeObserver:self name:@"AVPlayerControllerSelectedMediaOptionDidChangeNotification" object:playerController];

  v6.receiver = self;
  v6.super_class = AVMediaSelectionTableViewController;
  [(AVMediaSelectionTableViewController *)&v6 dealloc];
}

- (AVMediaSelectionTableViewController)initWithStyle:(int64_t)style
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[AVMediaSelectionTableViewController initWithStyle:]";
    v12 = 1024;
    v13 = 79;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v9.receiver = self;
  v9.super_class = AVMediaSelectionTableViewController;
  v6 = [(AVMediaSelectionTableViewController *)&v9 initWithStyle:style];
  if (v6)
  {
    v7 = AVLocalizedString(@"MEDIA_SELECTION_VIEW_CONTROLLER_NAVIGATION_ITEM_TITLE");
    [(AVMediaSelectionTableViewController *)v6 setTitle:v7];
  }

  return v6;
}

@end