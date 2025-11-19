@interface ASCLockupFeatureGenre
- (ASCLockupFeatureGenre)initWithCoder:(id)a3;
- (ASCLockupFeatureGenre)initWithGenreName:(id)a3 genreID:(id)a4 subgenres:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCLockupFeatureGenre

- (ASCLockupFeatureGenre)initWithGenreName:(id)a3 genreID:(id)a4 subgenres:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ASCLockupFeatureGenre;
  v11 = [(ASCLockupFeatureGenre *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    genreName = v11->_genreName;
    v11->_genreName = v12;

    v14 = [v9 copy];
    genreID = v11->_genreID;
    v11->_genreID = v14;

    v16 = [v10 copy];
    subgenres = v11->_subgenres;
    v11->_subgenres = v16;
  }

  return v11;
}

- (ASCLockupFeatureGenre)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genreName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genreID"];
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"subgenres"];

  v11 = [(ASCLockupFeatureGenre *)self initWithGenreName:v5 genreID:v6 subgenres:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupFeatureGenre *)self genreName];
  [v4 encodeObject:v5 forKey:@"genreName"];

  v6 = [(ASCLockupFeatureGenre *)self genreID];
  [v4 encodeObject:v6 forKey:@"genreID"];

  v7 = [(ASCLockupFeatureGenre *)self subgenres];
  [v4 encodeObject:v7 forKey:@"subgenres"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCLockupFeatureGenre *)self genreName];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCLockupFeatureGenre *)self genreID];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCLockupFeatureGenre *)self subgenres];
  [(ASCHasher *)v3 combineObject:v6];

  v7 = [(ASCHasher *)v3 finalizeHash];
  return v7;
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
LABEL_27:

      goto LABEL_28;
    }

    v9 = [(ASCLockupFeatureGenre *)self genreName];
    v10 = [(ASCLockupFeatureGenre *)v8 genreName];
    v11 = v10;
    if (v9 && v10)
    {
      if ([v9 isEqual:v10])
      {
LABEL_12:
        v12 = [(ASCLockupFeatureGenre *)self genreID];
        v13 = [(ASCLockupFeatureGenre *)v8 genreID];
        v14 = v13;
        if (v12 && v13)
        {
          if ([v12 isEqual:v13])
          {
            goto LABEL_15;
          }
        }

        else if (v12 == v13)
        {
LABEL_15:
          v15 = [(ASCLockupFeatureGenre *)self subgenres];
          v16 = [(ASCLockupFeatureGenre *)v8 subgenres];
          v17 = v16;
          if (v15 && v16)
          {
            v7 = [v15 isEqual:v16];
          }

          else
          {
            v7 = v15 == v16;
          }

          goto LABEL_25;
        }

        v7 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    else if (v9 == v10)
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v7 = 1;
LABEL_28:

  return v7;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCLockupFeatureGenre *)self genreName];
  [(ASCDescriber *)v3 addObject:v4 withName:@"genreName"];

  v5 = [(ASCLockupFeatureGenre *)self genreID];
  [(ASCDescriber *)v3 addObject:v5 withName:@"genreID"];

  v6 = [(ASCLockupFeatureGenre *)self subgenres];
  [(ASCDescriber *)v3 addObject:v6 withName:@"subgenres"];

  v7 = [(ASCDescriber *)v3 finalizeDescription];

  return v7;
}

@end