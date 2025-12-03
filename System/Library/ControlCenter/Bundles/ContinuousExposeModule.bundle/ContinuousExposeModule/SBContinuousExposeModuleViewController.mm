@interface SBContinuousExposeModuleViewController
- (CCUIContentModuleContext)contentModuleContext;
- (SBContinuousExposeModuleViewController)initWithContentModuleContext:(id)context;
- (id)_glyphImageForMultitaskingMode:(int64_t)mode;
- (id)_statusMessageForMultitaskingMode:(int64_t)mode;
- (id)_titleForMultitaskingMode:(int64_t)mode;
- (void)_toggleSelected;
- (void)_updateContinuousExposeMenuItems;
- (void)_updateGlyphImageForMultitaskingMode:(int64_t)mode;
- (void)_updateState;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)viewDidLoad;
@end

@implementation SBContinuousExposeModuleViewController

- (SBContinuousExposeModuleViewController)initWithContentModuleContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SBContinuousExposeModuleViewController;
  v5 = [(SBContinuousExposeModuleViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contentModuleContext, contextCopy);
    v7 = objc_alloc_init(NSMutableArray);
    contentMenuActions = v6->_contentMenuActions;
    v6->_contentMenuActions = v7;

    v9 = objc_alloc_init(SBContinuousExposeModuleController);
    continuousExposeController = v6->_continuousExposeController;
    v6->_continuousExposeController = v9;
  }

  return v6;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = SBContinuousExposeModuleViewController;
  [(SBContinuousExposeModuleViewController *)&v9 viewDidLoad];
  v3 = +[UIColor systemBlueColor];
  [(SBContinuousExposeModuleViewController *)self setSelectedGlyphColor:v3];
  buttonView = [(SBContinuousExposeModuleViewController *)self buttonView];
  v5 = objc_opt_class();
  v6 = buttonView;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setContextMenuDelegate:self];
  [(SBContinuousExposeModuleViewController *)self _updateContinuousExposeMenuItems];
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  [(SBContinuousExposeModuleViewController *)self _toggleSelected:tapped];

  [(SBContinuousExposeModuleViewController *)self _updateState];
}

- (void)_toggleSelected
{
  isSelected = [(SBContinuousExposeModuleViewController *)self isSelected];
  v4 = isSelected;
  [(SBContinuousExposeModuleViewController *)self setSelected:isSelected ^ 1];
  continuousExposeController = self->_continuousExposeController;
  if (v4)
  {
    [(SBContinuousExposeModuleController *)self->_continuousExposeController setPreviouslyEnabledStageManager:[(SBContinuousExposeModuleController *)self->_continuousExposeController currentMultitaskingMode]== &dword_0 + 2];
    v6 = self->_continuousExposeController;
    v7 = 0;
  }

  else
  {
    if ([(SBContinuousExposeModuleController *)self->_continuousExposeController previouslyEnabledStageManager])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v6 = continuousExposeController;
  }

  [(SBContinuousExposeModuleController *)v6 setCurrentMultitaskingMode:v7];
  v11 = [(SBContinuousExposeModuleViewController *)self _statusMessageForMultitaskingMode:[(SBContinuousExposeModuleController *)self->_continuousExposeController currentMultitaskingMode]];
  if ([(SBContinuousExposeModuleViewController *)self isSelected])
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  contentModuleContext = [(SBContinuousExposeModuleViewController *)self contentModuleContext];
  v10 = [CCUIStatusUpdate statusUpdateWithMessage:v11 type:v8];
  [contentModuleContext enqueueStatusUpdate:v10];
}

