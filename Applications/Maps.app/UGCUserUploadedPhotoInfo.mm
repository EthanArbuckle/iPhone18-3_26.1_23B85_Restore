@interface UGCUserUploadedPhotoInfo
- (CGSize)size;
- (UGCUserUploadedPhotoInfo)initWithURL:(id)a3 size:(CGSize)a4;
@end

@implementation UGCUserUploadedPhotoInfo

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UGCUserUploadedPhotoInfo)initWithURL:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = UGCUserUploadedPhotoInfo;
  v9 = [(UGCUserUploadedPhotoInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_size.width = width;
    v9->_size.height = height;
    objc_storeStrong(&v9->_url, a3);
  }

  return v10;
}

@end