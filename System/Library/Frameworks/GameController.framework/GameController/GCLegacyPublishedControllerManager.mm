@interface GCLegacyPublishedControllerManager
@end

@implementation GCLegacyPublishedControllerManager

uint64_t __86___GCLegacyPublishedControllerManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  switch(v2)
  {
    case 3:
      [*(result + 32) willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:*(result + 48)];
      v10 = *(v1 + 32);
      v11 = *(v1 + 64);
      v12 = [v10[2] gc_setByRemovingObjectsFromSet:*(v1 + 48)];
      objc_setProperty(v10, v11, 16, v12, 1, 0);

      v7 = *(v1 + 32);
      v8 = *(v1 + 48);
      v9 = 2;
      break;
    case 2:
      [*(result + 32) willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:*(result + 40)];
      v4 = *(v1 + 64);
      v5 = *(v1 + 32);
      v6 = [v5[2] setByAddingObjectsFromSet:*(v1 + 40)];
      objc_setProperty(v5, v4, 16, v6, 1, 0);

      v7 = *(v1 + 32);
      v8 = *(v1 + 40);
      v9 = 1;
      break;
    case 1:
      [*(result + 32) willChangeValueForKey:@"devices"];
      objc_setProperty(*(v1 + 32), *(v1 + 64), 16, *(v1 + 40), 1, 0);
      v3 = *(v1 + 32);

      return [v3 didChangeValueForKey:@"devices"];
    default:
      return result;
  }

  return [v7 didChangeValueForKey:@"devices" withSetMutation:v9 usingObjects:v8];
}

@end