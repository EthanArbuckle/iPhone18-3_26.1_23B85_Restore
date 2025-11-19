@interface AXPronunciationListViewController
- (AXPronunciationListViewController)init;
- (id)_assetUpdaterClient;
- (id)detailTextForItem:(id)a3;
- (id)items;
- (void)addButtonTapped;
- (void)deleteItem:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation AXPronunciationListViewController

- (AXPronunciationListViewController)init
{
  v5.receiver = self;
  v5.super_class = AXPronunciationListViewController;
  v2 = [(AXPronunciationListViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXPronunciationListViewController *)v2 setEdgeToEdgeCells:1];
  }

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AXPronunciationListViewController;
  [(AXVocabularyListController *)&v4 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"updatePronunciationList" name:@"AXVoiceOverReloadPronunciations" object:0];
}

- (id)items
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 customPronunciationSubstitutions];

  return v3;
}

- (id)detailTextForItem:(id)a3
{
  v3 = a3;
  v4 = [v3 phonemes];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 replacementString];
  }

  v7 = v6;

  return v7;
}

- (void)deleteItem:(id)a3
{
  v4 = a3;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 customPronunciationSubstitutions];
  v7 = [v6 mutableCopy];

  [v7 removeObject:v4];
  v8 = +[AXSettings sharedInstance];
  [v8 setCustomPronunciationSubstitutions:v7];

  if (v4)
  {
    v26 = @"delete";
    v9 = [v4 originalString];
    v25 = v9;
    v10 = [NSArray arrayWithObjects:&v25 count:1];
    v27 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  }

  else
  {
    v11 = &__NSDictionary0__struct;
  }

  v12 = +[AXSubsystemPronunciations sharedInstance];
  v13 = [v12 ignoreLogging];

  if ((v13 & 1) == 0)
  {
    v14 = +[AXSubsystemPronunciations identifier];
    v15 = AXLoggerForFacility();

    v16 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = AXColorizeFormatLog();
      v18 = +[AXSettings sharedInstance];
      v22 = [v18 customPronunciationSubstitutions];
      v19 = _AXStringForArgs();

      if (os_log_type_enabled(v15, v16))
      {
        *buf = 138543362;
        v24 = v19;
        _os_log_impl(&dword_0, v15, v16, "%{public}@", buf, 0xCu);
      }
    }
  }

  v20 = [(AXPronunciationListViewController *)self _assetUpdaterClient];
  v21 = +[AXAccessQueue mainAccessQueue];
  [v20 sendAsynchronousMessage:v11 withIdentifier:1 targetAccessQueue:v21 completion:0];
}

- (void)addButtonTapped
{
  v6 = objc_alloc_init(AXPronunciationEntryViewController);
  v3 = [PSSpecifier alloc];
  v4 = settingsLocString(@"EDIT_PRONUNCIATION", @"VoiceOverSettings");
  v5 = [v3 initWithName:v4 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [(AXPronunciationListViewController *)self showController:v6 withSpecifier:v5];
}

- (id)_assetUpdaterClient
{
  if (_assetUpdaterClient_onceToken_0 != -1)
  {
    [AXPronunciationListViewController _assetUpdaterClient];
  }

  v3 = _assetUpdaterClient_Client_0;

  return v3;
}

void __56__AXPronunciationListViewController__assetUpdaterClient__block_invoke(id a1)
{
  v1 = [AXUIClient alloc];
  v5 = [NSNumber numberWithInt:getpid()];
  v2 = [NSString stringWithFormat:@"AXAssetClient-pronunciation-list%@", v5];
  v3 = [v1 initWithIdentifier:v2 serviceBundleName:@"AXAssetAndDataServer"];
  v4 = _assetUpdaterClient_Client_0;
  _assetUpdaterClient_Client_0 = v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = [a4 textLabel];
  v5 = [v7 accessibilityLabel];
  v6 = [AXAttributedString axAttributedStringWithString:v5];

  [v6 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenIgnoreSubstitution];
  [v7 setAccessibilityLabel:v6];
}

@end