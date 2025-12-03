@interface SCATMenuItemFactory
+ (id)actionMenuItemForItem:(id)item menu:(id)menu delegate:(id)delegate;
+ (id)menuItemsForItem:(id)item menu:(id)menu delegate:(id)delegate;
@end

@implementation SCATMenuItemFactory

+ (id)menuItemsForItem:(id)item menu:(id)menu delegate:(id)delegate
{
  itemCopy = item;
  menuCopy = menu;
  delegateCopy = delegate;
  v10 = +[AXSettings sharedInstance];
  gestureKeys = [v10 gestureKeys];
  v12 = [gestureKeys containsObject:itemCopy];

  if (v12)
  {
    v13 = off_1001D1A30;
  }

  else
  {
    settingsKeys = [v10 settingsKeys];
    v15 = [settingsKeys containsObject:itemCopy];

    if (v15)
    {
      v13 = off_1001D1A40;
    }

    else
    {
      deviceKeys = [v10 deviceKeys];
      v17 = [deviceKeys containsObject:itemCopy];

      if (v17)
      {
        v13 = off_1001D1A28;
      }

      else
      {
        mediaControlsKeys = [v10 mediaControlsKeys];
        v19 = [mediaControlsKeys containsObject:itemCopy];

        v13 = off_1001D1A20;
        if (v19)
        {
          v13 = off_1001D1A38;
        }
      }
    }
  }

  v20 = [(__objc2_class *)*v13 menuItemsForItem:itemCopy menu:menuCopy delegate:delegateCopy];

  return v20;
}

+ (id)actionMenuItemForItem:(id)item menu:(id)menu delegate:(id)delegate
{
  itemCopy = item;
  menuCopy = menu;
  swift_unknownObjectRetain();
  v9 = sub_10010222C(itemCopy, delegate);

  swift_unknownObjectRelease();

  return v9;
}

@end