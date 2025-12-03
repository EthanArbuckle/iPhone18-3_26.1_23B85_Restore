@interface ApplicationSessionController
- (ApplicationSessionController)init;
- (CoverSheetSceneAssociation)currentlyNavigatingCoverSheetSceneAssociation;
- (id)addActiveiOSPlatformControllerForScene:(id)scene;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)removeiOSPlatformController:(id)controller;
- (void)setCurrentlyNavigatingPlatformController:(id)controller;
@end

@implementation ApplicationSessionController

- (ApplicationSessionController)init
{
  v8.receiver = self;
  v8.super_class = ApplicationSessionController;
  v2 = [(ApplicationSessionController *)&v8 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    activeiOSPlatformControllersToCoverSheetSceneAssociation = v2->_activeiOSPlatformControllersToCoverSheetSceneAssociation;
    v2->_activeiOSPlatformControllersToCoverSheetSceneAssociation = v3;

    v5 = objc_alloc_init(PlatformController);
    primaryPlatformController = v2->_primaryPlatformController;
    v2->_primaryPlatformController = v5;

    [v2->_primaryPlatformController setIsPrimary:1];
    [v2->_primaryPlatformController registerObserver:v2];
  }

  return v2;
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  controllerCopy = controller;
  sessionCopy = session;
  toSessionCopy = toSession;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (toSessionCopy)
  {
    v11 = controllerCopy;
    if (isKindOfClass)
    {
      goto LABEL_6;
    }
  }

  v12 = sessionCopy;
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if (v12 && (v13 & 1) != 0)
  {
    v11 = 0;
LABEL_6:
    [(ApplicationSessionController *)self setCurrentlyNavigatingPlatformController:v11];
  }
}

- (void)removeiOSPlatformController:(id)controller
{
  controllerCopy = controller;
  activeiOSPlatformControllersToCoverSheetSceneAssociation = [(ApplicationSessionController *)self activeiOSPlatformControllersToCoverSheetSceneAssociation];
  [activeiOSPlatformControllersToCoverSheetSceneAssociation removeObjectForKey:controllerCopy];

  primaryPlatformController = [(ApplicationSessionController *)self primaryPlatformController];

  v6 = controllerCopy;
  if (primaryPlatformController != controllerCopy)
  {
    [controllerCopy unregisterObserver:self];
    v6 = controllerCopy;
  }
}

- (id)addActiveiOSPlatformControllerForScene:(id)scene
{
  sceneCopy = scene;
  activeiOSPlatformControllersToCoverSheetSceneAssociation = [(ApplicationSessionController *)self activeiOSPlatformControllersToCoverSheetSceneAssociation];
  v6 = [activeiOSPlatformControllersToCoverSheetSceneAssociation count];

  if (v6)
  {
    primaryPlatformController = objc_alloc_init(PlatformController);
    [(PlatformController *)primaryPlatformController registerObserver:self];
  }

  else
  {
    primaryPlatformController = [(ApplicationSessionController *)self primaryPlatformController];
  }

  v8 = [[CoverSheetSceneAssociation alloc] initWithMapsScene:sceneCopy];

  activeiOSPlatformControllersToCoverSheetSceneAssociation2 = [(ApplicationSessionController *)self activeiOSPlatformControllersToCoverSheetSceneAssociation];
  [activeiOSPlatformControllersToCoverSheetSceneAssociation2 setObject:v8 forKey:primaryPlatformController];

  return primaryPlatformController;
}

- (void)setCurrentlyNavigatingPlatformController:(id)controller
{
  controllerCopy = controller;
  currentlyNavigatingPlatformController = self->_currentlyNavigatingPlatformController;
  p_currentlyNavigatingPlatformController = &self->_currentlyNavigatingPlatformController;
  if (currentlyNavigatingPlatformController != controllerCopy)
  {
    v9 = controllerCopy;
    objc_storeStrong(p_currentlyNavigatingPlatformController, controller);
    v8 = +[UIApplication sharedMapsDelegate];
    [v8 acquireSecureAppAssertionIfNeeded];

    controllerCopy = v9;
  }
}

- (CoverSheetSceneAssociation)currentlyNavigatingCoverSheetSceneAssociation
{
  activeiOSPlatformControllersToCoverSheetSceneAssociation = [(ApplicationSessionController *)self activeiOSPlatformControllersToCoverSheetSceneAssociation];
  currentlyNavigatingPlatformController = [(ApplicationSessionController *)self currentlyNavigatingPlatformController];
  v5 = [activeiOSPlatformControllersToCoverSheetSceneAssociation objectForKey:currentlyNavigatingPlatformController];

  return v5;
}

@end