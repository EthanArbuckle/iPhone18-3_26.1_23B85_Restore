@interface AVMetadataHumanBodyObject
+ (AVMetadataHumanBodyObject)humanBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp;
- (AVMetadataHumanBodyObject)initWithBodyID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds;
- (AVMetadataHumanBodyObject)initWithBodyID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)input;
- (AVMetadataHumanBodyObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
@end

@implementation AVMetadataHumanBodyObject

+ (AVMetadataHumanBodyObject)humanBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp
{
  v5 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceObjectDictionary:dictionary input:input timeStamp:stamp];

  return v5;
}

- (AVMetadataHumanBodyObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp
{
  v9.receiver = self;
  v9.super_class = AVMetadataHumanBodyObject;
  v6 = [(AVMetadataBodyObject *)&v9 initWithFigEmbeddedCaptureDeviceObjectDictionary:dictionary input:input timeStamp:stamp type:@"humanBody"];
  if (v6)
  {
    v7 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6990FA0]];
    if (v7)
    {
      v6->_hasConfidence = 1;
      v6->_confidence = ([v7 intValue] / 1000.0);
    }
  }

  return v6;
}

- (AVMetadataHumanBodyObject)initWithBodyID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds
{
  v8 = *time;
  v7 = *duration;
  return [(AVMetadataHumanBodyObject *)self initWithBodyID:d time:&v8 duration:&v7 bounds:0 optionalInfoDict:0 originalMetadataObject:0 sourceCaptureInput:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
}

- (AVMetadataHumanBodyObject)initWithBodyID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)input
{
  v12.receiver = self;
  v12.super_class = AVMetadataHumanBodyObject;
  v11 = *time;
  v10 = *duration;
  return [(AVMetadataBodyObject *)&v12 initWithType:@"humanBody" bodyID:d time:&v11 duration:&v10 bounds:dict optionalInfoDict:object originalMetadataObject:bounds.origin.x sourceCaptureInput:bounds.origin.y, bounds.size.width, bounds.size.height, input];
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
  v13 = [v11 stringWithFormat:@"<%@: %p, bodyID=%d, bounds={%.1f, %.1f %.1fx%.1f}", NSStringFromClass(v12), self, -[AVMetadataBodyObject bodyID](self, "bodyID"), v4, v6, v8, v10];
  if ([(AVMetadataHumanBodyObject *)self hasConfidence])
  {
    [(AVMetadataHumanBodyObject *)self confidence];
    [v13 appendFormat:@", confidence=(%f)", v14];
  }

  if (self)
  {
    [(AVMetadataObject *)self time];
    v15 = v17;
  }

  else
  {
    v15 = 0;
  }

  [v13 appendFormat:@", time=%lld", v15];
  [v13 appendString:@">"];
  return v13;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  mirroredCopy = mirrored;
  bodyID = [object bodyID];
  v17.receiver = self;
  v17.super_class = AVMetadataHumanBodyObject;
  v12 = *&transform->c;
  v16[0] = *&transform->a;
  v16[1] = v12;
  v16[2] = *&transform->tx;
  v13 = [(AVMetadataBodyObject *)&v17 initDerivedMetadataObjectFromMetadataObject:object withTransform:v16 isVideoMirrored:mirroredCopy rollAdjustment:@"humanBody" type:bodyID bodyID:adjustment];
  if (v13)
  {
    v13[24] = [object hasConfidence];
    [object confidence];
    *(v13 + 4) = v14;
  }

  return v13;
}

@end