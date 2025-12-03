@interface AVMetadataEyeReliefStatusObject
+ (id)eyeReliefStatusObjectWithEyeReliefStatus:(unint64_t)status input:(id)input time:(id *)time optionalInfoDict:(id)dict;
- (AVMetadataEyeReliefStatusObject)initWithEyeReliefStatus:(unint64_t)status time:(id *)time sourceCaptureInput:(id)input optionalInfoDict:(id)dict;
- (double)distance;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
@end

@implementation AVMetadataEyeReliefStatusObject

+ (id)eyeReliefStatusObjectWithEyeReliefStatus:(unint64_t)status input:(id)input time:(id *)time optionalInfoDict:(id)dict
{
  v10 = objc_alloc(objc_opt_class());
  v12 = *time;
  return [v10 initWithEyeReliefStatus:status time:&v12 sourceCaptureInput:input optionalInfoDict:dict];
}

- (AVMetadataEyeReliefStatusObject)initWithEyeReliefStatus:(unint64_t)status time:(id *)time sourceCaptureInput:(id)input optionalInfoDict:(id)dict
{
  v8 = *MEMORY[0x1E6960C70];
  v19 = *(MEMORY[0x1E6960C70] + 16);
  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  v18 = v8;
  v21.receiver = self;
  v21.super_class = AVMetadataEyeReliefStatusObject;
  v20 = *time;
  v13 = [(AVMetadataObject *)&v21 initWithType:@"EyeReliefStatus" time:&v20 duration:&v18 bounds:0 optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:v9, v10, v11, v12];
  v14 = v13;
  if (v13)
  {
    v13->_eyeReliefStatus = status;
    v15 = [dict objectForKeyedSubscript:*MEMORY[0x1E6991240]];
    if (v15)
    {
      [v15 floatValue];
      v14->_distance = v16;
      v14->_hasDistance = 1;
    }
  }

  return v14;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  eyeReliefStatus = [object eyeReliefStatus];
  if (object)
  {
    [object time];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  v9 = -[AVMetadataEyeReliefStatusObject initWithEyeReliefStatus:time:sourceCaptureInput:optionalInfoDict:](self, "initWithEyeReliefStatus:time:sourceCaptureInput:optionalInfoDict:", eyeReliefStatus, v13, [object input], 0);
  if (v9)
  {
    hasDistance = [object hasDistance];
    v9->_hasDistance = hasDistance;
    if (hasDistance)
    {
      [object distance];
      v9->_distance = v11;
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  distance = -1.0;
  if (self->_hasDistance)
  {
    distance = self->_distance;
  }

  return [v3 stringWithFormat:@"%@: %p eyeReliefStatus: %d, distance: %f", v4, self, self->_eyeReliefStatus, *&distance];
}

- (double)distance
{
  if ([(AVMetadataEyeReliefStatusObject *)self hasDistance])
  {
    return self->_distance;
  }

  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
  return 0.0;
}

@end