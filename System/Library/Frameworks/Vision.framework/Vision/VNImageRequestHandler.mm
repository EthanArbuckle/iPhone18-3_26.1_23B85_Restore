@interface VNImageRequestHandler
+ (void)forcedCleanup;
+ (void)forcedCleanupWithOptions:(id)options;
+ (void)requestForcedCleanup;
+ (void)requestForcedCleanupWithOptions:(id)options;
+ (void)requestForcedCleanupWithOptions:(id)options completion:(id)completion;
- (BOOL)performRequests:(id)requests gatheredForensics:(id *)forensics error:(id *)error;
- (VNImageRequestHandler)initWithCGImage:(CGImage *)image orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageRequestHandler)initWithCGImage:(CGImageRef)image orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithCIImage:(CIImage *)image orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithCIImage:(id)image orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageRequestHandler)initWithCMSampleBuffer:(CMSampleBufferRef)sampleBuffer depthData:(AVDepthData *)depthData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithCMSampleBuffer:(CMSampleBufferRef)sampleBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer depthData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageRequestHandler)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageRequestHandler)initWithCVPixelBuffer:(CVPixelBufferRef)pixelBuffer depthData:(AVDepthData *)depthData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithCVPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithCVPixelBuffer:(__CVBuffer *)buffer depthData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageRequestHandler)initWithCVPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageRequestHandler)initWithData:(NSData *)imageData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageRequestHandler)initWithSession:(id)session imageBuffer:(id)buffer;
- (VNImageRequestHandler)initWithURL:(NSURL *)imageURL orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithURL:(id)l orientation:(unsigned int)orientation options:(id)options session:(id)session;
@end

@implementation VNImageRequestHandler

- (VNImageRequestHandler)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer depthData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  v9 = *&orientation;
  dataCopy = data;
  optionsCopy = options;
  sessionCopy = session;
  v15 = objc_autoreleasePoolPush();
  v16 = [[VNImageBuffer alloc] initWithCMSampleBuffer:buffer depthData:dataCopy orientation:v9 options:optionsCopy session:sessionCopy];
  if (v16)
  {
    self = [(VNImageRequestHandler *)self initWithSession:sessionCopy imageBuffer:v16];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  objc_autoreleasePoolPop(v15);
  return selfCopy;
}

- (VNImageRequestHandler)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  v7 = *&orientation;
  optionsCopy = options;
  sessionCopy = session;
  v12 = objc_autoreleasePoolPush();
  v13 = [[VNImageBuffer alloc] initWithCMSampleBuffer:buffer orientation:v7 options:optionsCopy session:sessionCopy];
  if (v13)
  {
    self = [(VNImageRequestHandler *)self initWithSession:sessionCopy imageBuffer:v13];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  objc_autoreleasePoolPop(v12);
  return selfCopy;
}

- (VNImageRequestHandler)initWithData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  v8 = *&orientation;
  dataCopy = data;
  optionsCopy = options;
  sessionCopy = session;
  v13 = objc_autoreleasePoolPush();
  v14 = [[VNImageBuffer alloc] initWithData:dataCopy orientation:v8 options:optionsCopy session:sessionCopy];
  if (v14)
  {
    self = [(VNImageRequestHandler *)self initWithSession:sessionCopy imageBuffer:v14];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  objc_autoreleasePoolPop(v13);
  return selfCopy;
}

- (VNImageRequestHandler)initWithURL:(id)l orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  v8 = *&orientation;
  lCopy = l;
  optionsCopy = options;
  sessionCopy = session;
  v13 = objc_autoreleasePoolPush();
  v14 = [[VNImageBuffer alloc] initWithURL:lCopy orientation:v8 options:optionsCopy session:sessionCopy];
  if (v14)
  {
    self = [(VNImageRequestHandler *)self initWithSession:sessionCopy imageBuffer:v14];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  objc_autoreleasePoolPop(v13);
  return selfCopy;
}

