@interface RCSceneDelegate
- (BOOL)isInAndromeda;
- (BOOL)isInForeground;
- (id)recorderAppDelegate;
- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection;
@end

@implementation RCSceneDelegate

- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection
{
  sceneCopy = scene;
  collectionCopy = collection;
  if ([collectionCopy isInAndromeda])
  {
    isInAndromeda = 0;
  }

  else
  {
    traitCollection = [sceneCopy traitCollection];
    isInAndromeda = [traitCollection isInAndromeda];
  }

  if ([collectionCopy isInAndromeda])
  {
    traitCollection2 = [sceneCopy traitCollection];
    v12 = [traitCollection2 isInAndromeda] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  if ((isInAndromeda | v12))
  {
    recorderAppDelegate = [(RCSceneDelegate *)self recorderAppDelegate];
    [recorderAppDelegate reconcileApplicationState];
  }
}

- (BOOL)isInForeground
{
  window = [(RCSceneDelegate *)self window];
  windowScene = [window windowScene];

  if (!windowScene)
  {
    return 0;
  }

  window2 = [(RCSceneDelegate *)self window];
  windowScene2 = [window2 windowScene];
  v7 = [windowScene2 activationState] == 0;

  return v7;
}

- (BOOL)isInAndromeda
{
  window = [(RCSceneDelegate *)self window];
  windowScene = [window windowScene];
  traitCollection = [windowScene traitCollection];
  isInAndromeda = [traitCollection isInAndromeda];

  return isInAndromeda;
}

- (id)recorderAppDelegate
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = +[UIApplication sharedApplication];
    delegate2 = [v5 delegate];
  }

  else
  {
    delegate2 = 0;
  }

  return delegate2;
}

@end