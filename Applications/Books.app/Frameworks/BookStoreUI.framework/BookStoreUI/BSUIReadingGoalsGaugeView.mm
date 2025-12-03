@interface BSUIReadingGoalsGaugeView
+ (id)renderModelWithIdentifier:(id)identifier metrics:(id)metrics;
- (void)_configureHostingController;
- (void)_configureWithModel:(id)model;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)dynamicProgressChanged:(id)changed;
- (void)layoutSubviews;
@end

@implementation BSUIReadingGoalsGaugeView

+ (id)renderModelWithIdentifier:(id)identifier metrics:(id)metrics
{
  metricsCopy = metrics;
  identifierCopy = identifier;
  v7 = objc_alloc_init(_BSUIRenderModelReadingGoalsGauge);
  [(_BSUIRenderModelReadingGoalsGauge *)v7 setMetrics:metricsCopy];

  v8 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"BSUIReuseIdentifierReadingGoalsGaugeView" identifier:identifierCopy submodel:v7];

  return v8;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = BSUIReadingGoalsGaugeView;
  attributesCopy = attributes;
  [(BSUIReadingGoalsGaugeView *)&v7 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];

  submodel = [renderModel submodel];
  [(BSUIReadingGoalsGaugeView *)self _configureWithModel:submodel];
}

- (void)dealloc
{
  [(TUIDynamicProgress *)self->_dynamicProgress unregisterProgressObserver:self];
  v3.receiver = self;
  v3.super_class = BSUIReadingGoalsGaugeView;
  [(BSUIReadingGoalsGaugeView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = BSUIReadingGoalsGaugeView;
  [(BSUIReadingGoalsGaugeView *)&v13 layoutSubviews];
  [(BSUIReadingGoalsGaugeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  hostingViewController = [(BSUIReadingGoalsGaugeView *)self hostingViewController];
  view = [hostingViewController view];
  [view setFrame:{v4, v6, v8, v10}];
}

- (void)_configureWithModel:(id)model
{
  modelCopy = model;
  if (([modelCopy isEqualToRenderModel:self->_renderModel] & 1) == 0)
  {
    objc_storeStrong(&self->_renderModel, model);
    [(BSUIReadingGoalsGaugeView *)self _configureHostingController];
  }
}

- (void)_configureHostingController
{
  if (!self->_hostingViewController)
  {
    metrics = [(_BSUIRenderModelReadingGoalsGauge *)self->_renderModel metrics];
    [metrics size];
    v4 = [BSUIReadingGoalsGaugeHostingControllerFactory createWith:?];
    hostingViewController = self->_hostingViewController;
    self->_hostingViewController = v4;

    hostingViewController = [(BSUIReadingGoalsGaugeView *)self hostingViewController];
    view = [hostingViewController view];
    [(BSUIReadingGoalsGaugeView *)self addSubview:view];

    v8 = +[BSUITemplate manager];
    dynamicRegistry = [v8 dynamicRegistry];

    v10 = +[BCReadingTimeToday kind];
    v11 = [dynamicRegistry progressProviderForKind:v10];
    v12 = [v11 dynamicProgressForKind:v10 instance:0 parameters:0];
    [v12 registerProgressObserver:self];
    dynamicProgress = self->_dynamicProgress;
    self->_dynamicProgress = v12;
  }

  metrics2 = [(_BSUIRenderModelReadingGoalsGauge *)self->_renderModel metrics];
  [(ReadingGaugeViewControllerProtocol *)self->_hostingViewController setMetrics:metrics2];
}

- (void)dynamicProgressChanged:(id)changed
{
  changedCopy = changed;
  progress = [changedCopy progress];

  if (progress)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A5C8;
    block[3] = &unk_386F40;
    objc_copyWeak(&v8, &location);
    v7 = changedCopy;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

@end