@interface SLMicroBlogStatus
- (SLMicroBlogStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLMicroBlogStatus

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  statusText = [(SLMicroBlogStatus *)self statusText];
  [coderCopy encodeObject:statusText forKey:@"statusText"];

  imageData = [(SLMicroBlogStatus *)self imageData];
  [coderCopy encodeObject:imageData forKey:@"imageData"];

  imageAssetURLs = [(SLMicroBlogStatus *)self imageAssetURLs];
  [coderCopy encodeObject:imageAssetURLs forKey:@"imageAssetURLs"];

  maskedApplicationID = [(SLMicroBlogStatus *)self maskedApplicationID];

  if (maskedApplicationID)
  {
    maskedApplicationID2 = [(SLMicroBlogStatus *)self maskedApplicationID];
    [coderCopy encodeObject:maskedApplicationID2 forKey:@"maskedApplicationID"];
  }

  inReplyToStatusID = [(SLMicroBlogStatus *)self inReplyToStatusID];

  if (inReplyToStatusID)
  {
    inReplyToStatusID2 = [(SLMicroBlogStatus *)self inReplyToStatusID];
    [coderCopy encodeObject:inReplyToStatusID2 forKey:@"inReplyToStatusID"];
  }
}

- (SLMicroBlogStatus)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SLMicroBlogStatus;
  v5 = [(SLMicroBlogStatus *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusText"];
    [(SLMicroBlogStatus *)v5 setStatusText:v6];

    v7 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"imageData"];
    [(SLMicroBlogStatus *)v5 setImageData:v10];

    v11 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"imageAssetURLs"];
    [(SLMicroBlogStatus *)v5 setImageAssetURLs:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maskedApplicationID"];
    [(SLMicroBlogStatus *)v5 setMaskedApplicationID:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inReplyToStatusID"];
    [(SLMicroBlogStatus *)v5 setInReplyToStatusID:v16];
  }

  return v5;
}

@end