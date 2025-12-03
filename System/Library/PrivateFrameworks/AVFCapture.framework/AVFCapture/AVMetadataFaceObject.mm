@interface AVMetadataFaceObject
+ (AVMetadataFaceObject)faceObjectWithFigEmbeddedCaptureDeviceFaceDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp;
- (AVMetadataFaceObject)initWithFaceID:(int64_t)d hasRollAngle:(BOOL)angle rollAngle:(double)rollAngle hasYawAngle:(BOOL)yawAngle yawAngle:(double)a7 hasPitchAngle:(BOOL)pitchAngle pitchAngle:(double)a9 time:(id *)self0 duration:(id *)self1 bounds:(CGRect)self2;
- (AVMetadataFaceObject)initWithFaceID:(int64_t)d hasRollAngle:(BOOL)angle rollAngle:(double)rollAngle hasYawAngle:(BOOL)yawAngle yawAngle:(double)a7 hasPitchAngle:(BOOL)pitchAngle pitchAngle:(double)a9 time:(id *)self0 duration:(id *)self1 bounds:(CGRect)self2 optionalInfoDict:(id)self3 originalMetadataObject:(id)self4 sourceCaptureInput:(id)self5;
- (AVMetadataFaceObject)initWithFigEmbeddedCaptureDeviceFaceDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp;
- (AVMetadataFaceObject)initWithType:(id)type time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)input;
- (BOOL)isEqual:(id)equal;
- (BOOL)occludedFeatures;
- (BOOL)payingAttention;
- (CGFloat)rollAngle;
- (CGFloat)yawAngle;
- (CGRect)leftEyeBounds;
- (CGRect)rightEyeBounds;
- (double)confidence;
- (double)distance;
- (double)payingAttentionConfidence;
- (double)pitchAngle;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
- (int)leftEyeClosedConfidence;
- (int)rightEyeClosedConfidence;
- (int)smileConfidence;
- (unint64_t)orientation;
- (void)dealloc;
@end

@implementation AVMetadataFaceObject

- (AVMetadataFaceObject)initWithType:(id)type time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)input
{
  v11 = *time;
  v10 = *duration;
  return [(AVMetadataFaceObject *)self initWithFaceID:0 hasRollAngle:0 rollAngle:0 hasYawAngle:0 yawAngle:&v11 hasPitchAngle:&v10 pitchAngle:0.0 time:0.0 duration:0.0 bounds:bounds.origin.x optionalInfoDict:bounds.origin.y originalMetadataObject:bounds.size.width sourceCaptureInput:bounds.size.height, dict, object, input];
}

- (AVMetadataFaceObject)initWithFaceID:(int64_t)d hasRollAngle:(BOOL)angle rollAngle:(double)rollAngle hasYawAngle:(BOOL)yawAngle yawAngle:(double)a7 hasPitchAngle:(BOOL)pitchAngle pitchAngle:(double)a9 time:(id *)self0 duration:(id *)self1 bounds:(CGRect)self2
{
  v14 = *time;
  v13 = *duration;
  return [(AVMetadataFaceObject *)self initWithFaceID:d hasRollAngle:angle rollAngle:yawAngle hasYawAngle:pitchAngle yawAngle:&v14 hasPitchAngle:&v13 pitchAngle:rollAngle time:a7 duration:a9 bounds:bounds.origin.x optionalInfoDict:bounds.origin.y originalMetadataObject:bounds.size.width sourceCaptureInput:bounds.size.height, 0, 0, 0];
}

