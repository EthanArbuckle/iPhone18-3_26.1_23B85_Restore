@interface ContactsButtonSlotTraits
- (NSString)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ContactsButtonSlotTraits

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_199B41E58(coderCopy);
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_199B42DA8();

  v3 = sub_199DF9F5C();

  return v3;
}

@end