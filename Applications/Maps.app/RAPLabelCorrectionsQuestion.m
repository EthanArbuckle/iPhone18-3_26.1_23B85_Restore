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
- (void)_fillSubmissionParameters:(id)a3;
- (void)setCorrectedName:(id)a3;
- (void)setLabelMarker:(id)a3;
- (void)setLabelMarkerPickingMapContext:(id)a3;
@end

@implementation RAPLabelCorrectionsQuestion

- (unint64_t)coordinatePickingMapType
{
  v2 = [(RAPQuestion *)self _context];
  v3 = [v2 mapType];

  return v3;
}

- (RAPCommentQuestion)commentQuestion
{
  commentQuestion = self->_commentQuestion;
  if (!commentQuestion)
  {
    v4 = [RAPCommentQuestion alloc];
    v5 = [(RAPQuestion *)self report];
    v6 = +[RAPCommentQuestion _localizedOptionalInformationTitle];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Add more information about the incorrect label" value:@"localized string not found" table:0];
    v9 = [(RAPCommentQuestion *)v4 initWithReport:v5 parentQuestion:self title:v6 placeholderText:v8 emphasis:0];
    v10 = self->_commentQuestion;
    self->_commentQuestion = v9;

    commentQuestion = self->_commentQuestion;
  }

  return commentQuestion;
}

- (void)_fillSubmissionParameters:(id)a3
{
  v24 = a3;
  v4 = [v24 commonContext];

  if (!v4)
  {
    v5 = objc_opt_new();
    [v24 setCommonContext:v5];
  }

  v6 = [v24 commonContext];
  [v6 addUserPath:6];

  v7 = [v24 commonContext];
  [v7 addUserPath:4];

  v8 = [v24 details];

  if (!v8)
  {
    v9 = objc_opt_new();
    [v24 setDetails:v9];
  }

  [v24 setType:5];
  v10 = [v24 details];
  v11 = [v10 tileFeedback];

  if (!v11)
  {
    v11 = objc_opt_new();
    v12 = [v24 details];
    [v12 setTileFeedback:v11];
  }

  v13 = [v11 label];
  if (!v13)
  {
    v13 = objc_alloc_init(GEORPCorrectedLabel);
    [v11 setLabel:v13];
  }

  v14 = [(RAPLabelCorrectionsQuestion *)self labelMarker];
  [v13 populateWithLabelMarker:v14];

  v15 = [(RAPLabelCorrectionsQuestion *)self correctableName];
  v16 = [v15 originalValue];
  [v13 setOriginalValue:v16];

  v17 = [(RAPLabelCorrectionsQuestion *)self correctableName];
  LODWORD(v16) = [v17 isEdited];

  if (v16)
  {
    v18 = [(RAPLabelCorrectionsQuestion *)self correctableName];
    v19 = [v18 value];
    [v13 setCorrectedValue:v19];
  }

  v20 = [(RAPLabelCorrectionsQuestion *)self removeLabelCorrectableFlag];
  v21 = [v20 value];

  if (v21)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  [v11 setType:v22];
  v23 = [(RAPLabelCorrectionsQuestion *)self commentQuestion];
  [v23 _fillSubmissionParameters:v24];
}

- (BOOL)isComplete
{
  v3 = [(RAPLabelCorrectionsQuestion *)self labelMarker];
  if (v3 && (v4 = v3, [(RAPLabelCorrectionsQuestion *)self labelMarkerPickingMapContext], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(RAPLabelCorrectionsQuestion *)self correctableName];
    v7 = [v6 value];
    v8 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v9 = [v7 stringByTrimmingCharactersInSet:v8];
    v10 = [v9 length];
    v11 = v10 != 0;

    v12 = [(RAPLabelCorrectionsQuestion *)self removeLabelCorrectableFlag];
    LOBYTE(v7) = [v12 value];

    if ((v7 & 1) == 0)
    {
      v13 = [(RAPLabelCorrectionsQuestion *)self correctableName];
      v14 = [v13 isEdited];
      if (v10)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = [(RAPLabelCorrectionsQuestion *)self commentQuestion];
      v17 = [v16 comment];
      v18 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v19 = [v17 stringByTrimmingCharactersInSet:v18];
      if ([v19 length])
      {
        v20 = 1;
      }

      else
      {
        v21 = [(RAPLabelCorrectionsQuestion *)self commentQuestion];
        v22 = [v21 photos];
        v20 = [v22 count] != 0;
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

- (void)setLabelMarkerPickingMapContext:(id)a3
{
  v5 = a3;
  if (self->_labelMarkerPickingMapContext != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_labelMarkerPickingMapContext, a3);
    v5 = v6;
  }
}

- (void)setLabelMarker:(id)a3
{
  v5 = a3;
  if (self->_labelMarker != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_labelMarker, a3);
    correctableName = self->_correctableName;
    self->_correctableName = 0;

    [(RAPQuestion *)self _didChange];
    v5 = v7;
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
    v4 = [(RAPLabelCorrectionsQuestion *)self labelMarker];
    if (v4)
    {
      v5 = [(RAPLabelCorrectionsQuestion *)self labelMarker];
      v6 = [v5 text];
    }

    else
    {
      v6 = 0;
    }

    v7 = [[RAPPlaceCorrectableString alloc] initWithKind:0 originalValue:v6];
    v8 = self->_correctableName;
    self->_correctableName = v7;

    [(RAPPlaceCorrectableString *)self->_correctableName addObserver:self changeHandler:&stru_101624F70];
    correctableName = self->_correctableName;
  }

  return correctableName;
}

- (void)setCorrectedName:(id)a3
{
  v4 = a3;
  v5 = [(RAPLabelCorrectionsQuestion *)self correctableName];
  [v5 setValue:v4];
}

- (NSString)originalName
{
  v2 = [(RAPLabelCorrectionsQuestion *)self labelMarker];
  v3 = [v2 text];

  return v3;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)initialLabelMarkerPickingMapRect
{
  v2 = [(RAPQuestion *)self _context];
  v3 = sub_1007A39B4(v2);
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