- (AVMetadataFaceObject)initWithFaceID:(int64_t)d hasRollAngle:(BOOL)angle rollAngle:(double)rollAngle hasYawAngle:(BOOL)yawAngle yawAngle:(double)a7 hasPitchAngle:(BOOL)pitchAngle pitchAngle:(double)a9 time:(id *)self0 duration:(id *)self1 bounds:(CGRect)self2 optionalInfoDict:(id)self3 originalMetadataObject:(id)self4 sourceCaptureInput:(id)self5
{
  pitchAngleCopy = pitchAngle;
  yawAngleCopy = yawAngle;
  angleCopy = angle;
  v49.receiver = self;
  v49.super_class = AVMetadataFaceObject;
  v47.origin = *&time->var0;
  *&v47.size.width = time->var3;
  v48 = *duration;
  v22 = [(AVMetadataObject *)&v49 initWithType:@"face" time:&v47 duration:&v48 bounds:dict optionalInfoDict:object originalMetadataObject:input sourceCaptureInput:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (v22)
  {
    v23 = objc_alloc_init(AVMetadataFaceObjectInternal);
    v22->_internal = v23;
    if (v23)
    {
      [(AVMetadataFaceObjectInternal *)v23 setFaceID:d];
      [(AVMetadataFaceObjectInternal *)v22->_internal setHasRollAngle:angleCopy];
      if (angleCopy)
      {
        [(AVMetadataFaceObjectInternal *)v22->_internal setRollAngle:rollAngle];
      }

      [(AVMetadataFaceObjectInternal *)v22->_internal setHasYawAngle:yawAngleCopy];
      if (yawAngleCopy)
      {
        [(AVMetadataFaceObjectInternal *)v22->_internal setYawAngle:a7];
      }

      [(AVMetadataFaceObjectInternal *)v22->_internal setHasPitchAngle:pitchAngleCopy];
      if (pitchAngleCopy)
      {
        [(AVMetadataFaceObjectInternal *)v22->_internal setPitchAngle:a9];
      }

      if (dict)
      {
        v24 = [dict objectForKeyedSubscript:*MEMORY[0x1E6990F78]];
        if (v24)
        {
          v25 = v24;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasLeftEyeClosedConfidence:1];
          -[AVMetadataFaceObjectInternal setLeftEyeClosedConfidence:](v22->_internal, "setLeftEyeClosedConfidence:", [v25 intValue]);
        }

        v26 = [dict objectForKeyedSubscript:*MEMORY[0x1E6990F80]];
        if (v26)
        {
          v27 = v26;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasRightEyeClosedConfidence:1];
          -[AVMetadataFaceObjectInternal setRightEyeClosedConfidence:](v22->_internal, "setRightEyeClosedConfidence:", [v27 intValue]);
        }

        v28 = [dict objectForKeyedSubscript:*MEMORY[0x1E6991110]];
        if (v28)
        {
          v29 = v28;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasSmileConfidence:1];
          -[AVMetadataFaceObjectInternal setSmileConfidence:](v22->_internal, "setSmileConfidence:", [v29 intValue]);
        }

        v30 = [dict objectForKeyedSubscript:*MEMORY[0x1E6991070]];
        v31 = MEMORY[0x1E695F058];
        if (v30)
        {
          v32 = *(MEMORY[0x1E695F058] + 16);
          v47.origin = *MEMORY[0x1E695F058];
          v47.size = v32;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasLeftEyeBounds:CGRectMakeWithDictionaryRepresentation(v30, &v47)];
          [(AVMetadataFaceObjectInternal *)v22->_internal setLeftEyeBounds:*&v47.origin, *&v47.size];
        }

        v33 = [dict objectForKeyedSubscript:*MEMORY[0x1E69910E0]];
        if (v33)
        {
          v34 = *(v31 + 16);
          v47.origin = *v31;
          v47.size = v34;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasRightEyeBounds:CGRectMakeWithDictionaryRepresentation(v33, &v47)];
          [(AVMetadataFaceObjectInternal *)v22->_internal setRightEyeBounds:*&v47.origin, *&v47.size];
        }

        v35 = [dict objectForKeyedSubscript:*MEMORY[0x1E6990FA0]];
        if (v35)
        {
          v36 = v35;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasConfidence:1];
          -[AVMetadataFaceObjectInternal setConfidence:](v22->_internal, "setConfidence:", ([v36 intValue] / 1000.0));
        }

        v37 = [dict objectForKeyedSubscript:*MEMORY[0x1E6990F68]];
        if (v37)
        {
          v38 = v37;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasPayingAttention:1];
          -[AVMetadataFaceObjectInternal setPayingAttention:](v22->_internal, "setPayingAttention:", [v38 BOOLValue]);
        }

        v39 = [dict objectForKeyedSubscript:*MEMORY[0x1E6990FE8]];
        if (v39)
        {
          v40 = v39;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasDistance:1];
          -[AVMetadataFaceObjectInternal setDistance:](v22->_internal, "setDistance:", [v40 intValue]);
        }

        v41 = [dict objectForKeyedSubscript:*MEMORY[0x1E6991008]];
        if (v41)
        {
          v42 = v41;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasOrientation:1];
          -[AVMetadataFaceObjectInternal setOrientation:](v22->_internal, "setOrientation:", [v42 intValue]);
        }

        v43 = [dict objectForKeyedSubscript:*MEMORY[0x1E6991000]];
        if (v43)
        {
          v44 = v43;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasOccludedFeatures:1];
          bOOLValue = [v44 BOOLValue];
