@interface BlockmapRequest
- (BlockmapRequest)initWithOriginalSize:(unint64_t)size;
@end

@implementation BlockmapRequest

- (BlockmapRequest)initWithOriginalSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = BlockmapRequest;
  result = [(BlockmapRequest *)&v5 init];
  if (result)
  {
    result->_originalFileSize = size;
  }

  return result;
}

@end