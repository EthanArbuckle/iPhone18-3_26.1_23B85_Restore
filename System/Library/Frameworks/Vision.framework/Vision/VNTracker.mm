@interface VNTracker
+ (id)supportedComputeDevicesForOptions:(id)options error:(id *)error;
+ (int64_t)VNTrackerOptionToTrackerType:(id)type;
- (BOOL)_updateTrackerWithModifiedBBoxForImageBuffer:(id)buffer error:(id *)error;
- (BOOL)_visionBBoxToTrackerBBox:(id)box trackedObjects:(void *)objects imageSize:(CGSize)size results:(id)results error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)reset:(id *)reset;
- (CGRect)lastTrackedBBox;
- (VNTracker)initWithOptions:(id)options error:(id *)error;
- (id).cxx_construct;
- (id)_postProcessTrackingResults:(id)results trackerResults:(id)trackerResults error:(id *)error;
- (id)setTrackedObjects:(id)objects inFrame:(id)frame error:(id *)error;
- (id)trackInFrame:(id)frame error:(id *)error;
- (unint64_t)hash;
- (void)_createTrackerWithLevel:(id)level options:(ObjectTrackerOptions *)options error:(id *)error;
@end

@implementation VNTracker

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (CGRect)lastTrackedBBox
{
  objc_copyStruct(v6, &self->_lastTrackedBBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)_updateTrackerWithModifiedBBoxForImageBuffer:(id)buffer error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v7 = [(VNTracker *)self key];
  v22 = v7;
  [(VNTracker *)self lastTrackedBBox];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v24);
  v23[0] = DictionaryRepresentation;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  v10 = [v9 count];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
  std::vector<vision::mod::DetectedObject>::vector[abi:ne200100](v20, v10);
  width = [bufferCopy width];
  height = [bufferCopy height];
  if ([(VNTracker *)self _visionBBoxToTrackerBBox:v9 trackedObjects:v20 imageSize:v11 results:error error:width, height])
  {
    v14 = [bufferCopy bufferWithWidth:width height:height format:875704422 options:0 error:error];
    if (!v14)
    {
      if (error)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No frame to track objects was passed to the tracker"];
        *error = [VNError errorWithCode:14 message:v18];
      }

      goto LABEL_10;
    }

    v15 = (*(*self->mTrackerImpl.__ptr_ + 40))(self->mTrackerImpl.__ptr_, v14, v20);
    CVPixelBufferRelease(v14);
    v16 = v15 == 128;
    if (error && v15 != 128)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tracking objects failed with error: %llu", v15];
      *error = [VNError errorForInternalErrorWithLocalizedDescription:v17];

LABEL_10:
      v16 = 0;
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_10;
    }

    [VNError errorForInternalErrorWithLocalizedDescription:@"Conversion to Tracker coordinate system failed"];
    *error = v16 = 0;
  }

  v21 = v20;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&v21);

  return v16;
}

- (BOOL)_visionBBoxToTrackerBBox:(id)box trackedObjects:(void *)objects imageSize:(CGSize)size results:(id)results error:(id *)error
{
  height = size.height;
  width = size.width;
  v64 = *MEMORY[0x1E69E9840];
  boxCopy = box;
  resultsCopy = results;
  originatingRequestSpecifier = [(VNTracker *)self originatingRequestSpecifier];
  trackerObservationClass = [objc_opt_class() trackerObservationClass];
  v46 = [(VNTracker *)self key];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [boxCopy allKeys];
  v10 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v52;
    v13.f64[0] = width;
    v13.f64[1] = height;
    v48 = v13;
    v14 = MEMORY[0x1E695F058];
    while (2)
    {
      v15 = 0;
      v16 = 80 * v11;
      do
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v51 + 1) + 8 * v15);
        v18 = *(v14 + 16);
        rect.origin = *v14;
        rect.size = v18;
        v19 = [boxCopy objectForKeyedSubscript:v17];
        v20 = CGRectMakeWithDictionaryRepresentation(v19, &rect);

        if (!v20)
        {
          if (error)
          {
            *error = [VNError errorForInternalErrorWithLocalizedDescription:@"failed to initialize object IDs to rectangles dictionary"];
          }

          v38 = 0;
          goto LABEL_17;
        }

        v21 = [trackerObservationClass alloc];
        v22 = [v21 initWithOriginatingRequestSpecifier:originatingRequestSpecifier boundingBox:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
        [v22 setUUID:v46];
        [resultsCopy setObject:v22 atIndexedSubscript:v11];
        v23 = vmulq_f64(v48, rect.size);
        v24 = vmulq_f64(v48, rect.origin);
        rect.origin = v24;
        rect.size = v23;
        y = v24.y;
        v26 = v23.height;
        MinX = CGRectGetMinX(*(&v23 - 1));
        v28 = height - CGRectGetMaxY(rect);
        rect.origin.x = MinX;
        rect.origin.y = v28;
        v30 = rect.size.width;
        v29 = rect.size.height;
        std::string::basic_string[abi:ne200100]<0>(&__str, "unknown");
        *&v31 = v30;
        *&v32 = v29;
        *&v33 = MinX;
        *&v34 = v28;
        *&v56 = __PAIR64__(v34, v33);
        *(&v56 + 1) = __PAIR64__(v31, v32);
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v57 = 0;
        v58 = 0;
        v35 = *objects;
        v36 = *objects + v16;
        if (v36 != &__str)
        {
          *(v36 + 64) = v62;
          std::string::operator=(v36, &__str);
          v37 = v35 + v16;
          *(v37 + 24) = v56;
          *(v37 + 48) = v58;
          *(v37 + 40) = v57;
          *(v37 + 56) = v60;
          *(v37 + 52) = v59;
          *(v37 + 60) = v61;
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        ++v15;
        v16 += 80;
        ++v11;
      }

      while (v10 != v15);
      v10 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v38 = 1;
LABEL_17:

  return v38;
}

