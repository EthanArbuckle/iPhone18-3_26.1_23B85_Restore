@interface HKConceptAuthorizationRecord
- (BOOL)isEqual:(id)a3;
- (HKConceptAuthorizationRecord)init;
- (HKConceptAuthorizationRecord)initWithCoder:(id)a3;
- (HKConceptAuthorizationRecord)initWithHealthConceptIdentifier:(id)a3 semanticIdentifierString:(id)a4 sourceUUID:(id)a5 status:(int64_t)a6 modificationDate:(double)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (HKConceptAuthorizationRecord)initWithHealthConceptIdentifier:(id)a3 semanticIdentifierString:(id)a4 sourceUUID:(id)a5 status:(int64_t)a6 modificationDate:(double)a7
{
  v11 = a3;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [v13 underlyingIdentifier];
  v17 = [v14 hk_SHA256Hash];
  v18 = v17;
  v34 = v13;
  if (v16 == v17)
  {

LABEL_8:
    goto LABEL_9;
  }

  v32 = self;
  v19 = [v14 hk_SHA256Hash];
  if (!v19)
  {

    goto LABEL_7;
  }

  v20 = v19;
  [v13 underlyingIdentifier];
  v31 = v11;
  v22 = v21 = a4;
  [v14 hk_SHA256Hash];
  v23 = v15;
  v24 = a5;
  v26 = v25 = a6;
  v30 = [v22 isEqualToString:v26];

  a6 = v25;
  a5 = v24;
  v15 = v23;

  a4 = v21;
  v11 = v31;

  self = v32;
  if ((v30 & 1) == 0)
  {
LABEL_7:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HKConceptAuthorizationRecord.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"HK_EQUAL_STRING(identifier.underlyingIdentifier, [semanticIdentifierString hk_SHA256Hash])"}];
    goto LABEL_8;
  }

LABEL_9:
  v35.receiver = self;
  v35.super_class = HKConceptAuthorizationRecord;
  v27 = [(HKConceptAuthorizationRecord *)&v35 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_identifier, v11);
    objc_storeStrong(&v28->_semanticIdentifierString, a4);
    objc_storeStrong(&v28->_sourceUUID, a5);
    v28->_status = a6;
    v28->_modificationDate = a7;
  }

  return v28;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  semanticIdentifierString = self->_semanticIdentifierString;
  v6 = [(NSUUID *)self->_sourceUUID UUIDString];
  status = self->_status;
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_modificationDate];
  v9 = [v3 stringWithFormat:@"<Identifier: %@ Semantic Identifier String: %@ Source: %@ Status: %ld Modification Date: %@>", identifier, semanticIdentifierString, v6, status, v8];

  return v9;
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
      v6 = [(HKConceptAuthorizationRecord *)v5 identifier];
      v7 = [(HKConceptAuthorizationRecord *)self identifier];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKConceptAuthorizationRecord *)self identifier];
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = v9;
        v11 = [(HKConceptAuthorizationRecord *)v5 identifier];
        v12 = [(HKConceptAuthorizationRecord *)self identifier];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_18;
        }
      }

      v6 = [(HKConceptAuthorizationRecord *)v5 sourceUUID];
      v15 = [(HKConceptAuthorizationRecord *)self sourceUUID];
      v8 = v15;
      if (v6 == v15)
      {

LABEL_16:
        v21 = [(HKConceptAuthorizationRecord *)v5 status];
        if (v21 == [(HKConceptAuthorizationRecord *)self status])
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

      v16 = [(HKConceptAuthorizationRecord *)self sourceUUID];
      if (v16)
      {
        v17 = v16;
        v18 = [(HKConceptAuthorizationRecord *)v5 sourceUUID];
        v19 = [(HKConceptAuthorizationRecord *)self sourceUUID];
        v20 = [v18 isEqual:v19];

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

- (HKConceptAuthorizationRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentifierKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SemanticIdentifierStringKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceUUIDKey"];
  v8 = [v4 decodeIntegerForKey:@"StatusKey"];
  [v4 decodeDoubleForKey:@"ModificationDateKey"];
  v10 = v9;

  v11 = [(HKConceptAuthorizationRecord *)self initWithHealthConceptIdentifier:v5 semanticIdentifierString:v6 sourceUUID:v7 status:v8 modificationDate:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"IdentifierKey"];
  [v5 encodeObject:self->_semanticIdentifierString forKey:@"SemanticIdentifierStringKey"];
  [v5 encodeObject:self->_sourceUUID forKey:@"SourceUUIDKey"];
  [v5 encodeInteger:self->_status forKey:@"StatusKey"];
  [v5 encodeDouble:@"ModificationDateKey" forKey:self->_modificationDate];
}

@end