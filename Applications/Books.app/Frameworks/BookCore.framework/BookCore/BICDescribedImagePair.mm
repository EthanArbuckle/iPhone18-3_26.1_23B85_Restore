@interface BICDescribedImagePair
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDescribedImagePair:(id)pair;
@end

@implementation BICDescribedImagePair

- (BOOL)isEqualToDescribedImagePair:(id)pair
{
  pairCopy = pair;
  sourceImage = [pairCopy sourceImage];
  sourceImage2 = [(BICDescribedImagePair *)self sourceImage];
  if ([sourceImage isEqual:sourceImage2])
  {
    destinationImage = [pairCopy destinationImage];
    destinationImage2 = [(BICDescribedImagePair *)self destinationImage];
    v9 = [destinationImage isEqual:destinationImage2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BICDescribedImagePair *)self isEqualToDescribedImagePair:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end