@interface NTKKuiperTypographicSizeProvider
- (CGSize)typographicSize;
- (NTKKuiperTypographicSizeProvider)init;
- (NTKKuiperTypographicSizeProviderDelegate)delegate;
- (double)rubberbanding;
- (void)_notifyDelegateUpdateNumeralSizes;
@end

@implementation NTKKuiperTypographicSizeProvider

- (NTKKuiperTypographicSizeProvider)init
{
  v6.receiver = self;
  v6.super_class = NTKKuiperTypographicSizeProvider;
  v2 = [(NTKKuiperTypographicSizeProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    baseTypographicSizeAnimation = v2->_baseTypographicSizeAnimation;
    v2->_baseTypographicSizeAnimation = v3;

    objc_storeWeak(&v2->_delegate, 0);
  }

  return v2;
}

- (void)_notifyDelegateUpdateNumeralSizes
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    [v4 typographicSizeProviderUpdateNumeralSizes:self];
  }
}

- (CGSize)typographicSize
{
  [(NTKKuiperFontTypographicSizeAnimation *)self->_baseTypographicSizeAnimation typographicSizeForFraction:fmax(fmin(self->_typographicStyleFraction, 1.0), 0.0)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)rubberbanding
{
  typographicStyleFraction = self->_typographicStyleFraction;
  v3 = fmin(typographicStyleFraction, 0.0);
  if (typographicStyleFraction <= 1.0)
  {
    return v3;
  }

  else
  {
    return typographicStyleFraction + -1.0;
  }
}

- (NTKKuiperTypographicSizeProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end