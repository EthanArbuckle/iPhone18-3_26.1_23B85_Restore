@interface RAPLookAroundQuestion
- (BOOL)isAnonymous;
- (NSArray)initialItems;
- (NSArray)initialItemsMinusPrivacy;
- (NSArray)privacyItems;
- (NSString)localizedDetailsNavigationTitle;
- (NSString)localizedPrivacyNavigationTitle;
- (RAPLookAroundQuestion)initWithReport:(id)a3 parentQuestion:(id)a4;
- (id)_labelItems;
- (id)localizedDescription;
- (id)localizedTitle;
- (int)analyticTarget;
- (void)_clearFields;
- (void)_fillSubmissionParameters:(id)a3;
- (void)_initCorrectableFields;
- (void)_resolveCompleteness;
- (void)setSelectedQuestionType:(unint64_t)a3;
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

- (void)_fillSubmissionParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 details];

  if (!v5)
  {
    v6 = objc_opt_new();
    [v4 setDetails:v6];
  }

  v7 = [v4 details];
  v8 = [v7 groundViewFeedback];

  if (!v8)
  {
    v9 = objc_opt_new();
    v10 = [v4 details];
    [v10 setGroundViewFeedback:v9];
  }

  v11 = [v4 details];
  v12 = [v11 groundViewFeedback];
  v13 = [v12 groundViewContext];

  if (!v13)
  {
    v13 = objc_opt_new();
    v14 = [v4 details];
    v15 = [v14 groundViewFeedback];
    [v15 setGroundViewContext:v13];
  }

  v16 = [(RAPQuestion *)self _context];
  v17 = [v16 reportedLookAroundContext];

  v18 = [v17 reportedMuninViewState];
  [v13 setViewState:v18];

  [v13 setMetadataTileBuildId:{objc_msgSend(v17, "muninMetadataTileBuildId")}];
  [v13 setImdataId:{objc_msgSend(v17, "muninImageDataId")}];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v19 = [v17 reportedVisibleMUIDs];
  v20 = [v19 countByEnumeratingWithState:&v71 objects:v77 count:16];
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
          objc_enumerationMutation(v19);
        }

        [v13 addVisiblePlaceMuid:{objc_msgSend(*(*(&v71 + 1) + 8 * i), "unsignedLongLongValue")}];
      }

      v21 = [v19 countByEnumeratingWithState:&v71 objects:v77 count:16];
    }

    while (v21);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v24 = [v17 reportedMuninImageResources];
  v25 = [v24 countByEnumeratingWithState:&v67 objects:v76 count:16];
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
          objc_enumerationMutation(v24);
        }

        [v13 addOnscreenImageResource:*(*(&v67 + 1) + 8 * j)];
      }

      v26 = [v24 countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v26);
  }

  v62 = self;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v29 = [v17 reportedMuninRoadLabels];
  v30 = [v29 countByEnumeratingWithState:&v63 objects:v75 count:16];
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
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v63 + 1) + 8 * k) featureHandles];
        v35 = [v34 firstObject];
        v36 = sub_1007A364C(v35);

        if (v36)
        {
          [v13 addVisibleFeatureHandle:v36];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v31);
  }

  v37 = [v4 details];
  v38 = [v37 groundViewFeedback];
  v39 = [v38 groundViewCorrections];

  if (!v39)
  {
    v39 = objc_opt_new();
    v40 = [v4 details];
    v41 = [v40 groundViewFeedback];
    [v41 setGroundViewCorrections:v39];
  }

  selectedQuestionType = v62->_selectedQuestionType;
  if (selectedQuestionType > 6)
  {
    goto LABEL_40;
  }

  if ((0x77u >> selectedQuestionType))
  {
    [v39 setCorrectionType:dword_101213268[selectedQuestionType]];
    selectedQuestionType = v62->_selectedQuestionType;
  }

  if (selectedQuestionType != 5)
  {
LABEL_40:
    v52 = [(RAPLookAroundQuestion *)v62 commentQuestion];
    [v52 _fillSubmissionParameters:v4];
    goto LABEL_41;
  }

  v43 = objc_alloc_init(GEORPFeedbackAddressFields);
  [v39 setAddressToCensor:v43];

  v44 = [(RAPPlaceCorrectableAddress *)v62->_addressCorrectableString freeformAddress];
  v45 = [v44 value];
  v46 = sub_1006680A4(v45);

  if (v46)
  {
    v47 = [(RAPPlaceCorrectableAddress *)v62->_addressCorrectableString freeformAddress];
    v48 = [v47 value];
    v49 = [v39 addressToCensor];
    [v49 setAddressBasic:v48];
  }

  v50 = [(RAPPlaceCorrectableString *)v62->_emailAddressCorrectableString value];
  v51 = sub_1006680A4(v50);

  if (v51)
  {
    v52 = [(RAPPlaceCorrectableString *)v62->_emailAddressCorrectableString value];
    v53 = [(RAPQuestion *)v62 report];
    [v53 setPreferredEmailAddress:v52];

LABEL_41:
  }

  v54 = [v17 lookAroundSnapshotImageData];

  if (v54)
  {
    v55 = [RAPPhoto alloc];
    v56 = [v17 lookAroundSnapshotImageData];
    v57 = [UIImage imageWithData:v56];
    v58 = +[NSDate date];
    v59 = [(RAPPhoto *)v55 initWithPhoto:v57 date:v58 location:0];

    v60 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:v59 photoType:5];
    v61 = [(RAPQuestion *)v62 report];
    [v61 addPhotoWithMetadata:v60];
  }
}

