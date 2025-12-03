@interface RAPDirectionsCategoryQuestion
+ (id)localizedHeaderText;
- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)category;
- (BOOL)shouldShowBetterRouteAvailable;
- (RAPDirectionsCategoryQuestion)initWithReport:(id)report parentQuestion:(id)question directions:(id)directions;
- (RAPMenuItem)betterRouteAvailableMenuItem;
- (id)followUpQuestionForCategory:(int64_t)category;
- (id)mainMenuQuestionCategories;
- (void)resetBadRouteSuggestionsQuestion;
@end

@implementation RAPDirectionsCategoryQuestion

- (id)followUpQuestionForCategory:(int64_t)category
{
  v4 = 0;
  if (category <= 2)
  {
    if (category == 1)
    {
      v18 = [RAPProblemNotListedQuestion alloc];
      report = [(RAPQuestion *)self report];
      report2 = +[NSBundle mainBundle];
      v19 = [report2 localizedStringForKey:@"Other [Report an Issue subcategory]" value:@"localized string not found" table:0];
      v4 = [(RAPProblemNotListedQuestion *)v18 initWithReport:report parentQuestion:self localizedTitle:v19];

      goto LABEL_17;
    }

    if (category != 2)
    {
      goto LABEL_19;
    }

    v8 = RAPBadRouteSuggestionsQuestion;
  }

  else
  {
    if (category != 3)
    {
      if (category != 4)
      {
        if (category != 6)
        {
          goto LABEL_19;
        }

        v5 = [RAPDirectionInstructionsIncorrectQuestion alloc];
        report = [(RAPQuestion *)self report];
        v7 = [(RAPDirectionInstructionsIncorrectQuestion *)v5 initWithReport:report parentQuestion:self direction:self->_selectedValue];
        goto LABEL_11;
      }

      parentQuestion = [(RAPQuestion *)self parentQuestion];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = parentQuestion;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      report = [v12 routeFromRecording];

      [report pointAt:{objc_msgSend(report, "pointCount") - 1}];
      v15 = CLLocationCoordinate2DMake(v13, v14);
      v16 = [RAPArrivalEntryPointIncorrectQuestion alloc];
      report2 = [(RAPQuestion *)self report];
      v4 = [(RAPArrivalEntryPointIncorrectQuestion *)v16 initWithReport:report2 parentQuestion:self arrivalPoint:v15.latitude, v15.longitude];
LABEL_17:

      goto LABEL_18;
    }

    v8 = RAPArrivalTimeIncorrectQuestion;
  }

  v9 = [v8 alloc];
  report = [(RAPQuestion *)self report];
  v7 = [v9 initWithReport:report parentQuestion:self];
LABEL_11:
  v4 = v7;
LABEL_18:

LABEL_19:

  return v4;
}

- (RAPMenuItem)betterRouteAvailableMenuItem
{
  betterRouteAvailableMenuItem = self->_betterRouteAvailableMenuItem;
  if (!betterRouteAvailableMenuItem)
  {
    v4 = [(RAPMenuQuestion *)self menuItemWithFollowUpQuestionCategory:2];
    v5 = self->_betterRouteAvailableMenuItem;
    self->_betterRouteAvailableMenuItem = v4;

    betterRouteAvailableMenuItem = self->_betterRouteAvailableMenuItem;
  }

  return betterRouteAvailableMenuItem;
}

- (BOOL)shouldShowBetterRouteAvailable
{
  selfCopy = self;
  _context = [(RAPQuestion *)self _context];
  LOBYTE(selfCopy) = [RAPBadRouteSuggestionsQuestion _canDisplayForContext:_context selection:selfCopy->_selectedValue];

  return selfCopy;
}

- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)category
{
  selectedValue = self->_selectedValue;
  if (!selectedValue)
  {
    return selectedValue;
  }

  if (category == 4)
  {
    LOBYTE(selectedValue) = [(RAPUserDirectionRequest *)selectedValue requestedTransportType]!= 1;
    return selectedValue;
  }

  if (category == 3)
  {
    LODWORD(selectedValue) = _MKRAPIsAvailable();
    if (!selectedValue)
    {
      return selectedValue;
    }

    if ((sub_1007413D0() & 1) == 0)
    {
      if (_GEOConfigHasValue())
      {
        if (GEOConfigGetBOOL())
        {
          goto LABEL_20;
        }
      }

      else
      {
        v27 = [NSNumber numberWithUnsignedInt:118];
        v28[0] = v27;
        v29[0] = &off_1016EE2B8;
        v26 = [NSNumber numberWithUnsignedInt:119];
        v28[1] = v26;
        v29[1] = &off_1016EE2E0;
        v25 = [NSNumber numberWithUnsignedInt:120];
        v28[2] = v25;
        v29[2] = &off_1016EE308;
        v24 = [NSNumber numberWithUnsignedInt:121];
        v28[3] = v24;
        v29[3] = &off_1016EE330;
        v6 = [NSNumber numberWithUnsignedInt:122];
        v28[4] = v6;
        v29[4] = &off_1016EE358;
        v7 = [NSNumber numberWithUnsignedInt:123];
        v28[5] = v7;
        v29[5] = &off_1016EE380;
        v8 = [NSNumber numberWithUnsignedInt:124];
        v28[6] = v8;
        v29[6] = &off_1016EE3A8;
        v9 = [NSNumber numberWithUnsignedInt:125];
        v28[7] = v9;
        v29[7] = &off_1016EE3D0;
        v10 = [NSNumber numberWithUnsignedInt:126];
        v28[8] = v10;
        v29[8] = &off_1016EE3F8;
        v11 = [NSNumber numberWithUnsignedInt:398];
        v28[9] = v11;
        v29[9] = &off_1016EE420;
        v12 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:10];

        v13 = [NSNumber numberWithUnsignedInt:108];
        v14 = [v12 objectForKeyedSubscript:v13];

        v15 = +[GEOCountryConfiguration sharedConfiguration];
        countryCode = [v15 countryCode];
        v17 = [v14 objectForKey:countryCode];

        if (v17)
        {
          bOOLValue = [v17 BOOLValue];

          if (bOOLValue)
          {
            goto LABEL_20;
          }
        }

        else
        {
          BOOL = GEOConfigGetBOOL();

          if (BOOL)
          {
            goto LABEL_20;
          }
        }
      }
    }

    LOBYTE(selectedValue) = 0;
    return selectedValue;
  }

  if (category != 2)
  {
LABEL_20:
    mainMenuQuestionCategories = [(RAPDirectionsCategoryQuestion *)self mainMenuQuestionCategories];
    v21 = [NSNumber numberWithInteger:category];
    v22 = [mainMenuQuestionCategories containsObject:v21];

    LOBYTE(selectedValue) = v22;
    return selectedValue;
  }

  LOBYTE(selectedValue) = [(RAPDirectionsCategoryQuestion *)self shouldShowBetterRouteAvailable];
  return selectedValue;
}

- (id)mainMenuQuestionCategories
{
  mainMenuQuestionCategories = self->super._mainMenuQuestionCategories;
  if (!mainMenuQuestionCategories)
  {
    self->super._mainMenuQuestionCategories = &off_1016ED2C8;
    mainMenuQuestionCategories = self->super._mainMenuQuestionCategories;
  }

  return mainMenuQuestionCategories;
}

- (void)resetBadRouteSuggestionsQuestion
{
  betterRouteAvailableMenuItem = self->_betterRouteAvailableMenuItem;
  self->_betterRouteAvailableMenuItem = 0;
}

- (RAPDirectionsCategoryQuestion)initWithReport:(id)report parentQuestion:(id)question directions:(id)directions
{
  questionCopy = question;
  directionsCopy = directions;
  v13.receiver = self;
  v13.super_class = RAPDirectionsCategoryQuestion;
  v10 = [(RAPQuestion *)&v13 initWithReport:report parentQuestion:questionCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_selectedValue, directions);
    [questionCopy addObserver:v11 changeHandler:&stru_101631A98];
  }

  return v11;
}

+ (id)localizedHeaderText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Issue with [Report a Problem prompt]" value:@"localized string not found" table:0];

  return v3;
}

@end