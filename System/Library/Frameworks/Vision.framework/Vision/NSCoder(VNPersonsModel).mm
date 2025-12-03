@interface NSCoder(VNPersonsModel)
- (id)vn_decodePersonUniqueIdentifierForKey:()VNPersonsModel;
@end

@implementation NSCoder(VNPersonsModel)

- (id)vn_decodePersonUniqueIdentifierForKey:()VNPersonsModel
{
  v4 = a3;
  v5 = VNEntityUniqueIdentifierClasses();
  v6 = [self decodeObjectOfClasses:v5 forKey:v4];

  return v6;
}

@end