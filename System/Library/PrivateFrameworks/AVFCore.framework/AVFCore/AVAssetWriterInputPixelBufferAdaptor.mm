@interface AVAssetWriterInputPixelBufferAdaptor
+ (AVAssetWriterInputPixelBufferAdaptor)assetWriterInputPixelBufferAdaptorWithAssetWriterInput:(AVAssetWriterInput *)input sourcePixelBufferAttributes:(NSDictionary *)sourcePixelBufferAttributes;
- (AVAssetWriterInputPixelBufferAdaptor)initWithAssetWriterInput:(AVAssetWriterInput *)input sourcePixelBufferAttributes:(NSDictionary *)sourcePixelBufferAttributes;
- (BOOL)appendPixelBuffer:(CVPixelBufferRef)pixelBuffer withPresentationTime:(CMTime *)presentationTime;
- (CVPixelBufferPoolRef)pixelBufferPool;
- (NSDictionary)sourcePixelBufferAttributes;
- (NSString)description;
- (void)dealloc;
- (void)declareKeyPathDependenciesWithRegistry:(id)registry;
@end

@implementation AVAssetWriterInputPixelBufferAdaptor

+ (AVAssetWriterInputPixelBufferAdaptor)assetWriterInputPixelBufferAdaptorWithAssetWriterInput:(AVAssetWriterInput *)input sourcePixelBufferAttributes:(NSDictionary *)sourcePixelBufferAttributes
{
  v4 = [objc_alloc(objc_opt_class()) initWithAssetWriterInput:input sourcePixelBufferAttributes:sourcePixelBufferAttributes];

  return v4;
}

- (AVAssetWriterInputPixelBufferAdaptor)initWithAssetWriterInput:(AVAssetWriterInput *)input sourcePixelBufferAttributes:(NSDictionary *)sourcePixelBufferAttributes
{
  v26.receiver = self;
  v26.super_class = AVAssetWriterInputPixelBufferAdaptor;
  v7 = [(AVAssetWriterInputPixelBufferAdaptor *)&v26 init];
  v8 = v7;
  if (!input)
  {
    v11 = v7;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "input != nil";
LABEL_15:
    v25 = v19;
    v21 = @"invalid parameter not satisfying: %s";
LABEL_16:
    v24 = [v17 exceptionWithName:v18 reason:AVMethodExceptionReasonWithObjectAndSelector(v8 userInfo:{a2, v21, v12, v13, v14, v15, v16, v25), 0}];
    objc_exception_throw(v24);
  }

  if (![(NSString *)[(AVAssetWriterInput *)input mediaType] isEqualToString:@"vide"]&& ![(NSString *)[(AVAssetWriterInput *)input mediaType] isEqualToString:@"auxv"])
  {
    v23 = v8;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "[[input mediaType] isEqualToString:AVMediaTypeVideo] || [[input mediaType] isEqualToString:AVMediaTypeAuxiliaryPicture]";
    goto LABEL_15;
  }

  if ([(AVAssetWriterInput *)input _isAttachedToAdaptor])
  {
    v20 = v8;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v21 = @"Cannot create a new pixel buffer adaptor with an asset writer input that is already attached to a pixel buffer adaptor";
    goto LABEL_16;
  }

  if ([(AVAssetWriterInput *)input _status])
  {
    v22 = v8;
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v21 = @"Cannot create a new pixel buffer adaptor with an asset writer input that has already started writing";
    goto LABEL_16;
  }

  if (v8)
  {
    v9 = objc_alloc_init(AVAssetWriterInputPixelBufferAdaptorInternal);
    v8->_internal = v9;
    if (v9)
    {
      CFRetain(v9);
      v8->_internal->input = input;
      [(AVAssetWriterInput *)v8->_internal->input _setSourcePixelBufferAttributes:sourcePixelBufferAttributes];
      [(AVAssetWriterInput *)v8->_internal->input _setAttachedAdaptor:v8];
      v8->_internal->keyPathDependencyManager = [[AVKeyPathDependencyManager alloc] initWithDependencyHost:v8];
      [(AVKeyPathDependencyManager *)v8->_internal->keyPathDependencyManager dependencyHostIsFullyInitialized];
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    [(AVKeyPathDependencyManager *)internal->keyPathDependencyManager cancelAllCallbacks];

    CFRelease(self->_internal);
  }

  v4.receiver = self;
  v4.super_class = AVAssetWriterInputPixelBufferAdaptor;
  [(AVAssetWriterInputPixelBufferAdaptor *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, assetWriterInput = %@, sourcePixelBufferAttributes = %@>", NSStringFromClass(v4), self, -[AVAssetWriterInputPixelBufferAdaptor assetWriterInput](self, "assetWriterInput"), -[AVAssetWriterInputPixelBufferAdaptor sourcePixelBufferAttributes](self, "sourcePixelBufferAttributes")];
}

- (NSDictionary)sourcePixelBufferAttributes
{
  assetWriterInput = [(AVAssetWriterInputPixelBufferAdaptor *)self assetWriterInput];

  return [(AVAssetWriterInput *)assetWriterInput _sourcePixelBufferAttributes];
}

- (void)declareKeyPathDependenciesWithRegistry:(id)registry
{
  v4 = AVTwoPartKeyPathMake(@"assetWriterInput", @"pixelBufferPool");

  [registry valueForKey:@"pixelBufferPool" dependsOnValueAtKeyPath:v4];
}

- (CVPixelBufferPoolRef)pixelBufferPool
{
  assetWriterInput = [(AVAssetWriterInputPixelBufferAdaptor *)self assetWriterInput];

  return [(AVAssetWriterInput *)assetWriterInput _pixelBufferPool];
}

- (BOOL)appendPixelBuffer:(CVPixelBufferRef)pixelBuffer withPresentationTime:(CMTime *)presentationTime
{
  if (!pixelBuffer)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = "pixelBuffer != NULL";
    goto LABEL_6;
  }

  if ((presentationTime->flags & 0x1D) != 1)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = "CMTIME_IS_NUMERIC(presentationTime)";
LABEL_6:
    v15 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", presentationTime, v4, v5, v6, v7, v14), 0}];
    objc_exception_throw(v15);
  }

  assetWriterInput = [(AVAssetWriterInputPixelBufferAdaptor *)self assetWriterInput];
  v16 = *&presentationTime->value;
  epoch = presentationTime->epoch;
  return [(AVAssetWriterInput *)assetWriterInput _appendPixelBuffer:pixelBuffer withPresentationTime:&v16];
}

@end