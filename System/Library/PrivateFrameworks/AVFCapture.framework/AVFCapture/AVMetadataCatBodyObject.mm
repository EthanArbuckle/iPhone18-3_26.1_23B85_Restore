@interface AVMetadataCatBodyObject
+ (AVMetadataCatBodyObject)catBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp;
- (AVMetadataCatBodyObject)initWithBodyID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds;
- (AVMetadataCatBodyObject)initWithBodyID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)input;
- (AVMetadataCatBodyObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
@end

@implementation AVMetadataCatBodyObject

+ (AVMetadataCatBodyObject)catBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp
{
  v5 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceObjectDictionary:dictionary input:input timeStamp:stamp];

  return v5;
}

- (AVMetadataCatBodyObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp
{
  v6.receiver = self;
  v6.super_class = AVMetadataCatBodyObject;
  return [(AVMetadataBodyObject *)&v6 initWithFigEmbeddedCaptureDeviceObjectDictionary:dictionary input:input timeStamp:stamp type:@"catBody"];
}

- (AVMetadataCatBodyObject)initWithBodyID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds
{
  v8 = *time;
  v7 = *duration;
  return [(AVMetadataCatBodyObject *)self initWithBodyID:d time:&v8 duration:&v7 bounds:0 optionalInfoDict:0 originalMetadataObject:0 sourceCaptureInput:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
}

- (AVMetadataCatBodyObject)initWithBodyID:(int64_t)d time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)input
{
  v12.receiver = self;
  v12.super_class = AVMetadataCatBodyObject;
  v11 = *time;
  v10 = *duration;
  return [(AVMetadataBodyObject *)&v12 initWithType:@"catBody" bodyID:d time:&v11 duration:&v10 bounds:dict optionalInfoDict:object originalMetadataObject:bounds.origin.x sourceCaptureInput:bounds.origin.y, bounds.size.width, bounds.size.height, input];
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
  mirroredCopy = mirrored;
  bodyID = [object bodyID];
  v15.receiver = self;
  v15.super_class = AVMetadataCatBodyObject;
  v12 = *&transform->c;
  v14[0] = *&transform->a;
  v14[1] = v12;
  v14[2] = *&transform->tx;
  return [(AVMetadataBodyObject *)&v15 initDerivedMetadataObjectFromMetadataObject:object withTransform:v14 isVideoMirrored:mirroredCopy rollAdjustment:@"catBody" type:bodyID bodyID:adjustment];
}

@end