@interface VNTrackingRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)warmUpSession:(id)session error:(id *)error;
- (VNTrackingRequest)initWithDetectedObjectObservation:(id)observation completionHandler:(id)handler;
- (id)_resetTrackerIfNeeded:(id)needed session:(id)session options:(id)options error:(id *)error;
- (id)_trackingLevelOptionFromTrackingLevelEnum;
- (id)applicableTrackerAndOptions:(id *)options forRevision:(unint64_t)revision loadedInSession:(id)session error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)newDuplicateInstance;
- (id)sequencedRequestPreviousObservationsKey;
- (id)supportedComputeStageDevicesAndReturnError:(id *)error;
- (void)applyConfigurationOfRequest:(id)request;
@end

@implementation VNTrackingRequest

- (id)_resetTrackerIfNeeded:(id)needed session:(id)session options:(id)options error:(id *)error
{
  neededCopy = needed;
  sessionCopy = session;
  optionsCopy = options;
  if (([neededCopy isTracking] & 1) == 0 || (objc_msgSend(neededCopy, "isResettable") & 1) == 0)
  {
    goto LABEL_22;
  }

  v12 = [neededCopy key];
  v13 = [optionsCopy objectForKeyedSubscript:@"VNTrackingOption_TrackerKey"];
  uUIDString = [v12 UUIDString];
  uUIDString2 = [v13 UUIDString];
  v16 = [uUIDString isEqualToString:uUIDString2];

  if (v16)
  {
    level = [neededCopy level];
    v24 = [optionsCopy objectForKeyedSubscript:@"VNTrackingOption_TrackingLevel"];
    if (([level isEqualToString:v24] & 1) == 0)
    {
      VNValidatedLog(1, @"Tracker level has changed, restarting tracking sequence: current tracking level = %@; new tracking level = %@", v25, v26, v27, v28, v29, v30, level);
LABEL_11:

      goto LABEL_12;
    }

    [neededCopy lastTrackedBBox];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = *(MEMORY[0x1E695F058] + 16);
    rect.origin = *MEMORY[0x1E695F058];
    rect.size = v39;
    v40 = [optionsCopy objectForKeyedSubscript:@"VNTrackingOption_InputBBox"];
    v41 = CGRectMakeWithDictionaryRepresentation(v40, &rect);

    if (!v41)
    {
      if (error)
      {
        v49 = [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error: internal type conversion failed"];
        goto LABEL_17;
      }

LABEL_18:

      v51 = 0;
      goto LABEL_23;
    }

    v76.origin.x = v32;
    v76.origin.y = v34;
    v76.size.width = v36;
    v76.size.height = v38;
    v77 = CGRectIntersection(v76, rect);
    v48 = v36 * v38;
    if (v48 < 1.1755e-38)
    {
      if (error)
      {
        v49 = [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error: unexpected tracked object bounding box size"];
LABEL_17:
        *error = v49;
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v53 = v77.size.width * v77.size.height;
    if ((v53 / v48) < 0.35)
    {
      VNValidatedLog(1, @"Bounding box input location has changed, restarting tracking sequence", v42, v43, v44, v45, v46, v47, v73);
      VNValidatedLog(1, @"currentTrackerBBox.x = %f; currentTrackerBBox.x = %f; currentTrackerBBox.width = %f; currentTrackerBBox.height = %f; ", v54, v55, v56, v57, v58, v59, *&v32);
      VNValidatedLog(1, @"newTrackerBBox.x = %f; newTrackerBBox.x = %f; newTrackerBBox.width = %f; newTrackerBBox.height = %f; ", v60, v61, v62, v63, v64, v65, *&rect.origin.x);
      VNValidatedLog(1, @"currentBBoxArea = %f; overlappedBBoxArea = %f; overlappedBBoxArea / currentBBoxArea = %f", v66, v67, v68, v69, v70, v71, COERCE__INT64(v48));
      goto LABEL_11;
    }

LABEL_22:
    v51 = neededCopy;
    goto LABEL_23;
  }

  VNValidatedLog(1, @"Tracker key has changed, restarting tracking sequence: current tracker key = %@; new tracker key = %@", v17, v18, v19, v20, v21, v22, v12);
LABEL_12:

  [sessionCopy releaseTracker:neededCopy];
  v50 = [sessionCopy trackerWithOptions:optionsCopy error:error];
  v51 = v50;
  if (v50)
  {
    v52 = v50;
  }

LABEL_23:

  return v51;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  session = [contextCopy session];
  v10 = [contextCopy requestPerformerAndReturnError:error];
  if (!v10)
  {
    v16 = 0;
    v17 = 0;
LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  v11 = [contextCopy imageBufferAndReturnError:error];
  if (!v11)
  {
    v16 = 0;
    LODWORD(v15) = 0;
    v17 = 0;
    goto LABEL_15;
  }

  v12 = [(VNTrackingRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v11, "width")}];
  [v12 setObject:v13 forKeyedSubscript:@"VNTrackingOption_InputImageMaxWidth"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v11, "height")}];
  [v12 setObject:v14 forKeyedSubscript:@"VNTrackingOption_InputImageMaxHeight"];

  [(VNTrackingRequest *)self populateDetectorProcessingOptions:v12 session:session];
  v15 = [session trackerWithOptions:v12 error:error];
  if (v15)
  {
    [v10 recordTracker:v15];
    v16 = [(VNTrackingRequest *)self _resetTrackerIfNeeded:v15 session:session options:v12 error:error];

    if (v16)
    {
      if ([v16 isTracking])
      {
        v17 = [v16 trackInFrame:v11 error:error];
      }

      else
      {
        inputObservation = [(VNTrackingRequest *)self inputObservation];
        v17 = [v16 setTrackedObjects:inputObservation inFrame:v11 error:error];
      }

      LODWORD(v15) = 1;
      goto LABEL_14;
    }

    LODWORD(v15) = 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0;
LABEL_14:

LABEL_15:
  if ([(VNTrackingRequest *)self isLastFrame])
  {
    [session releaseTracker:v16];
  }

  if (!v15)
  {
    goto LABEL_19;
  }

  [(VNRequest *)self setResults:v17];
  v19 = v17 != 0;
LABEL_20:

  return v19;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v5.receiver = self;
    v5.super_class = VNTrackingRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_trackingLevel = [(VNTrackingRequest *)requestCopy trackingLevel];
      self->_lastFrame = [(VNTrackingRequest *)requestCopy isLastFrame];
    }
  }
}

- (id)newDuplicateInstance
{
  v3 = objc_alloc(objc_opt_class());
  inputObservation = [(VNTrackingRequest *)self inputObservation];
  completionHandler = [(VNRequest *)self completionHandler];
  v6 = [v3 initWithDetectedObjectObservation:inputObservation completionHandler:completionHandler];

  return v6;
}

- (VNTrackingRequest)initWithDetectedObjectObservation:(id)observation completionHandler:(id)handler
{
  observationCopy = observation;
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = VNTrackingRequest;
  v9 = [(VNRequest *)&v13 initWithCompletionHandler:handlerCopy];
  v10 = v9;
  v11 = 0;
  if (observationCopy && v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_inputObservation, observation);
      v10->_trackingLevel = 1;
      v10->_lastFrame = 0;
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)sequencedRequestPreviousObservationsKey
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = VNTrackingRequest;
  sequencedRequestPreviousObservationsKey = [(VNRequest *)&v8 sequencedRequestPreviousObservationsKey];
  _trackingLevelOptionFromTrackingLevelEnum = [(VNTrackingRequest *)self _trackingLevelOptionFromTrackingLevelEnum];
  v6 = [v3 initWithFormat:@"%@:Trk=%@", sequencedRequestPreviousObservationsKey, _trackingLevelOptionFromTrackingLevelEnum];

  return v6;
}

