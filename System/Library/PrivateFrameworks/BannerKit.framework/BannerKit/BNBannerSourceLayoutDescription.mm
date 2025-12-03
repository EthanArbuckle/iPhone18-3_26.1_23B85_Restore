@interface BNBannerSourceLayoutDescription
+ (id)bannerSourceLayoutDescriptionWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize offsetFromPresentationEdge:(double)edge;
- (BNBannerSourceLayoutDescription)initWithBSXPCCoder:(id)coder;
- (CGSize)containerSize;
- (CGSize)presentationSize;
- (NSString)description;
- (id)_initWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize offsetFromPresentationEdge:(double)edge;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation BNBannerSourceLayoutDescription

+ (id)bannerSourceLayoutDescriptionWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize offsetFromPresentationEdge:(double)edge
{
  edge = [[BNBannerSourceLayoutDescription alloc] _initWithPresentationSize:size.width containerSize:size.height offsetFromPresentationEdge:containerSize.width, containerSize.height, edge];

  return edge;
}

- (id)_initWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize offsetFromPresentationEdge:(double)edge
{
  height = containerSize.height;
  width = containerSize.width;
  v8 = size.height;
  v9 = size.width;
  v11.receiver = self;
  v11.super_class = BNBannerSourceLayoutDescription;
  result = [(BNBannerSourceLayoutDescription *)&v11 init];
  if (result)
  {
    *(result + 4) = v9;
    *(result + 5) = v8;
    *(result + 2) = width;
    *(result + 3) = height;
    *(result + 1) = edge;
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromCGSize(self->_presentationSize);
  v6 = NSStringFromCGSize(self->_containerSize);
  v7 = [v3 stringWithFormat:@"<%@: %p presentationSize: %@; containerSize: %@; offsetFromPresentationEdge: %f>", v4, self, v5, v6, *&self->_offsetFromPresentationEdge];;

  return v7;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  width = self->_presentationSize.width;
  height = self->_presentationSize.height;
  coderCopy = coder;
  [coderCopy encodeCGSize:@"presentationSize" forKey:{width, height}];
  [coderCopy encodeCGSize:@"containerSize" forKey:{self->_containerSize.width, self->_containerSize.height}];
  [coderCopy encodeDouble:@"offsetFromPresentationEdge" forKey:self->_offsetFromPresentationEdge];
}

- (BNBannerSourceLayoutDescription)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = BNBannerSourceLayoutDescription;
  v5 = [(BNBannerSourceLayoutDescription *)&v12 init];
  if (v5)
  {
    [coderCopy decodeCGSizeForKey:@"presentationSize"];
    v5->_presentationSize.width = v6;
    v5->_presentationSize.height = v7;
    [coderCopy decodeCGSizeForKey:@"containerSize"];
    v5->_containerSize.width = v8;
    v5->_containerSize.height = v9;
    [coderCopy decodeDoubleForKey:@"offsetFromPresentationEdge"];
    v5->_offsetFromPresentationEdge = v10;
  }

  return v5;
}

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)presentationSize
{
  width = self->_presentationSize.width;
  height = self->_presentationSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end