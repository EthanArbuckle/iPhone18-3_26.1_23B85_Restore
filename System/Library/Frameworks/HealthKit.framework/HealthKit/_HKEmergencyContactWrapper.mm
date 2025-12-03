@interface _HKEmergencyContactWrapper
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _HKEmergencyContactWrapper

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contact = [(_HKEmergencyContactWrapper *)self contact];
    phoneNumber = [contact phoneNumber];
    contact2 = [equalCopy contact];
    phoneNumber2 = [contact2 phoneNumber];
    if (phoneNumber == phoneNumber2)
    {
      v15 = 1;
    }

    else
    {
      contact3 = [equalCopy contact];
      phoneNumber3 = [contact3 phoneNumber];
      if (phoneNumber3)
      {
        contact4 = [(_HKEmergencyContactWrapper *)self contact];
        phoneNumber4 = [contact4 phoneNumber];
        contact5 = [equalCopy contact];
        [contact5 phoneNumber];
        v18 = contact;
        v14 = v13 = contact3;
        v15 = [phoneNumber4 isEqual:v14];

        contact3 = v13;
        contact = v18;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  phoneNumber = [(_HKEmergencyContact *)self->_contact phoneNumber];
  v3 = [phoneNumber hash];

  return v3;
}

@end