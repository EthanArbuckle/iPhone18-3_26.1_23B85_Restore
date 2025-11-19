@interface ASCGenre
- (ASCGenre)initWithCoder:(id)a3;
- (ASCGenre)initWithName:(id)a3 identifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCGenre

- (ASCGenre)initWithName:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCGenre;
  v8 = [(ASCGenre *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    identifier = v8->_identifier;
    v8->_identifier = v11;
  }

  return v8;
}

- (ASCGenre)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASCGenre;
  v5 = [(ASCGenre *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCGenre *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(ASCGenre *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCGenre *)self name];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCGenre *)self identifier];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCHasher *)v3 finalizeHash];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    v5 = v4;
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

    v9 = [(ASCGenre *)self name];
    v10 = [(ASCGenre *)v8 name];
    v11 = v10;
    if (v9 && v10)
    {
      if ([v9 isEqual:v10])
      {
        goto LABEL_12;
      }
    }

    else if (v9 == v10)
    {
LABEL_12:
      v12 = [(ASCGenre *)self identifier];
      v13 = [(ASCGenre *)v8 identifier];
      v14 = v13;
      if (v12 && v13)
      {
        v7 = [v12 isEqual:v13];
      }

      else
      {
        v7 = v12 == v13;
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
  v4 = [(ASCGenre *)self name];
  [(ASCDescriber *)v3 addObject:v4 withName:@"name"];

  v5 = [(ASCGenre *)self identifier];
  [(ASCDescriber *)v3 addObject:v5 withName:@"identifier"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

@end