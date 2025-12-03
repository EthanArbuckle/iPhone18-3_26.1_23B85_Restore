@interface VoiceOverActivitiesController
- (BOOL)canEditTable;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (id)specifiers;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (int64_t)_nonBuiltInActivityCount;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_activityChanged:(id)changed;
- (void)dealloc;
- (void)removeDataForSpecifier:(id)specifier;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLoad;
@end

@implementation VoiceOverActivitiesController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsEditableViewController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->AXUISettingsEditableViewController_opaque[v3];
    selfCopy = self;
    v31 = v3;
    *&self->AXUISettingsEditableViewController_opaque[v3] = v5;

    v8 = +[NSMutableArray array];
    v9 = +[PSSpecifier emptyGroupSpecifier];
    v10 = settingsLocString(@"ACTIVITY_FOOTER_TEXT", @"VoiceOverSettings");
    [v9 setProperty:v10 forKey:PSFooterTextGroupKey];

    v11 = v8;
    v30 = v9;
    [v8 addObject:v9];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = +[AXSettings sharedInstance];
    voiceOverActivities = [v12 voiceOverActivities];

    obj = voiceOverActivities;
    v14 = [voiceOverActivities countByEnumeratingWithState:&v34 objects:v38 count:16];
    v32 = PSIDKey;
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          name = [v18 name];
          v20 = [PSSpecifier preferenceSpecifierNamed:name target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          [v20 setProperty:v18 forKey:@"activity"];
          name2 = [v18 name];
          v22 = AXParameterizedLocalizedString();
          v23 = [name2 isEqualToString:v22];

          if (v23)
          {
            [v20 setProperty:@"Programming" forKey:v32];
          }

          [v11 addObject:v20];
        }

        v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v15);
    }

    v24 = +[PSSpecifier emptyGroupSpecifier];
    [v11 addObject:v24];

    v25 = settingsLocString(@"ACTIVITY_ADD_ACTIVITY", @"VoiceOverSettings");
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v26 setProperty:@"New" forKey:v32];
    [v11 addObject:v26];
    v27 = [v11 copy];
    v28 = *&selfCopy->AXUISettingsEditableViewController_opaque[v31];
    *&selfCopy->AXUISettingsEditableViewController_opaque[v31] = v27;

    v4 = *&selfCopy->AXUISettingsEditableViewController_opaque[v31];
  }

  return v4;
}

- (int64_t)_nonBuiltInActivityCount
{
  v2 = +[AXSettings sharedInstance];
  voiceOverActivities = [v2 voiceOverActivities];
  v4 = [voiceOverActivities ax_filteredArrayUsingBlock:&__block_literal_global_35];
  v5 = [v4 count];

  return v5;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = VoiceOverActivitiesController;
  [(VoiceOverActivitiesController *)&v11 viewDidLoad];
  self->_cachedActivityCount = [(VoiceOverActivitiesController *)self _nonBuiltInActivityCount];
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = __44__VoiceOverActivitiesController_viewDidLoad__block_invoke;
  v8 = &unk_255388;
  objc_copyWeak(&v9, &location);
  [v3 registerUpdateBlock:&v5 forRetrieveSelector:"voiceOverActivities" withListener:self];

  objc_destroyWeak(&v9);
  v4 = [NSNotificationCenter defaultCenter:v5];
  [v4 addObserver:self selector:"_activityChanged:" name:@"AXVoiceOverActivityChanged" object:0];

  objc_destroyWeak(&location);
}

void __44__VoiceOverActivitiesController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = VOTLogActivities();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 voiceOverActivities];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Activities changed: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activityChanged:0];
}

