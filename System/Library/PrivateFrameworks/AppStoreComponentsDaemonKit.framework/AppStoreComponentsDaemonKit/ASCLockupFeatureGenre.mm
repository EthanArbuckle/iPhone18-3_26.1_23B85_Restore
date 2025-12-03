@interface ASCLockupFeatureGenre
- (ASCLockupFeatureGenre)initWithCoder:(id)coder;
- (ASCLockupFeatureGenre)initWithGenreName:(id)name genreID:(id)d subgenres:(id)subgenres;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCLockupFeatureGenre

- (ASCLockupFeatureGenre)initWithGenreName:(id)name genreID:(id)d subgenres:(id)subgenres
{
  nameCopy = name;
  dCopy = d;
  subgenresCopy = subgenres;
  v19.receiver = self;
  v19.super_class = ASCLockupFeatureGenre;
  v11 = [(ASCLockupFeatureGenre *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    genreName = v11->_genreName;
    v11->_genreName = v12;

    v14 = [dCopy copy];
    genreID = v11->_genreID;
    v11->_genreID = v14;

    v16 = [subgenresCopy copy];
    subgenres = v11->_subgenres;
    v11->_subgenres = v16;
  }

  return v11;
}

- (ASCLockupFeatureGenre)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genreName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genreID"];
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"subgenres"];

  v11 = [(ASCLockupFeatureGenre *)self initWithGenreName:v5 genreID:v6 subgenres:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  genreName = [(ASCLockupFeatureGenre *)self genreName];
  [coderCopy encodeObject:genreName forKey:@"genreName"];

  genreID = [(ASCLockupFeatureGenre *)self genreID];
  [coderCopy encodeObject:genreID forKey:@"genreID"];

  subgenres = [(ASCLockupFeatureGenre *)self subgenres];
  [coderCopy encodeObject:subgenres forKey:@"subgenres"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  genreName = [(ASCLockupFeatureGenre *)self genreName];
  [(ASCHasher *)v3 combineObject:genreName];

  genreID = [(ASCLockupFeatureGenre *)self genreID];
  [(ASCHasher *)v3 combineObject:genreID];

  subgenres = [(ASCLockupFeatureGenre *)self subgenres];
  [(ASCHasher *)v3 combineObject:subgenres];

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
LABEL_27:

      goto LABEL_28;
    }

    genreName = [(ASCLockupFeatureGenre *)self genreName];
    genreName2 = [(ASCLockupFeatureGenre *)v8 genreName];
    v11 = genreName2;
    if (genreName && genreName2)
    {
      if ([genreName isEqual:genreName2])
      {
LABEL_12:
        genreID = [(ASCLockupFeatureGenre *)self genreID];
        genreID2 = [(ASCLockupFeatureGenre *)v8 genreID];
        v14 = genreID2;
        if (genreID && genreID2)
        {
          if ([genreID isEqual:genreID2])
          {
            goto LABEL_15;
          }
        }

        else if (genreID == genreID2)
        {
LABEL_15:
          subgenres = [(ASCLockupFeatureGenre *)self subgenres];
          subgenres2 = [(ASCLockupFeatureGenre *)v8 subgenres];
          v17 = subgenres2;
          if (subgenres && subgenres2)
          {
            v7 = [subgenres isEqual:subgenres2];
          }

          else
          {
            v7 = subgenres == subgenres2;
          }

          goto LABEL_25;
        }

        v7 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    else if (genreName == genreName2)
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
  genreName = [(ASCLockupFeatureGenre *)self genreName];
  [(ASCDescriber *)v3 addObject:genreName withName:@"genreName"];

  genreID = [(ASCLockupFeatureGenre *)self genreID];
  [(ASCDescriber *)v3 addObject:genreID withName:@"genreID"];

  subgenres = [(ASCLockupFeatureGenre *)self subgenres];
  [(ASCDescriber *)v3 addObject:subgenres withName:@"subgenres"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end