LABEL_34:
          [(AVMetadataFaceObjectInternal *)v22->_internal setOccludedFeatures:bOOLValue];
        }
      }

      else if (object && [object isMemberOfClass:objc_opt_class()])
      {
        -[AVMetadataFaceObjectInternal setHasLeftEyeClosedConfidence:](v22->_internal, "setHasLeftEyeClosedConfidence:", [*(object + 2) hasLeftEyeClosedConfidence]);
        -[AVMetadataFaceObjectInternal setLeftEyeClosedConfidence:](v22->_internal, "setLeftEyeClosedConfidence:", [*(object + 2) leftEyeClosedConfidence]);
        -[AVMetadataFaceObjectInternal setHasRightEyeClosedConfidence:](v22->_internal, "setHasRightEyeClosedConfidence:", [*(object + 2) hasRightEyeClosedConfidence]);
        -[AVMetadataFaceObjectInternal setRightEyeClosedConfidence:](v22->_internal, "setRightEyeClosedConfidence:", [*(object + 2) rightEyeClosedConfidence]);
        -[AVMetadataFaceObjectInternal setHasSmileConfidence:](v22->_internal, "setHasSmileConfidence:", [*(object + 2) hasSmileConfidence]);
        -[AVMetadataFaceObjectInternal setSmileConfidence:](v22->_internal, "setSmileConfidence:", [*(object + 2) smileConfidence]);
        -[AVMetadataFaceObjectInternal setHasLeftEyeBounds:](v22->_internal, "setHasLeftEyeBounds:", [*(object + 2) hasLeftEyeBounds]);
        [*(object + 2) leftEyeBounds];
        [(AVMetadataFaceObjectInternal *)v22->_internal setLeftEyeBounds:?];
        -[AVMetadataFaceObjectInternal setHasRightEyeBounds:](v22->_internal, "setHasRightEyeBounds:", [*(object + 2) hasRightEyeBounds]);
        [*(object + 2) rightEyeBounds];
        [(AVMetadataFaceObjectInternal *)v22->_internal setRightEyeBounds:?];
        -[AVMetadataFaceObjectInternal setHasPayingAttention:](v22->_internal, "setHasPayingAttention:", [*(object + 2) hasPayingAttention]);
        -[AVMetadataFaceObjectInternal setPayingAttention:](v22->_internal, "setPayingAttention:", [*(object + 2) payingAttention]);
        -[AVMetadataFaceObjectInternal setHasPayingAttention:](v22->_internal, "setHasPayingAttention:", [*(object + 2) hasPayingAttention]);
        -[AVMetadataFaceObjectInternal setHasDistance:](v22->_internal, "setHasDistance:", [*(object + 2) hasDistance]);
        [*(object + 2) distance];
        [(AVMetadataFaceObjectInternal *)v22->_internal setDistance:?];
        -[AVMetadataFaceObjectInternal setHasOrientation:](v22->_internal, "setHasOrientation:", [*(object + 2) hasOrientation]);
        -[AVMetadataFaceObjectInternal setOrientation:](v22->_internal, "setOrientation:", [*(object + 2) orientation]);
        -[AVMetadataFaceObjectInternal setHasOccludedFeatures:](v22->_internal, "setHasOccludedFeatures:", [*(object + 2) hasOccludedFeatures]);
        bOOLValue = [*(object + 2) occludedFeatures];
        goto LABEL_34;
      }
    }

    else
    {

      return 0;
    }
  }

  return v22;
}

