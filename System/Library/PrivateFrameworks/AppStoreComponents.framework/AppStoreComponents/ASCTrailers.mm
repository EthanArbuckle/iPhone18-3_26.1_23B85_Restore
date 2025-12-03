@interface ASCTrailers
- (ASCTrailers)initWithCoder:(id)coder;
- (ASCTrailers)initWithVideos:(id)videos mediaPlatform:(id)platform;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCTrailers

- (ASCTrailers)initWithVideos:(id)videos mediaPlatform:(id)platform
{
  videosCopy = videos;
  platformCopy = platform;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCTrailers;
  v8 = [(ASCTrailers *)&v14 init];
  if (v8)
  {
    v9 = [videosCopy copy];
    videos = v8->_videos;
    v8->_videos = v9;

    v11 = [platformCopy copy];
    mediaPlatform = v8->_mediaPlatform;
    v8->_mediaPlatform = v11;
  }

  return v8;
}

- (ASCTrailers)initWithCoder:(id)coder
{
  coderCopy = coder;
  +[ASCEligibility assertCurrentProcessEligibility];
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"videos"];
  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaPlatform"];
    if (v9)
    {
      v17.receiver = self;
      v17.super_class = ASCTrailers;
      v10 = [(ASCTrailers *)&v17 init];
      if (v10)
      {
        v11 = [v8 copy];
        videos = v10->_videos;
        v10->_videos = v11;

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
        [ASCTrailers initWithCoder:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCTrailers initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  videos = [(ASCTrailers *)self videos];
  [coderCopy encodeObject:videos forKey:@"videos"];

  mediaPlatform = [(ASCTrailers *)self mediaPlatform];
  [coderCopy encodeObject:mediaPlatform forKey:@"mediaPlatform"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  videos = [(ASCTrailers *)self videos];
  [(ASCHasher *)v3 combineObject:videos];

  mediaPlatform = [(ASCTrailers *)self mediaPlatform];
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
    videos = [(ASCTrailers *)self videos];
    videos2 = [v7 videos];
    v10 = videos2;
    if (videos && videos2)
    {
      if ([videos isEqual:videos2])
      {
        goto LABEL_10;
      }
    }

    else if (videos == videos2)
    {
LABEL_10:
      mediaPlatform = [(ASCTrailers *)self mediaPlatform];
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
  videos = [(ASCTrailers *)self videos];
  [(ASCDescriber *)v3 addObject:videos withName:@"videos"];

  mediaPlatform = [(ASCTrailers *)self mediaPlatform];
  [(ASCDescriber *)v3 addObject:mediaPlatform withName:@"mediaPlatform"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end