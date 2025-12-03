@interface BCInsetsFittingButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)bk_extraWidthNeeded;
@end

@implementation BCInsetsFittingButton

- (CGSize)intrinsicContentSize
{
  v12.receiver = self;
  v12.super_class = BCInsetsFittingButton;
  [(BCInsetsFittingButton *)&v12 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = fabs(v5);
  if (fabs(v3) >= 2.22044605e-16 && v7 >= 2.22044605e-16)
  {
    [(BCInsetsFittingButton *)self bk_extraWidthNeeded:2.22044605e-16];
    v4 = v4 + v9;
  }

  v10 = v4;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v13.receiver = self;
  v13.super_class = BCInsetsFittingButton;
  [(BCInsetsFittingButton *)&v13 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  v8 = fabs(v6);
  if (fabs(v4) >= 2.22044605e-16 && v8 >= 2.22044605e-16)
  {
    [(BCInsetsFittingButton *)self bk_extraWidthNeeded:2.22044605e-16];
    v5 = v5 + v10;
  }

  v11 = v5;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

- (double)bk_extraWidthNeeded
{
  currentImage = [(BCInsetsFittingButton *)self currentImage];

  if (currentImage)
  {
    [(BCInsetsFittingButton *)self imageEdgeInsets];
    v6 = v4 + v5 + 0.0;
  }

  else
  {
    v6 = 0.0;
  }

  currentTitle = [(BCInsetsFittingButton *)self currentTitle];
  v8 = [currentTitle length];

  if (v8)
  {
    [(BCInsetsFittingButton *)self titleEdgeInsets];
    v6 = v6 + v9 + v10;
  }

  if (fabs(v6) >= 2.22044605e-16)
  {
    [(BCInsetsFittingButton *)self contentEdgeInsets];
    return v6 + v11 + v12;
  }

  return v6;
}

@end