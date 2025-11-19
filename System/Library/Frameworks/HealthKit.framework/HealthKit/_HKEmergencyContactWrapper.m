@interface _HKEmergencyContactWrapper
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation _HKEmergencyContactWrapper

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_HKEmergencyContactWrapper *)self contact];
    v6 = [v5 phoneNumber];
    v7 = [v4 contact];
    v8 = [v7 phoneNumber];
    if (v6 == v8)
    {
      v15 = 1;
    }

    else
    {
      v9 = [v4 contact];
      v10 = [v9 phoneNumber];
      if (v10)
      {
        v17 = [(_HKEmergencyContactWrapper *)self contact];
        v11 = [v17 phoneNumber];
        v12 = [v4 contact];
        [v12 phoneNumber];
        v18 = v5;
        v14 = v13 = v9;
        v15 = [v11 isEqual:v14];

        v9 = v13;
        v5 = v18;
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
  v2 = [(_HKEmergencyContact *)self->_contact phoneNumber];
  v3 = [v2 hash];

  return v3;
}

@end