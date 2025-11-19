@interface VoiceOverGesturePickerController
- (VoiceOverGesturePickerPresenter)presenter;
- (id)makeSpecifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverGesturePickerController

- (id)makeSpecifiers
{
  v27 = objc_opt_new();
  v3 = OBJC_IVAR___PSViewController__specifier;
  v35 = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandManager];
  v32 = self;
  v4 = [*&self->AXUISettingsSearchableBaseListController_opaque[v3] voCommandResolver];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = +[VOSGestureCategory allCategories];
  v29 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  v5 = 0;
  if (v29)
  {
    v30 = 0;
    v28 = *v42;
    v34 = PSEnabledKey;
    v6 = v35;
    do
    {
      v7 = 0;
      do
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v7;
        v8 = *(*(&v41 + 1) + 8 * v7);
        v9 = +[NSMutableArray array];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v33 = v8;
        v36 = [v8 gestures];
        v10 = [v36 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v38;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v38 != v12)
              {
                objc_enumerationMutation(v36);
              }

              v14 = *(*(&v37 + 1) + 8 * i);
              v15 = [v6 availabilityForGesture:v14 withResolver:v4];
              if (v15 != &dword_0 + 2)
              {
                v16 = v15;
                v17 = [PSSpecifier voGestureItem:v14 commandManager:v6 resolver:v4];

                v18 = [NSNumber numberWithUnsignedInteger:v16];
                v19 = [v17 voCommandContext];
                [v19 setBindingAvailability:v18];

                if (v16)
                {
                  v20 = 0;
                }

                else
                {
                  v20 = [(VoiceOverGesturePickerController *)v32 _isCategoryEnabled:v33];
                }

                v21 = [NSNumber numberWithInt:v20];
                [v17 setProperty:v21 forKey:v34];

                [v9 addObject:v17];
                v5 = v17;
                v6 = v35;
              }
            }

            v11 = [v36 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v11);
        }

        if ([v9 count])
        {
          v22 = [v33 localizedCategoryName];
          v23 = [PSSpecifier groupSpecifierWithName:v22];

          [v27 addObject:v23];
          v6 = v35;
          [v27 addObjectsFromArray:v9];
          v30 = v23;
        }

        v7 = v31 + 1;
      }

      while ((v31 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v29);
  }

  else
  {
    v30 = 0;
    v6 = v35;
  }

  v24 = v27;
  return v27;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = *&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier];
  v8 = a5;
  v9 = a4;
  v10 = [v7 voCommandContext];
  v14 = [v10 gesture];

  v11 = [(VoiceOverGesturePickerController *)self specifierForIndexPath:v8];

  v12 = [v11 voCommandContext];
  v13 = [v12 gesture];

  [v9 setChecked:{objc_msgSend(v14, "isEqual:", v13)}];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = OBJC_IVAR___PSViewController__specifier;
  v8 = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandContext];
  v19 = [v8 gesture];

  v9 = [*&self->AXUISettingsSearchableBaseListController_opaque[v7] voCommandContext];
  v10 = [v9 command];

  v11 = [(VoiceOverGesturePickerController *)self specifierForIndexPath:v6];

  v12 = [v11 voCommandContext];
  v13 = [v12 gesture];

  v14 = [v13 isEqual:v19];
  v15 = [(VoiceOverGesturePickerController *)self presenter];
  v16 = [v15 userSelectedGestureBlock];

  if (v16)
  {
    v17 = [(VoiceOverGesturePickerController *)self presenter];
    v18 = [v17 userSelectedGestureBlock];
    (v18)[2](v18, v13, v10, v14);
  }
}

- (VoiceOverGesturePickerPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end