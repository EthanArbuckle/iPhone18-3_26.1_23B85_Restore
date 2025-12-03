@interface _WKImageFileUploadItem
- (RetainPtr<UIImage>)displayImage;
@end

@implementation _WKImageFileUploadItem

- (RetainPtr<UIImage>)displayImage
{
  v3 = v2;
  fileURL = [(_WKFileUploadItem *)self fileURL];

  WebKit::iconForImageFile(fileURL, v3);
  return v5;
}

@end