- (id)_postProcessTrackingResults:(id)results trackerResults:(id)trackerResults error:(id *)error
{
  resultsCopy = results;
  trackerResultsCopy = trackerResults;
  v10 = trackerResultsCopy;
  if (trackerResultsCopy && [trackerResultsCopy count] == 1)
  {
    v11 = [v10 objectAtIndexedSubscript:0];
    [v11 boundingBox];
    [(VNTracker *)self setLastTrackedBBox:?];

    v12 = v10;
  }

  else if (error)
  {
    [VNError errorForInvalidArgumentWithLocalizedDescription:@"no tracker results"];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)reset:(id *)reset
{
  ptr = self->mTrackerImpl.__ptr_;
  if (ptr)
  {
    v6 = (*(*ptr + 16))(ptr, a2);
    if (v6 == 128)
    {
      [(VNTracker *)self setTrackedFrameNumber:-1];
      [(VNTracker *)self setLastTrackedBBox:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      return 1;
    }

    if (reset)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Resetting tracker failed with error: %llu", v6];
      *reset = [VNError errorForInternalErrorWithLocalizedDescription:v10];
    }
  }

  else if (reset)
  {
    v8 = [VNError errorForInternalErrorWithLocalizedDescription:@"Tracker is not initialized"];
    v9 = v8;
    result = 0;
    *reset = v8;
    return result;
  }

  return 0;
}

- (id)trackInFrame:(id)frame error:(id *)error
{
  frameCopy = frame;
  if (!self->mTrackerImpl.__ptr_ || ![(VNTracker *)self isTracking])
  {
    if (error)
    {
      v37 = [VNError errorForInternalErrorWithLocalizedDescription:@"Tracker is not initialized"];
LABEL_14:
      v36 = 0;
      *error = v37;
      goto LABEL_22;
    }

LABEL_17:
    v36 = 0;
    goto LABEL_22;
  }

  width = [frameCopy width];
  height = [frameCopy height];
  v9 = [frameCopy bufferWithWidth:width height:height format:-[VNTracker trackedFrameCVPixelBufferFormat](self options:"trackedFrameCVPixelBufferFormat") error:{0, error}];
  v10 = v9;
  if (!v9)
  {
    if (error)
    {
      v37 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"No frame to track objects was passed to the tracker"];
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x4812000000;
  v44 = __Block_byref_object_copy__35972;
  v45 = __Block_byref_object_dispose__35973;
  v46 = "";
  memset(v47, 0, sizeof(v47));
  CVPixelBufferLockBaseAddress(v9, 1uLL);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__VNTracker_trackInFrame_error___block_invoke;
  aBlock[3] = &unk_1E77B64B8;
  aBlock[5] = &v41;
  aBlock[6] = v10;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  v12 = VNExecuteBlock(v11, error);
  CVPixelBufferUnlockBaseAddress(v10, 1uLL);
  CVPixelBufferRelease(v10);
  if (v12)
  {
    v39 = frameCopy;
    originatingRequestSpecifier = [(VNTracker *)self originatingRequestSpecifier];
    v14 = objc_alloc(MEMORY[0x1E695DF70]);
    v15 = [v14 initWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((v42[7] - v42[6]) >> 4)];
    v17 = v42[6];
    v16 = v42[7];
    if (v17 != v16)
    {
      v18 = 0;
      do
      {
        v19 = [[VNDetectedObjectObservation alloc] initWithOriginatingRequestSpecifier:originatingRequestSpecifier boundingBox:*(v17 + 24) / width, *(v17 + 28) / height, *(v17 + 36) / width, *(v17 + 32) / height];
        v20 = [(VNTracker *)self key];
        [(VNObservation *)v19 setUUID:v20];

        LODWORD(v21) = *(v17 + 60);
        [(VNObservation *)v19 setConfidence:v21];
        [v15 setObject:v19 atIndexedSubscript:v18++];

        v17 += 80;
      }

      while (v17 != v16);
    }

    v22 = [v15 objectAtIndexedSubscript:0];
    frameCopy = v39;
    [v22 boundingBox];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = [(VNTracker *)self _postProcessTrackingResults:v39 trackerResults:v15 error:error];
    if (v31 && (([(VNTracker *)self setTrackedFrameNumber:[(VNTracker *)self trackedFrameNumber]+ 1], [(VNTracker *)self lastTrackedBBox], v51.origin.x = v32, v51.origin.y = v33, v51.size.width = v34, v51.size.height = v35, v50.origin.x = v24, v50.origin.y = v26, v50.size.width = v28, v50.size.height = v30, CGRectEqualToRect(v50, v51)) || [(VNTracker *)self _updateTrackerWithModifiedBBoxForImageBuffer:v39 error:error]))
    {
      v36 = v31;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  _Block_object_dispose(&v41, 8);
  v48 = v47;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&v48);
LABEL_22:

  return v36;
}

BOOL __32__VNTracker_trackInFrame_error___block_invoke(void *a1, void *a2)
{
  v3 = (*(**(a1[4] + 8) + 32))(*(a1[4] + 8), a1[6], *(a1[5] + 8) + 48);
  v4 = v3;
  if (a2 && v3 != 128)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tracking objects failed with error: %llu", v3];
    *a2 = [VNError errorForInternalErrorWithLocalizedDescription:v5];
  }

  return v4 == 128;
}

- (id)setTrackedObjects:(id)objects inFrame:(id)frame error:(id *)error
{
  frameCopy = frame;
  v9 = [(VNTracker *)self _parseInputObservations:objects imageBuffer:frameCopy error:error];
  if (!v9)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_18;
  }

  if (!self->mTrackerImpl.__ptr_)
  {
    if (error)
    {
      v10 = [VNError errorForInternalErrorWithLocalizedDescription:@"Tracker is not initialized"];
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if ([(VNTracker *)self isTracking])
  {
    if (error)
    {
      v10 = [VNError errorForInternalErrorWithLocalizedDescription:@"Tracker is busy with previous tracking requests. It needs to be reset to restart tracking sequence"];
LABEL_8:
      v11 = 0;
      *error = v10;
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v12 = [v9 count];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
  std::vector<vision::mod::DetectedObject>::vector[abi:ne200100](&v24, v12);
  width = [frameCopy width];
  height = [frameCopy height];
  if (-[VNTracker _visionBBoxToTrackerBBox:trackedObjects:imageSize:results:error:](self, "_visionBBoxToTrackerBBox:trackedObjects:imageSize:results:error:", v9, &v24, v13, error, width, height) && (v16 = [frameCopy bufferWithWidth:width height:height format:-[VNTracker trackedFrameCVPixelBufferFormat](self options:"trackedFrameCVPixelBufferFormat") error:{0, error}], (v17 = v16) != 0))
  {
    CVPixelBufferLockBaseAddress(v16, 1uLL);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = __45__VNTracker_setTrackedObjects_inFrame_error___block_invoke;
    aBlock[3] = &unk_1F1976198;
    aBlock[4] = self;
    aBlock[5] = v17;
    memset(v23, 0, sizeof(v23));
    std::vector<vision::mod::DetectedObject>::__init_with_size[abi:ne200100]<vision::mod::DetectedObject*,vision::mod::DetectedObject*>(v23, v24, v25, 0xCCCCCCCCCCCCCCCDLL * ((v25 - v24) >> 4));
    v18 = _Block_copy(aBlock);
    v19 = VNExecuteBlock(v18, error);
    CVPixelBufferUnlockBaseAddress(v17, 1uLL);
    CVPixelBufferRelease(v17);
    if (v19)
    {
      v20 = [v13 objectAtIndexedSubscript:0];
      [v20 boundingBox];
      [(VNTracker *)self setLastTrackedBBox:?];

      [(VNTracker *)self setTrackedFrameNumber:0];
      v11 = v13;
    }

    else
    {
      v11 = 0;
    }

    v26 = v23;
    std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&v26);
  }

  else
  {
    v11 = 0;
  }

  v26 = &v24;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&v26);

LABEL_18:

  return v11;
}

BOOL __45__VNTracker_setTrackedObjects_inFrame_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = (*(**(*(a1 + 32) + 8) + 24))(*(*(a1 + 32) + 8), *(a1 + 40), a1 + 48);
  v4 = v3;
  if (a2 && v3 != 128)
  {
    v5 = VNErrorForCVMLStatus(v3);
    *a2 = [VNError errorForInternalErrorWithLocalizedDescription:@"Setting objects to track failed" underlyingError:v5];
  }

  return v4 == 128;
}

- (void)_createTrackerWithLevel:(id)level options:(ObjectTrackerOptions *)options error:(id *)error
{
  v7 = [VNTracker VNTrackerOptionToTrackerType:level];
  if (v7 == -1)
  {
    if (error)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown Tracker type: %ld", -1];
      *error = [VNError errorForInternalErrorWithLocalizedDescription:v8];
    }
  }

  else
  {
    switch(v7)
    {
      case 3:
        {
          operator new();
        }

        __cxa_bad_cast();
      case 2:
        operator new();
      case 1:
        operator new();
    }

    if (error)
    {
      *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot create a Tracker object"];
    }
  }

  return 0;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNTracker;
  return [(NSUUID *)self->_key hash]^ __ROR8__([(VNTracker *)&v3 hash], 51);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSUUID *)self->_key isEqual:equalCopy->_key];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (VNTracker)initWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v19.receiver = self;
  v19.super_class = VNTracker;
  v7 = [(VNTracker *)&v19 init];
  if (!v7)
  {
    if (error)
    {
      +[VNError errorForMemoryAllocationFailure];
      *error = v16 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v8 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  originatingRequestSpecifier = v7->_originatingRequestSpecifier;
  v7->_originatingRequestSpecifier = v8;

  if (!v7->_originatingRequestSpecifier)
  {
    goto LABEL_9;
  }

  v7->_trackedFrameNumber = -1;
  v10 = *(MEMORY[0x1E695F058] + 16);
  v7->_lastTrackedBBox.origin = *MEMORY[0x1E695F058];
  v7->_lastTrackedBBox.size = v10;
  v11 = [optionsCopy objectForKeyedSubscript:@"VNTrackingOption_TrackerKey"];
  v12 = [v11 copy];
  key = v7->_key;
  v7->_key = v12;

  if (!v7->_key)
  {
    goto LABEL_9;
  }

  v14 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNTrackingOption_TrackingLevel" inOptions:optionsCopy error:error];
  level = v7->_level;
  v7->_level = v14;

  if (!v7->_level)
  {
    goto LABEL_9;
  }

  v18 = 0;
  if (![VNValidationUtilities getNSUIntegerValue:&v18 forKey:@"VNTrackingOption_CVPixelBufferFormat" inOptions:optionsCopy error:error])
  {
    goto LABEL_9;
  }

  v7->_trackedFrameCVPixelBufferFormat = v18;
  v16 = v7;
LABEL_10:

  return v16;
}

+ (id)supportedComputeDevicesForOptions:(id)options error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

+ (int64_t)VNTrackerOptionToTrackerType:(id)type
{
  typeCopy = type;
  if (+[VNTracker VNTrackerOptionToTrackerType:]::onceToken != -1)
  {
    dispatch_once(&+[VNTracker VNTrackerOptionToTrackerType:]::onceToken, &__block_literal_global_36004);
  }

  v4 = [+[VNTracker VNTrackerOptionToTrackerType:]::s_visTrackerOptionToTrackerType objectForKeyedSubscript:typeCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

void __42__VNTracker_VNTrackerOptionToTrackerType___block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNTrackingOption_TrackingLevelAccurate";
  v2[1] = @"VNTrackingOption_TrackingLevelFast";
  v3[0] = &unk_1F19C1C60;
  v3[1] = &unk_1F19C1C78;
  v2[2] = @"VNTrackingOption_TrackingLevelRPN";
  v3[2] = &unk_1F19C1C90;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = +[VNTracker VNTrackerOptionToTrackerType:]::s_visTrackerOptionToTrackerType;
  +[VNTracker VNTrackerOptionToTrackerType:]::s_visTrackerOptionToTrackerType = v0;
}

@end