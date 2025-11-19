@interface _WKImageFileUploadItem
- (RetainPtr<UIImage>)displayImage;
@end

@implementation _WKImageFileUploadItem

- (RetainPtr<UIImage>)displayImage
{
  v3 = v2;
  v4 = [(_WKFileUploadItem *)self fileURL];

  WebKit::iconForImageFile(v4, v3);
  return v5;
}

@end