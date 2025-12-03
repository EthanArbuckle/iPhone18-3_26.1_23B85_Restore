@interface AXCCTextSizeSliderModuleViewController
- (AXCCTextSizeModuleViewControllerDelegate)textSizeDelegate;
- (id)createSliderView;
- (id)sliderView;
- (void)_commitTextSizeIfNeeded;
- (void)_postControlCenterStatus;
- (void)_refreshTextSizes;
- (void)_setupSlider;
- (void)_sliderTapped:(id)tapped;
- (void)_sliderValueDidChange:(id)change;
- (void)_sliderValueDidCommit:(id)commit;
- (void)setContentRenderingMode:(unint64_t)mode;
- (void)setHelper:(id)helper;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation AXCCTextSizeSliderModuleViewController

- (void)setHelper:(id)helper
{
  objc_storeStrong(&self->_helper, helper);
  helperCopy = helper;
  [(AXCCTextSizeHelper *)self->_helper setDelegate:self];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = AXCCTextSizeSliderModuleViewController;
  [(CCUISliderModuleViewController *)&v10 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x29EDB8D80]);
  v4 = [v3 initWithObjects:{*MEMORY[0x29EDC8098], *MEMORY[0x29EDC80B0], *MEMORY[0x29EDC80A8], *MEMORY[0x29EDC80A0], *MEMORY[0x29EDC8090], *MEMORY[0x29EDC8088], *MEMORY[0x29EDC8080], *MEMORY[0x29EDC8070], *MEMORY[0x29EDC8068], *MEMORY[0x29EDC8060], *MEMORY[0x29EDC8058], *MEMORY[0x29EDC8050], 0}];
  contentSizeCategories = self->_contentSizeCategories;
  self->_contentSizeCategories = v4;

  sliderView = [(AXCCTextSizeSliderModuleViewController *)self sliderView];
  v7 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"textformat.size"];
  [sliderView setGlyphImage:v7];

  systemBlueColor = [MEMORY[0x29EDC7A00] systemBlueColor];
  [sliderView setGlyphTintColor:systemBlueColor];

  [(AXCCTextSizeSliderModuleViewController *)self _refreshTextSizes];
  [sliderView addTarget:self action:sel__sliderValueDidChange_ forControlEvents:4096];
  [sliderView addTarget:self action:sel__sliderValueDidCommit_ forControlEvents:0x40000];
  [sliderView addTarget:self action:sel__sliderTapped_ forControlEvents:64];
  v9 = AXCCLocalizedString(@"text.size.label");
  [sliderView setAccessibilityLabel:v9];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = AXCCTextSizeSliderModuleViewController;
  [(AXCCTextSizeSliderModuleViewController *)&v5 viewWillAppear:appear];
  [(AXCCTextSizeSliderModuleViewController *)self _refreshTextSizes];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel_sizeCategoryDidChange_ name:*MEMORY[0x29EDC8078] object:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = AXCCTextSizeSliderModuleViewController;
  coordinatorCopy = coordinator;
  [(CCUISliderModuleViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = sub_29C94398C;
  v8[3] = &unk_29F335620;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (void)setContentRenderingMode:(unint64_t)mode
{
  v6.receiver = self;
  v6.super_class = AXCCTextSizeSliderModuleViewController;
  if ([(CCUIButtonModuleViewController *)&v6 contentRenderingMode]!= mode)
  {
    v5.receiver = self;
    v5.super_class = AXCCTextSizeSliderModuleViewController;
    [(CCUIButtonModuleViewController *)&v5 setContentRenderingMode:mode];
    [(AXCCTextSizeSliderModuleViewController *)self _setupSlider];
  }
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  v4.receiver = self;
  v4.super_class = AXCCTextSizeSliderModuleViewController;
  [(CCUISliderModuleViewController *)&v4 willTransitionToExpandedContentMode:mode];
  [(AXCCTextSizeSliderModuleViewController *)self _refreshTextSizes];
}

- (id)sliderView
{
  v4.receiver = self;
  v4.super_class = AXCCTextSizeSliderModuleViewController;
  sliderView = [(CCUISliderModuleViewController *)&v4 sliderView];

  return sliderView;
}

- (id)createSliderView
{
  v3 = objc_alloc(MEMORY[0x29EDC0CF8]);
  view = [(AXCCTextSizeSliderModuleViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];

  return v5;
}

- (void)_commitTextSizeIfNeeded
{
  if (self->_selectedCategoryIndexNeedsCommit)
  {
    self->_selectedCategoryIndexNeedsCommit = 0;
    v4 = [(NSArray *)self->_contentSizeCategories objectAtIndexedSubscript:self->_selectedCategoryIndex];
    [(AXCCTextSizeHelper *)self->_helper setCategoryName:v4];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v6 = *MEMORY[0x29EDC83D0];

    CFNotificationCenterPostNotification(DarwinNotifyCenter, v6, 0, 0, 1u);
  }
}

- (void)_refreshTextSizes
{
  [(AXCCTextSizeSliderModuleViewController *)self _commitTextSizeIfNeeded];
  [(AXCCTextSizeHelper *)self->_helper refreshAppInfo];
  [(AXCCTextSizeHelper *)self->_helper refreshCategoryName];

  [(AXCCTextSizeSliderModuleViewController *)self _setupSlider];
}

- (void)_setupSlider
{
  if (![(AXCCTextSizeSliderModuleViewController *)self isViewLoaded])
  {
    return;
  }

  categoryName = [(AXCCTextSizeHelper *)self->_helper categoryName];
  v4 = *MEMORY[0x29EDC80A0];
  if (categoryName)
  {
    v5 = categoryName;
  }

  else
  {
    v5 = *MEMORY[0x29EDC80A0];
  }

  self->_selectedCategoryIndex = [(NSArray *)self->_contentSizeCategories indexOfObject:v5];
  if ([(AXCCTextSizeHelper *)self->_helper state]== 3)
  {
    v6 = CFPreferencesGetAppBooleanValue(@"largeTextUsesExtendedRange", @"com.apple.preferences-framework", 0) != 0;
    CFPreferencesAppSynchronize(@"com.apple.preferences-framework");
    if (!categoryName)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 1;
    if (!categoryName)
    {
LABEL_9:
      categoryName = v4;
    }
  }

  contentSizeCategories = self->_contentSizeCategories;
  if (v6)
  {
    v8 = [(NSArray *)contentSizeCategories count]- 1;
  }

  else
  {
    v8 = [(NSArray *)contentSizeCategories indexOfObject:*MEMORY[0x29EDC8080]];
  }

  sliderView = [(AXCCTextSizeSliderModuleViewController *)self sliderView];
  [sliderView setNumberOfSteps:v8];

  v10 = categoryName;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_sliderValueDidChange:(id)change
{
  v13 = *MEMORY[0x29EDCA608];
  step = [change step];
  if ((step & 0x8000000000000000) == 0)
  {
    v5 = step;
    if (step < [(NSArray *)self->_contentSizeCategories count])
    {
      v6 = AXLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSArray *)self->_contentSizeCategories objectAtIndexedSubscript:v5];
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_29C939000, v6, OS_LOG_TYPE_INFO, "Setting new text size change: %@", &v11, 0xCu);
      }

      if (self->_selectedCategoryIndex != v5)
      {
        self->_selectedCategoryIndex = v5;
        self->_selectedCategoryIndexNeedsCommit = 1;
        if ([(CCUIButtonModuleViewController *)self isExpanded])
        {
          v8 = [(NSArray *)self->_contentSizeCategories objectAtIndexedSubscript:self->_selectedCategoryIndex];
          [(AXCCTextSizeHelper *)self->_helper setCategoryName:v8];

          defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
          v10 = [(NSArray *)self->_contentSizeCategories objectAtIndexedSubscript:v5];
          [defaultCenter postNotificationName:@"AXCCInternalTextSizeDidUpdate" object:v10];

          if (v5 == [(NSArray *)self->_contentSizeCategories indexOfObject:*MEMORY[0x29EDC80A0]])
          {
            [(UISelectionFeedbackGenerator *)self->_selectionFeedback selectionChanged];
          }
        }
      }
    }
  }
}

