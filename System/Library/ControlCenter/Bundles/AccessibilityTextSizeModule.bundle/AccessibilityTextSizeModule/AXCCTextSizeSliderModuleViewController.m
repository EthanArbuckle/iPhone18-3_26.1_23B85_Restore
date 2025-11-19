@interface AXCCTextSizeSliderModuleViewController
- (AXCCTextSizeModuleViewControllerDelegate)textSizeDelegate;
- (id)createSliderView;
- (id)sliderView;
- (void)_commitTextSizeIfNeeded;
- (void)_postControlCenterStatus;
- (void)_refreshTextSizes;
- (void)_setupSlider;
- (void)_sliderTapped:(id)a3;
- (void)_sliderValueDidChange:(id)a3;
- (void)_sliderValueDidCommit:(id)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)setHelper:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToExpandedContentMode:(BOOL)a3;
@end

@implementation AXCCTextSizeSliderModuleViewController

- (void)setHelper:(id)a3
{
  objc_storeStrong(&self->_helper, a3);
  v5 = a3;
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

  v6 = [(AXCCTextSizeSliderModuleViewController *)self sliderView];
  v7 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"textformat.size"];
  [v6 setGlyphImage:v7];

  v8 = [MEMORY[0x29EDC7A00] systemBlueColor];
  [v6 setGlyphTintColor:v8];

  [(AXCCTextSizeSliderModuleViewController *)self _refreshTextSizes];
  [v6 addTarget:self action:sel__sliderValueDidChange_ forControlEvents:4096];
  [v6 addTarget:self action:sel__sliderValueDidCommit_ forControlEvents:0x40000];
  [v6 addTarget:self action:sel__sliderTapped_ forControlEvents:64];
  v9 = AXCCLocalizedString(@"text.size.label");
  [v6 setAccessibilityLabel:v9];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AXCCTextSizeSliderModuleViewController;
  [(AXCCTextSizeSliderModuleViewController *)&v5 viewWillAppear:a3];
  [(AXCCTextSizeSliderModuleViewController *)self _refreshTextSizes];
  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  [v4 addObserver:self selector:sel_sizeCategoryDidChange_ name:*MEMORY[0x29EDC8078] object:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = AXCCTextSizeSliderModuleViewController;
  v7 = a4;
  [(CCUISliderModuleViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = sub_29C94398C;
  v8[3] = &unk_29F335620;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = AXCCTextSizeSliderModuleViewController;
  if ([(CCUIButtonModuleViewController *)&v6 contentRenderingMode]!= a3)
  {
    v5.receiver = self;
    v5.super_class = AXCCTextSizeSliderModuleViewController;
    [(CCUIButtonModuleViewController *)&v5 setContentRenderingMode:a3];
    [(AXCCTextSizeSliderModuleViewController *)self _setupSlider];
  }
}

- (void)willTransitionToExpandedContentMode:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXCCTextSizeSliderModuleViewController;
  [(CCUISliderModuleViewController *)&v4 willTransitionToExpandedContentMode:a3];
  [(AXCCTextSizeSliderModuleViewController *)self _refreshTextSizes];
}

- (id)sliderView
{
  v4.receiver = self;
  v4.super_class = AXCCTextSizeSliderModuleViewController;
  v2 = [(CCUISliderModuleViewController *)&v4 sliderView];

  return v2;
}

- (id)createSliderView
{
  v3 = objc_alloc(MEMORY[0x29EDC0CF8]);
  v4 = [(AXCCTextSizeSliderModuleViewController *)self view];
  [v4 bounds];
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

  v3 = [(AXCCTextSizeHelper *)self->_helper categoryName];
  v4 = *MEMORY[0x29EDC80A0];
  if (v3)
  {
    v5 = v3;
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
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 1;
    if (!v3)
    {
LABEL_9:
      v3 = v4;
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

  v9 = [(AXCCTextSizeSliderModuleViewController *)self sliderView];
  [v9 setNumberOfSteps:v8];

  v10 = v3;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_sliderValueDidChange:(id)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = [a3 step];
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v4;
    if (v4 < [(NSArray *)self->_contentSizeCategories count])
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

          v9 = [MEMORY[0x29EDBA068] defaultCenter];
          v10 = [(NSArray *)self->_contentSizeCategories objectAtIndexedSubscript:v5];
          [v9 postNotificationName:@"AXCCInternalTextSizeDidUpdate" object:v10];

          if (v5 == [(NSArray *)self->_contentSizeCategories indexOfObject:*MEMORY[0x29EDC80A0]])
          {
            [(UISelectionFeedbackGenerator *)self->_selectionFeedback selectionChanged];
          }
        }
      }
    }
  }
}

- (void)_sliderValueDidCommit:(id)a3
{
  [(AXCCTextSizeSliderModuleViewController *)self _commitTextSizeIfNeeded];

  MEMORY[0x2A1C70FE8](self, sel__postControlCenterStatus);
}

- (void)_sliderTapped:(id)a3
{
  if (![(CCUIButtonModuleViewController *)self isExpanded])
  {
    [(AXCCTextSizeSliderModuleViewController *)self _commitTextSizeIfNeeded];

    MEMORY[0x2A1C70FE8](self, sel__postControlCenterStatus);
  }
}

- (void)_postControlCenterStatus
{
  v9 = [(AXCCTextSizeHelper *)self->_helper categoryName];
  AXTextSizePercentage();
  v3 = MEMORY[0x29EDBA0F8];
  v4 = AXCCLocalizedString(@"text.control.center.status");
  v5 = AXFormatFloatWithPercentage();
  v6 = [v3 localizedStringWithFormat:v4, v5];

  v7 = [(AXCCTextSizeSliderModuleViewController *)self contentModuleContext];
  v8 = [MEMORY[0x29EDC0CF0] statusUpdateWithMessage:v6 type:0];
  [v7 enqueueStatusUpdate:v8];
}

- (AXCCTextSizeModuleViewControllerDelegate)textSizeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textSizeDelegate);

  return WeakRetained;
}

@end