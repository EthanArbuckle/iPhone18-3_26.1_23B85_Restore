@interface RestorableViewControllerState
- (RestorableViewControllerState)initWithCoder:(id)coder;
- (RestorableViewControllerState)initWithRestorableViewController:(id)controller;
- (RestorableViewControllerState)initWithUserActivity:(id)activity viewControllerClass:(Class)class;
- (id)restoreViewControllerWithScene:(id)scene;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RestorableViewControllerState

- (RestorableViewControllerState)initWithRestorableViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = RestorableViewControllerState;
  v5 = [(RestorableViewControllerState *)&v11 init];
  if (v5)
  {
    userActivityForRestoration = [controllerCopy userActivityForRestoration];
    storedUserActivity = v5->_storedUserActivity;
    v5->_storedUserActivity = userActivityForRestoration;

    v8 = objc_opt_class();
    storedViewControllerClass = v5->_storedViewControllerClass;
    v5->_storedViewControllerClass = v8;
  }

  return v5;
}

- (RestorableViewControllerState)initWithUserActivity:(id)activity viewControllerClass:(Class)class
{
  activityCopy = activity;
  v11.receiver = self;
  v11.super_class = RestorableViewControllerState;
  v8 = [(RestorableViewControllerState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_storedViewControllerClass, class);
    objc_storeStrong(&v9->_storedUserActivity, activity);
  }

  return v9;
}

- (id)restoreViewControllerWithScene:(id)scene
{
  sceneCopy = scene;
  v5 = objc_alloc([(RestorableViewControllerState *)self storedViewControllerClass]);
  storedUserActivity = [(RestorableViewControllerState *)self storedUserActivity];
  v7 = [v5 initWithUserActivity:storedUserActivity scene:sceneCopy];

  return v7;
}

- (RestorableViewControllerState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kStoredActivityType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kStoredViewControllerClassName"];
  v7 = NSClassFromString(v6);
  selfCopy = 0;
  if (v5)
  {
    v9 = v7;
    if (v7)
    {
      v17.receiver = self;
      v17.super_class = RestorableViewControllerState;
      v10 = [(RestorableViewControllerState *)&v17 init];
      if (v10)
      {
        v11 = [[NSUserActivity alloc] initWithActivityType:v5];
        storedUserActivity = v10->_storedUserActivity;
        v10->_storedUserActivity = v11;

        v13 = objc_opt_class();
        v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
        v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"kStoredActivityInfo"];
        [(NSUserActivity *)v10->_storedUserActivity setUserInfo:v15];

        objc_storeStrong(&v10->_storedViewControllerClass, v9);
      }

      self = v10;
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  storedUserActivity = [(RestorableViewControllerState *)self storedUserActivity];
  activityType = [storedUserActivity activityType];
  [coderCopy encodeObject:activityType forKey:@"kStoredActivityType"];

  storedUserActivity2 = [(RestorableViewControllerState *)self storedUserActivity];
  userInfo = [storedUserActivity2 userInfo];
  [coderCopy encodeObject:userInfo forKey:@"kStoredActivityInfo"];

  v8 = NSStringFromClass([(RestorableViewControllerState *)self storedViewControllerClass]);
  [coderCopy encodeObject:v8 forKey:@"kStoredViewControllerClassName"];
}

@end