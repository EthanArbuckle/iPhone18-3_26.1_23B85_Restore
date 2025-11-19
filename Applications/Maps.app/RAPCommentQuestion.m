@interface RAPCommentQuestion
+ (id)_localizedInformationTitle;
+ (id)_localizedMoreInformationTitle;
+ (id)_localizedOptionalInformationTitle;
+ (id)validatedComment:(id)a3;
- (BOOL)_isNowComplete;
- (BOOL)removePhotoForIdentifier:(id)a3;
- (NSString)localizedPhotosPickerExplanation;
- (NSString)localizedPhotosPickerLabel;
- (RAPCommentQuestion)initWithReport:(id)a3 parentQuestion:(id)a4;
- (RAPCommentQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 title:(id)a5 placeholderText:(id)a6 emphasis:(int64_t)a7;
- (RAPCommentQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 title:(id)a5 placeholderText:(id)a6 emphasis:(int64_t)a7 localizedPhotosPickerExplanation:(id)a8;
- (id)photoAtIndex:(unint64_t)a3;
- (void)_fillSubmissionParameters:(id)a3;
- (void)_prepareForSubmission;
- (void)_setCommentsTitle:(id)a3 placeholderText:(id)a4;
- (void)_setLocalizedPhotosPickerExplanation:(id)a3;
- (void)_setPlaceholderText:(id)a3;
- (void)addPhoto:(id)a3;
- (void)removeAllPhotos;
- (void)removePhotoAtIndex:(unint64_t)a3;
- (void)setComment:(id)a3;
- (void)setPhotos:(id)a3;
@end

@implementation RAPCommentQuestion

- (void)_prepareForSubmission
{
  v14.receiver = self;
  v14.super_class = RAPCommentQuestion;
  [(RAPQuestion *)&v14 _prepareForSubmission];
  if ([(RAPCommentQuestion *)self emphasis]!= 3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [(RAPCommentQuestion *)self photos];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:*(*(&v10 + 1) + 8 * v7) photoType:self->_photoType];
          v9 = [(RAPQuestion *)self report];
          [v9 addPhotoWithMetadata:v8];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v5);
    }
  }
}

- (void)_fillSubmissionParameters:(id)a3
{
  v13 = a3;
  v4 = [v13 commonCorrections];

  if (!v4)
  {
    v5 = objc_alloc_init(GEORPFeedbackCommonCorrections);
    [v13 setCommonCorrections:v5];
  }

  v6 = [(RAPCommentQuestion *)self comment];
  v7 = [v13 commonCorrections];
  [v7 setComments:v6];

  v8 = [v13 commonContext];

  if (!v8)
  {
    v9 = objc_alloc_init(GEORPFeedbackCommonContext);
    [v13 setCommonContext:v9];
  }

  if ([(RAPCommentQuestion *)self shouldShowEmail])
  {
    v10 = [(RAPPlaceCorrectableString *)self->_correctableEmail value];
    v11 = [(RAPQuestion *)self report];
    [v11 setPreferredEmailAddress:v10];
  }

  v12 = [v13 commonContext];
  [v12 addUserPath:10];
}

- (BOOL)_isNowComplete
{
  if ([(RAPCommentQuestion *)self shouldShowEmail])
  {
    v3 = [(RAPPlaceCorrectableString *)self->_correctableEmail value];
    v4 = [v3 _maps_isEmailAddress];

    if (!v4)
    {
      return 0;
    }
  }

  v5 = [(RAPCommentQuestion *)self comment];
  v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];
  v8 = [v7 length];
  v9 = v8 != 0;

  v10 = [(RAPCommentQuestion *)self photos];
  v11 = [v10 count];

  v12 = [(RAPCommentQuestion *)self emphasis];
  if (v12 < 2)
  {
    return (v8 | v11) != 0;
  }

  if (v12 == 4)
  {
    return v11 != 0;
  }

  if (v12 == 5)
  {
    return 1;
  }

  return v9;
}

