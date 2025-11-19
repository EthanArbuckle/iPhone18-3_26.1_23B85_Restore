@interface CameraSettingsListItemsController
- (id)itemsFromParent;
@end

@implementation CameraSettingsListItemsController

- (id)itemsFromParent
{
  v5.receiver = self;
  v5.super_class = CameraSettingsListItemsController;
  v2 = [(CameraSettingsListItemsController *)&v5 itemsFromParent];
  v3 = [NSMutableArray arrayWithArray:v2];

  [v3 enumerateObjectsUsingBlock:&stru_2CBF0];

  return v3;
}

@end