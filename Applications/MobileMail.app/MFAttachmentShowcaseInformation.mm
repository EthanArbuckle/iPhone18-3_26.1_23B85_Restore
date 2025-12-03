@interface MFAttachmentShowcaseInformation
+ (id)showcaseInformation;
- (CGRect)originRect;
@end

@implementation MFAttachmentShowcaseInformation

+ (id)showcaseInformation
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (CGRect)originRect
{
  x = self->_originRect.origin.x;
  y = self->_originRect.origin.y;
  width = self->_originRect.size.width;
  height = self->_originRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end