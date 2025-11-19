@interface AVMetadataDogBodyObject
+ (AVMetadataDogBodyObject)dogBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5;
- (AVMetadataDogBodyObject)initWithBodyID:(int64_t)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6;
- (AVMetadataDogBodyObject)initWithBodyID:(int64_t)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6 optionalInfoDict:(id)a7 originalMetadataObject:(id)a8 sourceCaptureInput:(id)a9;
- (AVMetadataDogBodyObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6;
@end

@implementation AVMetadataDogBodyObject

+ (AVMetadataDogBodyObject)dogBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceObjectDictionary:a3 input:a4 timeStamp:a5];

  return v5;
}

- (AVMetadataDogBodyObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5
{
  v6.receiver = self;
  v6.super_class = AVMetadataDogBodyObject;
  return [(AVMetadataBodyObject *)&v6 initWithFigEmbeddedCaptureDeviceObjectDictionary:a3 input:a4 timeStamp:a5 type:@"dogBody"];
}

- (AVMetadataDogBodyObject)initWithBodyID:(int64_t)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6
{
  v8 = *a4;
  v7 = *a5;
  return [(AVMetadataDogBodyObject *)self initWithBodyID:a3 time:&v8 duration:&v7 bounds:0 optionalInfoDict:0 originalMetadataObject:0 sourceCaptureInput:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
}

- (AVMetadataDogBodyObject)initWithBodyID:(int64_t)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6 optionalInfoDict:(id)a7 originalMetadataObject:(id)a8 sourceCaptureInput:(id)a9
{
  v12.receiver = self;
  v12.super_class = AVMetadataDogBodyObject;
  v11 = *a4;
  v10 = *a5;
  return [(AVMetadataBodyObject *)&v12 initWithType:@"dogBody" bodyID:a3 time:&v11 duration:&v10 bounds:a7 optionalInfoDict:a8 originalMetadataObject:a6.origin.x sourceCaptureInput:a6.origin.y, a6.size.width, a6.size.height, a9];
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

- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6
{
  v7 = a5;
  v11 = [a3 bodyID];
  v15.receiver = self;
  v15.super_class = AVMetadataDogBodyObject;
  v12 = *&a4->c;
  v14[0] = *&a4->a;
  v14[1] = v12;
  v14[2] = *&a4->tx;
  return [(AVMetadataBodyObject *)&v15 initDerivedMetadataObjectFromMetadataObject:a3 withTransform:v14 isVideoMirrored:v7 rollAdjustment:@"dogBody" type:v11 bodyID:a6];
}

@end