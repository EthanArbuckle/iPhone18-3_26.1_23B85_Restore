@interface AVMetadataObject
+ (id)derivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
- (AVMetadataObject)init;
- (AVMetadataObject)initWithType:(id)type time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)input;
- (BOOL)isEqual:(id)equal;
- (CGRect)bounds;
- (CMTime)duration;
- (CMTime)time;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
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

- (AVMetadataObject)initWithType:(id)type time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)input
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
      [(AVMetadataObjectInternal *)v20 setType:type];
      objectInternal = v19->_objectInternal;
      v35 = *&time->var0;
      var3 = time->var3;
      [(AVMetadataObjectInternal *)objectInternal setTime:&v35];
      v22 = v19->_objectInternal;
      v35 = *&duration->var0;
      var3 = duration->var3;
      [(AVMetadataObjectInternal *)v22 setDuration:&v35];
      [(AVMetadataObjectInternal *)v19->_objectInternal setBounds:x, y, width, height];
      [(AVMetadataObjectInternal *)v19->_objectInternal setOriginalMetadataObject:object];
      [(AVMetadataObjectInternal *)v19->_objectInternal setInput:input];
      if (dict)
      {
        v23 = [dict objectForKeyedSubscript:*MEMORY[0x1E6990E60]];
        if (v23)
        {
          -[AVMetadataObjectInternal setGroupID:](v19->_objectInternal, "setGroupID:", [v23 integerValue]);
        }

        v24 = [dict objectForKeyedSubscript:*MEMORY[0x1E6990E68]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [dict objectForKeyedSubscript:*MEMORY[0x1E6990FF0]];
          if (v25)
          {
            v24 = v25;
          }
        }

        if (v24)
        {
          -[AVMetadataObjectInternal setObjectID:](v19->_objectInternal, "setObjectID:", [v24 integerValue]);
        }

        v26 = [dict objectForKeyedSubscript:*MEMORY[0x1E6990C68]];
        if (v26)
        {
          bOOLValue = [v26 BOOLValue];
          v28 = v19->_objectInternal;
          syntheticFocusMode = [(AVMetadataObjectInternal *)v28 syntheticFocusMode];
          if (bOOLValue)
          {
            v30 = 2;
          }

          else
          {
            v30 = 1;
          }

          if (bOOLValue)
          {
            v31 = 1;
          }

          else
          {
            v31 = 2;
          }

          [(AVMetadataObjectInternal *)v28 setSyntheticFocusMode:syntheticFocusMode | v30];
          [(AVMetadataObjectInternal *)v19->_objectInternal setCinematicVideoFocusMode:v31];
        }

        v32 = [dict objectForKeyedSubscript:*MEMORY[0x1E6990C60]];
        if (!v32)
        {
          goto LABEL_26;
        }

        bOOLValue2 = [v32 BOOLValue];
        if (bOOLValue2)
        {
          [(AVMetadataObjectInternal *)v19->_objectInternal setSyntheticFocusMode:[(AVMetadataObjectInternal *)v19->_objectInternal syntheticFocusMode]| 4];
        }
      }

      else
      {
        if (!object)
        {
LABEL_26:
          -[AVMetadataObjectInternal setDetectionSource:](v19->_objectInternal, "setDetectionSource:", [object detectionSource]);
          return v19;
        }

        -[AVMetadataObjectInternal setGroupID:](v19->_objectInternal, "setGroupID:", [object groupID]);
        -[AVMetadataObjectInternal setObjectID:](v19->_objectInternal, "setObjectID:", [object objectID]);
        -[AVMetadataObjectInternal setSyntheticFocusMode:](v19->_objectInternal, "setSyntheticFocusMode:", [object syntheticFocusMode]);
        -[AVMetadataObjectInternal setCinematicVideoFocusMode:](v19->_objectInternal, "setCinematicVideoFocusMode:", [object cinematicVideoFocusMode]);
        bOOLValue2 = [object isFixedFocus];
      }

      [(AVMetadataObjectInternal *)v19->_objectInternal setFixedFocus:bOOLValue2];
      goto LABEL_26;
    }

    return 0;
  }

  return v19;
}

+ (id)derivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  mirroredCopy = mirrored;
  v10 = objc_alloc(objc_opt_class());
  v11 = *&transform->c;
  v13[0] = *&transform->a;
  v13[1] = v11;
  v13[2] = *&transform->tx;
  return [v10 initDerivedMetadataObjectFromMetadataObject:object withTransform:v13 isVideoMirrored:mirroredCopy rollAdjustment:adjustment];
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
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

- (BOOL)isEqual:(id)equal
{
  if (self)
  {
    [(AVMetadataObject *)self time];
    if (equal)
    {
LABEL_3:
      [equal time];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    if (equal)
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
    if (equal)
    {
LABEL_9:
      [equal duration];
      goto LABEL_12;
    }
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    if (equal)
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
  [equal bounds];
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
    v5 = -[NSString isEqualToString:](-[AVMetadataObject type](self, "type"), "isEqualToString:", [equal type]);
    if (v5)
    {
      if (-[AVMetadataObject groupID](self, "groupID") != -1 && [equal groupID] != -1)
      {
        groupID = [(AVMetadataObject *)self groupID];
        if (groupID != [equal groupID])
        {
          goto LABEL_13;
        }
      }

      if (-[AVMetadataObject objectID](self, "objectID", v24.value, *&v24.timescale, v24.epoch) != -1 && [equal objectID] != -1)
      {
        objectID = [(AVMetadataObject *)self objectID];
        if (objectID != [equal objectID])
        {
          goto LABEL_13;
        }
      }

      detectionSource = [(AVMetadataObject *)self detectionSource];
      if (detectionSource != [equal detectionSource])
      {
        goto LABEL_13;
      }

      cinematicVideoFocusMode = [(AVMetadataObject *)self cinematicVideoFocusMode];
      if (cinematicVideoFocusMode != [equal cinematicVideoFocusMode])
      {
        goto LABEL_13;
      }

      isFixedFocus = [(AVMetadataObject *)self isFixedFocus];
      LOBYTE(v5) = isFixedFocus ^ [equal isFixedFocus] ^ 1;
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
    selfCopy = self;

    return selfCopy;
  }

  return result;
}

@end