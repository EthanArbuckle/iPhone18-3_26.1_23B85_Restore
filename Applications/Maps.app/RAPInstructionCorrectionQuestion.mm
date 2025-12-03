@interface RAPInstructionCorrectionQuestion
- (RAPInstructionCorrectionQuestion)initWithReport:(id)report parentQuestion:(id)question composedRouteStep:(id)step listItem:(id)item;
- (id)_commentsPlaceholderText;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)fillIndexesForResponse:(id)response problemAticRouteIndex:(id)index correction:(id)correction;
- (void)setCellScreenshotImageData:(id)data;
@end

@implementation RAPInstructionCorrectionQuestion

- (RAPInstructionCorrectionQuestion)initWithReport:(id)report parentQuestion:(id)question composedRouteStep:(id)step listItem:(id)item
{
  stepCopy = step;
  itemCopy = item;
  questionCopy = question;
  reportCopy = report;
  _commentsPlaceholderText = [(RAPInstructionCorrectionQuestion *)self _commentsPlaceholderText];
  v18.receiver = self;
  v18.super_class = RAPInstructionCorrectionQuestion;
  v16 = [(RAPCommentQuestion *)&v18 initWithReport:reportCopy parentQuestion:questionCopy title:0 placeholderText:_commentsPlaceholderText emphasis:2];

  if (v16)
  {
    objc_storeStrong(&v16->_listItem, item);
    objc_storeStrong(&v16->_composedRouteStep, step);
  }

  return v16;
}

- (id)_commentsPlaceholderText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Tell us more about this direction" value:@"localized string not found" table:0];

  return v3;
}

- (void)setCellScreenshotImageData:(id)data
{
  if (self->_cellScreenshotImageData != data)
  {
    v4 = [data copy];
    cellScreenshotImageData = self->_cellScreenshotImageData;
    self->_cellScreenshotImageData = v4;
  }
}

