@interface ADBannerView
+ (CGSize)sizeFromBannerContentSizeIdentifier:(id)identifier;
- (id)delegate;
@end

@implementation ADBannerView

+ (CGSize)sizeFromBannerContentSizeIdentifier:(id)identifier
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end