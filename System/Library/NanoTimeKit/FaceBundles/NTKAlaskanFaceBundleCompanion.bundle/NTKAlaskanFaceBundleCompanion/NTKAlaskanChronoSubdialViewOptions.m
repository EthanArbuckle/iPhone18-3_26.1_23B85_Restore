@interface NTKAlaskanChronoSubdialViewOptions
- (CGSize)largeTickSize;
- (CGSize)smallTickSize;
@end

@implementation NTKAlaskanChronoSubdialViewOptions

- (CGSize)largeTickSize
{
  width = self->_largeTickSize.width;
  height = self->_largeTickSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)smallTickSize
{
  width = self->_smallTickSize.width;
  height = self->_smallTickSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end