+ (AVMetadataFaceObject)faceObjectWithFigEmbeddedCaptureDeviceFaceDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp
{
  v5 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceFaceDictionary:dictionary input:input timeStamp:stamp];

  return v5;
}

- (AVMetadataFaceObject)initWithFigEmbeddedCaptureDeviceFaceDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp
{
  v38 = *MEMORY[0x1E6960C70];
  *&v42.value = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v42.epoch = v8;
  v9 = MEMORY[0x1E695F058];
  if (stamp)
  {
    [stamp longLongValue];
    v10 = FigHostTimeToNanoseconds();
    CMTimeMake(&v42, v10, 1000000000);
  }

  x = *v9;
  y = v9[1];
  width = v9[2];
  height = v9[3];
  v15 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E69910D8]];
  if (v15)
  {
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(v15, &rect))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v16 = [input device], objc_msgSend(v16, "deviceType") != @"AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera") && objc_msgSend(v16, "deviceType") != @"AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera" && objc_msgSend(v16, "deviceType") != @"AVCaptureDeviceTypeBuiltInInfraredMetadataCamera")
      {
        v17 = vmulq_f64(rect.size, vdupq_n_s64(0x3FBEB851E0000000uLL));
        __asm { FMOV            V3.2D, #-0.5 }

        rect.origin = vaddq_f64(rect.origin, vmulq_f64(v17, _Q3));
        rect.size = vaddq_f64(rect.size, v17);
      }

      x = rect.origin.x;
      y = rect.origin.y;
      width = rect.size.width;
      height = rect.size.height;
    }
  }

  v23 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6990FF0]];
  if (v23 || (v23 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6990E68]]) != 0)
  {
    integerValue = [v23 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v25 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6990F58]];
  v26 = v25;
  v27 = 0.0;
  v28 = 0.0;
  if (v25)
  {
    [v25 floatValue];
    v28 = v29;
  }

  v30 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6990F60]];
  v31 = v30;
  if (v30)
  {
    [v30 floatValue];
    v27 = v32;
  }

  v33 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6990F50]];
  v34 = v33;
  if (v33)
  {
    [v33 floatValue];
    v36 = v35;
  }

  else
  {
    v36 = 0.0;
  }

  rect.origin = *&v42.value;
  *&rect.size.width = v42.epoch;
  v39 = v38;
  v40 = v8;
  return [(AVMetadataFaceObject *)self initWithFaceID:integerValue hasRollAngle:v26 != 0 rollAngle:v31 != 0 hasYawAngle:v34 != 0 yawAngle:&rect hasPitchAngle:&v39 pitchAngle:v28 time:v27 duration:v36 bounds:x optionalInfoDict:y originalMetadataObject:width sourceCaptureInput:height, dictionary, 0, input];
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  mirroredCopy = mirrored;
  faceID = [object faceID];
  v48 = 0uLL;
  v49 = 0.0;
  if (object)
  {
    [object time];
    v46 = 0uLL;
    v47 = 0;
    [object duration];
  }

  else
  {
    v46 = 0uLL;
    v47 = 0;
  }

  v12 = *(MEMORY[0x1E695F058] + 16);
  v45.origin = *MEMORY[0x1E695F058];
  v45.size = v12;
  [object bounds];
  v13 = *&transform->c;
  *&v44.a = *&transform->a;
  *&v44.c = v13;
  *&v44.tx = *&transform->tx;
  if ((AVMetadataObjectAdjustBaseClassProperties(&v44, &v45, v14, v15, v16, v17) & 1) == 0)
  {

    return 0;
  }

  hasRollAngle = [object hasRollAngle];
  v19 = 0.0;
  v20 = 0.0;
  if (hasRollAngle)
  {
    [object rollAngle];
    v22 = v21 + adjustment;
    if (mirroredCopy)
    {
      v20 = -v22;
    }

    else
    {
      v20 = v22;
    }

    v23 = 360.0;
    if (v20 >= 360.0)
    {
      v23 = -360.0;
    }

    else if (v20 >= 0.0)
    {
      goto LABEL_15;
    }

    v20 = v20 + v23;
  }

