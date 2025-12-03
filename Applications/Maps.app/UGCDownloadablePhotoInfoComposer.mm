@interface UGCDownloadablePhotoInfoComposer
+ (id)downloadablePhotoForGeoMapItemPhotoInfo:(id)info;
+ (id)downloadablePhotoForUGCPhoto:(id)photo;
- (UGCDownloadablePhotoInfoComposer)initWithIdentifier:(id)identifier url:(id)url timeoutInterval:(double)interval;
@end

@implementation UGCDownloadablePhotoInfoComposer

- (UGCDownloadablePhotoInfoComposer)initWithIdentifier:(id)identifier url:(id)url timeoutInterval:(double)interval
{
  identifierCopy = identifier;
  urlCopy = url;
  v14.receiver = self;
  v14.super_class = UGCDownloadablePhotoInfoComposer;
  v11 = [(UGCDownloadablePhotoInfoComposer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_downloadIdentifier, identifier);
    objc_storeStrong(&v12->_url, url);
    v12->_timeoutInterval = interval;
  }

  return v12;
}

+ (id)downloadablePhotoForUGCPhoto:(id)photo
{
  photoCopy = photo;
  v4 = [photoCopy url];
  v5 = [UGCDownloadablePhotoInfoComposer alloc];
  identifier = [photoCopy identifier];

  v7 = [(UGCDownloadablePhotoInfoComposer *)v5 initWithIdentifier:identifier url:v4 timeoutInterval:15.0];

  return v7;
}

+ (id)downloadablePhotoForGeoMapItemPhotoInfo:(id)info
{
  v3 = [info url];
  v4 = [UGCDownloadablePhotoInfoComposer alloc];
  absoluteString = [v3 absoluteString];
  v6 = [(UGCDownloadablePhotoInfoComposer *)v4 initWithIdentifier:absoluteString url:v3 timeoutInterval:15.0];

  return v6;
}

@end