@interface Recognizer
+ (id)recognizer_B238;
+ (id)recognizer_B520;
- (BOOL)handleVNRequest:(id)request withHandler:(id)handler error:(id *)error;
- (BOOL)recognize:(__CVBuffer *)recognize error:(id *)error;
- (CGRect)cropRect;
- (Recognizer)initWithClassifier:(id)classifier;
- (id)getSceneprintForImage:(__CVBuffer *)image error:(id *)error;
- (id)getVisionFrameworkVersion;
- (void)processImage:(__CVBuffer *)image withTimestamp:(id *)timestamp;
@end

@implementation Recognizer

+ (id)recognizer_B238
{
  v2 = [self alloc];
  v3 = objc_alloc_init(HPdetector_SceneClassifier_B238);
  v4 = [v2 initWithClassifier:v3];

  return v4;
}

+ (id)recognizer_B520
{
  v2 = [self alloc];
  v3 = objc_alloc_init(HPdetector_SceneClassifier_B520);
  v4 = [v2 initWithClassifier:v3];

  [v4 setThreshold:0.9];
  [v4 setDetectionOutputIsDouble:0];

  return v4;
}

- (Recognizer)initWithClassifier:(id)classifier
{
  classifierCopy = classifier;
  v10.receiver = self;
  v10.super_class = Recognizer;
  v6 = [(Recognizer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    size = CGRectNull.size;
    v6->_cropRect.origin = CGRectNull.origin;
    v6->_cropRect.size = size;
    objc_storeStrong(&v6->_classifier, classifier);
    v7->_threshold = 0.5;
    v7->_detectionOutputIsDouble = 1;
    [(Recognizer *)v7 reset];
  }

  return v7;
}

- (void)processImage:(__CVBuffer *)image withTimestamp:(id *)timestamp
{
  CVPixelBufferRetain(image);
  var3 = timestamp->var3;
  *&self->_lastProcessedImageTime.value = *&timestamp->var0;
  self->_lastProcessedImageTime.epoch = var3;
  v11 = 0;
  v8 = [(Recognizer *)self recognize:image error:&v11];
  if (v11)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
    v10 = *&timestamp->var0;
    self->_recognitionTime.epoch = timestamp->var3;
    *&self->_recognitionTime.value = v10;
  }

  CVPixelBufferRelease(image);
}

- (BOOL)recognize:(__CVBuffer *)recognize error:(id *)error
{
  v6 = [(Recognizer *)self getSceneprintForImage:recognize error:?];
  v7 = v6;
  if (v6)
  {
    descriptorData = [v6 descriptorData];
    bytes = [descriptorData bytes];

    v10 = [MLMultiArray alloc];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 elementCount]);
    v12 = [NSArray arrayWithObject:v11];
    v13 = [NSNumber numberWithInt:1];
    v14 = [NSArray arrayWithObject:v13];
    v15 = [v10 initWithDataPointer:bytes shape:v12 dataType:65568 strides:v14 deallocator:0 error:error];

    if (error && *error)
    {
      v16 = 0;
    }

    else
    {
      v16 = [(RecognizerClassifier *)self->_classifier predictionFromImageDescriptors:v15 error:error];
      if (!error || !*error)
      {
        detectionOutputIsDouble = [(Recognizer *)self detectionOutputIsDouble];
        homePodDetected = [v16 HomePodDetected];
        dataPointer = [homePodDetected dataPointer];

        if (detectionOutputIsDouble)
        {
          v21 = *dataPointer;
        }

        else
        {
          v21 = *dataPointer;
        }

        self->_confidence = v21;
        [(Recognizer *)self threshold];
        v17 = v21 > v22;
        [(Recognizer *)self threshold];
        goto LABEL_13;
      }
    }

    v17 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v17 = 0;
LABEL_14:

  return v17;
}

- (id)getSceneprintForImage:(__CVBuffer *)image error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  if (CGRectIsNull(self->_cropRect))
  {
    v8 = [[VNImageRequestHandler alloc] initWithCVPixelBuffer:image options:&__NSDictionary0__struct];
  }

  else
  {
    v9 = [CIImage imageWithCVPixelBuffer:image];
    v10 = [v9 imageByCroppingToRect:{self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height}];

    v8 = [[VNImageRequestHandler alloc] initWithCIImage:v10 options:&__NSDictionary0__struct];
  }

  v11 = objc_alloc_init(VNCreateSceneprintRequest);
  [v11 setRevision:2];
  [(Recognizer *)self handleVNRequest:v11 withHandler:v8 error:error];
  results = [v11 results];
  firstObject = [results firstObject];

  sceneprints = [firstObject sceneprints];
  v15 = [sceneprints count];

  if (v15)
  {
    sceneprints2 = [firstObject sceneprints];
    v17 = [sceneprints2 objectAtIndexedSubscript:0];
LABEL_8:

    goto LABEL_9;
  }

  if (error)
  {
    sceneprints2 = [NSDictionary dictionaryWithObject:@"VNObservation returned nothing." forKey:NSLocalizedDescriptionKey];
    [NSError errorWithDomain:@"com.apple.sauron.recognizer.ErrorDomain" code:1 userInfo:sceneprints2];
    *error = v17 = 0;
    goto LABEL_8;
  }

  v17 = 0;
LABEL_9:

  objc_autoreleasePoolPop(v7);
  if (v15)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)handleVNRequest:(id)request withHandler:(id)handler error:(id *)error
{
  requestCopy = request;
  handlerCopy = handler;
  v9 = [NSMutableArray arrayWithObjects:requestCopy, 0];
  v10 = [handlerCopy performRequests:v9 error:error];

  if (!v10)
  {
    goto LABEL_10;
  }

  if (!requestCopy)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v13 = @"VNRequest returned nil.";
    goto LABEL_9;
  }

  results = [requestCopy results];
  v12 = [results count];

  if (v12 != 1)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v13 = @"VNRequest returned unexpected results count.";
LABEL_9:
    v14 = [NSDictionary dictionaryWithObject:v13 forKey:NSLocalizedDescriptionKey];
    *error = [NSError errorWithDomain:@"com.apple.sauron.recognizer.ErrorDomain" code:1 userInfo:v14];

LABEL_10:
    LOBYTE(error) = 0;
    goto LABEL_11;
  }

  LOBYTE(error) = 1;
LABEL_11:

  return error;
}

- (id)getVisionFrameworkVersion
{
  if (qword_100104EB0 != -1)
  {
    sub_1000B4D9C();
  }

  v3 = off_100101170;

  return v3;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end