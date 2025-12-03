@interface ASCIconOfferMetadata
- (ASCIconOfferMetadata)initWithBaseImageName:(id)name animationName:(id)animationName;
- (ASCIconOfferMetadata)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)imageNameForSize:(id)size;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCIconOfferMetadata

- (ASCIconOfferMetadata)initWithBaseImageName:(id)name animationName:(id)animationName
{
  nameCopy = name;
  animationNameCopy = animationName;
  v14.receiver = self;
  v14.super_class = ASCIconOfferMetadata;
  _init = [(ASCOfferMetadata *)&v14 _init];
  if (_init)
  {
    v9 = [nameCopy copy];
    baseImageName = _init->_baseImageName;
    _init->_baseImageName = v9;

    v11 = [animationNameCopy copy];
    animationName = _init->_animationName;
    _init->_animationName = v11;
  }

  return _init;
}

- (ASCIconOfferMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseImageName"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"animationName"];
    if (v6)
    {
      v27.receiver = self;
      v27.super_class = ASCIconOfferMetadata;
      v7 = [(ASCOfferMetadata *)&v27 initWithCoder:coderCopy];
      p_isa = &v7->super.super.isa;
      if (v7)
      {
        objc_storeStrong(&v7->_baseImageName, v5);
        objc_storeStrong(p_isa + 1, v6);
      }

      self = p_isa;
      selfCopy = self;
    }

    else
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v18)
      {
        [(ASCIconOfferMetadata *)v18 initWithCoder:v19, v20, v21, v22, v23, v24, v25];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      [(ASCIconOfferMetadata *)v10 initWithCoder:v11, v12, v13, v14, v15, v16, v17];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ASCIconOfferMetadata;
  coderCopy = coder;
  [(ASCOfferMetadata *)&v7 encodeWithCoder:coderCopy];
  v5 = [(ASCIconOfferMetadata *)self baseImageName:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"baseImageName"];

  animationName = [(ASCIconOfferMetadata *)self animationName];
  [coderCopy encodeObject:animationName forKey:@"animationName"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  baseImageName = [(ASCIconOfferMetadata *)self baseImageName];
  [(ASCHasher *)v3 combineObject:baseImageName];

  animationName = [(ASCIconOfferMetadata *)self animationName];
  [(ASCHasher *)v3 combineObject:animationName];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  v7 = v6;

  if (v7)
  {
    baseImageName = [(ASCIconOfferMetadata *)self baseImageName];
    baseImageName2 = [v7 baseImageName];
    v10 = baseImageName2;
    if (baseImageName && baseImageName2)
    {
      if ([baseImageName isEqual:baseImageName2])
      {
        goto LABEL_10;
      }
    }

    else if (baseImageName == baseImageName2)
    {
LABEL_10:
      animationName = [(ASCIconOfferMetadata *)self animationName];
      animationName2 = [v7 animationName];
      v13 = animationName2;
      if (animationName && animationName2)
      {
        v14 = [animationName isEqual:animationName2];
      }

      else
      {
        v14 = animationName == animationName2;
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
  baseImageName = [(ASCIconOfferMetadata *)self baseImageName];
  [(ASCDescriber *)v3 addObject:baseImageName withName:@"baseImageName"];

  animationName = [(ASCIconOfferMetadata *)self animationName];
  [(ASCDescriber *)v3 addObject:animationName withName:@"animationName"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (id)imageNameForSize:(id)size
{
  v3 = MEMORY[0x277CCACA8];
  baseImageName = [(ASCIconOfferMetadata *)self baseImageName];
  v5 = [v3 stringWithFormat:@"%@%@%@", baseImageName, &stru_2835CD1E8, &stru_2835CD1E8];

  return v5;
}

@end