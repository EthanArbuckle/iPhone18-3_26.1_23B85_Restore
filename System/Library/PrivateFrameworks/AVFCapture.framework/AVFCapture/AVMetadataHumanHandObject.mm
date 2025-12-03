@interface AVMetadataHumanHandObject
+ (id)humanHandObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp;
- (AVMetadataHumanHandObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp type:(id)type;
- (AVMetadataHumanHandObject)initWithType:(id)type time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)input;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
- (void)dealloc;
@end

@implementation AVMetadataHumanHandObject

- (AVMetadataHumanHandObject)initWithType:(id)type time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)dict originalMetadataObject:(id)object sourceCaptureInput:(id)input
{
  v19.receiver = self;
  v19.super_class = AVMetadataHumanHandObject;
  v18 = *time;
  v17 = *duration;
  v11 = [(AVMetadataObject *)&v19 initWithType:type time:&v18 duration:&v17 bounds:dict optionalInfoDict:object originalMetadataObject:input sourceCaptureInput:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (v11)
  {
    if (dict)
    {
      v12 = [dict objectForKeyedSubscript:*MEMORY[0x1E6990FA0]];
      if (v12)
      {
        v11->_hasConfidence = 1;
        v11->_confidence = ([v12 intValue] / 1000.0);
      }

      v13 = [dict objectForKeyedSubscript:*MEMORY[0x1E6990E58]];
      if (v13)
      {
        v11->_hasChirality = 1;
        intValue = [v13 intValue];
LABEL_10:
        v11->_chirality = intValue;
      }
    }

    else if (object && [object isMemberOfClass:objc_opt_class()])
    {
      v11->_hasConfidence = [object hasConfidence];
      [object confidence];
      v11->_confidence = v15;
      v11->_hasChirality = [object hasChirality];
      intValue = [object chirality];
      goto LABEL_10;
    }
  }

  return v11;
}

+ (id)humanHandObjectWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp
{
  v5 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceObjectDictionary:dictionary input:input timeStamp:stamp type:@"humanHand"];

  return v5;
}

- (AVMetadataHumanHandObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp type:(id)type
{
  v18 = *MEMORY[0x1E6960C70];
  *&v23.value = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v23.epoch = v9;
  v10 = MEMORY[0x1E695F058];
  if (stamp)
  {
    [stamp longLongValue];
    v11 = FigHostTimeToNanoseconds();
    CMTimeMake(&v23, v11, 1000000000);
  }

  x = *v10;
  y = v10[1];
  width = v10[2];
  height = v10[3];
  v16 = [dictionary objectForKeyedSubscript:{*MEMORY[0x1E69910D8], v18}];
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
  return [(AVMetadataHumanHandObject *)self initWithType:@"humanHand" time:&rect duration:&v20 bounds:dictionary optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:x, y, width, height];
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

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  v9 = *(MEMORY[0x1E695F058] + 16);
  v21.origin = *MEMORY[0x1E695F058];
  v21.size = v9;
  [object bounds];
  v10 = *&transform->c;
  v18 = *&transform->a;
  v19 = v10;
  v20 = *&transform->tx;
  if (AVMetadataObjectAdjustBaseClassProperties(&v18, &v21, v11, v12, v13, v14))
  {
    if (object)
    {
      [object time];
      [object duration];
    }

    else
    {
      v18 = 0uLL;
      *&v19 = 0;
      memset(v17, 0, sizeof(v17));
    }

    input = [object input];
    return [(AVMetadataHumanHandObject *)self initWithType:@"humanHand" time:&v18 duration:v17 bounds:0 optionalInfoDict:object originalMetadataObject:input sourceCaptureInput:*&v21.origin, *&v21.size];
  }

  else
  {

    return 0;
  }
}

@end