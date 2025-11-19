@interface NSCoder(VNEntityIdentificationModelAdditions)
- (id)vn_decodeEntityUniqueIdentifierArrayForKey:()VNEntityIdentificationModelAdditions;
- (id)vn_decodeEntityUniqueIdentifierForKey:()VNEntityIdentificationModelAdditions;
@end

@implementation NSCoder(VNEntityIdentificationModelAdditions)

- (id)vn_decodeEntityUniqueIdentifierArrayForKey:()VNEntityIdentificationModelAdditions
{
  v4 = a3;
  v5 = VNEntityUniqueIdentifierClasses();
  v6 = [a1 decodeArrayOfObjectsOfClasses:v5 forKey:v4];

  return v6;
}

- (id)vn_decodeEntityUniqueIdentifierForKey:()VNEntityIdentificationModelAdditions
{
  v4 = a3;
  v5 = VNEntityUniqueIdentifierClasses();
  v6 = [a1 decodeObjectOfClasses:v5 forKey:v4];

  return v6;
}

@end