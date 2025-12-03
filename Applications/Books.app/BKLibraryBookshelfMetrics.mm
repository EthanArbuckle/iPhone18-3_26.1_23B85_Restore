@interface BKLibraryBookshelfMetrics
+ (id)_manager;
+ (id)_metricsTemplateURL;
+ (id)_templateFactory;
+ (id)_templatePackageURL;
+ (id)supportedMetrics;
- (BKLibraryBookshelfMetrics)initWithObserver:(id)observer;
- (BOOL)compactWidth;
- (BOOL)updateIfNeededWithEnvironment:(id)environment bookshelfLayoutMode:(unint64_t)mode editMode:(BOOL)editMode isPopover:(BOOL)popover;
- (id)metricsTemplateURL;
- (void)addSymbolsToMetricsEnvironment:(id)environment package:(id)package;
- (void)invalidate;
@end

@implementation BKLibraryBookshelfMetrics

+ (id)_manager
{
  if (qword_100AF73D8 != -1)
  {
    sub_100788390();
  }

  v3 = qword_100AF73D0;

  return v3;
}

+ (id)_templatePackageURL
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"BKLibraryBookshelfConfiguration" withExtension:@"tpkg"];

  return v3;
}

+ (id)_templateFactory
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004FF04;
  block[3] = &unk_100A03560;
  block[4] = self;
  if (qword_100AF73E8 != -1)
  {
    dispatch_once(&qword_100AF73E8, block);
  }

  v2 = qword_100AF73E0;

  return v2;
}

+ (id)_metricsTemplateURL
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005007C;
  block[3] = &unk_100A03560;
  block[4] = self;
  if (qword_100AF73F8 != -1)
  {
    dispatch_once(&qword_100AF73F8, block);
  }

  v2 = qword_100AF73F0;

  return v2;
}

- (BKLibraryBookshelfMetrics)initWithObserver:(id)observer
{
  observerCopy = observer;
  v12.receiver = self;
  v12.super_class = BKLibraryBookshelfMetrics;
  v5 = [(BKLibraryBookshelfMetrics *)&v12 init];
  if (v5)
  {
    v6 = [BCLayoutMetrics alloc];
    _templateFactory = [objc_opt_class() _templateFactory];
    _manager = [objc_opt_class() _manager];
    v9 = [v6 initWithObserver:observerCopy factory:_templateFactory manager:_manager delegate:v5];
    metrics = v5->_metrics;
    v5->_metrics = v9;
  }

  return v5;
}

- (BOOL)updateIfNeededWithEnvironment:(id)environment bookshelfLayoutMode:(unint64_t)mode editMode:(BOOL)editMode isPopover:(BOOL)popover
{
  popoverCopy = popover;
  editModeCopy = editMode;
  environmentCopy = environment;
  if (self->_bookshelfLayoutMode != mode || self->_editMode != editModeCopy || self->_isPopover != popoverCopy)
  {
    self->_bookshelfLayoutMode = mode;
    self->_editMode = editModeCopy;
    self->_isPopover = popoverCopy;
    metrics = [(BKLibraryBookshelfMetrics *)self metrics];
    [metrics invalidate];
  }

  metrics2 = [(BKLibraryBookshelfMetrics *)self metrics];
  v13 = [metrics2 updateIfNeededWithEnvironment:environmentCopy];

  return v13;
}

- (void)invalidate
{
  metrics = [(BKLibraryBookshelfMetrics *)self metrics];
  [metrics invalidate];
}

- (BOOL)compactWidth
{
  metrics = [(BKLibraryBookshelfMetrics *)self metrics];
  compactWidth = [metrics compactWidth];

  return compactWidth;
}

- (id)metricsTemplateURL
{
  v2 = objc_opt_class();

  return [v2 _metricsTemplateURL];
}

- (void)addSymbolsToMetricsEnvironment:(id)environment package:(id)package
{
  packageCopy = package;
  environmentCopy = environment;
  v7 = [packageCopy nameForString:@"libraryEnv::layoutMode"];
  if ([(BKLibraryBookshelfMetrics *)self bookshelfLayoutMode]== 1)
  {
    v8 = @"grid";
  }

  else
  {
    v8 = @"list";
  }

  [environmentCopy setSymbol:objc_msgSend(packageCopy forName:{"symbolForString:", v8), v7}];
  v9 = [packageCopy nameForString:@"libraryEnv::interactionMode"];
  if ([(BKLibraryBookshelfMetrics *)self editMode])
  {
    v10 = @"edit";
  }

  else
  {
    v10 = @"none";
  }

  [environmentCopy setSymbol:objc_msgSend(packageCopy forName:{"symbolForString:", v10), v9}];
  v11 = [packageCopy nameForString:@"libraryEnv::popoverMode"];
  if ([(BKLibraryBookshelfMetrics *)self isPopover])
  {
    v12 = @"popover";
  }

  else
  {
    v12 = @"none";
  }

  v13 = [packageCopy symbolForString:v12];

  [environmentCopy setSymbol:v13 forName:v11];
}

+ (id)supportedMetrics
{
  v2 = objc_opt_new();
  v21[0] = v2;
  v3 = objc_opt_new();
  v21[1] = v3;
  v4 = objc_opt_new();
  v21[2] = v4;
  v5 = objc_opt_new();
  v21[3] = v5;
  v6 = objc_opt_new();
  v21[4] = v6;
  v7 = [NSArray arrayWithObjects:v21 count:5];
  v8 = [v7 mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = +[BKLibraryBookshelfCellMetrics sectionNames];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [BKLibraryBookshelfCellMetrics cellMetricsForSectionName:*(*(&v16 + 1) + 8 * i)];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

@end