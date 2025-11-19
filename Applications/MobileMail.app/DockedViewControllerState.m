@interface DockedViewControllerState
+ (id)withID:(id)a3 title:(id)a4;
- (BOOL)isEqual:(id)a3;
- (DockedViewControllerState)initWithCoder:(id)a3;
- (DockedViewControllerState)initWithDockableViewController:(id)a3;
- (id)createDockedViewWithFrame:(CGRect)a3;
- (id)restoreViewControllerWithScene:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DockedViewControllerState

- (DockedViewControllerState)initWithDockableViewController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DockedViewControllerState;
  v5 = [(RestorableViewControllerState *)&v10 initWithRestorableViewController:v4];
  if (v5)
  {
    v6 = [v4 dockIdentifier];
    v7 = [v6 copy];
    dockIdentifier = v5->_dockIdentifier;
    v5->_dockIdentifier = v7;
  }

  return v5;
}

- (DockedViewControllerState)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DockedViewControllerState;
  v5 = [(RestorableViewControllerState *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDockIdentifierKey"];
    dockIdentifier = v5->_dockIdentifier;
    v5->_dockIdentifier = v6;
  }

  return v5;
}

- (id)restoreViewControllerWithScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = DockedViewControllerState;
  v3 = [(RestorableViewControllerState *)&v5 restoreViewControllerWithScene:a3];

  return v3;
}

- (id)createDockedViewWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(RestorableViewControllerState *)self storedViewControllerClass];
  v9 = [(RestorableViewControllerState *)self storedUserActivity];
  v10 = [(objc_class *)v8 dockedViewForUserActivity:v9 withFrame:x, y, width, height];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = DockedViewControllerState;
  [(RestorableViewControllerState *)&v6 encodeWithCoder:v4];
  dockIdentifier = self->_dockIdentifier;
  if (dockIdentifier)
  {
    [v4 encodeObject:dockIdentifier forKey:@"kDockIdentifierKey"];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 dockIdentifier];
    v6 = [(DockedViewControllerState *)self dockIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)withID:(id)a3 title:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v9 localizedStringForKey:@"NEW_MESSAGE" value:&stru_100662A88 table:@"Main"];
    }

    v18[0] = MSMailActivityHandoffComposeKeyAutosaveID;
    v18[1] = MSMailActivityHandoffComposeKeySubject;
    v19[0] = v5;
    v19[1] = v7;
    v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v11 = [NSUserActivity alloc];
    v12 = [v11 initWithActivityType:MSMailActivityHandoffTypeComposeWithStreams];
    [v12 setUserInfo:v10];
    v8 = [(RestorableViewControllerState *)[DockedViewControllerState alloc] initWithUserActivity:v12 viewControllerClass:objc_opt_class()];
    [(DockedViewControllerState *)v8 setDockIdentifier:v5];
    v13 = +[DockPersistenceSerialization log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(DockedViewControllerState *)v8 dockIdentifier];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Created docked state with identifier: %@", &v16, 0xCu);
    }
  }

  else
  {
    v7 = +[DockPersistenceSerialization log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100485F74();
    }

    v8 = 0;
  }

  return v8;
}

@end