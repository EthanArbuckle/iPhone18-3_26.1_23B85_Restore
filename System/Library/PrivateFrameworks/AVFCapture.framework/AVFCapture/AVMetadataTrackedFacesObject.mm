@interface AVMetadataTrackedFacesObject
+ (id)trackedFacesWithTime:(id *)a3 faceTrackingDictionary:(id)a4 input:(id)a5;
- (AVMetadataTrackedFacesObject)initWithTime:(id *)a3 faceTrackingDictionary:(id)a4 input:(id)a5;
- (NSDictionary)payload;
- (id)description;
- (void)dealloc;
@end

@implementation AVMetadataTrackedFacesObject

- (AVMetadataTrackedFacesObject)initWithTime:(id *)a3 faceTrackingDictionary:(id)a4 input:(id)a5
{
  v13 = *MEMORY[0x1E6960C70];
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v16.receiver = self;
  v16.super_class = AVMetadataTrackedFacesObject;
  v15 = *a3;
  v10 = [(AVMetadataObject *)&v16 initWithType:@"trackedFaces" time:&v15 duration:&v13 bounds:0 optionalInfoDict:0 originalMetadataObject:a5 sourceCaptureInput:v6, v7, v8, v9];
  if (v10)
  {
    v11 = objc_alloc_init(AVMetadataTrackedFacesObjectInternal);
    v10->_trackedFacesObjectInternal = v11;
    if (v11)
    {
      [(AVMetadataTrackedFacesObjectInternal *)v11 setPayload:a4];
    }

    else
    {
      [AVMetadataTrackedFacesObject initWithTime:v10 faceTrackingDictionary:? input:?];
      return 0;
    }
  }

  return v10;
}

+ (id)trackedFacesWithTime:(id *)a3 faceTrackingDictionary:(id)a4 input:(id)a5
{
  v8 = objc_alloc(objc_opt_class());
  v10 = *a3;
  return [v8 initWithTime:&v10 faceTrackingDictionary:a4 input:a5];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataTrackedFacesObject;
  [(AVMetadataObject *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@: %p", NSStringFromClass(v4), self];
  v22 = self;
  v6 = [(AVMetadataTrackedFacesObject *)self payload];
  v7 = [(NSDictionary *)v6 objectForKeyedSubscript:@"lite_shareddata"];
  if (v7)
  {
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v7 objectForKeyedSubscript:@"tracked_faces"];
    v8 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          [v5 appendFormat:@", translation:(%@)", objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v12, "objectForKeyedSubscript:", @"raw_data", "objectForKeyedSubscript:", @"pose", "objectForKeyedSubscript:", @"translation", "componentsJoinedByString:", @", ")];
          [objc_msgSend(v12 objectForKeyedSubscript:{@"confidence", "floatValue"}];
          [v5 appendFormat:@", confidence=%.2f", v13];
          [v5 appendFormat:@", failure=%@", objc_msgSend(v12, "objectForKeyedSubscript:", @"failure_type"];
        }

        v9 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = [(NSDictionary *)v6 objectForKeyedSubscript:@"tracked_faces"];
    v14 = [v23 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      v24 = *(MEMORY[0x1E695F058] + 16);
      *obja = *MEMORY[0x1E695F058];
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v23);
          }

          v18 = *(*(&v30 + 1) + 8 * j);
          rect.origin = *obja;
          rect.size = v24;
          CGRectMakeWithDictionaryRepresentation([v18 objectForKeyedSubscript:@"Rect"], &rect);
          [v5 appendFormat:@", faceID=%@", objc_msgSend(v18, "objectForKeyedSubscript:", @"face_id"];
          [v5 appendFormat:@", pos=(%.2f, %.2f)", *&rect.origin.x, *&rect.origin.y];
          [v5 appendFormat:@", size=(%.2f, %.2f)", *&rect.size.width, *&rect.size.height];
          [objc_msgSend(v18 objectForKeyedSubscript:{@"AngleInfoRoll", "floatValue"}];
          [v5 appendFormat:@", roll=%f", v19];
          [v5 appendFormat:@", failure=%@", objc_msgSend(v18, "objectForKeyedSubscript:", @"failure_type"];
        }

        v15 = [v23 countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v15);
    }
  }

  if (v22)
  {
    [(AVMetadataObject *)v22 time];
    v20 = v27;
  }

  else
  {
    v20 = 0;
  }

  [v5 appendFormat:@", time=%lld", v20];
  [v5 appendString:@">"];
  return v5;
}

- (NSDictionary)payload
{
  v2 = [(AVMetadataTrackedFacesObjectInternal *)self->_trackedFacesObjectInternal payload];

  return v2;
}

- (void)initWithTime:(void *)a1 faceTrackingDictionary:input:.cold.1(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
}

@end