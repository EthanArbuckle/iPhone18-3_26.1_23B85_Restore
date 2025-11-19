@interface VNTrackingRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)warmUpSession:(id)a3 error:(id *)a4;
- (VNTrackingRequest)initWithDetectedObjectObservation:(id)a3 completionHandler:(id)a4;
- (id)_resetTrackerIfNeeded:(id)a3 session:(id)a4 options:(id)a5 error:(id *)a6;
- (id)_trackingLevelOptionFromTrackingLevelEnum;
- (id)applicableTrackerAndOptions:(id *)a3 forRevision:(unint64_t)a4 loadedInSession:(id)a5 error:(id *)a6;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (id)newDuplicateInstance;
- (id)sequencedRequestPreviousObservationsKey;
- (id)supportedComputeStageDevicesAndReturnError:(id *)a3;
- (void)applyConfigurationOfRequest:(id)a3;
@end

@implementation VNTrackingRequest

- (id)_resetTrackerIfNeeded:(id)a3 session:(id)a4 options:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([v9 isTracking] & 1) == 0 || (objc_msgSend(v9, "isResettable") & 1) == 0)
  {
    goto LABEL_22;
  }

  v12 = [v9 key];
  v13 = [v11 objectForKeyedSubscript:@"VNTrackingOption_TrackerKey"];
  v14 = [v12 UUIDString];
  v15 = [v13 UUIDString];
  v16 = [v14 isEqualToString:v15];

  if (v16)
  {
    v23 = [v9 level];
    v24 = [v11 objectForKeyedSubscript:@"VNTrackingOption_TrackingLevel"];
    if (([v23 isEqualToString:v24] & 1) == 0)
    {
      VNValidatedLog(1, @"Tracker level has changed, restarting tracking sequence: current tracking level = %@; new tracking level = %@", v25, v26, v27, v28, v29, v30, v23);
LABEL_11:

      goto LABEL_12;
    }

    [v9 lastTrackedBBox];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = *(MEMORY[0x1E695F058] + 16);
    rect.origin = *MEMORY[0x1E695F058];
    rect.size = v39;
    v40 = [v11 objectForKeyedSubscript:@"VNTrackingOption_InputBBox"];
    v41 = CGRectMakeWithDictionaryRepresentation(v40, &rect);

    if (!v41)
    {
      if (a6)
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
      if (a6)
      {
        v49 = [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error: unexpected tracked object bounding box size"];
LABEL_17:
        *a6 = v49;
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
    v51 = v9;
    goto LABEL_23;
  }

  VNValidatedLog(1, @"Tracker key has changed, restarting tracking sequence: current tracker key = %@; new tracker key = %@", v17, v18, v19, v20, v21, v22, v12);
LABEL_12:

  [v10 releaseTracker:v9];
  v50 = [v10 trackerWithOptions:v11 error:a6];
  v51 = v50;
  if (v50)
  {
    v52 = v50;
  }

LABEL_23:

  return v51;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [v8 session];
  v10 = [v8 requestPerformerAndReturnError:a5];
  if (!v10)
  {
    v16 = 0;
    v17 = 0;
LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  v11 = [v8 imageBufferAndReturnError:a5];
  if (!v11)
  {
    v16 = 0;
    LODWORD(v15) = 0;
    v17 = 0;
    goto LABEL_15;
  }

  v12 = [(VNTrackingRequest *)self newDefaultDetectorOptionsForRequestRevision:a3 session:v9];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v11, "width")}];
  [v12 setObject:v13 forKeyedSubscript:@"VNTrackingOption_InputImageMaxWidth"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v11, "height")}];
  [v12 setObject:v14 forKeyedSubscript:@"VNTrackingOption_InputImageMaxHeight"];

  [(VNTrackingRequest *)self populateDetectorProcessingOptions:v12 session:v9];
  v15 = [v9 trackerWithOptions:v12 error:a5];
  if (v15)
  {
    [v10 recordTracker:v15];
    v16 = [(VNTrackingRequest *)self _resetTrackerIfNeeded:v15 session:v9 options:v12 error:a5];

    if (v16)
    {
      if ([v16 isTracking])
      {
        v17 = [v16 trackInFrame:v11 error:a5];
      }

      else
      {
        v18 = [(VNTrackingRequest *)self inputObservation];
        v17 = [v16 setTrackedObjects:v18 inFrame:v11 error:a5];
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
    [v9 releaseTracker:v16];
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

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5.receiver = self;
    v5.super_class = VNTrackingRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_trackingLevel = [(VNTrackingRequest *)v4 trackingLevel];
      self->_lastFrame = [(VNTrackingRequest *)v4 isLastFrame];
    }
  }
}

