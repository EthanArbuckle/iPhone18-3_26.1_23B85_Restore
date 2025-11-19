@interface UIFont
@end

@implementation UIFont

void __52__UIFont_MKExtras___mapkit_accessibilityTextEnabled__block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDC38];
  v4[0] = *MEMORY[0x1E69DDC40];
  v4[1] = v0;
  v1 = *MEMORY[0x1E69DDC28];
  v4[2] = *MEMORY[0x1E69DDC30];
  v4[3] = v1;
  v4[4] = *MEMORY[0x1E69DDC20];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];
  v3 = _mapkit_accessibilityTextEnabled_largeSizes;
  _mapkit_accessibilityTextEnabled_largeSizes = v2;
}

void __42__UIFont_MKExtras___mapkit_ax3TextEnabled__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDC28];
  v3[0] = *MEMORY[0x1E69DDC30];
  v3[1] = v0;
  v3[2] = *MEMORY[0x1E69DDC20];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v2 = _mapkit_ax3TextEnabled_largeSizes;
  _mapkit_ax3TextEnabled_largeSizes = v1;
}

void __107__UIFont_MKCrossPlatformExtras___mapkit_scaledValueForValue_scalingForMacIdiom_respectingTraitEnvironment___block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  _mapkit_scaledValueForValue_scalingForMacIdiom_respectingTraitEnvironment__deviceIdiom = [v0 userInterfaceIdiom];
}

@end