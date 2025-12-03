@interface RAPMainQuestion
+ (id)localizedHeaderText;
- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)category;
- (NSArray)homeWorkMenuItems;
- (RAPMenuItem)otherIssueMenuItem;
- (id)_alternateMapViewContext;
- (id)_incidentQuestionsFromLayoutItems:(id)items;
- (id)_questionsFromLayoutItems:(id)items;
- (id)followUpQuestionForCategory:(int64_t)category;
- (id)mainMenuQuestionCategories;
- (id)menuItems;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)resetMenu;
- (void)updateCategoriesFromLayoutManager:(id)manager;
@end

@implementation RAPMainQuestion

- (id)_alternateMapViewContext
{
  selectedMenuItem = [(RAPMenuQuestion *)self selectedMenuItem];
  _alternateMapViewContext = [selectedMenuItem _alternateMapViewContext];

  return _alternateMapViewContext;
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  parentQuestion = [(RAPQuestion *)self parentQuestion];
  [parentQuestion _fillSubmissionParameters:parametersCopy];

  commonContext = [parametersCopy commonContext];

  if (!commonContext)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonContext);
    [parametersCopy setCommonContext:v6];
  }

  _context = [(RAPQuestion *)self _context];
  displayedDirectionsPlan = [_context displayedDirectionsPlan];

  if (displayedDirectionsPlan)
  {
    commonContext2 = [parametersCopy commonContext];
    v10 = commonContext2;
    v11 = 17;
  }

  else
  {
    _context2 = [(RAPQuestion *)self _context];
    currentDirections = [_context2 currentDirections];

    commonContext2 = [parametersCopy commonContext];
    v10 = commonContext2;
    if (currentDirections)
    {
      v11 = 16;
    }

    else
    {
      v11 = 2;
    }
  }

  [commonContext2 addUserPath:v11];

  selectedMenuItem = [(RAPMenuQuestion *)self selectedMenuItem];
  [selectedMenuItem _fillSubmissionParameters:parametersCopy];
}

- (id)followUpQuestionForCategory:(int64_t)category
{
  v4 = 0;
  if (category <= 11)
  {
    switch(category)
    {
      case 1:
        v11 = RAPProblemNotListedQuestion;
        break;
      case 7:
        v11 = RAPDirectionsWhichOneQuestion;
        break;
      case 8:
        v11 = RAPLabelCorrectionsQuestion;
        break;
      default:
        goto LABEL_20;
    }

LABEL_18:
    v15 = [v11 alloc];
    report = [(RAPQuestion *)self report];
    v14 = [v15 initWithReport:report parentQuestion:self];
    goto LABEL_19;
  }

  if (category > 0x12)
  {
    goto LABEL_14;
  }

  if (((1 << category) & 0x12000) != 0)
  {
    v12 = [RAPPersonalPlaceCorrectionsWhichOneQuestion alloc];
    report = [(RAPQuestion *)self report];
    v7 = v12;
    v8 = report;
    selfCopy3 = self;
    v10 = 2;
    goto LABEL_13;
  }

  if (((1 << category) & 0x24000) != 0)
  {
    v13 = [RAPPersonalPlaceCorrectionsWhichOneQuestion alloc];
    report = [(RAPQuestion *)self report];
    v7 = v13;
    v8 = report;
    selfCopy3 = self;
    v10 = 3;
    goto LABEL_13;
  }

  if (((1 << category) & 0x48000) == 0)
  {
LABEL_14:
    if (category != 12)
    {
      goto LABEL_20;
    }

    v11 = RAPSearchWhichOneQuestion;
    goto LABEL_18;
  }

  v5 = [RAPPersonalPlaceCorrectionsWhichOneQuestion alloc];
  report = [(RAPQuestion *)self report];
  v7 = v5;
  v8 = report;
  selfCopy3 = self;
  v10 = 5;
LABEL_13:
  v14 = [(RAPPersonalPlaceCorrectionsWhichOneQuestion *)v7 initWithReport:v8 parentQuestion:selfCopy3 shortcutType:v10];
LABEL_19:
  v4 = v14;

LABEL_20:

  return v4;
}

- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)category
{
  report = [(RAPQuestion *)self report];
  _context = [report _context];

  if (category == 7)
  {
    _context2 = [(RAPQuestion *)self _context];
    LOBYTE(category) = [RAPDirectionsWhichOneQuestion _canDisplayForContext:_context2 transportMode:0xFFFFFFFLL];
LABEL_8:

    goto LABEL_9;
  }

  if (category != 12)
  {
    _context2 = [(RAPMainQuestion *)self mainMenuQuestionCategories];
    v8 = [NSNumber numberWithInteger:category];
    LOBYTE(category) = [_context2 containsObject:v8];

    goto LABEL_8;
  }

  if (!_MKRAPIsAvailable() || (sub_1007413D0() & 1) != 0)
  {
    goto LABEL_5;
  }

  if (_GEOConfigHasValue())
  {
    if (GEOConfigGetBOOL())
    {
      goto LABEL_17;
    }
  }

  else
  {
    v26 = [NSNumber numberWithUnsignedInt:118];
    v27[0] = v26;
    v28[0] = &off_1016EE2B8;
    v25 = [NSNumber numberWithUnsignedInt:119];
    v27[1] = v25;
    v28[1] = &off_1016EE2E0;
    v24 = [NSNumber numberWithUnsignedInt:120];
    v27[2] = v24;
    v28[2] = &off_1016EE308;
    v10 = [NSNumber numberWithUnsignedInt:121];
    v27[3] = v10;
    v28[3] = &off_1016EE330;
    v11 = [NSNumber numberWithUnsignedInt:122];
    v27[4] = v11;
    v28[4] = &off_1016EE358;
    v12 = [NSNumber numberWithUnsignedInt:123];
    v27[5] = v12;
    v28[5] = &off_1016EE380;
    v13 = [NSNumber numberWithUnsignedInt:124];
    v27[6] = v13;
    v28[6] = &off_1016EE3A8;
    v14 = [NSNumber numberWithUnsignedInt:125];
    v27[7] = v14;
    v28[7] = &off_1016EE3D0;
    v15 = [NSNumber numberWithUnsignedInt:126];
    v27[8] = v15;
    v28[8] = &off_1016EE3F8;
    v16 = [NSNumber numberWithUnsignedInt:398];
    v27[9] = v16;
    v28[9] = &off_1016EE420;
    v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:10];

    v18 = [NSNumber numberWithUnsignedInt:107];
    v19 = [v17 objectForKeyedSubscript:v18];

    v20 = +[GEOCountryConfiguration sharedConfiguration];
    countryCode = [v20 countryCode];
    v22 = [v19 objectForKey:countryCode];

    if (!v22)
    {
      LODWORD(category) = GEOConfigGetBOOL();

      if (!category)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    bOOLValue = [v22 BOOLValue];

    if (bOOLValue)
    {
LABEL_17:
      _context2 = [_context searchesHistory];
      LOBYTE(category) = [_context2 count] != 0;
      goto LABEL_8;
    }
  }

LABEL_5:
  LOBYTE(category) = 0;
LABEL_9:

  return category;
}

- (void)resetMenu
{
  v5.receiver = self;
  v5.super_class = RAPMainQuestion;
  [(RAPMenuQuestion *)&v5 resetMenu];
  homeWorkMenuItems = self->_homeWorkMenuItems;
  self->_homeWorkMenuItems = 0;

  otherIssueMenuItem = self->_otherIssueMenuItem;
  self->_otherIssueMenuItem = 0;

  [(RAPQuestion *)self _didChange];
}

- (RAPMenuItem)otherIssueMenuItem
{
  otherIssueMenuItem = self->_otherIssueMenuItem;
  if (!otherIssueMenuItem)
  {
    v4 = [(RAPMenuQuestion *)self menuItemWithFollowUpQuestionCategory:1];
    v5 = self->_otherIssueMenuItem;
    self->_otherIssueMenuItem = v4;

    otherIssueMenuItem = self->_otherIssueMenuItem;
  }

  return otherIssueMenuItem;
}

- (NSArray)homeWorkMenuItems
{
  homeWorkMenuItems = self->_homeWorkMenuItems;
  if (!homeWorkMenuItems)
  {
    v4 = objc_alloc_init(NSMutableArray);
    _context = [(RAPQuestion *)self _context];
    homeShortcuts = [_context homeShortcuts];
    v7 = [homeShortcuts count];

    if (v7)
    {
      v8 = [(RAPMenuQuestion *)self menuItemWithFollowUpQuestionCategory:16];
      [v4 addObjectIfNotNil:v8];
    }

    _context2 = [(RAPQuestion *)self _context];
    workShortcuts = [_context2 workShortcuts];
    v11 = [workShortcuts count];

    if (v11)
    {
      v12 = [(RAPMenuQuestion *)self menuItemWithFollowUpQuestionCategory:17];
      [v4 addObjectIfNotNil:v12];
    }

    _context3 = [(RAPQuestion *)self _context];
    schoolShortcuts = [_context3 schoolShortcuts];
    v15 = [schoolShortcuts count];

    if (v15)
    {
      v16 = [(RAPMenuQuestion *)self menuItemWithFollowUpQuestionCategory:18];
      [v4 addObjectIfNotNil:v16];
    }

    v17 = [v4 copy];
    v18 = self->_homeWorkMenuItems;
    self->_homeWorkMenuItems = v17;

    homeWorkMenuItems = self->_homeWorkMenuItems;
  }

  return homeWorkMenuItems;
}

