@interface BKExpandedContentResource
+ (id)resourceForURL:(id)l;
- (CGSize)contentSize;
@end

@implementation BKExpandedContentResource

+ (id)resourceForURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(self);
  [v5 setResource:lCopy];

  return v5;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end