@interface CarOneHandedZoomConfiguration
- (CarOneHandedZoomConfiguration)initWithGestureRecongizer:(id)a3;
- (double)valueWithKey:(id)a3 defaultValue:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_refreshSetting;
- (void)dealloc;
@end

@implementation CarOneHandedZoomConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->_gestureRecognizer);
  v6 = [v4 initWithGestureRecongizer:WeakRetained];

  return v6;
}

- (double)valueWithKey:(id)a3 defaultValue:(double)a4
{
  v5 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 floatForKey:v5];
    a4 = v9;
  }

  return a4;
}

- (void)_refreshSetting
{
  [(CarOneHandedZoomConfiguration *)self valueWithKey:@"__internal__CarPlayOneHandedZoomInMaximumVelocity" defaultValue:10.0];
  self->_maximumZoomInVelocity = v3;
  [(CarOneHandedZoomConfiguration *)self valueWithKey:@"__internal__CarPlayOneHandedZoomOutMaximumVelocity" defaultValue:1.5];
  self->_maximumZoomOutVelocity = -v4;
  [(CarOneHandedZoomConfiguration *)self valueWithKey:@"__internal__CarPlayOneHandedZoomOutFrictionScale" defaultValue:2.5];
  self->_zoomOutFrictionScale = v5;
  [(CarOneHandedZoomConfiguration *)self valueWithKey:@"__internal__CarPlayOneHandedZoomDraggingResistance" defaultValue:1.0];
  self->_zoomDraggingResistance = v6 * 200.0;
  [(CarOneHandedZoomConfiguration *)self valueWithKey:@"__internal__CarPlayOneHandedZoomMinimumVelocity" defaultValue:1.5];
  self->_decelerationThreshold = v7;
  zoomDraggingResistance = self->_zoomDraggingResistance;
  WeakRetained = objc_loadWeakRetained(&self->_gestureRecognizer);
  v9 = [WeakRetained panGestureRecognizer];
  [v9 setZoomDraggingResistance:zoomDraggingResistance];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CarOneHandedZoomConfiguration;
  [(CarOneHandedZoomConfiguration *)&v4 dealloc];
}

- (CarOneHandedZoomConfiguration)initWithGestureRecongizer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CarOneHandedZoomConfiguration;
  v5 = [(CarOneHandedZoomConfiguration *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_gestureRecognizer, v4);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"_refreshSetting" name:@"CarPlayOneHandedZoomingSettingDidChangeNotification" object:0];

    [(CarOneHandedZoomConfiguration *)v6 _refreshSetting];
  }

  return v6;
}

@end