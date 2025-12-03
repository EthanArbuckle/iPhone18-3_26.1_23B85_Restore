@interface ASCScreenshots
- (ASCScreenshots)initWithArtwork:(id)artwork mediaPlatform:(id)platform;
- (ASCScreenshots)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCScreenshots

- (ASCScreenshots)initWithArtwork:(id)artwork mediaPlatform:(id)platform
{
  artworkCopy = artwork;
  platformCopy = platform;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCScreenshots;
  v8 = [(ASCScreenshots *)&v14 init];
  if (v8)
  {
    v9 = [artworkCopy copy];
    artwork = v8->_artwork;
    v8->_artwork = v9;

    v11 = [platformCopy copy];
    mediaPlatform = v8->_mediaPlatform;
    v8->_mediaPlatform = v11;
  }

  return v8;
}

- (ASCScreenshots)initWithCoder:(id)coder
{
  coderCopy = coder;
  +[ASCEligibility assertCurrentProcessEligibility];
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"artwork"];
  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaPlatform"];
    if (v9)
    {
      v17.receiver = self;
      v17.super_class = ASCScreenshots;
      v10 = [(ASCScreenshots *)&v17 init];
      if (v10)
      {
        v11 = [v8 copy];
        artwork = v10->_artwork;
        v10->_artwork = v11;

        v13 = [v9 copy];
        mediaPlatform = v10->_mediaPlatform;
        v10->_mediaPlatform = v13;
      }

      self = v10;
      selfCopy = self;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASCScreenshots initWithCoder:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCScreenshots initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  artwork = [(ASCScreenshots *)self artwork];
  [coderCopy encodeObject:artwork forKey:@"artwork"];

  mediaPlatform = [(ASCScreenshots *)self mediaPlatform];
  [coderCopy encodeObject:mediaPlatform forKey:@"mediaPlatform"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  artwork = [(ASCScreenshots *)self artwork];
  [(ASCHasher *)v3 combineObject:artwork];

  mediaPlatform = [(ASCScreenshots *)self mediaPlatform];
  [(ASCHasher *)v3 combineObject:mediaPlatform];

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
    artwork = [(ASCScreenshots *)self artwork];
    artwork2 = [v7 artwork];
    v10 = artwork2;
    if (artwork && artwork2)
    {
      if ([artwork isEqual:artwork2])
      {
        goto LABEL_10;
      }
    }

    else if (artwork == artwork2)
    {
LABEL_10:
      mediaPlatform = [(ASCScreenshots *)self mediaPlatform];
      mediaPlatform2 = [v7 mediaPlatform];
      v13 = mediaPlatform2;
      if (mediaPlatform && mediaPlatform2)
      {
        v14 = [mediaPlatform isEqual:mediaPlatform2];
      }

      else
      {
        v14 = mediaPlatform == mediaPlatform2;
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
  artwork = [(ASCScreenshots *)self artwork];
  [(ASCDescriber *)v3 addObject:artwork withName:@"artwork"];

  mediaPlatform = [(ASCScreenshots *)self mediaPlatform];
  [(ASCDescriber *)v3 addObject:mediaPlatform withName:@"mediaPlatform"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end