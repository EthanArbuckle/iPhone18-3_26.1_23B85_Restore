@interface HKAllergyRecordType
+ (id)allTypes;
@end

@implementation HKAllergyRecordType

+ (id)allTypes
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [self allergyRecordTypeForIdentifier:@"HKMedicalTypeIdentifierAllergyRecord"];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end