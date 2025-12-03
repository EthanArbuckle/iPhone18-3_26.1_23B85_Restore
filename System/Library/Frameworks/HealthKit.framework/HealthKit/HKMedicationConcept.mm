@interface HKMedicationConcept
- (BOOL)isEqual:(id)equal;
- (HKMedicationConcept)init;
- (HKMedicationConcept)initWithCoder:(id)coder;
- (HKMedicationConcept)initWithHealthConceptIdentifier:(id)identifier displayText:(id)text generalForm:(id)form relatedCodings:(id)codings;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKMedicationConcept)initWithHealthConceptIdentifier:(id)identifier displayText:(id)text generalForm:(id)form relatedCodings:(id)codings
{
  identifierCopy = identifier;
  textCopy = text;
  formCopy = form;
  codingsCopy = codings;
  if (identifierCopy)
  {
    if (textCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKMedicationConcept initWithHealthConceptIdentifier:displayText:generalForm:relatedCodings:];
    if (textCopy)
    {
LABEL_3:
      if (formCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      [HKMedicationConcept initWithHealthConceptIdentifier:displayText:generalForm:relatedCodings:];
      if (codingsCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [HKMedicationConcept initWithHealthConceptIdentifier:displayText:generalForm:relatedCodings:];
  if (!formCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (codingsCopy)
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
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [textCopy copy];
    displayText = v14->_displayText;
    v14->_displayText = v17;

    v19 = [formCopy copy];
    generalForm = v14->_generalForm;
    v14->_generalForm = v19;

    v21 = [codingsCopy copy];
    relatedCodings = v14->_relatedCodings;
    v14->_relatedCodings = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      identifier = [(HKMedicationConcept *)v5 identifier];
      v8 = identifier;
      if (identifier == identifier)
      {
      }

      else
      {
        identifier2 = [(HKMedicationConcept *)v5 identifier];
        if (!identifier2)
        {
          goto LABEL_24;
        }

        v10 = identifier2;
        v11 = self->_identifier;
        identifier3 = [(HKMedicationConcept *)v5 identifier];
        LODWORD(v11) = [(HKHealthConceptIdentifier *)v11 isEqual:identifier3];

        if (!v11)
        {
          goto LABEL_25;
        }
      }

      displayText = self->_displayText;
      displayText = [(HKMedicationConcept *)v5 displayText];
      v8 = displayText;
      if (displayText == displayText)
      {
      }

      else
      {
        displayText2 = [(HKMedicationConcept *)v5 displayText];
        if (!displayText2)
        {
          goto LABEL_24;
        }

        v17 = displayText2;
        v18 = self->_displayText;
        displayText3 = [(HKMedicationConcept *)v5 displayText];
        LODWORD(v18) = [(NSString *)v18 isEqual:displayText3];

        if (!v18)
        {
          goto LABEL_25;
        }
      }

      generalForm = self->_generalForm;
      generalForm = [(HKMedicationConcept *)v5 generalForm];
      v8 = generalForm;
      if (generalForm == generalForm)
      {
      }

      else
      {
        generalForm2 = [(HKMedicationConcept *)v5 generalForm];
        if (!generalForm2)
        {
          goto LABEL_24;
        }

        v23 = generalForm2;
        v24 = self->_generalForm;
        generalForm3 = [(HKMedicationConcept *)v5 generalForm];
        LODWORD(v24) = [(NSString *)v24 isEqual:generalForm3];

        if (!v24)
        {
          goto LABEL_25;
        }
      }

      relatedCodings = self->_relatedCodings;
      relatedCodings = [(HKMedicationConcept *)v5 relatedCodings];
      v8 = relatedCodings;
      if (relatedCodings == relatedCodings)
      {

LABEL_29:
        v13 = 1;
        goto LABEL_26;
      }

      relatedCodings2 = [(HKMedicationConcept *)v5 relatedCodings];
      if (relatedCodings2)
      {
        v29 = relatedCodings2;
        v30 = self->_relatedCodings;
        relatedCodings3 = [(HKMedicationConcept *)v5 relatedCodings];
        LOBYTE(v30) = [(NSSet *)v30 isEqualToSet:relatedCodings3];

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

- (HKMedicationConcept)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HKMedicationConcept;
  v5 = [(HKMedicationConcept *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayTextKey"];
    displayText = v5->_displayText;
    v5->_displayText = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_GeneralFormKey"];
    generalForm = v5->_generalForm;
    v5->_generalForm = v10;

    v12 = [MEMORY[0x1E695DFD8] hk_typesForSetOf:objc_opt_class()];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_RelatedCodingsKey"];
    relatedCodings = v5->_relatedCodings;
    v5->_relatedCodings = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"IdentifierKey"];
  [coderCopy encodeObject:self->_displayText forKey:@"DisplayTextKey"];
  [coderCopy encodeObject:self->_generalForm forKey:@"_GeneralFormKey"];
  [coderCopy encodeObject:self->_relatedCodings forKey:@"_RelatedCodingsKey"];
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