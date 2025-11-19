@interface VoiceOverLiveRecognitionActivitiesController
- (VoiceOverLiveRecognitionActivitiesController)init;
- (id)specifiers;
- (void)_addButtonTapped:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation VoiceOverLiveRecognitionActivitiesController

- (VoiceOverLiveRecognitionActivitiesController)init
{
  v5.receiver = self;
  v5.super_class = VoiceOverLiveRecognitionActivitiesController;
  v2 = [(VoiceOverLiveRecognitionActivitiesController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VoiceOverLiveRecognitionActivitiesController *)v2 setEdgeToEdgeCells:1];
  }

  return v3;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = VoiceOverLiveRecognitionActivitiesController;
  [(VoiceOverLiveRecognitionActivitiesController *)&v7 viewDidLoad];
  v3 = settingsLocString(@"VO_LIVE_RECOGNITION_ACTIVITIES", @"VoiceOverSettings");
  v4 = [(VoiceOverLiveRecognitionActivitiesController *)self navigationItem];
  [v4 setTitle:v3];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"_addButtonTapped:"];
  v6 = [(VoiceOverLiveRecognitionActivitiesController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VoiceOverLiveRecognitionActivitiesController;
  [(VoiceOverLiveRecognitionActivitiesController *)&v5 viewWillAppear:a3];
  [(VoiceOverLiveRecognitionActivitiesController *)self reloadSpecifiers];
  v4 = [(VoiceOverLiveRecognitionActivitiesController *)self navigationController];
  [v4 setToolbarHidden:0 animated:1];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v18 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = [PSSpecifier groupSpecifierWithID:@"ActivitiesGroup"];
    [v4 addObject:v5];
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 liveRecognitionActivities];
    v8 = [v7 allKeys];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        v14 = v5;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v19 + 1) + 8 * v13);
          v5 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v5 setProperty:v15 forKey:@"Activity"];
          [v4 addObject:v5];
          v13 = v13 + 1;
          v14 = v5;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v16 = *&self->AXUISettingsBaseListController_opaque[v18];
    *&self->AXUISettingsBaseListController_opaque[v18] = v4;

    v3 = *&self->AXUISettingsBaseListController_opaque[v18];
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = VoiceOverLiveRecognitionActivitiesController;
  v6 = a4;
  v7 = a3;
  [(VoiceOverLiveRecognitionActivitiesController *)&v18 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [v7 cellForRowAtIndexPath:{v6, v18.receiver, v18.super_class}];

  v9 = [v8 specifier];
  v10 = [v9 propertyForKey:@"Activity"];
  if (v10)
  {
    v11 = objc_alloc_init(VoiceOverLiveRecognitionCustomizeActivityController);
    [(VoiceOverLiveRecognitionCustomizeActivityController *)v11 setEditingActivityName:v10];
    v12 = +[AXSettings sharedInstance];
    v13 = [v12 liveRecognitionActivities];
    v14 = [v13 objectForKeyedSubscript:v10];
    [(VoiceOverLiveRecognitionCustomizeActivityController *)v11 setEditingActivity:v14];

    v15 = +[AXSettings sharedInstance];
    v16 = [v15 liveRecognitionActivities];
    v17 = [v16 allKeys];
    [(VoiceOverLiveRecognitionCustomizeActivityController *)v11 setCurrentActivities:v17];

    [(VoiceOverLiveRecognitionActivitiesController *)self showController:v11];
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v12 = [(VoiceOverLiveRecognitionActivitiesController *)self specifierAtIndexPath:a5];
    v7 = [v12 propertyForKey:@"Activity"];
    v8 = +[AXSettings sharedInstance];
    v9 = [v8 liveRecognitionActivities];
    v10 = [v9 mutableCopy];

    [v10 removeObjectForKey:v7];
    v11 = +[AXSettings sharedInstance];
    [v11 setLiveRecognitionActivities:v10];

    [(VoiceOverLiveRecognitionActivitiesController *)self reloadSpecifiers];
  }
}

- (void)_addButtonTapped:(id)a3
{
  v8 = objc_alloc_init(VoiceOverLiveRecognitionCustomizeActivityController);
  v4 = objc_alloc_init(AXVOLiveRecognitionActivity);
  [(VoiceOverLiveRecognitionCustomizeActivityController *)v8 setEditingActivity:v4];

  v5 = +[AXSettings sharedInstance];
  v6 = [v5 liveRecognitionActivities];
  v7 = [v6 allKeys];
  [(VoiceOverLiveRecognitionCustomizeActivityController *)v8 setCurrentActivities:v7];

  [(VoiceOverLiveRecognitionActivitiesController *)self showController:v8];
}

@end