@interface AVMetadataFaceObject
+ (AVMetadataFaceObject)faceObjectWithFigEmbeddedCaptureDeviceFaceDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5;
- (AVMetadataFaceObject)initWithFaceID:(int64_t)a3 hasRollAngle:(BOOL)a4 rollAngle:(double)a5 hasYawAngle:(BOOL)a6 yawAngle:(double)a7 hasPitchAngle:(BOOL)a8 pitchAngle:(double)a9 time:(id *)a10 duration:(id *)a11 bounds:(CGRect)a12;
- (AVMetadataFaceObject)initWithFaceID:(int64_t)a3 hasRollAngle:(BOOL)a4 rollAngle:(double)a5 hasYawAngle:(BOOL)a6 yawAngle:(double)a7 hasPitchAngle:(BOOL)a8 pitchAngle:(double)a9 time:(id *)a10 duration:(id *)a11 bounds:(CGRect)a12 optionalInfoDict:(id)a13 originalMetadataObject:(id)a14 sourceCaptureInput:(id)a15;
- (AVMetadataFaceObject)initWithFigEmbeddedCaptureDeviceFaceDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5;
- (AVMetadataFaceObject)initWithType:(id)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6 optionalInfoDict:(id)a7 originalMetadataObject:(id)a8 sourceCaptureInput:(id)a9;
- (BOOL)isEqual:(id)a3;
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
- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6;
- (int)leftEyeClosedConfidence;
- (int)rightEyeClosedConfidence;
- (int)smileConfidence;
- (unint64_t)orientation;
- (void)dealloc;
@end

@implementation AVMetadataFaceObject

- (AVMetadataFaceObject)initWithType:(id)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6 optionalInfoDict:(id)a7 originalMetadataObject:(id)a8 sourceCaptureInput:(id)a9
{
  v11 = *a4;
  v10 = *a5;
  return [(AVMetadataFaceObject *)self initWithFaceID:0 hasRollAngle:0 rollAngle:0 hasYawAngle:0 yawAngle:&v11 hasPitchAngle:&v10 pitchAngle:0.0 time:0.0 duration:0.0 bounds:a6.origin.x optionalInfoDict:a6.origin.y originalMetadataObject:a6.size.width sourceCaptureInput:a6.size.height, a7, a8, a9];
}

- (AVMetadataFaceObject)initWithFaceID:(int64_t)a3 hasRollAngle:(BOOL)a4 rollAngle:(double)a5 hasYawAngle:(BOOL)a6 yawAngle:(double)a7 hasPitchAngle:(BOOL)a8 pitchAngle:(double)a9 time:(id *)a10 duration:(id *)a11 bounds:(CGRect)a12
{
  v14 = *a10;
  v13 = *a11;
  return [(AVMetadataFaceObject *)self initWithFaceID:a3 hasRollAngle:a4 rollAngle:a6 hasYawAngle:a8 yawAngle:&v14 hasPitchAngle:&v13 pitchAngle:a5 time:a7 duration:a9 bounds:a12.origin.x optionalInfoDict:a12.origin.y originalMetadataObject:a12.size.width sourceCaptureInput:a12.size.height, 0, 0, 0];
}