LABEL_15:
  hasYawAngle = [object hasYawAngle];
  if (hasYawAngle)
  {
    [object yawAngle];
    v19 = v26;
    if (mirroredCopy)
    {
      if (v26 <= 0.0)
      {
        v19 = -v26;
      }

      else
      {
        v19 = 360.0 - v26;
      }
    }
  }

  hasPitchAngle = [object hasPitchAngle];
  v28 = 0.0;
  if (hasPitchAngle)
  {
    [object pitchAngle];
    v28 = v29;
  }

  input = [object input];
  *&v44.a = v48;
  v44.c = v49;
  v42 = v46;
  v43 = v47;
  v24 = [(AVMetadataFaceObject *)self initWithFaceID:faceID hasRollAngle:hasRollAngle rollAngle:hasYawAngle hasYawAngle:hasPitchAngle yawAngle:&v44 hasPitchAngle:&v42 pitchAngle:v20 time:v19 duration:v28 bounds:*&v45.origin optionalInfoDict:*&v45.size originalMetadataObject:0 sourceCaptureInput:object, input];
  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasLeftEyeBounds])
  {
    [(AVMetadataFaceObjectInternal *)v24->_internal leftEyeBounds];
    v31 = *&transform->c;
    *&v44.a = *&transform->a;
    *&v44.c = v31;
    *&v44.tx = *&transform->tx;
    v51 = CGRectApplyAffineTransform(v50, &v44);
    x = v51.origin.x;
    y = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
    if (CGRectIsEmpty(v51) || (v52.origin.x = x, v52.origin.y = y, v52.size.width = width, v52.size.height = height, CGRectIsNull(v52)) || (v53.origin.x = x, v53.origin.y = y, v53.size.width = width, v53.size.height = height, CGRectIsInfinite(v53)))
    {
      [(AVMetadataFaceObjectInternal *)v24->_internal setHasLeftEyeBounds:0];
    }

    else
    {
      [(AVMetadataFaceObjectInternal *)v24->_internal setLeftEyeBounds:x, y, width, height];
    }
  }

  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasRightEyeBounds])
  {
    [(AVMetadataFaceObjectInternal *)v24->_internal rightEyeBounds];
    v36 = *&transform->c;
    *&v44.a = *&transform->a;
    *&v44.c = v36;
    *&v44.tx = *&transform->tx;
    v55 = CGRectApplyAffineTransform(v54, &v44);
    v37 = v55.origin.x;
    v38 = v55.origin.y;
    v39 = v55.size.width;
    v40 = v55.size.height;
    if (CGRectIsEmpty(v55) || (v56.origin.x = v37, v56.origin.y = v38, v56.size.width = v39, v56.size.height = v40, CGRectIsNull(v56)) || (v57.origin.x = v37, v57.origin.y = v38, v57.size.width = v39, v57.size.height = v40, CGRectIsInfinite(v57)))
    {
      [(AVMetadataFaceObjectInternal *)v24->_internal setHasRightEyeBounds:0];
    }

    else
    {
      [(AVMetadataFaceObjectInternal *)v24->_internal setRightEyeBounds:v37, v38, v39, v40];
    }
  }

  -[AVMetadataFaceObjectInternal setHasConfidence:](v24->_internal, "setHasConfidence:", [object hasConfidence]);
  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasConfidence])
  {
    [object confidence];
    [(AVMetadataFaceObjectInternal *)v24->_internal setConfidence:?];
  }

  -[AVMetadataFaceObjectInternal setHasPayingAttention:](v24->_internal, "setHasPayingAttention:", [object hasPayingAttention]);
  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasPayingAttention])
  {
    -[AVMetadataFaceObjectInternal setPayingAttention:](v24->_internal, "setPayingAttention:", [object payingAttention]);
  }

  -[AVMetadataFaceObjectInternal setHasDistance:](v24->_internal, "setHasDistance:", [object hasDistance]);
  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasDistance])
  {
    [object distance];
    [(AVMetadataFaceObjectInternal *)v24->_internal setDistance:?];
  }

  -[AVMetadataFaceObjectInternal setHasOrientation:](v24->_internal, "setHasOrientation:", [object hasOrientation]);
  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasOrientation])
  {
    -[AVMetadataFaceObjectInternal setOrientation:](v24->_internal, "setOrientation:", [object orientation]);
  }

  -[AVMetadataFaceObjectInternal setHasOccludedFeatures:](v24->_internal, "setHasOccludedFeatures:", [object hasOccludedFeatures]);
  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasOccludedFeatures])
  {
    -[AVMetadataFaceObjectInternal setOccludedFeatures:](v24->_internal, "setOccludedFeatures:", [object occludedFeatures]);
  }

  return v24;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataFaceObject;
  [(AVMetadataObject *)&v3 dealloc];
}

