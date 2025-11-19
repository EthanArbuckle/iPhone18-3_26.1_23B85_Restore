@interface VoiceOverCommandsByTouchGestureListController
- (id)_boundCommandNameForGesture:(id)a3;
- (id)makeSpecifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation VoiceOverCommandsByTouchGestureListController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(VoiceOverCommandsByTouchGestureListController *)self deactivateAndPersistSearchText];
  v8 = [(VoiceOverCommandsByTouchGestureListController *)self specifierForIndexPath:v7];
  v9 = [v8 voCommandResolver];
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __83__VoiceOverCommandsByTouchGestureListController_tableView_didSelectRowAtIndexPath___block_invoke;
  v16[3] = &unk_257010;
  v10 = v8;
  v17 = v10;
  v11 = v9;
  v18 = v11;
  objc_copyWeak(&v19, &location);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __83__VoiceOverCommandsByTouchGestureListController_tableView_didSelectRowAtIndexPath___block_invoke_285;
  v14[3] = &unk_255388;
  objc_copyWeak(&v15, &location);
  v12 = [VoiceOverCommandPickerPresenter presenterWithSpecifier:v10 selectionBlock:v16 cancelBlock:v14];
  commandPickerPresenter = self->_commandPickerPresenter;
  self->_commandPickerPresenter = v12;

  [(VoiceOverCommandPickerPresenter *)self->_commandPickerPresenter presentWithController:self];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

void __83__VoiceOverCommandsByTouchGestureListController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) voCommandManager];
  v10 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __83__VoiceOverCommandsByTouchGestureListController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v14[3] = &unk_256FE8;
  v17[1] = a4;
  v12 = v7;
  v15 = v12;
  v13 = v8;
  v16 = v13;
  objc_copyWeak(v17, (a1 + 48));
  [v9 applyAction:a4 toCommand:v12 withGesture:v13 keyboardShortcut:0 resolver:v10 presentationController:WeakRetained completion:v14];

  objc_destroyWeak(v17);
}

void __83__VoiceOverCommandsByTouchGestureListController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = VOTLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__VoiceOverCommandsByTouchGestureListController_tableView_didSelectRowAtIndexPath___block_invoke_2_cold_1(a1, v3, v4);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setNeedsSpecifierRefresh];

  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 reloadSpecifiers];

  v7 = objc_loadWeakRetained((a1 + 48));
  [v7 dismissViewControllerAnimated:1 completion:0];
}

void __83__VoiceOverCommandsByTouchGestureListController_tableView_didSelectRowAtIndexPath___block_invoke_285(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (id)makeSpecifiers
{
  v3 = OBJC_IVAR___PSViewController__specifier;
  v4 = [*&self->AXUISettingsSearchableBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] voCommandContext];
  v42 = [v4 commandManager];

  v32 = objc_opt_new();
  v41 = v3;
  v47 = self;
  v5 = [*&self->AXUISettingsSearchableBaseListController_opaque[v3] voCommandResolver];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = +[VOSGestureCategory allCategories];
  v34 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  v6 = 0;
  if (v34)
  {
    v35 = 0;
    v33 = *v53;
    v40 = PSEnabledKey;
    v38 = AXLongTitleValueTableViewCellButtonBoolKey;
    v39 = PSCellClassKey;
    v7 = v42;
    do
    {
      v8 = 0;
      do
      {
        if (*v53 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v8;
        v9 = *(*(&v52 + 1) + 8 * v8);
        v10 = +[NSMutableArray array];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v37 = v9;
        v46 = [v9 gestures];
        v11 = [v46 countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v49;
          v43 = *v49;
          v44 = v10;
          do
          {
            v14 = 0;
            v45 = v12;
            do
            {
              if (*v49 != v13)
              {
                objc_enumerationMutation(v46);
              }

              v15 = *(*(&v48 + 1) + 8 * v14);
              v16 = [v7 availabilityForGesture:v15 withResolver:v5];
              if (v16 != &dword_0 + 2)
              {
                v17 = v16;
                v18 = v6;
                [*&v47->AXUISettingsSearchableBaseListController_opaque[v41] voCommandContext];
                v20 = v19 = v5;
                v21 = [v20 resolver];
                v6 = [PSSpecifier voGestureItem:v15 commandManager:v7 resolver:v21];

                v5 = v19;
                v22 = [v7 commandForTouchGesture:v15 withResolver:v19];
                v23 = [v6 voCommandContext];
                [v23 setCommand:v22];

                if (v17)
                {
                  v24 = 0;
                }

                else
                {
                  v24 = [(VoiceOverCommandsByTouchGestureListController *)v47 _isCategoryEnabled:v37];
                }

                v12 = v45;
                v25 = [NSNumber numberWithInt:v24];
                [v6 setProperty:v25 forKey:v40];

                [v6 setProperty:objc_opt_class() forKey:v39];
                [v6 setProperty:&__kCFBooleanTrue forKey:v38];
                objc_storeWeak(&v6[OBJC_IVAR___PSSpecifier_target], v47);
                v10 = v44;
                *&v6[OBJC_IVAR___PSSpecifier_getter] = "_boundCommandNameForGesture:";
                [v44 addObject:v6];
                v7 = v42;
                v13 = v43;
              }

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v46 countByEnumeratingWithState:&v48 objects:v56 count:16];
          }

          while (v12);
        }

        if ([v10 count])
        {
          v26 = [v37 localizedCategoryName];
          v27 = [PSSpecifier groupSpecifierWithName:v26];

          [v32 addObject:v27];
          v28 = [(VoiceOverCommandsByTouchGestureListController *)v47 _headerSpecifiersForCategory:v37];
          [v32 addObjectsFromArray:v28];

          [v32 addObjectsFromArray:v10];
          v35 = v27;
        }

        v8 = v36 + 1;
      }

      while ((v36 + 1) != v34);
      v34 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v34);
  }

  else
  {
    v35 = 0;
    v7 = v42;
  }

  v29 = v32;
  return v32;
}

- (id)_boundCommandNameForGesture:(id)a3
{
  v3 = a3;
  v4 = [v3 voCommandContext];
  v5 = [v4 gesture];
  v6 = +[VOSGesture OneFingerSingleTap];

  if (v5 == v6)
  {
    v9 = VOSLocString();
  }

  else
  {
    v7 = [v3 voCommandContext];
    v8 = [v7 command];
    v9 = [v8 localizedName];
  }

  return v9;
}

void __83__VoiceOverCommandsByTouchGestureListController_tableView_didSelectRowAtIndexPath___block_invoke_2_cold_1(void *a1, uint64_t a2, os_log_t log)
{
  v3 = a1[7];
  v4 = a1[4];
  v5 = a1[5];
  v6 = 134218754;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to apply action:(%ld) to command: %@. gesture: %@. %@", &v6, 0x2Au);
}

@end