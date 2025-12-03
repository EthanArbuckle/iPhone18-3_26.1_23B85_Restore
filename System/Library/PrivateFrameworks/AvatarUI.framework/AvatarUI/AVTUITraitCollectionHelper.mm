@interface AVTUITraitCollectionHelper
+ (id)overridenTraitFromTrait:(id)trait;
@end

@implementation AVTUITraitCollectionHelper

+ (id)overridenTraitFromTrait:(id)trait
{
  v9[2] = *MEMORY[0x1E69E9840];
  traitCopy = trait;
  v4 = traitCopy;
  if ([traitCopy userInterfaceStyle] == 2)
  {
    v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceLevel:1];
    v6 = MEMORY[0x1E69DD1B8];
    v9[0] = traitCopy;
    v9[1] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v4 = [v6 traitCollectionWithTraitsFromCollections:v7];
  }

  return v4;
}

@end