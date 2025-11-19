@interface AVMetadataHumanHandObject
+ (id)humanHandObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5;
- (AVMetadataHumanHandObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5 type:(id)a6;
- (AVMetadataHumanHandObject)initWithType:(id)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6 optionalInfoDict:(id)a7 originalMetadataObject:(id)a8 sourceCaptureInput:(id)a9;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6;
- (void)dealloc;
@end

@implementation AVMetadataHumanHandObject

- (AVMetadataHumanHandObject)initWithType:(id)a3 time:(id *)a4 duration:(id *)a5 bounds:(CGRect)a6 optionalInfoDict:(id)a7 originalMetadataObject:(id)a8 sourceCaptureInput:(id)a9
{
  v19.receiver = self;
  v19.super_class = AVMetadataHumanHandObject;
  v18 = *a4;
  v17 = *a5;
  v11 = [(AVMetadataObject *)&v19 initWithType:a3 time:&v18 duration:&v17 bounds:a7 optionalInfoDict:a8 originalMetadataObject:a9 sourceCaptureInput:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
  if (v11)
  {
    if (a7)
    {
      v12 = [a7 objectForKeyedSubscript:*MEMORY[0x1E6990FA0]];
      if (v12)
      {
        v11->_hasConfidence = 1;
        v11->_confidence = ([v12 intValue] / 1000.0);
      }

      v13 = [a7 objectForKeyedSubscript:*MEMORY[0x1E6990E58]];
      if (v13)
      {
        v11->_hasChirality = 1;
        v14 = [v13 intValue];
LABEL_10:
        v11->_chirality = v14;
      }
    }

    else if (a8 && [a8 isMemberOfClass:objc_opt_class()])
    {
      v11->_hasConfidence = [a8 hasConfidence];
      [a8 confidence];
      v11->_confidence = v15;
      v11->_hasChirality = [a8 hasChirality];
      v14 = [a8 chirality];
      goto LABEL_10;
    }
  }

  return v11;
}

+ (id)humanHandObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceObjectDictionary:a3 input:a4 timeStamp:a5 type:@"humanHand"];

  return v5;
}

- (AVMetadataHumanHandObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5 type:(id)a6
{
  v18 = *MEMORY[0x1E6960C70];
  *&v23.value = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v23.epoch = v9;
  v10 = MEMORY[0x1E695F058];
  if (a5)
  {
    [a5 longLongValue];
    v11 = FigHostTimeToNanoseconds();
    CMTimeMake(&v23, v11, 1000000000);
  }

  x = *v10;
  y = v10[1];
  width = v10[2];
  height = v10[3];
  v16 = [a3 objectForKeyedSubscript:{*MEMORY[0x1E69910D8], v18}];
  if (v16)
  {
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(v16, &rect))
    {
      x = rect.origin.x;
      y = rect.origin.y;
      width = rect.size.width;
      height = rect.size.height;
    }
  }

  rect.origin = *&v23.value;
  *&rect.size.width = v23.epoch;
  v20 = v19;
  v21 = v9;
  return [(AVMetadataHumanHandObject *)self initWithType:@"humanHand" time:&rect duration:&v20 bounds:a3 optionalInfoDict:0 originalMetadataObject:a4 sourceCaptureInput:x, y, width, height];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVMetadataHumanHandObject;
  [(AVMetadataObject *)&v2 dealloc];
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
  v13 = [v11 stringWithFormat:@"<%@: %p, objectID=%d, bounds={%.1f, %.1f %.1fx%.1f}", NSStringFromClass(v12), self, -[AVMetadataObject objectID](self, "objectID"), v4, v6, v8, v10];
  if ([(AVMetadataObject *)self groupID]!= -1)
  {
    [v13 appendFormat:@", groupID:(%d)", -[AVMetadataObject groupID](self, "groupID")];
  }

  if ([(AVMetadataHumanHandObject *)self hasConfidence])
  {
    [(AVMetadataHumanHandObject *)self confidence];
    [v13 appendFormat:@", confidence=(%f)", v14];
  }

  if ([(AVMetadataHumanHandObject *)self hasChirality])
  {
    [v13 appendFormat:@", chirality=(%d)", -[AVMetadataHumanHandObject chirality](self, "chirality")];
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
  v9 = *(MEMORY[0x1E695F058] + 16);
  v21.origin = *MEMORY[0x1E695F058];
  v21.size = v9;
  [a3 bounds];
  v10 = *&a4->c;
  v18 = *&a4->a;
  v19 = v10;
  v20 = *&a4->tx;
  if (AVMetadataObjectAdjustBaseClassProperties(&v18, &v21, v11, v12, v13, v14))
  {
    if (a3)
    {
      [a3 time];
      [a3 duration];
    }

    else
    {
      v18 = 0uLL;
      *&v19 = 0;
      memset(v17, 0, sizeof(v17));
    }

    v16 = [a3 input];
    return [(AVMetadataHumanHandObject *)self initWithType:@"humanHand" time:&v18 duration:v17 bounds:0 optionalInfoDict:a3 originalMetadataObject:v16 sourceCaptureInput:*&v21.origin, *&v21.size];
  }

  else
  {

    return 0;
  }
}

@end