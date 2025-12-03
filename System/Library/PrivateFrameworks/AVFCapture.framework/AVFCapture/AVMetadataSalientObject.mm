@interface AVMetadataSalientObject
+ (AVMetadataSalientObject)salientObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp;
- (AVMetadataSalientObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp type:(id)type;
- (AVMetadataSalientObject)initWithObjectID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds;
- (AVMetadataSalientObject)initWithObjectID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)input;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
@end

@implementation AVMetadataSalientObject

+ (AVMetadataSalientObject)salientObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp
{
  v5 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceObjectDictionary:dictionary input:input timeStamp:stamp type:@"salientObject"];

  return v5;
}

- (AVMetadataSalientObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp type:(id)type
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
  v24.super_class = AVMetadataSalientObject;
  rect.origin = *&v26.value;
  *&rect.size.width = v26.epoch;
  v22 = v21;
  v23 = v10;
  height = [(AVMetadataObject *)&v24 initWithType:type time:&rect duration:&v22 bounds:dictionary optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:x, y, width, height];
  if (height)
  {
    height->_objectID = [objc_msgSend(dictionary objectForKeyedSubscript:{*MEMORY[0x1E6990E68]), "integerValue"}];
  }

  return height;
}

- (AVMetadataSalientObject)initWithObjectID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds
{
  v8 = *time;
  v7 = *duration;
  return [(AVMetadataSalientObject *)self initWithObjectID:d time:&v8 duration:&v7 bounds:0 optionalInfoDict:0 originalMetadataObject:0 sourceCaptureInput:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
}

- (AVMetadataSalientObject)initWithObjectID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)input
{
  v13.receiver = self;
  v13.super_class = AVMetadataSalientObject;
  v12 = *time;
  v11 = *duration;
  result = [(AVMetadataObject *)&v13 initWithType:@"salientObject" time:&v12 duration:&v11 bounds:dict optionalInfoDict:object originalMetadataObject:input sourceCaptureInput:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (result)
  {
    result->_objectID = d;
  }

  return result;
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
  v13 = [v11 stringWithFormat:@"<%@: %p, objectID=%d, bounds={%.1f, %.1f %.1fx%.1f}", NSStringFromClass(v12), self, -[AVMetadataSalientObject objectID](self, "objectID"), v4, v6, v8, v10];
  if (self)
  {
    [(AVMetadataObject *)self time];
    v14 = v16;
  }

  else
  {
    v14 = 0;
  }

  [v13 appendFormat:@", time=%lld", v14];
  [v13 appendString:@">"];
  return v13;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  v9 = *(MEMORY[0x1E695F058] + 16);
  v22.origin = *MEMORY[0x1E695F058];
  v22.size = v9;
  [object bounds];
  v10 = *&transform->c;
  v19 = *&transform->a;
  v20 = v10;
  v21 = *&transform->tx;
  if (AVMetadataObjectAdjustBaseClassProperties(&v19, &v22, v11, v12, v13, v14))
  {
    objectID = [object objectID];
    if (object)
    {
      [object time];
      [object duration];
    }

    else
    {
      v19 = 0uLL;
      *&v20 = 0;
      memset(v18, 0, sizeof(v18));
    }

    input = [object input];
    return [(AVMetadataSalientObject *)self initWithObjectID:objectID time:&v19 duration:v18 bounds:0 optionalInfoDict:object originalMetadataObject:input sourceCaptureInput:*&v22.origin, *&v22.size];
  }

  else
  {

    return 0;
  }
}

@end