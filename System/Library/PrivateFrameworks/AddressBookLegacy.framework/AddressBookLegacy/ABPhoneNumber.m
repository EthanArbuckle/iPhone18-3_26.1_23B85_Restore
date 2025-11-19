@interface ABPhoneNumber
- (ABPhoneNumber)initWithPhoneNumberString:(id)a3 countryCode:(id)a4;
- (void)dealloc;
@end

@implementation ABPhoneNumber

- (void)dealloc
{
  phoneNumberBytes = self->_phoneNumberBytes;
  if (phoneNumberBytes)
  {
    free(phoneNumberBytes);
  }

  v4.receiver = self;
  v4.super_class = ABPhoneNumber;
  [(ABPhoneNumber *)&v4 dealloc];
}

- (ABPhoneNumber)initWithPhoneNumberString:(id)a3 countryCode:(id)a4
{
  v10.receiver = self;
  v10.super_class = ABPhoneNumber;
  v6 = [(ABPhoneNumber *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v8 = ABCreateNormalizedPhoneNumberAndDecompose(a3, a4, 1, v6 + 10, v6 + 8);
    v7->_phoneNumberBytes = v8;
    if (v8)
    {
      v7->_originalStringValue = [a3 copy];
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

@end