@interface CarFocusContainerGuide
+ (id)focusContainerGuideInstalledInView:(id)view;
- (CarFocusContainerGuide)init;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation CarFocusContainerGuide

- (CarFocusContainerGuide)init
{
  v14.receiver = self;
  v14.super_class = CarFocusContainerGuide;
  v2 = [(CarFocusContainerGuide *)&v14 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 BOOLForKey:@"__internal_CarVisualizeFocusGuidesDebug"];

    if (v5)
    {
      v6 = [[CarFocusGuideDebugView alloc] initWithDirection:0];
      debugView = v2->_debugView;
      v2->_debugView = v6;

      [(UIView *)v2->_debugView setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v8) = 1148846080;
      v9 = [(UIView *)v2->_debugView _maps_constraintsEqualToEdgesOfLayoutGuide:v2 insets:UIEdgeInsetsZero.top priority:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v8];
      allConstraints = [v9 allConstraints];
      [v3 addObjectsFromArray:allConstraints];
    }

    v11 = [v3 copy];
    activationConstraints = v2->_activationConstraints;
    v2->_activationConstraints = v11;
  }

  return v2;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = CarFocusContainerGuide;
  [(CarFocusContainerGuide *)&v6 setEnabled:?];
  debugView = [(CarFocusContainerGuide *)self debugView];
  [debugView setUserInteractionEnabled:enabledCopy];
}

+ (id)focusContainerGuideInstalledInView:(id)view
{
  viewCopy = view;
  v4 = objc_alloc_init(CarFocusContainerGuide);
  v5 = +[NSMutableArray array];
  LODWORD(v6) = 1148846080;
  v7 = [(CarFocusContainerGuide *)v4 _maps_constraintsEqualToEdgesOfView:viewCopy priority:v6];

  allConstraints = [v7 allConstraints];
  [v5 addObjectsFromArray:allConstraints];

  activationConstraints = [(CarFocusContainerGuide *)v4 activationConstraints];
  v10 = [activationConstraints arrayByAddingObjectsFromArray:v5];
  [(CarFocusContainerGuide *)v4 setActivationConstraints:v10];

  return v4;
}

@end