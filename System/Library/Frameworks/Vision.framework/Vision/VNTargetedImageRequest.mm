@interface VNTargetedImageRequest
- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImage *)image orientation:(unsigned int)orientation options:(id)options session:(id)session completionHandler:(id)handler;
- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImageRef)cgImage options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImageRef)cgImage options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImageRef)cgImage orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImageRef)cgImage orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCIImage:(CIImage *)ciImage options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCIImage:(CIImage *)ciImage options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCIImage:(CIImage *)ciImage orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCIImage:(CIImage *)ciImage orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCIImage:(id)image orientation:(unsigned int)orientation options:(id)options session:(id)session completionHandler:(id)handler;
- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(CMSampleBufferRef)sampleBuffer options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(CMSampleBufferRef)sampleBuffer options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(CMSampleBufferRef)sampleBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(CMSampleBufferRef)sampleBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation options:(id)options session:(id)session completionHandler:(id)handler;
- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(CVPixelBufferRef)pixelBuffer options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(CVPixelBufferRef)pixelBuffer options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation options:(id)options session:(id)session completionHandler:(id)handler;
- (VNTargetedImageRequest)initWithTargetedImageBuffer:(id)buffer completionHandler:(id)handler;
- (VNTargetedImageRequest)initWithTargetedImageData:(NSData *)imageData options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedImageData:(NSData *)imageData options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedImageData:(NSData *)imageData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedImageData:(NSData *)imageData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedImageData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session completionHandler:(id)handler;
- (VNTargetedImageRequest)initWithTargetedImageURL:(NSURL *)imageURL options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedImageURL:(NSURL *)imageURL options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedImageURL:(NSURL *)imageURL orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedImageURL:(NSURL *)imageURL orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedImageURL:(id)l orientation:(unsigned int)orientation options:(id)options session:(id)session completionHandler:(id)handler;
- (id)newDuplicateInstance;
- (id)requiredTargetedImageBufferReturningError:(id *)error;
- (id)sequencedRequestPreviousObservationsKey;
@end

@implementation VNTargetedImageRequest

- (id)newDuplicateInstance
{
  v3 = objc_alloc(objc_opt_class());
  targetedImageBuffer = self->_targetedImageBuffer;
  completionHandler = [(VNRequest *)self completionHandler];
  v6 = [v3 initWithTargetedImageBuffer:targetedImageBuffer completionHandler:completionHandler];

  return v6;
}

- (id)sequencedRequestPreviousObservationsKey
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = VNTargetedImageRequest;
  sequencedRequestPreviousObservationsKey = [(VNRequest *)&v8 sequencedRequestPreviousObservationsKey];
  sequencedRequestPreviousObservationsKey2 = [(VNImageBuffer *)self->_targetedImageBuffer sequencedRequestPreviousObservationsKey];
  v6 = [v3 initWithFormat:@"%@:Trk=%@", sequencedRequestPreviousObservationsKey, sequencedRequestPreviousObservationsKey2];

  return v6;
}

- (id)requiredTargetedImageBufferReturningError:(id *)error
{
  targetedImageBuffer = [(VNTargetedImageRequest *)self targetedImageBuffer];
  v5 = targetedImageBuffer;
  if (targetedImageBuffer)
  {
    v6 = targetedImageBuffer;
  }

  else if (error)
  {
    *error = [VNError errorForInternalErrorWithLocalizedDescription:@"no valid initial image buffer was provided"];
  }

  return v5;
}

- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation options:(id)options session:(id)session completionHandler:(id)handler
{
  v9 = *&orientation;
  optionsCopy = options;
  sessionCopy = session;
  handlerCopy = handler;
  v15 = [[VNImageBuffer alloc] initWithCMSampleBuffer:buffer orientation:v9 options:optionsCopy session:sessionCopy];
  v16 = [(VNTargetedImageRequest *)self initWithTargetedImageBuffer:v15 completionHandler:handlerCopy];

  return v16;
}

- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(CMSampleBufferRef)sampleBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v7 = *&orientation;
  v10 = options;
  v11 = completionHandler;
  v12 = objc_alloc_init(VNSession);
  v13 = [(VNTargetedImageRequest *)self initWithTargetedCMSampleBuffer:sampleBuffer orientation:v7 options:v10 session:v12 completionHandler:v11];

  return v13;
}

- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(CMSampleBufferRef)sampleBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v5 = *&orientation;
  v8 = options;
  v9 = objc_alloc_init(VNSession);
  v10 = [(VNTargetedImageRequest *)self initWithTargetedCMSampleBuffer:sampleBuffer orientation:v5 options:v8 session:v9 completionHandler:0];

  return v10;
}

- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(CMSampleBufferRef)sampleBuffer options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v8 = options;
  v9 = completionHandler;
  v10 = objc_alloc_init(VNSession);
  v11 = [(VNTargetedImageRequest *)self initWithTargetedCMSampleBuffer:sampleBuffer orientation:0 options:v8 session:v10 completionHandler:v9];

  return v11;
}

- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(CMSampleBufferRef)sampleBuffer options:(NSDictionary *)options
{
  v6 = options;
  v7 = objc_alloc_init(VNSession);
  v8 = [(VNTargetedImageRequest *)self initWithTargetedCMSampleBuffer:sampleBuffer orientation:0 options:v6 session:v7 completionHandler:0];

  return v8;
}

- (VNTargetedImageRequest)initWithTargetedImageData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session completionHandler:(id)handler
{
  v10 = *&orientation;
  dataCopy = data;
  optionsCopy = options;
  sessionCopy = session;
  handlerCopy = handler;
  v16 = [[VNImageBuffer alloc] initWithData:dataCopy orientation:v10 options:optionsCopy session:sessionCopy];
  v17 = [(VNTargetedImageRequest *)self initWithTargetedImageBuffer:v16 completionHandler:handlerCopy];

  return v17;
}

- (VNTargetedImageRequest)initWithTargetedImageData:(NSData *)imageData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v8 = *&orientation;
  v10 = imageData;
  v11 = options;
  v12 = completionHandler;
  v13 = objc_alloc_init(VNSession);
  v14 = [(VNTargetedImageRequest *)self initWithTargetedImageData:v10 orientation:v8 options:v11 session:v13 completionHandler:v12];

  return v14;
}

- (VNTargetedImageRequest)initWithTargetedImageData:(NSData *)imageData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v6 = *&orientation;
  v8 = imageData;
  v9 = options;
  v10 = objc_alloc_init(VNSession);
  v11 = [(VNTargetedImageRequest *)self initWithTargetedImageData:v8 orientation:v6 options:v9 session:v10 completionHandler:0];

  return v11;
}

- (VNTargetedImageRequest)initWithTargetedImageData:(NSData *)imageData options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v8 = imageData;
  v9 = options;
  v10 = completionHandler;
  v11 = objc_alloc_init(VNSession);
  v12 = [(VNTargetedImageRequest *)self initWithTargetedImageData:v8 orientation:0 options:v9 session:v11 completionHandler:v10];

  return v12;
}

- (VNTargetedImageRequest)initWithTargetedImageData:(NSData *)imageData options:(NSDictionary *)options
{
  v6 = imageData;
  v7 = options;
  v8 = objc_alloc_init(VNSession);
  v9 = [(VNTargetedImageRequest *)self initWithTargetedImageData:v6 orientation:0 options:v7 session:v8 completionHandler:0];

  return v9;
}

- (VNTargetedImageRequest)initWithTargetedImageURL:(id)l orientation:(unsigned int)orientation options:(id)options session:(id)session completionHandler:(id)handler
{
  v10 = *&orientation;
  lCopy = l;
  optionsCopy = options;
  sessionCopy = session;
  handlerCopy = handler;
  v16 = [[VNImageBuffer alloc] initWithURL:lCopy orientation:v10 options:optionsCopy session:sessionCopy];
  v17 = [(VNTargetedImageRequest *)self initWithTargetedImageBuffer:v16 completionHandler:handlerCopy];

  return v17;
}

