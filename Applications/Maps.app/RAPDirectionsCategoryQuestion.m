@interface RAPDirectionsCategoryQuestion
+ (id)localizedHeaderText;
- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)a3;
- (BOOL)shouldShowBetterRouteAvailable;
- (RAPDirectionsCategoryQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 directions:(id)a5;
- (RAPMenuItem)betterRouteAvailableMenuItem;
- (id)followUpQuestionForCategory:(int64_t)a3;
- (id)mainMenuQuestionCategories;
- (void)resetBadRouteSuggestionsQuestion;
@end

@implementation RAPDirectionsCategoryQuestion

- (id)followUpQuestionForCategory:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v18 = [RAPProblemNotListedQuestion alloc];
      v6 = [(RAPQuestion *)self report];
      v17 = +[NSBundle mainBundle];
      v19 = [v17 localizedStringForKey:@"Other [Report an Issue subcategory]" value:@"localized string not found" table:0];
      v4 = [(RAPProblemNotListedQuestion *)v18 initWithReport:v6 parentQuestion:self localizedTitle:v19];

      goto LABEL_17;
    }

    if (a3 != 2)
    {
      goto LABEL_19;
    }

    v8 = RAPBadRouteSuggestionsQuestion;
  }

  else
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        if (a3 != 6)
        {
          goto LABEL_19;
        }

        v5 = [RAPDirectionInstructionsIncorrectQuestion alloc];
        v6 = [(RAPQuestion *)self report];
        v7 = [(RAPDirectionInstructionsIncorrectQuestion *)v5 initWithReport:v6 parentQuestion:self direction:self->_selectedValue];
        goto LABEL_11;
      }

      v10 = [(RAPQuestion *)self parentQuestion];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v6 = [v12 routeFromRecording];

      [v6 pointAt:{objc_msgSend(v6, "pointCount") - 1}];
      v15 = CLLocationCoordinate2DMake(v13, v14);
      v16 = [RAPArrivalEntryPointIncorrectQuestion alloc];
      v17 = [(RAPQuestion *)self report];
      v4 = [(RAPArrivalEntryPointIncorrectQuestion *)v16 initWithReport:v17 parentQuestion:self arrivalPoint:v15.latitude, v15.longitude];
LABEL_17:

      goto LABEL_18;
    }

    v8 = RAPArrivalTimeIncorrectQuestion;
  }

  v9 = [v8 alloc];
  v6 = [(RAPQuestion *)self report];
  v7 = [v9 initWithReport:v6 parentQuestion:self];
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
  v2 = self;
  v3 = [(RAPQuestion *)self _context];
  LOBYTE(v2) = [RAPBadRouteSuggestionsQuestion _canDisplayForContext:v3 selection:v2->_selectedValue];

  return v2;
}

- (BOOL)canDisplayMenuItemForQuestionCategory:(int64_t)a3
{
  selectedValue = self->_selectedValue;
  if (!selectedValue)
  {
    return selectedValue;
  }

  if (a3 == 4)
  {
    LOBYTE(selectedValue) = [(RAPUserDirectionRequest *)selectedValue requestedTransportType]!= 1;
    return selectedValue;
  }

  if (a3 == 3)
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
        v16 = [v15 countryCode];
        v17 = [v14 objectForKey:v16];

        if (v17)
        {
          v18 = [v17 BOOLValue];

          if (v18)
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

  if (a3 != 2)
  {
LABEL_20:
    v20 = [(RAPDirectionsCategoryQuestion *)self mainMenuQuestionCategories];
    v21 = [NSNumber numberWithInteger:a3];
    v22 = [v20 containsObject:v21];

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

- (RAPDirectionsCategoryQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 directions:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = RAPDirectionsCategoryQuestion;
  v10 = [(RAPQuestion *)&v13 initWithReport:a3 parentQuestion:v8];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_selectedValue, a5);
    [v8 addObserver:v11 changeHandler:&stru_101631A98];
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