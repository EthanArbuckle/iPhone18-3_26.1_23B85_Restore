@interface BKBrightnessController
- (UISlider)slider;
- (void)dealloc;
- (void)releaseViews;
- (void)setBrightness:(id)a3;
- (void)updateBrightness;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BKBrightnessController

- (void)dealloc
{
  [(BKBrightnessController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKBrightnessController;
  [(BKViewController *)&v3 dealloc];
}

- (void)releaseViews
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[UIScreen mainScreen];
  [v3 removeObserver:self name:UIScreenBrightnessDidChangeNotification object:v4];

  v5.receiver = self;
  v5.super_class = BKBrightnessController;
  [(BKViewController *)&v5 releaseViews];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = BKBrightnessController;
  [(BKBrightnessController *)&v13 viewDidLoad];
  v3 = [UIImage systemImageNamed:@"sun.min.fill"];
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:1 scale:18.0];
  v5 = [v3 imageWithConfiguration:v4];
  WeakRetained = objc_loadWeakRetained(&self->_slider);
  [WeakRetained setMinimumValueImage:v5];

  v7 = [UIImage systemImageNamed:@"sun.max.fill"];
  v8 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:2 scale:18.0];
  v9 = [v7 imageWithConfiguration:v8];
  v10 = objc_loadWeakRetained(&self->_slider);
  [v10 setMaximumValueImage:v9];

  v11 = +[NSNotificationCenter defaultCenter];
  v12 = +[UIScreen mainScreen];
  [v11 addObserver:self selector:"updateBrightness" name:UIScreenBrightnessDidChangeNotification object:v12];

  [(BKBrightnessController *)self setPreferredContentSize:300.0, 44.0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKBrightnessController;
  [(BKBrightnessController *)&v4 viewWillAppear:a3];
  [(BKBrightnessController *)self updateBrightness];
}

- (void)setBrightness:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_slider);
  [WeakRetained value];
  v4 = v3;
  v5 = +[UIScreen mainScreen];
  [v5 setBrightness:v4];
}

- (void)updateBrightness
{
  v7 = +[UIScreen mainScreen];
  [v7 brightness];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained(&self->_slider);
  *&v6 = v4;
  [WeakRetained setValue:v6];
}

- (UISlider)slider
{
  WeakRetained = objc_loadWeakRetained(&self->_slider);

  return WeakRetained;
}

@end