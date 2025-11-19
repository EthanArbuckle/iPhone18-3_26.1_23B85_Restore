@interface BKExpandedContentResource
+ (id)resourceForURL:(id)a3;
- (CGSize)contentSize;
@end

@implementation BKExpandedContentResource

+ (id)resourceForURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setResource:v4];

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