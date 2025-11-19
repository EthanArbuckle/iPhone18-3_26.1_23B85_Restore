@interface HKMedication
- (BOOL)isEqual:(id)a3;
- (HKMedication)init;
- (HKMedication)initWithCoder:(id)a3;
- (HKMedication)initWithIdentifier:(id)a3 displayNameComponents:(id)a4 loggingUnit:(id)a5 components:(id)a6 codingCollection:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedication

- (HKMedication)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedication)initWithIdentifier:(id)a3 displayNameComponents:(id)a4 loggingUnit:(id)a5 components:(id)a6 codingCollection:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = HKMedication;
  v17 = [(HKMedication *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [v13 copy];
    displayNameComponents = v17->_displayNameComponents;
    v17->_displayNameComponents = v20;

    v22 = [v14 copy];
    loggingUnit = v17->_loggingUnit;
    v17->_loggingUnit = v22;

    v24 = [v15 copy];
    components = v17->_components;
    v17->_components = v24;

    v26 = [v16 copy];
    codingCollection = v17->_codingCollection;
    v17->_codingCollection = v26;
  }

  return v17;
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
      v6 = [(HKMedication *)v5 identifier];
      v7 = [(HKMedication *)self identifier];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKMedication *)self identifier];
        if (!v9)
        {
          goto LABEL_29;
        }

        v10 = v9;
        v11 = [(HKMedication *)v5 identifier];
        v12 = [(HKMedication *)self identifier];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_30;
        }
      }

      v6 = [(HKMedication *)v5 displayNameComponents];
      v15 = [(HKMedication *)self displayNameComponents];
      v8 = v15;
      if (v6 == v15)
      {
      }

      else
      {
        v16 = [(HKMedication *)self displayNameComponents];
        if (!v16)
        {
          goto LABEL_29;
        }

        v17 = v16;
        v18 = [(HKMedication *)v5 displayNameComponents];
        v19 = [(HKMedication *)self displayNameComponents];
        v20 = [v18 isEqual:v19];

        if (!v20)
        {
          goto LABEL_30;
        }
      }

      v6 = [(HKMedication *)v5 loggingUnit];
      v21 = [(HKMedication *)self loggingUnit];
      v8 = v21;
      if (v6 == v21)
      {
      }

      else
      {
        v22 = [(HKMedication *)self loggingUnit];
        if (!v22)
        {
          goto LABEL_29;
        }

        v23 = v22;
        v24 = [(HKMedication *)v5 loggingUnit];
        v25 = [(HKMedication *)self loggingUnit];
        v26 = [v24 isEqual:v25];

        if (!v26)
        {
          goto LABEL_30;
        }
      }

      v6 = [(HKMedication *)v5 components];
      v27 = [(HKMedication *)self components];
      v8 = v27;
      if (v6 == v27)
      {
      }

      else
      {
        v28 = [(HKMedication *)self components];
        if (!v28)
        {
          goto LABEL_29;
        }

        v29 = v28;
        v30 = [(HKMedication *)v5 components];
        v31 = [(HKMedication *)self components];
        v32 = [v30 isEqualToArray:v31];

        if (!v32)
        {
          goto LABEL_30;
        }
      }

      v6 = [(HKMedication *)v5 codingCollection];
      v33 = [(HKMedication *)self codingCollection];
      v8 = v33;
      if (v6 == v33)
      {

LABEL_34:
        v14 = 1;
        goto LABEL_31;
      }

      v34 = [(HKMedication *)self codingCollection];
      if (v34)
      {
        v35 = v34;
        v36 = [(HKMedication *)v5 codingCollection];
        v37 = [(HKMedication *)self codingCollection];
        v38 = [v36 isEqual:v37];

        if (v38)
        {
          goto LABEL_34;
        }

LABEL_30:
        v14 = 0;
LABEL_31:

        goto LABEL_32;
      }

LABEL_29:

      goto LABEL_30;
    }

    v14 = 0;
  }

LABEL_32:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(HKMedicationIdentifier *)self->_identifier hash];
  v4 = [(HKMedicationDisplayNameComponents *)self->_displayNameComponents hash]^ v3;
  v5 = [(HKMedicationLoggingUnit *)self->_loggingUnit hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_components hash];
  return v6 ^ [(HKClinicalCodingCollection *)self->_codingCollection hash];
}

- (HKMedication)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HKMedication;
  v5 = [(HKMedication *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayNameComponentsKey"];
    displayNameComponents = v5->_displayNameComponents;
    v5->_displayNameComponents = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LoggingUnitKey"];
    loggingUnit = v5->_loggingUnit;
    v5->_loggingUnit = v10;

    v12 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"ComponentsKey"];
    components = v5->_components;
    v5->_components = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CodingCollectionKey"];
    codingCollection = v5->_codingCollection;
    v5->_codingCollection = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"IdentifierKey"];
  [v5 encodeObject:self->_displayNameComponents forKey:@"DisplayNameComponentsKey"];
  [v5 encodeObject:self->_loggingUnit forKey:@"LoggingUnitKey"];
  [v5 encodeObject:self->_components forKey:@"ComponentsKey"];
  [v5 encodeObject:self->_codingCollection forKey:@"CodingCollectionKey"];
}

@end