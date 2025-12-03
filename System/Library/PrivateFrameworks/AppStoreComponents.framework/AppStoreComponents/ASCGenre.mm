@interface ASCGenre
- (ASCGenre)initWithCoder:(id)coder;
- (ASCGenre)initWithName:(id)name identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCGenre

- (ASCGenre)initWithName:(id)name identifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCGenre;
  v8 = [(ASCGenre *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v11;
  }

  return v8;
}

- (ASCGenre)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ASCGenre;
  v5 = [(ASCGenre *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(ASCGenre *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  identifier = [(ASCGenre *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  name = [(ASCGenre *)self name];
  [(ASCHasher *)v3 combineObject:name];

  identifier = [(ASCGenre *)self identifier];
  [(ASCHasher *)v3 combineObject:identifier];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    v5 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    if (!v8)
    {
      v7 = 0;
LABEL_21:

      goto LABEL_22;
    }

    name = [(ASCGenre *)self name];
    name2 = [(ASCGenre *)v8 name];
    v11 = name2;
    if (name && name2)
    {
      if ([name isEqual:name2])
      {
        goto LABEL_12;
      }
    }

    else if (name == name2)
    {
LABEL_12:
      identifier = [(ASCGenre *)self identifier];
      identifier2 = [(ASCGenre *)v8 identifier];
      v14 = identifier2;
      if (identifier && identifier2)
      {
        v7 = [identifier isEqual:identifier2];
      }

      else
      {
        v7 = identifier == identifier2;
      }

      goto LABEL_20;
    }

    v7 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v7 = 1;
LABEL_22:

  return v7;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  name = [(ASCGenre *)self name];
  [(ASCDescriber *)v3 addObject:name withName:@"name"];

  identifier = [(ASCGenre *)self identifier];
  [(ASCDescriber *)v3 addObject:identifier withName:@"identifier"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end