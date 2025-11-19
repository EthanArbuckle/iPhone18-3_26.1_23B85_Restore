@interface VNMultiDetectorOriginalRequestInfo
+ (id)requestKeyFromRequest:(id)a3;
- (VNMultiDetectorOriginalRequestInfo)initWithOriginatingRequestSpecifierProcessingOptionKey:(id)a3 originalRequestResultsIndex:(unint64_t)a4;
- (id)description;
@end

@implementation VNMultiDetectorOriginalRequestInfo

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@; resultsIndex=%lu", self->_originatingRequestSpecifierKey, self->_originalRequestResultsIndex];

  return v2;
}

- (VNMultiDetectorOriginalRequestInfo)initWithOriginatingRequestSpecifierProcessingOptionKey:(id)a3 originalRequestResultsIndex:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = VNMultiDetectorOriginalRequestInfo;
  v7 = [(VNMultiDetectorOriginalRequestInfo *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    originatingRequestSpecifierKey = v7->_originatingRequestSpecifierKey;
    v7->_originatingRequestSpecifierKey = v8;

    v7->_originalRequestResultsIndex = a4;
    v10 = v7;
  }

  return v7;
}

+ (id)requestKeyFromRequest:(id)a3
{
  v3 = a3;
  v4 = NSStringFromClass([v3 frameworkClass]);

  return v4;
}

@end