@interface HKAccountOwnerType
+ (id)allTypes;
@end

@implementation HKAccountOwnerType

+ (id)allTypes
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 accountOwnerTypeForIdentifier:@"HKMedicalTypeIdentifierAccountOwner"];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end