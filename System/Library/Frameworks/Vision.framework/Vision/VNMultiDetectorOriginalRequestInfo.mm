@interface VNMultiDetectorOriginalRequestInfo
+ (id)requestKeyFromRequest:(id)request;
- (VNMultiDetectorOriginalRequestInfo)initWithOriginatingRequestSpecifierProcessingOptionKey:(id)key originalRequestResultsIndex:(unint64_t)index;
- (id)description;
@end

@implementation VNMultiDetectorOriginalRequestInfo

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@; resultsIndex=%lu", self->_originatingRequestSpecifierKey, self->_originalRequestResultsIndex];

  return v2;
}

- (VNMultiDetectorOriginalRequestInfo)initWithOriginatingRequestSpecifierProcessingOptionKey:(id)key originalRequestResultsIndex:(unint64_t)index
{
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = VNMultiDetectorOriginalRequestInfo;
  v7 = [(VNMultiDetectorOriginalRequestInfo *)&v12 init];
  if (v7)
  {
    v8 = [keyCopy copy];
    originatingRequestSpecifierKey = v7->_originatingRequestSpecifierKey;
    v7->_originatingRequestSpecifierKey = v8;

    v7->_originalRequestResultsIndex = index;
    v10 = v7;
  }

  return v7;
}

+ (id)requestKeyFromRequest:(id)request
{
  requestCopy = request;
  v4 = NSStringFromClass([requestCopy frameworkClass]);

  return v4;
}

@end