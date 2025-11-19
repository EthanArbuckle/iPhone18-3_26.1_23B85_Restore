@interface SCLSetupSpecifierDataSource
- (SCLSetupSpecifierDataSource)initWithListController:(id)a3 viewModel:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation SCLSetupSpecifierDataSource

- (SCLSetupSpecifierDataSource)initWithListController:(id)a3 viewModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SCLSetupSpecifierDataSource;
  v8 = [(SCLSetupSpecifierDataSource *)&v15 initWithListController:v6 viewModel:v7];
  if (v8)
  {
    v9 = [[SCLActiveSpecifierDataSource alloc] initWithListController:v6 viewModel:v7 options:3];
    activeDataSource = v8->_activeDataSource;
    v8->_activeDataSource = v9;

    [(SCLActiveSpecifierDataSource *)v8->_activeDataSource setActive:1];
    v11 = [[SCLDaySettingsSpecifierSource alloc] initWithListController:v6 viewModel:v7];
    daySettingsDataSource = v8->_daySettingsDataSource;
    v8->_daySettingsDataSource = v11;

    [v7 addObserver:v8 forKeyPath:@"enabled" options:5 context:off_CDA8];
    v16[0] = v8->_activeDataSource;
    v16[1] = v8->_daySettingsDataSource;
    v13 = [NSArray arrayWithObjects:v16 count:2];
    [(SCLSetupSpecifierDataSource *)v8 setChildDataSources:v13];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(SCLSetupSpecifierDataSource *)self viewModel];
  [v3 removeObserver:self forKeyPath:@"enabled" context:off_CDA8];

  v4.receiver = self;
  v4.super_class = SCLSetupSpecifierDataSource;
  [(SCLSetupSpecifierDataSource *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_CDA8 == a6)
  {
    v7 = [a5 objectForKeyedSubscript:{NSKeyValueChangeNewKey, a4}];
    v8 = [v7 BOOLValue];

    v9 = [(SCLSetupSpecifierDataSource *)self daySettingsDataSource];
    [v9 setActive:v8];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SCLSetupSpecifierDataSource;
    [(SCLSetupSpecifierDataSource *)&v10 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end