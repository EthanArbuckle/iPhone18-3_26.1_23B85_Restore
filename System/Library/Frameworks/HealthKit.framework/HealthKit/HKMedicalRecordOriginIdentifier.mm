@interface HKMedicalRecordOriginIdentifier
+ (HKMedicalRecordOriginIdentifier)originIdentifierWithFHIRResourceType:(id)type identifier:(id)identifier;
+ (id)unitTesting_identifierWithAllPropertiesAllocated;
+ (id)unitTesting_identifierWithNeitherPropertyAllocated;
- (BOOL)isEqual:(id)equal;
- (HKMedicalRecordOriginIdentifier)init;
- (HKMedicalRecordOriginIdentifier)initWithCoder:(id)coder;
- (id)_initWithFHIRIdentifier:(id)identifier signedClinicalDataRecordIdentifier:(id)recordIdentifier;
- (id)description;
- (void)_setFhirIdentifier:(id)identifier;
- (void)_setSignedClinicalDataRecordIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicalRecordOriginIdentifier

- (HKMedicalRecordOriginIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HKMedicalRecordOriginIdentifier)originIdentifierWithFHIRResourceType:(id)type identifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  v8 = [self alloc];
  v9 = [[HKFHIRIdentifier alloc] initWithResourceType:typeCopy identifier:identifierCopy];

  v10 = [v8 initWithFHIRIdentifier:v9];

  return v10;
}

- (id)_initWithFHIRIdentifier:(id)identifier signedClinicalDataRecordIdentifier:(id)recordIdentifier
{
  identifierCopy = identifier;
  recordIdentifierCopy = recordIdentifier;
  if ((identifierCopy != 0) != (recordIdentifierCopy == 0))
  {
    [HKMedicalRecordOriginIdentifier _initWithFHIRIdentifier:a2 signedClinicalDataRecordIdentifier:self];
  }

  v15.receiver = self;
  v15.super_class = HKMedicalRecordOriginIdentifier;
  v9 = [(HKMedicalRecordOriginIdentifier *)&v15 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    fhirIdentifier = v9->_fhirIdentifier;
    v9->_fhirIdentifier = v10;

    v12 = [recordIdentifierCopy copy];
    signedClinicalDataRecordIdentifier = v9->_signedClinicalDataRecordIdentifier;
    v9->_signedClinicalDataRecordIdentifier = v12;
  }

  return v9;
}

- (void)_setFhirIdentifier:(id)identifier
{
  v4 = [identifier copy];
  fhirIdentifier = self->_fhirIdentifier;
  self->_fhirIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setSignedClinicalDataRecordIdentifier:(id)identifier
{
  v4 = [identifier copy];
  signedClinicalDataRecordIdentifier = self->_signedClinicalDataRecordIdentifier;
  self->_signedClinicalDataRecordIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

+ (id)unitTesting_identifierWithNeitherPropertyAllocated
{
  v2 = [HKMedicalRecordOriginIdentifier originIdentifierWithFHIRResourceType:@"ResourceType" identifier:@"identifier"];
  [v2 _setFhirIdentifier:0];

  return v2;
}

+ (id)unitTesting_identifierWithAllPropertiesAllocated
{
  v2 = [HKMedicalRecordOriginIdentifier originIdentifierWithFHIRResourceType:@"ResourceType" identifier:@"identifier"];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [v2 _setSignedClinicalDataRecordIdentifier:uUID];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self != equalCopy)
  {
    v8 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    fhirIdentifier = self->_fhirIdentifier;
    fhirIdentifier = [(HKMedicalRecordOriginIdentifier *)v8 fhirIdentifier];
    if (fhirIdentifier == fhirIdentifier)
    {
      goto LABEL_9;
    }

    fhirIdentifier2 = [(HKMedicalRecordOriginIdentifier *)v8 fhirIdentifier];
    if (!fhirIdentifier2)
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v3 = fhirIdentifier2;
    v12 = self->_fhirIdentifier;
    fhirIdentifier3 = [(HKMedicalRecordOriginIdentifier *)v8 fhirIdentifier];
    if ([(HKFHIRIdentifier *)v12 isEqual:fhirIdentifier3])
    {
LABEL_9:
      signedClinicalDataRecordIdentifier = self->_signedClinicalDataRecordIdentifier;
      signedClinicalDataRecordIdentifier = [(HKMedicalRecordOriginIdentifier *)v8 signedClinicalDataRecordIdentifier];
      v16 = signedClinicalDataRecordIdentifier;
      if (signedClinicalDataRecordIdentifier == signedClinicalDataRecordIdentifier)
      {

        v13 = 1;
      }

      else
      {
        signedClinicalDataRecordIdentifier2 = [(HKMedicalRecordOriginIdentifier *)v8 signedClinicalDataRecordIdentifier];
        if (signedClinicalDataRecordIdentifier2)
        {
          v18 = signedClinicalDataRecordIdentifier2;
          v19 = self->_signedClinicalDataRecordIdentifier;
          signedClinicalDataRecordIdentifier3 = [(HKMedicalRecordOriginIdentifier *)v8 signedClinicalDataRecordIdentifier];
          v13 = [(NSUUID *)v19 isEqual:signedClinicalDataRecordIdentifier3];
        }

        else
        {

          v13 = 0;
        }
      }

      if (fhirIdentifier == fhirIdentifier)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_17;
  }

  v13 = 1;
LABEL_19:

  return v13;
}

- (id)description
{
  if (self->_fhirIdentifier)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 stringWithFormat:@"<%@ %p: FHIR identifier: %@>", v5, self, self->_fhirIdentifier];
  }

  else
  {
    signedClinicalDataRecordIdentifier = self->_signedClinicalDataRecordIdentifier;
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v5 = v9;
    if (signedClinicalDataRecordIdentifier)
    {
      [v7 stringWithFormat:@"<%@ %p: original SCD record identifier: %@>", v9, self, self->_signedClinicalDataRecordIdentifier];
    }

    else
    {
      [v7 stringWithFormat:@"<%@ %p: INVALID, no identifier!>", v9, self, v12];
    }
  }
  v10 = ;

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  fhirIdentifier = self->_fhirIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:fhirIdentifier forKey:@"FHIRIdentifier"];
  [coderCopy encodeObject:self->_signedClinicalDataRecordIdentifier forKey:@"SignedClinicalDataRecordIdentifier"];
}

- (HKMedicalRecordOriginIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FHIRIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SignedClinicalDataRecordIdentifier"];

  v7 = [[HKMedicalRecordOriginIdentifier alloc] _initWithFHIRIdentifier:v5 signedClinicalDataRecordIdentifier:v6];
  return v7;
}

- (void)_initWithFHIRIdentifier:(uint64_t)a1 signedClinicalDataRecordIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalRecordOriginIdentifier.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"(!!fhirIdentifier + !!signedClinicalDataRecordIdentifier) == 1"}];
}

@end