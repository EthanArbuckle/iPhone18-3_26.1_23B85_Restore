@interface AVTUITraitCollectionHelper
+ (id)overridenTraitFromTrait:(id)a3;
@end

@implementation AVTUITraitCollectionHelper

+ (id)overridenTraitFromTrait:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if ([v3 userInterfaceStyle] == 2)
  {
    v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceLevel:1];
    v6 = MEMORY[0x1E69DD1B8];
    v9[0] = v3;
    v9[1] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v4 = [v6 traitCollectionWithTraitsFromCollections:v7];
  }

  return v4;
}

@end