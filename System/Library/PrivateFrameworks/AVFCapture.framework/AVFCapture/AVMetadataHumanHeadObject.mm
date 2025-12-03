@interface AVMetadataHumanHeadObject
+ (id)humanHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp;
- (AVMetadataHumanHeadObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp type:(id)type;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
@end

@implementation AVMetadataHumanHeadObject

+ (id)humanHeadObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp
{
  v5 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceObjectDictionary:dictionary input:input timeStamp:stamp type:@"humanHead"];

  return v5;
}

- (AVMetadataHumanHeadObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp type:(id)type
{
  v19 = *MEMORY[0x1E6960C70];
  *&v25.value = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  v25.epoch = v10;
  v11 = MEMORY[0x1E695F058];
  if (stamp)
  {
    [stamp longLongValue];
    v12 = FigHostTimeToNanoseconds();
    CMTimeMake(&v25, v12, 1000000000);
  }

  x = *v11;
  y = v11[1];
  width = v11[2];
  height = v11[3];
  v17 = [dictionary objectForKeyedSubscript:{*MEMORY[0x1E69910D8], v19}];
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

  v23.receiver = self;
  v23.super_class = AVMetadataHumanHeadObject;
  rect.origin = *&v25.value;
  *&rect.size.width = v25.epoch;
  v21 = v20;
  v22 = v10;
  return [(AVMetadataObject *)&v23 initWithType:type time:&rect duration:&v21 bounds:dictionary optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:x, y, width, height];
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
  v13 = [v11 stringWithFormat:@"<%@: %p, objectID=%ld, bounds={%.1f, %.1f %.1fx%.1f}", NSStringFromClass(v12), self, -[AVMetadataObject objectID](self, "objectID"), v4, v6, v8, v10];
  [v13 appendFormat:@", groupID=%ld, syntheticFocusMode=%lu", -[AVMetadataObject groupID](self, "groupID"), -[AVMetadataObject syntheticFocusMode](self, "syntheticFocusMode")];
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
    v17.receiver = self;
    v17.super_class = AVMetadataHumanHeadObject;
    return [(AVMetadataObject *)&v17 initWithType:@"humanHead" time:&v19 duration:v18 bounds:0 optionalInfoDict:object originalMetadataObject:input sourceCaptureInput:*&v22.origin, *&v22.size];
  }

  else
  {

    return 0;
  }
}

@end