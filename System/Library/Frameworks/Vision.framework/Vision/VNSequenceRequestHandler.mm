@interface VNSequenceRequestHandler
+ (void)forcedCleanup;
+ (void)forcedCleanupWithOptions:(id)options;
+ (void)requestForcedCleanup;
+ (void)requestForcedCleanupWithOptions:(id)options;
+ (void)requestForcedCleanupWithOptions:(id)options completion:(id)completion;
- (BOOL)_performRequests:(id)requests onImageBuffer:(id)buffer gatheredForensics:(id *)forensics error:(id *)error;
- (BOOL)performRequests:(id)requests onCGImage:(CGImage *)image orientation:(unsigned int)orientation gatheredForensics:(id *)forensics error:(id *)error;
- (BOOL)performRequests:(id)requests onCIImage:(id)image orientation:(unsigned int)orientation gatheredForensics:(id *)forensics error:(id *)error;
- (BOOL)performRequests:(id)requests onCMSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation gatheredForensics:(id *)forensics error:(id *)error;
- (BOOL)performRequests:(id)requests onCVPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation gatheredForensics:(id *)forensics error:(id *)error;
- (BOOL)performRequests:(id)requests onImageData:(id)data orientation:(unsigned int)orientation gatheredForensics:(id *)forensics error:(id *)error;
- (BOOL)performRequests:(id)requests onImageURL:(id)l orientation:(unsigned int)orientation gatheredForensics:(id *)forensics error:(id *)error;
- (VNSequenceRequestHandler)init;
- (VNSequenceRequestHandler)initWithSession:(id)session;
- (void)dealloc;
@end

@implementation VNSequenceRequestHandler

- (BOOL)performRequests:(id)requests onCMSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation gatheredForensics:(id *)forensics error:(id *)error
{
  v9 = *&orientation;
  requestsCopy = requests;
  v13 = [[VNImageBuffer alloc] initWithCMSampleBuffer:buffer orientation:v9 options:0 session:self->_session];
  if (v13)
  {
    v14 = [(VNSequenceRequestHandler *)self _performRequests:requestsCopy onImageBuffer:v13 gatheredForensics:forensics error:error];
  }

  else if (error)
  {
    [VNError errorForInvalidArgument:0 named:@"data"];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)performRequests:(id)requests onImageData:(id)data orientation:(unsigned int)orientation gatheredForensics:(id *)forensics error:(id *)error
{
  v9 = *&orientation;
  requestsCopy = requests;
  dataCopy = data;
  v14 = [[VNImageBuffer alloc] initWithData:dataCopy orientation:v9 options:0 session:self->_session];
  if (v14)
  {
    v15 = [(VNSequenceRequestHandler *)self _performRequests:requestsCopy onImageBuffer:v14 gatheredForensics:forensics error:error];
  }

  else if (error)
  {
    [VNError errorForInvalidArgument:0 named:@"data"];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)performRequests:(id)requests onImageURL:(id)l orientation:(unsigned int)orientation gatheredForensics:(id *)forensics error:(id *)error
{
  v9 = *&orientation;
  requestsCopy = requests;
  lCopy = l;
  v14 = [[VNImageBuffer alloc] initWithURL:lCopy orientation:v9 options:0 session:self->_session];
  if (v14)
  {
    v15 = [(VNSequenceRequestHandler *)self _performRequests:requestsCopy onImageBuffer:v14 gatheredForensics:forensics error:error];
  }

  else if (error)
  {
    [VNError errorForInvalidArgument:0 named:@"url"];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)performRequests:(id)requests onCIImage:(id)image orientation:(unsigned int)orientation gatheredForensics:(id *)forensics error:(id *)error
{
  v9 = *&orientation;
  requestsCopy = requests;
  imageCopy = image;
  v14 = [[VNImageBuffer alloc] initWithCIImage:imageCopy orientation:v9 options:0 session:self->_session];
  if (v14)
  {
    v15 = [(VNSequenceRequestHandler *)self _performRequests:requestsCopy onImageBuffer:v14 gatheredForensics:forensics error:error];
  }

  else if (error)
  {
    [VNError errorForInvalidArgument:0 named:@"ciImage"];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)performRequests:(id)requests onCGImage:(CGImage *)image orientation:(unsigned int)orientation gatheredForensics:(id *)forensics error:(id *)error
{
  v9 = *&orientation;
  requestsCopy = requests;
  v13 = [[VNImageBuffer alloc] initWithCGImage:image orientation:v9 options:0 session:self->_session];
  if (v13)
  {
    v14 = [(VNSequenceRequestHandler *)self _performRequests:requestsCopy onImageBuffer:v13 gatheredForensics:forensics error:error];
  }

  else if (error)
  {
    [VNError errorForInvalidArgument:0 named:@"cgImage"];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)performRequests:(id)requests onCVPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation gatheredForensics:(id *)forensics error:(id *)error
{
  v9 = *&orientation;
  requestsCopy = requests;
  v13 = [[VNImageBuffer alloc] initWithCVPixelBuffer:buffer orientation:v9 options:0 session:self->_session];
  if (v13)
  {
    v14 = [(VNSequenceRequestHandler *)self _performRequests:requestsCopy onImageBuffer:v13 gatheredForensics:forensics error:error];
  }

  else if (error)
  {
    [VNError errorForInvalidArgument:0 named:@"pixelBuffer"];
    *error = v14 = 0;
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

- (VNSequenceRequestHandler)initWithSession:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = VNSequenceRequestHandler;
  v6 = [(VNSequenceRequestHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    v8 = objc_alloc_init(VNRequestPerformer);
    requestPerformer = v7->_requestPerformer;
    v7->_requestPerformer = v8;
  }

  return v7;
}

- (BOOL)_performRequests:(id)requests onImageBuffer:(id)buffer gatheredForensics:(id *)forensics error:(id *)error
{
  requestsCopy = requests;
  bufferCopy = buffer;
  if (bufferCopy)
  {
    v12 = objc_autoreleasePoolPush();
    if (forensics)
    {
      v13 = [[VNRequestForensics alloc] initWithOriginalRequests:requestsCopy];
      *forensics = v13;
    }

    else
    {
      v13 = 0;
    }

    v15 = objc_alloc_init(VNObservationsCache);
    v16 = [[VNRequestPerformingContext alloc] initWithSession:self->_session requestPerformer:self->_requestPerformer imageBuffer:bufferCopy forensics:v13 observationsCache:v15];
    [(VNRequestPerformingContext *)v16 qosClass];
    requestPerformer = self->_requestPerformer;
    v21 = 0;
    v14 = [(VNRequestPerformer *)requestPerformer performRequests:requestsCopy inContext:v16 error:&v21];
    v18 = v21;

    objc_autoreleasePoolPop(v12);
    if (error)
    {
      v19 = v18;
      *error = v18;
    }
  }

  else if (error)
  {
    [VNError errorForInvalidArgumentWithLocalizedDescription:@"no image buffer available"];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
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