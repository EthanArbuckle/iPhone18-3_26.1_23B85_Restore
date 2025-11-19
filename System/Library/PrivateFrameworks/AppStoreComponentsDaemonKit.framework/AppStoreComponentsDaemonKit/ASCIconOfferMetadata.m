@interface ASCIconOfferMetadata
- (ASCIconOfferMetadata)initWithBaseImageName:(id)a3 animationName:(id)a4;
- (ASCIconOfferMetadata)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)imageNameForSize:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCIconOfferMetadata

- (ASCIconOfferMetadata)initWithBaseImageName:(id)a3 animationName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASCIconOfferMetadata;
  v8 = [(ASCOfferMetadata *)&v14 _init];
  if (v8)
  {
    v9 = [v6 copy];
    baseImageName = v8->_baseImageName;
    v8->_baseImageName = v9;

    v11 = [v7 copy];
    animationName = v8->_animationName;
    v8->_animationName = v11;
  }

  return v8;
}

- (ASCIconOfferMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseImageName"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"animationName"];
    if (v6)
    {
      v27.receiver = self;
      v27.super_class = ASCIconOfferMetadata;
      v7 = [(ASCOfferMetadata *)&v27 initWithCoder:v4];
      p_isa = &v7->super.super.isa;
      if (v7)
      {
        objc_storeStrong(&v7->_baseImageName, v5);
        objc_storeStrong(p_isa + 1, v6);
      }

      self = p_isa;
      v9 = self;
    }

    else
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v18)
      {
        [(ASCIconOfferMetadata *)v18 initWithCoder:v19, v20, v21, v22, v23, v24, v25];
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      [(ASCIconOfferMetadata *)v10 initWithCoder:v11, v12, v13, v14, v15, v16, v17];
    }

    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASCIconOfferMetadata;
  v4 = a3;
  [(ASCOfferMetadata *)&v7 encodeWithCoder:v4];
  v5 = [(ASCIconOfferMetadata *)self baseImageName:v7.receiver];
  [v4 encodeObject:v5 forKey:@"baseImageName"];

  v6 = [(ASCIconOfferMetadata *)self animationName];
  [v4 encodeObject:v6 forKey:@"animationName"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCIconOfferMetadata *)self baseImageName];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCIconOfferMetadata *)self animationName];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCHasher *)v3 finalizeHash];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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

  v7 = v6;

  if (v7)
  {
    v8 = [(ASCIconOfferMetadata *)self baseImageName];
    v9 = [v7 baseImageName];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
        goto LABEL_10;
      }
    }

    else if (v8 == v9)
    {
LABEL_10:
      v11 = [(ASCIconOfferMetadata *)self animationName];
      v12 = [v7 animationName];
      v13 = v12;
      if (v11 && v12)
      {
        v14 = [v11 isEqual:v12];
      }

      else
      {
        v14 = v11 == v12;
      }

      goto LABEL_18;
    }

    v14 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCIconOfferMetadata *)self baseImageName];
  [(ASCDescriber *)v3 addObject:v4 withName:@"baseImageName"];

  v5 = [(ASCIconOfferMetadata *)self animationName];
  [(ASCDescriber *)v3 addObject:v5 withName:@"animationName"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

- (id)imageNameForSize:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ASCIconOfferMetadata *)self baseImageName];
  v5 = [v3 stringWithFormat:@"%@%@%@", v4, &stru_2835CD1E8, &stru_2835CD1E8];

  return v5;
}

@end