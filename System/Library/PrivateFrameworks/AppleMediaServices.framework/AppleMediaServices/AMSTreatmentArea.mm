@interface AMSTreatmentArea
- (AMSTreatmentArea)initWithCoder:(id)coder;
- (AMSTreatmentArea)initWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSTreatmentArea

- (AMSTreatmentArea)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = AMSTreatmentArea;
  v5 = [(AMSTreatmentArea *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  identifier = [(AMSTreatmentArea *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    identifier = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = identifier;

      if (!v7 || (v8 = [(AMSTreatmentArea *)self cacheable], v8 != [(AMSTreatmentArea *)v7 cacheable]))
      {
        v9 = 0;
LABEL_10:

        goto LABEL_11;
      }

      identifier = [(AMSTreatmentArea *)self identifier];
      identifier2 = [(AMSTreatmentArea *)v7 identifier];
      v9 = [(AMSTreatmentArea *)identifier isEqualToString:identifier2];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[AMSTreatmentArea cacheable](self forKey:{"cacheable"), @"cacheable"}];
  identifier = [(AMSTreatmentArea *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (AMSTreatmentArea)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [(AMSTreatmentArea *)self initWithIdentifier:v5];
  v7 = [coderCopy decodeBoolForKey:@"cacheable"];

  [(AMSTreatmentArea *)v6 setCacheable:v7];
  return v6;
}

- (id)description
{
  dictionaryRepresentation = [(AMSTreatmentArea *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (id)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"cacheable";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSTreatmentArea cacheable](self, "cacheable")}];
  v7[1] = @"identifier";
  v8[0] = v3;
  identifier = [(AMSTreatmentArea *)self identifier];
  v8[1] = identifier;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end