- (void)_resolveCompleteness
{
  v3 = 0;
  selectedQuestionType = self->_selectedQuestionType;
  if (selectedQuestionType <= 6)
  {
    if (((1 << selectedQuestionType) & 0x57) != 0)
    {
      v3 = [(RAPQuestion *)self->_commentQuestion isComplete];
    }

    else if (selectedQuestionType == 5)
    {
      v5 = [(RAPPlaceCorrectableString *)self->_emailAddressCorrectableString value];
      if (sub_1006680A4(v5))
      {
        v6 = [(RAPPlaceCorrectableString *)self->_emailAddressCorrectableString value];
        v7 = [v6 _maps_isEmailAddress];
      }

      else
      {
        v7 = 0;
      }

      v8 = [(RAPPlaceCorrectableAddress *)self->_addressCorrectableString freeformAddress];
      v9 = [v8 value];
      v10 = sub_1006680A4(v9);

      v3 = v7 & v10;
    }
  }

  [(RAPQuestion *)self _setComplete:v3];
}

- (NSArray)privacyItems
{
  v2 = +[GEOCountryConfiguration sharedConfiguration];
  v3 = [v2 countryCode];
  v4 = [v3 isEqualToString:@"KR"];

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
    v5 = [(RAPLookAroundQuestion *)self _labelItems];
    v6 = [v4 arrayByAddingObjectsFromArray:v5];

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
    v5 = [(RAPLookAroundQuestion *)self _labelItems];
    v6 = [v4 arrayByAddingObjectsFromArray:v5];

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
  v3 = [(RAPQuestion *)self report];
  [v3 _questionDidChange:self];
}

- (BOOL)isAnonymous
{
  v5.receiver = self;
  v5.super_class = RAPLookAroundQuestion;
  v3 = [(RAPQuestion *)&v5 isAnonymous];
  if (v3)
  {
    LOBYTE(v3) = self->_selectedQuestionType != 5;
  }

  return v3;
}

- (void)setSelectedQuestionType:(unint64_t)a3
{
  if (self->_selectedQuestionType != a3)
  {
    self->_selectedQuestionType = a3;
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
  v4 = [v3 userInterfaceIdiom];

  selectedQuestionType = self->_selectedQuestionType;
  if (v4 == 5)
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
  v3 = [v2 userInterfaceIdiom];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3 == 5)
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
  v7 = [(RAPQuestion *)self report];
  v8 = [(RAPCommentQuestion *)v6 initWithReport:v7 parentQuestion:self title:&stru_1016631F0 placeholderText:&stru_1016631F0 emphasis:v5];
  commentQuestion = self->_commentQuestion;
  self->_commentQuestion = v8;

  [(RAPCommentQuestion *)self->_commentQuestion setPhotoType:5];
  [(RAPQuestion *)self->_commentQuestion addObserver:self changeHandler:&stru_101625220];
  v10 = +[RAPPlaceCorrectableAddress emptyCorrectableAddress];
  addressCorrectableString = self->_addressCorrectableString;
  self->_addressCorrectableString = v10;

  [(RAPPlaceCorrectableAddress *)self->_addressCorrectableString addObserver:self changeHandler:&stru_101625260];
}

- (RAPLookAroundQuestion)initWithReport:(id)a3 parentQuestion:(id)a4
{
  v12.receiver = self;
  v12.super_class = RAPLookAroundQuestion;
  v4 = [(RAPQuestion *)&v12 initWithReport:a3 parentQuestion:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(RAPQuestion *)v4 _context];
    v7 = [v6 reportedLookAroundContext];

    v8 = [v7 lookAroundSnapshotImageData];
    v9 = [UIImage imageWithData:v8];
    thumbnailImage = v5->_thumbnailImage;
    v5->_thumbnailImage = v9;

    v5->_labelsEnabled = [v7 lookAroundLabelsEnabled];
    [(RAPLookAroundQuestion *)v5 _initCorrectableFields];
  }

  return v5;
}

@end