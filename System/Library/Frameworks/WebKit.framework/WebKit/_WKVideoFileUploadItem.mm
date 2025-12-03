@interface _WKVideoFileUploadItem
- (RetainPtr<UIImage>)displayImage;
@end

@implementation _WKVideoFileUploadItem

- (RetainPtr<UIImage>)displayImage
{
  v3 = v2;
  fileURL = [(_WKFileUploadItem *)self fileURL];

  WebKit::iconForVideoFile(fileURL, v5, v3);
  return v6;
}

@end