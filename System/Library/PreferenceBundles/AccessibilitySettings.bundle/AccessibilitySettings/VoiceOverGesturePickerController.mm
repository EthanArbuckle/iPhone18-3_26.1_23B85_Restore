@interface VoiceOverGesturePickerController
- (VoiceOverGesturePickerPresenter)presenter;
- (id)makeSpecifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation VoiceOverGesturePickerController

- (id)makeSpecifiers
{
  v27 = objc_opt_new();
  v3 = OBJC_IVAR___PSViewController__specifier;
  voCommandManager = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandManager];
  selfCopy = self;
  voCommandResolver = [*&self->AXUISettingsSearchableBaseListController_opaque[v3] voCommandResolver];
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
    v6 = voCommandManager;
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
        gestures = [v8 gestures];
        v10 = [gestures countByEnumeratingWithState:&v37 objects:v45 count:16];
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
                objc_enumerationMutation(gestures);
              }

              v14 = *(*(&v37 + 1) + 8 * i);
              v15 = [v6 availabilityForGesture:v14 withResolver:voCommandResolver];
              if (v15 != &dword_0 + 2)
              {
                v16 = v15;
                v17 = [PSSpecifier voGestureItem:v14 commandManager:v6 resolver:voCommandResolver];

                v18 = [NSNumber numberWithUnsignedInteger:v16];
                voCommandContext = [v17 voCommandContext];
                [voCommandContext setBindingAvailability:v18];

                if (v16)
                {
                  v20 = 0;
                }

                else
                {
                  v20 = [(VoiceOverGesturePickerController *)selfCopy _isCategoryEnabled:v33];
                }

                v21 = [NSNumber numberWithInt:v20];
                [v17 setProperty:v21 forKey:v34];

                [v9 addObject:v17];
                v5 = v17;
                v6 = voCommandManager;
              }
            }

            v11 = [gestures countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v11);
        }

        if ([v9 count])
        {
          localizedCategoryName = [v33 localizedCategoryName];
          v23 = [PSSpecifier groupSpecifierWithName:localizedCategoryName];

          [v27 addObject:v23];
          v6 = voCommandManager;
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
    v6 = voCommandManager;
  }

  v24 = v27;
  return v27;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v7 = *&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier];
  pathCopy = path;
  cellCopy = cell;
  voCommandContext = [v7 voCommandContext];
  gesture = [voCommandContext gesture];

  v11 = [(VoiceOverGesturePickerController *)self specifierForIndexPath:pathCopy];

  voCommandContext2 = [v11 voCommandContext];
  gesture2 = [voCommandContext2 gesture];

  [cellCopy setChecked:{objc_msgSend(gesture, "isEqual:", gesture2)}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = OBJC_IVAR___PSViewController__specifier;
  voCommandContext = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandContext];
  gesture = [voCommandContext gesture];

  voCommandContext2 = [*&self->AXUISettingsSearchableBaseListController_opaque[v7] voCommandContext];
  command = [voCommandContext2 command];

  v11 = [(VoiceOverGesturePickerController *)self specifierForIndexPath:pathCopy];

  voCommandContext3 = [v11 voCommandContext];
  gesture2 = [voCommandContext3 gesture];

  v14 = [gesture2 isEqual:gesture];
  presenter = [(VoiceOverGesturePickerController *)self presenter];
  userSelectedGestureBlock = [presenter userSelectedGestureBlock];

  if (userSelectedGestureBlock)
  {
    presenter2 = [(VoiceOverGesturePickerController *)self presenter];
    userSelectedGestureBlock2 = [presenter2 userSelectedGestureBlock];
    (userSelectedGestureBlock2)[2](userSelectedGestureBlock2, gesture2, command, v14);
  }
}

- (VoiceOverGesturePickerPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end