@interface BICDescribedImageWithScore
- (BICDescribedImage)image;
- (int64_t)compare:(id)a3;
@end

@implementation BICDescribedImageWithScore

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(BICDescribedImageWithScore *)self score];
  v6 = [v4 score];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 != v6;
  }
}

- (BICDescribedImage)image
{
  WeakRetained = objc_loadWeakRetained(&self->_image);

  return WeakRetained;
}

@end