@interface ASCTrailers
- (ASCTrailers)initWithCoder:(id)a3;
- (ASCTrailers)initWithVideos:(id)a3 mediaPlatform:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCTrailers

- (ASCTrailers)initWithVideos:(id)a3 mediaPlatform:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCTrailers;
  v8 = [(ASCTrailers *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    videos = v8->_videos;
    v8->_videos = v9;

    v11 = [v7 copy];
    mediaPlatform = v8->_mediaPlatform;
    v8->_mediaPlatform = v11;
  }

  return v8;
}

- (ASCTrailers)initWithCoder:(id)a3
{
  v4 = a3;
  +[ASCEligibility assertCurrentProcessEligibility];
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"videos"];
  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaPlatform"];
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
      v15 = self;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASCTrailers initWithCoder:];
      }

      v15 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCTrailers initWithCoder:];
    }

    v15 = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCTrailers *)self videos];
  [v4 encodeObject:v5 forKey:@"videos"];

  v6 = [(ASCTrailers *)self mediaPlatform];
  [v4 encodeObject:v6 forKey:@"mediaPlatform"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCTrailers *)self videos];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCTrailers *)self mediaPlatform];
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
    v8 = [(ASCTrailers *)self videos];
    v9 = [v7 videos];
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
      v11 = [(ASCTrailers *)self mediaPlatform];
      v12 = [v7 mediaPlatform];
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
  v4 = [(ASCTrailers *)self videos];
  [(ASCDescriber *)v3 addObject:v4 withName:@"videos"];

  v5 = [(ASCTrailers *)self mediaPlatform];
  [(ASCDescriber *)v3 addObject:v5 withName:@"mediaPlatform"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

@end