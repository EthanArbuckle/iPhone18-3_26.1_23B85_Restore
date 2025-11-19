@interface Recognizer
+ (id)recognizer_B238;
+ (id)recognizer_B520;
- (BOOL)handleVNRequest:(id)a3 withHandler:(id)a4 error:(id *)a5;
- (BOOL)recognize:(__CVBuffer *)a3 error:(id *)a4;
- (CGRect)cropRect;
- (Recognizer)initWithClassifier:(id)a3;
- (id)getSceneprintForImage:(__CVBuffer *)a3 error:(id *)a4;
- (id)getVisionFrameworkVersion;
- (void)processImage:(__CVBuffer *)a3 withTimestamp:(id *)a4;
@end

@implementation Recognizer

+ (id)recognizer_B238
{
  v2 = [a1 alloc];
  v3 = objc_alloc_init(HPdetector_SceneClassifier_B238);
  v4 = [v2 initWithClassifier:v3];

  return v4;
}

+ (id)recognizer_B520
{
  v2 = [a1 alloc];
  v3 = objc_alloc_init(HPdetector_SceneClassifier_B520);
  v4 = [v2 initWithClassifier:v3];

  [v4 setThreshold:0.9];
  [v4 setDetectionOutputIsDouble:0];

  return v4;
}

- (Recognizer)initWithClassifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = Recognizer;
  v6 = [(Recognizer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    size = CGRectNull.size;
    v6->_cropRect.origin = CGRectNull.origin;
    v6->_cropRect.size = size;
    objc_storeStrong(&v6->_classifier, a3);
    v7->_threshold = 0.5;
    v7->_detectionOutputIsDouble = 1;
    [(Recognizer *)v7 reset];
  }

  return v7;
}

- (void)processImage:(__CVBuffer *)a3 withTimestamp:(id *)a4
{
  CVPixelBufferRetain(a3);
  var3 = a4->var3;
  *&self->_lastProcessedImageTime.value = *&a4->var0;
  self->_lastProcessedImageTime.epoch = var3;
  v11 = 0;
  v8 = [(Recognizer *)self recognize:a3 error:&v11];
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
    v10 = *&a4->var0;
    self->_recognitionTime.epoch = a4->var3;
    *&self->_recognitionTime.value = v10;
  }

  CVPixelBufferRelease(a3);
}

- (BOOL)recognize:(__CVBuffer *)a3 error:(id *)a4
{
  v6 = [(Recognizer *)self getSceneprintForImage:a3 error:?];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 descriptorData];
    v9 = [v8 bytes];

    v10 = [MLMultiArray alloc];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 elementCount]);
    v12 = [NSArray arrayWithObject:v11];
    v13 = [NSNumber numberWithInt:1];
    v14 = [NSArray arrayWithObject:v13];
    v15 = [v10 initWithDataPointer:v9 shape:v12 dataType:65568 strides:v14 deallocator:0 error:a4];

    if (a4 && *a4)
    {
      v16 = 0;
    }

    else
    {
      v16 = [(RecognizerClassifier *)self->_classifier predictionFromImageDescriptors:v15 error:a4];
      if (!a4 || !*a4)
      {
        v18 = [(Recognizer *)self detectionOutputIsDouble];
        v19 = [v16 HomePodDetected];
        v20 = [v19 dataPointer];

        if (v18)
        {
          v21 = *v20;
        }

        else
        {
          v21 = *v20;
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

- (id)getSceneprintForImage:(__CVBuffer *)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  if (CGRectIsNull(self->_cropRect))
  {
    v8 = [[VNImageRequestHandler alloc] initWithCVPixelBuffer:a3 options:&__NSDictionary0__struct];
  }

  else
  {
    v9 = [CIImage imageWithCVPixelBuffer:a3];
    v10 = [v9 imageByCroppingToRect:{self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height}];

    v8 = [[VNImageRequestHandler alloc] initWithCIImage:v10 options:&__NSDictionary0__struct];
  }

  v11 = objc_alloc_init(VNCreateSceneprintRequest);
  [v11 setRevision:2];
  [(Recognizer *)self handleVNRequest:v11 withHandler:v8 error:a4];
  v12 = [v11 results];
  v13 = [v12 firstObject];

  v14 = [v13 sceneprints];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [v13 sceneprints];
    v17 = [v16 objectAtIndexedSubscript:0];
LABEL_8:

    goto LABEL_9;
  }

  if (a4)
  {
    v16 = [NSDictionary dictionaryWithObject:@"VNObservation returned nothing." forKey:NSLocalizedDescriptionKey];
    [NSError errorWithDomain:@"com.apple.sauron.recognizer.ErrorDomain" code:1 userInfo:v16];
    *a4 = v17 = 0;
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

- (BOOL)handleVNRequest:(id)a3 withHandler:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [NSMutableArray arrayWithObjects:v7, 0];
  v10 = [v8 performRequests:v9 error:a5];

  if (!v10)
  {
    goto LABEL_10;
  }

  if (!v7)
  {
    if (!a5)
    {
      goto LABEL_11;
    }

    v13 = @"VNRequest returned nil.";
    goto LABEL_9;
  }

  v11 = [v7 results];
  v12 = [v11 count];

  if (v12 != 1)
  {
    if (!a5)
    {
      goto LABEL_11;
    }

    v13 = @"VNRequest returned unexpected results count.";
LABEL_9:
    v14 = [NSDictionary dictionaryWithObject:v13 forKey:NSLocalizedDescriptionKey];
    *a5 = [NSError errorWithDomain:@"com.apple.sauron.recognizer.ErrorDomain" code:1 userInfo:v14];

LABEL_10:
    LOBYTE(a5) = 0;
    goto LABEL_11;
  }

  LOBYTE(a5) = 1;
LABEL_11:

  return a5;
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