@interface AXPronunciationListViewController
- (AXPronunciationListViewController)init;
- (id)_assetUpdaterClient;
- (id)detailTextForItem:(id)item;
- (id)items;
- (void)addButtonTapped;
- (void)deleteItem:(id)item;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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
  customPronunciationSubstitutions = [v2 customPronunciationSubstitutions];

  return customPronunciationSubstitutions;
}

- (id)detailTextForItem:(id)item
{
  itemCopy = item;
  phonemes = [itemCopy phonemes];
  v5 = phonemes;
  if (phonemes)
  {
    replacementString = phonemes;
  }

  else
  {
    replacementString = [itemCopy replacementString];
  }

  v7 = replacementString;

  return v7;
}

- (void)deleteItem:(id)item
{
  itemCopy = item;
  v5 = +[AXSettings sharedInstance];
  customPronunciationSubstitutions = [v5 customPronunciationSubstitutions];
  v7 = [customPronunciationSubstitutions mutableCopy];

  [v7 removeObject:itemCopy];
  v8 = +[AXSettings sharedInstance];
  [v8 setCustomPronunciationSubstitutions:v7];

  if (itemCopy)
  {
    v26 = @"delete";
    originalString = [itemCopy originalString];
    v25 = originalString;
    v10 = [NSArray arrayWithObjects:&v25 count:1];
    v27 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  }

  else
  {
    v11 = &__NSDictionary0__struct;
  }

  v12 = +[AXSubsystemPronunciations sharedInstance];
  ignoreLogging = [v12 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v14 = +[AXSubsystemPronunciations identifier];
    v15 = AXLoggerForFacility();

    v16 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = AXColorizeFormatLog();
      v18 = +[AXSettings sharedInstance];
      customPronunciationSubstitutions2 = [v18 customPronunciationSubstitutions];
      v19 = _AXStringForArgs();

      if (os_log_type_enabled(v15, v16))
      {
        *buf = 138543362;
        v24 = v19;
        _os_log_impl(&dword_0, v15, v16, "%{public}@", buf, 0xCu);
      }
    }
  }

  _assetUpdaterClient = [(AXPronunciationListViewController *)self _assetUpdaterClient];
  v21 = +[AXAccessQueue mainAccessQueue];
  [_assetUpdaterClient sendAsynchronousMessage:v11 withIdentifier:1 targetAccessQueue:v21 completion:0];
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  textLabel = [cell textLabel];
  accessibilityLabel = [textLabel accessibilityLabel];
  v6 = [AXAttributedString axAttributedStringWithString:accessibilityLabel];

  [v6 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenIgnoreSubstitution];
  [textLabel setAccessibilityLabel:v6];
}

@end