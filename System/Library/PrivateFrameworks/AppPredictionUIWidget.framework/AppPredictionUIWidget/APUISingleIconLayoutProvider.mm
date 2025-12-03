@interface APUISingleIconLayoutProvider
- (CGSize)size;
- (id)layoutForIconLocation:(id)location;
@end

@implementation APUISingleIconLayoutProvider

- (id)layoutForIconLocation:(id)location
{
  v4 = objc_alloc_init(APUISingleIconLayout);
  [(APUISingleIconLayout *)v4 setSize:self->_size.width, self->_size.height];
  [(APUISingleIconLayout *)v4 setScale:self->_scale];

  return v4;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end