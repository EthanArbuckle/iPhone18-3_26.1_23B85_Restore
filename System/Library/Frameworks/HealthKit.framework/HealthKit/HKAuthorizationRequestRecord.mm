@interface HKAuthorizationRequestRecord
- (HKAuthorizationRequestRecord)init;
- (HKAuthorizationRequestRecord)initWithCoder:(id)coder;
- (HKAuthorizationRequestRecord)initWithSource:(id)source session:(id)session readTypes:(id)types writeTypes:(id)writeTypes;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAuthorizationRequestRecord

- (HKAuthorizationRequestRecord)initWithSource:(id)source session:(id)session readTypes:(id)types writeTypes:(id)writeTypes
{
  sourceCopy = source;
  sessionCopy = session;
  typesCopy = types;
  writeTypesCopy = writeTypes;
  v24.receiver = self;
  v24.super_class = HKAuthorizationRequestRecord;
  v14 = [(HKAuthorizationRequestRecord *)&v24 init];
  if (v14)
  {
    v15 = [sourceCopy copy];
    source = v14->_source;
    v14->_source = v15;

    v17 = [sessionCopy copy];
    sessionIdentifier = v14->_sessionIdentifier;
    v14->_sessionIdentifier = v17;

    v19 = [typesCopy copy];
    typesRequiringReadAuthorization = v14->_typesRequiringReadAuthorization;
    v14->_typesRequiringReadAuthorization = v19;

    v21 = [writeTypesCopy copy];
    typesRequiringShareAuthorization = v14->_typesRequiringShareAuthorization;
    v14->_typesRequiringShareAuthorization = v21;
  }

  return v14;
}

- (HKAuthorizationRequestRecord)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  source = self->_source;
  coderCopy = coder;
  [coderCopy encodeObject:source forKey:@"source"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"session_identifier"];
  [coderCopy encodeObject:self->_typesRequiringShareAuthorization forKey:@"share_types"];
  [coderCopy encodeObject:self->_typesRequiringReadAuthorization forKey:@"read_types"];
}

- (HKAuthorizationRequestRecord)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = HKAuthorizationRequestRecord;
  v5 = [(HKAuthorizationRequestRecord *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session_identifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"share_types"];
    typesRequiringShareAuthorization = v5->_typesRequiringShareAuthorization;
    v5->_typesRequiringShareAuthorization = v13;

    v15 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"read_types"];
    typesRequiringReadAuthorization = v5->_typesRequiringReadAuthorization;
    v5->_typesRequiringReadAuthorization = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = HKAuthorizationRequestRecord;
  v4 = [(HKAuthorizationRequestRecord *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ %@ %@ read:%@, write:%@>", v4, self->_source, self->_sessionIdentifier, self->_typesRequiringReadAuthorization, self->_typesRequiringShareAuthorization];

  return v5;
}

@end