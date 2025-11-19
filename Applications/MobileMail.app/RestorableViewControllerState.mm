@interface RestorableViewControllerState
- (RestorableViewControllerState)initWithCoder:(id)a3;
- (RestorableViewControllerState)initWithRestorableViewController:(id)a3;
- (RestorableViewControllerState)initWithUserActivity:(id)a3 viewControllerClass:(Class)a4;
- (id)restoreViewControllerWithScene:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RestorableViewControllerState

- (RestorableViewControllerState)initWithRestorableViewController:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RestorableViewControllerState;
  v5 = [(RestorableViewControllerState *)&v11 init];
  if (v5)
  {
    v6 = [v4 userActivityForRestoration];
    storedUserActivity = v5->_storedUserActivity;
    v5->_storedUserActivity = v6;

    v8 = objc_opt_class();
    storedViewControllerClass = v5->_storedViewControllerClass;
    v5->_storedViewControllerClass = v8;
  }

  return v5;
}

- (RestorableViewControllerState)initWithUserActivity:(id)a3 viewControllerClass:(Class)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RestorableViewControllerState;
  v8 = [(RestorableViewControllerState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_storedViewControllerClass, a4);
    objc_storeStrong(&v9->_storedUserActivity, a3);
  }

  return v9;
}

- (id)restoreViewControllerWithScene:(id)a3
{
  v4 = a3;
  v5 = objc_alloc([(RestorableViewControllerState *)self storedViewControllerClass]);
  v6 = [(RestorableViewControllerState *)self storedUserActivity];
  v7 = [v5 initWithUserActivity:v6 scene:v4];

  return v7;
}

- (RestorableViewControllerState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kStoredActivityType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kStoredViewControllerClassName"];
  v7 = NSClassFromString(v6);
  v8 = 0;
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
        v15 = [v4 decodeObjectOfClasses:v14 forKey:@"kStoredActivityInfo"];
        [(NSUserActivity *)v10->_storedUserActivity setUserInfo:v15];

        objc_storeStrong(&v10->_storedViewControllerClass, v9);
      }

      self = v10;
      v8 = self;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(RestorableViewControllerState *)self storedUserActivity];
  v5 = [v4 activityType];
  [v9 encodeObject:v5 forKey:@"kStoredActivityType"];

  v6 = [(RestorableViewControllerState *)self storedUserActivity];
  v7 = [v6 userInfo];
  [v9 encodeObject:v7 forKey:@"kStoredActivityInfo"];

  v8 = NSStringFromClass([(RestorableViewControllerState *)self storedViewControllerClass]);
  [v9 encodeObject:v8 forKey:@"kStoredViewControllerClassName"];
}

@end