@interface _WKVideoFileUploadItem
- (RetainPtr<UIImage>)displayImage;
@end

@implementation _WKVideoFileUploadItem

- (RetainPtr<UIImage>)displayImage
{
  v3 = v2;
  v4 = [(_WKFileUploadItem *)self fileURL];

  WebKit::iconForVideoFile(v4, v5, v3);
  return v6;
}

@end