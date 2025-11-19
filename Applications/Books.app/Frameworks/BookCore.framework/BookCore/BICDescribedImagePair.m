@interface BICDescribedImagePair
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDescribedImagePair:(id)a3;
@end

@implementation BICDescribedImagePair

- (BOOL)isEqualToDescribedImagePair:(id)a3
{
  v4 = a3;
  v5 = [v4 sourceImage];
  v6 = [(BICDescribedImagePair *)self sourceImage];
  if ([v5 isEqual:v6])
  {
    v7 = [v4 destinationImage];
    v8 = [(BICDescribedImagePair *)self destinationImage];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BICDescribedImagePair *)self isEqualToDescribedImagePair:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end