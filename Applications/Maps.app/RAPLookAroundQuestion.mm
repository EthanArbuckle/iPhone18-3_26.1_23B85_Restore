@interface RAPLookAroundQuestion
- (BOOL)isAnonymous;
- (NSArray)initialItems;
- (NSArray)initialItemsMinusPrivacy;
- (NSArray)privacyItems;
- (NSString)localizedDetailsNavigationTitle;
- (NSString)localizedPrivacyNavigationTitle;
- (RAPLookAroundQuestion)initWithReport:(id)report parentQuestion:(id)question;
- (id)_labelItems;
- (id)localizedDescription;
- (id)localizedTitle;
- (int)analyticTarget;
- (void)_clearFields;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)_initCorrectableFields;
- (void)_resolveCompleteness;
- (void)setSelectedQuestionType:(unint64_t)type;
@end

@implementation RAPLookAroundQuestion

- (int)analyticTarget
{
  selectedQuestionType = self->_selectedQuestionType;
  if (selectedQuestionType > 6)
  {
    return 0;
  }

  else
  {
    return dword_101213284[selectedQuestionType];
  }
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  details = [parametersCopy details];

  if (!details)
  {
    v6 = objc_opt_new();
    [parametersCopy setDetails:v6];
  }

  details2 = [parametersCopy details];
  groundViewFeedback = [details2 groundViewFeedback];

  if (!groundViewFeedback)
  {
    v9 = objc_opt_new();
    details3 = [parametersCopy details];
    [details3 setGroundViewFeedback:v9];
  }

  details4 = [parametersCopy details];
  groundViewFeedback2 = [details4 groundViewFeedback];
  groundViewContext = [groundViewFeedback2 groundViewContext];

  if (!groundViewContext)
  {
    groundViewContext = objc_opt_new();
    details5 = [parametersCopy details];
    groundViewFeedback3 = [details5 groundViewFeedback];
    [groundViewFeedback3 setGroundViewContext:groundViewContext];
  }

  _context = [(RAPQuestion *)self _context];
  reportedLookAroundContext = [_context reportedLookAroundContext];

  reportedMuninViewState = [reportedLookAroundContext reportedMuninViewState];
  [groundViewContext setViewState:reportedMuninViewState];

  [groundViewContext setMetadataTileBuildId:{objc_msgSend(reportedLookAroundContext, "muninMetadataTileBuildId")}];
  [groundViewContext setImdataId:{objc_msgSend(reportedLookAroundContext, "muninImageDataId")}];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  reportedVisibleMUIDs = [reportedLookAroundContext reportedVisibleMUIDs];
  v20 = [reportedVisibleMUIDs countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v72;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v72 != v22)
        {
          objc_enumerationMutation(reportedVisibleMUIDs);
        }

        [groundViewContext addVisiblePlaceMuid:{objc_msgSend(*(*(&v71 + 1) + 8 * i), "unsignedLongLongValue")}];
      }

      v21 = [reportedVisibleMUIDs countByEnumeratingWithState:&v71 objects:v77 count:16];
    }

    while (v21);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  reportedMuninImageResources = [reportedLookAroundContext reportedMuninImageResources];
  v25 = [reportedMuninImageResources countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v68;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v68 != v27)
        {
          objc_enumerationMutation(reportedMuninImageResources);
        }

        [groundViewContext addOnscreenImageResource:*(*(&v67 + 1) + 8 * j)];
      }

      v26 = [reportedMuninImageResources countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v26);
  }

  selfCopy = self;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  reportedMuninRoadLabels = [reportedLookAroundContext reportedMuninRoadLabels];
  v30 = [reportedMuninRoadLabels countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v64;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v64 != v32)
        {
          objc_enumerationMutation(reportedMuninRoadLabels);
        }

        featureHandles = [*(*(&v63 + 1) + 8 * k) featureHandles];
        firstObject = [featureHandles firstObject];
        v36 = sub_1007A364C(firstObject);

        if (v36)
        {
          [groundViewContext addVisibleFeatureHandle:v36];
        }
      }

      v31 = [reportedMuninRoadLabels countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v31);
  }

  details6 = [parametersCopy details];
  groundViewFeedback4 = [details6 groundViewFeedback];
  groundViewCorrections = [groundViewFeedback4 groundViewCorrections];

  if (!groundViewCorrections)
  {
    groundViewCorrections = objc_opt_new();
    details7 = [parametersCopy details];
    groundViewFeedback5 = [details7 groundViewFeedback];
    [groundViewFeedback5 setGroundViewCorrections:groundViewCorrections];
  }

  selectedQuestionType = selfCopy->_selectedQuestionType;
  if (selectedQuestionType > 6)
  {
    goto LABEL_40;
  }

  if ((0x77u >> selectedQuestionType))
  {
    [groundViewCorrections setCorrectionType:dword_101213268[selectedQuestionType]];
    selectedQuestionType = selfCopy->_selectedQuestionType;
  }

  if (selectedQuestionType != 5)
  {
LABEL_40:
    commentQuestion = [(RAPLookAroundQuestion *)selfCopy commentQuestion];
    [commentQuestion _fillSubmissionParameters:parametersCopy];
    goto LABEL_41;
  }

  v43 = objc_alloc_init(GEORPFeedbackAddressFields);
  [groundViewCorrections setAddressToCensor:v43];

  freeformAddress = [(RAPPlaceCorrectableAddress *)selfCopy->_addressCorrectableString freeformAddress];
  value = [freeformAddress value];
  v46 = sub_1006680A4(value);

  if (v46)
  {
    freeformAddress2 = [(RAPPlaceCorrectableAddress *)selfCopy->_addressCorrectableString freeformAddress];
    value2 = [freeformAddress2 value];
    addressToCensor = [groundViewCorrections addressToCensor];
    [addressToCensor setAddressBasic:value2];
  }

  value3 = [(RAPPlaceCorrectableString *)selfCopy->_emailAddressCorrectableString value];
  v51 = sub_1006680A4(value3);

  if (v51)
  {
    commentQuestion = [(RAPPlaceCorrectableString *)selfCopy->_emailAddressCorrectableString value];
    report = [(RAPQuestion *)selfCopy report];
    [report setPreferredEmailAddress:commentQuestion];

LABEL_41:
  }

  lookAroundSnapshotImageData = [reportedLookAroundContext lookAroundSnapshotImageData];

  if (lookAroundSnapshotImageData)
  {
    v55 = [RAPPhoto alloc];
    lookAroundSnapshotImageData2 = [reportedLookAroundContext lookAroundSnapshotImageData];
    v57 = [UIImage imageWithData:lookAroundSnapshotImageData2];
    v58 = +[NSDate date];
    v59 = [(RAPPhoto *)v55 initWithPhoto:v57 date:v58 location:0];

    v60 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:v59 photoType:5];
    report2 = [(RAPQuestion *)selfCopy report];
    [report2 addPhotoWithMetadata:v60];
  }
}

