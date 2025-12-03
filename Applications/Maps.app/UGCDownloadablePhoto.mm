@interface UGCDownloadablePhoto
- (BOOL)isEqual:(id)equal;
- (NSURL)url;
- (UGCDownloadablePhoto)initWithGEORPEnrichmentImage:(id)image;
- (id)bestPhotoForFrameSize:(CGSize)size displayScale:(double)scale options:(id)options;
- (id)bestPhotoForSize:(CGSize)size allowSmaller:(BOOL)smaller;
- (id)bestPhotoForSize:(CGSize)size options:(id)options;
- (id)largestPhoto;
@end

@implementation UGCDownloadablePhoto

- (id)largestPhoto
{
  v3 = [UGCUserUploadedPhotoInfo alloc];
  v4 = [(UGCDownloadablePhoto *)self url];
  v5 = [(UGCUserUploadedPhotoInfo *)v3 initWithURL:v4 size:CGSizeZero.width, CGSizeZero.height];

  return v5;
}

- (id)bestPhotoForSize:(CGSize)size options:(id)options
{
  height = size.height;
  width = size.width;
  v7 = [UGCUserUploadedPhotoInfo alloc];
  v8 = [(UGCDownloadablePhoto *)self url];
  height = [(UGCUserUploadedPhotoInfo *)v7 initWithURL:v8 size:width, height];

  return height;
}

- (id)bestPhotoForSize:(CGSize)size allowSmaller:(BOOL)smaller
{
  height = size.height;
  width = size.width;
  v7 = [UGCUserUploadedPhotoInfo alloc];
  v8 = [(UGCDownloadablePhoto *)self url];
  height = [(UGCUserUploadedPhotoInfo *)v7 initWithURL:v8 size:width, height];

  return height;
}

- (id)bestPhotoForFrameSize:(CGSize)size displayScale:(double)scale options:(id)options
{
  height = size.height;
  width = size.width;
  v8 = [UGCUserUploadedPhotoInfo alloc];
  v9 = [(UGCDownloadablePhoto *)self url];
  height = [(UGCUserUploadedPhotoInfo *)v8 initWithURL:v9 size:width, height];

  return height;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v6 = [(GEORPEnrichmentImage *)self->_enrichmentImage isEqual:equalCopy[1]];
  }

  return v6;
}

- (NSURL)url
{
  v3 = [NSURL alloc];
  v4 = [(GEORPEnrichmentImage *)self->_enrichmentImage url];
  v5 = [v3 initWithString:v4];

  return v5;
}

- (UGCDownloadablePhoto)initWithGEORPEnrichmentImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = UGCDownloadablePhoto;
  v6 = [(UGCDownloadablePhoto *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enrichmentImage, image);
  }

  return v7;
}

@end