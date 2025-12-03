@interface ATXMenuItemInvocation
+ (id)stringForMenuItemInvocationType:(unint64_t)type;
+ (id)stringForMenuItemSourceType:(unint64_t)type;
- (ATXMenuItemInvocation)initWithCoder:(id)coder;
- (ATXMenuItemInvocation)initWithIdentity:(id)identity invocationType:(unint64_t)type sourceType:(unint64_t)sourceType localizedKeyboardShortcutDisplayName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXMenuItemInvocation:(id)invocation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXMenuItemInvocation

- (ATXMenuItemInvocation)initWithIdentity:(id)identity invocationType:(unint64_t)type sourceType:(unint64_t)sourceType localizedKeyboardShortcutDisplayName:(id)name
{
  identityCopy = identity;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = ATXMenuItemInvocation;
  v13 = [(ATXMenuItemInvocation *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identity, identity);
    v14->_invocationType = type;
    v14->_sourceType = sourceType;
    v15 = [nameCopy copy];
    localizedKeyboardShortcutDisplayName = v14->_localizedKeyboardShortcutDisplayName;
    v14->_localizedKeyboardShortcutDisplayName = v15;
  }

  return v14;
}

+ (id)stringForMenuItemInvocationType:(unint64_t)type
{
  if (type < 7)
  {
    return off_1E80C3978[type];
  }

  v5 = __atxlog_handle_client_donations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXMenuItemInvocation *)type stringForMenuItemInvocationType:v5];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"stringForATXMenuItemInvocationType called with invalid ATXMenuItemInvocationType value of %lu", type}];
  return @"Error";
}

+ (id)stringForMenuItemSourceType:(unint64_t)type
{
  if (type < 4)
  {
    return off_1E80C39B0[type];
  }

  v5 = __atxlog_handle_client_donations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXMenuItemInvocation *)type stringForMenuItemSourceType:v5];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"stringForMenuItemSourceType called with invalid ATXMenuItemSourceType value of %lu", type}];
  return @"Error";
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identity = [(ATXMenuItemInvocation *)self identity];
  v5 = [ATXMenuItemInvocation stringForMenuItemInvocationType:[(ATXMenuItemInvocation *)self invocationType]];
  v6 = [ATXMenuItemInvocation stringForMenuItemSourceType:[(ATXMenuItemInvocation *)self sourceType]];
  localizedKeyboardShortcutDisplayName = [(ATXMenuItemInvocation *)self localizedKeyboardShortcutDisplayName];
  v8 = localizedKeyboardShortcutDisplayName;
  v9 = @"no keyboard shortcut defined";
  if (localizedKeyboardShortcutDisplayName)
  {
    v9 = localizedKeyboardShortcutDisplayName;
  }

  v10 = [v3 initWithFormat:@"<ATXMenuItemInvocation of %@ through %@ from %@ %@>", identity, v5, v6, v9];

  return v10;
}

- (unint64_t)hash
{
  identity = [(ATXMenuItemInvocation *)self identity];
  v4 = [identity hash];

  v5 = [(ATXMenuItemInvocation *)self invocationType]- v4 + 32 * v4;
  v6 = [(ATXMenuItemInvocation *)self sourceType]- v5 + 32 * v5;
  localizedKeyboardShortcutDisplayName = [(ATXMenuItemInvocation *)self localizedKeyboardShortcutDisplayName];
  v8 = [localizedKeyboardShortcutDisplayName hash] - v6 + 32 * v6;

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXMenuItemInvocation *)self isEqualToATXMenuItemInvocation:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXMenuItemInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = self->_identity;
  v6 = v5;
  if (v5 == invocationCopy[1])
  {
  }

  else
  {
    v7 = [(ATXMenuItemIdentity *)v5 isEqual:?];

    if (!v7)
    {
LABEL_9:
      v10 = 0;
      goto LABEL_10;
    }
  }

  if (self->_invocationType != invocationCopy[2] || self->_sourceType != invocationCopy[3])
  {
    goto LABEL_9;
  }

  v8 = self->_localizedKeyboardShortcutDisplayName;
  v9 = v8;
  if (v8 == invocationCopy[4])
  {
    v10 = 1;
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];
  }

LABEL_10:
  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXMenuItemInvocation allocWithZone:zone];
  identity = [(ATXMenuItemInvocation *)self identity];
  invocationType = [(ATXMenuItemInvocation *)self invocationType];
  sourceType = [(ATXMenuItemInvocation *)self sourceType];
  localizedKeyboardShortcutDisplayName = [(ATXMenuItemInvocation *)self localizedKeyboardShortcutDisplayName];
  v9 = [(ATXMenuItemInvocation *)v4 initWithIdentity:identity invocationType:invocationType sourceType:sourceType localizedKeyboardShortcutDisplayName:localizedKeyboardShortcutDisplayName];

  return v9;
}

- (ATXMenuItemInvocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ATXMenuItemInvocation;
  v5 = [(ATXMenuItemInvocation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    v5->_invocationType = [coderCopy decodeInt32ForKey:@"invocationType"];
    v5->_sourceType = [coderCopy decodeInt32ForKey:@"sourceType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedKeyboardShortcutDisplayName"];
    localizedKeyboardShortcutDisplayName = v5->_localizedKeyboardShortcutDisplayName;
    v5->_localizedKeyboardShortcutDisplayName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identity = self->_identity;
  coderCopy = coder;
  [coderCopy encodeObject:identity forKey:@"identity"];
  [coderCopy encodeInt32:LODWORD(self->_invocationType) forKey:@"invocationType"];
  [coderCopy encodeInt32:LODWORD(self->_sourceType) forKey:@"sourceType"];
  [coderCopy encodeObject:self->_localizedKeyboardShortcutDisplayName forKey:@"localizedKeyboardShortcutDisplayName"];
}

+ (void)stringForMenuItemInvocationType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "stringForATXMenuItemInvocationType called with invalid ATXMenuItemInvocationType value of %lu", &v2, 0xCu);
}

+ (void)stringForMenuItemSourceType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "stringForMenuItemSourceType called with invalid ATXMenuItemSourceType value of %lu", &v2, 0xCu);
}

@end