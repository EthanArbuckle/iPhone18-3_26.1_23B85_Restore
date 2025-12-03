@interface DockedViewControllerState
+ (id)withID:(id)d title:(id)title;
- (BOOL)isEqual:(id)equal;
- (DockedViewControllerState)initWithCoder:(id)coder;
- (DockedViewControllerState)initWithDockableViewController:(id)controller;
- (id)createDockedViewWithFrame:(CGRect)frame;
- (id)restoreViewControllerWithScene:(id)scene;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DockedViewControllerState

- (DockedViewControllerState)initWithDockableViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = DockedViewControllerState;
  v5 = [(RestorableViewControllerState *)&v10 initWithRestorableViewController:controllerCopy];
  if (v5)
  {
    dockIdentifier = [controllerCopy dockIdentifier];
    v7 = [dockIdentifier copy];
    dockIdentifier = v5->_dockIdentifier;
    v5->_dockIdentifier = v7;
  }

  return v5;
}

- (DockedViewControllerState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DockedViewControllerState;
  v5 = [(RestorableViewControllerState *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDockIdentifierKey"];
    dockIdentifier = v5->_dockIdentifier;
    v5->_dockIdentifier = v6;
  }

  return v5;
}

- (id)restoreViewControllerWithScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = DockedViewControllerState;
  v3 = [(RestorableViewControllerState *)&v5 restoreViewControllerWithScene:scene];

  return v3;
}

- (id)createDockedViewWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  storedViewControllerClass = [(RestorableViewControllerState *)self storedViewControllerClass];
  storedUserActivity = [(RestorableViewControllerState *)self storedUserActivity];
  height = [(objc_class *)storedViewControllerClass dockedViewForUserActivity:storedUserActivity withFrame:x, y, width, height];

  return height;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = DockedViewControllerState;
  [(RestorableViewControllerState *)&v6 encodeWithCoder:coderCopy];
  dockIdentifier = self->_dockIdentifier;
  if (dockIdentifier)
  {
    [coderCopy encodeObject:dockIdentifier forKey:@"kDockIdentifierKey"];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dockIdentifier = [equalCopy dockIdentifier];
    dockIdentifier2 = [(DockedViewControllerState *)self dockIdentifier];
    v7 = [dockIdentifier isEqualToString:dockIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)withID:(id)d title:(id)title
{
  dCopy = d;
  titleCopy = title;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (titleCopy)
    {
      v7 = titleCopy;
    }

    else
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v9 localizedStringForKey:@"NEW_MESSAGE" value:&stru_100662A88 table:@"Main"];
    }

    v18[0] = MSMailActivityHandoffComposeKeyAutosaveID;
    v18[1] = MSMailActivityHandoffComposeKeySubject;
    v19[0] = dCopy;
    v19[1] = v7;
    v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v11 = [NSUserActivity alloc];
    v12 = [v11 initWithActivityType:MSMailActivityHandoffTypeComposeWithStreams];
    [v12 setUserInfo:v10];
    v8 = [(RestorableViewControllerState *)[DockedViewControllerState alloc] initWithUserActivity:v12 viewControllerClass:objc_opt_class()];
    [(DockedViewControllerState *)v8 setDockIdentifier:dCopy];
    v13 = +[DockPersistenceSerialization log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      dockIdentifier = [(DockedViewControllerState *)v8 dockIdentifier];
      v16 = 138412290;
      v17 = dockIdentifier;
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