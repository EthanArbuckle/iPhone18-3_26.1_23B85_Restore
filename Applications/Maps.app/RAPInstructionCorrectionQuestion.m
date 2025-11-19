@interface RAPInstructionCorrectionQuestion
- (RAPInstructionCorrectionQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 composedRouteStep:(id)a5 listItem:(id)a6;
- (id)_commentsPlaceholderText;
- (void)_fillSubmissionParameters:(id)a3;
- (void)fillIndexesForResponse:(id)a3 problemAticRouteIndex:(id)a4 correction:(id)a5;
- (void)setCellScreenshotImageData:(id)a3;
@end

@implementation RAPInstructionCorrectionQuestion

- (RAPInstructionCorrectionQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 composedRouteStep:(id)a5 listItem:(id)a6
{
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(RAPInstructionCorrectionQuestion *)self _commentsPlaceholderText];
  v18.receiver = self;
  v18.super_class = RAPInstructionCorrectionQuestion;
  v16 = [(RAPCommentQuestion *)&v18 initWithReport:v14 parentQuestion:v13 title:0 placeholderText:v15 emphasis:2];

  if (v16)
  {
    objc_storeStrong(&v16->_listItem, a6);
    objc_storeStrong(&v16->_composedRouteStep, a5);
  }

  return v16;
}

- (id)_commentsPlaceholderText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Tell us more about this direction" value:@"localized string not found" table:0];

  return v3;
}

- (void)setCellScreenshotImageData:(id)a3
{
  if (self->_cellScreenshotImageData != a3)
  {
    v4 = [a3 copy];
    cellScreenshotImageData = self->_cellScreenshotImageData;
    self->_cellScreenshotImageData = v4;
  }
}

- (void)fillIndexesForResponse:(id)a3 problemAticRouteIndex:(id)a4 correction:(id)a5
{
  v34 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v34 suggestedRoutes];
  if (v10 && (v11 = v10, v12 = [v8 directionsResponseSuggestedRoutesIndex], objc_msgSend(v34, "suggestedRoutes"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v11, v14 > v12))
  {
    v15 = [v34 suggestedRoutes];
    v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v8, "directionsResponseSuggestedRoutesIndex")}];

    v17 = [(TransitDirectionsListItem *)self->_listItem type];
    v18 = [v16 steps];
    v19 = v18;
    if (!v17)
    {
      [v9 setRouteStepIndex:{objc_msgSend(v18, "indexOfObjectPassingTest:", &stru_101650548)}];
LABEL_15:

      goto LABEL_16;
    }

    v20 = [(GEOComposedRouteStep *)self->_composedRouteStep transitStep];
    v21 = [v19 indexOfObject:v20];

    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v9 setRouteStepIndex:v21];
      v22 = [(GEOComposedRouteStep *)self->_composedRouteStep transitStep];
      v23 = [v22 maneuverType];

      v24 = [(GEOComposedRouteStep *)self->_composedRouteStep transitStep];
      v25 = [v24 hasWalkingIndex];

      v26 = [(TransitDirectionsListItem *)self->_listItem parentItem];

      if (v23 == 2 && v25 && (([v16 isWalkingOnlyRoute] & 1) != 0 || v26))
      {
        v27 = [v34 decoderData];
        v28 = [(GEOComposedRouteStep *)self->_composedRouteStep transitStep];
        v19 = [v27 walkingAtIndex:{objc_msgSend(v28, "walkingIndex")}];

        v29 = [v19 steps];
        v30 = [(GEOComposedRouteStep *)self->_composedRouteStep geoStep];
        v31 = [v29 indexOfObject:v30];

        if (v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 setRouteStepSubstepIndex:v31];
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    v16 = [(GEOComposedRouteStep *)self->_composedRouteStep composedRoute];
    v32 = [v8 directionsResponseSuggestedRoutesIndex];
    if ([v16 indexInResponse] == v32)
    {
      v33 = [(GEOComposedRouteStep *)self->_composedRouteStep stepIndex];
      if (v33 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v9 setRouteStepIndex:v33];
      }
    }
  }

LABEL_16:
}

- (void)_fillSubmissionParameters:(id)a3
{
  v42 = a3;
  v4 = [v42 details];
  if (!v4)
  {
    v4 = objc_alloc_init(GEORPFeedbackDetails);
    [v42 setDetails:v4];
  }

  v5 = [v4 directionsFeedback];

  if (!v5)
  {
    v6 = objc_alloc_init(GEORPDirectionsFeedback);
    [v4 setDirectionsFeedback:v6];
  }

  v7 = [v4 directionsFeedback];
  [v7 setCorrectionType:1];

  v8 = [v4 directionsFeedback];
  v9 = [v8 directionsCorrections];

  if (!v9)
  {
    v9 = objc_alloc_init(GEORPDirectionsCorrections);
    v10 = [v4 directionsFeedback];
    [v10 setDirectionsCorrections:v9];
  }

  v11 = [v9 instructionCorrections];

  if (!v11)
  {
    v12 = objc_alloc_init(NSMutableArray);
    [v9 setInstructionCorrections:v12];
  }

  v13 = objc_alloc_init(GEORPInstructionCorrection);
  if (v42)
  {
    v14 = [v4 directionsFeedback];
    v15 = [v14 directionsContext];

    if (v15)
    {
      v16 = [v9 problematicRouteIndexs];
      v17 = [v16 count];

      if (v17 != 1)
      {
        goto LABEL_16;
      }

      v18 = [v4 directionsFeedback];
      v19 = [v18 directionsContext];
      v20 = [v19 directionsResponses];
      v21 = [v20 firstObject];

      v22 = [v9 problematicRouteIndexs];
      v23 = [v22 firstObject];

      [(RAPInstructionCorrectionQuestion *)self fillIndexesForResponse:v21 problemAticRouteIndex:v23 correction:v13];
    }
  }

  v24 = [(RAPCommentQuestion *)self comment];
  [v13 setComments:v24];

  v25 = [(RAPInstructionCorrectionQuestion *)self cellScreenshotImageData];
  v26 = [UIImage imageWithData:v25];

  v27 = [RAPPhoto alloc];
  v28 = +[NSDate date];
  v29 = [(RAPPhoto *)v27 initWithPhoto:v26 date:v28 location:0];

  v30 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:v29 photoType:3];
  v31 = [(RAPPhotoWithMetadata *)v30 photoMetadata];
  v32 = [v31 clientImageUuid];
  [v13 setRouteStepScreenshotImageId:v32];

  v33 = [(RAPQuestion *)self report];
  [v33 addPhotoWithMetadata:v30];

  v34 = [(RAPCommentQuestion *)self photos];
  v35 = [v34 count];

  if (v35)
  {
    v36 = [(RAPCommentQuestion *)self photos];
    v37 = [v36 firstObject];

    v38 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:v37 photoType:4];
    v39 = [(RAPQuestion *)self report];
    [v39 addPhotoWithMetadata:v38];

    v40 = [(RAPPhotoWithMetadata *)v38 photoMetadata];
    v41 = [v40 clientImageUuid];
    [v13 setPhotoId:v41];
  }

  [v9 addInstructionCorrection:v13];

LABEL_16:
}

@end