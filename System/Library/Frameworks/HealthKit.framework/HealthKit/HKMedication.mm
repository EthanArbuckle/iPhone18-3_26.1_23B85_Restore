@interface HKMedication
- (BOOL)isEqual:(id)equal;
- (HKMedication)init;
- (HKMedication)initWithCoder:(id)coder;
- (HKMedication)initWithIdentifier:(id)identifier displayNameComponents:(id)components loggingUnit:(id)unit components:(id)a6 codingCollection:(id)collection;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKMedication)initWithIdentifier:(id)identifier displayNameComponents:(id)components loggingUnit:(id)unit components:(id)a6 codingCollection:(id)collection
{
  identifierCopy = identifier;
  componentsCopy = components;
  unitCopy = unit;
  v15 = a6;
  collectionCopy = collection;
  v29.receiver = self;
  v29.super_class = HKMedication;
  v17 = [(HKMedication *)&v29 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [componentsCopy copy];
    displayNameComponents = v17->_displayNameComponents;
    v17->_displayNameComponents = v20;

    v22 = [unitCopy copy];
    loggingUnit = v17->_loggingUnit;
    v17->_loggingUnit = v22;

    v24 = [v15 copy];
    components = v17->_components;
    v17->_components = v24;

    v26 = [collectionCopy copy];
    codingCollection = v17->_codingCollection;
    v17->_codingCollection = v26;
  }

  return v17;
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
      identifier = [(HKMedication *)v5 identifier];
      identifier2 = [(HKMedication *)self identifier];
      v8 = identifier2;
      if (identifier == identifier2)
      {
      }

      else
      {
        identifier3 = [(HKMedication *)self identifier];
        if (!identifier3)
        {
          goto LABEL_29;
        }

        v10 = identifier3;
        identifier4 = [(HKMedication *)v5 identifier];
        identifier5 = [(HKMedication *)self identifier];
        v13 = [identifier4 isEqual:identifier5];

        if (!v13)
        {
          goto LABEL_30;
        }
      }

      identifier = [(HKMedication *)v5 displayNameComponents];
      displayNameComponents = [(HKMedication *)self displayNameComponents];
      v8 = displayNameComponents;
      if (identifier == displayNameComponents)
      {
      }

      else
      {
        displayNameComponents2 = [(HKMedication *)self displayNameComponents];
        if (!displayNameComponents2)
        {
          goto LABEL_29;
        }

        v17 = displayNameComponents2;
        displayNameComponents3 = [(HKMedication *)v5 displayNameComponents];
        displayNameComponents4 = [(HKMedication *)self displayNameComponents];
        v20 = [displayNameComponents3 isEqual:displayNameComponents4];

        if (!v20)
        {
          goto LABEL_30;
        }
      }

      identifier = [(HKMedication *)v5 loggingUnit];
      loggingUnit = [(HKMedication *)self loggingUnit];
      v8 = loggingUnit;
      if (identifier == loggingUnit)
      {
      }

      else
      {
        loggingUnit2 = [(HKMedication *)self loggingUnit];
        if (!loggingUnit2)
        {
          goto LABEL_29;
        }

        v23 = loggingUnit2;
        loggingUnit3 = [(HKMedication *)v5 loggingUnit];
        loggingUnit4 = [(HKMedication *)self loggingUnit];
        v26 = [loggingUnit3 isEqual:loggingUnit4];

        if (!v26)
        {
          goto LABEL_30;
        }
      }

      identifier = [(HKMedication *)v5 components];
      components = [(HKMedication *)self components];
      v8 = components;
      if (identifier == components)
      {
      }

      else
      {
        components2 = [(HKMedication *)self components];
        if (!components2)
        {
          goto LABEL_29;
        }

        v29 = components2;
        components3 = [(HKMedication *)v5 components];
        components4 = [(HKMedication *)self components];
        v32 = [components3 isEqualToArray:components4];

        if (!v32)
        {
          goto LABEL_30;
        }
      }

      identifier = [(HKMedication *)v5 codingCollection];
      codingCollection = [(HKMedication *)self codingCollection];
      v8 = codingCollection;
      if (identifier == codingCollection)
      {

LABEL_34:
        v14 = 1;
        goto LABEL_31;
      }

      codingCollection2 = [(HKMedication *)self codingCollection];
      if (codingCollection2)
      {
        v35 = codingCollection2;
        codingCollection3 = [(HKMedication *)v5 codingCollection];
        codingCollection4 = [(HKMedication *)self codingCollection];
        v38 = [codingCollection3 isEqual:codingCollection4];

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

- (HKMedication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HKMedication;
  v5 = [(HKMedication *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayNameComponentsKey"];
    displayNameComponents = v5->_displayNameComponents;
    v5->_displayNameComponents = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LoggingUnitKey"];
    loggingUnit = v5->_loggingUnit;
    v5->_loggingUnit = v10;

    v12 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"ComponentsKey"];
    components = v5->_components;
    v5->_components = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CodingCollectionKey"];
    codingCollection = v5->_codingCollection;
    v5->_codingCollection = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"IdentifierKey"];
  [coderCopy encodeObject:self->_displayNameComponents forKey:@"DisplayNameComponentsKey"];
  [coderCopy encodeObject:self->_loggingUnit forKey:@"LoggingUnitKey"];
  [coderCopy encodeObject:self->_components forKey:@"ComponentsKey"];
  [coderCopy encodeObject:self->_codingCollection forKey:@"CodingCollectionKey"];
}

@end