@interface SBContinuousExposeModuleViewController
- (CCUIContentModuleContext)contentModuleContext;
- (SBContinuousExposeModuleViewController)initWithContentModuleContext:(id)a3;
- (id)_glyphImageForMultitaskingMode:(int64_t)a3;
- (id)_statusMessageForMultitaskingMode:(int64_t)a3;
- (id)_titleForMultitaskingMode:(int64_t)a3;
- (void)_toggleSelected;
- (void)_updateContinuousExposeMenuItems;
- (void)_updateGlyphImageForMultitaskingMode:(int64_t)a3;
- (void)_updateState;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)viewDidLoad;
@end

@implementation SBContinuousExposeModuleViewController

- (SBContinuousExposeModuleViewController)initWithContentModuleContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBContinuousExposeModuleViewController;
  v5 = [(SBContinuousExposeModuleViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contentModuleContext, v4);
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
  v4 = [(SBContinuousExposeModuleViewController *)self buttonView];
  v5 = objc_opt_class();
  v6 = v4;
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

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  [(SBContinuousExposeModuleViewController *)self _toggleSelected:a3];

  [(SBContinuousExposeModuleViewController *)self _updateState];
}

- (void)_toggleSelected
{
  v3 = [(SBContinuousExposeModuleViewController *)self isSelected];
  v4 = v3;
  [(SBContinuousExposeModuleViewController *)self setSelected:v3 ^ 1];
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

  v9 = [(SBContinuousExposeModuleViewController *)self contentModuleContext];
  v10 = [CCUIStatusUpdate statusUpdateWithMessage:v11 type:v8];
  [v9 enqueueStatusUpdate:v10];
}

- (void)_updateContinuousExposeMenuItems
{
  v3 = [(SBContinuousExposeModuleViewController *)self contentMenuActions];
  [v3 removeAllObjects];
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
  v23 = self;
  v9 = [UIAction actionWithTitle:v6 image:v7 identifier:@"windowedApps" handler:v21];

  if ([(SBContinuousExposeModuleController *)v8 currentMultitaskingMode]== &dword_0 + 1)
  {
    [v9 setState:1];
  }

  [v3 addObject:v9];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CONTROL_CENTER_CONTINUOUS_EXPOSE_STAGE_MANAGER_TITLE" value:&stru_41E8 table:0];
  v12 = [(SBContinuousExposeModuleViewController *)self _glyphImageForMultitaskingMode:2];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_16D0;
  v18 = &unk_4148;
  v13 = v8;
  v19 = v13;
  v20 = self;
  v14 = [UIAction actionWithTitle:v11 image:v12 identifier:@"stageManager" handler:&v15];

  if ([(SBContinuousExposeModuleController *)v13 currentMultitaskingMode:v15]== &dword_0 + 2)
  {
    [v14 setState:1];
  }

  [v3 addObject:v14];
}

- (id)_glyphImageForMultitaskingMode:(int64_t)a3
{
  if (a3 == 2)
  {
    v4 = @"squares.leading.rectangle";
  }

  else if (a3 == 1)
  {
    v4 = @"rectangle.3.group";
  }

  else if (a3)
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

  v5 = [(SBContinuousExposeModuleViewController *)self contentMetrics];
  v6 = [v5 symbolConfiguration];
  v7 = [v5 symbolFont];
  [v7 pointSize];
  v8 = [UIImageSymbolConfiguration configurationWithPointSize:3 weight:1 scale:?];
  v9 = [v6 configurationByApplyingConfiguration:v8];

  v10 = [UIImage _systemImageNamed:v4 withConfiguration:v9];
  v11 = [v10 imageFlippedForRightToLeftLayoutDirection];

  return v11;
}

- (void)_updateGlyphImageForMultitaskingMode:(int64_t)a3
{
  v4 = [(SBContinuousExposeModuleViewController *)self _glyphImageForMultitaskingMode:a3];
  [(SBContinuousExposeModuleViewController *)self setGlyphImage:v4];
}

- (id)_titleForMultitaskingMode:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"CONTROL_CENTER_CONTINUOUS_EXPOSE_STAGE_MANAGER_TITLE";
  }

  else if (a3 == 1)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"CONTROL_CENTER_CONTINUOUS_EXPOSE_WINDOWED_APPS_TITLE";
  }

  else
  {
    if (a3)
    {
      goto LABEL_10;
    }

    v4 = [(SBContinuousExposeModuleController *)self->_continuousExposeController previouslyEnabledStageManager];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    if (v4)
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

- (id)_statusMessageForMultitaskingMode:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"CONTROL_CENTER_CONTINUOUS_EXPOSE_STAGE_MANAGER_ON";
  }

  else if (a3 == 1)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"CONTROL_CENTER_CONTINUOUS_EXPOSE_WINDOWED_APPS_ON";
  }

  else
  {
    if (a3)
    {
      goto LABEL_10;
    }

    v4 = [(SBContinuousExposeModuleController *)self->_continuousExposeController previouslyEnabledStageManager];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    if (v4)
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
  v3 = [(SBContinuousExposeModuleController *)self->_continuousExposeController currentMultitaskingMode];
  v4 = [(SBContinuousExposeModuleViewController *)self _titleForMultitaskingMode:v3];
  [(SBContinuousExposeModuleViewController *)self setTitle:v4];

  v5 = [(SBContinuousExposeModuleViewController *)self _statusMessageForMultitaskingMode:v3];
  [(SBContinuousExposeModuleViewController *)self setValueText:v5];

  v6 = [(SBContinuousExposeModuleViewController *)self _statusMessageForMultitaskingMode:v3];
  [(SBContinuousExposeModuleViewController *)self setSelectedValueText:v6];

  [(SBContinuousExposeModuleViewController *)self _updateGlyphImageForMultitaskingMode:v3];
  [(SBContinuousExposeModuleViewController *)self setSelected:(v3 - 1) < 2];

  [(SBContinuousExposeModuleViewController *)self _updateContinuousExposeMenuItems];
}

- (CCUIContentModuleContext)contentModuleContext
{
  WeakRetained = objc_loadWeakRetained(&self->_contentModuleContext);

  return WeakRetained;
}

@end