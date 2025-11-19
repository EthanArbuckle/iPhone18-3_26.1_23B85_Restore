@interface UGCDownloadablePhotoInfoComposer
+ (id)downloadablePhotoForGeoMapItemPhotoInfo:(id)a3;
+ (id)downloadablePhotoForUGCPhoto:(id)a3;
- (UGCDownloadablePhotoInfoComposer)initWithIdentifier:(id)a3 url:(id)a4 timeoutInterval:(double)a5;
@end

@implementation UGCDownloadablePhotoInfoComposer

- (UGCDownloadablePhotoInfoComposer)initWithIdentifier:(id)a3 url:(id)a4 timeoutInterval:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = UGCDownloadablePhotoInfoComposer;
  v11 = [(UGCDownloadablePhotoInfoComposer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_downloadIdentifier, a3);
    objc_storeStrong(&v12->_url, a4);
    v12->_timeoutInterval = a5;
  }

  return v12;
}

+ (id)downloadablePhotoForUGCPhoto:(id)a3
{
  v3 = a3;
  v4 = [v3 url];
  v5 = [UGCDownloadablePhotoInfoComposer alloc];
  v6 = [v3 identifier];

  v7 = [(UGCDownloadablePhotoInfoComposer *)v5 initWithIdentifier:v6 url:v4 timeoutInterval:15.0];

  return v7;
}

+ (id)downloadablePhotoForGeoMapItemPhotoInfo:(id)a3
{
  v3 = [a3 url];
  v4 = [UGCDownloadablePhotoInfoComposer alloc];
  v5 = [v3 absoluteString];
  v6 = [(UGCDownloadablePhotoInfoComposer *)v4 initWithIdentifier:v5 url:v3 timeoutInterval:15.0];

  return v6;
}

@end