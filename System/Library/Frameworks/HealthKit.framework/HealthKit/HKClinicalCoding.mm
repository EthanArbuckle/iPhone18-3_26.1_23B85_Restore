@interface HKClinicalCoding
- (BOOL)isEqual:(id)equal;
- (HKClinicalCoding)init;
- (HKClinicalCoding)initWithCoder:(id)coder;
- (HKClinicalCoding)initWithSystem:(id)system version:(id)version code:(id)code;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKClinicalCoding)initWithSystem:(id)system version:(id)version code:(id)code
{
  systemCopy = system;
  versionCopy = version;
  codeCopy = code;
  v19.receiver = self;
  v19.super_class = HKClinicalCoding;
  v11 = [(HKClinicalCoding *)&v19 init];
  if (v11)
  {
    v12 = [systemCopy copy];
    system = v11->_system;
    v11->_system = v12;

    v14 = [versionCopy copy];
    version = v11->_version;
    v11->_version = v14;

    v16 = [codeCopy copy];
    code = v11->_code;
    v11->_code = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      system = [(HKClinicalCoding *)v5 system];
      system2 = [(HKClinicalCoding *)self system];
      v8 = system2;
      if (system == system2)
      {
      }

      else
      {
        system3 = [(HKClinicalCoding *)self system];
        if (!system3)
        {
          goto LABEL_19;
        }

        v10 = system3;
        system4 = [(HKClinicalCoding *)v5 system];
        system5 = [(HKClinicalCoding *)self system];
        v13 = [system4 isEqualToString:system5];

        if (!v13)
        {
          goto LABEL_20;
        }
      }

      system = [(HKClinicalCoding *)v5 version];
      version = [(HKClinicalCoding *)self version];
      v8 = version;
      if (system == version)
      {
      }

      else
      {
        version2 = [(HKClinicalCoding *)self version];
        if (!version2)
        {
          goto LABEL_19;
        }

        v17 = version2;
        version3 = [(HKClinicalCoding *)v5 version];
        version4 = [(HKClinicalCoding *)self version];
        v20 = [version3 isEqualToString:version4];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      system = [(HKClinicalCoding *)v5 code];
      code = [(HKClinicalCoding *)self code];
      v8 = code;
      if (system == code)
      {

LABEL_24:
        v14 = 1;
        goto LABEL_21;
      }

      code2 = [(HKClinicalCoding *)self code];
      if (code2)
      {
        v23 = code2;
        code3 = [(HKClinicalCoding *)v5 code];
        code4 = [(HKClinicalCoding *)self code];
        v26 = [code3 isEqualToString:code4];

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

- (HKClinicalCoding)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKClinicalCoding;
  v5 = [(HKClinicalCoding *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SystemIdentifier"];
    system = v5->_system;
    v5->_system = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
    version = v5->_version;
    v5->_version = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Code"];
    code = v5->_code;
    v5->_code = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  system = self->_system;
  coderCopy = coder;
  [coderCopy encodeObject:system forKey:@"SystemIdentifier"];
  [coderCopy encodeObject:self->_version forKey:@"Version"];
  [coderCopy encodeObject:self->_code forKey:@"Code"];
}

@end