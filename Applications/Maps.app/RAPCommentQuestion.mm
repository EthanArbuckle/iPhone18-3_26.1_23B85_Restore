@interface RAPCommentQuestion
+ (id)_localizedInformationTitle;
+ (id)_localizedMoreInformationTitle;
+ (id)_localizedOptionalInformationTitle;
+ (id)validatedComment:(id)comment;
- (BOOL)_isNowComplete;
- (BOOL)removePhotoForIdentifier:(id)identifier;
- (NSString)localizedPhotosPickerExplanation;
- (NSString)localizedPhotosPickerLabel;
- (RAPCommentQuestion)initWithReport:(id)report parentQuestion:(id)question;
- (RAPCommentQuestion)initWithReport:(id)report parentQuestion:(id)question title:(id)title placeholderText:(id)text emphasis:(int64_t)emphasis;
- (RAPCommentQuestion)initWithReport:(id)report parentQuestion:(id)question title:(id)title placeholderText:(id)text emphasis:(int64_t)emphasis localizedPhotosPickerExplanation:(id)explanation;
- (id)photoAtIndex:(unint64_t)index;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)_prepareForSubmission;
- (void)_setCommentsTitle:(id)title placeholderText:(id)text;
- (void)_setLocalizedPhotosPickerExplanation:(id)explanation;
- (void)_setPlaceholderText:(id)text;
- (void)addPhoto:(id)photo;
- (void)removeAllPhotos;
- (void)removePhotoAtIndex:(unint64_t)index;
- (void)setComment:(id)comment;
- (void)setPhotos:(id)photos;
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
    photos = [(RAPCommentQuestion *)self photos];
    v4 = [photos countByEnumeratingWithState:&v10 objects:v15 count:16];
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
            objc_enumerationMutation(photos);
          }

          v8 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:*(*(&v10 + 1) + 8 * v7) photoType:self->_photoType];
          report = [(RAPQuestion *)self report];
          [report addPhotoWithMetadata:v8];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [photos countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v5);
    }
  }
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  commonCorrections = [parametersCopy commonCorrections];

  if (!commonCorrections)
  {
    v5 = objc_alloc_init(GEORPFeedbackCommonCorrections);
    [parametersCopy setCommonCorrections:v5];
  }

  comment = [(RAPCommentQuestion *)self comment];
  commonCorrections2 = [parametersCopy commonCorrections];
  [commonCorrections2 setComments:comment];

  commonContext = [parametersCopy commonContext];

  if (!commonContext)
  {
    v9 = objc_alloc_init(GEORPFeedbackCommonContext);
    [parametersCopy setCommonContext:v9];
  }

  if ([(RAPCommentQuestion *)self shouldShowEmail])
  {
    value = [(RAPPlaceCorrectableString *)self->_correctableEmail value];
    report = [(RAPQuestion *)self report];
    [report setPreferredEmailAddress:value];
  }

  commonContext2 = [parametersCopy commonContext];
  [commonContext2 addUserPath:10];
}

- (BOOL)_isNowComplete
{
  if ([(RAPCommentQuestion *)self shouldShowEmail])
  {
    value = [(RAPPlaceCorrectableString *)self->_correctableEmail value];
    _maps_isEmailAddress = [value _maps_isEmailAddress];

    if (!_maps_isEmailAddress)
    {
      return 0;
    }
  }

  comment = [(RAPCommentQuestion *)self comment];
  v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v7 = [comment stringByTrimmingCharactersInSet:v6];
  v8 = [v7 length];
  v9 = v8 != 0;

  photos = [(RAPCommentQuestion *)self photos];
  v11 = [photos count];

  emphasis = [(RAPCommentQuestion *)self emphasis];
  if (emphasis < 2)
  {
    return (v8 | v11) != 0;
  }

  if (emphasis == 4)
  {
    return v11 != 0;
  }

  if (emphasis == 5)
  {
    return 1;
  }

  return v9;
}

- (void)setPhotos:(id)photos
{
  if (self->_photos != photos)
  {
    v4 = [photos copy];
    photos = self->_photos;
    self->_photos = v4;

    _isNowComplete = [(RAPCommentQuestion *)self _isNowComplete];

    [(RAPQuestion *)self _setComplete:_isNowComplete];
  }
}

- (id)photoAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_photos count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_photos objectAtIndexedSubscript:index];
  }

  return v5;
}

- (void)removeAllPhotos
{
  photos = self->_photos;
  self->_photos = &__NSArray0__struct;
}

- (BOOL)removePhotoForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
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

        identifier = [*(*(&v17 + 1) + 8 * v10) identifier];
        v13 = [identifier isEqualToString:identifierCopy];

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

  v14 = [(NSArray *)selfCopy->_photos count];
  if (v8 < v14)
  {
    [(RAPCommentQuestion *)selfCopy removePhotoAtIndex:v8];
  }

  return v8 < v14;
}

