@interface ADImageDimensions
+ (id)imageDimensionsWithWidth:(unint64_t)a3 height:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation ADImageDimensions

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ADImageDimensions *)self width];
      if (v6 == [(ADImageDimensions *)v5 width])
      {
        v7 = [(ADImageDimensions *)self height];
        v8 = v7 == [(ADImageDimensions *)v5 height];
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

+ (id)imageDimensionsWithWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v6 = objc_alloc_init(ADImageDimensions);
  [(ADImageDimensions *)v6 setWidth:a3];
  [(ADImageDimensions *)v6 setHeight:a4];

  return v6;
}

@end