- (VNImageRequestHandler)initWithCIImage:(id)image orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  v8 = *&orientation;
  imageCopy = image;
  optionsCopy = options;
  sessionCopy = session;
  v13 = objc_autoreleasePoolPush();
  v14 = [[VNImageBuffer alloc] initWithCIImage:imageCopy orientation:v8 options:optionsCopy session:sessionCopy];
  if (v14)
  {
    self = [(VNImageRequestHandler *)self initWithSession:sessionCopy imageBuffer:v14];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  objc_autoreleasePoolPop(v13);
  return selfCopy;
}

- (VNImageRequestHandler)initWithCGImage:(CGImage *)image orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  v7 = *&orientation;
  optionsCopy = options;
  sessionCopy = session;
  v12 = objc_autoreleasePoolPush();
  v13 = [[VNImageBuffer alloc] initWithCGImage:image orientation:v7 options:optionsCopy session:sessionCopy];
  if (v13)
  {
    self = [(VNImageRequestHandler *)self initWithSession:sessionCopy imageBuffer:v13];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  objc_autoreleasePoolPop(v12);
  return selfCopy;
}

- (VNImageRequestHandler)initWithCVPixelBuffer:(__CVBuffer *)buffer depthData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  v9 = *&orientation;
  dataCopy = data;
  optionsCopy = options;
  sessionCopy = session;
  v15 = objc_autoreleasePoolPush();
  v16 = [[VNImageBuffer alloc] initWithCVPixelBuffer:buffer depthData:dataCopy orientation:v9 options:optionsCopy session:sessionCopy];
  if (v16)
  {
    self = [(VNImageRequestHandler *)self initWithSession:sessionCopy imageBuffer:v16];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  objc_autoreleasePoolPop(v15);
  return selfCopy;
}

- (VNImageRequestHandler)initWithCVPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  v7 = *&orientation;
  optionsCopy = options;
  sessionCopy = session;
  v12 = objc_autoreleasePoolPush();
  v13 = [[VNImageBuffer alloc] initWithCVPixelBuffer:buffer orientation:v7 options:optionsCopy session:sessionCopy];
  if (v13)
  {
    self = [(VNImageRequestHandler *)self initWithSession:sessionCopy imageBuffer:v13];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  objc_autoreleasePoolPop(v12);
  return selfCopy;
}

- (BOOL)performRequests:(id)requests gatheredForensics:(id *)forensics error:(id *)error
{
  requestsCopy = requests;
  if (forensics)
  {
    v9 = [[VNRequestForensics alloc] initWithOriginalRequests:requestsCopy];
    *forensics = v9;
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [[VNRequestPerformingContext alloc] initWithSession:self->_session requestPerformer:self->_requestPerformer imageBuffer:self->_imageBuffer forensics:v10 observationsCache:self->_observationsCache];
  [(VNRequestPerformingContext *)v12 qosClass];
  requestPerformer = self->_requestPerformer;
  v19 = 0;
  v14 = [(VNRequestPerformer *)requestPerformer performRequests:requestsCopy inContext:v12 error:&v19];
  v15 = v19;

  objc_autoreleasePoolPop(v11);
  if (error)
  {
    v16 = v14;
  }

  else
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    v17 = v15;
    *error = v15;
  }

  return v14;
}

- (VNImageRequestHandler)initWithCMSampleBuffer:(CMSampleBufferRef)sampleBuffer depthData:(AVDepthData *)depthData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v7 = *&orientation;
  v10 = depthData;
  v11 = options;
  v12 = +[VNSession globalSession];
  v13 = [(VNImageRequestHandler *)self initWithCMSampleBuffer:sampleBuffer depthData:v10 orientation:v7 options:v11 session:v12];

  return v13;
}

