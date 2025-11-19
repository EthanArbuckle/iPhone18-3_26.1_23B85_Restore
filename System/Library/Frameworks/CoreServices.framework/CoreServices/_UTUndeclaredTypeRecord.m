@interface _UTUndeclaredTypeRecord
- (BOOL)conformsToTypeIdentifier:(id)a3;
- (BOOL)isInPublicDomain;
- (_UTUndeclaredTypeRecord)initWithCoder:(id)a3;
- (id)_initWithContext:(LSContext *)a3 identifier:(id)a4;
- (id)awakeAfterUsingCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)declaration;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UTUndeclaredTypeRecord

- (id)_initWithContext:(LSContext *)a3 identifier:(id)a4
{
  v7 = *([(_LSDatabase *)a3->db schema]+ 16);
  v12.receiver = self;
  v12.super_class = _UTUndeclaredTypeRecord;
  v8 = [(LSRecord *)&v12 _initWithContext:a3 tableID:v7 unitID:0];
  if (v8)
  {
    v9 = [a4 copy];
    v10 = v8[4];
    v8[4] = v9;
  }

  return v8;
}

- (BOOL)isInPublicDomain
{
  v2 = [(_UTUndeclaredTypeRecord *)self identifier];
  v3 = [v2 hasPrefix:@"public."];

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

- (BOOL)conformsToTypeIdentifier:(id)a3
{
  v4 = a3;
  LOBYTE(self) = UTTypeEqual(v4, [(_UTUndeclaredTypeRecord *)self identifier]) != 0;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UTUndeclaredTypeRecord;
  [(LSRecord *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_identifier forKey:@"identifier"];
}

- (_UTUndeclaredTypeRecord)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UTUndeclaredTypeRecord;
  v4 = [(LSRecord *)&v8 initWithCoder:?];
  if (v4)
  {
    v5 = [a3 ls_decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v4->_identifier;
    v4->_identifier = v5;
  }

  return v4;
}

- (id)awakeAfterUsingCoder:(id)a3
{
  v3 = self;
  v4 = [(_UTUndeclaredTypeRecord *)v3 identifier];
  v5 = [UTTypeRecord typeRecordWithIdentifier:v4];

  v6 = v3;
  if (v5)
  {
    v6 = v5;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = _UTUndeclaredTypeRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 4, self->_identifier);
  }

  return v5;
}

@end