@interface AMSUICommonDynamicColor
+ (id)dynamicColorWithLightColor:(id)a3 darkColor:(id)a4 lightHighContrastColor:(id)a5 darkHighContrastColor:(id)a6;
@end

@implementation AMSUICommonDynamicColor

+ (id)dynamicColorWithLightColor:(id)a3 darkColor:(id)a4 lightHighContrastColor:(id)a5 darkHighContrastColor:(id)a6
{
  v33[2] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69DD1B8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 traitCollectionWithUserInterfaceStyle:1];
  v33[0] = v14;
  v15 = [MEMORY[0x1E69DD1B8] _traitCollectionWithContrast:1];
  v33[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v17 = [v9 traitCollectionWithTraitsFromCollections:v16];

  v18 = MEMORY[0x1E69DD1B8];
  v19 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v32[0] = v19;
  v20 = [MEMORY[0x1E69DD1B8] _traitCollectionWithContrast:1];
  v32[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v22 = [v18 traitCollectionWithTraitsFromCollections:v21];

  v23 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
  v30[0] = v23;
  v31[0] = v13;
  v24 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
  v30[1] = v24;
  v31[1] = v13;
  v25 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v30[2] = v25;
  v30[3] = v17;
  v31[2] = v12;
  v31[3] = v11;
  v30[4] = v22;
  v31[4] = v10;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:5];

  v27 = [MEMORY[0x1E69DC888] _dynamicColorWithColorsByTraitCollection:v26];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

@end