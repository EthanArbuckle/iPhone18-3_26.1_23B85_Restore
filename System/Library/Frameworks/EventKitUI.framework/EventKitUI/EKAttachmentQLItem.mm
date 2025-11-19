@interface EKAttachmentQLItem
- (EKAttachmentQLItem)initWithURL:(id)a3 filename:(id)a4;
@end

@implementation EKAttachmentQLItem

- (EKAttachmentQLItem)initWithURL:(id)a3 filename:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EKAttachmentQLItem;
  v9 = [(EKAttachmentQLItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeStrong(&v10->_filename, a4);
  }

  return v10;
}

@end