- (void)removePhotoAtIndex:(unint64_t)index
{
  photos = self->_photos;
  if (photos && [(NSArray *)photos count]> index)
  {
    v6 = [[NSMutableArray alloc] initWithArray:self->_photos];
    [v6 removeObjectAtIndex:index];
    v7 = [NSArray arrayWithArray:v6];
    v8 = self->_photos;
    self->_photos = v7;
  }

  [(RAPQuestion *)self _setComplete:[(RAPCommentQuestion *)self _isNowComplete] allowInvokingDidChange:0];

  [(RAPQuestion *)self _didChange];
}

- (void)addPhoto:(id)photo
{
  if (self->_photos)
  {
    photoCopy = photo;
    v5 = [[NSMutableArray alloc] initWithArray:self->_photos];
    [v5 addObject:photoCopy];
    v6 = [NSArray arrayWithArray:v5];
    photos = self->_photos;
    self->_photos = v6;
  }

  else
  {
    photoCopy2 = photo;
    photoCopy3 = photo;
    v9 = [NSArray arrayWithObjects:&photoCopy2 count:1];
    v10 = self->_photos;
    self->_photos = v9;
  }

  [(RAPQuestion *)self _setComplete:[(RAPCommentQuestion *)self _isNowComplete] allowInvokingDidChange:0];
  [(RAPQuestion *)self _didChange];
}

- (void)setComment:(id)comment
{
  if (self->_comment != comment)
  {
    v9 = [RAPCommentQuestion validatedComment:?];
    _rap_charactersCount = [(NSString *)self->_comment _rap_charactersCount];
    _rap_charactersCount2 = [v9 _rap_charactersCount];
    v6 = [v9 copy];
    comment = self->_comment;
    self->_comment = v6;

    _isNowComplete = [(RAPCommentQuestion *)self _isNowComplete];
    if (_rap_charactersCount == _rap_charactersCount2)
    {
      [(RAPQuestion *)self _setComplete:_isNowComplete allowInvokingDidChange:1];
    }

    else
    {
      [(RAPQuestion *)self _setComplete:_isNowComplete allowInvokingDidChange:0];
      [(RAPQuestion *)self _didChange];
    }
  }
}

- (void)_setLocalizedPhotosPickerExplanation:(id)explanation
{
  v4 = [explanation copy];
  localizedPhotosPickerExplanation = self->_localizedPhotosPickerExplanation;
  self->_localizedPhotosPickerExplanation = v4;

  [(RAPQuestion *)self _didChange];
}

- (void)_setPlaceholderText:(id)text
{
  v4 = [text copy];
  commentsPlaceholderText = self->_commentsPlaceholderText;
  self->_commentsPlaceholderText = v4;

  [(RAPQuestion *)self _didChange];
}

- (void)_setCommentsTitle:(id)title placeholderText:(id)text
{
  textCopy = text;
  v6 = [title copy];
  commentsTitle = self->_commentsTitle;
  self->_commentsTitle = v6;

  [(RAPCommentQuestion *)self _setPlaceholderText:textCopy];
}

- (RAPCommentQuestion)initWithReport:(id)report parentQuestion:(id)question title:(id)title placeholderText:(id)text emphasis:(int64_t)emphasis
{
  reportCopy = report;
  questionCopy = question;
  titleCopy = title;
  textCopy = text;
  v32.receiver = self;
  v32.super_class = RAPCommentQuestion;
  v16 = [(RAPQuestion *)&v32 initWithReport:reportCopy parentQuestion:questionCopy];
  if (v16)
  {
    v17 = [titleCopy copy];
    commentsTitle = v16->_commentsTitle;
    v16->_commentsTitle = v17;

    v19 = [textCopy copy];
    commentsPlaceholderText = v16->_commentsPlaceholderText;
    v16->_commentsPlaceholderText = v19;

    v16->_emphasis = emphasis;
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

- (RAPCommentQuestion)initWithReport:(id)report parentQuestion:(id)question title:(id)title placeholderText:(id)text emphasis:(int64_t)emphasis localizedPhotosPickerExplanation:(id)explanation
{
  explanationCopy = explanation;
  v15 = [(RAPCommentQuestion *)self initWithReport:report parentQuestion:question title:title placeholderText:text emphasis:emphasis];
  if (v15)
  {
    v16 = [explanationCopy copy];
    localizedPhotosPickerExplanation = v15->_localizedPhotosPickerExplanation;
    v15->_localizedPhotosPickerExplanation = v16;
  }

  return v15;
}

- (RAPCommentQuestion)initWithReport:(id)report parentQuestion:(id)question
{
  questionCopy = question;
  reportCopy = report;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Comments" value:@"localized string not found" table:0];
  v10 = [(RAPCommentQuestion *)self initWithReport:reportCopy parentQuestion:questionCopy title:v9 placeholderText:0 emphasis:0];

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

+ (id)validatedComment:(id)comment
{
  commentCopy = comment;
  _rap_charactersCount = [commentCopy _rap_charactersCount];
  if (_rap_charactersCount > +[RAPCommentQuestion maximumCommentLength])
  {
    v5 = [commentCopy _rap_substringWithNumberOfCharacters:{+[RAPCommentQuestion maximumCommentLength](RAPCommentQuestion, "maximumCommentLength")}];

    commentCopy = v5;
  }

  return commentCopy;
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