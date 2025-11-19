@interface RCSceneDelegate
- (BOOL)isInAndromeda;
- (BOOL)isInForeground;
- (id)recorderAppDelegate;
- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6;
@end

@implementation RCSceneDelegate

- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6
{
  v14 = a3;
  v8 = a6;
  if ([v8 isInAndromeda])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v14 traitCollection];
    v9 = [v10 isInAndromeda];
  }

  if ([v8 isInAndromeda])
  {
    v11 = [v14 traitCollection];
    v12 = [v11 isInAndromeda] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  if ((v9 | v12))
  {
    v13 = [(RCSceneDelegate *)self recorderAppDelegate];
    [v13 reconcileApplicationState];
  }
}

- (BOOL)isInForeground
{
  v3 = [(RCSceneDelegate *)self window];
  v4 = [v3 windowScene];

  if (!v4)
  {
    return 0;
  }

  v5 = [(RCSceneDelegate *)self window];
  v6 = [v5 windowScene];
  v7 = [v6 activationState] == 0;

  return v7;
}

- (BOOL)isInAndromeda
{
  v2 = [(RCSceneDelegate *)self window];
  v3 = [v2 windowScene];
  v4 = [v3 traitCollection];
  v5 = [v4 isInAndromeda];

  return v5;
}

- (id)recorderAppDelegate
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = +[UIApplication sharedApplication];
    v6 = [v5 delegate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end