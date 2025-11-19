@interface ContactsButtonSlotTraits
- (NSString)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ContactsButtonSlotTraits

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_199B41E58(v4);
}

- (NSString)debugDescription
{
  v2 = self;
  sub_199B42DA8();

  v3 = sub_199DF9F5C();

  return v3;
}

@end