- (id)description
{
  [(AVMetadataObject *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x1E696AD60];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  faceID = [(AVMetadataFaceObject *)self faceID];
  v15 = -1.0;
  v16 = -1.0;
  if ([(AVMetadataFaceObject *)self hasRollAngle])
  {
    [(AVMetadataFaceObject *)self rollAngle];
    v16 = v17;
  }

  if ([(AVMetadataFaceObject *)self hasYawAngle])
  {
    [(AVMetadataFaceObject *)self yawAngle];
    v15 = v18;
  }

  hasPitchAngle = [(AVMetadataFaceObject *)self hasPitchAngle];
  v20 = -1.0;
  if (hasPitchAngle)
  {
    [(AVMetadataFaceObject *)self pitchAngle];
  }

  v21 = [v11 stringWithFormat:@"<%@: %p, faceID=%d, bounds={%.1f, %.1f %.1fx%.1f}, rollAngle=%.1f, yawAngle=%.1f, pitchAngle=%.1f", v13, self, faceID, v4, v6, v8, v10, *&v16, *&v15, *&v20];
  if (self)
  {
    [(AVMetadataObject *)self time];
    v22 = v24;
  }

  else
  {
    v22 = 0;
  }

  [v21 appendFormat:@", time=%lld", v22];
  [v21 appendString:@">"];
  return v21;
}

- (BOOL)isEqual:(id)equal
{
  v66.receiver = self;
  v66.super_class = AVMetadataFaceObject;
  v5 = [(AVMetadataObject *)&v66 isEqual:?];
  if (v5)
  {
    faceID = [(AVMetadataFaceObject *)self faceID];
    if (faceID != [equal faceID])
    {
      goto LABEL_39;
    }

    hasRollAngle = [(AVMetadataFaceObject *)self hasRollAngle];
    if (hasRollAngle != [equal hasRollAngle])
    {
      goto LABEL_39;
    }

    if ([(AVMetadataFaceObject *)self hasRollAngle])
    {
      [(AVMetadataFaceObject *)self rollAngle];
      v9 = v8;
      [equal rollAngle];
      if (v9 != v10)
      {
        goto LABEL_39;
      }
    }

    hasYawAngle = [(AVMetadataFaceObject *)self hasYawAngle];
    if (hasYawAngle != [equal hasYawAngle])
    {
      goto LABEL_39;
    }

    if ([(AVMetadataFaceObject *)self hasYawAngle])
    {
      [(AVMetadataFaceObject *)self yawAngle];
      v13 = v12;
      [equal yawAngle];
      if (v13 != v14)
      {
        goto LABEL_39;
      }
    }

    hasPitchAngle = [(AVMetadataFaceObject *)self hasPitchAngle];
    if (hasPitchAngle != [equal hasPitchAngle])
    {
      goto LABEL_39;
    }

    if ([(AVMetadataFaceObject *)self hasPitchAngle])
    {
      [(AVMetadataFaceObject *)self pitchAngle];
      v17 = v16;
      [equal pitchAngle];
      if (v17 != v18)
      {
        goto LABEL_39;
      }
    }

    hasLeftEyeClosedConfidence = [(AVMetadataFaceObject *)self hasLeftEyeClosedConfidence];
    if (hasLeftEyeClosedConfidence != [equal hasLeftEyeClosedConfidence])
    {
      goto LABEL_39;
    }

    if ([(AVMetadataFaceObject *)self hasLeftEyeClosedConfidence])
    {
      leftEyeClosedConfidence = [(AVMetadataFaceObject *)self leftEyeClosedConfidence];
      if (leftEyeClosedConfidence != [equal leftEyeClosedConfidence])
      {
        goto LABEL_39;
      }
    }

    hasRightEyeClosedConfidence = [(AVMetadataFaceObject *)self hasRightEyeClosedConfidence];
    if (hasRightEyeClosedConfidence != [equal hasRightEyeClosedConfidence])
    {
      goto LABEL_39;
    }

    if ([(AVMetadataFaceObject *)self hasRightEyeClosedConfidence])
    {
      rightEyeClosedConfidence = [(AVMetadataFaceObject *)self rightEyeClosedConfidence];
      if (rightEyeClosedConfidence != [equal rightEyeClosedConfidence])
      {
        goto LABEL_39;
      }
    }

    hasSmileConfidence = [(AVMetadataFaceObject *)self hasSmileConfidence];
    if (hasSmileConfidence != [equal hasSmileConfidence])
    {
      goto LABEL_39;
    }

    if ([(AVMetadataFaceObject *)self hasSmileConfidence])
    {
      smileConfidence = [(AVMetadataFaceObject *)self smileConfidence];
      if (smileConfidence != [equal smileConfidence])
      {
        goto LABEL_39;
      }
    }

    hasLeftEyeBounds = [(AVMetadataFaceObject *)self hasLeftEyeBounds];
    if (hasLeftEyeBounds != [equal hasLeftEyeBounds])
    {
      goto LABEL_39;
    }

    if (!-[AVMetadataFaceObject hasLeftEyeBounds](self, "hasLeftEyeBounds") || (-[AVMetadataFaceObject leftEyeBounds](self, "leftEyeBounds"), v27 = v26, v29 = v28, v31 = v30, v33 = v32, [equal leftEyeBounds], v69.origin.x = v34, v69.origin.y = v35, v69.size.width = v36, v69.size.height = v37, v67.origin.x = v27, v67.origin.y = v29, v67.size.width = v31, v67.size.height = v33, (v5 = CGRectEqualToRect(v67, v69)) != 0))
    {
      hasRightEyeBounds = [(AVMetadataFaceObject *)self hasRightEyeBounds];
      if (hasRightEyeBounds != [equal hasRightEyeBounds])
      {
        goto LABEL_39;
      }

      if (!-[AVMetadataFaceObject hasRightEyeBounds](self, "hasRightEyeBounds") || (-[AVMetadataFaceObject rightEyeBounds](self, "rightEyeBounds"), v40 = v39, v42 = v41, v44 = v43, v46 = v45, [equal rightEyeBounds], v70.origin.x = v47, v70.origin.y = v48, v70.size.width = v49, v70.size.height = v50, v68.origin.x = v40, v68.origin.y = v42, v68.size.width = v44, v68.size.height = v46, (v5 = CGRectEqualToRect(v68, v70)) != 0))
      {
        hasConfidence = [(AVMetadataFaceObject *)self hasConfidence];
        if (hasConfidence == [equal hasConfidence])
        {
          [(AVMetadataFaceObject *)self confidence];
          v53 = v52;
          [equal confidence];
          if (v53 == v54)
          {
            hasPayingAttention = [(AVMetadataFaceObject *)self hasPayingAttention];
            if (hasPayingAttention == [equal hasPayingAttention])
            {
              if (!-[AVMetadataFaceObject hasPayingAttention](self, "hasPayingAttention") || (v56 = -[AVMetadataFaceObject payingAttention](self, "payingAttention"), v56 == [equal payingAttention]))
              {
                hasDistance = [(AVMetadataFaceObject *)self hasDistance];
                if (hasDistance == [equal hasDistance])
                {
                  if (!-[AVMetadataFaceObject hasDistance](self, "hasDistance") || (-[AVMetadataFaceObject distance](self, "distance"), v59 = v58, [equal distance], v59 == v60))
                  {
                    hasOrientation = [(AVMetadataFaceObject *)self hasOrientation];
                    if (hasOrientation == [equal hasOrientation])
                    {
                      if (!-[AVMetadataFaceObject hasOrientation](self, "hasOrientation") || (v62 = -[AVMetadataFaceObject orientation](self, "orientation"), v62 == [equal orientation]))
                      {
                        hasOccludedFeatures = [(AVMetadataFaceObject *)self hasOccludedFeatures];
                        if (hasOccludedFeatures == [equal hasOccludedFeatures])
                        {
                          if (!-[AVMetadataFaceObject hasOccludedFeatures](self, "hasOccludedFeatures") || (v64 = -[AVMetadataFaceObject occludedFeatures](self, "occludedFeatures"), v64 == [equal occludedFeatures]))
                          {
                            LOBYTE(v5) = 1;
                            return v5;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_39:
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (CGFloat)rollAngle
{
  if ([(AVMetadataFaceObject *)self hasRollAngle])
  {
    internal = self->_internal;

    [(AVMetadataFaceObjectInternal *)internal rollAngle];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0.0;
  }

  return result;
}

- (CGFloat)yawAngle
{
  if ([(AVMetadataFaceObject *)self hasYawAngle])
  {
    internal = self->_internal;

    [(AVMetadataFaceObjectInternal *)internal yawAngle];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0.0;
  }

  return result;
}

- (int)leftEyeClosedConfidence
{
  if ([(AVMetadataFaceObject *)self hasLeftEyeClosedConfidence])
  {
    internal = self->_internal;

    return [(AVMetadataFaceObjectInternal *)internal leftEyeClosedConfidence];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0;
  }
}

- (int)rightEyeClosedConfidence
{
  if ([(AVMetadataFaceObject *)self hasRightEyeClosedConfidence])
  {
    internal = self->_internal;

    return [(AVMetadataFaceObjectInternal *)internal rightEyeClosedConfidence];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0;
  }
}

- (int)smileConfidence
{
  if ([(AVMetadataFaceObject *)self hasSmileConfidence])
  {
    internal = self->_internal;

    return [(AVMetadataFaceObjectInternal *)internal smileConfidence];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0;
  }
}

- (CGRect)leftEyeBounds
{
  if ([(AVMetadataFaceObject *)self hasLeftEyeBounds])
  {
    [(AVMetadataFaceObjectInternal *)self->_internal leftEyeBounds];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rightEyeBounds
{
  if ([(AVMetadataFaceObject *)self hasRightEyeBounds])
  {
    [(AVMetadataFaceObjectInternal *)self->_internal rightEyeBounds];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)pitchAngle
{
  if ([(AVMetadataFaceObject *)self hasPitchAngle])
  {
    internal = self->_internal;

    [(AVMetadataFaceObjectInternal *)internal pitchAngle];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0.0;
  }

  return result;
}

- (double)confidence
{
  if ([(AVMetadataFaceObject *)self hasConfidence])
  {
    internal = self->_internal;

    [(AVMetadataFaceObjectInternal *)internal confidence];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0.0;
  }

  return result;
}

- (BOOL)payingAttention
{
  if ([(AVMetadataFaceObject *)self hasPayingAttention])
  {
    internal = self->_internal;

    return [(AVMetadataFaceObjectInternal *)internal payingAttention];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0;
  }
}

- (double)payingAttentionConfidence
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v2);
  }

  NSLog(&cfstr_SuppressingExc.isa, v2);
  return 0.0;
}

- (double)distance
{
  if ([(AVMetadataFaceObject *)self hasDistance])
  {
    internal = self->_internal;

    [(AVMetadataFaceObjectInternal *)internal distance];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0.0;
  }

  return result;
}

- (unint64_t)orientation
{
  if ([(AVMetadataFaceObject *)self hasOrientation])
  {
    internal = self->_internal;

    return [(AVMetadataFaceObjectInternal *)internal orientation];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0;
  }
}

- (BOOL)occludedFeatures
{
  if ([(AVMetadataFaceObject *)self hasOccludedFeatures])
  {
    internal = self->_internal;

    return [(AVMetadataFaceObjectInternal *)internal occludedFeatures];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0;
  }
}

@end