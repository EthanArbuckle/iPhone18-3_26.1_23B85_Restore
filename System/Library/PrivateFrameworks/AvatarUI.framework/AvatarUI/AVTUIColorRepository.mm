@interface AVTUIColorRepository
+ (id)appBackgroundColor;
+ (id)dynamicColorWithLightColor:(id)color darkColor:(id)darkColor;
+ (id)groupSidePickerCellSelectedBackgroundColor;
+ (id)paddleViewBackgroundColor;
+ (id)trapOverlayBackgroundColor;
@end

@implementation AVTUIColorRepository

+ (id)appBackgroundColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v5 = [self dynamicColorWithLightColor:systemBackgroundColor darkColor:secondarySystemBackgroundColor];

  return v5;
}

+ (id)trapOverlayBackgroundColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  v5 = [self dynamicColorWithLightColor:systemBackgroundColor darkColor:tertiarySystemBackgroundColor];

  return v5;
}

+ (id)dynamicColorWithLightColor:(id)color darkColor:(id)darkColor
{
  v15[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DD1B8];
  darkColorCopy = darkColor;
  colorCopy = color;
  v8 = [v5 traitCollectionWithUserInterfaceStyle:1];
  v14[0] = v8;
  v15[0] = colorCopy;
  v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v14[1] = v9;
  v15[1] = darkColorCopy;
  v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
  v14[2] = v10;
  v15[2] = colorCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = [MEMORY[0x1E69DC888] _dynamicColorWithColorsByTraitCollection:v11];

  return v12;
}

+ (id)groupSidePickerCellSelectedBackgroundColor
{
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [self dynamicColorWithLightColor:blackColor darkColor:whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.1];

  return v6;
}

+ (id)paddleViewBackgroundColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  v5 = [self dynamicColorWithLightColor:systemBackgroundColor darkColor:tertiarySystemBackgroundColor];

  return v5;
}

@end