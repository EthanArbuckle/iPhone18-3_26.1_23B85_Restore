@interface ASCVideo
- (ASCVideo)initWithCoder:(id)coder;
- (ASCVideo)initWithVideoURL:(id)l preview:(id)preview;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCVideo

- (ASCVideo)initWithVideoURL:(id)l preview:(id)preview
{
  lCopy = l;
  previewCopy = preview;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCVideo;
  v8 = [(ASCVideo *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    videoURL = v8->_videoURL;
    v8->_videoURL = v9;

    v11 = [previewCopy copy];
    preview = v8->_preview;
    v8->_preview = v11;
  }

  return v8;
}

- (ASCVideo)initWithCoder:(id)coder
{
  coderCopy = coder;
  +[ASCEligibility assertCurrentProcessEligibility];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"videoURL"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preview"];
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
      selfCopy = self;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASCVideo initWithCoder:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCVideo initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  videoURL = [(ASCVideo *)self videoURL];
  [coderCopy encodeObject:videoURL forKey:@"videoURL"];

  preview = [(ASCVideo *)self preview];
  [coderCopy encodeObject:preview forKey:@"preview"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  videoURL = [(ASCVideo *)self videoURL];
  [(ASCHasher *)v3 combineObject:videoURL];

  preview = [(ASCVideo *)self preview];
  [(ASCHasher *)v3 combineObject:preview];

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

    videoURL = [(ASCVideo *)self videoURL];
    videoURL2 = [(ASCVideo *)v8 videoURL];
    v11 = videoURL2;
    if (videoURL && videoURL2)
    {
      if ([videoURL isEqual:videoURL2])
      {
        goto LABEL_12;
      }
    }

    else if (videoURL == videoURL2)
    {
LABEL_12:
      preview = [(ASCVideo *)self preview];
      preview2 = [(ASCVideo *)v8 preview];
      v14 = preview2;
      if (preview && preview2)
      {
        v7 = [preview isEqual:preview2];
      }

      else
      {
        v7 = preview == preview2;
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
  videoURL = [(ASCVideo *)self videoURL];
  [(ASCDescriber *)v3 addObject:videoURL withName:@"videoURL"];

  preview = [(ASCVideo *)self preview];
  [(ASCDescriber *)v3 addObject:preview withName:@"preview"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end