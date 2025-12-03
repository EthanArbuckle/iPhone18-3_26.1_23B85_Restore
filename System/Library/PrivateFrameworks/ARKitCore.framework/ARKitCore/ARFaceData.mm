@interface ARFaceData
- (ARFaceData)init;
- (ARFaceData)initWithCoder:(id)coder;
- (ARFaceData)initWithMetadataObjects:(id)objects mirroredVideoInput:(BOOL)input stripDetectionData:(BOOL)data;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARFaceData

- (ARFaceData)init
{
  v6.receiver = self;
  v6.super_class = ARFaceData;
  v2 = [(ARFaceData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    detectedFaces = v2->_detectedFaces;
    v2->_detectedFaces = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (ARFaceData)initWithMetadataObjects:(id)objects mirroredVideoInput:(BOOL)input stripDetectionData:(BOOL)data
{
  dataCopy = data;
  inputCopy = input;
  selfCopy = self;
  v59 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v47 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = objectsCopy;
  v7 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  v45 = inputCopy;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_28;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v55;
  v11 = *MEMORY[0x1E6986FE8];
  v12 = *MEMORY[0x1E6987018];
  do
  {
    v13 = 0;
    do
    {
      if (*v55 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v54 + 1) + 8 * v13);
      type = [v14 type];
      v16 = [type isEqual:v11];

      if (v16)
      {
        v17 = v14;
        [(ARHWFaceDetection *)v17 bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        faceID = [(ARHWFaceDetection *)v17 faceID];
        hasRollAngle = [(ARHWFaceDetection *)v17 hasRollAngle];
        v28 = 0.0;
        if (hasRollAngle)
        {
          [(ARHWFaceDetection *)v17 rollAngle];
        }

        if (inputCopy)
        {
          v29 = 180.0 - v28;
        }

        else
        {
          v29 = v28;
        }

        if (inputCopy)
        {
          v21 = 1.0 - v21 - v25;
        }

        v30 = objc_alloc_init(ARHWFaceDetection);
        [(ARHWFaceDetection *)v30 setID:faceID];
        [(ARHWFaceDetection *)v30 setRollAngleInDegrees:v29];
        [(ARHWFaceDetection *)v30 setBoundingBox:v19, v21, v23, v25];
        [(ARHWFaceDetection *)v30 setDetectionOrientation:3];
        if (v17)
        {
          [(ARHWFaceDetection *)v17 time];
        }

        else
        {
          v52 = 0uLL;
          v53 = 0;
        }

        v50 = v52;
        v51 = v53;
        [(ARHWFaceDetection *)v30 setTime:&v50];
        [v47 addObject:v30];
      }

      else
      {
        type2 = [v14 type];
        v32 = [type2 isEqual:v12];

        if (!v32)
        {
          goto LABEL_22;
        }

        v17 = v14;
        payload = [(ARHWFaceDetection *)v17 payload];
        v34 = payload;
        if (dataCopy)
        {
          v35 = ARFilterFaceTrackingPayload(payload);

          v30 = v17;
          v17 = v34;
          v9 = v35;
          inputCopy = v45;
        }

        else
        {
          v30 = v9;
          v9 = payload;
        }
      }

LABEL_22:
      ++v13;
    }

    while (v8 != v13);
    v36 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    v8 = v36;
  }

  while (v36);
LABEL_28:

  if (![v47 count])
  {
    v37 = [(ARHWFaceDetection *)v9 objectForKeyedSubscript:*MEMORY[0x1E698C028]];
    if ([v37 count])
    {
      v38 = 0;
      do
      {
        v39 = [v37 objectAtIndexedSubscript:{v38, selfCopy}];
        v40 = [ARHWFaceDetection faceDetectionFromDictionary:v39];

        if (v40)
        {
          [v47 addObject:v40];
        }

        ++v38;
      }

      while ([v37 count] > v38);
    }

    LOBYTE(inputCopy) = v45;
  }

  v49.receiver = selfCopy;
  v49.super_class = ARFaceData;
  v41 = [(ARFaceData *)&v49 init];
  v42 = v41;
  if (v41)
  {
    objc_storeStrong(&v41->_detectedFaces, v47);
    objc_storeStrong(&v42->_faceMeshPayload, v9);
    v42->_mirrored = inputCopy;
  }

  return v42;
}

- (ARFaceData)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = ARFaceData;
  v5 = [(ARFaceData *)&v23 init];
  if (v5)
  {
    [MEMORY[0x1E696ACD0] setClass:objc_opt_class() forClassName:@"AVTFaceDetection"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"detectedFaces"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        while (2)
        {
          v14 = 0;
          do
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_13;
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      [(ARFaceData *)v5 setDetectedFaces:v10];
    }

LABEL_13:
    v15 = ARApprovedDecoderClasses();
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"faceMeshPayload"];

    if ([coderCopy containsValueForKey:@"mirrored"])
    {
      v17 = [coderCopy decodeBoolForKey:@"mirrored"];
    }

    else
    {
      v17 = 1;
    }

    v5->_mirrored = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ARFaceData *)v5 setFaceMeshPayload:v16];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  detectedFaces = self->_detectedFaces;
  coderCopy = coder;
  [coderCopy encodeObject:detectedFaces forKey:@"detectedFaces"];
  [coderCopy encodeObject:self->_faceMeshPayload forKey:@"faceMeshPayload"];
  [coderCopy encodeBool:self->_mirrored forKey:@"mirrored"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    faceMeshPayload = self->_faceMeshPayload;
    faceMeshPayload = [v5 faceMeshPayload];
    if ([(NSDictionary *)faceMeshPayload isEqual:faceMeshPayload])
    {
      detectedFaces = self->_detectedFaces;
      detectedFaces = [v5 detectedFaces];
      if ([(NSArray *)detectedFaces isEqual:detectedFaces])
      {
        v10 = self->_mirrored == v5[8];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end