@interface ATXDocumentScope
- (ATXDocumentScope)initWithUTTypes:(id)types error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXDocumentScope:(id)scope;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation ATXDocumentScope

- (ATXDocumentScope)initWithUTTypes:(id)types error:(id *)error
{
  typesCopy = types;
  v10.receiver = self;
  v10.super_class = ATXDocumentScope;
  v6 = [(ATXDocumentScope *)&v10 init];
  if (v6)
  {
    v7 = [typesCopy copy];
    types = v6->_types;
    v6->_types = v7;
  }

  return v6;
}

- (unint64_t)hash
{
  types = [(ATXDocumentScope *)self types];
  v3 = [types hash];

  return v3;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXDocumentScope *)self isEqualToATXDocumentScope:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDocumentScope:(id)scope
{
  v4 = self->_types;
  v5 = v4;
  if (v4 == *(scope + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSArray *)v4 isEqual:?];
  }

  return v6;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  types = [(ATXDocumentScope *)self types];
  v4 = [v2 stringWithFormat:@"ATXDocumentScope: %@", types];

  return v4;
}

@end