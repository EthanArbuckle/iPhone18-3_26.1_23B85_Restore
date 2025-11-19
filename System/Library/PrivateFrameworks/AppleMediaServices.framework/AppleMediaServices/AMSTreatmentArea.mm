@interface AMSTreatmentArea
- (AMSTreatmentArea)initWithCoder:(id)a3;
- (AMSTreatmentArea)initWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSTreatmentArea

- (AMSTreatmentArea)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSTreatmentArea;
  v5 = [(AMSTreatmentArea *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(AMSTreatmentArea *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;

      if (!v7 || (v8 = [(AMSTreatmentArea *)self cacheable], v8 != [(AMSTreatmentArea *)v7 cacheable]))
      {
        v9 = 0;
LABEL_10:

        goto LABEL_11;
      }

      v6 = [(AMSTreatmentArea *)self identifier];
      v10 = [(AMSTreatmentArea *)v7 identifier];
      v9 = [(AMSTreatmentArea *)v6 isEqualToString:v10];
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    goto LABEL_10;
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[AMSTreatmentArea cacheable](self forKey:{"cacheable"), @"cacheable"}];
  v5 = [(AMSTreatmentArea *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (AMSTreatmentArea)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [(AMSTreatmentArea *)self initWithIdentifier:v5];
  v7 = [v4 decodeBoolForKey:@"cacheable"];

  [(AMSTreatmentArea *)v6 setCacheable:v7];
  return v6;
}

- (id)description
{
  v2 = [(AMSTreatmentArea *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (id)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"cacheable";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSTreatmentArea cacheable](self, "cacheable")}];
  v7[1] = @"identifier";
  v8[0] = v3;
  v4 = [(AMSTreatmentArea *)self identifier];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end