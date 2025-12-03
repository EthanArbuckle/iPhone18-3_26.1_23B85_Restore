@interface RAPLabelCorrectionsQuestion
- ($873BFAB23BBB6E2F0B0288ED2F935688)initialLabelMarkerPickingMapRect;
- (BOOL)isComplete;
- (NSString)localizedDescription;
- (NSString)localizedLabelMarkerPickingPrompt;
- (NSString)localizedTitle;
- (NSString)originalName;
- (RAPCommentQuestion)commentQuestion;
- (RAPPlaceCorrectableFlag)removeLabelCorrectableFlag;
- (RAPPlaceCorrectableString)correctableName;
- (UIImage)image;
- (unint64_t)coordinatePickingMapType;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)setCorrectedName:(id)name;
- (void)setLabelMarker:(id)marker;
- (void)setLabelMarkerPickingMapContext:(id)context;
@end

@implementation RAPLabelCorrectionsQuestion

- (unint64_t)coordinatePickingMapType
{
  _context = [(RAPQuestion *)self _context];
  mapType = [_context mapType];

  return mapType;
}

- (RAPCommentQuestion)commentQuestion
{
  commentQuestion = self->_commentQuestion;
  if (!commentQuestion)
  {
    v4 = [RAPCommentQuestion alloc];
    report = [(RAPQuestion *)self report];
    v6 = +[RAPCommentQuestion _localizedOptionalInformationTitle];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Add more information about the incorrect label" value:@"localized string not found" table:0];
    v9 = [(RAPCommentQuestion *)v4 initWithReport:report parentQuestion:self title:v6 placeholderText:v8 emphasis:0];
    v10 = self->_commentQuestion;
    self->_commentQuestion = v9;

    commentQuestion = self->_commentQuestion;
  }

  return commentQuestion;
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  commonContext = [parametersCopy commonContext];

  if (!commonContext)
  {
    v5 = objc_opt_new();
    [parametersCopy setCommonContext:v5];
  }

  commonContext2 = [parametersCopy commonContext];
  [commonContext2 addUserPath:6];

  commonContext3 = [parametersCopy commonContext];
  [commonContext3 addUserPath:4];

  details = [parametersCopy details];

  if (!details)
  {
    v9 = objc_opt_new();
    [parametersCopy setDetails:v9];
  }

  [parametersCopy setType:5];
  details2 = [parametersCopy details];
  tileFeedback = [details2 tileFeedback];

  if (!tileFeedback)
  {
    tileFeedback = objc_opt_new();
    details3 = [parametersCopy details];
    [details3 setTileFeedback:tileFeedback];
  }

  label = [tileFeedback label];
  if (!label)
  {
    label = objc_alloc_init(GEORPCorrectedLabel);
    [tileFeedback setLabel:label];
  }

  labelMarker = [(RAPLabelCorrectionsQuestion *)self labelMarker];
  [label populateWithLabelMarker:labelMarker];

  correctableName = [(RAPLabelCorrectionsQuestion *)self correctableName];
  originalValue = [correctableName originalValue];
  [label setOriginalValue:originalValue];

  correctableName2 = [(RAPLabelCorrectionsQuestion *)self correctableName];
  LODWORD(originalValue) = [correctableName2 isEdited];

  if (originalValue)
  {
    correctableName3 = [(RAPLabelCorrectionsQuestion *)self correctableName];
    value = [correctableName3 value];
    [label setCorrectedValue:value];
  }

  removeLabelCorrectableFlag = [(RAPLabelCorrectionsQuestion *)self removeLabelCorrectableFlag];
  value2 = [removeLabelCorrectableFlag value];

  if (value2)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  [tileFeedback setType:v22];
  commentQuestion = [(RAPLabelCorrectionsQuestion *)self commentQuestion];
  [commentQuestion _fillSubmissionParameters:parametersCopy];
}

