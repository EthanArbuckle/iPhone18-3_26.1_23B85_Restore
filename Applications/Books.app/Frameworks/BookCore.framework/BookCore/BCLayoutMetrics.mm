@interface BCLayoutMetrics
- (BCLayoutMetrics)initWithObserver:(id)observer factory:(id)factory manager:(id)manager delegate:(id)delegate;
- (BCLayoutMetricsDelegate)delegate;
- (BCMetricsEnvironmentObserver)observer;
- (BOOL)_needsUpdatingWithEnvironment:(id)environment;
- (BOOL)updateIfNeededWithEnvironment:(id)environment;
- (id)_computeMetricsWithEnvironment:(id)environment;
- (void)_fontNeedsUpdate;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation BCLayoutMetrics

- (BCLayoutMetrics)initWithObserver:(id)observer factory:(id)factory manager:(id)manager delegate:(id)delegate
{
  observerCopy = observer;
  factoryCopy = factory;
  managerCopy = manager;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = BCLayoutMetrics;
  v14 = [(BCLayoutMetrics *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_observer, observerCopy);
    objc_storeStrong(&v15->_metricsTemplateFactory, factory);
    objc_storeStrong(&v15->_manager, manager);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    metricsTemplateURL = [delegateCopy metricsTemplateURL];
    v17 = [(TUITemplateFactory *)v15->_metricsTemplateFactory templateFromURL:metricsTemplateURL];
    metricsTemplate = v15->_metricsTemplate;
    v15->_metricsTemplate = v17;

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v15 selector:"_fontNeedsUpdate" name:NSCurrentLocaleDidChangeNotification object:0];

    v20 = +[NSUserDefaults standardUserDefaults];
    [v20 addObserver:v15 forKeyPath:TUIUserDefaultForceFallbackFont options:0 context:off_33C828];
  }

  return v15;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObserver:self forKeyPath:TUIUserDefaultForceFallbackFont context:off_33C828];

  v5.receiver = self;
  v5.super_class = BCLayoutMetrics;
  [(BCLayoutMetrics *)&v5 dealloc];
}

- (void)_fontNeedsUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained bc_environmentDidChangeFont];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_33C828 == context)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_18EE0;
    block[3] = &unk_2C7D40;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = BCLayoutMetrics;
    [(BCLayoutMetrics *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (BOOL)updateIfNeededWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [(BCLayoutMetrics *)self _needsUpdatingWithEnvironment:environmentCopy];
  if (v5)
  {
    if (environmentCopy)
    {
      v6 = [(BCLayoutMetrics *)self _computeMetricsWithEnvironment:environmentCopy];
    }

    else
    {
      v6 = 0;
    }

    metrics = self->_metrics;
    self->_metrics = v6;
  }

  return v5;
}

- (BOOL)_needsUpdatingWithEnvironment:(id)environment
{
  environmentCopy = environment;
  environment = [(BCLayoutMetrics *)self environment];

  LOBYTE(v6) = 1;
  if (environmentCopy && environment)
  {
    environment2 = [(BCLayoutMetrics *)self environment];
    v6 = [environmentCopy isEqualToEnvironment:environment2] ^ 1;
  }

  return v6;
}

- (void)invalidate
{
  environment = self->_environment;
  self->_environment = 0;

  metrics = self->_metrics;
  self->_metrics = 0;
}

- (id)_computeMetricsWithEnvironment:(id)environment
{
  environmentCopy = environment;
  kdebug_trace();
  objc_storeStrong(&self->_environment, environment);
  v6 = [TUIInstantiateContext alloc];
  package = [(TUITemplate *)self->_metricsTemplate package];
  manager = self->_manager;
  v9 = objc_opt_new();
  v10 = [v6 initWithDelegate:0 package:package manager:manager identifierMap:v9 environment:environmentCopy state:0 feedId:TUIFeedIdentifierNil];

  delegate = [(BCLayoutMetrics *)self delegate];
  package2 = [(TUITemplate *)self->_metricsTemplate package];
  [delegate addSymbolsToMetricsEnvironment:environmentCopy package:package2];

  v13 = +[NSMutableDictionary dictionary];
  v25 = v10;
  v14 = [v10 instantiateTemplate:self->_metricsTemplate bindings:0 actionObject:0];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  supportedMetrics = [objc_opt_class() supportedMetrics];

  v17 = [supportedMetrics countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(supportedMetrics);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        sectionName = [objc_opt_class() sectionName];
        v23 = [v14 sectionForKey:sectionName];
        if (v23)
        {
          [v21 configureWithSection:v23];
          [v13 setObject:v21 forKey:sectionName];
        }
      }

      v18 = [supportedMetrics countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  kdebug_trace();

  return v13;
}

- (BCMetricsEnvironmentObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (BCLayoutMetricsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end