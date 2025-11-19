@interface RAPPersonalPlaceCorrectionsWhichOneQuestion
- (BOOL)_isRecursivelyComplete;
- (NSString)localizedDescription;
- (NSString)localizedTitle;
- (RAPPersonalPlaceCorrectionsWhichOneQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 shortcutType:(int64_t)a5;
- (int)userAction;
- (int64_t)questionCategory;
- (void)_createQuestionsFromShortcuts:(id)a3;
- (void)_fillSubmissionParameters:(id)a3;
- (void)refreshMainMenuItemsWithCallback:(id)a3;
@end

@implementation RAPPersonalPlaceCorrectionsWhichOneQuestion

- (BOOL)_isRecursivelyComplete
{
  v3 = [(RAPMenuQuestion *)self selectedMenuItem];
  if ([v3 isComplete])
  {
    v6.receiver = self;
    v6.super_class = RAPPersonalPlaceCorrectionsWhichOneQuestion;
    v4 = [(RAPMenuQuestion *)&v6 _isRecursivelyComplete];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (void)_fillSubmissionParameters:(id)a3
{
  v10 = a3;
  v4 = [v10 commonContext];

  if (!v4)
  {
    v5 = objc_alloc_init(GEORPFeedbackCommonContext);
    [v10 setCommonContext:v5];
  }

  v6 = [(RAPMenuQuestion *)self mainMenuItems];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v10 commonContext];
    [v8 addUserPath:49];
  }

  v9 = [(RAPMenuQuestion *)self selectedMenuItem];
  [v9 _fillSubmissionParameters:v10];
}

- (void)refreshMainMenuItemsWithCallback:(id)a3
{
  v4 = a3;
  if (!self->_isRefreshing)
  {
    self->_isRefreshing = 1;
    shortcutType = self->_shortcutType;
    v6 = MapsSuggestionsResourceDepotForMapsProcess();
    v7 = [v6 oneFavorites];

    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100875934;
    v8[3] = &unk_10163C080;
    v10[1] = shortcutType;
    objc_copyWeak(v10, &location);
    v9 = v4;
    [v7 loadAllShortcutsWithHandler:v8];

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

- (void)_createQuestionsFromShortcuts:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
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
        v13 = [(RAPQuestion *)self report];
        v14 = [(RAPPersonalPlaceSelectionQuestion *)v12 initWithReport:v13 parentQuestion:self shortcut:v11];

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

- (RAPPersonalPlaceCorrectionsWhichOneQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 shortcutType:(int64_t)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = RAPPersonalPlaceCorrectionsWhichOneQuestion;
  v9 = [(RAPQuestion *)&v16 initWithReport:v8 parentQuestion:a4];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_14;
  }

  v9->_isRefreshing = 0;
  v9->_shortcutType = a5;
  if (a5 <= 2)
  {
    if (a5 >= 2)
    {
      if (a5 == 2)
      {
        mainMenuItems = [v8 _context];
        v12 = [mainMenuItems homeShortcuts];
LABEL_12:
        v14 = v12;
        [(RAPPersonalPlaceCorrectionsWhichOneQuestion *)v10 _createQuestionsFromShortcuts:v12];

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

  switch(a5)
  {
    case 3:
      mainMenuItems = [v8 _context];
      v12 = [mainMenuItems workShortcuts];
      goto LABEL_12;
    case 5:
      mainMenuItems = [v8 _context];
      v12 = [mainMenuItems schoolShortcuts];
      goto LABEL_12;
    case 6:
      goto LABEL_9;
  }

LABEL_14:

  return v10;
}

@end