- (VNImageRequestHandler)initWithCMSampleBuffer:(CMSampleBufferRef)sampleBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v5 = *&orientation;
  v8 = options;
  v9 = +[VNSession globalSession];
  v10 = [(VNImageRequestHandler *)self initWithCMSampleBuffer:sampleBuffer orientation:v5 options:v8 session:v9];

  return v10;
}

- (VNImageRequestHandler)initWithData:(NSData *)imageData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v6 = *&orientation;
  v8 = imageData;
  v9 = options;
  v10 = +[VNSession globalSession];
  v11 = [(VNImageRequestHandler *)self initWithData:v8 orientation:v6 options:v9 session:v10];

  return v11;
}

- (VNImageRequestHandler)initWithURL:(NSURL *)imageURL orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v6 = *&orientation;
  v8 = imageURL;
  v9 = options;
  v10 = +[VNSession globalSession];
  v11 = [(VNImageRequestHandler *)self initWithURL:v8 orientation:v6 options:v9 session:v10];

  return v11;
}

- (VNImageRequestHandler)initWithCIImage:(CIImage *)image orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v6 = *&orientation;
  v8 = image;
  v9 = options;
  v10 = +[VNSession globalSession];
  v11 = [(VNImageRequestHandler *)self initWithCIImage:v8 orientation:v6 options:v9 session:v10];

  return v11;
}

- (VNImageRequestHandler)initWithCGImage:(CGImageRef)image orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v5 = *&orientation;
  v8 = options;
  v9 = +[VNSession globalSession];
  v10 = [(VNImageRequestHandler *)self initWithCGImage:image orientation:v5 options:v8 session:v9];

  return v10;
}

- (VNImageRequestHandler)initWithCVPixelBuffer:(CVPixelBufferRef)pixelBuffer depthData:(AVDepthData *)depthData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v7 = *&orientation;
  v10 = depthData;
  v11 = options;
  v12 = +[VNSession globalSession];
  v13 = [(VNImageRequestHandler *)self initWithCVPixelBuffer:pixelBuffer depthData:v10 orientation:v7 options:v11 session:v12];

  return v13;
}

- (VNImageRequestHandler)initWithCVPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v5 = *&orientation;
  v8 = options;
  v9 = +[VNSession globalSession];
  v10 = [(VNImageRequestHandler *)self initWithCVPixelBuffer:pixelBuffer orientation:v5 options:v8 session:v9];

  return v10;
}

- (VNImageRequestHandler)initWithSession:(id)session imageBuffer:(id)buffer
{
  sessionCopy = session;
  bufferCopy = buffer;
  v16.receiver = self;
  v16.super_class = VNImageRequestHandler;
  v9 = [(VNImageRequestHandler *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    objc_storeStrong(&v10->_imageBuffer, buffer);
    v11 = objc_alloc_init(VNRequestPerformer);
    requestPerformer = v10->_requestPerformer;
    v10->_requestPerformer = v11;

    v13 = objc_alloc_init(VNObservationsCache);
    observationsCache = v10->_observationsCache;
    v10->_observationsCache = v13;
  }

  return v10;
}

+ (void)forcedCleanupWithOptions:(id)options
{
  optionsCopy = options;
  v3 = +[VNSession globalSession];
  [v3 legacyForcedCleanupWithOptions:optionsCopy];
}

+ (void)requestForcedCleanupWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v6 = +[VNSession globalSession];
  [v6 legacyForcedCleanupWithOptions:optionsCopy];
  completionCopy[2](completionCopy);
}

+ (void)requestForcedCleanupWithOptions:(id)options
{
  optionsCopy = options;
  v3 = +[VNSession globalSession];
  [v3 legacyForcedCleanupWithOptions:optionsCopy];
}

+ (void)forcedCleanup
{
  v2 = +[VNSession globalSession];
  [v2 releaseCachedResources];
}

+ (void)requestForcedCleanup
{
  v2 = +[VNSession globalSession];
  [v2 releaseCachedResources];
}

@end