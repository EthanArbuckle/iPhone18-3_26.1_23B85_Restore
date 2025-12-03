@interface MobileTimerAssistantAlarmSnippetController
- (BOOL)isAX;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (MobileTimerAssistantAlarmSnippetController)initWithAlarmSnippet:(id)snippet;
- (double)desiredHeightForWidth:(double)width;
- (double)headerHeight;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)otherAlarmsHeaderString;
- (id)sashItem;
- (id)sleepHeaderString;
- (id)sleepMetadata;
- (id)snippetAlarmsFromSourceAlarms:(id)alarms assistantAlarms:(id)assistantAlarms;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)alarmsChanged:(id)changed;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadAlarmPropertiesWithAssistantAlarms:(id)alarms;
- (void)loadView;
- (void)setupSections;
- (void)setupSleep;
- (void)viewDidLoad;
@end

@implementation MobileTimerAssistantAlarmSnippetController

- (MobileTimerAssistantAlarmSnippetController)initWithAlarmSnippet:(id)snippet
{
  snippetCopy = snippet;
  v12.receiver = self;
  v12.super_class = MobileTimerAssistantAlarmSnippetController;
  v5 = [(MobileTimerAssistantAlarmSnippetController *)&v12 init];
  if (v5)
  {
    v6 = MTLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_6D80(v5, snippetCopy, v6);
    }

    alarms = [snippetCopy alarms];
    v8 = [alarms na_map:&stru_10460];

    v9 = objc_opt_new();
    alarmManager = v5->_alarmManager;
    v5->_alarmManager = v9;

    if (MTShouldHandleForEucalyptus())
    {
      [(MobileTimerAssistantAlarmSnippetController *)v5 setupSleep];
    }

    [(MobileTimerAssistantAlarmSnippetController *)v5 loadAlarmPropertiesWithAssistantAlarms:v8];
  }

  return v5;
}

- (void)setupSleep
{
  v3 = objc_opt_new();
  [(MobileTimerAssistantAlarmSnippetController *)self setHealthStore:v3];

  v4 = [HKSPSleepStore alloc];
  healthStore = [(MobileTimerAssistantAlarmSnippetController *)self healthStore];
  v6 = [v4 initWithHealthStore:healthStore];
  [(MobileTimerAssistantAlarmSnippetController *)self setSleepStore:v6];

  v7 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  [(MobileTimerAssistantAlarmSnippetController *)self setCalendar:v7];

  calendar = [(MobileTimerAssistantAlarmSnippetController *)self calendar];
  v8 = +[NSTimeZone systemTimeZone];
  [calendar setTimeZone:v8];
}

