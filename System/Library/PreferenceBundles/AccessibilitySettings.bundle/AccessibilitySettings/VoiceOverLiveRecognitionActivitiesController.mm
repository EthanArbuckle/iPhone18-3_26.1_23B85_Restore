@interface VoiceOverLiveRecognitionActivitiesController
- (VoiceOverLiveRecognitionActivitiesController)init;
- (id)specifiers;
- (void)_addButtonTapped:(id)tapped;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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
  navigationItem = [(VoiceOverLiveRecognitionActivitiesController *)self navigationItem];
  [navigationItem setTitle:v3];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"_addButtonTapped:"];
  navigationItem2 = [(VoiceOverLiveRecognitionActivitiesController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = VoiceOverLiveRecognitionActivitiesController;
  [(VoiceOverLiveRecognitionActivitiesController *)&v5 viewWillAppear:appear];
  [(VoiceOverLiveRecognitionActivitiesController *)self reloadSpecifiers];
  navigationController = [(VoiceOverLiveRecognitionActivitiesController *)self navigationController];
  [navigationController setToolbarHidden:0 animated:1];
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
    liveRecognitionActivities = [v6 liveRecognitionActivities];
    allKeys = [liveRecognitionActivities allKeys];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = allKeys;
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = VoiceOverLiveRecognitionActivitiesController;
  pathCopy = path;
  viewCopy = view;
  [(VoiceOverLiveRecognitionActivitiesController *)&v18 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:{pathCopy, v18.receiver, v18.super_class}];

  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:@"Activity"];
  if (v10)
  {
    v11 = objc_alloc_init(VoiceOverLiveRecognitionCustomizeActivityController);
    [(VoiceOverLiveRecognitionCustomizeActivityController *)v11 setEditingActivityName:v10];
    v12 = +[AXSettings sharedInstance];
    liveRecognitionActivities = [v12 liveRecognitionActivities];
    v14 = [liveRecognitionActivities objectForKeyedSubscript:v10];
    [(VoiceOverLiveRecognitionCustomizeActivityController *)v11 setEditingActivity:v14];

    v15 = +[AXSettings sharedInstance];
    liveRecognitionActivities2 = [v15 liveRecognitionActivities];
    allKeys = [liveRecognitionActivities2 allKeys];
    [(VoiceOverLiveRecognitionCustomizeActivityController *)v11 setCurrentActivities:allKeys];

    [(VoiceOverLiveRecognitionActivitiesController *)self showController:v11];
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v12 = [(VoiceOverLiveRecognitionActivitiesController *)self specifierAtIndexPath:path];
    v7 = [v12 propertyForKey:@"Activity"];
    v8 = +[AXSettings sharedInstance];
    liveRecognitionActivities = [v8 liveRecognitionActivities];
    v10 = [liveRecognitionActivities mutableCopy];

    [v10 removeObjectForKey:v7];
    v11 = +[AXSettings sharedInstance];
    [v11 setLiveRecognitionActivities:v10];

    [(VoiceOverLiveRecognitionActivitiesController *)self reloadSpecifiers];
  }
}

- (void)_addButtonTapped:(id)tapped
{
  v8 = objc_alloc_init(VoiceOverLiveRecognitionCustomizeActivityController);
  v4 = objc_alloc_init(AXVOLiveRecognitionActivity);
  [(VoiceOverLiveRecognitionCustomizeActivityController *)v8 setEditingActivity:v4];

  v5 = +[AXSettings sharedInstance];
  liveRecognitionActivities = [v5 liveRecognitionActivities];
  allKeys = [liveRecognitionActivities allKeys];
  [(VoiceOverLiveRecognitionCustomizeActivityController *)v8 setCurrentActivities:allKeys];

  [(VoiceOverLiveRecognitionActivitiesController *)self showController:v8];
}

@end