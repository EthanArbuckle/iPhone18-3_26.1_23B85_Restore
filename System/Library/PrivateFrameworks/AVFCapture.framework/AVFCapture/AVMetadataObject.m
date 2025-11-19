@interface AVMetadataObject
+ (id)derivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6;
- (AVMetadataObject)init;
- (AVMetadataObject)initWithType:(id)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6 optionalInfoDict:(id)a7 originalMetadataObject:(id)a8 sourceCaptureInput:(id)a9;
- (BOOL)isEqual:(id)a3;
- (CGRect)bounds;
- (CMTime)duration;
- (CMTime)time;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6;
- (id)originalMetadataObject;
- (void)dealloc;
@end

@implementation AVMetadataObject

- (AVMetadataObject)init
{
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v3 = v5;
  v4 = v6;
  return [(AVMetadataObject *)self initWithType:0 time:&v5 duration:&v3 bounds:0 optionalInfoDict:0 originalMetadataObject:0 sourceCaptureInput:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (AVMetadataObject)initWithType:(id)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6 optionalInfoDict:(id)a7 originalMetadataObject:(id)a8 sourceCaptureInput:(id)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v37.receiver = self;
  v37.super_class = AVMetadataObject;
  v19 = [(AVMetadataObject *)&v37 init];
  if (v19)
  {
    objc_opt_class();
    AVRequireConcreteObject();
    v20 = objc_alloc_init(AVMetadataObjectInternal);
    v19->_objectInternal = v20;
    if (v20)
    {
      [(AVMetadataObjectInternal *)v20 setType:a3];
      objectInternal = v19->_objectInternal;
      v35 = *&a4->var0;
      var3 = a4->var3;
      [(AVMetadataObjectInternal *)objectInternal setTime:&v35];
      v22 = v19->_objectInternal;
      v35 = *&a5->var0;
      var3 = a5->var3;
      [(AVMetadataObjectInternal *)v22 setDuration:&v35];
      [(AVMetadataObjectInternal *)v19->_objectInternal setBounds:x, y, width, height];
      [(AVMetadataObjectInternal *)v19->_objectInternal setOriginalMetadataObject:a8];
      [(AVMetadataObjectInternal *)v19->_objectInternal setInput:a9];
      if (a7)
      {
        v23 = [a7 objectForKeyedSubscript:*MEMORY[0x1E6990E60]];
        if (v23)
        {
          -[AVMetadataObjectInternal setGroupID:](v19->_objectInternal, "setGroupID:", [v23 integerValue]);
        }

        v24 = [a7 objectForKeyedSubscript:*MEMORY[0x1E6990E68]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [a7 objectForKeyedSubscript:*MEMORY[0x1E6990FF0]];
          if (v25)
          {
            v24 = v25;
          }
        }

        if (v24)
        {
          -[AVMetadataObjectInternal setObjectID:](v19->_objectInternal, "setObjectID:", [v24 integerValue]);
        }

        v26 = [a7 objectForKeyedSubscript:*MEMORY[0x1E6990C68]];
        if (v26)
        {
          v27 = [v26 BOOLValue];
          v28 = v19->_objectInternal;
          v29 = [(AVMetadataObjectInternal *)v28 syntheticFocusMode];
          if (v27)
          {
            v30 = 2;
          }

          else
          {
            v30 = 1;
          }

          if (v27)
          {
            v31 = 1;
          }

          else
          {
            v31 = 2;
          }

          [(AVMetadataObjectInternal *)v28 setSyntheticFocusMode:v29 | v30];
          [(AVMetadataObjectInternal *)v19->_objectInternal setCinematicVideoFocusMode:v31];
        }

        v32 = [a7 objectForKeyedSubscript:*MEMORY[0x1E6990C60]];
        if (!v32)
        {
          goto LABEL_26;
        }

        v33 = [v32 BOOLValue];
        if (v33)
        {
          [(AVMetadataObjectInternal *)v19->_objectInternal setSyntheticFocusMode:[(AVMetadataObjectInternal *)v19->_objectInternal syntheticFocusMode]| 4];
        }
      }

      else
      {
        if (!a8)
        {
LABEL_26:
          -[AVMetadataObjectInternal setDetectionSource:](v19->_objectInternal, "setDetectionSource:", [a8 detectionSource]);
          return v19;
        }

        -[AVMetadataObjectInternal setGroupID:](v19->_objectInternal, "setGroupID:", [a8 groupID]);
        -[AVMetadataObjectInternal setObjectID:](v19->_objectInternal, "setObjectID:", [a8 objectID]);
        -[AVMetadataObjectInternal setSyntheticFocusMode:](v19->_objectInternal, "setSyntheticFocusMode:", [a8 syntheticFocusMode]);
        -[AVMetadataObjectInternal setCinematicVideoFocusMode:](v19->_objectInternal, "setCinematicVideoFocusMode:", [a8 cinematicVideoFocusMode]);
        v33 = [a8 isFixedFocus];
      }

      [(AVMetadataObjectInternal *)v19->_objectInternal setFixedFocus:v33];
      goto LABEL_26;
    }

    return 0;
  }

  return v19;
}

+ (id)derivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6
{
  v7 = a5;
  v10 = objc_alloc(objc_opt_class());
  v11 = *&a4->c;
  v13[0] = *&a4->a;
  v13[1] = v11;
  v13[2] = *&a4->tx;
  return [v10 initDerivedMetadataObjectFromMetadataObject:a3 withTransform:v13 isVideoMirrored:v7 rollAdjustment:a6];
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6
{
  objc_opt_class();
  AVRequestConcreteImplementation();
  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataObject;
  [(AVMetadataObject *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self)
  {
    [(AVMetadataObject *)self time];
    if (a3)
    {
LABEL_3:
      [a3 time];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    if (a3)
    {
      goto LABEL_3;
    }
  }

  memset(&v24, 0, sizeof(v24));
LABEL_6:
  if (CMTimeCompare(&time1, &v24))
  {
LABEL_13:
    LOBYTE(v5) = 0;
    return v5;
  }

  if (self)
  {
    [(AVMetadataObject *)self duration];
    if (a3)
    {
LABEL_9:
      [a3 duration];
      goto LABEL_12;
    }
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    if (a3)
    {
      goto LABEL_9;
    }
  }

  memset(&v24, 0, sizeof(v24));
LABEL_12:
  if (CMTimeCompare(&time1, &v24))
  {
    goto LABEL_13;
  }

  [(AVMetadataObject *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [a3 bounds];
  v27.origin.x = v14;
  v27.origin.y = v15;
  v27.size.width = v16;
  v27.size.height = v17;
  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  v5 = CGRectEqualToRect(v26, v27);
  if (v5)
  {
    v5 = -[NSString isEqualToString:](-[AVMetadataObject type](self, "type"), "isEqualToString:", [a3 type]);
    if (v5)
    {
      if (-[AVMetadataObject groupID](self, "groupID") != -1 && [a3 groupID] != -1)
      {
        v18 = [(AVMetadataObject *)self groupID];
        if (v18 != [a3 groupID])
        {
          goto LABEL_13;
        }
      }

      if (-[AVMetadataObject objectID](self, "objectID", v24.value, *&v24.timescale, v24.epoch) != -1 && [a3 objectID] != -1)
      {
        v19 = [(AVMetadataObject *)self objectID];
        if (v19 != [a3 objectID])
        {
          goto LABEL_13;
        }
      }

      v20 = [(AVMetadataObject *)self detectionSource];
      if (v20 != [a3 detectionSource])
      {
        goto LABEL_13;
      }

      v21 = [(AVMetadataObject *)self cinematicVideoFocusMode];
      if (v21 != [a3 cinematicVideoFocusMode])
      {
        goto LABEL_13;
      }

      v22 = [(AVMetadataObject *)self isFixedFocus];
      LOBYTE(v5) = v22 ^ [a3 isFixedFocus] ^ 1;
    }
  }

  return v5;
}

- (CMTime)time
{
  result = self->_objectInternal;
  if (result)
  {
    return [(CMTime *)result time];
  }

  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  return result;
}

- (CMTime)duration
{
  result = self->_objectInternal;
  if (result)
  {
    return [(CMTime *)result duration];
  }

  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  return result;
}

- (CGRect)bounds
{
  [(AVMetadataObjectInternal *)self->_objectInternal bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)originalMetadataObject
{
  result = [(AVMetadataObjectInternal *)self->_objectInternal originalMetadataObject];
  if (!result)
  {
    v4 = self;

    return v4;
  }

  return result;
}

@end