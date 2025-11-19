@interface ApplicationSessionController
- (ApplicationSessionController)init;
- (CoverSheetSceneAssociation)currentlyNavigatingCoverSheetSceneAssociation;
- (id)addActiveiOSPlatformControllerForScene:(id)a3;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)removeiOSPlatformController:(id)a3;
- (void)setCurrentlyNavigatingPlatformController:(id)a3;
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

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v9)
  {
    v11 = v14;
    if (isKindOfClass)
    {
      goto LABEL_6;
    }
  }

  v12 = v8;
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if (v12 && (v13 & 1) != 0)
  {
    v11 = 0;
LABEL_6:
    [(ApplicationSessionController *)self setCurrentlyNavigatingPlatformController:v11];
  }
}

- (void)removeiOSPlatformController:(id)a3
{
  v7 = a3;
  v4 = [(ApplicationSessionController *)self activeiOSPlatformControllersToCoverSheetSceneAssociation];
  [v4 removeObjectForKey:v7];

  v5 = [(ApplicationSessionController *)self primaryPlatformController];

  v6 = v7;
  if (v5 != v7)
  {
    [v7 unregisterObserver:self];
    v6 = v7;
  }
}

- (id)addActiveiOSPlatformControllerForScene:(id)a3
{
  v4 = a3;
  v5 = [(ApplicationSessionController *)self activeiOSPlatformControllersToCoverSheetSceneAssociation];
  v6 = [v5 count];

  if (v6)
  {
    v7 = objc_alloc_init(PlatformController);
    [(PlatformController *)v7 registerObserver:self];
  }

  else
  {
    v7 = [(ApplicationSessionController *)self primaryPlatformController];
  }

  v8 = [[CoverSheetSceneAssociation alloc] initWithMapsScene:v4];

  v9 = [(ApplicationSessionController *)self activeiOSPlatformControllersToCoverSheetSceneAssociation];
  [v9 setObject:v8 forKey:v7];

  return v7;
}

- (void)setCurrentlyNavigatingPlatformController:(id)a3
{
  v5 = a3;
  currentlyNavigatingPlatformController = self->_currentlyNavigatingPlatformController;
  p_currentlyNavigatingPlatformController = &self->_currentlyNavigatingPlatformController;
  if (currentlyNavigatingPlatformController != v5)
  {
    v9 = v5;
    objc_storeStrong(p_currentlyNavigatingPlatformController, a3);
    v8 = +[UIApplication sharedMapsDelegate];
    [v8 acquireSecureAppAssertionIfNeeded];

    v5 = v9;
  }
}

- (CoverSheetSceneAssociation)currentlyNavigatingCoverSheetSceneAssociation
{
  v3 = [(ApplicationSessionController *)self activeiOSPlatformControllersToCoverSheetSceneAssociation];
  v4 = [(ApplicationSessionController *)self currentlyNavigatingPlatformController];
  v5 = [v3 objectForKey:v4];

  return v5;
}

@end