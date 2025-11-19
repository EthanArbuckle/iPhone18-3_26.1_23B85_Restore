@interface AVMediaSelectionTableViewController
- (AVMediaSelectionTableViewController)initWithStyle:(int64_t)a3;
- (BOOL)_isSelectedOrCurrentAudioMediaSelectionOption:(id)a3;
- (BOOL)_isSelectedOrCurrentLegibleMediaSelectionOption:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)playerControllerMediaSelectionChanged:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AVMediaSelectionTableViewController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [(AVMediaSelectionTableViewController *)self playerController];
  [v8 removeObserver:self name:@"AVPlayerControllerSelectedMediaOptionDidChangeNotification" object:v9];

  v10 = self;
  v11 = [(AVMediaSelectionTableViewController *)self playerController];
  if (v11)
  {
    v12 = [v6 cellForRowAtIndexPath:v7];
    v13 = [v12 representedObject];

    v14 = v11;
    v32 = v13;
    v33 = v7;
    if ([v11 hasAudioMediaSelectionOptions] && !objc_msgSend(v7, "section"))
    {
      selectedAudioMediaSelectionOption = v10->_selectedAudioMediaSelectionOption;
      v10->_selectedAudioMediaSelectionOption = 0;

      [v11 setCurrentAudioMediaSelectionOption:v13];
    }

    else
    {
      selectedLegibleMediaSelectionOption = v10->_selectedLegibleMediaSelectionOption;
      v10->_selectedLegibleMediaSelectionOption = 0;

      [v11 setCurrentLegibleMediaSelectionOption:v13];
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [v6 visibleCells];
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
          v21 = [v20 representedObject];
          if ([v14 hasAudioMediaSelectionOptions] && (objc_msgSend(v6, "indexPathForCell:", v20), v22 = v14, v23 = v6, v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "section"), v24, v6 = v23, v14 = v22, !v25))
          {
            v26 = [(AVMediaSelectionTableViewController *)v10 _isSelectedOrCurrentAudioMediaSelectionOption:v21];
          }

          else
          {
            v26 = [(AVMediaSelectionTableViewController *)v10 _isSelectedOrCurrentLegibleMediaSelectionOption:v21];
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

    v7 = v33;
    v11 = v14;
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];
  v29 = [MEMORY[0x1E696AD88] defaultCenter];
  v30 = [(AVMediaSelectionTableViewController *)v10 playerController];
  [v29 addObserver:v10 selector:sel_playerControllerMediaSelectionChanged_ name:@"AVPlayerControllerSelectedMediaOptionDidChangeNotification" object:v30];
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v6 = a4;
  v5 = [v6 textLabel];
  [AVBackdropView applySecondaryGlyphTintToView:v5];

  [AVBackdropView applySecondaryGlyphTintToView:v6];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(AVMediaSelectionTableViewController *)self playerController];
  v6 = v5;
  if (v5)
  {
    if (((a4 == 0) & [v5 hasAudioMediaSelectionOptions]) != 0)
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

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(AVMediaSelectionTableViewController *)self playerController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hasAudioMediaSelectionOptions];
    v6 = [v4 hasLegibleMediaSelectionOptions] + v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"AVMediaSelectionViewControllerCellReuseIdentifier" forIndexPath:v6];
  v8 = [(AVMediaSelectionTableViewController *)self playerController];
  v9 = v8;
  if (v8)
  {
    if ([v8 hasAudioMediaSelectionOptions] && !objc_msgSend(v6, "section"))
    {
      v10 = [v9 audioMediaSelectionOptions];
      v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
      v12 = [(AVMediaSelectionTableViewController *)self _isSelectedOrCurrentAudioMediaSelectionOption:v11];
    }

    else
    {
      v10 = [v9 legibleMediaSelectionOptions];
      v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
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
    v16 = [v7 textLabel];
    v17 = [v11 localizedDisplayName];
    [v16 setText:v17];

    v18 = [MEMORY[0x1E69DC888] whiteColor];
    [v7 setTintColor:v18];
  }

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(AVMediaSelectionTableViewController *)self playerController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hasAudioMediaSelectionOptions];
    if (a4 || !v7)
    {
      v8 = [v6 legibleMediaSelectionOptions];
    }

    else
    {
      v8 = [v6 audioMediaSelectionOptions];
    }

    v10 = v8;
    v9 = [v8 count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isSelectedOrCurrentLegibleMediaSelectionOption:(id)a3
{
  v4 = a3;
  selectedLegibleMediaSelectionOption = self->_selectedLegibleMediaSelectionOption;
  if (selectedLegibleMediaSelectionOption)
  {
    v6 = selectedLegibleMediaSelectionOption;
  }

  else
  {
    v7 = [(AVMediaSelectionTableViewController *)self playerController];
    v6 = [v7 currentLegibleMediaSelectionOption];
  }

  objc_storeStrong(&self->_selectedLegibleMediaSelectionOption, v6);
  if (v6 == v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = [(AVMediaSelectionOption *)v4 isEqual:v6];
  }

  return v8;
}

- (BOOL)_isSelectedOrCurrentAudioMediaSelectionOption:(id)a3
{
  v4 = a3;
  selectedAudioMediaSelectionOption = self->_selectedAudioMediaSelectionOption;
  if (selectedAudioMediaSelectionOption)
  {
    v6 = selectedAudioMediaSelectionOption;
  }

  else
  {
    v7 = [(AVMediaSelectionTableViewController *)self playerController];
    v6 = [v7 currentAudioMediaSelectionOption];
  }

  objc_storeStrong(&self->_selectedAudioMediaSelectionOption, v6);
  if (v6 == v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = [(AVMediaSelectionOption *)v4 isEqual:v6];
  }

  return v8;
}

- (void)playerControllerMediaSelectionChanged:(id)a3
{
  selectedAudioMediaSelectionOption = self->_selectedAudioMediaSelectionOption;
  self->_selectedAudioMediaSelectionOption = 0;

  selectedLegibleMediaSelectionOption = self->_selectedLegibleMediaSelectionOption;
  self->_selectedLegibleMediaSelectionOption = 0;

  v6 = [(AVMediaSelectionTableViewController *)self tableView];
  [v6 reloadData];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AVMediaSelectionTableViewController;
  [(AVMediaSelectionTableViewController *)&v5 viewDidAppear:a3];
  v4 = [(AVMediaSelectionTableViewController *)self tableView];
  [v4 flashScrollIndicators];
}

- (void)viewWillAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = AVMediaSelectionTableViewController;
  [(AVMediaSelectionTableViewController *)&v15 viewWillAppear:?];
  v5 = [(AVMediaSelectionTableViewController *)self tableView];
  v6 = [v5 numberOfSections];

  if (v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__AVMediaSelectionTableViewController_viewWillAppear___block_invoke;
    aBlock[3] = &unk_1E7208B88;
    aBlock[4] = self;
    v14 = a3;
    v7 = _Block_copy(aBlock);
    v8 = [(AVMediaSelectionTableViewController *)self transitionCoordinator];
    v9 = v8;
    if (v8 && [v8 initiallyInteractive])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__AVMediaSelectionTableViewController_viewWillAppear___block_invoke_2;
      v10[3] = &unk_1E7208720;
      v11 = v9;
      v12 = v7;
      [v11 notifyWhenInteractionChangesUsingBlock:v10];
    }

    else
    {
      v7[2](v7);
    }
  }

  else
  {
    v7 = [(AVMediaSelectionTableViewController *)self tableView];
    [v7 reloadData];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [(AVMediaSelectionTableViewController *)self playerController];
  [v3 addObserver:self selector:sel_playerControllerMediaSelectionChanged_ name:@"AVPlayerControllerSelectedMediaOptionDidChangeNotification" object:v4];

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
  v16 = [v15 contentConfig];
  [v16 configureLayerView:v11];

  v17 = [v10 contentView];
  [v17 addSubview:v11];

  v18 = [(AVMediaSelectionTableViewController *)self tableView];
  [v18 setBackgroundView:v10];

  v19 = [(AVMediaSelectionTableViewController *)self tableView];
  [v19 registerClass:objc_opt_class() forCellReuseIdentifier:@"AVMediaSelectionViewControllerCellReuseIdentifier"];

  v20 = [(AVMediaSelectionTableViewController *)self tableView];
  v21 = [MEMORY[0x1E69DC888] clearColor];
  [v20 setBackgroundColor:v21];

  v22 = [(AVMediaSelectionTableViewController *)self tableView];
  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v23 lineHeight];
  [v22 setEstimatedRowHeight:?];

  v24 = [(AVMediaSelectionTableViewController *)self tableView];
  [v24 setSeparatorStyle:1];
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
    v12 = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [(AVMediaSelectionTableViewController *)self playerController];
  [v4 removeObserver:self name:@"AVPlayerControllerSelectedMediaOptionDidChangeNotification" object:v5];

  v6.receiver = self;
  v6.super_class = AVMediaSelectionTableViewController;
  [(AVMediaSelectionTableViewController *)&v6 dealloc];
}

- (AVMediaSelectionTableViewController)initWithStyle:(int64_t)a3
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
    v15 = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v9.receiver = self;
  v9.super_class = AVMediaSelectionTableViewController;
  v6 = [(AVMediaSelectionTableViewController *)&v9 initWithStyle:a3];
  if (v6)
  {
    v7 = AVLocalizedString(@"MEDIA_SELECTION_VIEW_CONTROLLER_NAVIGATION_ITEM_TITLE");
    [(AVMediaSelectionTableViewController *)v6 setTitle:v7];
  }

  return v6;
}

@end