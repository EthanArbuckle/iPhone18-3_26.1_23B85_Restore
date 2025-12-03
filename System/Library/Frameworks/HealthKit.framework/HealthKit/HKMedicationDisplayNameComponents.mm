@interface HKMedicationDisplayNameComponents
- (BOOL)isEqual:(id)equal;
- (HKMedicationDisplayNameComponents)init;
- (HKMedicationDisplayNameComponents)initWithCoder:(id)coder;
- (HKMedicationDisplayNameComponents)initWithFullDisplayName:(id)name medicationDisplayName:(id)displayName displayStrength:(id)strength;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationDisplayNameComponents

- (HKMedicationDisplayNameComponents)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationDisplayNameComponents)initWithFullDisplayName:(id)name medicationDisplayName:(id)displayName displayStrength:(id)strength
{
  nameCopy = name;
  displayNameCopy = displayName;
  strengthCopy = strength;
  v19.receiver = self;
  v19.super_class = HKMedicationDisplayNameComponents;
  v11 = [(HKMedicationDisplayNameComponents *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    fullDisplayName = v11->_fullDisplayName;
    v11->_fullDisplayName = v12;

    v14 = [displayNameCopy copy];
    medicationDisplayName = v11->_medicationDisplayName;
    v11->_medicationDisplayName = v14;

    v16 = [strengthCopy copy];
    displayStrength = v11->_displayStrength;
    v11->_displayStrength = v16;
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
      fullDisplayName = [(HKMedicationDisplayNameComponents *)v5 fullDisplayName];
      fullDisplayName2 = [(HKMedicationDisplayNameComponents *)self fullDisplayName];
      v8 = fullDisplayName2;
      if (fullDisplayName == fullDisplayName2)
      {
      }

      else
      {
        fullDisplayName3 = [(HKMedicationDisplayNameComponents *)self fullDisplayName];
        if (!fullDisplayName3)
        {
          goto LABEL_19;
        }

        v10 = fullDisplayName3;
        fullDisplayName4 = [(HKMedicationDisplayNameComponents *)v5 fullDisplayName];
        fullDisplayName5 = [(HKMedicationDisplayNameComponents *)self fullDisplayName];
        v13 = [fullDisplayName4 isEqualToString:fullDisplayName5];

        if (!v13)
        {
          goto LABEL_20;
        }
      }

      fullDisplayName = [(HKMedicationDisplayNameComponents *)v5 medicationDisplayName];
      medicationDisplayName = [(HKMedicationDisplayNameComponents *)self medicationDisplayName];
      v8 = medicationDisplayName;
      if (fullDisplayName == medicationDisplayName)
      {
      }

      else
      {
        medicationDisplayName2 = [(HKMedicationDisplayNameComponents *)self medicationDisplayName];
        if (!medicationDisplayName2)
        {
          goto LABEL_19;
        }

        v17 = medicationDisplayName2;
        medicationDisplayName3 = [(HKMedicationDisplayNameComponents *)v5 medicationDisplayName];
        medicationDisplayName4 = [(HKMedicationDisplayNameComponents *)self medicationDisplayName];
        v20 = [medicationDisplayName3 isEqualToString:medicationDisplayName4];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      fullDisplayName = [(HKMedicationDisplayNameComponents *)v5 displayStrength];
      displayStrength = [(HKMedicationDisplayNameComponents *)self displayStrength];
      v8 = displayStrength;
      if (fullDisplayName == displayStrength)
      {

LABEL_24:
        v14 = 1;
        goto LABEL_21;
      }

      displayStrength2 = [(HKMedicationDisplayNameComponents *)self displayStrength];
      if (displayStrength2)
      {
        v23 = displayStrength2;
        displayStrength3 = [(HKMedicationDisplayNameComponents *)v5 displayStrength];
        displayStrength4 = [(HKMedicationDisplayNameComponents *)self displayStrength];
        v26 = [displayStrength3 isEqualToString:displayStrength4];

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
  v3 = [(NSString *)self->_fullDisplayName hash];
  v4 = [(NSString *)self->_medicationDisplayName hash]^ v3;
  return v4 ^ [(NSString *)self->_displayStrength hash];
}

- (HKMedicationDisplayNameComponents)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKMedicationDisplayNameComponents;
  v5 = [(HKMedicationDisplayNameComponents *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FullDisplayNameKey"];
    fullDisplayName = v5->_fullDisplayName;
    v5->_fullDisplayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicationDisplayNameKey"];
    medicationDisplayName = v5->_medicationDisplayName;
    v5->_medicationDisplayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayStrengthKey"];
    displayStrength = v5->_displayStrength;
    v5->_displayStrength = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  fullDisplayName = self->_fullDisplayName;
  coderCopy = coder;
  [coderCopy encodeObject:fullDisplayName forKey:@"FullDisplayNameKey"];
  [coderCopy encodeObject:self->_medicationDisplayName forKey:@"MedicationDisplayNameKey"];
  [coderCopy encodeObject:self->_displayStrength forKey:@"DisplayStrengthKey"];
}

@end