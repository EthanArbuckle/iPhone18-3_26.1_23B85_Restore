@interface VNImageRequestHandler
+ (void)forcedCleanup;
+ (void)forcedCleanupWithOptions:(id)a3;
+ (void)requestForcedCleanup;
+ (void)requestForcedCleanupWithOptions:(id)a3;
+ (void)requestForcedCleanupWithOptions:(id)a3 completion:(id)a4;
- (BOOL)performRequests:(id)a3 gatheredForensics:(id *)a4 error:(id *)a5;
- (VNImageRequestHandler)initWithCGImage:(CGImage *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6;
- (VNImageRequestHandler)initWithCGImage:(CGImageRef)image orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithCIImage:(CIImage *)image orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithCIImage:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6;
- (VNImageRequestHandler)initWithCMSampleBuffer:(CMSampleBufferRef)sampleBuffer depthData:(AVDepthData *)depthData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithCMSampleBuffer:(CMSampleBufferRef)sampleBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)a3 depthData:(id)a4 orientation:(unsigned int)a5 options:(id)a6 session:(id)a7;
- (VNImageRequestHandler)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6;
- (VNImageRequestHandler)initWithCVPixelBuffer:(CVPixelBufferRef)pixelBuffer depthData:(AVDepthData *)depthData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithCVPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithCVPixelBuffer:(__CVBuffer *)a3 depthData:(id)a4 orientation:(unsigned int)a5 options:(id)a6 session:(id)a7;
- (VNImageRequestHandler)initWithCVPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6;
- (VNImageRequestHandler)initWithData:(NSData *)imageData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithData:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6;
- (VNImageRequestHandler)initWithSession:(id)a3 imageBuffer:(id)a4;
- (VNImageRequestHandler)initWithURL:(NSURL *)imageURL orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNImageRequestHandler)initWithURL:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6;
@end

@implementation VNImageRequestHandler

- (VNImageRequestHandler)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)a3 depthData:(id)a4 orientation:(unsigned int)a5 options:(id)a6 session:(id)a7
{
  v9 = *&a5;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = objc_autoreleasePoolPush();
  v16 = [[VNImageBuffer alloc] initWithCMSampleBuffer:a3 depthData:v12 orientation:v9 options:v13 session:v14];
  if (v16)
  {
    self = [(VNImageRequestHandler *)self initWithSession:v14 imageBuffer:v16];
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  objc_autoreleasePoolPop(v15);
  return v17;
}

- (VNImageRequestHandler)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6
{
  v7 = *&a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = [[VNImageBuffer alloc] initWithCMSampleBuffer:a3 orientation:v7 options:v10 session:v11];
  if (v13)
  {
    self = [(VNImageRequestHandler *)self initWithSession:v11 imageBuffer:v13];
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v12);
  return v14;
}

- (VNImageRequestHandler)initWithData:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = [[VNImageBuffer alloc] initWithData:v10 orientation:v8 options:v11 session:v12];
  if (v14)
  {
    self = [(VNImageRequestHandler *)self initWithSession:v12 imageBuffer:v14];
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v13);
  return v15;
}

- (VNImageRequestHandler)initWithURL:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = [[VNImageBuffer alloc] initWithURL:v10 orientation:v8 options:v11 session:v12];
  if (v14)
  {
    self = [(VNImageRequestHandler *)self initWithSession:v12 imageBuffer:v14];
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v13);
  return v15;
}

- (VNImageRequestHandler)initWithCIImage:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = [[VNImageBuffer alloc] initWithCIImage:v10 orientation:v8 options:v11 session:v12];
  if (v14)
  {
    self = [(VNImageRequestHandler *)self initWithSession:v12 imageBuffer:v14];
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v13);
  return v15;
}

- (VNImageRequestHandler)initWithCGImage:(CGImage *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6
{
  v7 = *&a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = [[VNImageBuffer alloc] initWithCGImage:a3 orientation:v7 options:v10 session:v11];
  if (v13)
  {
    self = [(VNImageRequestHandler *)self initWithSession:v11 imageBuffer:v13];
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v12);
  return v14;
}

- (VNImageRequestHandler)initWithCVPixelBuffer:(__CVBuffer *)a3 depthData:(id)a4 orientation:(unsigned int)a5 options:(id)a6 session:(id)a7
{
  v9 = *&a5;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = objc_autoreleasePoolPush();
  v16 = [[VNImageBuffer alloc] initWithCVPixelBuffer:a3 depthData:v12 orientation:v9 options:v13 session:v14];
  if (v16)
  {
    self = [(VNImageRequestHandler *)self initWithSession:v14 imageBuffer:v16];
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  objc_autoreleasePoolPop(v15);
  return v17;
}

- (VNImageRequestHandler)initWithCVPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6
{
  v7 = *&a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = [[VNImageBuffer alloc] initWithCVPixelBuffer:a3 orientation:v7 options:v10 session:v11];
  if (v13)
  {
    self = [(VNImageRequestHandler *)self initWithSession:v11 imageBuffer:v13];
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v12);
  return v14;
}

- (BOOL)performRequests:(id)a3 gatheredForensics:(id *)a4 error:(id *)a5
{
  v8 = a3;
  if (a4)
  {
    v9 = [[VNRequestForensics alloc] initWithOriginalRequests:v8];
    *a4 = v9;
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
  v14 = [(VNRequestPerformer *)requestPerformer performRequests:v8 inContext:v12 error:&v19];
  v15 = v19;

  objc_autoreleasePoolPop(v11);
  if (a5)
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
    *a5 = v15;
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

- (VNImageRequestHandler)initWithSession:(id)a3 imageBuffer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = VNImageRequestHandler;
  v9 = [(VNImageRequestHandler *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, a3);
    objc_storeStrong(&v10->_imageBuffer, a4);
    v11 = objc_alloc_init(VNRequestPerformer);
    requestPerformer = v10->_requestPerformer;
    v10->_requestPerformer = v11;

    v13 = objc_alloc_init(VNObservationsCache);
    observationsCache = v10->_observationsCache;
    v10->_observationsCache = v13;
  }

  return v10;
}

+ (void)forcedCleanupWithOptions:(id)a3
{
  v4 = a3;
  v3 = +[VNSession globalSession];
  [v3 legacyForcedCleanupWithOptions:v4];
}

+ (void)requestForcedCleanupWithOptions:(id)a3 completion:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = +[VNSession globalSession];
  [v6 legacyForcedCleanupWithOptions:v7];
  v5[2](v5);
}

+ (void)requestForcedCleanupWithOptions:(id)a3
{
  v4 = a3;
  v3 = +[VNSession globalSession];
  [v3 legacyForcedCleanupWithOptions:v4];
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