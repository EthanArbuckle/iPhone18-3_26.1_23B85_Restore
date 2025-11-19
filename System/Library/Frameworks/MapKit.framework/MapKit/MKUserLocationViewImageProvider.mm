@interface MKUserLocationViewImageProvider
@end

@implementation MKUserLocationViewImageProvider

void __55___MKUserLocationViewImageProvider__updateDefaultImage__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _setBalloonImage:*(a1 + 40)];

  v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [MEMORY[0x1E69DC888] systemGray3Color];
  [v4 _setBalloonImageTintColor:v3];
}

void __55___MKUserLocationViewImageProvider__updateContactImage__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _setBalloonImage:*(a1 + 40)];

  v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (*(a1 + 48) == 1)
  {
    [v4 _setBalloonImageTintColor:0];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] systemGray3Color];
    [v4 _setBalloonImageTintColor:v3];
  }
}

@end