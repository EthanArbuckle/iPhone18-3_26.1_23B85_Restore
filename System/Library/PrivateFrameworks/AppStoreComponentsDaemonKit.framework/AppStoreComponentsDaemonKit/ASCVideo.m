@interface ASCVideo
- (ASCVideo)initWithCoder:(id)a3;
- (ASCVideo)initWithVideoURL:(id)a3 preview:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCVideo

- (ASCVideo)initWithVideoURL:(id)a3 preview:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCVideo;
  v8 = [(ASCVideo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    videoURL = v8->_videoURL;
    v8->_videoURL = v9;

    v11 = [v7 copy];
    preview = v8->_preview;
    v8->_preview = v11;
  }

  return v8;
}

- (ASCVideo)initWithCoder:(id)a3
{
  v4 = a3;
  +[ASCEligibility assertCurrentProcessEligibility];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"videoURL"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preview"];
    if (v6)
    {
      v14.receiver = self;
      v14.super_class = ASCVideo;
      v7 = [(ASCVideo *)&v14 init];
      if (v7)
      {
        v8 = [v5 copy];
        videoURL = v7->_videoURL;
        v7->_videoURL = v8;

        v10 = [v6 copy];
        preview = v7->_preview;
        v7->_preview = v10;
      }

      self = v7;
      v12 = self;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASCVideo initWithCoder:];
      }

      v12 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCVideo initWithCoder:];
    }

    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCVideo *)self videoURL];
  [v4 encodeObject:v5 forKey:@"videoURL"];

  v6 = [(ASCVideo *)self preview];
  [v4 encodeObject:v6 forKey:@"preview"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCVideo *)self videoURL];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCVideo *)self preview];
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

    v9 = [(ASCVideo *)self videoURL];
    v10 = [(ASCVideo *)v8 videoURL];
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
      v12 = [(ASCVideo *)self preview];
      v13 = [(ASCVideo *)v8 preview];
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
  v4 = [(ASCVideo *)self videoURL];
  [(ASCDescriber *)v3 addObject:v4 withName:@"videoURL"];

  v5 = [(ASCVideo *)self preview];
  [(ASCDescriber *)v3 addObject:v5 withName:@"preview"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

@end