- (void)_activityChanged:(id)changed
{
  if ([(VoiceOverActivitiesController *)self _nonBuiltInActivityCount]>= 1 && !self->_cachedActivityCount)
  {
    v4 = +[AXSettings sharedInstance];
    voiceOverRotorItems = [v4 voiceOverRotorItems];
    v6 = [voiceOverRotorItems mutableCopy];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = +[AXSettings sharedInstance];
    voiceOverRotorItems2 = [v7 voiceOverRotorItems];

    obj = voiceOverRotorItems2;
    v9 = [voiceOverRotorItems2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v25;
      v22 = v6;
      while (2)
      {
        v13 = 0;
        v21 = &v10[v11];
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          v15 = [v14 objectForKeyedSubscript:@"RotorItem"];
          v16 = [v15 isEqualToString:kAXSVoiceOverTouchRotorActivities];

          if (v16)
          {
            v17 = [v14 mutableCopy];
            [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Enabled"];
            v6 = v22;
            [v22 setObject:v17 atIndexedSubscript:v11];
            v18 = +[AXSettings sharedInstance];
            [v18 setVoiceOverRotorItems:v22];

            goto LABEL_13;
          }

          ++v11;
          ++v13;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        v11 = v21;
        v6 = v22;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  cachedActivityCount = self->_cachedActivityCount;
  _nonBuiltInActivityCount = [(VoiceOverActivitiesController *)self _nonBuiltInActivityCount];
  self->_cachedActivityCount = _nonBuiltInActivityCount;
  if (_nonBuiltInActivityCount > cachedActivityCount)
  {
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VoiceOverActivitiesController;
  [(VoiceOverActivitiesController *)&v4 dealloc];
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverActivitiesController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:@"activity"];
  v6 = v5 != 0;

  return v6;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverActivitiesController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:@"activity"];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverActivitiesController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:@"activity"];
  v6 = v5 != 0;

  return v6;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v9 = [(VoiceOverActivitiesController *)self specifierAtIndexPath:pathCopy];
  v10 = [(VoiceOverActivitiesController *)self specifierAtIndexPath:indexPathCopy];
  v11 = [v9 propertyForKey:@"activity"];
  if (!v11 || (v12 = v11, [v10 propertyForKey:@"activity"], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v14 = indexPathCopy, !v13))
  {
    v14 = pathCopy;
  }

  v15 = v14;

  return v14;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v8 = OBJC_IVAR___PSListController__specifiers;
  v9 = [*&self->AXUISettingsEditableViewController_opaque[OBJC_IVAR___PSListController__specifiers] mutableCopy];
  v10 = [(VoiceOverActivitiesController *)self specifierAtIndexPath:pathCopy];
  v11 = [(VoiceOverActivitiesController *)self specifierAtIndexPath:indexPathCopy];
  v12 = v11;
  if (v10 && v11 && v10 != v11)
  {
    v13 = [v9 indexOfObject:v10];
    v14 = [v9 indexOfObject:v12];
    v15 = v13 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0x7FFFFFFFFFFFFFFFLL;
    if (!v15 && v13 != v14)
    {
      v17 = +[AXSettings sharedInstance];
      voiceOverActivities = [v17 voiceOverActivities];
      v19 = [voiceOverActivities mutableCopy];

      v20 = [pathCopy row];
      if (v20 < [v19 count])
      {
        v21 = [indexPathCopy row];
        if (v21 < [v19 count])
        {
          v22 = [v19 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
          [v19 removeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];
          [v19 insertObject:v22 atIndex:{objc_msgSend(indexPathCopy, "row")}];
          v23 = +[AXSettings sharedInstance];
          [v23 setVoiceOverActivities:v19];
        }
      }

      [v9 removeObjectAtIndex:v13];
      v24 = [v9 indexOfObject:v12];
      if (v13 > v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 + 1;
      }

      [v9 insertObject:v10 atIndex:v25];
      objc_storeStrong(&self->AXUISettingsEditableViewController_opaque[v8], v9);
    }
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v9.receiver = self;
  v9.super_class = VoiceOverActivitiesController;
  [VoiceOverActivitiesController setEditing:"setEditing:animated:" animated:?];
  [(VoiceOverActivitiesController *)self beginUpdates];
  v7 = [(VoiceOverActivitiesController *)self specifierForID:@"New"];
  v8 = [NSNumber numberWithInt:!editingCopy];
  [v7 setProperty:v8 forKey:PSEnabledKey];

  [(VoiceOverActivitiesController *)self reloadSpecifier:v7 animated:animatedCopy];
  [(VoiceOverActivitiesController *)self endUpdates];
}

- (BOOL)canEditTable
{
  specifiers = [(VoiceOverActivitiesController *)self specifiers];
  v3 = [specifiers ax_filteredArrayUsingBlock:&__block_literal_global_330];
  v4 = [v3 count];

  return v4 > 0;
}

BOOL __45__VoiceOverActivitiesController_canEditTable__block_invoke(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(PSSpecifier *)a2 propertyForKey:@"activity", a4];
  v5 = v4 != 0;

  return v5;
}

- (void)removeDataForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"activity"];
  v4 = +[AXSettings sharedInstance];
  voiceOverActivities = [v4 voiceOverActivities];
  v6 = [voiceOverActivities mutableCopy];

  [v6 removeObject:v3];
  v7 = +[AXSettings sharedInstance];
  [v7 setVoiceOverActivities:v6];

  v8 = VOTLogActivities();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Removed activity: %@", buf, 0xCu);
  }

  if (v3)
  {
    v16 = @"delete";
    uuid = [v3 uuid];
    uUIDString = [uuid UUIDString];
    v15 = uUIDString;
    v11 = [NSArray arrayWithObjects:&v15 count:1];
    v17 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  }

  else
  {
    v12 = &__NSDictionary0__struct;
  }

  v13 = AXAssetAndDataClient();
  v14 = +[AXAccessQueue mainAccessQueue];
  [v13 sendAsynchronousMessage:v12 withIdentifier:2 targetAccessQueue:v14 completion:0];
}

@end