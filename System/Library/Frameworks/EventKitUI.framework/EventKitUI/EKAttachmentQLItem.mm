@interface EKAttachmentQLItem
- (EKAttachmentQLItem)initWithURL:(id)l filename:(id)filename;
@end

@implementation EKAttachmentQLItem

- (EKAttachmentQLItem)initWithURL:(id)l filename:(id)filename
{
  lCopy = l;
  filenameCopy = filename;
  v12.receiver = self;
  v12.super_class = EKAttachmentQLItem;
  v9 = [(EKAttachmentQLItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_filename, filename);
  }

  return v10;
}

@end