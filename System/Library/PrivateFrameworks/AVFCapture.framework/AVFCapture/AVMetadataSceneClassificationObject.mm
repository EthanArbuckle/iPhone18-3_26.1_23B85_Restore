@interface AVMetadataSceneClassificationObject
+ (id)sceneClassificationObjectWithConfidences:(id)confidences input:(id)input time:(id *)time;
- (float)_confidenceForKey:(id)key;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
- (id)initSceneClassificationObjectWithConfidences:(id)confidences time:(id *)time sourceCaptureInput:(id)input;
- (void)dealloc;
@end

@implementation AVMetadataSceneClassificationObject

+ (id)sceneClassificationObjectWithConfidences:(id)confidences input:(id)input time:(id *)time
{
  v8 = objc_alloc(objc_opt_class());
  v10 = *time;
  return [v8 initSceneClassificationObjectWithConfidences:confidences time:&v10 sourceCaptureInput:input];
}

- (id)initSceneClassificationObjectWithConfidences:(id)confidences time:(id *)time sourceCaptureInput:(id)input
{
  v11.receiver = self;
  v11.super_class = AVMetadataSceneClassificationObject;
  v10 = *time;
  v8 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v6 = [(AVMetadataObject *)&v11 initWithType:@"sceneClassification" time:&v10 duration:&v8 bounds:0 optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    v6->_confidences = [confidences copy];
  }

  return v6;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  confidences = [object confidences];
  if (object)
  {
    [object time];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  return -[AVMetadataSceneClassificationObject initSceneClassificationObjectWithConfidences:time:sourceCaptureInput:](self, "initSceneClassificationObjectWithConfidences:time:sourceCaptureInput:", confidences, v10, [object input]);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataSceneClassificationObject;
  [(AVMetadataObject *)&v3 dealloc];
}

- (float)_confidenceForKey:(id)key
{
  v3 = [(NSDictionary *)self->_confidences objectForKeyedSubscript:key];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    [(AVMetadataObject *)self time];
    v6 = v21;
  }

  else
  {
    v6 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  v7 = [v3 stringWithFormat:@"<%@: %p, time=%lld", v5, self, v6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  confidences = self->_confidences;
  v9 = [(NSDictionary *)confidences countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(confidences);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [(AVMetadataSceneClassificationObject *)self _confidenceForKey:v13];
        [v7 appendFormat:@", %@: %f", v13, v14];
      }

      v10 = [(NSDictionary *)confidences countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v10);
  }

  [v7 appendString:@">"];
  return v7;
}

@end