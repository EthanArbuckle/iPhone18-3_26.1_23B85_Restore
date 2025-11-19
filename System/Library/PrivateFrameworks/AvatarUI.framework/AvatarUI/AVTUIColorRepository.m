@interface AVTUIColorRepository
+ (id)appBackgroundColor;
+ (id)dynamicColorWithLightColor:(id)a3 darkColor:(id)a4;
+ (id)groupSidePickerCellSelectedBackgroundColor;
+ (id)paddleViewBackgroundColor;
+ (id)trapOverlayBackgroundColor;
@end

@implementation AVTUIColorRepository

+ (id)appBackgroundColor
{
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v5 = [a1 dynamicColorWithLightColor:v3 darkColor:v4];

  return v5;
}

+ (id)trapOverlayBackgroundColor
{
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  v5 = [a1 dynamicColorWithLightColor:v3 darkColor:v4];

  return v5;
}

+ (id)dynamicColorWithLightColor:(id)a3 darkColor:(id)a4
{
  v15[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DD1B8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 traitCollectionWithUserInterfaceStyle:1];
  v14[0] = v8;
  v15[0] = v7;
  v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v14[1] = v9;
  v15[1] = v6;
  v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
  v14[2] = v10;
  v15[2] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = [MEMORY[0x1E69DC888] _dynamicColorWithColorsByTraitCollection:v11];

  return v12;
}

+ (id)groupSidePickerCellSelectedBackgroundColor
{
  v3 = [MEMORY[0x1E69DC888] blackColor];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [a1 dynamicColorWithLightColor:v3 darkColor:v4];
  v6 = [v5 colorWithAlphaComponent:0.1];

  return v6;
}

+ (id)paddleViewBackgroundColor
{
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  v5 = [a1 dynamicColorWithLightColor:v3 darkColor:v4];

  return v5;
}

@end