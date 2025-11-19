@interface AVMetadataSceneClassificationObject
+ (id)sceneClassificationObjectWithConfidences:(id)a3 input:(id)a4 time:(id *)a5;
- (float)_confidenceForKey:(id)a3;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6;
- (id)initSceneClassificationObjectWithConfidences:(id)a3 time:(id *)a4 sourceCaptureInput:(id)a5;
- (void)dealloc;
@end

@implementation AVMetadataSceneClassificationObject

+ (id)sceneClassificationObjectWithConfidences:(id)a3 input:(id)a4 time:(id *)a5
{
  v8 = objc_alloc(objc_opt_class());
  v10 = *a5;
  return [v8 initSceneClassificationObjectWithConfidences:a3 time:&v10 sourceCaptureInput:a4];
}

- (id)initSceneClassificationObjectWithConfidences:(id)a3 time:(id *)a4 sourceCaptureInput:(id)a5
{
  v11.receiver = self;
  v11.super_class = AVMetadataSceneClassificationObject;
  v10 = *a4;
  v8 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v6 = [(AVMetadataObject *)&v11 initWithType:@"sceneClassification" time:&v10 duration:&v8 bounds:0 optionalInfoDict:0 originalMetadataObject:a5 sourceCaptureInput:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    v6->_confidences = [a3 copy];
  }

  return v6;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6
{
  v8 = [a3 confidences];
  if (a3)
  {
    [a3 time];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  return -[AVMetadataSceneClassificationObject initSceneClassificationObjectWithConfidences:time:sourceCaptureInput:](self, "initSceneClassificationObjectWithConfidences:time:sourceCaptureInput:", v8, v10, [a3 input]);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataSceneClassificationObject;
  [(AVMetadataObject *)&v3 dealloc];
}

- (float)_confidenceForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_confidences objectForKeyedSubscript:a3];
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