- (void)_resolveCompleteness
{
  isComplete = 0;
  selectedQuestionType = self->_selectedQuestionType;
  if (selectedQuestionType <= 6)
  {
    if (((1 << selectedQuestionType) & 0x57) != 0)
    {
      isComplete = [(RAPQuestion *)self->_commentQuestion isComplete];
    }

    else if (selectedQuestionType == 5)
    {
      value = [(RAPPlaceCorrectableString *)self->_emailAddressCorrectableString value];
      if (sub_1006680A4(value))
      {
        value2 = [(RAPPlaceCorrectableString *)self->_emailAddressCorrectableString value];
        _maps_isEmailAddress = [value2 _maps_isEmailAddress];
      }

      else
      {
        _maps_isEmailAddress = 0;
      }

      freeformAddress = [(RAPPlaceCorrectableAddress *)self->_addressCorrectableString freeformAddress];
      value3 = [freeformAddress value];
      v10 = sub_1006680A4(value3);

      isComplete = _maps_isEmailAddress & v10;
    }
  }

  [(RAPQuestion *)self _setComplete:isComplete];
}

- (NSArray)privacyItems
{
  v2 = +[GEOCountryConfiguration sharedConfiguration];
  countryCode = [v2 countryCode];
  v4 = [countryCode isEqualToString:@"KR"];

  v5 = [[RAPLookAroundCategoryItem alloc] initWithType:4];
  v6 = v5;
  if (v4)
  {
    v11 = v5;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
  }

  else
  {
    v8 = [[RAPLookAroundCategoryItem alloc] initWithType:5, v5];
    v10[1] = v8;
    v7 = [NSArray arrayWithObjects:v10 count:2];
  }

  return v7;
}