- (void)setPhotos:(id)a3
{
  if (self->_photos != a3)
  {
    v4 = [a3 copy];
    photos = self->_photos;
    self->_photos = v4;

    v6 = [(RAPCommentQuestion *)self _isNowComplete];

    [(RAPQuestion *)self _setComplete:v6];
  }
}

- (id)photoAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_photos count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_photos objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (void)removeAllPhotos
{
  photos = self->_photos;
  self->_photos = &__NSArray0__struct;
}

- (BOOL)removePhotoForIdentifier:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = self;
  v5 = self->_photos;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [*(*(&v17 + 1) + 8 * v10) identifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v8 = v11;
          goto LABEL_12;
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  v14 = [(NSArray *)v16->_photos count];
  if (v8 < v14)
  {
    [(RAPCommentQuestion *)v16 removePhotoAtIndex:v8];
  }

  return v8 < v14;
}

- (void)removePhotoAtIndex:(unint64_t)a3
{
  photos = self->_photos;
  if (photos && [(NSArray *)photos count]> a3)
  {
    v6 = [[NSMutableArray alloc] initWithArray:self->_photos];
    [v6 removeObjectAtIndex:a3];
    v7 = [NSArray arrayWithArray:v6];
    v8 = self->_photos;
    self->_photos = v7;
  }

  [(RAPQuestion *)self _setComplete:[(RAPCommentQuestion *)self _isNowComplete] allowInvokingDidChange:0];

  [(RAPQuestion *)self _didChange];
}

- (void)addPhoto:(id)a3
{
  if (self->_photos)
  {
    v4 = a3;
    v5 = [[NSMutableArray alloc] initWithArray:self->_photos];
    [v5 addObject:v4];
    v6 = [NSArray arrayWithArray:v5];
    photos = self->_photos;
    self->_photos = v6;
  }

  else
  {
    v11 = a3;
    v8 = a3;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    v10 = self->_photos;
    self->_photos = v9;
  }

  [(RAPQuestion *)self _setComplete:[(RAPCommentQuestion *)self _isNowComplete] allowInvokingDidChange:0];
  [(RAPQuestion *)self _didChange];
}

- (void)setComment:(id)a3
{
  if (self->_comment != a3)
  {
    v9 = [RAPCommentQuestion validatedComment:?];
    v4 = [(NSString *)self->_comment _rap_charactersCount];
    v5 = [v9 _rap_charactersCount];
    v6 = [v9 copy];
    comment = self->_comment;
    self->_comment = v6;

    v8 = [(RAPCommentQuestion *)self _isNowComplete];
    if (v4 == v5)
    {
      [(RAPQuestion *)self _setComplete:v8 allowInvokingDidChange:1];
    }

    else
    {
      [(RAPQuestion *)self _setComplete:v8 allowInvokingDidChange:0];
      [(RAPQuestion *)self _didChange];
    }
  }
}

- (void)_setLocalizedPhotosPickerExplanation:(id)a3
{
  v4 = [a3 copy];
  localizedPhotosPickerExplanation = self->_localizedPhotosPickerExplanation;
  self->_localizedPhotosPickerExplanation = v4;

  [(RAPQuestion *)self _didChange];
}

- (void)_setPlaceholderText:(id)a3
{
  v4 = [a3 copy];
  commentsPlaceholderText = self->_commentsPlaceholderText;
  self->_commentsPlaceholderText = v4;

  [(RAPQuestion *)self _didChange];
}

- (void)_setCommentsTitle:(id)a3 placeholderText:(id)a4
{
  v8 = a4;
  v6 = [a3 copy];
  commentsTitle = self->_commentsTitle;
  self->_commentsTitle = v6;

  [(RAPCommentQuestion *)self _setPlaceholderText:v8];
}

