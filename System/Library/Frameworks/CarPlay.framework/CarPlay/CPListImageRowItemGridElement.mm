@interface CPListImageRowItemGridElement
+ (CGSize)maximumImageSize;
- (CPListImageRowItemGridElement)initWithImage:(id)image;
@end

@implementation CPListImageRowItemGridElement

+ (CGSize)maximumImageSize
{
  v2 = *(MEMORY[0x277CBF3A8] + 8) == 0.0 && *MEMORY[0x277CBF3A8] == 0.0;
  v3 = 220.0;
  if (!v2)
  {
    v3 = 0.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CPListImageRowItemGridElement)initWithImage:(id)image
{
  v4.receiver = self;
  v4.super_class = CPListImageRowItemGridElement;
  return [(CPListImageRowItemElement *)&v4 initWithImage:image];
}

@end