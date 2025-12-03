@interface ADImageDimensions
+ (id)imageDimensionsWithWidth:(unint64_t)width height:(unint64_t)height;
- (BOOL)isEqual:(id)equal;
@end

@implementation ADImageDimensions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      width = [(ADImageDimensions *)self width];
      if (width == [(ADImageDimensions *)v5 width])
      {
        height = [(ADImageDimensions *)self height];
        v8 = height == [(ADImageDimensions *)v5 height];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)imageDimensionsWithWidth:(unint64_t)width height:(unint64_t)height
{
  v6 = objc_alloc_init(ADImageDimensions);
  [(ADImageDimensions *)v6 setWidth:width];
  [(ADImageDimensions *)v6 setHeight:height];

  return v6;
}

@end