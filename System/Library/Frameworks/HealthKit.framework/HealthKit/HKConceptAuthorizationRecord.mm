@interface HKConceptAuthorizationRecord
- (BOOL)isEqual:(id)equal;
- (HKConceptAuthorizationRecord)init;
- (HKConceptAuthorizationRecord)initWithCoder:(id)coder;
- (HKConceptAuthorizationRecord)initWithHealthConceptIdentifier:(id)identifier semanticIdentifierString:(id)string sourceUUID:(id)d status:(int64_t)status modificationDate:(double)date;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKConceptAuthorizationRecord

- (HKConceptAuthorizationRecord)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKConceptAuthorizationRecord)initWithHealthConceptIdentifier:(id)identifier semanticIdentifierString:(id)string sourceUUID:(id)d status:(int64_t)status modificationDate:(double)date
{
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  stringCopy = string;
  dCopy = d;
  underlyingIdentifier = [identifierCopy2 underlyingIdentifier];
  hk_SHA256Hash = [stringCopy hk_SHA256Hash];
  v18 = hk_SHA256Hash;
  v34 = identifierCopy2;
  if (underlyingIdentifier == hk_SHA256Hash)
  {

LABEL_8:
    goto LABEL_9;
  }

  selfCopy = self;
  hk_SHA256Hash2 = [stringCopy hk_SHA256Hash];
  if (!hk_SHA256Hash2)
  {

    goto LABEL_7;
  }

  v20 = hk_SHA256Hash2;
  [identifierCopy2 underlyingIdentifier];
  v31 = identifierCopy;
  v22 = v21 = string;
  [stringCopy hk_SHA256Hash];
  v23 = dCopy;
  dCopy2 = d;
  v26 = v25 = status;
  v30 = [v22 isEqualToString:v26];

  status = v25;
  d = dCopy2;
  dCopy = v23;

  string = v21;
  identifierCopy = v31;

  self = selfCopy;
  if ((v30 & 1) == 0)
  {
LABEL_7:
    underlyingIdentifier = [MEMORY[0x1E696AAA8] currentHandler];
    [underlyingIdentifier handleFailureInMethod:a2 object:self file:@"HKConceptAuthorizationRecord.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"HK_EQUAL_STRING(identifier.underlyingIdentifier, [semanticIdentifierString hk_SHA256Hash])"}];
    goto LABEL_8;
  }

LABEL_9:
  v35.receiver = self;
  v35.super_class = HKConceptAuthorizationRecord;
  v27 = [(HKConceptAuthorizationRecord *)&v35 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_identifier, identifierCopy);
    objc_storeStrong(&v28->_semanticIdentifierString, string);
    objc_storeStrong(&v28->_sourceUUID, d);
    v28->_status = status;
    v28->_modificationDate = date;
  }

  return v28;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  semanticIdentifierString = self->_semanticIdentifierString;
  uUIDString = [(NSUUID *)self->_sourceUUID UUIDString];
  status = self->_status;
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_modificationDate];
  v9 = [v3 stringWithFormat:@"<Identifier: %@ Semantic Identifier String: %@ Source: %@ Status: %ld Modification Date: %@>", identifier, semanticIdentifierString, uUIDString, status, v8];

  return v9;
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
      identifier = [(HKConceptAuthorizationRecord *)v5 identifier];
      identifier2 = [(HKConceptAuthorizationRecord *)self identifier];
      v8 = identifier2;
      if (identifier == identifier2)
      {
      }

      else
      {
        identifier3 = [(HKConceptAuthorizationRecord *)self identifier];
        if (!identifier3)
        {
          goto LABEL_14;
        }

        v10 = identifier3;
        identifier4 = [(HKConceptAuthorizationRecord *)v5 identifier];
        identifier5 = [(HKConceptAuthorizationRecord *)self identifier];
        v13 = [identifier4 isEqual:identifier5];

        if (!v13)
        {
          goto LABEL_18;
        }
      }

      identifier = [(HKConceptAuthorizationRecord *)v5 sourceUUID];
      sourceUUID = [(HKConceptAuthorizationRecord *)self sourceUUID];
      v8 = sourceUUID;
      if (identifier == sourceUUID)
      {

LABEL_16:
        status = [(HKConceptAuthorizationRecord *)v5 status];
        if (status == [(HKConceptAuthorizationRecord *)self status])
        {
          [(HKConceptAuthorizationRecord *)v5 modificationDate];
          v23 = v22;
          [(HKConceptAuthorizationRecord *)self modificationDate];
          v14 = v23 == v24;
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v14 = 0;
        goto LABEL_19;
      }

      sourceUUID2 = [(HKConceptAuthorizationRecord *)self sourceUUID];
      if (sourceUUID2)
      {
        v17 = sourceUUID2;
        sourceUUID3 = [(HKConceptAuthorizationRecord *)v5 sourceUUID];
        sourceUUID4 = [(HKConceptAuthorizationRecord *)self sourceUUID];
        v20 = [sourceUUID3 isEqual:sourceUUID4];

        if (!v20)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

LABEL_14:

      goto LABEL_18;
    }

    v14 = 0;
  }

LABEL_20:

  return v14;
}

- (HKConceptAuthorizationRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentifierKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SemanticIdentifierStringKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceUUIDKey"];
  v8 = [coderCopy decodeIntegerForKey:@"StatusKey"];
  [coderCopy decodeDoubleForKey:@"ModificationDateKey"];
  v10 = v9;

  v11 = [(HKConceptAuthorizationRecord *)self initWithHealthConceptIdentifier:v5 semanticIdentifierString:v6 sourceUUID:v7 status:v8 modificationDate:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"IdentifierKey"];
  [coderCopy encodeObject:self->_semanticIdentifierString forKey:@"SemanticIdentifierStringKey"];
  [coderCopy encodeObject:self->_sourceUUID forKey:@"SourceUUIDKey"];
  [coderCopy encodeInteger:self->_status forKey:@"StatusKey"];
  [coderCopy encodeDouble:@"ModificationDateKey" forKey:self->_modificationDate];
}

@end