- (id)newDuplicateInstance
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(VNTrackingRequest *)self inputObservation];
  v5 = [(VNRequest *)self completionHandler];
  v6 = [v3 initWithDetectedObjectObservation:v4 completionHandler:v5];

  return v6;
}

- (VNTrackingRequest)initWithDetectedObjectObservation:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = VNTrackingRequest;
  v9 = [(VNRequest *)&v13 initWithCompletionHandler:v8];
  v10 = v9;
  v11 = 0;
  if (v7 && v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_inputObservation, a3);
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
  v4 = [(VNRequest *)&v8 sequencedRequestPreviousObservationsKey];
  v5 = [(VNTrackingRequest *)self _trackingLevelOptionFromTrackingLevelEnum];
  v6 = [v3 initWithFormat:@"%@:Trk=%@", v4, v5];

  return v6;
}

- (BOOL)warmUpSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = VNTrackingRequest;
  if ([(VNRequest *)&v10 warmUpSession:v6 error:a4])
  {
    v7 = [(VNTrackingRequest *)self applicableTrackerAndOptions:0 forRevision:[(VNRequest *)self resolvedRevision] loadedInSession:v6 error:a4];
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

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v19.receiver = self;
  v19.super_class = VNTrackingRequest;
  v6 = [(VNRequest *)&v19 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v7 = objc_opt_class();
  v8 = [v7 trackerTypeForRequestRevision:a3 error:0];
  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"VNTrackingOption_TrackerType"];
    v9 = [(VNTrackingRequest *)self _trackingLevelOptionFromTrackingLevelEnum];
    [v6 setObject:v9 forKeyedSubscript:@"VNTrackingOption_TrackingLevel"];

    v10 = [(VNTrackingRequest *)self inputObservation];
    v11 = [v10 uuid];
    [v6 setObject:v11 forKeyedSubscript:@"VNTrackingOption_TrackerKey"];

    [v10 boundingBox];
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v20);
    [v6 setObject:DictionaryRepresentation forKeyedSubscript:@"VNTrackingOption_InputBBox"];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v7, "frameCVPixelBufferFormatForRequestRevision:", a3)}];
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

- (id)supportedComputeStageDevicesAndReturnError:(id *)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = [(VNRequest *)self resolvedRevision];
  v6 = [objc_opt_class() trackerTypeForRequestRevision:v5 error:a3];
  if (v6)
  {
    v7 = [(VNTrackingRequest *)self newDefaultDetectorOptionsForRequestRevision:v5 session:0];
    [v7 setObject:v6 forKeyedSubscript:@"VNTrackingOption_TrackerType"];
    v8 = [v7 copy];
    v9 = [VNTrackerManager trackerClassForOptions:v8 error:a3];

    if (v9)
    {
      v10 = [v9 supportedComputeDevicesForOptions:v7 error:a3];
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

- (id)applicableTrackerAndOptions:(id *)a3 forRevision:(unint64_t)a4 loadedInSession:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [(VNTrackingRequest *)self newDefaultDetectorOptionsForRequestRevision:a4 session:v10];
  v12 = [v10 trackerWithOptions:v11 error:a6];
  if (v12)
  {
    if (a3)
    {
      v13 = v11;
      *a3 = v11;
    }

    v14 = v12;
  }

  return v12;
}

@end