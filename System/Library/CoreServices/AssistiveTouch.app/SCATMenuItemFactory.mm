@interface SCATMenuItemFactory
+ (id)actionMenuItemForItem:(id)a3 menu:(id)a4 delegate:(id)a5;
+ (id)menuItemsForItem:(id)a3 menu:(id)a4 delegate:(id)a5;
@end

@implementation SCATMenuItemFactory

+ (id)menuItemsForItem:(id)a3 menu:(id)a4 delegate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[AXSettings sharedInstance];
  v11 = [v10 gestureKeys];
  v12 = [v11 containsObject:v7];

  if (v12)
  {
    v13 = off_1001D1A30;
  }

  else
  {
    v14 = [v10 settingsKeys];
    v15 = [v14 containsObject:v7];

    if (v15)
    {
      v13 = off_1001D1A40;
    }

    else
    {
      v16 = [v10 deviceKeys];
      v17 = [v16 containsObject:v7];

      if (v17)
      {
        v13 = off_1001D1A28;
      }

      else
      {
        v18 = [v10 mediaControlsKeys];
        v19 = [v18 containsObject:v7];

        v13 = off_1001D1A20;
        if (v19)
        {
          v13 = off_1001D1A38;
        }
      }
    }
  }

  v20 = [(__objc2_class *)*v13 menuItemsForItem:v7 menu:v8 delegate:v9];

  return v20;
}

+ (id)actionMenuItemForItem:(id)a3 menu:(id)a4 delegate:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = sub_10010222C(v7, a5);

  swift_unknownObjectRelease();

  return v9;
}

@end