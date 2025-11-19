@interface HKClinicalCoding
- (BOOL)isEqual:(id)a3;
- (HKClinicalCoding)init;
- (HKClinicalCoding)initWithCoder:(id)a3;
- (HKClinicalCoding)initWithSystem:(id)a3 version:(id)a4 code:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalCoding

- (HKClinicalCoding)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalCoding)initWithSystem:(id)a3 version:(id)a4 code:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKClinicalCoding;
  v11 = [(HKClinicalCoding *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    system = v11->_system;
    v11->_system = v12;

    v14 = [v9 copy];
    version = v11->_version;
    v11->_version = v14;

    v16 = [v10 copy];
    code = v11->_code;
    v11->_code = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKClinicalCoding *)v5 system];
      v7 = [(HKClinicalCoding *)self system];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKClinicalCoding *)self system];
        if (!v9)
        {
          goto LABEL_19;
        }

        v10 = v9;
        v11 = [(HKClinicalCoding *)v5 system];
        v12 = [(HKClinicalCoding *)self system];
        v13 = [v11 isEqualToString:v12];

        if (!v13)
        {
          goto LABEL_20;
        }
      }

      v6 = [(HKClinicalCoding *)v5 version];
      v15 = [(HKClinicalCoding *)self version];
      v8 = v15;
      if (v6 == v15)
      {
      }

      else
      {
        v16 = [(HKClinicalCoding *)self version];
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = v16;
        v18 = [(HKClinicalCoding *)v5 version];
        v19 = [(HKClinicalCoding *)self version];
        v20 = [v18 isEqualToString:v19];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      v6 = [(HKClinicalCoding *)v5 code];
      v21 = [(HKClinicalCoding *)self code];
      v8 = v21;
      if (v6 == v21)
      {

LABEL_24:
        v14 = 1;
        goto LABEL_21;
      }

      v22 = [(HKClinicalCoding *)self code];
      if (v22)
      {
        v23 = v22;
        v24 = [(HKClinicalCoding *)v5 code];
        v25 = [(HKClinicalCoding *)self code];
        v26 = [v24 isEqualToString:v25];

        if (v26)
        {
          goto LABEL_24;
        }

LABEL_20:
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }

LABEL_19:

      goto LABEL_20;
    }

    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_system hash];
  v4 = [(NSString *)self->_version hash]^ v3;
  return v4 ^ [(NSString *)self->_code hash];
}

- (HKClinicalCoding)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKClinicalCoding;
  v5 = [(HKClinicalCoding *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SystemIdentifier"];
    system = v5->_system;
    v5->_system = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
    version = v5->_version;
    v5->_version = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Code"];
    code = v5->_code;
    v5->_code = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  system = self->_system;
  v5 = a3;
  [v5 encodeObject:system forKey:@"SystemIdentifier"];
  [v5 encodeObject:self->_version forKey:@"Version"];
  [v5 encodeObject:self->_code forKey:@"Code"];
}

@end