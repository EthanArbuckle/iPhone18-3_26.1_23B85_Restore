@interface HKMedicationDisplayNameComponents
- (BOOL)isEqual:(id)a3;
- (HKMedicationDisplayNameComponents)init;
- (HKMedicationDisplayNameComponents)initWithCoder:(id)a3;
- (HKMedicationDisplayNameComponents)initWithFullDisplayName:(id)a3 medicationDisplayName:(id)a4 displayStrength:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKMedicationDisplayNameComponents)initWithFullDisplayName:(id)a3 medicationDisplayName:(id)a4 displayStrength:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKMedicationDisplayNameComponents;
  v11 = [(HKMedicationDisplayNameComponents *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    fullDisplayName = v11->_fullDisplayName;
    v11->_fullDisplayName = v12;

    v14 = [v9 copy];
    medicationDisplayName = v11->_medicationDisplayName;
    v11->_medicationDisplayName = v14;

    v16 = [v10 copy];
    displayStrength = v11->_displayStrength;
    v11->_displayStrength = v16;
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
      v6 = [(HKMedicationDisplayNameComponents *)v5 fullDisplayName];
      v7 = [(HKMedicationDisplayNameComponents *)self fullDisplayName];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKMedicationDisplayNameComponents *)self fullDisplayName];
        if (!v9)
        {
          goto LABEL_19;
        }

        v10 = v9;
        v11 = [(HKMedicationDisplayNameComponents *)v5 fullDisplayName];
        v12 = [(HKMedicationDisplayNameComponents *)self fullDisplayName];
        v13 = [v11 isEqualToString:v12];

        if (!v13)
        {
          goto LABEL_20;
        }
      }

      v6 = [(HKMedicationDisplayNameComponents *)v5 medicationDisplayName];
      v15 = [(HKMedicationDisplayNameComponents *)self medicationDisplayName];
      v8 = v15;
      if (v6 == v15)
      {
      }

      else
      {
        v16 = [(HKMedicationDisplayNameComponents *)self medicationDisplayName];
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = v16;
        v18 = [(HKMedicationDisplayNameComponents *)v5 medicationDisplayName];
        v19 = [(HKMedicationDisplayNameComponents *)self medicationDisplayName];
        v20 = [v18 isEqualToString:v19];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      v6 = [(HKMedicationDisplayNameComponents *)v5 displayStrength];
      v21 = [(HKMedicationDisplayNameComponents *)self displayStrength];
      v8 = v21;
      if (v6 == v21)
      {

LABEL_24:
        v14 = 1;
        goto LABEL_21;
      }

      v22 = [(HKMedicationDisplayNameComponents *)self displayStrength];
      if (v22)
      {
        v23 = v22;
        v24 = [(HKMedicationDisplayNameComponents *)v5 displayStrength];
        v25 = [(HKMedicationDisplayNameComponents *)self displayStrength];
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
  v3 = [(NSString *)self->_fullDisplayName hash];
  v4 = [(NSString *)self->_medicationDisplayName hash]^ v3;
  return v4 ^ [(NSString *)self->_displayStrength hash];
}

- (HKMedicationDisplayNameComponents)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKMedicationDisplayNameComponents;
  v5 = [(HKMedicationDisplayNameComponents *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FullDisplayNameKey"];
    fullDisplayName = v5->_fullDisplayName;
    v5->_fullDisplayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicationDisplayNameKey"];
    medicationDisplayName = v5->_medicationDisplayName;
    v5->_medicationDisplayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayStrengthKey"];
    displayStrength = v5->_displayStrength;
    v5->_displayStrength = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  fullDisplayName = self->_fullDisplayName;
  v5 = a3;
  [v5 encodeObject:fullDisplayName forKey:@"FullDisplayNameKey"];
  [v5 encodeObject:self->_medicationDisplayName forKey:@"MedicationDisplayNameKey"];
  [v5 encodeObject:self->_displayStrength forKey:@"DisplayStrengthKey"];
}

@end