- (void)_sliderValueDidCommit:(id)commit
{
  [(AXCCTextSizeSliderModuleViewController *)self _commitTextSizeIfNeeded];

  MEMORY[0x2A1C70FE8](self, sel__postControlCenterStatus);
}

- (void)_sliderTapped:(id)tapped
{
  if (![(CCUIButtonModuleViewController *)self isExpanded])
  {
    [(AXCCTextSizeSliderModuleViewController *)self _commitTextSizeIfNeeded];

    MEMORY[0x2A1C70FE8](self, sel__postControlCenterStatus);
  }
}

- (void)_postControlCenterStatus
{
  categoryName = [(AXCCTextSizeHelper *)self->_helper categoryName];
  AXTextSizePercentage();
  v3 = MEMORY[0x29EDBA0F8];
  v4 = AXCCLocalizedString(@"text.control.center.status");
  v5 = AXFormatFloatWithPercentage();
  v6 = [v3 localizedStringWithFormat:v4, v5];

  contentModuleContext = [(AXCCTextSizeSliderModuleViewController *)self contentModuleContext];
  v8 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v6 type:0];
  [contentModuleContext enqueueStatusUpdate:v8];
}

- (AXCCTextSizeModuleViewControllerDelegate)textSizeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textSizeDelegate);

  return WeakRetained;
}

@end