- (id)menuItems
{
  menuItems = self->super._menuItems;
  if (!menuItems)
  {
    v4 = [NSMutableArray arrayWithCapacity:3];
    mainMenuItems = [(RAPMenuQuestion *)self mainMenuItems];
    [v4 addObject:mainMenuItems];

    homeWorkMenuItems = [(RAPMainQuestion *)self homeWorkMenuItems];
    if ([homeWorkMenuItems count])
    {
      [v4 addObject:homeWorkMenuItems];
    }

    incidentMenuItems = [(RAPMainQuestion *)self incidentMenuItems];
    if ([incidentMenuItems count])
    {
      [v4 addObject:incidentMenuItems];
    }

    otherIssueMenuItem = [(RAPMainQuestion *)self otherIssueMenuItem];
    v14 = otherIssueMenuItem;
    v9 = [NSArray arrayWithObjects:&v14 count:1];
    [v4 addObject:v9];

    v10 = [v4 copy];
    v11 = self->super._menuItems;
    self->super._menuItems = v10;

    allMenuItems = self->super._allMenuItems;
    self->super._allMenuItems = 0;

    menuItems = self->super._menuItems;
  }

  return menuItems;
}

- (id)mainMenuQuestionCategories
{
  mainMenuQuestionCategories = self->super._mainMenuQuestionCategories;
  if (!mainMenuQuestionCategories)
  {
    self->super._mainMenuQuestionCategories = &off_1016EC908;
    mainMenuQuestionCategories = self->super._mainMenuQuestionCategories;
  }

  return mainMenuQuestionCategories;
}

- (id)_questionsFromLayoutItems:(id)items
{
  itemsCopy = items;
  v5 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        fieldType = [v11 fieldType];
        v13 = -[RAPMenuQuestion menuItemWithFollowUpQuestionCategory:](self, "menuItemWithFollowUpQuestionCategory:", [fieldType integerValue]);

        displayText = [v11 displayText];
        [v13 setLocalizedServerControlledDescription:displayText];

        [v5 addObjectIfNotNil:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)_incidentQuestionsFromLayoutItems:(id)items
{
  itemsCopy = items;
  v5 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [RAPIncidentsQuestion alloc];
        report = [(RAPQuestion *)self report];
        v14 = [(RAPIncidentsQuestion *)v12 initWithReport:report parentQuestion:self incidentLayoutItem:v11];

        [v5 addObjectIfNotNil:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

- (void)updateCategoriesFromLayoutManager:(id)manager
{
  managerCopy = manager;
  correctionLayoutItems = [managerCopy correctionLayoutItems];
  v6 = [(RAPMainQuestion *)self _questionsFromLayoutItems:correctionLayoutItems];
  mainMenuItems = self->super._mainMenuItems;
  self->super._mainMenuItems = v6;

  addPlaceLayoutItems = [managerCopy addPlaceLayoutItems];
  v9 = [(RAPMainQuestion *)self _questionsFromLayoutItems:addPlaceLayoutItems];
  homeWorkMenuItems = self->_homeWorkMenuItems;
  self->_homeWorkMenuItems = v9;

  incidentLayoutItems = [managerCopy incidentLayoutItems];
  v12 = [(RAPMainQuestion *)self _incidentQuestionsFromLayoutItems:incidentLayoutItems];
  incidentMenuItems = self->_incidentMenuItems;
  self->_incidentMenuItems = v12;

  otherLayoutItems = [managerCopy otherLayoutItems];

  v15 = [(RAPMainQuestion *)self _questionsFromLayoutItems:otherLayoutItems];
  firstObject = [v15 firstObject];
  otherIssueMenuItem = self->_otherIssueMenuItem;
  self->_otherIssueMenuItem = firstObject;

  v18 = objc_alloc_init(NSMutableArray);
  if ([(NSArray *)self->super._mainMenuItems count])
  {
    [v18 addObject:self->super._mainMenuItems];
  }

  if ([(NSArray *)self->_incidentMenuItems count])
  {
    [v18 addObject:self->_incidentMenuItems];
  }

  if ([(NSArray *)self->_homeWorkMenuItems count])
  {
    [v18 addObject:self->_homeWorkMenuItems];
  }

  if (self->_otherIssueMenuItem)
  {
    v22 = self->_otherIssueMenuItem;
    v19 = [NSArray arrayWithObjects:&v22 count:1];
    [v18 addObject:v19];
  }

  v20 = [v18 copy];
  menuItems = self->super._menuItems;
  self->super._menuItems = v20;
}

+ (id)localizedHeaderText
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___RAPMainQuestion;
  v2 = objc_msgSendSuper2(&v4, "localizedHeaderText");

  return v2;
}

@end