- (BOOL)warmUpSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = VNTrackingRequest;
  if ([(VNRequest *)&v10 warmUpSession:sessionCopy error:error])
  {
    v7 = [(VNTrackingRequest *)self applicableTrackerAndOptions:0 forRevision:[(VNRequest *)self resolvedRevision] loadedInSession:sessionCopy error:error];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_trackingLevelOptionFromTrackingLevelEnum
{
  if (self->_trackingLevel)
  {
    return @"VNTrackingOption_TrackingLevelFast";
  }

  else
  {
    return @"VNTrackingOption_TrackingLevelAccurate";
  }
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v19.receiver = self;
  v19.super_class = VNTrackingRequest;
  v6 = [(VNRequest *)&v19 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v7 = objc_opt_class();
  v8 = [v7 trackerTypeForRequestRevision:revision error:0];
  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"VNTrackingOption_TrackerType"];
    _trackingLevelOptionFromTrackingLevelEnum = [(VNTrackingRequest *)self _trackingLevelOptionFromTrackingLevelEnum];
    [v6 setObject:_trackingLevelOptionFromTrackingLevelEnum forKeyedSubscript:@"VNTrackingOption_TrackingLevel"];

    inputObservation = [(VNTrackingRequest *)self inputObservation];
    uuid = [inputObservation uuid];
    [v6 setObject:uuid forKeyedSubscript:@"VNTrackingOption_TrackerKey"];

    [inputObservation boundingBox];
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v20);
    [v6 setObject:DictionaryRepresentation forKeyedSubscript:@"VNTrackingOption_InputBBox"];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v7, "frameCVPixelBufferFormatForRequestRevision:", revision)}];
    [v6 setObject:v13 forKeyedSubscript:@"VNTrackingOption_CVPixelBufferFormat"];

    v14 = [v6 objectForKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];
    v15 = [v14 objectForKeyedSubscript:@"VNComputeStageMain"];

    if (!v15)
    {
      v16 = [VNProcessingDeviceComputeDeviceBridge alloc];
      v17 = +[VNProcessingDevice defaultDevice];
      v15 = [(VNProcessingDeviceComputeDeviceBridge *)v16 initWithProcessingDevice:v17];
    }

    [v6 setObject:v15 forKeyedSubscript:@"VNTrackingOption_ComputeDevice"];
  }

  return v6;
}

- (id)supportedComputeStageDevicesAndReturnError:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  v6 = [objc_opt_class() trackerTypeForRequestRevision:resolvedRevision error:error];
  if (v6)
  {
    v7 = [(VNTrackingRequest *)self newDefaultDetectorOptionsForRequestRevision:resolvedRevision session:0];
    [v7 setObject:v6 forKeyedSubscript:@"VNTrackingOption_TrackerType"];
    v8 = [v7 copy];
    v9 = [VNTrackerManager trackerClassForOptions:v8 error:error];

    if (v9)
    {
      v10 = [v9 supportedComputeDevicesForOptions:v7 error:error];
      v11 = v10;
      if (v10)
      {
        v14 = @"VNComputeStageMain";
        v15[0] = v10;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)applicableTrackerAndOptions:(id *)options forRevision:(unint64_t)revision loadedInSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v11 = [(VNTrackingRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:sessionCopy];
  v12 = [sessionCopy trackerWithOptions:v11 error:error];
  if (v12)
  {
    if (options)
    {
      v13 = v11;
      *options = v11;
    }

    v14 = v12;
  }

  return v12;
}

@end