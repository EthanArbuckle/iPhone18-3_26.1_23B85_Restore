@interface NSCoder(VNEntityIdentificationModelAdditions)
- (id)vn_decodeEntityUniqueIdentifierArrayForKey:()VNEntityIdentificationModelAdditions;
- (id)vn_decodeEntityUniqueIdentifierForKey:()VNEntityIdentificationModelAdditions;
@end

@implementation NSCoder(VNEntityIdentificationModelAdditions)

- (id)vn_decodeEntityUniqueIdentifierArrayForKey:()VNEntityIdentificationModelAdditions
{
  v4 = a3;
  v5 = VNEntityUniqueIdentifierClasses();
  v6 = [self decodeArrayOfObjectsOfClasses:v5 forKey:v4];

  return v6;
}

- (id)vn_decodeEntityUniqueIdentifierForKey:()VNEntityIdentificationModelAdditions
{
  v4 = a3;
  v5 = VNEntityUniqueIdentifierClasses();
  v6 = [self decodeObjectOfClasses:v5 forKey:v4];

  return v6;
}

@end