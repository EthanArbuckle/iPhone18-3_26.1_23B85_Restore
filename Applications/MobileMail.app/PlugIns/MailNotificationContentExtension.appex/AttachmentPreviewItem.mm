@interface AttachmentPreviewItem
- (AttachmentPreviewItem)initWithUrl:(id)url title:(id)title;
@end

@implementation AttachmentPreviewItem

- (AttachmentPreviewItem)initWithUrl:(id)url title:(id)title
{
  urlCopy = url;
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = AttachmentPreviewItem;
  v9 = [(AttachmentPreviewItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_previewItemURL, url);
    objc_storeStrong(&v10->_previewItemTitle, title);
  }

  return v10;
}

@end