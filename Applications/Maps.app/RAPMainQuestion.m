@interface RAPMainQuestion
+ (id)localizedHeaderText;
- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)a3;
- (NSArray)homeWorkMenuItems;
- (RAPMenuItem)otherIssueMenuItem;
- (id)_alternateMapViewContext;
- (id)_incidentQuestionsFromLayoutItems:(id)a3;
- (id)_questionsFromLayoutItems:(id)a3;
- (id)followUpQuestionForCategory:(int64_t)a3;
- (id)mainMenuQuestionCategories;
- (id)menuItems;
- (void)_fillSubmissionParameters:(id)a3;
- (void)resetMenu;
- (void)updateCategoriesFromLayoutManager:(id)a3;
@end

@implementation RAPMainQuestion

- (id)_alternateMapViewContext
{
  v2 = [(RAPMenuQuestion *)self selectedMenuItem];
  v3 = [v2 _alternateMapViewContext];

  return v3;
}

- (void)_fillSubmissionParameters:(id)a3
{
  v15 = a3;
  v4 = [(RAPQuestion *)self parentQuestion];
  [v4 _fillSubmissionParameters:v15];

  v5 = [v15 commonContext];

  if (!v5)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonContext);
    [v15 setCommonContext:v6];
  }

  v7 = [(RAPQuestion *)self _context];
  v8 = [v7 displayedDirectionsPlan];

  if (v8)
  {
    v9 = [v15 commonContext];
    v10 = v9;
    v11 = 17;
  }

  else
  {
    v12 = [(RAPQuestion *)self _context];
    v13 = [v12 currentDirections];

    v9 = [v15 commonContext];
    v10 = v9;
    if (v13)
    {
      v11 = 16;
    }

    else
    {
      v11 = 2;
    }
  }

  [v9 addUserPath:v11];

  v14 = [(RAPMenuQuestion *)self selectedMenuItem];
  [v14 _fillSubmissionParameters:v15];
}

- (id)followUpQuestionForCategory:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 11)
  {
    switch(a3)
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
    v6 = [(RAPQuestion *)self report];
    v14 = [v15 initWithReport:v6 parentQuestion:self];
    goto LABEL_19;
  }

  if (a3 > 0x12)
  {
    goto LABEL_14;
  }

  if (((1 << a3) & 0x12000) != 0)
  {
    v12 = [RAPPersonalPlaceCorrectionsWhichOneQuestion alloc];
    v6 = [(RAPQuestion *)self report];
    v7 = v12;
    v8 = v6;
    v9 = self;
    v10 = 2;
    goto LABEL_13;
  }

  if (((1 << a3) & 0x24000) != 0)
  {
    v13 = [RAPPersonalPlaceCorrectionsWhichOneQuestion alloc];
    v6 = [(RAPQuestion *)self report];
    v7 = v13;
    v8 = v6;
    v9 = self;
    v10 = 3;
    goto LABEL_13;
  }

  if (((1 << a3) & 0x48000) == 0)
  {
LABEL_14:
    if (a3 != 12)
    {
      goto LABEL_20;
    }

    v11 = RAPSearchWhichOneQuestion;
    goto LABEL_18;
  }

  v5 = [RAPPersonalPlaceCorrectionsWhichOneQuestion alloc];
  v6 = [(RAPQuestion *)self report];
  v7 = v5;
  v8 = v6;
  v9 = self;
  v10 = 5;
LABEL_13:
  v14 = [(RAPPersonalPlaceCorrectionsWhichOneQuestion *)v7 initWithReport:v8 parentQuestion:v9 shortcutType:v10];
LABEL_19:
  v4 = v14;

LABEL_20:

  return v4;
}

- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)a3
{
  v5 = [(RAPQuestion *)self report];
  v6 = [v5 _context];

  if (a3 == 7)
  {
    v7 = [(RAPQuestion *)self _context];
    LOBYTE(a3) = [RAPDirectionsWhichOneQuestion _canDisplayForContext:v7 transportMode:0xFFFFFFFLL];
LABEL_8:

    goto LABEL_9;
  }

  if (a3 != 12)
  {
    v7 = [(RAPMainQuestion *)self mainMenuQuestionCategories];
    v8 = [NSNumber numberWithInteger:a3];
    LOBYTE(a3) = [v7 containsObject:v8];

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
    v21 = [v20 countryCode];
    v22 = [v19 objectForKey:v21];

    if (!v22)
    {
      LODWORD(a3) = GEOConfigGetBOOL();

      if (!a3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    v23 = [v22 BOOLValue];

    if (v23)
    {
LABEL_17:
      v7 = [v6 searchesHistory];
      LOBYTE(a3) = [v7 count] != 0;
      goto LABEL_8;
    }
  }

LABEL_5:
  LOBYTE(a3) = 0;
LABEL_9:

  return a3;
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
    v5 = [(RAPQuestion *)self _context];
    v6 = [v5 homeShortcuts];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(RAPMenuQuestion *)self menuItemWithFollowUpQuestionCategory:16];
      [v4 addObjectIfNotNil:v8];
    }

    v9 = [(RAPQuestion *)self _context];
    v10 = [v9 workShortcuts];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(RAPMenuQuestion *)self menuItemWithFollowUpQuestionCategory:17];
      [v4 addObjectIfNotNil:v12];
    }

    v13 = [(RAPQuestion *)self _context];
    v14 = [v13 schoolShortcuts];
    v15 = [v14 count];

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
    v5 = [(RAPMenuQuestion *)self mainMenuItems];
    [v4 addObject:v5];

    v6 = [(RAPMainQuestion *)self homeWorkMenuItems];
    if ([v6 count])
    {
      [v4 addObject:v6];
    }

    v7 = [(RAPMainQuestion *)self incidentMenuItems];
    if ([v7 count])
    {
      [v4 addObject:v7];
    }

    v8 = [(RAPMainQuestion *)self otherIssueMenuItem];
    v14 = v8;
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

- (id)_questionsFromLayoutItems:(id)a3
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
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 fieldType];
        v13 = -[RAPMenuQuestion menuItemWithFollowUpQuestionCategory:](self, "menuItemWithFollowUpQuestionCategory:", [v12 integerValue]);

        v14 = [v11 displayText];
        [v13 setLocalizedServerControlledDescription:v14];

        [v5 addObjectIfNotNil:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)_incidentQuestionsFromLayoutItems:(id)a3
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
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [RAPIncidentsQuestion alloc];
        v13 = [(RAPQuestion *)self report];
        v14 = [(RAPIncidentsQuestion *)v12 initWithReport:v13 parentQuestion:self incidentLayoutItem:v11];

        [v5 addObjectIfNotNil:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

- (void)updateCategoriesFromLayoutManager:(id)a3
{
  v4 = a3;
  v5 = [v4 correctionLayoutItems];
  v6 = [(RAPMainQuestion *)self _questionsFromLayoutItems:v5];
  mainMenuItems = self->super._mainMenuItems;
  self->super._mainMenuItems = v6;

  v8 = [v4 addPlaceLayoutItems];
  v9 = [(RAPMainQuestion *)self _questionsFromLayoutItems:v8];
  homeWorkMenuItems = self->_homeWorkMenuItems;
  self->_homeWorkMenuItems = v9;

  v11 = [v4 incidentLayoutItems];
  v12 = [(RAPMainQuestion *)self _incidentQuestionsFromLayoutItems:v11];
  incidentMenuItems = self->_incidentMenuItems;
  self->_incidentMenuItems = v12;

  v14 = [v4 otherLayoutItems];

  v15 = [(RAPMainQuestion *)self _questionsFromLayoutItems:v14];
  v16 = [v15 firstObject];
  otherIssueMenuItem = self->_otherIssueMenuItem;
  self->_otherIssueMenuItem = v16;

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
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___RAPMainQuestion;
  v2 = objc_msgSendSuper2(&v4, "localizedHeaderText");

  return v2;
}

@end