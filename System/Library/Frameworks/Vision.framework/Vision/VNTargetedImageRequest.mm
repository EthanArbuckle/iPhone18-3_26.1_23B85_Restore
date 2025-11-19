@interface VNTargetedImageRequest
- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImage *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6 completionHandler:(id)a7;
- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImageRef)cgImage options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImageRef)cgImage options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImageRef)cgImage orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImageRef)cgImage orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCIImage:(CIImage *)ciImage options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCIImage:(CIImage *)ciImage options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCIImage:(CIImage *)ciImage orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCIImage:(CIImage *)ciImage orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCIImage:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6 completionHandler:(id)a7;
- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(CMSampleBufferRef)sampleBuffer options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(CMSampleBufferRef)sampleBuffer options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(CMSampleBufferRef)sampleBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(CMSampleBufferRef)sampleBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(opaqueCMSampleBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6 completionHandler:(id)a7;
- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(CVPixelBufferRef)pixelBuffer options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(CVPixelBufferRef)pixelBuffer options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(CVPixelBufferRef)pixelBuffer orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6 completionHandler:(id)a7;
- (VNTargetedImageRequest)initWithTargetedImageBuffer:(id)a3 completionHandler:(id)a4;
- (VNTargetedImageRequest)initWithTargetedImageData:(NSData *)imageData options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedImageData:(NSData *)imageData options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedImageData:(NSData *)imageData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedImageData:(NSData *)imageData orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedImageData:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6 completionHandler:(id)a7;
- (VNTargetedImageRequest)initWithTargetedImageURL:(NSURL *)imageURL options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedImageURL:(NSURL *)imageURL options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedImageURL:(NSURL *)imageURL orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (VNTargetedImageRequest)initWithTargetedImageURL:(NSURL *)imageURL orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options completionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNTargetedImageRequest)initWithTargetedImageURL:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6 completionHandler:(id)a7;
- (id)newDuplicateInstance;
- (id)requiredTargetedImageBufferReturningError:(id *)a3;
- (id)sequencedRequestPreviousObservationsKey;
@end

@implementation VNTargetedImageRequest

- (id)newDuplicateInstance
{
  v3 = objc_alloc(objc_opt_class());
  targetedImageBuffer = self->_targetedImageBuffer;
  v5 = [(VNRequest *)self completionHandler];
  v6 = [v3 initWithTargetedImageBuffer:targetedImageBuffer completionHandler:v5];

  return v6;
}

- (id)sequencedRequestPreviousObservationsKey
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = VNTargetedImageRequest;
  v4 = [(VNRequest *)&v8 sequencedRequestPreviousObservationsKey];
  v5 = [(VNImageBuffer *)self->_targetedImageBuffer sequencedRequestPreviousObservationsKey];
  v6 = [v3 initWithFormat:@"%@:Trk=%@", v4, v5];

  return v6;
}

- (id)requiredTargetedImageBufferReturningError:(id *)a3
{
  v4 = [(VNTargetedImageRequest *)self targetedImageBuffer];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else if (a3)
  {
    *a3 = [VNError errorForInternalErrorWithLocalizedDescription:@"no valid initial image buffer was provided"];
  }

  return v5;
}

- (VNTargetedImageRequest)initWithTargetedCMSampleBuffer:(opaqueCMSampleBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6 completionHandler:(id)a7
{
  v9 = *&a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [[VNImageBuffer alloc] initWithCMSampleBuffer:a3 orientation:v9 options:v12 session:v13];
  v16 = [(VNTargetedImageRequest *)self initWithTargetedImageBuffer:v15 completionHandler:v14];

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

- (VNTargetedImageRequest)initWithTargetedImageData:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6 completionHandler:(id)a7
{
  v10 = *&a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [[VNImageBuffer alloc] initWithData:v12 orientation:v10 options:v13 session:v14];
  v17 = [(VNTargetedImageRequest *)self initWithTargetedImageBuffer:v16 completionHandler:v15];

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

- (VNTargetedImageRequest)initWithTargetedImageURL:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6 completionHandler:(id)a7
{
  v10 = *&a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [[VNImageBuffer alloc] initWithURL:v12 orientation:v10 options:v13 session:v14];
  v17 = [(VNTargetedImageRequest *)self initWithTargetedImageBuffer:v16 completionHandler:v15];

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

- (VNTargetedImageRequest)initWithTargetedCIImage:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6 completionHandler:(id)a7
{
  v10 = *&a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [[VNImageBuffer alloc] initWithCIImage:v12 orientation:v10 options:v13 session:v14];
  v17 = [(VNTargetedImageRequest *)self initWithTargetedImageBuffer:v16 completionHandler:v15];

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

- (VNTargetedImageRequest)initWithTargetedCGImage:(CGImage *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6 completionHandler:(id)a7
{
  v9 = *&a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [[VNImageBuffer alloc] initWithCGImage:a3 orientation:v9 options:v12 session:v13];
  v16 = [(VNTargetedImageRequest *)self initWithTargetedImageBuffer:v15 completionHandler:v14];

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

- (VNTargetedImageRequest)initWithTargetedCVPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6 completionHandler:(id)a7
{
  v9 = *&a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [[VNImageBuffer alloc] initWithCVPixelBuffer:a3 orientation:v9 options:v12 session:v13];
  v16 = [(VNTargetedImageRequest *)self initWithTargetedImageBuffer:v15 completionHandler:v14];

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

- (VNTargetedImageRequest)initWithTargetedImageBuffer:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 && (v12.receiver = self, v12.super_class = VNTargetedImageRequest, v9 = [(VNRequest *)&v12 initWithCompletionHandler:v8], (self = v9) != 0))
  {
    objc_storeStrong(&v9->_targetedImageBuffer, a3);
    self = self;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end