@interface CoverSheetSceneAssociation
- (CoverSheetSceneAssociation)initWithMapsScene:(id)scene;
@end

@implementation CoverSheetSceneAssociation

- (CoverSheetSceneAssociation)initWithMapsScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = CoverSheetSceneAssociation;
  v6 = [(CoverSheetSceneAssociation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapsScene, scene);
  }

  return v7;
}

@end