- (void)setupSections
{
  v3 = objc_opt_new();
  [(MobileTimerAssistantAlarmSnippetController *)self setSections:v3];

  sleepAlarm = [(MobileTimerAssistantAlarmSnippetController *)self sleepAlarm];

  if (sleepAlarm)
  {
    sections = [(MobileTimerAssistantAlarmSnippetController *)self sections];
    [sections addObject:&off_10AB8];
  }

  alarms = [(MobileTimerAssistantAlarmSnippetController *)self alarms];
  v7 = [alarms count];

  if (v7)
  {
    sections2 = [(MobileTimerAssistantAlarmSnippetController *)self sections];
    [sections2 addObject:&off_10AD0];
  }
}

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = MobileTimerAssistantAlarmSnippetController;
  [(MobileTimerAssistantAlarmSnippetController *)&v14 loadView];
  collectionView = [(MobileTimerAssistantAlarmSnippetController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[MobileTimerAssistantAlarmSnippetCell reuseIdentifier];
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v5];

  collectionView2 = [(MobileTimerAssistantAlarmSnippetController *)self collectionView];
  [collectionView2 registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"MTSnippetHeaderIdentifier"];

  sleepAlarm = [(MobileTimerAssistantAlarmSnippetController *)self sleepAlarm];

  if (sleepAlarm)
  {
    collectionView3 = [(MobileTimerAssistantAlarmSnippetController *)self collectionView];
    collectionViewLayout = [collectionView3 collectionViewLayout];
    collectionView4 = [(MobileTimerAssistantAlarmSnippetController *)self collectionView];
    [collectionView4 frame];
    v12 = v11;
    [(MobileTimerAssistantAlarmSnippetController *)self headerHeight];
    [collectionViewLayout setHeaderReferenceSize:{v12, v13}];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MobileTimerAssistantAlarmSnippetController;
  [(MobileTimerAssistantAlarmSnippetController *)&v4 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"alarmsChanged:" name:MTAlarmManagerAlarmsChanged object:self->_alarmManager];
}

- (double)desiredHeightForWidth:(double)width
{
  alarms = [(MobileTimerAssistantAlarmSnippetController *)self alarms];
  v5 = [alarms count];

  sleepAlarm = [(MobileTimerAssistantAlarmSnippetController *)self sleepAlarm];

  if (sleepAlarm)
  {
    ++v5;
    [(MobileTimerAssistantAlarmSnippetController *)self headerHeight];
    v8 = v7 + 0.0;
    alarms2 = [(MobileTimerAssistantAlarmSnippetController *)self alarms];
    v10 = [alarms2 count];

    if (v10)
    {
      [(MobileTimerAssistantAlarmSnippetController *)self headerHeight];
      v8 = v8 + v11;
    }
  }

  else
  {
    v8 = 0.0;
  }

  [(MobileTimerAssistantAlarmSnippetController *)self _cellHeight];
  return v8 + v5 * v12;
}

- (id)sashItem
{
  v2 = [SiriUISashItem alloc];
  v3 = [v2 initWithApplicationBundleIdentifier:MTClockBundleID];

  return v3;
}

- (void)loadAlarmPropertiesWithAssistantAlarms:(id)alarms
{
  alarmsCopy = alarms;
  v5 = dispatch_group_create();
  v6 = dispatch_semaphore_create(0);
  v7 = MTLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[MobileTimerAssistantAlarmSnippetController loadAlarmPropertiesWithAssistantAlarms:]";
    *&buf[12] = 2114;
    *&buf[14] = self;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s %{public}@ fetching alarms", buf, 0x16u);
  }

  v18 = objc_opt_new();
  alarmManager = [(MobileTimerAssistantAlarmSnippetController *)self alarmManager];
  alarms = [alarmManager alarms];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v44 = sub_1C0C;
  v45 = sub_1C1C;
  v46 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_1C0C;
  v41[4] = sub_1C1C;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_1C0C;
  v39[4] = sub_1C1C;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = sub_1C0C;
  v37[4] = sub_1C1C;
  v38 = 0;
  if (MTShouldHandleForEucalyptus())
  {
    alarmManager2 = [(MobileTimerAssistantAlarmSnippetController *)self alarmManager];
    nextSleepAlarm = [alarmManager2 nextSleepAlarm];

    objc_initWeak(&location, self);
    dispatch_group_enter(v5);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1C24;
    v31[3] = &unk_10488;
    objc_copyWeak(&v35, &location);
    v33 = v39;
    v34 = v37;
    v32 = v5;
    v12 = [nextSleepAlarm addCompletionBlock:v31];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  dispatch_group_enter(v5);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1D60;
  v26[3] = &unk_104B0;
  objc_copyWeak(&v30, &location);
  v28 = buf;
  v29 = v41;
  v13 = v5;
  v27 = v13;
  v14 = [alarms addCompletionBlock:v26];
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1E98;
  block[3] = &unk_10500;
  v23 = v37;
  v24 = v39;
  block[4] = self;
  v20 = alarmsCopy;
  v25 = buf;
  v21 = v6;
  v22 = v41;
  v16 = v6;
  v17 = alarmsCopy;
  dispatch_group_notify(v13, v15, block);

  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
  _Block_object_dispose(v37, 8);

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(buf, 8);
}

- (id)snippetAlarmsFromSourceAlarms:(id)alarms assistantAlarms:(id)assistantAlarms
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_214C;
  v8[3] = &unk_10550;
  alarmsCopy = alarms;
  v5 = alarmsCopy;
  v6 = [assistantAlarms na_map:v8];

  return v6;
}

