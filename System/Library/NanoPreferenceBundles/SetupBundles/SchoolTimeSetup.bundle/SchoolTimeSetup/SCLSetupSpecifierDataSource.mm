@interface SCLSetupSpecifierDataSource
- (SCLSetupSpecifierDataSource)initWithListController:(id)controller viewModel:(id)model;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SCLSetupSpecifierDataSource

- (SCLSetupSpecifierDataSource)initWithListController:(id)controller viewModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = SCLSetupSpecifierDataSource;
  v8 = [(SCLSetupSpecifierDataSource *)&v15 initWithListController:controllerCopy viewModel:modelCopy];
  if (v8)
  {
    v9 = [[SCLActiveSpecifierDataSource alloc] initWithListController:controllerCopy viewModel:modelCopy options:3];
    activeDataSource = v8->_activeDataSource;
    v8->_activeDataSource = v9;

    [(SCLActiveSpecifierDataSource *)v8->_activeDataSource setActive:1];
    v11 = [[SCLDaySettingsSpecifierSource alloc] initWithListController:controllerCopy viewModel:modelCopy];
    daySettingsDataSource = v8->_daySettingsDataSource;
    v8->_daySettingsDataSource = v11;

    [modelCopy addObserver:v8 forKeyPath:@"enabled" options:5 context:off_CDA8];
    v16[0] = v8->_activeDataSource;
    v16[1] = v8->_daySettingsDataSource;
    v13 = [NSArray arrayWithObjects:v16 count:2];
    [(SCLSetupSpecifierDataSource *)v8 setChildDataSources:v13];
  }

  return v8;
}

- (void)dealloc
{
  viewModel = [(SCLSetupSpecifierDataSource *)self viewModel];
  [viewModel removeObserver:self forKeyPath:@"enabled" context:off_CDA8];

  v4.receiver = self;
  v4.super_class = SCLSetupSpecifierDataSource;
  [(SCLSetupSpecifierDataSource *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_CDA8 == context)
  {
    v7 = [change objectForKeyedSubscript:{NSKeyValueChangeNewKey, object}];
    bOOLValue = [v7 BOOLValue];

    daySettingsDataSource = [(SCLSetupSpecifierDataSource *)self daySettingsDataSource];
    [daySettingsDataSource setActive:bOOLValue];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SCLSetupSpecifierDataSource;
    [(SCLSetupSpecifierDataSource *)&v10 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end