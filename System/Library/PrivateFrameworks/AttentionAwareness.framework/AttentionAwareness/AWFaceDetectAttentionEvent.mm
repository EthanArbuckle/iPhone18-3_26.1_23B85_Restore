@interface AWFaceDetectAttentionEvent
- (AWFaceDetectAttentionEvent)initWithCoder:(id)a3;
- (AWFaceDetectAttentionEvent)initWithTimestamp:(double)a3 tagIndex:(unint64_t)a4 faceMetadata:(AWFaceDetectMetadata *)a5;
- (CGRect)faceBounds;
- (id)describeMotionData:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)validateMask;
@end

@implementation AWFaceDetectAttentionEvent

- (CGRect)faceBounds
{
  x = self->_faceBounds.origin.x;
  y = self->_faceBounds.origin.y;
  width = self->_faceBounds.size.width;
  height = self->_faceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v24 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(AWAttentionEvent *)self timestamp];
  v6 = v5;
  metadataValid = self->_metadataValid;
  pitch = self->_pitch;
  yaw = self->_yaw;
  roll = self->_roll;
  v11 = getFaceDetectOrientationDescription(self->_orientation);
  distance = self->_distance;
  v13 = getEyeReliefFaceStateDescription(self->_faceState);
  metadataType = self->_metadataType;
  if (metadataType >= 6)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown AWFaceDetectMetadataType %llu", self->_metadataType];
  }

  else
  {
    v15 = off_1E7F37788[metadataType];
  }

  v16 = [(AWFaceDetectAttentionEvent *)self describeMotionData:self->_motionData];
  v17 = getMotionEventTypeDescription(self->_motionResult);
  faceDetectionScore = self->_faceDetectionScore;
  v19 = [(AWAttentionEvent *)self tagIndex];
  v20 = [(AWAttentionEvent *)self tag];
  v21 = tagDescription(v19, v20);
  v22 = [v24 stringWithFormat:@"<%@: %p> (timestamp: %13.5f metadataValid %u pitch %13.5f yaw %13.5f roll %13.5f orientation %@ distance %13.5f faceState: %@ metadataType: %@ motionData: %@ motionResult: %@ faceDetectionScore: %13.5f %@)", v4, self, v6, metadataValid, *&pitch, *&yaw, *&roll, v11, *&distance, v13, v15, v16, v17, *&faceDetectionScore, v21];

  return v22;
}

- (id)describeMotionData:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  if ([v3 countByEnumeratingWithState:&v8 objects:v12 count:16])
  {
    *v9;
    *v9;
    [**(&v8 + 1) floatValue];
    v4 = [v3 valueForKey:@"description"];
    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"nil";
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (AWFaceDetectAttentionEvent)initWithTimestamp:(double)a3 tagIndex:(unint64_t)a4 faceMetadata:(AWFaceDetectMetadata *)a5
{
  v15.receiver = self;
  v15.super_class = AWFaceDetectAttentionEvent;
  v6 = [(AWAttentionEvent *)&v15 initWithTimestamp:a4 tagIndex:128 eventMask:a3];
  v7 = v6;
  if (a5 && v6)
  {
    v6->_metadataValid = a5->var0;
    v6->_pitch = a5->var1;
    v6->_yaw = a5->var2;
    v6->_roll = a5->var3;
    v6->_orientation = a5->var4;
    v6->_distance = a5->var5;
    v6->_faceState = a5->var6;
    v6->_metadataType = a5->var7;
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:16];
    for (i = 0; i != 16; ++i)
    {
      *&v9 = a5->var8[i];
      v11 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
      [v8 addObject:v11];
    }

    v12 = [v8 copy];

    motionData = v7->_motionData;
    v7->_motionData = v12;

    v7->_motionResult = a5->var9;
    v7->_faceDetectionScore = a5->var10;
  }

  return v7;
}

- (void)validateMask
{
  if ([(AWAttentionEvent *)self eventMask]!= 128)
  {
    __assert_rtn("[AWFaceDetectAttentionEvent validateMask]", "SimpleFrameworkTypes.m", 919, "self.eventMask == AWAttentionEventMaskFaceDetect");
  }
}