- (VNTargetedImageRequest)initWithTargetedImageURL:(NSURL *)imageURL orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v8 = *&orientation;
  v10 = imageURL;
  v11 = options;
  v12 = completionHandler;
  v13 = objc_alloc_init(VNSession);
  v14 = [(VNTargetedImageRequest *)self initWithTargetedImageURL:v10 orientation:v8 options:v11 session:v13 completionHandler:v12];

  return v14;
}

- (VNTargetedImageRequest)initWithTargetedImageURL:(NSURL *)imageURL orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v6 = *&orientation;
  v8 = imageURL;
  v9 = options;
  v10 = objc_alloc_init(VNSession);
  v11 = [(VNTargetedImageRequest *)self initWithTargetedImageURL:v8 orientation:v6 options:v9 session:v10 completionHandler:0];

  return v11;
}

- (VNTargetedImageRequest)initWithTargetedImageURL:(NSURL *)imageURL options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v8 = imageURL;
  v9 = options;
  v10 = completionHandler;
  v11 = objc_alloc_init(VNSession);
  v12 = [(VNTargetedImageRequest *)self initWithTargetedImageURL:v8 orientation:0 options:v9 session:v11 completionHandler:v10];

  return v12;
}

- (VNTargetedImageRequest)initWithTargetedImageURL:(NSURL *)imageURL options:(NSDictionary *)options
{
  v6 = imageURL;
  v7 = options;
  v8 = objc_alloc_init(VNSession);
  v9 = [(VNTargetedImageRequest *)self initWithTargetedImageURL:v6 orientation:0 options:v7 session:v8 completionHandler:0];

  return v9;
}

- (VNTargetedImageRequest)initWithTargetedCIImage:(id)image orientation:(unsigned int)orientation options:(id)options session:(id)session completionHandler:(id)handler
{
  v10 = *&orientation;
  imageCopy = image;
  optionsCopy = options;
  sessionCopy = session;
  handlerCopy = handler;
  v16 = [[VNImageBuffer alloc] initWithCIImage:imageCopy orientation:v10 options:optionsCopy session:sessionCopy];
  v17 = [(VNTargetedImageRequest *)self initWithTargetedImageBuffer:v16 completionHandler:handlerCopy];

  return v17;
}

- (VNTargetedImageRequest)initWithTargetedCIImage:(CIImage *)ciImage orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v8 = *&orientation;
  v10 = ciImage;
  v11 = options;
  v12 = completionHandler;
  v13 = objc_alloc_init(VNSession);
  v14 = [(VNTargetedImageRequest *)self initWithTargetedCIImage:v10 orientation:v8 options:v11 session:v13 completionHandler:v12];

  return v14;
}

- (VNTargetedImageRequest)initWithTargetedCIImage:(CIImage *)ciImage orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v6 = *&orientation;
  v8 = ciImage;
  v9 = options;
  v10 = objc_alloc_init(VNSession);
  v11 = [(VNTargetedImageRequest *)self initWithTargetedCIImage:v8 orientation:v6 options:v9 session:v10 completionHandler:0];

  return v11;
}

- (VNTargetedImageRequest)initWithTargetedCIImage:(CIImage *)ciImage options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v8 = ciImage;
  v9 = options;
  v10 = completionHandler;
  v11 = objc_alloc_init(VNSession);
  v12 = [(VNTargetedImageRequest *)self initWithTargetedCIImage:v8 orientation:0 options:v9 session:v11 completionHandler:v10];

  return v12;
}

- (VNTargetedImageRequest)initWithTargetedCIImage:(CIImage *)ciImage options:(NSDictionary *)options
{
  v6 = ciImage;
  v7 = options;
  v8 = objc_alloc_init(VNSession);
  v9 = [(VNTargetedImageRequest *)self initWithTargetedCIImage:v6 orientation:0 options:v7 session:v8 completionHandler:0];

  return v9;
}

- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImage *)image orientation:(unsigned int)orientation options:(id)options session:(id)session completionHandler:(id)handler
{
  v9 = *&orientation;
  optionsCopy = options;
  sessionCopy = session;
  handlerCopy = handler;
  v15 = [[VNImageBuffer alloc] initWithCGImage:image orientation:v9 options:optionsCopy session:sessionCopy];
  v16 = [(VNTargetedImageRequest *)self initWithTargetedImageBuffer:v15 completionHandler:handlerCopy];

  return v16;
}

- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImageRef)cgImage orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v7 = *&orientation;
  v10 = options;
  v11 = completionHandler;
  v12 = objc_alloc_init(VNSession);
  v13 = [(VNTargetedImageRequest *)self initWithTargetedCGImage:cgImage orientation:v7 options:v10 session:v12 completionHandler:v11];

  return v13;
}

- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImageRef)cgImage orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v5 = *&orientation;
  v8 = options;
  v9 = objc_alloc_init(VNSession);
  v10 = [(VNTargetedImageRequest *)self initWithTargetedCGImage:cgImage orientation:v5 options:v8 session:v9 completionHandler:0];

  return v10;
}

- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImageRef)cgImage options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v8 = options;
  v9 = completionHandler;
  v10 = objc_alloc_init(VNSession);
  v11 = [(VNTargetedImageRequest *)self initWithTargetedCGImage:cgImage orientation:0 options:v8 session:v10 completionHandler:v9];

  return v11;
}

- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImageRef)cgImage options:(NSDictionary *)options
{
  v6 = options;
  v7 = objc_alloc_init(VNSession);
  v8 = [(VNTargetedImageRequest *)self initWithTargetedCGImage:cgImage orientation:0 options:v6 session:v7 completionHandler:0];

  return v8;
}

- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation options:(id)options session:(id)session completionHandler:(id)handler
{
  v9 = *&orientation;
  optionsCopy = options;
  sessionCopy = session;
  handlerCopy = handler;
  v15 = [[VNImageBuffer alloc] initWithCVPixelBuffer:buffer orientation:v9 options:optionsCopy session:sessionCopy];
  v16 = [(VNTargetedImageRequest *)self initWithTargetedImageBuffer:v15 completionHandler:handlerCopy];

  return v16;
}

- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v7 = *&orientation;
  v10 = options;
  v11 = completionHandler;
  v12 = objc_alloc_init(VNSession);
  v13 = [(VNTargetedImageRequest *)self initWithTargetedCVPixelBuffer:pixelBuffer orientation:v7 options:v10 session:v12 completionHandler:v11];

  return v13;
}

- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v5 = *&orientation;
  v8 = options;
  v9 = objc_alloc_init(VNSession);
  v10 = [(VNTargetedImageRequest *)self initWithTargetedCVPixelBuffer:pixelBuffer orientation:v5 options:v8 session:v9 completionHandler:0];

  return v10;
}

- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(CVPixelBufferRef)pixelBuffer options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v8 = options;
  v9 = completionHandler;
  v10 = objc_alloc_init(VNSession);
  v11 = [(VNTargetedImageRequest *)self initWithTargetedCVPixelBuffer:pixelBuffer orientation:0 options:v8 session:v10 completionHandler:v9];

  return v11;
}

- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(CVPixelBufferRef)pixelBuffer options:(NSDictionary *)options
{
  v6 = options;
  v7 = objc_alloc_init(VNSession);
  v8 = [(VNTargetedImageRequest *)self initWithTargetedCVPixelBuffer:pixelBuffer orientation:0 options:v6 session:v7 completionHandler:0];

  return v8;
}

- (VNTargetedImageRequest)initWithTargetedImageBuffer:(id)buffer completionHandler:(id)handler
{
  bufferCopy = buffer;
  handlerCopy = handler;
  if (bufferCopy && (v12.receiver = self, v12.super_class = VNTargetedImageRequest, v9 = [(VNRequest *)&v12 initWithCompletionHandler:handlerCopy], (self = v9) != 0))
  {
    objc_storeStrong(&v9->_targetedImageBuffer, buffer);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end