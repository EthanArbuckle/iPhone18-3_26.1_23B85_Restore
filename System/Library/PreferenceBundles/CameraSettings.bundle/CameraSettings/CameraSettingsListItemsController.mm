@interface CameraSettingsListItemsController
- (id)itemsFromParent;
@end

@implementation CameraSettingsListItemsController

- (id)itemsFromParent
{
  v5.receiver = self;
  v5.super_class = CameraSettingsListItemsController;
  itemsFromParent = [(CameraSettingsListItemsController *)&v5 itemsFromParent];
  v3 = [NSMutableArray arrayWithArray:itemsFromParent];

  [v3 enumerateObjectsUsingBlock:&stru_2CBF0];

  return v3;
}

@end