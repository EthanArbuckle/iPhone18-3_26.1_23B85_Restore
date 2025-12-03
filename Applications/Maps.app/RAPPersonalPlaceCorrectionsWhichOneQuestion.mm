@interface RAPPersonalPlaceCorrectionsWhichOneQuestion
- (BOOL)_isRecursivelyComplete;
- (NSString)localizedDescription;
- (NSString)localizedTitle;
- (RAPPersonalPlaceCorrectionsWhichOneQuestion)initWithReport:(id)report parentQuestion:(id)question shortcutType:(int64_t)type;
- (int)userAction;
- (int64_t)questionCategory;
- (void)_createQuestionsFromShortcuts:(id)shortcuts;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)refreshMainMenuItemsWithCallback:(id)callback;
@end

@implementation RAPPersonalPlaceCorrectionsWhichOneQuestion

- (BOOL)_isRecursivelyComplete
{
  selectedMenuItem = [(RAPMenuQuestion *)self selectedMenuItem];
  if ([selectedMenuItem isComplete])
  {
    v6.receiver = self;
    v6.super_class = RAPPersonalPlaceCorrectionsWhichOneQuestion;
    _isRecursivelyComplete = [(RAPMenuQuestion *)&v6 _isRecursivelyComplete];
  }

  else
  {
    _isRecursivelyComplete = 0;
  }

  return _isRecursivelyComplete;
}

- (int)userAction
{
  v2 = self->_shortcutType - 2;
  if (v2 > 3)
  {
    return 17099;
  }

  else
  {
    return dword_101212C20[v2];
  }
}

- (int64_t)questionCategory
{
  v2 = self->_shortcutType - 2;
  if (v2 > 3)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = qword_101215FF0[v2];
    v4 = qword_1012136D0[v2];
  }

  if ([(NSArray *)self->super._mainMenuItems count]<= 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (NSString)localizedDescription
{
  shortcutType = self->_shortcutType;
  switch(shortcutType)
  {
    case 2:
      v3 = @"Refine home location on map [Report an Issue]";
      goto LABEL_7;
    case 5:
      v3 = @"Refine school location on map [Report an Issue]";
      goto LABEL_7;
    case 3:
      v3 = @"Refine work location on map [Report an Issue]";
LABEL_7:
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];

      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (NSString)localizedTitle
{
  shortcutType = self->_shortcutType;
  switch(shortcutType)
  {
    case 2:
      v3 = @"Home [Report an Issue]";
      goto LABEL_7;
    case 5:
      v3 = @"School [Report an Issue]";
      goto LABEL_7;
    case 3:
      v3 = @"Work [Report an Issue]";
LABEL_7:
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];

      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  commonContext = [parametersCopy commonContext];

  if (!commonContext)
  {
    v5 = objc_alloc_init(GEORPFeedbackCommonContext);
    [parametersCopy setCommonContext:v5];
  }

  mainMenuItems = [(RAPMenuQuestion *)self mainMenuItems];
  v7 = [mainMenuItems count];

  if (v7)
  {
    commonContext2 = [parametersCopy commonContext];
    [commonContext2 addUserPath:49];
  }

  selectedMenuItem = [(RAPMenuQuestion *)self selectedMenuItem];
  [selectedMenuItem _fillSubmissionParameters:parametersCopy];
}

- (void)refreshMainMenuItemsWithCallback:(id)callback
{
  callbackCopy = callback;
  if (!self->_isRefreshing)
  {
    self->_isRefreshing = 1;
    shortcutType = self->_shortcutType;
    v6 = MapsSuggestionsResourceDepotForMapsProcess();
    oneFavorites = [v6 oneFavorites];

    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100875934;
    v8[3] = &unk_10163C080;
    v10[1] = shortcutType;
    objc_copyWeak(v10, &location);
    v9 = callbackCopy;
    [oneFavorites loadAllShortcutsWithHandler:v8];

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

- (void)_createQuestionsFromShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  v5 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = shortcutsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [RAPPersonalPlaceSelectionQuestion alloc];
        report = [(RAPQuestion *)self report];
        v14 = [(RAPPersonalPlaceSelectionQuestion *)v12 initWithReport:report parentQuestion:self shortcut:v11];

        [v5 addObject:v14];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  mainMenuItems = self->super._mainMenuItems;
  self->super._mainMenuItems = v15;
}

- (RAPPersonalPlaceCorrectionsWhichOneQuestion)initWithReport:(id)report parentQuestion:(id)question shortcutType:(int64_t)type
{
  reportCopy = report;
  v16.receiver = self;
  v16.super_class = RAPPersonalPlaceCorrectionsWhichOneQuestion;
  v9 = [(RAPQuestion *)&v16 initWithReport:reportCopy parentQuestion:question];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_14;
  }

  v9->_isRefreshing = 0;
  v9->_shortcutType = type;
  if (type <= 2)
  {
    if (type >= 2)
    {
      if (type == 2)
      {
        mainMenuItems = [reportCopy _context];
        homeShortcuts = [mainMenuItems homeShortcuts];
LABEL_12:
        v14 = homeShortcuts;
        [(RAPPersonalPlaceCorrectionsWhichOneQuestion *)v10 _createQuestionsFromShortcuts:homeShortcuts];

        goto LABEL_13;
      }

      goto LABEL_14;
    }

LABEL_9:
    v13 = +[NSArray array];
    mainMenuItems = v10->super._mainMenuItems;
    v10->super._mainMenuItems = v13;
LABEL_13:

    goto LABEL_14;
  }

  switch(type)
  {
    case 3:
      mainMenuItems = [reportCopy _context];
      homeShortcuts = [mainMenuItems workShortcuts];
      goto LABEL_12;
    case 5:
      mainMenuItems = [reportCopy _context];
      homeShortcuts = [mainMenuItems schoolShortcuts];
      goto LABEL_12;
    case 6:
      goto LABEL_9;
  }

LABEL_14:

  return v10;
}

@end