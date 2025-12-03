@interface AVAssetWriterInputTaggedPixelBufferGroupAdaptor
+ (AVAssetWriterInputTaggedPixelBufferGroupAdaptor)assetWriterInputTaggedPixelBufferGroupAdaptorWithAssetWriterInput:(AVAssetWriterInput *)input sourcePixelBufferAttributes:(NSDictionary *)sourcePixelBufferAttributes;
- (AVAssetWriterInputTaggedPixelBufferGroupAdaptor)initWithAssetWriterInput:(AVAssetWriterInput *)input sourcePixelBufferAttributes:(NSDictionary *)sourcePixelBufferAttributes;
- (BOOL)appendTaggedPixelBufferGroup:(CMTaggedBufferGroupRef)taggedPixelBufferGroup withPresentationTime:(CMTime *)presentationTime;
- (CVPixelBufferPoolRef)pixelBufferPool;
- (NSDictionary)sourcePixelBufferAttributes;
- (id)description;
- (void)dealloc;
@end

@implementation AVAssetWriterInputTaggedPixelBufferGroupAdaptor

+ (AVAssetWriterInputTaggedPixelBufferGroupAdaptor)assetWriterInputTaggedPixelBufferGroupAdaptorWithAssetWriterInput:(AVAssetWriterInput *)input sourcePixelBufferAttributes:(NSDictionary *)sourcePixelBufferAttributes
{
  v4 = [objc_alloc(objc_opt_class()) initWithAssetWriterInput:input sourcePixelBufferAttributes:sourcePixelBufferAttributes];

  return v4;
}

- (AVAssetWriterInputTaggedPixelBufferGroupAdaptor)initWithAssetWriterInput:(AVAssetWriterInput *)input sourcePixelBufferAttributes:(NSDictionary *)sourcePixelBufferAttributes
{
  v28.receiver = self;
  v28.super_class = AVAssetWriterInputTaggedPixelBufferGroupAdaptor;
  v7 = [(AVAssetWriterInputTaggedPixelBufferGroupAdaptor *)&v28 init];
  p_isa = &v7->super.isa;
  if (!input)
  {
    v12 = v7;
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = "input != nil";
LABEL_15:
    v27 = v20;
    v22 = @"invalid parameter not satisfying: %s";
LABEL_16:
    v26 = [v18 exceptionWithName:v19 reason:AVMethodExceptionReasonWithObjectAndSelector(p_isa userInfo:{a2, v22, v13, v14, v15, v16, v17, v27), 0}];
    objc_exception_throw(v26);
  }

  if (([(NSString *)[(AVAssetWriterInput *)input mediaType] isEqual:@"vide"]& 1) == 0 && ([(NSString *)[(AVAssetWriterInput *)input mediaType] isEqual:@"auxv"]& 1) == 0)
  {
    v25 = p_isa;
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = "[[input mediaType] isEqual:AVMediaTypeVideo] || [[input mediaType] isEqual:AVMediaTypeAuxiliaryPicture]";
    goto LABEL_15;
  }

  if ([(AVAssetWriterInput *)input _isAttachedToAdaptor])
  {
    v21 = p_isa;
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v22 = @"Cannot create a new tagged buffer group adaptor with an asset writer input that is already attached to a tagged buffer group adaptor";
    goto LABEL_16;
  }

  if ([(AVAssetWriterInput *)input _status])
  {
    v23 = p_isa;
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v22 = @"Cannot create a new tagged buffer group adaptor with an asset writer input that has already started writing";
    goto LABEL_16;
  }

  v9 = [(NSDictionary *)[(AVAssetWriterInput *)input outputSettings] objectForKey:@"AVVideoCompressionPropertiesKey"];
  if (![v9 objectForKey:*MEMORY[0x1E69836E0]])
  {
    v24 = p_isa;
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v22 = @"Cannot create a new tagged buffer group adaptor with missing value for kVTCompressionPropertyKey_MVHEVCVideoLayerIDs key in the writer input's outputSettings";
    goto LABEL_16;
  }

  if (p_isa)
  {
    v10 = input;
    p_isa[1] = v10;
    [(AVAssetWriterInput *)v10 _setSourcePixelBufferAttributes:sourcePixelBufferAttributes];
    [p_isa[1] _setAttachedAdaptor:p_isa];
  }

  return p_isa;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetWriterInputTaggedPixelBufferGroupAdaptor;
  [(AVAssetWriterInputTaggedPixelBufferGroupAdaptor *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, assetWriterInput = %@ sourcePixelBufferAttributes = %@>", NSStringFromClass(v4), self, -[AVAssetWriterInputTaggedPixelBufferGroupAdaptor assetWriterInput](self, "assetWriterInput"), -[AVAssetWriterInputTaggedPixelBufferGroupAdaptor sourcePixelBufferAttributes](self, "sourcePixelBufferAttributes")];
}

- (NSDictionary)sourcePixelBufferAttributes
{
  assetWriterInput = [(AVAssetWriterInputTaggedPixelBufferGroupAdaptor *)self assetWriterInput];

  return [(AVAssetWriterInput *)assetWriterInput _sourcePixelBufferAttributes];
}

- (CVPixelBufferPoolRef)pixelBufferPool
{
  assetWriterInput = [(AVAssetWriterInputTaggedPixelBufferGroupAdaptor *)self assetWriterInput];

  return [(AVAssetWriterInput *)assetWriterInput _pixelBufferPool];
}

- (BOOL)appendTaggedPixelBufferGroup:(CMTaggedBufferGroupRef)taggedPixelBufferGroup withPresentationTime:(CMTime *)presentationTime
{
  if (!taggedPixelBufferGroup)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = "taggedPixelBufferGroup != NULL";
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

  assetWriterInput = [(AVAssetWriterInputTaggedPixelBufferGroupAdaptor *)self assetWriterInput];
  v16 = *&presentationTime->value;
  epoch = presentationTime->epoch;
  return [(AVAssetWriterInput *)assetWriterInput _appendTaggedPixelBufferGroup:taggedPixelBufferGroup withPresentationTime:&v16];
}

@end