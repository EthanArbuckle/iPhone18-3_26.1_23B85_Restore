@interface _CNContactEmailAddressEquivalence
- (BOOL)isEquivalentToString:(id)a3 strict:(BOOL *)a4;
- (_CNContactEmailAddressEquivalence)initWithEmailAddress:(id)a3;
@end

@implementation _CNContactEmailAddressEquivalence

- (_CNContactEmailAddressEquivalence)initWithEmailAddress:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CNContactEmailAddressEquivalence;
  v5 = [(_CNContactEmailAddressEquivalence *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    rawString = v5->_rawString;
    v5->_rawString = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEquivalentToString:(id)a3 strict:(BOOL *)a4
{
  v5 = [(NSString *)self->_rawString _cn_caseInsensitiveIsEqual:a3];
  if (v5)
  {
    *a4 = 1;
  }

  return v5;
}

@end