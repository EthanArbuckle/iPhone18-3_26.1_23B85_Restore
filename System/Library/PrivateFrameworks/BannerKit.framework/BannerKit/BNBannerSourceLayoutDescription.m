@interface BNBannerSourceLayoutDescription
+ (id)bannerSourceLayoutDescriptionWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4 offsetFromPresentationEdge:(double)a5;
- (BNBannerSourceLayoutDescription)initWithBSXPCCoder:(id)a3;
- (CGSize)containerSize;
- (CGSize)presentationSize;
- (NSString)description;
- (id)_initWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4 offsetFromPresentationEdge:(double)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation BNBannerSourceLayoutDescription

+ (id)bannerSourceLayoutDescriptionWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4 offsetFromPresentationEdge:(double)a5
{
  v5 = [[BNBannerSourceLayoutDescription alloc] _initWithPresentationSize:a3.width containerSize:a3.height offsetFromPresentationEdge:a4.width, a4.height, a5];

  return v5;
}

- (id)_initWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4 offsetFromPresentationEdge:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3.height;
  v9 = a3.width;
  v11.receiver = self;
  v11.super_class = BNBannerSourceLayoutDescription;
  result = [(BNBannerSourceLayoutDescription *)&v11 init];
  if (result)
  {
    *(result + 4) = v9;
    *(result + 5) = v8;
    *(result + 2) = width;
    *(result + 3) = height;
    *(result + 1) = a5;
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

- (void)encodeWithBSXPCCoder:(id)a3
{
  width = self->_presentationSize.width;
  height = self->_presentationSize.height;
  v6 = a3;
  [v6 encodeCGSize:@"presentationSize" forKey:{width, height}];
  [v6 encodeCGSize:@"containerSize" forKey:{self->_containerSize.width, self->_containerSize.height}];
  [v6 encodeDouble:@"offsetFromPresentationEdge" forKey:self->_offsetFromPresentationEdge];
}

- (BNBannerSourceLayoutDescription)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BNBannerSourceLayoutDescription;
  v5 = [(BNBannerSourceLayoutDescription *)&v12 init];
  if (v5)
  {
    [v4 decodeCGSizeForKey:@"presentationSize"];
    v5->_presentationSize.width = v6;
    v5->_presentationSize.height = v7;
    [v4 decodeCGSizeForKey:@"containerSize"];
    v5->_containerSize.width = v8;
    v5->_containerSize.height = v9;
    [v4 decodeDoubleForKey:@"offsetFromPresentationEdge"];
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