- (AVMetadataFaceObject)initWithFaceID:(int64_t)a3 hasRollAngle:(BOOL)a4 rollAngle:(double)a5 hasYawAngle:(BOOL)a6 yawAngle:(double)a7 hasPitchAngle:(BOOL)a8 pitchAngle:(double)a9 time:(id *)a10 duration:(id *)a11 bounds:(CGRect)a12 optionalInfoDict:(id)a13 originalMetadataObject:(id)a14 sourceCaptureInput:(id)a15
{
  v15 = a8;
  v16 = a6;
  v17 = a4;
  v49.receiver = self;
  v49.super_class = AVMetadataFaceObject;
  v47.origin = *&a10->var0;
  *&v47.size.width = a10->var3;
  v48 = *a11;
  v22 = [(AVMetadataObject *)&v49 initWithType:@"face" time:&v47 duration:&v48 bounds:a13 optionalInfoDict:a14 originalMetadataObject:a15 sourceCaptureInput:a12.origin.x, a12.origin.y, a12.size.width, a12.size.height];
  if (v22)
  {
    v23 = objc_alloc_init(AVMetadataFaceObjectInternal);
    v22->_internal = v23;
    if (v23)
    {
      [(AVMetadataFaceObjectInternal *)v23 setFaceID:a3];
      [(AVMetadataFaceObjectInternal *)v22->_internal setHasRollAngle:v17];
      if (v17)
      {
        [(AVMetadataFaceObjectInternal *)v22->_internal setRollAngle:a5];
      }

      [(AVMetadataFaceObjectInternal *)v22->_internal setHasYawAngle:v16];
      if (v16)
      {
        [(AVMetadataFaceObjectInternal *)v22->_internal setYawAngle:a7];
      }

      [(AVMetadataFaceObjectInternal *)v22->_internal setHasPitchAngle:v15];
      if (v15)
      {
        [(AVMetadataFaceObjectInternal *)v22->_internal setPitchAngle:a9];
      }

      if (a13)
      {
        v24 = [a13 objectForKeyedSubscript:*MEMORY[0x1E6990F78]];
        if (v24)
        {
          v25 = v24;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasLeftEyeClosedConfidence:1];
          -[AVMetadataFaceObjectInternal setLeftEyeClosedConfidence:](v22->_internal, "setLeftEyeClosedConfidence:", [v25 intValue]);
        }

        v26 = [a13 objectForKeyedSubscript:*MEMORY[0x1E6990F80]];
        if (v26)
        {
          v27 = v26;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasRightEyeClosedConfidence:1];
          -[AVMetadataFaceObjectInternal setRightEyeClosedConfidence:](v22->_internal, "setRightEyeClosedConfidence:", [v27 intValue]);
        }

        v28 = [a13 objectForKeyedSubscript:*MEMORY[0x1E6991110]];
        if (v28)
        {
          v29 = v28;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasSmileConfidence:1];
          -[AVMetadataFaceObjectInternal setSmileConfidence:](v22->_internal, "setSmileConfidence:", [v29 intValue]);
        }

        v30 = [a13 objectForKeyedSubscript:*MEMORY[0x1E6991070]];
        v31 = MEMORY[0x1E695F058];
        if (v30)
        {
          v32 = *(MEMORY[0x1E695F058] + 16);
          v47.origin = *MEMORY[0x1E695F058];
          v47.size = v32;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasLeftEyeBounds:CGRectMakeWithDictionaryRepresentation(v30, &v47)];
          [(AVMetadataFaceObjectInternal *)v22->_internal setLeftEyeBounds:*&v47.origin, *&v47.size];
        }

        v33 = [a13 objectForKeyedSubscript:*MEMORY[0x1E69910E0]];
        if (v33)
        {
          v34 = *(v31 + 16);
          v47.origin = *v31;
          v47.size = v34;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasRightEyeBounds:CGRectMakeWithDictionaryRepresentation(v33, &v47)];
          [(AVMetadataFaceObjectInternal *)v22->_internal setRightEyeBounds:*&v47.origin, *&v47.size];
        }

        v35 = [a13 objectForKeyedSubscript:*MEMORY[0x1E6990FA0]];
        if (v35)
        {
          v36 = v35;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasConfidence:1];
          -[AVMetadataFaceObjectInternal setConfidence:](v22->_internal, "setConfidence:", ([v36 intValue] / 1000.0));
        }

        v37 = [a13 objectForKeyedSubscript:*MEMORY[0x1E6990F68]];
        if (v37)
        {
          v38 = v37;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasPayingAttention:1];
          -[AVMetadataFaceObjectInternal setPayingAttention:](v22->_internal, "setPayingAttention:", [v38 BOOLValue]);
        }

        v39 = [a13 objectForKeyedSubscript:*MEMORY[0x1E6990FE8]];
        if (v39)
        {
          v40 = v39;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasDistance:1];
          -[AVMetadataFaceObjectInternal setDistance:](v22->_internal, "setDistance:", [v40 intValue]);
        }

        v41 = [a13 objectForKeyedSubscript:*MEMORY[0x1E6991008]];
        if (v41)
        {
          v42 = v41;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasOrientation:1];
          -[AVMetadataFaceObjectInternal setOrientation:](v22->_internal, "setOrientation:", [v42 intValue]);
        }

        v43 = [a13 objectForKeyedSubscript:*MEMORY[0x1E6991000]];
        if (v43)
        {
          v44 = v43;
          [(AVMetadataFaceObjectInternal *)v22->_internal setHasOccludedFeatures:1];
          v45 = [v44 BOOLValue];
LABEL_34:
          [(AVMetadataFaceObjectInternal *)v22->_internal setOccludedFeatures:v45];
        }
      }

      else if (a14 && [a14 isMemberOfClass:objc_opt_class()])
      {
        -[AVMetadataFaceObjectInternal setHasLeftEyeClosedConfidence:](v22->_internal, "setHasLeftEyeClosedConfidence:", [*(a14 + 2) hasLeftEyeClosedConfidence]);
        -[AVMetadataFaceObjectInternal setLeftEyeClosedConfidence:](v22->_internal, "setLeftEyeClosedConfidence:", [*(a14 + 2) leftEyeClosedConfidence]);
        -[AVMetadataFaceObjectInternal setHasRightEyeClosedConfidence:](v22->_internal, "setHasRightEyeClosedConfidence:", [*(a14 + 2) hasRightEyeClosedConfidence]);
        -[AVMetadataFaceObjectInternal setRightEyeClosedConfidence:](v22->_internal, "setRightEyeClosedConfidence:", [*(a14 + 2) rightEyeClosedConfidence]);
        -[AVMetadataFaceObjectInternal setHasSmileConfidence:](v22->_internal, "setHasSmileConfidence:", [*(a14 + 2) hasSmileConfidence]);
        -[AVMetadataFaceObjectInternal setSmileConfidence:](v22->_internal, "setSmileConfidence:", [*(a14 + 2) smileConfidence]);
        -[AVMetadataFaceObjectInternal setHasLeftEyeBounds:](v22->_internal, "setHasLeftEyeBounds:", [*(a14 + 2) hasLeftEyeBounds]);
        [*(a14 + 2) leftEyeBounds];
        [(AVMetadataFaceObjectInternal *)v22->_internal setLeftEyeBounds:?];
        -[AVMetadataFaceObjectInternal setHasRightEyeBounds:](v22->_internal, "setHasRightEyeBounds:", [*(a14 + 2) hasRightEyeBounds]);
        [*(a14 + 2) rightEyeBounds];
        [(AVMetadataFaceObjectInternal *)v22->_internal setRightEyeBounds:?];
        -[AVMetadataFaceObjectInternal setHasPayingAttention:](v22->_internal, "setHasPayingAttention:", [*(a14 + 2) hasPayingAttention]);
        -[AVMetadataFaceObjectInternal setPayingAttention:](v22->_internal, "setPayingAttention:", [*(a14 + 2) payingAttention]);
        -[AVMetadataFaceObjectInternal setHasPayingAttention:](v22->_internal, "setHasPayingAttention:", [*(a14 + 2) hasPayingAttention]);
        -[AVMetadataFaceObjectInternal setHasDistance:](v22->_internal, "setHasDistance:", [*(a14 + 2) hasDistance]);
        [*(a14 + 2) distance];
        [(AVMetadataFaceObjectInternal *)v22->_internal setDistance:?];
        -[AVMetadataFaceObjectInternal setHasOrientation:](v22->_internal, "setHasOrientation:", [*(a14 + 2) hasOrientation]);
        -[AVMetadataFaceObjectInternal setOrientation:](v22->_internal, "setOrientation:", [*(a14 + 2) orientation]);
        -[AVMetadataFaceObjectInternal setHasOccludedFeatures:](v22->_internal, "setHasOccludedFeatures:", [*(a14 + 2) hasOccludedFeatures]);
        v45 = [*(a14 + 2) occludedFeatures];
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

+ (AVMetadataFaceObject)faceObjectWithFigEmbeddedCaptureDeviceFaceDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceFaceDictionary:a3 input:a4 timeStamp:a5];

  return v5;
}

