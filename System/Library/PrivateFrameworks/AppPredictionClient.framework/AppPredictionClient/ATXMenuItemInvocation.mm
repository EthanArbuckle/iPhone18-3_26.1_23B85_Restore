@interface ATXMenuItemInvocation
+ (id)stringForMenuItemInvocationType:(unint64_t)a3;
+ (id)stringForMenuItemSourceType:(unint64_t)a3;
- (ATXMenuItemInvocation)initWithCoder:(id)a3;
- (ATXMenuItemInvocation)initWithIdentity:(id)a3 invocationType:(unint64_t)a4 sourceType:(unint64_t)a5 localizedKeyboardShortcutDisplayName:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXMenuItemInvocation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXMenuItemInvocation

- (ATXMenuItemInvocation)initWithIdentity:(id)a3 invocationType:(unint64_t)a4 sourceType:(unint64_t)a5 localizedKeyboardShortcutDisplayName:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = ATXMenuItemInvocation;
  v13 = [(ATXMenuItemInvocation *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identity, a3);
    v14->_invocationType = a4;
    v14->_sourceType = a5;
    v15 = [v12 copy];
    localizedKeyboardShortcutDisplayName = v14->_localizedKeyboardShortcutDisplayName;
    v14->_localizedKeyboardShortcutDisplayName = v15;
  }

  return v14;
}

+ (id)stringForMenuItemInvocationType:(unint64_t)a3
{
  if (a3 < 7)
  {
    return off_1E80C3978[a3];
  }

  v5 = __atxlog_handle_client_donations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXMenuItemInvocation *)a3 stringForMenuItemInvocationType:v5];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"stringForATXMenuItemInvocationType called with invalid ATXMenuItemInvocationType value of %lu", a3}];
  return @"Error";
}

+ (id)stringForMenuItemSourceType:(unint64_t)a3
{
  if (a3 < 4)
  {
    return off_1E80C39B0[a3];
  }

  v5 = __atxlog_handle_client_donations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXMenuItemInvocation *)a3 stringForMenuItemSourceType:v5];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"stringForMenuItemSourceType called with invalid ATXMenuItemSourceType value of %lu", a3}];
  return @"Error";
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(ATXMenuItemInvocation *)self identity];
  v5 = [ATXMenuItemInvocation stringForMenuItemInvocationType:[(ATXMenuItemInvocation *)self invocationType]];
  v6 = [ATXMenuItemInvocation stringForMenuItemSourceType:[(ATXMenuItemInvocation *)self sourceType]];
  v7 = [(ATXMenuItemInvocation *)self localizedKeyboardShortcutDisplayName];
  v8 = v7;
  v9 = @"no keyboard shortcut defined";
  if (v7)
  {
    v9 = v7;
  }

  v10 = [v3 initWithFormat:@"<ATXMenuItemInvocation of %@ through %@ from %@ %@>", v4, v5, v6, v9];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(ATXMenuItemInvocation *)self identity];
  v4 = [v3 hash];

  v5 = [(ATXMenuItemInvocation *)self invocationType]- v4 + 32 * v4;
  v6 = [(ATXMenuItemInvocation *)self sourceType]- v5 + 32 * v5;
  v7 = [(ATXMenuItemInvocation *)self localizedKeyboardShortcutDisplayName];
  v8 = [v7 hash] - v6 + 32 * v6;

  return v8;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXMenuItemInvocation *)self isEqualToATXMenuItemInvocation:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXMenuItemInvocation:(id)a3
{
  v4 = a3;
  v5 = self->_identity;
  v6 = v5;
  if (v5 == v4[1])
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

  if (self->_invocationType != v4[2] || self->_sourceType != v4[3])
  {
    goto LABEL_9;
  }

  v8 = self->_localizedKeyboardShortcutDisplayName;
  v9 = v8;
  if (v8 == v4[4])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXMenuItemInvocation allocWithZone:a3];
  v5 = [(ATXMenuItemInvocation *)self identity];
  v6 = [(ATXMenuItemInvocation *)self invocationType];
  v7 = [(ATXMenuItemInvocation *)self sourceType];
  v8 = [(ATXMenuItemInvocation *)self localizedKeyboardShortcutDisplayName];
  v9 = [(ATXMenuItemInvocation *)v4 initWithIdentity:v5 invocationType:v6 sourceType:v7 localizedKeyboardShortcutDisplayName:v8];

  return v9;
}

- (ATXMenuItemInvocation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXMenuItemInvocation;
  v5 = [(ATXMenuItemInvocation *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    v5->_invocationType = [v4 decodeInt32ForKey:@"invocationType"];
    v5->_sourceType = [v4 decodeInt32ForKey:@"sourceType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedKeyboardShortcutDisplayName"];
    localizedKeyboardShortcutDisplayName = v5->_localizedKeyboardShortcutDisplayName;
    v5->_localizedKeyboardShortcutDisplayName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identity = self->_identity;
  v5 = a3;
  [v5 encodeObject:identity forKey:@"identity"];
  [v5 encodeInt32:LODWORD(self->_invocationType) forKey:@"invocationType"];
  [v5 encodeInt32:LODWORD(self->_sourceType) forKey:@"sourceType"];
  [v5 encodeObject:self->_localizedKeyboardShortcutDisplayName forKey:@"localizedKeyboardShortcutDisplayName"];
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