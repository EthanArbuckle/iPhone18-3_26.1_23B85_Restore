@interface QLThumbnailReplyAttachment
- (QLThumbnailReplyAttachment)initWithCoder:(id)a3;
- (QLThumbnailReplyAttachment)initWithData:(id)a3 contentType:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLThumbnailReplyAttachment

- (QLThumbnailReplyAttachment)initWithData:(id)a3 contentType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = QLThumbnailReplyAttachment;
  v9 = [(QLThumbnailReplyAttachment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_contentType, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(QLThumbnailReplyAttachment *)self data];
  [v4 encodeObject:v5 forKey:@"data"];

  v6 = [(QLThumbnailReplyAttachment *)self contentType];
  [v4 encodeObject:v6 forKey:@"contentType"];
}

- (QLThumbnailReplyAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = QLThumbnailReplyAttachment;
  v5 = [(QLThumbnailReplyAttachment *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(QLThumbnailReplyAttachment *)v5 setData:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    [(QLThumbnailReplyAttachment *)v5 setContentType:v7];
  }

  return v5;
}

@end