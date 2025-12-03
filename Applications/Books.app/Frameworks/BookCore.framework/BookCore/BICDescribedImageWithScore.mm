@interface BICDescribedImageWithScore
- (BICDescribedImage)image;
- (int64_t)compare:(id)compare;
@end

@implementation BICDescribedImageWithScore

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  score = [(BICDescribedImageWithScore *)self score];
  score2 = [compareCopy score];

  if (score < score2)
  {
    return -1;
  }

  else
  {
    return score != score2;
  }
}

- (BICDescribedImage)image
{
  WeakRetained = objc_loadWeakRetained(&self->_image);

  return WeakRetained;
}

@end