- (id)_labelItems
{
  v2 = [[RAPLookAroundCategoryItem alloc] initWithType:1];
  v3 = [[RAPLookAroundCategoryItem alloc] initWithType:2];
  v4 = objc_alloc_init(NSMutableArray);
  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    [v4 addObject:v3];
  }

  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    [v4 addObject:v2];
  }

  v5 = [v4 copy];

  return v5;
}

- (NSArray)initialItemsMinusPrivacy
{
  v3 = [[RAPLookAroundCategoryItem alloc] initWithType:0];
  v10 = v3;
  v4 = [NSArray arrayWithObjects:&v10 count:1];

  if (self->_labelsEnabled)
  {
    _labelItems = [(RAPLookAroundQuestion *)self _labelItems];
    v6 = [v4 arrayByAddingObjectsFromArray:_labelItems];

    v4 = v6;
  }

  v7 = [[RAPLookAroundCategoryItem alloc] initWithType:6];
  v8 = [v4 arrayByAddingObject:v7];

  return v8;
}

- (NSArray)initialItems
{
  v3 = [[RAPLookAroundCategoryItem alloc] initWithType:0];
  v12 = v3;
  v4 = [NSArray arrayWithObjects:&v12 count:1];

  if (self->_labelsEnabled)
  {
    _labelItems = [(RAPLookAroundQuestion *)self _labelItems];
    v6 = [v4 arrayByAddingObjectsFromArray:_labelItems];

    v4 = v6;
  }

  v7 = [[RAPLookAroundCategoryItem alloc] initWithType:3];
  v8 = [v4 arrayByAddingObject:v7];

  v9 = [[RAPLookAroundCategoryItem alloc] initWithType:6];
  v10 = [v8 arrayByAddingObject:v9];

  return v10;
}

- (void)_clearFields
{
  [(RAPPlaceCorrectableAddress *)self->_addressCorrectableString removeObserver:self];
  [(RAPPlaceCorrectableString *)self->_emailAddressCorrectableString removeObserver:self];
  [(RAPQuestion *)self->_commentQuestion removeObserver:self];
  [(RAPLookAroundQuestion *)self _initCorrectableFields];
  [(RAPQuestion *)self _setComplete:0];
  report = [(RAPQuestion *)self report];
  [report _questionDidChange:self];
}

- (BOOL)isAnonymous
{
  v5.receiver = self;
  v5.super_class = RAPLookAroundQuestion;
  isAnonymous = [(RAPQuestion *)&v5 isAnonymous];
  if (isAnonymous)
  {
    LOBYTE(isAnonymous) = self->_selectedQuestionType != 5;
  }

  return isAnonymous;
}

- (void)setSelectedQuestionType:(unint64_t)type
{
  if (self->_selectedQuestionType != type)
  {
    self->_selectedQuestionType = type;
  }

  [(RAPLookAroundQuestion *)self _clearFields];

  [(RAPLookAroundQuestion *)self _resolveCompleteness];
}

- (NSString)localizedPrivacyNavigationTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[RAP LookAround] Privacy Concerns" value:@"localized string not found" table:0];

  return v3;
}

