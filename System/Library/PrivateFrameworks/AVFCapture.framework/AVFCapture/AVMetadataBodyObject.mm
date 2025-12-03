@interface AVMetadataBodyObject
- (AVMetadataBodyObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp type:(id)type;
- (AVMetadataBodyObject)initWithType:(id)type bodyID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)self0;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment type:(id)type bodyID:(int64_t)d;
@end

@implementation AVMetadataBodyObject

- (AVMetadataBodyObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp type:(id)type
{
  v20 = *MEMORY[0x1E6960C70];
  *&v26.value = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  v26.epoch = v10;
  v11 = MEMORY[0x1E695F058];
  if (stamp)
  {
    [stamp longLongValue];
    v12 = FigHostTimeToNanoseconds();
    CMTimeMake(&v26, v12, 1000000000);
  }

  x = *v11;
  y = v11[1];
  width = v11[2];
  height = v11[3];
  v17 = [dictionary objectForKeyedSubscript:{*MEMORY[0x1E69910D8], v20}];
  if (v17)
  {
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(v17, &rect))
    {
      x = rect.origin.x;
      y = rect.origin.y;
      width = rect.size.width;
      height = rect.size.height;
    }
  }

  v24.receiver = self;
  v24.super_class = AVMetadataBodyObject;
  rect.origin = *&v26.value;
  *&rect.size.width = v26.epoch;
  v22 = v21;
  v23 = v10;
  height = [(AVMetadataObject *)&v24 initWithType:type time:&rect duration:&v22 bounds:dictionary optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:x, y, width, height];
  if (height)
  {
    height->_bodyID = [objc_msgSend(dictionary objectForKeyedSubscript:{*MEMORY[0x1E6990E68]), "integerValue"}];
  }

  return height;
}

- (AVMetadataBodyObject)initWithType:(id)type bodyID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)self0
{
  v14.receiver = self;
  v14.super_class = AVMetadataBodyObject;
  v13 = *time;
  v12 = *duration;
  result = [(AVMetadataObject *)&v14 initWithType:type time:&v13 duration:&v12 bounds:dict optionalInfoDict:object originalMetadataObject:input sourceCaptureInput:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (result)
  {
    result->_bodyID = d;
  }

  return result;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment type:(id)type bodyID:(int64_t)d
{
  v29 = 0uLL;
  v30 = 0;
  if (object)
  {
    [object time];
    v27 = 0uLL;
    v28 = 0;
    [object duration];
  }

  else
  {
    v27 = 0uLL;
    v28 = 0;
  }

  v13 = *(MEMORY[0x1E695F058] + 16);
  v26.origin = *MEMORY[0x1E695F058];
  v26.size = v13;
  [object bounds];
  v14 = *&transform->c;
  v23 = *&transform->a;
  v24 = v14;
  v25 = *&transform->tx;
  if (AVMetadataObjectAdjustBaseClassProperties(&v23, &v26, v15, v16, v17, v18))
  {
    input = [object input];
    v23 = v29;
    *&v24 = v30;
    v21 = v27;
    v22 = v28;
    return [(AVMetadataBodyObject *)self initWithType:type bodyID:d time:&v23 duration:&v21 bounds:0 optionalInfoDict:object originalMetadataObject:*&v26.origin sourceCaptureInput:*&v26.size, input];
  }

  else
  {

    return 0;
  }
}

@end