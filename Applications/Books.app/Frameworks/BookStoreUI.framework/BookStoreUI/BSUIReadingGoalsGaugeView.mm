@interface BSUIReadingGoalsGaugeView
+ (id)renderModelWithIdentifier:(id)a3 metrics:(id)a4;
- (void)_configureHostingController;
- (void)_configureWithModel:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)dynamicProgressChanged:(id)a3;
- (void)layoutSubviews;
@end

@implementation BSUIReadingGoalsGaugeView

+ (id)renderModelWithIdentifier:(id)a3 metrics:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_BSUIRenderModelReadingGoalsGauge);
  [(_BSUIRenderModelReadingGoalsGauge *)v7 setMetrics:v5];

  v8 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"BSUIReuseIdentifierReadingGoalsGaugeView" identifier:v6 submodel:v7];

  return v8;
}

- (void)applyLayoutAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = BSUIReadingGoalsGaugeView;
  v4 = a3;
  [(BSUIReadingGoalsGaugeView *)&v7 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];

  v6 = [v5 submodel];
  [(BSUIReadingGoalsGaugeView *)self _configureWithModel:v6];
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
  v11 = [(BSUIReadingGoalsGaugeView *)self hostingViewController];
  v12 = [v11 view];
  [v12 setFrame:{v4, v6, v8, v10}];
}

- (void)_configureWithModel:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToRenderModel:self->_renderModel] & 1) == 0)
  {
    objc_storeStrong(&self->_renderModel, a3);
    [(BSUIReadingGoalsGaugeView *)self _configureHostingController];
  }
}

- (void)_configureHostingController
{
  if (!self->_hostingViewController)
  {
    v3 = [(_BSUIRenderModelReadingGoalsGauge *)self->_renderModel metrics];
    [v3 size];
    v4 = [BSUIReadingGoalsGaugeHostingControllerFactory createWith:?];
    hostingViewController = self->_hostingViewController;
    self->_hostingViewController = v4;

    v6 = [(BSUIReadingGoalsGaugeView *)self hostingViewController];
    v7 = [v6 view];
    [(BSUIReadingGoalsGaugeView *)self addSubview:v7];

    v8 = +[BSUITemplate manager];
    v9 = [v8 dynamicRegistry];

    v10 = +[BCReadingTimeToday kind];
    v11 = [v9 progressProviderForKind:v10];
    v12 = [v11 dynamicProgressForKind:v10 instance:0 parameters:0];
    [v12 registerProgressObserver:self];
    dynamicProgress = self->_dynamicProgress;
    self->_dynamicProgress = v12;
  }

  v14 = [(_BSUIRenderModelReadingGoalsGauge *)self->_renderModel metrics];
  [(ReadingGaugeViewControllerProtocol *)self->_hostingViewController setMetrics:v14];
}

- (void)dynamicProgressChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 progress];

  if (v5)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A5C8;
    block[3] = &unk_386F40;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

@end