- (RAPCommentQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 title:(id)a5 placeholderText:(id)a6 emphasis:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v32.receiver = self;
  v32.super_class = RAPCommentQuestion;
  v16 = [(RAPQuestion *)&v32 initWithReport:v12 parentQuestion:v13];
  if (v16)
  {
    v17 = [v14 copy];
    commentsTitle = v16->_commentsTitle;
    v16->_commentsTitle = v17;

    v19 = [v15 copy];
    commentsPlaceholderText = v16->_commentsPlaceholderText;
    v16->_commentsPlaceholderText = v19;

    v16->_emphasis = a7;
    v16->_photoType = 1;
    v16->_shouldShowEmail = 0;
    v21 = [[RAPPlaceCorrectableString alloc] initWithKind:-1 originalValue:&stru_1016631F0];
    correctableEmail = v16->_correctableEmail;
    v16->_correctableEmail = v21;

    v23 = sub_1007412FC();
    [(RAPPlaceCorrectableString *)v16->_correctableEmail setValue:v23];

    objc_initWeak(&location, v16);
    v24 = v16->_correctableEmail;
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100986D90;
    v29 = &unk_101630520;
    objc_copyWeak(&v30, &location);
    [(RAPPlaceCorrectableString *)v24 addObserver:v16 changeHandler:&v26];
    if (v16->_emphasis == 5)
    {
      [(RAPQuestion *)v16 _setComplete:1 allowInvokingDidChange:0, v26, v27, v28, v29];
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v16;
}

- (RAPCommentQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 title:(id)a5 placeholderText:(id)a6 emphasis:(int64_t)a7 localizedPhotosPickerExplanation:(id)a8
{
  v14 = a8;
  v15 = [(RAPCommentQuestion *)self initWithReport:a3 parentQuestion:a4 title:a5 placeholderText:a6 emphasis:a7];
  if (v15)
  {
    v16 = [v14 copy];
    localizedPhotosPickerExplanation = v15->_localizedPhotosPickerExplanation;
    v15->_localizedPhotosPickerExplanation = v16;
  }

  return v15;
}

- (RAPCommentQuestion)initWithReport:(id)a3 parentQuestion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Comments" value:@"localized string not found" table:0];
  v10 = [(RAPCommentQuestion *)self initWithReport:v7 parentQuestion:v6 title:v9 placeholderText:0 emphasis:0];

  return v10;
}

- (NSString)localizedPhotosPickerExplanation
{
  localizedPhotosPickerExplanation = self->_localizedPhotosPickerExplanation;
  if (!localizedPhotosPickerExplanation)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Submit a Photo [Report an Issue photos]" value:@"localized string not found" table:0];
    v6 = self->_localizedPhotosPickerExplanation;
    self->_localizedPhotosPickerExplanation = v5;

    localizedPhotosPickerExplanation = self->_localizedPhotosPickerExplanation;
  }

  return localizedPhotosPickerExplanation;
}

- (NSString)localizedPhotosPickerLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Details [Report a Problem photos]" value:@"localized string not found" table:0];

  return v3;
}

+ (id)validatedComment:(id)a3
{
  v3 = a3;
  v4 = [v3 _rap_charactersCount];
  if (v4 > +[RAPCommentQuestion maximumCommentLength])
  {
    v5 = [v3 _rap_substringWithNumberOfCharacters:{+[RAPCommentQuestion maximumCommentLength](RAPCommentQuestion, "maximumCommentLength")}];

    v3 = v5;
  }

  return v3;
}

+ (id)_localizedOptionalInformationTitle
{
  IsEnabled_MoreReportTypes = MapsFeature_IsEnabled_MoreReportTypes();
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (IsEnabled_MoreReportTypes)
  {
    v5 = @"OPTIONAL INFORMATION";
  }

  else
  {
    v5 = @"Optional Information";
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v6;
}

+ (id)_localizedMoreInformationTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"More Information" value:@"localized string not found" table:0];

  return v3;
}

+ (id)_localizedInformationTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Information" value:@"localized string not found" table:0];

  return v3;
}

@end