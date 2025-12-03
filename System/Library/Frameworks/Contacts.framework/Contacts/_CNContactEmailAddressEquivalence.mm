@interface _CNContactEmailAddressEquivalence
- (BOOL)isEquivalentToString:(id)string strict:(BOOL *)strict;
- (_CNContactEmailAddressEquivalence)initWithEmailAddress:(id)address;
@end

@implementation _CNContactEmailAddressEquivalence

- (_CNContactEmailAddressEquivalence)initWithEmailAddress:(id)address
{
  addressCopy = address;
  v10.receiver = self;
  v10.super_class = _CNContactEmailAddressEquivalence;
  v5 = [(_CNContactEmailAddressEquivalence *)&v10 init];
  if (v5)
  {
    v6 = [addressCopy copy];
    rawString = v5->_rawString;
    v5->_rawString = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEquivalentToString:(id)string strict:(BOOL *)strict
{
  v5 = [(NSString *)self->_rawString _cn_caseInsensitiveIsEqual:string];
  if (v5)
  {
    *strict = 1;
  }

  return v5;
}

@end