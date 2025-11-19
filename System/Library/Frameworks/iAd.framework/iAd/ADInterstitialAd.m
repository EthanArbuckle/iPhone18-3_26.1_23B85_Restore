@interface ADInterstitialAd
- (id)delegate;
@end

@implementation ADInterstitialAd

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end