- (void)alarmsChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:MTAlarmManagerAlarmsKey];

  v28 = v5;
  if ([v5 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    collectionView = [(MobileTimerAssistantAlarmSnippetController *)self collectionView];
    visibleCells = [collectionView visibleCells];

    v8 = [visibleCells countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v27 = *v32;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(visibleCells);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          alarm = [v11 alarm];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_25AC;
          v29[3] = &unk_10528;
          v13 = alarm;
          v30 = v13;
          v14 = [v28 na_firstObjectPassingTest:v29];
          if (v14)
          {
            collectionView2 = [(MobileTimerAssistantAlarmSnippetController *)self collectionView];
            v16 = [collectionView2 indexPathForCell:v11];

            sections = [(MobileTimerAssistantAlarmSnippetController *)self sections];
            v18 = [sections objectAtIndexedSubscript:{objc_msgSend(v16, "section")}];
            integerValue = [v18 integerValue];

            if (integerValue)
            {
              if (integerValue == &dword_0 + 1)
              {
                [(MobileTimerAssistantAlarmSnippetController *)self setSleepAlarm:v14];
              }
            }

            else
            {
              alarms = [(MobileTimerAssistantAlarmSnippetController *)self alarms];
              v21 = [alarms mutableCopy];

              v22 = [v21 indexOfObject:v13];
              [v21 removeObject:v13];
              [v21 insertObject:v14 atIndex:v22];
              v23 = MTAlarmStandardSort();
              v24 = [v21 sortedArrayUsingComparator:v23];
              [(MobileTimerAssistantAlarmSnippetController *)self setAlarms:v24];
            }

            collectionView3 = [(MobileTimerAssistantAlarmSnippetController *)self collectionView];
            v35 = v16;
            v26 = [NSArray arrayWithObjects:&v35 count:1];
            [collectionView3 reloadItemsAtIndexPaths:v26];
          }
        }

        v9 = [visibleCells countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  sections = [(MobileTimerAssistantAlarmSnippetController *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  sections = [(MobileTimerAssistantAlarmSnippetController *)self sections];
  v7 = [sections objectAtIndexedSubscript:section];
  integerValue = [v7 integerValue];

  if (integerValue)
  {
    return 1;
  }

  alarms = [(MobileTimerAssistantAlarmSnippetController *)self alarms];
  v11 = [alarms count];

  return v11;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[MobileTimerAssistantAlarmSnippetCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  sections = [(MobileTimerAssistantAlarmSnippetController *)self sections];
  v11 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  integerValue = [v11 integerValue];

  if (integerValue)
  {
    if (integerValue != &dword_0 + 1 || !MTShouldHandleForEucalyptus())
    {
      sleepAlarm = 0;
      goto LABEL_8;
    }

    [v9 setKeylineType:0];
    sleepAlarm = [(MobileTimerAssistantAlarmSnippetController *)self sleepAlarm];
    sleepMetadata = [(MobileTimerAssistantAlarmSnippetController *)self sleepMetadata];
    [v9 setSleepMetaData:sleepMetadata];
  }

  else
  {
    v15 = [pathCopy row];
    alarms = [(MobileTimerAssistantAlarmSnippetController *)self alarms];
    v17 = v15 != [alarms count] - 1;

    [v9 setKeylineType:v17];
    sleepMetadata = [(MobileTimerAssistantAlarmSnippetController *)self alarms];
    sleepAlarm = [sleepMetadata objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

LABEL_8:
  [v9 setAlarm:sleepAlarm];
  [v9 setDelegate:self];

  return v9;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(MobileTimerAssistantAlarmSnippetController *)self collectionView];
  v8 = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"MTSnippetHeaderIdentifier" forIndexPath:pathCopy];

  sections = [(MobileTimerAssistantAlarmSnippetController *)self sections];
  section = [pathCopy section];

  v11 = [sections objectAtIndexedSubscript:section];
  integerValue = [v11 integerValue];

  if (!integerValue)
  {
    sleepAlarm = [(MobileTimerAssistantAlarmSnippetController *)self sleepAlarm];

    if (!sleepAlarm)
    {
      goto LABEL_8;
    }

    otherAlarmsHeaderString = [(MobileTimerAssistantAlarmSnippetController *)self otherAlarmsHeaderString];
    goto LABEL_7;
  }

  if (integerValue == &dword_0 + 1 && MTShouldHandleForEucalyptus())
  {
    otherAlarmsHeaderString = [(MobileTimerAssistantAlarmSnippetController *)self sleepHeaderString];
LABEL_7:
    v15 = otherAlarmsHeaderString;
    titleLabel = [v8 titleLabel];
    [titleLabel setAttributedText:v15];
  }

LABEL_8:

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  path = [NSURL mtURLForClockAppSection:1, path];
  v6 = +[NAScheduler mtMainThreadScheduler];
  v7 = [path reschedule:v6];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2BE0;
  v9[3] = &unk_105A0;
  v9[4] = self;
  v8 = [v7 addSuccessBlock:v9];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = [(MobileTimerAssistantAlarmSnippetController *)self delegate:view];
  [v6 siriViewControllerExpectedWidth:self];
  v8 = v7;
  [(MobileTimerAssistantAlarmSnippetController *)self _cellHeight];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)sleepMetadata
{
  sleepStore = [(MobileTimerAssistantAlarmSnippetController *)self sleepStore];
  calendar = [(MobileTimerAssistantAlarmSnippetController *)self calendar];
  v5 = [sleepStore mt_sleepMetaDataForUpcomingAlarmInCalendar:calendar error:0];

  return v5;
}

- (id)sleepHeaderString
{
  v3 = +[UIColor labelColor];
  v4 = [UIImage mtui_imageWithSymbolName:@"bed.double.fill" scale:1 textStyle:UIFontTextStyleTitle3 andTintColor:v3];

  v5 = objc_alloc_init(NSTextAttachment);
  [v5 setImage:v4];
  v6 = [NSAttributedString attributedStringWithAttachment:v5];
  v7 = [v6 mutableCopy];

  v8 = [NSBundle bundleWithIdentifier:@"com.apple.MobileTimerUI"];
  v9 = [v8 localizedStringForKey:@"SLEEP_HEADER_TITLE" value:&stru_10788 table:@"MobileTimerUI_Burrito"];
  v10 = [NSString stringWithFormat:@" %@", v9];

  v11 = [NSMutableAttributedString alloc];
  v27[0] = NSFontAttributeName;
  headerFont = [(MobileTimerAssistantAlarmSnippetController *)self headerFont];
  v28[0] = headerFont;
  v27[1] = NSForegroundColorAttributeName;
  v13 = +[UIColor labelColor];
  v28[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  v15 = [v11 initWithString:v10 attributes:v14];

  v16 = [v10 rangeOfString:@"|"];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = v16;
    v19 = v17;
    v25[0] = NSForegroundColorAttributeName;
    v20 = +[UIColor mtui_secondaryColor];
    v25[1] = NSFontAttributeName;
    v26[0] = v20;
    v21 = [(MobileTimerAssistantAlarmSnippetController *)self headerFontWithTrait:4];
    v26[1] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v15 setAttributes:v22 range:{v18, v19}];
  }

  [v7 appendAttributedString:v15];
  v23 = [v7 copy];

  return v23;
}

- (id)otherAlarmsHeaderString
{
  v3 = [NSAttributedString alloc];
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.MobileTimerUI"];
  v5 = [v4 localizedStringForKey:@"REGULAR_ALARMS_SECTION_HEADER_TITLE" value:&stru_10788 table:@"MobileTimerUI_Burrito"];
  v11[0] = NSFontAttributeName;
  headerFont = [(MobileTimerAssistantAlarmSnippetController *)self headerFont];
  v12[0] = headerFont;
  v11[1] = NSForegroundColorAttributeName;
  v7 = +[UIColor labelColor];
  v12[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v3 initWithString:v5 attributes:v8];

  return v9;
}

- (double)headerHeight
{
  isAX = [(MobileTimerAssistantAlarmSnippetController *)self isAX];
  result = 44.0;
  if (isAX)
  {
    return 64.0;
  }

  return result;
}

- (BOOL)isAX
{
  v2 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  return v2;
}

@end