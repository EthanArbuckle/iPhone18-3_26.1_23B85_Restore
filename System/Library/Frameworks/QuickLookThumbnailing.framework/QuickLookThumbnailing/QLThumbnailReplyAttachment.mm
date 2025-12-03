@interface QLThumbnailReplyAttachment
- (QLThumbnailReplyAttachment)initWithCoder:(id)coder;
- (QLThumbnailReplyAttachment)initWithData:(id)data contentType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLThumbnailReplyAttachment

- (QLThumbnailReplyAttachment)initWithData:(id)data contentType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = QLThumbnailReplyAttachment;
  v9 = [(QLThumbnailReplyAttachment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_contentType, type);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(QLThumbnailReplyAttachment *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  contentType = [(QLThumbnailReplyAttachment *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"contentType"];
}

- (QLThumbnailReplyAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = QLThumbnailReplyAttachment;
  v5 = [(QLThumbnailReplyAttachment *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(QLThumbnailReplyAttachment *)v5 setData:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    [(QLThumbnailReplyAttachment *)v5 setContentType:v7];
  }

  return v5;
}

@end