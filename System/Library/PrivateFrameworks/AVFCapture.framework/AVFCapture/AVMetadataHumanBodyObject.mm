@interface AVMetadataHumanBodyObject
+ (AVMetadataHumanBodyObject)humanBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5;
- (AVMetadataHumanBodyObject)initWithBodyID:(int64_t)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6;
- (AVMetadataHumanBodyObject)initWithBodyID:(int64_t)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6 optionalInfoDict:(id)a7 originalMetadataObject:(id)a8 sourceCaptureInput:(id)a9;
- (AVMetadataHumanBodyObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6;
@end

@implementation AVMetadataHumanBodyObject

+ (AVMetadataHumanBodyObject)humanBodyObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceObjectDictionary:a3 input:a4 timeStamp:a5];

  return v5;
}

- (AVMetadataHumanBodyObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5
{
  v9.receiver = self;
  v9.super_class = AVMetadataHumanBodyObject;
  v6 = [(AVMetadataBodyObject *)&v9 initWithFigEmbeddedCaptureDeviceObjectDictionary:a3 input:a4 timeStamp:a5 type:@"humanBody"];
  if (v6)
  {
    v7 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6990FA0]];
    if (v7)
    {
      v6->_hasConfidence = 1;
      v6->_confidence = ([v7 intValue] / 1000.0);
    }
  }

  return v6;
}

- (AVMetadataHumanBodyObject)initWithBodyID:(int64_t)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6
{
  v8 = *a4;
  v7 = *a5;
  return [(AVMetadataHumanBodyObject *)self initWithBodyID:a3 time:&v8 duration:&v7 bounds:0 optionalInfoDict:0 originalMetadataObject:0 sourceCaptureInput:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
}

- (AVMetadataHumanBodyObject)initWithBodyID:(int64_t)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6 optionalInfoDict:(id)a7 originalMetadataObject:(id)a8 sourceCaptureInput:(id)a9
{
  v12.receiver = self;
  v12.super_class = AVMetadataHumanBodyObject;
  v11 = *a4;
  v10 = *a5;
  return [(AVMetadataBodyObject *)&v12 initWithType:@"humanBody" bodyID:a3 time:&v11 duration:&v10 bounds:a7 optionalInfoDict:a8 originalMetadataObject:a6.origin.x sourceCaptureInput:a6.origin.y, a6.size.width, a6.size.height, a9];
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

- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6
{
  v7 = a5;
  v11 = [a3 bodyID];
  v17.receiver = self;
  v17.super_class = AVMetadataHumanBodyObject;
  v12 = *&a4->c;
  v16[0] = *&a4->a;
  v16[1] = v12;
  v16[2] = *&a4->tx;
  v13 = [(AVMetadataBodyObject *)&v17 initDerivedMetadataObjectFromMetadataObject:a3 withTransform:v16 isVideoMirrored:v7 rollAdjustment:@"humanBody" type:v11 bodyID:a6];
  if (v13)
  {
    v13[24] = [a3 hasConfidence];
    [a3 confidence];
    *(v13 + 4) = v14;
  }

  return v13;
}

@end