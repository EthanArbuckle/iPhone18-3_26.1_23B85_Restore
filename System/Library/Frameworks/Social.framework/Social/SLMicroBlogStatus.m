@interface SLMicroBlogStatus
- (SLMicroBlogStatus)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLMicroBlogStatus

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(SLMicroBlogStatus *)self statusText];
  [v11 encodeObject:v4 forKey:@"statusText"];

  v5 = [(SLMicroBlogStatus *)self imageData];
  [v11 encodeObject:v5 forKey:@"imageData"];

  v6 = [(SLMicroBlogStatus *)self imageAssetURLs];
  [v11 encodeObject:v6 forKey:@"imageAssetURLs"];

  v7 = [(SLMicroBlogStatus *)self maskedApplicationID];

  if (v7)
  {
    v8 = [(SLMicroBlogStatus *)self maskedApplicationID];
    [v11 encodeObject:v8 forKey:@"maskedApplicationID"];
  }

  v9 = [(SLMicroBlogStatus *)self inReplyToStatusID];

  if (v9)
  {
    v10 = [(SLMicroBlogStatus *)self inReplyToStatusID];
    [v11 encodeObject:v10 forKey:@"inReplyToStatusID"];
  }
}

- (SLMicroBlogStatus)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SLMicroBlogStatus;
  v5 = [(SLMicroBlogStatus *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusText"];
    [(SLMicroBlogStatus *)v5 setStatusText:v6];

    v7 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"imageData"];
    [(SLMicroBlogStatus *)v5 setImageData:v10];

    v11 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"imageAssetURLs"];
    [(SLMicroBlogStatus *)v5 setImageAssetURLs:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maskedApplicationID"];
    [(SLMicroBlogStatus *)v5 setMaskedApplicationID:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inReplyToStatusID"];
    [(SLMicroBlogStatus *)v5 setInReplyToStatusID:v16];
  }

  return v5;
}

@end