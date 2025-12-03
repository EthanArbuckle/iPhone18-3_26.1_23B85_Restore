@interface TVSettingsPlaybackQualityListItemsController
- (id)specifiers;
@end

@implementation TVSettingsPlaybackQualityListItemsController

- (id)specifiers
{
  v18.receiver = self;
  v18.super_class = TVSettingsPlaybackQualityListItemsController;
  specifiers = [(TVSettingsPlaybackQualityListItemsController *)&v18 specifiers];
  v4 = OBJC_IVAR___PSListController__specifiers;
  v5 = *&self->super.PSListItemsController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.PSListItemsController_opaque[OBJC_IVAR___PSListController__specifiers] = specifiers;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *&self->super.PSListItemsController_opaque[v4];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = PSCellClassKey;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v14 + 1) + 8 * v11) setProperty:objc_opt_class() forKey:{v10, v14}];
        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *&self->super.PSListItemsController_opaque[v4];

  return v12;
}

@end