- (AVMetadataFaceObject)initWithFigEmbeddedCaptureDeviceFaceDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5
{
  v38 = *MEMORY[0x1E6960C70];
  *&v42.value = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v42.epoch = v8;
  v9 = MEMORY[0x1E695F058];
  if (a5)
  {
    [a5 longLongValue];
    v10 = FigHostTimeToNanoseconds();
    CMTimeMake(&v42, v10, 1000000000);
  }

  x = *v9;
  y = v9[1];
  width = v9[2];
  height = v9[3];
  v15 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69910D8]];
  if (v15)
  {
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(v15, &rect))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v16 = [a4 device], objc_msgSend(v16, "deviceType") != @"AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera") && objc_msgSend(v16, "deviceType") != @"AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera" && objc_msgSend(v16, "deviceType") != @"AVCaptureDeviceTypeBuiltInInfraredMetadataCamera")
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

  v23 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6990FF0]];
  if (v23 || (v23 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6990E68]]) != 0)
  {
    v24 = [v23 integerValue];
  }

  else
  {
    v24 = 0;
  }

  v25 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6990F58]];
  v26 = v25;
  v27 = 0.0;
  v28 = 0.0;
  if (v25)
  {
    [v25 floatValue];
    v28 = v29;
  }

  v30 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6990F60]];
  v31 = v30;
  if (v30)
  {
    [v30 floatValue];
    v27 = v32;
  }

  v33 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6990F50]];
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
  return [(AVMetadataFaceObject *)self initWithFaceID:v24 hasRollAngle:v26 != 0 rollAngle:v31 != 0 hasYawAngle:v34 != 0 yawAngle:&rect hasPitchAngle:&v39 pitchAngle:v28 time:v27 duration:v36 bounds:x optionalInfoDict:y originalMetadataObject:width sourceCaptureInput:height, a3, 0, a4];
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6
{
  v7 = a5;
  v11 = [a3 faceID];
  v48 = 0uLL;
  v49 = 0.0;
  if (a3)
  {
    [a3 time];
    v46 = 0uLL;
    v47 = 0;
    [a3 duration];
  }

  else
  {
    v46 = 0uLL;
    v47 = 0;
  }

  v12 = *(MEMORY[0x1E695F058] + 16);
  v45.origin = *MEMORY[0x1E695F058];
  v45.size = v12;
  [a3 bounds];
  v13 = *&a4->c;
  *&v44.a = *&a4->a;
  *&v44.c = v13;
  *&v44.tx = *&a4->tx;
  if ((AVMetadataObjectAdjustBaseClassProperties(&v44, &v45, v14, v15, v16, v17) & 1) == 0)
  {

    return 0;
  }

  v18 = [a3 hasRollAngle];
  v19 = 0.0;
  v20 = 0.0;
  if (v18)
  {
    [a3 rollAngle];
    v22 = v21 + a6;
    if (v7)
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
  v25 = [a3 hasYawAngle];
  if (v25)
  {
    [a3 yawAngle];
    v19 = v26;
    if (v7)
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

  v27 = [a3 hasPitchAngle];
  v28 = 0.0;
  if (v27)
  {
    [a3 pitchAngle];
    v28 = v29;
  }

  v30 = [a3 input];
  *&v44.a = v48;
  v44.c = v49;
  v42 = v46;
  v43 = v47;
  v24 = [(AVMetadataFaceObject *)self initWithFaceID:v11 hasRollAngle:v18 rollAngle:v25 hasYawAngle:v27 yawAngle:&v44 hasPitchAngle:&v42 pitchAngle:v20 time:v19 duration:v28 bounds:*&v45.origin optionalInfoDict:*&v45.size originalMetadataObject:0 sourceCaptureInput:a3, v30];
  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasLeftEyeBounds])
  {
    [(AVMetadataFaceObjectInternal *)v24->_internal leftEyeBounds];
    v31 = *&a4->c;
    *&v44.a = *&a4->a;
    *&v44.c = v31;
    *&v44.tx = *&a4->tx;
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
    v36 = *&a4->c;
    *&v44.a = *&a4->a;
    *&v44.c = v36;
    *&v44.tx = *&a4->tx;
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

  -[AVMetadataFaceObjectInternal setHasConfidence:](v24->_internal, "setHasConfidence:", [a3 hasConfidence]);
  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasConfidence])
  {
    [a3 confidence];
    [(AVMetadataFaceObjectInternal *)v24->_internal setConfidence:?];
  }

  -[AVMetadataFaceObjectInternal setHasPayingAttention:](v24->_internal, "setHasPayingAttention:", [a3 hasPayingAttention]);
  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasPayingAttention])
  {
    -[AVMetadataFaceObjectInternal setPayingAttention:](v24->_internal, "setPayingAttention:", [a3 payingAttention]);
  }

  -[AVMetadataFaceObjectInternal setHasDistance:](v24->_internal, "setHasDistance:", [a3 hasDistance]);
  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasDistance])
  {
    [a3 distance];
    [(AVMetadataFaceObjectInternal *)v24->_internal setDistance:?];
  }

  -[AVMetadataFaceObjectInternal setHasOrientation:](v24->_internal, "setHasOrientation:", [a3 hasOrientation]);
  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasOrientation])
  {
    -[AVMetadataFaceObjectInternal setOrientation:](v24->_internal, "setOrientation:", [a3 orientation]);
  }

  -[AVMetadataFaceObjectInternal setHasOccludedFeatures:](v24->_internal, "setHasOccludedFeatures:", [a3 hasOccludedFeatures]);
  if ([(AVMetadataFaceObjectInternal *)v24->_internal hasOccludedFeatures])
  {
    -[AVMetadataFaceObjectInternal setOccludedFeatures:](v24->_internal, "setOccludedFeatures:", [a3 occludedFeatures]);
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
  v14 = [(AVMetadataFaceObject *)self faceID];
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

  v19 = [(AVMetadataFaceObject *)self hasPitchAngle];
  v20 = -1.0;
  if (v19)
  {
    [(AVMetadataFaceObject *)self pitchAngle];
  }

  v21 = [v11 stringWithFormat:@"<%@: %p, faceID=%d, bounds={%.1f, %.1f %.1fx%.1f}, rollAngle=%.1f, yawAngle=%.1f, pitchAngle=%.1f", v13, self, v14, v4, v6, v8, v10, *&v16, *&v15, *&v20];
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

- (BOOL)isEqual:(id)a3
{
  v66.receiver = self;
  v66.super_class = AVMetadataFaceObject;
  v5 = [(AVMetadataObject *)&v66 isEqual:?];
  if (v5)
  {
    v6 = [(AVMetadataFaceObject *)self faceID];
    if (v6 != [a3 faceID])
    {
      goto LABEL_39;
    }

    v7 = [(AVMetadataFaceObject *)self hasRollAngle];
    if (v7 != [a3 hasRollAngle])
    {
      goto LABEL_39;
    }

    if ([(AVMetadataFaceObject *)self hasRollAngle])
    {
      [(AVMetadataFaceObject *)self rollAngle];
      v9 = v8;
      [a3 rollAngle];
      if (v9 != v10)
      {
        goto LABEL_39;
      }
    }

    v11 = [(AVMetadataFaceObject *)self hasYawAngle];
    if (v11 != [a3 hasYawAngle])
    {
      goto LABEL_39;
    }

    if ([(AVMetadataFaceObject *)self hasYawAngle])
    {
      [(AVMetadataFaceObject *)self yawAngle];
      v13 = v12;
      [a3 yawAngle];
      if (v13 != v14)
      {
        goto LABEL_39;
      }
    }

    v15 = [(AVMetadataFaceObject *)self hasPitchAngle];
    if (v15 != [a3 hasPitchAngle])
    {
      goto LABEL_39;
    }

    if ([(AVMetadataFaceObject *)self hasPitchAngle])
    {
      [(AVMetadataFaceObject *)self pitchAngle];
      v17 = v16;
      [a3 pitchAngle];
      if (v17 != v18)
      {
        goto LABEL_39;
      }
    }

    v19 = [(AVMetadataFaceObject *)self hasLeftEyeClosedConfidence];
    if (v19 != [a3 hasLeftEyeClosedConfidence])
    {
      goto LABEL_39;
    }

    if ([(AVMetadataFaceObject *)self hasLeftEyeClosedConfidence])
    {
      v20 = [(AVMetadataFaceObject *)self leftEyeClosedConfidence];
      if (v20 != [a3 leftEyeClosedConfidence])
      {
        goto LABEL_39;
      }
    }

    v21 = [(AVMetadataFaceObject *)self hasRightEyeClosedConfidence];
    if (v21 != [a3 hasRightEyeClosedConfidence])
    {
      goto LABEL_39;
    }

    if ([(AVMetadataFaceObject *)self hasRightEyeClosedConfidence])
    {
      v22 = [(AVMetadataFaceObject *)self rightEyeClosedConfidence];
      if (v22 != [a3 rightEyeClosedConfidence])
      {
        goto LABEL_39;
      }
    }

    v23 = [(AVMetadataFaceObject *)self hasSmileConfidence];
    if (v23 != [a3 hasSmileConfidence])
    {
      goto LABEL_39;
    }

    if ([(AVMetadataFaceObject *)self hasSmileConfidence])
    {
      v24 = [(AVMetadataFaceObject *)self smileConfidence];
      if (v24 != [a3 smileConfidence])
      {
        goto LABEL_39;
      }
    }

    v25 = [(AVMetadataFaceObject *)self hasLeftEyeBounds];
    if (v25 != [a3 hasLeftEyeBounds])
    {
      goto LABEL_39;
    }

    if (!-[AVMetadataFaceObject hasLeftEyeBounds](self, "hasLeftEyeBounds") || (-[AVMetadataFaceObject leftEyeBounds](self, "leftEyeBounds"), v27 = v26, v29 = v28, v31 = v30, v33 = v32, [a3 leftEyeBounds], v69.origin.x = v34, v69.origin.y = v35, v69.size.width = v36, v69.size.height = v37, v67.origin.x = v27, v67.origin.y = v29, v67.size.width = v31, v67.size.height = v33, (v5 = CGRectEqualToRect(v67, v69)) != 0))
    {
      v38 = [(AVMetadataFaceObject *)self hasRightEyeBounds];
      if (v38 != [a3 hasRightEyeBounds])
      {
        goto LABEL_39;
      }

      if (!-[AVMetadataFaceObject hasRightEyeBounds](self, "hasRightEyeBounds") || (-[AVMetadataFaceObject rightEyeBounds](self, "rightEyeBounds"), v40 = v39, v42 = v41, v44 = v43, v46 = v45, [a3 rightEyeBounds], v70.origin.x = v47, v70.origin.y = v48, v70.size.width = v49, v70.size.height = v50, v68.origin.x = v40, v68.origin.y = v42, v68.size.width = v44, v68.size.height = v46, (v5 = CGRectEqualToRect(v68, v70)) != 0))
      {
        v51 = [(AVMetadataFaceObject *)self hasConfidence];
        if (v51 == [a3 hasConfidence])
        {
          [(AVMetadataFaceObject *)self confidence];
          v53 = v52;
          [a3 confidence];
          if (v53 == v54)
          {
            v55 = [(AVMetadataFaceObject *)self hasPayingAttention];
            if (v55 == [a3 hasPayingAttention])
            {
              if (!-[AVMetadataFaceObject hasPayingAttention](self, "hasPayingAttention") || (v56 = -[AVMetadataFaceObject payingAttention](self, "payingAttention"), v56 == [a3 payingAttention]))
              {
                v57 = [(AVMetadataFaceObject *)self hasDistance];
                if (v57 == [a3 hasDistance])
                {
                  if (!-[AVMetadataFaceObject hasDistance](self, "hasDistance") || (-[AVMetadataFaceObject distance](self, "distance"), v59 = v58, [a3 distance], v59 == v60))
                  {
                    v61 = [(AVMetadataFaceObject *)self hasOrientation];
                    if (v61 == [a3 hasOrientation])
                    {
                      if (!-[AVMetadataFaceObject hasOrientation](self, "hasOrientation") || (v62 = -[AVMetadataFaceObject orientation](self, "orientation"), v62 == [a3 orientation]))
                      {
                        v63 = [(AVMetadataFaceObject *)self hasOccludedFeatures];
                        if (v63 == [a3 hasOccludedFeatures])
                        {
                          if (!-[AVMetadataFaceObject hasOccludedFeatures](self, "hasOccludedFeatures") || (v64 = -[AVMetadataFaceObject occludedFeatures](self, "occludedFeatures"), v64 == [a3 occludedFeatures]))
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