- (BOOL)isComplete
{
  labelMarker = [(RAPLabelCorrectionsQuestion *)self labelMarker];
  if (labelMarker && (v4 = labelMarker, [(RAPLabelCorrectionsQuestion *)self labelMarkerPickingMapContext], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    correctableName = [(RAPLabelCorrectionsQuestion *)self correctableName];
    value = [correctableName value];
    v8 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v9 = [value stringByTrimmingCharactersInSet:v8];
    v10 = [v9 length];
    v11 = v10 != 0;

    removeLabelCorrectableFlag = [(RAPLabelCorrectionsQuestion *)self removeLabelCorrectableFlag];
    LOBYTE(value) = [removeLabelCorrectableFlag value];

    if ((value & 1) == 0)
    {
      correctableName2 = [(RAPLabelCorrectionsQuestion *)self correctableName];
      isEdited = [correctableName2 isEdited];
      if (v10)
      {
        v15 = isEdited;
      }

      else
      {
        v15 = 0;
      }

      commentQuestion = [(RAPLabelCorrectionsQuestion *)self commentQuestion];
      comment = [commentQuestion comment];
      v18 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v19 = [comment stringByTrimmingCharactersInSet:v18];
      if ([v19 length])
      {
        v20 = 1;
      }

      else
      {
        commentQuestion2 = [(RAPLabelCorrectionsQuestion *)self commentQuestion];
        photos = [commentQuestion2 photos];
        v20 = [photos count] != 0;
      }

      v11 = v15 | v20;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)setLabelMarkerPickingMapContext:(id)context
{
  contextCopy = context;
  if (self->_labelMarkerPickingMapContext != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_labelMarkerPickingMapContext, context);
    contextCopy = v6;
  }
}

- (void)setLabelMarker:(id)marker
{
  markerCopy = marker;
  if (self->_labelMarker != markerCopy)
  {
    v7 = markerCopy;
    objc_storeStrong(&self->_labelMarker, marker);
    correctableName = self->_correctableName;
    self->_correctableName = 0;

    [(RAPQuestion *)self _didChange];
    markerCopy = v7;
  }
}

- (RAPPlaceCorrectableFlag)removeLabelCorrectableFlag
{
  removeLabelCorrectableFlag = self->_removeLabelCorrectableFlag;
  if (!removeLabelCorrectableFlag)
  {
    v4 = [[RAPPlaceCorrectableFlag alloc] initWithKind:-1 originalValue:0];
    v5 = self->_removeLabelCorrectableFlag;
    self->_removeLabelCorrectableFlag = v4;

    [(RAPPlaceCorrectableFlag *)self->_removeLabelCorrectableFlag addObserver:self changeHandler:&stru_101624F90];
    removeLabelCorrectableFlag = self->_removeLabelCorrectableFlag;
  }

  return removeLabelCorrectableFlag;
}

- (RAPPlaceCorrectableString)correctableName
{
  correctableName = self->_correctableName;
  if (!correctableName)
  {
    labelMarker = [(RAPLabelCorrectionsQuestion *)self labelMarker];
    if (labelMarker)
    {
      labelMarker2 = [(RAPLabelCorrectionsQuestion *)self labelMarker];
      text = [labelMarker2 text];
    }

    else
    {
      text = 0;
    }

    v7 = [[RAPPlaceCorrectableString alloc] initWithKind:0 originalValue:text];
    v8 = self->_correctableName;
    self->_correctableName = v7;

    [(RAPPlaceCorrectableString *)self->_correctableName addObserver:self changeHandler:&stru_101624F70];
    correctableName = self->_correctableName;
  }

  return correctableName;
}

- (void)setCorrectedName:(id)name
{
  nameCopy = name;
  correctableName = [(RAPLabelCorrectionsQuestion *)self correctableName];
  [correctableName setValue:nameCopy];
}

- (NSString)originalName
{
  labelMarker = [(RAPLabelCorrectionsQuestion *)self labelMarker];
  text = [labelMarker text];

  return text;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)initialLabelMarkerPickingMapRect
{
  _context = [(RAPQuestion *)self _context];
  v3 = sub_1007A39B4(_context);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.var1.var1 = v13;
  result.var1.var0 = v12;
  result.var0.var1 = v11;
  result.var0.var0 = v10;
  return result;
}

- (UIImage)image
{
  v2 = +[GEOFeatureStyleAttributes addressMarkerStyleAttributes];
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v4 = [MKIconManager imageForStyle:v2 size:3 forScale:0 format:?];

  if (!v4)
  {
    v4 = [UIImage imageNamed:@"RAPMapErrors"];
  }

  return v4;
}

- (NSString)localizedDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Map Description [Report an Issue category]" value:@"localized string not found" table:0];

  return v3;
}

- (NSString)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Map Labels [Report an Issue category]" value:@"localized string not found" table:0];

  return v3;
}

- (NSString)localizedLabelMarkerPickingPrompt
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Choose a road or place to rename [Report a Problem iOS]" value:@"localized string not found" table:0];

  return v3;
}

@end