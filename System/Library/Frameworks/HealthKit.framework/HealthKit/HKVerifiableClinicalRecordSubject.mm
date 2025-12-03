@interface HKVerifiableClinicalRecordSubject
- (BOOL)isEqual:(id)equal;
- (HKVerifiableClinicalRecordSubject)init;
- (HKVerifiableClinicalRecordSubject)initWithCoder:(id)coder;
- (HKVerifiableClinicalRecordSubject)initWithFullName:(id)name dateOfBirthComponents:(id)components;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (HKVerifiableClinicalRecordSubject)initWithFullName:(id)name dateOfBirthComponents:(id)components
{
  nameCopy = name;
  componentsCopy = components;
  v14.receiver = self;
  v14.super_class = HKVerifiableClinicalRecordSubject;
  v8 = [(HKVerifiableClinicalRecordSubject *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    fullName = v8->_fullName;
    v8->_fullName = v9;

    v11 = [componentsCopy copy];
    dateOfBirthComponents = v8->_dateOfBirthComponents;
    v8->_dateOfBirthComponents = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      fullName = self->_fullName;
      fullName = [(HKVerifiableClinicalRecordSubject *)v7 fullName];
      if (fullName == fullName)
      {
        goto LABEL_9;
      }

      fullName2 = [(HKVerifiableClinicalRecordSubject *)v7 fullName];
      if (!fullName2)
      {
        v12 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v3 = fullName2;
      v11 = self->_fullName;
      fullName3 = [(HKVerifiableClinicalRecordSubject *)v7 fullName];
      if ([(NSString *)v11 isEqualToString:fullName3])
      {
LABEL_9:
        dateOfBirthComponents = self->_dateOfBirthComponents;
        dateOfBirthComponents = [(HKVerifiableClinicalRecordSubject *)v7 dateOfBirthComponents];
        v15 = dateOfBirthComponents;
        if (dateOfBirthComponents == dateOfBirthComponents)
        {

          v12 = 1;
        }

        else
        {
          dateOfBirthComponents2 = [(HKVerifiableClinicalRecordSubject *)v7 dateOfBirthComponents];
          if (dateOfBirthComponents2)
          {
            v17 = dateOfBirthComponents2;
            v18 = self->_dateOfBirthComponents;
            dateOfBirthComponents3 = [(HKVerifiableClinicalRecordSubject *)v7 dateOfBirthComponents];
            v12 = [(NSDateComponents *)v18 isEqual:dateOfBirthComponents3];
          }

          else
          {

            v12 = 0;
          }
        }

        if (fullName == fullName)
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

- (HKVerifiableClinicalRecordSubject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKVerifiableClinicalRecordSubject;
  v5 = [(HKVerifiableClinicalRecordSubject *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FullName"];
    fullName = v5->_fullName;
    v5->_fullName = v6;

    if (!v5->_fullName)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DateOfBirthComponents"];
    dateOfBirthComponents = v5->_dateOfBirthComponents;
    v5->_dateOfBirthComponents = v8;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  fullName = self->_fullName;
  coderCopy = coder;
  [coderCopy encodeObject:fullName forKey:@"FullName"];
  [coderCopy encodeObject:self->_dateOfBirthComponents forKey:@"DateOfBirthComponents"];
}

@end