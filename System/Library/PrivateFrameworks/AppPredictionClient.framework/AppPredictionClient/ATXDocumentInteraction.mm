@interface ATXDocumentInteraction
- (ATXDocumentInteraction)initWithCoder:(id)a3;
- (ATXDocumentInteraction)initWithType:(unint64_t)a3 fileIdentity:(id)a4 contentTypeIdentifier:(id)a5 appIdentity:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXDocumentInteraction:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXDocumentInteraction

- (ATXDocumentInteraction)initWithType:(unint64_t)a3 fileIdentity:(id)a4 contentTypeIdentifier:(id)a5 appIdentity:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ATXDocumentInteraction initWithType:a2 fileIdentity:self contentTypeIdentifier:? appIdentity:?];
    if (v14)
    {
      goto LABEL_3;
    }
  }

  [ATXDocumentInteraction initWithType:a2 fileIdentity:self contentTypeIdentifier:? appIdentity:?];
LABEL_3:
  v24.receiver = self;
  v24.super_class = ATXDocumentInteraction;
  v15 = [(ATXDocumentInteraction *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = a3;
    v17 = [v11 copy];
    fileIdentity = v16->_fileIdentity;
    v16->_fileIdentity = v17;

    v19 = [v12 copy];
    contentTypeIdentifier = v16->_contentTypeIdentifier;
    v16->_contentTypeIdentifier = v19;

    v21 = [v14 copy];
    appIdentity = v16->_appIdentity;
    v16->_appIdentity = v21;
  }

  return v16;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(ATXFileIdentity *)self->_fileIdentity hash]- type + 32 * type;
  v5 = [(NSString *)self->_contentTypeIdentifier hash]- v4 + 32 * v4;
  return [(ATXAppIdentity *)self->_appIdentity hash]- v5 + 32 * v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXDocumentInteraction *)self isEqualToATXDocumentInteraction:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDocumentInteraction:(id)a3
{
  v4 = a3;
  if (self->_type != v4[1])
  {
    goto LABEL_8;
  }

  v5 = self->_fileIdentity;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(ATXFileIdentity *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v8 = self->_contentTypeIdentifier;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_14;
    }
  }

  v12 = self->_appIdentity;
  v13 = v12;
  if (v12 == v4[4])
  {
    v11 = 1;
  }

  else
  {
    v11 = [(ATXAppIdentity *)v12 isEqual:?];
  }

LABEL_14:
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"ATXDocumentInteractionCodingKeyType"];
  [v5 encodeObject:self->_fileIdentity forKey:@"ATXDocumentInteractionCodingKeyFileIdentity"];
  [v5 encodeObject:self->_contentTypeIdentifier forKey:@"ATXDocumentInteractionCodingKeyContentTypeIdentifier"];
  [v5 encodeObject:self->_appIdentity forKey:@"ATXDocumentInteractionCodingKeyAppIdentity"];
}

- (ATXDocumentInteraction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"ATXDocumentInteractionCodingKeyType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ATXDocumentInteractionCodingKeyFileIdentity"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ATXDocumentInteractionCodingKeyContentTypeIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ATXDocumentInteractionCodingKeyAppIdentity"];

  v9 = [(ATXDocumentInteraction *)self initWithType:v5 fileIdentity:v6 contentTypeIdentifier:v7 appIdentity:v8];
  return v9;
}

- (void)initWithType:(uint64_t)a1 fileIdentity:(uint64_t)a2 contentTypeIdentifier:appIdentity:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXDocumentInteraction.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"fileIdentity != nil"}];
}

- (void)initWithType:(uint64_t)a1 fileIdentity:(uint64_t)a2 contentTypeIdentifier:appIdentity:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXDocumentInteraction.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"appIdentity != nil"}];
}

@end