@interface CoverSheetSceneAssociation
- (CoverSheetSceneAssociation)initWithMapsScene:(id)a3;
@end

@implementation CoverSheetSceneAssociation

- (CoverSheetSceneAssociation)initWithMapsScene:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CoverSheetSceneAssociation;
  v6 = [(CoverSheetSceneAssociation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapsScene, a3);
  }

  return v7;
}

@end