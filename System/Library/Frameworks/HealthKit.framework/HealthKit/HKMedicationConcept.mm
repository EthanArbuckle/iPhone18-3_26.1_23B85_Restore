@interface HKMedicationConcept
- (BOOL)isEqual:(id)a3;
- (HKMedicationConcept)init;
- (HKMedicationConcept)initWithCoder:(id)a3;
- (HKMedicationConcept)initWithHealthConceptIdentifier:(id)a3 displayText:(id)a4 generalForm:(id)a5 relatedCodings:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationConcept

- (HKMedicationConcept)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationConcept)initWithHealthConceptIdentifier:(id)a3 displayText:(id)a4 generalForm:(id)a5 relatedCodings:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKMedicationConcept initWithHealthConceptIdentifier:displayText:generalForm:relatedCodings:];
    if (v11)
    {
LABEL_3:
      if (v12)
      {
        goto LABEL_4;
      }

LABEL_10:
      [HKMedicationConcept initWithHealthConceptIdentifier:displayText:generalForm:relatedCodings:];
      if (v13)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [HKMedicationConcept initWithHealthConceptIdentifier:displayText:generalForm:relatedCodings:];
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v13)
  {
    goto LABEL_5;
  }

LABEL_11:
  [HKMedicationConcept initWithHealthConceptIdentifier:displayText:generalForm:relatedCodings:];
LABEL_5:
  v24.receiver = self;
  v24.super_class = HKMedicationConcept;
  v14 = [(HKMedicationConcept *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    displayText = v14->_displayText;
    v14->_displayText = v17;

    v19 = [v12 copy];
    generalForm = v14->_generalForm;
    v14->_generalForm = v19;

    v21 = [v13 copy];
    relatedCodings = v14->_relatedCodings;
    v14->_relatedCodings = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      identifier = self->_identifier;
      v7 = [(HKMedicationConcept *)v5 identifier];
      v8 = v7;
      if (identifier == v7)
      {
      }

      else
      {
        v9 = [(HKMedicationConcept *)v5 identifier];
        if (!v9)
        {
          goto LABEL_24;
        }

        v10 = v9;
        v11 = self->_identifier;
        v12 = [(HKMedicationConcept *)v5 identifier];
        LODWORD(v11) = [(HKHealthConceptIdentifier *)v11 isEqual:v12];

        if (!v11)
        {
          goto LABEL_25;
        }
      }

      displayText = self->_displayText;
      v15 = [(HKMedicationConcept *)v5 displayText];
      v8 = v15;
      if (displayText == v15)
      {
      }

      else
      {
        v16 = [(HKMedicationConcept *)v5 displayText];
        if (!v16)
        {
          goto LABEL_24;
        }

        v17 = v16;
        v18 = self->_displayText;
        v19 = [(HKMedicationConcept *)v5 displayText];
        LODWORD(v18) = [(NSString *)v18 isEqual:v19];

        if (!v18)
        {
          goto LABEL_25;
        }
      }

      generalForm = self->_generalForm;
      v21 = [(HKMedicationConcept *)v5 generalForm];
      v8 = v21;
      if (generalForm == v21)
      {
      }

      else
      {
        v22 = [(HKMedicationConcept *)v5 generalForm];
        if (!v22)
        {
          goto LABEL_24;
        }

        v23 = v22;
        v24 = self->_generalForm;
        v25 = [(HKMedicationConcept *)v5 generalForm];
        LODWORD(v24) = [(NSString *)v24 isEqual:v25];

        if (!v24)
        {
          goto LABEL_25;
        }
      }

      relatedCodings = self->_relatedCodings;
      v27 = [(HKMedicationConcept *)v5 relatedCodings];
      v8 = v27;
      if (relatedCodings == v27)
      {

LABEL_29:
        v13 = 1;
        goto LABEL_26;
      }

      v28 = [(HKMedicationConcept *)v5 relatedCodings];
      if (v28)
      {
        v29 = v28;
        v30 = self->_relatedCodings;
        v31 = [(HKMedicationConcept *)v5 relatedCodings];
        LOBYTE(v30) = [(NSSet *)v30 isEqualToSet:v31];

        if (v30)
        {
          goto LABEL_29;
        }

LABEL_25:
        v13 = 0;
LABEL_26:

        goto LABEL_27;
      }

LABEL_24:

      goto LABEL_25;
    }

    v13 = 0;
  }

LABEL_27:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(HKHealthConceptIdentifier *)self->_identifier hash];
  v4 = [(NSString *)self->_displayText hash]^ v3;
  v5 = [(NSString *)self->_generalForm hash];
  return v4 ^ v5 ^ [(NSSet *)self->_relatedCodings hash];
}

- (HKMedicationConcept)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKMedicationConcept;
  v5 = [(HKMedicationConcept *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayTextKey"];
    displayText = v5->_displayText;
    v5->_displayText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_GeneralFormKey"];
    generalForm = v5->_generalForm;
    v5->_generalForm = v10;

    v12 = [MEMORY[0x1E695DFD8] hk_typesForSetOf:objc_opt_class()];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_RelatedCodingsKey"];
    relatedCodings = v5->_relatedCodings;
    v5->_relatedCodings = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"IdentifierKey"];
  [v5 encodeObject:self->_displayText forKey:@"DisplayTextKey"];
  [v5 encodeObject:self->_generalForm forKey:@"_GeneralFormKey"];
  [v5 encodeObject:self->_relatedCodings forKey:@"_RelatedCodingsKey"];
}

- (void)initWithHealthConceptIdentifier:displayText:generalForm:relatedCodings:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"healthConceptIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithHealthConceptIdentifier:displayText:generalForm:relatedCodings:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"displayText" object:? file:? lineNumber:? description:?];
}

- (void)initWithHealthConceptIdentifier:displayText:generalForm:relatedCodings:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"generalForm" object:? file:? lineNumber:? description:?];
}

- (void)initWithHealthConceptIdentifier:displayText:generalForm:relatedCodings:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"relatedCodings" object:? file:? lineNumber:? description:?];
}

@end