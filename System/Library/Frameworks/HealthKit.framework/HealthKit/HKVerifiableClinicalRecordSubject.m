@interface HKVerifiableClinicalRecordSubject
- (BOOL)isEqual:(id)a3;
- (HKVerifiableClinicalRecordSubject)init;
- (HKVerifiableClinicalRecordSubject)initWithCoder:(id)a3;
- (HKVerifiableClinicalRecordSubject)initWithFullName:(id)a3 dateOfBirthComponents:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKVerifiableClinicalRecordSubject

- (HKVerifiableClinicalRecordSubject)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKVerifiableClinicalRecordSubject)initWithFullName:(id)a3 dateOfBirthComponents:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKVerifiableClinicalRecordSubject;
  v8 = [(HKVerifiableClinicalRecordSubject *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    fullName = v8->_fullName;
    v8->_fullName = v9;

    v11 = [v7 copy];
    dateOfBirthComponents = v8->_dateOfBirthComponents;
    v8->_dateOfBirthComponents = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      fullName = self->_fullName;
      v9 = [(HKVerifiableClinicalRecordSubject *)v7 fullName];
      if (fullName == v9)
      {
        goto LABEL_9;
      }

      v10 = [(HKVerifiableClinicalRecordSubject *)v7 fullName];
      if (!v10)
      {
        v12 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v3 = v10;
      v11 = self->_fullName;
      v4 = [(HKVerifiableClinicalRecordSubject *)v7 fullName];
      if ([(NSString *)v11 isEqualToString:v4])
      {
LABEL_9:
        dateOfBirthComponents = self->_dateOfBirthComponents;
        v14 = [(HKVerifiableClinicalRecordSubject *)v7 dateOfBirthComponents];
        v15 = v14;
        if (dateOfBirthComponents == v14)
        {

          v12 = 1;
        }

        else
        {
          v16 = [(HKVerifiableClinicalRecordSubject *)v7 dateOfBirthComponents];
          if (v16)
          {
            v17 = v16;
            v18 = self->_dateOfBirthComponents;
            v19 = [(HKVerifiableClinicalRecordSubject *)v7 dateOfBirthComponents];
            v12 = [(NSDateComponents *)v18 isEqual:v19];
          }

          else
          {

            v12 = 0;
          }
        }

        if (fullName == v9)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_18:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p fullName = %@, dateOfBirthComponents = %@>", v5, self, self->_fullName, self->_dateOfBirthComponents];

  return v6;
}

- (HKVerifiableClinicalRecordSubject)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKVerifiableClinicalRecordSubject;
  v5 = [(HKVerifiableClinicalRecordSubject *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FullName"];
    fullName = v5->_fullName;
    v5->_fullName = v6;

    if (!v5->_fullName)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DateOfBirthComponents"];
    dateOfBirthComponents = v5->_dateOfBirthComponents;
    v5->_dateOfBirthComponents = v8;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  fullName = self->_fullName;
  v5 = a3;
  [v5 encodeObject:fullName forKey:@"FullName"];
  [v5 encodeObject:self->_dateOfBirthComponents forKey:@"DateOfBirthComponents"];
}

@end