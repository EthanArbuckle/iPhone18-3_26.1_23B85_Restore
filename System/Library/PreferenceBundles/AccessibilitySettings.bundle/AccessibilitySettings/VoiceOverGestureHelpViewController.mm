@interface VoiceOverGestureHelpViewController
- (id)_applicableHelpModes;
- (id)_titleForHelpMode:(int64_t)mode;
- (unint64_t)supportedInterfaceOrientations;
- (void)_didChooseHelpMode:(id)mode;
- (void)hide;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation VoiceOverGestureHelpViewController

- (id)_titleForHelpMode:(int64_t)mode
{
  if (mode > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(*(&off_2561F8 + mode), @"VoiceOverSettings");
  }

  return v4;
}

- (id)_applicableHelpModes
{
  v2 = [NSMutableArray arrayWithObject:&off_279AB0];
  v3 = +[AXSettings sharedInstance];
  if ([v3 voiceOverHandwritingEnabled])
  {
    [v2 addObject:&off_279AC8];
  }

  if ([v3 voiceOverBrailleGesturesEnabled])
  {
    [v2 addObject:&off_279AE0];
  }

  return v2;
}

- (void)loadView
{
  v4 = [objc_allocWithZone(VoiceOverGestureHelpView) initWithDelegate:self];
  [(VoiceOverGestureHelpViewController *)self setGestureHelpView:v4];
  gestureHelpView = [(VoiceOverGestureHelpViewController *)self gestureHelpView];
  [(VoiceOverGestureHelpViewController *)self setView:gestureHelpView];
}

- (void)hide
{
  [(VoiceOverGestureHelpView *)self->_gestureHelpView hide];

  [(VoiceOverGestureHelpViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_8];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VoiceOverGestureHelpViewController;
  [(VoiceOverGestureHelpViewController *)&v4 viewDidAppear:appear];
  [(VoiceOverGestureHelpView *)self->_gestureHelpView layoutSubviews];
  [(VoiceOverGestureHelpViewController *)self show];
  [(VoiceOverGestureHelpViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)viewWillAppear:(BOOL)appear
{
  v31.receiver = self;
  v31.super_class = VoiceOverGestureHelpViewController;
  [(VoiceOverGestureHelpViewController *)&v31 viewWillAppear:appear];
  navigationController = [(VoiceOverGestureHelpViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  topItem = [navigationBar topItem];

  [topItem setHidesBackButton:1];
  v7 = settingsLocString(@"VOICEOVER_GESTURE_HELP_NAVBAR_TITLE", @"VoiceOverSettings");
  [topItem setTitle:v7];

  v8 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:self action:"hide"];
  [topItem setRightBarButtonItem:v8];
  _applicableHelpModes = [(VoiceOverGestureHelpViewController *)self _applicableHelpModes];
  v10 = +[AXSettings sharedInstance];
  voiceOverHelpMode = [v10 voiceOverHelpMode];

  v12 = [NSNumber numberWithInteger:voiceOverHelpMode];
  v13 = [_applicableHelpModes indexOfObject:v12];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = +[AXSettings sharedInstance];
    [v14 setVoiceOverHelpMode:0];

    v13 = 0;
  }

  if ([_applicableHelpModes count] < 2)
  {
    [topItem setLeftBarButtonItem:0];
  }

  else
  {
    v26 = v8;
    v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_applicableHelpModes count]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = _applicableHelpModes;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = -[VoiceOverGestureHelpViewController _titleForHelpMode:](self, "_titleForHelpMode:", [*(*(&v27 + 1) + 8 * i) integerValue]);
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v18);
    }

    v22 = [[UISegmentedControl alloc] initWithItems:v15];
    [v22 addTarget:self action:"_didChooseHelpMode:" forControlEvents:4096];
    [v22 setSelectedSegmentIndex:v13];
    traitCollection = [(VoiceOverGestureHelpViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == &dword_0 + 2)
    {
      v25 = [[UIBarButtonItem alloc] initWithCustomView:v22];
      [topItem setLeftBarButtonItem:v25];
      [topItem setTitleView:0];
    }

    else
    {
      [topItem setLeftBarButtonItem:0];
      [topItem setTitleView:v22];
    }

    v8 = v26;
  }

  [(VoiceOverGestureHelpViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VoiceOverGestureHelpViewController;
  [(VoiceOverGestureHelpViewController *)&v4 viewWillDisappear:disappear];
  [(VoiceOverGestureHelpViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VoiceOverGestureHelpViewController;
  [(VoiceOverGestureHelpViewController *)&v4 viewDidDisappear:disappear];
  [(VoiceOverGestureHelpViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (AXDeviceIsPad())
  {
    return 30;
  }

  v3 = +[AXSettings sharedInstance];
  voiceOverHelpMode = [v3 voiceOverHelpMode];

  if (voiceOverHelpMode == &dword_0 + 2)
  {
    return 24;
  }

  else
  {
    return 2;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = VoiceOverGestureHelpViewController;
  [(VoiceOverGestureHelpViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  view = [(VoiceOverGestureHelpViewController *)self view];
  [view layoutSubviews];
}

- (void)_didChooseHelpMode:(id)mode
{
  selectedSegmentIndex = [mode selectedSegmentIndex];
  _applicableHelpModes = [(VoiceOverGestureHelpViewController *)self _applicableHelpModes];
  if (selectedSegmentIndex >= [_applicableHelpModes count])
  {
    _AXAssert();
  }

  if (selectedSegmentIndex >= [_applicableHelpModes count])
  {
    selectedSegmentIndex = [_applicableHelpModes count] - 1;
  }

  v5 = [_applicableHelpModes objectAtIndexedSubscript:selectedSegmentIndex];
  integerValue = [v5 integerValue];

  v7 = +[AXSettings sharedInstance];
  [v7 setVoiceOverHelpMode:integerValue];

  if ([(VoiceOverGestureHelpViewController *)self supportedInterfaceOrientations]!= &dword_1C + 2)
  {
    [(VoiceOverGestureHelpViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

@end