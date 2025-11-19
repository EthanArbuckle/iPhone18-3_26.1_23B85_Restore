@interface ATXDocumentScope
- (ATXDocumentScope)initWithUTTypes:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXDocumentScope:(id)a3;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation ATXDocumentScope

- (ATXDocumentScope)initWithUTTypes:(id)a3 error:(id *)a4
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ATXDocumentScope;
  v6 = [(ATXDocumentScope *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    types = v6->_types;
    v6->_types = v7;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(ATXDocumentScope *)self types];
  v3 = [v2 hash];

  return v3;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXDocumentScope *)self isEqualToATXDocumentScope:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDocumentScope:(id)a3
{
  v4 = self->_types;
  v5 = v4;
  if (v4 == *(a3 + 1))
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
  v3 = [(ATXDocumentScope *)self types];
  v4 = [v2 stringWithFormat:@"ATXDocumentScope: %@", v3];

  return v4;
}

@end