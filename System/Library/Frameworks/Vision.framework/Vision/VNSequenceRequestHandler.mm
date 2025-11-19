@interface VNSequenceRequestHandler
+ (void)forcedCleanup;
+ (void)forcedCleanupWithOptions:(id)a3;
+ (void)requestForcedCleanup;
+ (void)requestForcedCleanupWithOptions:(id)a3;
+ (void)requestForcedCleanupWithOptions:(id)a3 completion:(id)a4;
- (BOOL)_performRequests:(id)a3 onImageBuffer:(id)a4 gatheredForensics:(id *)a5 error:(id *)a6;
- (BOOL)performRequests:(id)a3 onCGImage:(CGImage *)a4 orientation:(unsigned int)a5 gatheredForensics:(id *)a6 error:(id *)a7;
- (BOOL)performRequests:(id)a3 onCIImage:(id)a4 orientation:(unsigned int)a5 gatheredForensics:(id *)a6 error:(id *)a7;
- (BOOL)performRequests:(id)a3 onCMSampleBuffer:(opaqueCMSampleBuffer *)a4 orientation:(unsigned int)a5 gatheredForensics:(id *)a6 error:(id *)a7;
- (BOOL)performRequests:(id)a3 onCVPixelBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 gatheredForensics:(id *)a6 error:(id *)a7;
- (BOOL)performRequests:(id)a3 onImageData:(id)a4 orientation:(unsigned int)a5 gatheredForensics:(id *)a6 error:(id *)a7;
- (BOOL)performRequests:(id)a3 onImageURL:(id)a4 orientation:(unsigned int)a5 gatheredForensics:(id *)a6 error:(id *)a7;
- (VNSequenceRequestHandler)init;
- (VNSequenceRequestHandler)initWithSession:(id)a3;
- (void)dealloc;
@end

@implementation VNSequenceRequestHandler

- (BOOL)performRequests:(id)a3 onCMSampleBuffer:(opaqueCMSampleBuffer *)a4 orientation:(unsigned int)a5 gatheredForensics:(id *)a6 error:(id *)a7
{
  v9 = *&a5;
  v12 = a3;
  v13 = [[VNImageBuffer alloc] initWithCMSampleBuffer:a4 orientation:v9 options:0 session:self->_session];
  if (v13)
  {
    v14 = [(VNSequenceRequestHandler *)self _performRequests:v12 onImageBuffer:v13 gatheredForensics:a6 error:a7];
  }

  else if (a7)
  {
    [VNError errorForInvalidArgument:0 named:@"data"];
    *a7 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)performRequests:(id)a3 onImageData:(id)a4 orientation:(unsigned int)a5 gatheredForensics:(id *)a6 error:(id *)a7
{
  v9 = *&a5;
  v12 = a3;
  v13 = a4;
  v14 = [[VNImageBuffer alloc] initWithData:v13 orientation:v9 options:0 session:self->_session];
  if (v14)
  {
    v15 = [(VNSequenceRequestHandler *)self _performRequests:v12 onImageBuffer:v14 gatheredForensics:a6 error:a7];
  }

  else if (a7)
  {
    [VNError errorForInvalidArgument:0 named:@"data"];
    *a7 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)performRequests:(id)a3 onImageURL:(id)a4 orientation:(unsigned int)a5 gatheredForensics:(id *)a6 error:(id *)a7
{
  v9 = *&a5;
  v12 = a3;
  v13 = a4;
  v14 = [[VNImageBuffer alloc] initWithURL:v13 orientation:v9 options:0 session:self->_session];
  if (v14)
  {
    v15 = [(VNSequenceRequestHandler *)self _performRequests:v12 onImageBuffer:v14 gatheredForensics:a6 error:a7];
  }

  else if (a7)
  {
    [VNError errorForInvalidArgument:0 named:@"url"];
    *a7 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)performRequests:(id)a3 onCIImage:(id)a4 orientation:(unsigned int)a5 gatheredForensics:(id *)a6 error:(id *)a7
{
  v9 = *&a5;
  v12 = a3;
  v13 = a4;
  v14 = [[VNImageBuffer alloc] initWithCIImage:v13 orientation:v9 options:0 session:self->_session];
  if (v14)
  {
    v15 = [(VNSequenceRequestHandler *)self _performRequests:v12 onImageBuffer:v14 gatheredForensics:a6 error:a7];
  }

  else if (a7)
  {
    [VNError errorForInvalidArgument:0 named:@"ciImage"];
    *a7 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)performRequests:(id)a3 onCGImage:(CGImage *)a4 orientation:(unsigned int)a5 gatheredForensics:(id *)a6 error:(id *)a7
{
  v9 = *&a5;
  v12 = a3;
  v13 = [[VNImageBuffer alloc] initWithCGImage:a4 orientation:v9 options:0 session:self->_session];
  if (v13)
  {
    v14 = [(VNSequenceRequestHandler *)self _performRequests:v12 onImageBuffer:v13 gatheredForensics:a6 error:a7];
  }

  else if (a7)
  {
    [VNError errorForInvalidArgument:0 named:@"cgImage"];
    *a7 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)performRequests:(id)a3 onCVPixelBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 gatheredForensics:(id *)a6 error:(id *)a7
{
  v9 = *&a5;
  v12 = a3;
  v13 = [[VNImageBuffer alloc] initWithCVPixelBuffer:a4 orientation:v9 options:0 session:self->_session];
  if (v13)
  {
    v14 = [(VNSequenceRequestHandler *)self _performRequests:v12 onImageBuffer:v13 gatheredForensics:a6 error:a7];
  }

  else if (a7)
  {
    [VNError errorForInvalidArgument:0 named:@"pixelBuffer"];
    *a7 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  [(VNRequestPerformer *)self->_requestPerformer getCurrentTrackersAndReset];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v3 = v9 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(VNSession *)self->_session releaseTracker:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7.receiver = self;
  v7.super_class = VNSequenceRequestHandler;
  [(VNSequenceRequestHandler *)&v7 dealloc];
}

- (VNSequenceRequestHandler)init
{
  v3 = +[VNSession globalSession];
  v4 = [(VNSequenceRequestHandler *)self initWithSession:v3];

  return v4;
}

- (VNSequenceRequestHandler)initWithSession:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = VNSequenceRequestHandler;
  v6 = [(VNSequenceRequestHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    v8 = objc_alloc_init(VNRequestPerformer);
    requestPerformer = v7->_requestPerformer;
    v7->_requestPerformer = v8;
  }

  return v7;
}

- (BOOL)_performRequests:(id)a3 onImageBuffer:(id)a4 gatheredForensics:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    if (a5)
    {
      v13 = [[VNRequestForensics alloc] initWithOriginalRequests:v10];
      *a5 = v13;
    }

    else
    {
      v13 = 0;
    }

    v15 = objc_alloc_init(VNObservationsCache);
    v16 = [[VNRequestPerformingContext alloc] initWithSession:self->_session requestPerformer:self->_requestPerformer imageBuffer:v11 forensics:v13 observationsCache:v15];
    [(VNRequestPerformingContext *)v16 qosClass];
    requestPerformer = self->_requestPerformer;
    v21 = 0;
    v14 = [(VNRequestPerformer *)requestPerformer performRequests:v10 inContext:v16 error:&v21];
    v18 = v21;

    objc_autoreleasePoolPop(v12);
    if (a6)
    {
      v19 = v18;
      *a6 = v18;
    }
  }

  else if (a6)
  {
    [VNError errorForInvalidArgumentWithLocalizedDescription:@"no image buffer available"];
    *a6 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
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