- (void)fillIndexesForResponse:(id)response problemAticRouteIndex:(id)index correction:(id)correction
{
  responseCopy = response;
  indexCopy = index;
  correctionCopy = correction;
  suggestedRoutes = [responseCopy suggestedRoutes];
  if (suggestedRoutes && (v11 = suggestedRoutes, v12 = [indexCopy directionsResponseSuggestedRoutesIndex], objc_msgSend(responseCopy, "suggestedRoutes"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v11, v14 > v12))
  {
    suggestedRoutes2 = [responseCopy suggestedRoutes];
    composedRoute = [suggestedRoutes2 objectAtIndexedSubscript:{objc_msgSend(indexCopy, "directionsResponseSuggestedRoutesIndex")}];

    type = [(TransitDirectionsListItem *)self->_listItem type];
    steps = [composedRoute steps];
    v19 = steps;
    if (!type)
    {
      [correctionCopy setRouteStepIndex:{objc_msgSend(steps, "indexOfObjectPassingTest:", &stru_101650548)}];
LABEL_15:

      goto LABEL_16;
    }

    transitStep = [(GEOComposedRouteStep *)self->_composedRouteStep transitStep];
    v21 = [v19 indexOfObject:transitStep];

    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [correctionCopy setRouteStepIndex:v21];
      transitStep2 = [(GEOComposedRouteStep *)self->_composedRouteStep transitStep];
      maneuverType = [transitStep2 maneuverType];

      transitStep3 = [(GEOComposedRouteStep *)self->_composedRouteStep transitStep];
      hasWalkingIndex = [transitStep3 hasWalkingIndex];

      parentItem = [(TransitDirectionsListItem *)self->_listItem parentItem];

      if (maneuverType == 2 && hasWalkingIndex && (([composedRoute isWalkingOnlyRoute] & 1) != 0 || parentItem))
      {
        decoderData = [responseCopy decoderData];
        transitStep4 = [(GEOComposedRouteStep *)self->_composedRouteStep transitStep];
        v19 = [decoderData walkingAtIndex:{objc_msgSend(transitStep4, "walkingIndex")}];

        steps2 = [v19 steps];
        geoStep = [(GEOComposedRouteStep *)self->_composedRouteStep geoStep];
        v31 = [steps2 indexOfObject:geoStep];

        if (v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [correctionCopy setRouteStepSubstepIndex:v31];
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    composedRoute = [(GEOComposedRouteStep *)self->_composedRouteStep composedRoute];
    directionsResponseSuggestedRoutesIndex = [indexCopy directionsResponseSuggestedRoutesIndex];
    if ([composedRoute indexInResponse] == directionsResponseSuggestedRoutesIndex)
    {
      stepIndex = [(GEOComposedRouteStep *)self->_composedRouteStep stepIndex];
      if (stepIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        [correctionCopy setRouteStepIndex:stepIndex];
      }
    }
  }

LABEL_16:
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  details = [parametersCopy details];
  if (!details)
  {
    details = objc_alloc_init(GEORPFeedbackDetails);
    [parametersCopy setDetails:details];
  }

  directionsFeedback = [details directionsFeedback];

  if (!directionsFeedback)
  {
    v6 = objc_alloc_init(GEORPDirectionsFeedback);
    [details setDirectionsFeedback:v6];
  }

  directionsFeedback2 = [details directionsFeedback];
  [directionsFeedback2 setCorrectionType:1];

  directionsFeedback3 = [details directionsFeedback];
  directionsCorrections = [directionsFeedback3 directionsCorrections];

  if (!directionsCorrections)
  {
    directionsCorrections = objc_alloc_init(GEORPDirectionsCorrections);
    directionsFeedback4 = [details directionsFeedback];
    [directionsFeedback4 setDirectionsCorrections:directionsCorrections];
  }

  instructionCorrections = [directionsCorrections instructionCorrections];

  if (!instructionCorrections)
  {
    v12 = objc_alloc_init(NSMutableArray);
    [directionsCorrections setInstructionCorrections:v12];
  }

  v13 = objc_alloc_init(GEORPInstructionCorrection);
  if (parametersCopy)
  {
    directionsFeedback5 = [details directionsFeedback];
    directionsContext = [directionsFeedback5 directionsContext];

    if (directionsContext)
    {
      problematicRouteIndexs = [directionsCorrections problematicRouteIndexs];
      v17 = [problematicRouteIndexs count];

      if (v17 != 1)
      {
        goto LABEL_16;
      }

      directionsFeedback6 = [details directionsFeedback];
      directionsContext2 = [directionsFeedback6 directionsContext];
      directionsResponses = [directionsContext2 directionsResponses];
      firstObject = [directionsResponses firstObject];

      problematicRouteIndexs2 = [directionsCorrections problematicRouteIndexs];
      firstObject2 = [problematicRouteIndexs2 firstObject];

      [(RAPInstructionCorrectionQuestion *)self fillIndexesForResponse:firstObject problemAticRouteIndex:firstObject2 correction:v13];
    }
  }

  comment = [(RAPCommentQuestion *)self comment];
  [v13 setComments:comment];

  cellScreenshotImageData = [(RAPInstructionCorrectionQuestion *)self cellScreenshotImageData];
  v26 = [UIImage imageWithData:cellScreenshotImageData];

  v27 = [RAPPhoto alloc];
  v28 = +[NSDate date];
  v29 = [(RAPPhoto *)v27 initWithPhoto:v26 date:v28 location:0];

  v30 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:v29 photoType:3];
  photoMetadata = [(RAPPhotoWithMetadata *)v30 photoMetadata];
  clientImageUuid = [photoMetadata clientImageUuid];
  [v13 setRouteStepScreenshotImageId:clientImageUuid];

  report = [(RAPQuestion *)self report];
  [report addPhotoWithMetadata:v30];

  photos = [(RAPCommentQuestion *)self photos];
  v35 = [photos count];

  if (v35)
  {
    photos2 = [(RAPCommentQuestion *)self photos];
    firstObject3 = [photos2 firstObject];

    v38 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:firstObject3 photoType:4];
    report2 = [(RAPQuestion *)self report];
    [report2 addPhotoWithMetadata:v38];

    photoMetadata2 = [(RAPPhotoWithMetadata *)v38 photoMetadata];
    clientImageUuid2 = [photoMetadata2 clientImageUuid];
    [v13 setPhotoId:clientImageUuid2];
  }

  [directionsCorrections addInstructionCorrection:v13];

LABEL_16:
}

@end