- (NSString)localizedDetailsNavigationTitle
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  selectedQuestionType = self->_selectedQuestionType;
  if (userInterfaceIdiom == 5)
  {
    if (selectedQuestionType < 7 && ((0x77u >> selectedQuestionType) & 1) != 0)
    {
      v6 = off_1016252B8;
LABEL_8:
      v7 = v6[selectedQuestionType];
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:v7 value:@"localized string not found" table:0];

      goto LABEL_10;
    }
  }

  else if (selectedQuestionType < 7 && ((0x77u >> selectedQuestionType) & 1) != 0)
  {
    v6 = off_1016252F0;
    goto LABEL_8;
  }

  v9 = &stru_1016631F0;
LABEL_10:

  return v9;
}

- (id)localizedDescription
{
  selectedQuestionType = self->_selectedQuestionType;
  if (selectedQuestionType <= 6 && ((0x57u >> selectedQuestionType) & 1) != 0)
  {
    v3 = off_101625280[selectedQuestionType];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  else
  {
    v5 = &stru_1016631F0;
  }

  return v5;
}

- (id)localizedTitle
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (userInterfaceIdiom == 5)
  {
    v6 = @"Report an Issue with Look Around [LookAround RAP]";
  }

  else
  {
    v6 = @"Report an Issue";
  }

  v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

  return v7;
}

- (void)_initCorrectableFields
{
  v12 = sub_1007412FC();
  v3 = [[RAPPlaceCorrectableString alloc] initWithKind:-1 originalValue:&stru_1016631F0];
  emailAddressCorrectableString = self->_emailAddressCorrectableString;
  self->_emailAddressCorrectableString = v3;

  [(RAPPlaceCorrectableString *)self->_emailAddressCorrectableString setValue:v12];
  [(RAPPlaceCorrectableString *)self->_emailAddressCorrectableString addObserver:self changeHandler:&stru_1016251E0];
  if (self->_selectedQuestionType == 4)
  {
    v5 = 5;
  }

  else
  {
    v5 = 2;
  }

  v6 = [RAPCommentQuestion alloc];
  report = [(RAPQuestion *)self report];
  v8 = [(RAPCommentQuestion *)v6 initWithReport:report parentQuestion:self title:&stru_1016631F0 placeholderText:&stru_1016631F0 emphasis:v5];
  commentQuestion = self->_commentQuestion;
  self->_commentQuestion = v8;

  [(RAPCommentQuestion *)self->_commentQuestion setPhotoType:5];
  [(RAPQuestion *)self->_commentQuestion addObserver:self changeHandler:&stru_101625220];
  v10 = +[RAPPlaceCorrectableAddress emptyCorrectableAddress];
  addressCorrectableString = self->_addressCorrectableString;
  self->_addressCorrectableString = v10;

  [(RAPPlaceCorrectableAddress *)self->_addressCorrectableString addObserver:self changeHandler:&stru_101625260];
}

- (RAPLookAroundQuestion)initWithReport:(id)report parentQuestion:(id)question
{
  v12.receiver = self;
  v12.super_class = RAPLookAroundQuestion;
  v4 = [(RAPQuestion *)&v12 initWithReport:report parentQuestion:question];
  v5 = v4;
  if (v4)
  {
    _context = [(RAPQuestion *)v4 _context];
    reportedLookAroundContext = [_context reportedLookAroundContext];

    lookAroundSnapshotImageData = [reportedLookAroundContext lookAroundSnapshotImageData];
    v9 = [UIImage imageWithData:lookAroundSnapshotImageData];
    thumbnailImage = v5->_thumbnailImage;
    v5->_thumbnailImage = v9;

    v5->_labelsEnabled = [reportedLookAroundContext lookAroundLabelsEnabled];
    [(RAPLookAroundQuestion *)v5 _initCorrectableFields];
  }

  return v5;
}

@end