- (AWFaceDetectAttentionEvent)initWithCoder:(id)a3
{
  v69[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49 = 0;
  v5 = decodeDouble(v4, &v49, @"timestamp");
  v48 = decodeUInt64(v4, &v49, @"metadataValid");
  v6 = decodeDouble(v4, &v49, @"pitch");
  v7 = decodeDouble(v4, &v49, @"yaw");
  v8 = decodeDouble(v4, &v49, @"roll");
  v47 = decodeUInt64(v4, &v49, @"orientation");
  v9 = decodeDouble(v4, &v49, @"distance");
  v46 = decodeUInt64(v4, &v49, @"faceState");
  v45 = decodeUInt64(v4, &v49, @"metadataType");
  v10 = decodeUInt64(v4, &v49, @"tagIndex");
  v11 = v4;
  v12 = @"motionData";
  v13 = MEMORY[0x1E695DFD8];
  v69[0] = objc_opt_class();
  v69[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [v11 decodeObjectOfClasses:v15 forKey:@"motionData"];

  v17 = 0x1EDC16000;
  if (!v16)
  {
    if ([v11 containsValueForKey:@"motionData"])
    {
      v24 = 0;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_15:
    if (*(v17 + 2416) >= 3)
    {
      v25 = v17;
      v26 = _AALog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v37 = absTimeNS();
        if (v37 == -1)
        {
          v38 = INFINITY;
        }

        else
        {
          v38 = v37 / 1000000000.0;
        }

        buf = 134218242;
        v66 = v38;
        v67 = 2112;
        v68 = @"motionData";
        _os_log_error_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", &buf, 0x16u);
      }

      v17 = v25;
    }

    v24 = 0;
    v49 = 1;
    goto LABEL_19;
  }

  v43 = v10;
  v44 = self;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v51;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v51 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v50 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v10 = v43;
          self = v44;
          v17 = 0x1EDC16000uLL;
          goto LABEL_15;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v24 = v18;
  v10 = v43;
  self = v44;
  v17 = 0x1EDC16000;
LABEL_19:

  v27 = decodeUInt64(v11, &v49, @"motionResult");
  v28 = decodeDouble(v11, &v49, @"faceDetectionScore");
  if (v49 == 1)
  {
    if (*(v17 + 2416) >= 3)
    {
      v29 = _AALog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v39 = absTimeNS();
        if (v39 == -1)
        {
          v40 = INFINITY;
        }

        else
        {
          v40 = v39 / 1000000000.0;
        }

        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        *v54 = 134218242;
        *&v54[4] = v40;
        *&v54[12] = 2112;
        *&v54[14] = v42;
        _os_log_error_impl(&dword_1BB2EF000, v29, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", v54, 0x16u);
      }
    }

    v30 = 0;
  }

  else
  {
    v31 = 0;
    *v54 = v48 != 0;
    v61 = 0u;
    memset(v60, 0, sizeof(v60));
    *&v54[8] = v6;
    *&v54[16] = v7;
    v55 = v8;
    v56 = v47;
    v57 = v9;
    v58 = v46;
    v59 = v45;
    *&v61 = v27;
    v32 = v28;
    *(&v61 + 2) = v32;
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    do
    {
      v33 = [v24 objectAtIndexedSubscript:v31];
      [v33 floatValue];
      *(v60 + v31) = v34;

      ++v31;
    }

    while (v31 != 16);
    v30 = [[AWFaceDetectAttentionEvent alloc] initWithTimestamp:v10 tagIndex:v54 faceMetadata:v5];
  }

  v35 = *MEMORY[0x1E69E9840];
  return v30;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [(AWAttentionEvent *)self timestamp];
  [v5 encodeDouble:@"timestamp" forKey:?];
  [v5 encodeBool:self->_metadataValid forKey:@"metadataValid"];
  [v5 encodeDouble:@"pitch" forKey:self->_pitch];
  [v5 encodeDouble:@"yaw" forKey:self->_yaw];
  [v5 encodeDouble:@"roll" forKey:self->_roll];
  [v5 encodeInteger:self->_orientation forKey:@"orientation"];
  [v5 encodeDouble:@"distance" forKey:self->_distance];
  [v5 encodeDouble:@"faceState" forKey:self->_faceState];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AWAttentionEvent tagIndex](self, "tagIndex")}];
  [v5 encodeObject:v4 forKey:@"tagIndex"];

  [v5 encodeDouble:@"metadataType" forKey:self->_metadataType];
  [v5 encodeObject:self->_motionData forKey:@"motionData"];
  [v5 encodeInt64:self->_motionResult forKey:@"motionResult"];
  [v5 encodeDouble:@"faceDetectionScore" forKey:self->_faceDetectionScore];
}

@end