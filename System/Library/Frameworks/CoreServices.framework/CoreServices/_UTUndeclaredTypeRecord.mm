@interface _UTUndeclaredTypeRecord
- (BOOL)conformsToTypeIdentifier:(id)identifier;
- (BOOL)isInPublicDomain;
- (_UTUndeclaredTypeRecord)initWithCoder:(id)coder;
- (id)_initWithContext:(LSContext *)context identifier:(id)identifier;
- (id)awakeAfterUsingCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)declaration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UTUndeclaredTypeRecord

- (id)_initWithContext:(LSContext *)context identifier:(id)identifier
{
  v7 = *([(_LSDatabase *)context->db schema]+ 16);
  v12.receiver = self;
  v12.super_class = _UTUndeclaredTypeRecord;
  v8 = [(LSRecord *)&v12 _initWithContext:context tableID:v7 unitID:0];
  if (v8)
  {
    v9 = [identifier copy];
    v10 = v8[4];
    v8[4] = v9;
  }

  return v8;
}

- (BOOL)isInPublicDomain
{
  identifier = [(_UTUndeclaredTypeRecord *)self identifier];
  v3 = [identifier hasPrefix:@"public."];

  return v3;
}

- (id)declaration
{
  v7[1] = *MEMORY[0x1E69E9840];
  identifier = self->_identifier;
  v6 = @"UTTypeIdentifier";
  v7[0] = identifier;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)conformsToTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  LOBYTE(self) = UTTypeEqual(identifierCopy, [(_UTUndeclaredTypeRecord *)self identifier]) != 0;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UTUndeclaredTypeRecord;
  [(LSRecord *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_identifier forKey:@"identifier"];
}

- (_UTUndeclaredTypeRecord)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = _UTUndeclaredTypeRecord;
  v4 = [(LSRecord *)&v8 initWithCoder:?];
  if (v4)
  {
    v5 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v4->_identifier;
    v4->_identifier = v5;
  }

  return v4;
}

- (id)awakeAfterUsingCoder:(id)coder
{
  selfCopy = self;
  identifier = [(_UTUndeclaredTypeRecord *)selfCopy identifier];
  v5 = [UTTypeRecord typeRecordWithIdentifier:identifier];

  v6 = selfCopy;
  if (v5)
  {
    v6 = v5;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = _UTUndeclaredTypeRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 4, self->_identifier);
  }

  return v5;
}

@end