- (void)_updateContinuousExposeMenuItems
{
  contentMenuActions = [(SBContinuousExposeModuleViewController *)self contentMenuActions];
  [contentMenuActions removeAllObjects];
  v4 = self->_continuousExposeController;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CONTROL_CENTER_CONTINUOUS_EXPOSE_WINDOWED_APPS_TITLE" value:&stru_41E8 table:0];
  v7 = [(SBContinuousExposeModuleViewController *)self _glyphImageForMultitaskingMode:1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1690;
  v21[3] = &unk_4148;
  v8 = v4;
  v22 = v8;
  selfCopy = self;
  v9 = [UIAction actionWithTitle:v6 image:v7 identifier:@"windowedApps" handler:v21];

  if ([(SBContinuousExposeModuleController *)v8 currentMultitaskingMode]== &dword_0 + 1)
  {
    [v9 setState:1];
  }

  [contentMenuActions addObject:v9];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CONTROL_CENTER_CONTINUOUS_EXPOSE_STAGE_MANAGER_TITLE" value:&stru_41E8 table:0];
  v12 = [(SBContinuousExposeModuleViewController *)self _glyphImageForMultitaskingMode:2];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_16D0;
  v18 = &unk_4148;
  v13 = v8;
  v19 = v13;
  selfCopy2 = self;
  v14 = [UIAction actionWithTitle:v11 image:v12 identifier:@"stageManager" handler:&v15];

  if ([(SBContinuousExposeModuleController *)v13 currentMultitaskingMode:v15]== &dword_0 + 2)
  {
    [v14 setState:1];
  }

  [contentMenuActions addObject:v14];
}

- (id)_glyphImageForMultitaskingMode:(int64_t)mode
{
  if (mode == 2)
  {
    v4 = @"squares.leading.rectangle";
  }

  else if (mode == 1)
  {
    v4 = @"rectangle.3.group";
  }

  else if (mode)
  {
    v4 = 0;
  }

  else if ([(SBContinuousExposeModuleController *)self->_continuousExposeController previouslyEnabledStageManager])
  {
    v4 = @"squares.leading.rectangle";
  }

  else
  {
    v4 = @"rectangle.3.group";
  }

  contentMetrics = [(SBContinuousExposeModuleViewController *)self contentMetrics];
  symbolConfiguration = [contentMetrics symbolConfiguration];
  symbolFont = [contentMetrics symbolFont];
  [symbolFont pointSize];
  v8 = [UIImageSymbolConfiguration configurationWithPointSize:3 weight:1 scale:?];
  v9 = [symbolConfiguration configurationByApplyingConfiguration:v8];

  v10 = [UIImage _systemImageNamed:v4 withConfiguration:v9];
  imageFlippedForRightToLeftLayoutDirection = [v10 imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
}

- (void)_updateGlyphImageForMultitaskingMode:(int64_t)mode
{
  v4 = [(SBContinuousExposeModuleViewController *)self _glyphImageForMultitaskingMode:mode];
  [(SBContinuousExposeModuleViewController *)self setGlyphImage:v4];
}

- (id)_titleForMultitaskingMode:(int64_t)mode
{
  if (mode == 2)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"CONTROL_CENTER_CONTINUOUS_EXPOSE_STAGE_MANAGER_TITLE";
  }

  else if (mode == 1)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"CONTROL_CENTER_CONTINUOUS_EXPOSE_WINDOWED_APPS_TITLE";
  }

  else
  {
    if (mode)
    {
      goto LABEL_10;
    }

    previouslyEnabledStageManager = [(SBContinuousExposeModuleController *)self->_continuousExposeController previouslyEnabledStageManager];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    if (previouslyEnabledStageManager)
    {
      v7 = @"CONTROL_CENTER_CONTINUOUS_EXPOSE_STAGE_MANAGER_TITLE";
    }

    else
    {
      v7 = @"CONTROL_CENTER_CONTINUOUS_EXPOSE_WINDOWED_APPS_TITLE";
    }
  }

  v3 = [v5 localizedStringForKey:v7 value:&stru_41E8 table:0];

LABEL_10:

  return v3;
}

- (id)_statusMessageForMultitaskingMode:(int64_t)mode
{
  if (mode == 2)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"CONTROL_CENTER_CONTINUOUS_EXPOSE_STAGE_MANAGER_ON";
  }

  else if (mode == 1)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"CONTROL_CENTER_CONTINUOUS_EXPOSE_WINDOWED_APPS_ON";
  }

  else
  {
    if (mode)
    {
      goto LABEL_10;
    }

    previouslyEnabledStageManager = [(SBContinuousExposeModuleController *)self->_continuousExposeController previouslyEnabledStageManager];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    if (previouslyEnabledStageManager)
    {
      v7 = @"CONTROL_CENTER_CONTINUOUS_EXPOSE_STAGE_MANAGER_OFF";
    }

    else
    {
      v7 = @"CONTROL_CENTER_CONTINUOUS_EXPOSE_WINDOWED_APPS_OFF";
    }
  }

  v3 = [v5 localizedStringForKey:v7 value:&stru_41E8 table:0];

LABEL_10:

  return v3;
}

- (void)_updateState
{
  currentMultitaskingMode = [(SBContinuousExposeModuleController *)self->_continuousExposeController currentMultitaskingMode];
  v4 = [(SBContinuousExposeModuleViewController *)self _titleForMultitaskingMode:currentMultitaskingMode];
  [(SBContinuousExposeModuleViewController *)self setTitle:v4];

  v5 = [(SBContinuousExposeModuleViewController *)self _statusMessageForMultitaskingMode:currentMultitaskingMode];
  [(SBContinuousExposeModuleViewController *)self setValueText:v5];

  v6 = [(SBContinuousExposeModuleViewController *)self _statusMessageForMultitaskingMode:currentMultitaskingMode];
  [(SBContinuousExposeModuleViewController *)self setSelectedValueText:v6];

  [(SBContinuousExposeModuleViewController *)self _updateGlyphImageForMultitaskingMode:currentMultitaskingMode];
  [(SBContinuousExposeModuleViewController *)self setSelected:(currentMultitaskingMode - 1) < 2];

  [(SBContinuousExposeModuleViewController *)self _updateContinuousExposeMenuItems];
}

- (CCUIContentModuleContext)contentModuleContext
{
  WeakRetained = objc_loadWeakRetained(&self->_contentModuleContext);

  return WeakRetained;
}

@end