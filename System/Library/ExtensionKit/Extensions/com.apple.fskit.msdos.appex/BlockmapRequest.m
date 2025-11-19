@interface BlockmapRequest
- (BlockmapRequest)initWithOriginalSize:(unint64_t)a3;
@end

@implementation BlockmapRequest

- (BlockmapRequest)initWithOriginalSize:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = BlockmapRequest;
  result = [(BlockmapRequest *)&v5 init];
  if (result)
  {
    result->_originalFileSize = a3;
  }

  return result;
}

@end