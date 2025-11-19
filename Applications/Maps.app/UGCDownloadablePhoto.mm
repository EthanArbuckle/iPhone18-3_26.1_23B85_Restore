@interface UGCDownloadablePhoto
- (BOOL)isEqual:(id)a3;
- (NSURL)url;
- (UGCDownloadablePhoto)initWithGEORPEnrichmentImage:(id)a3;
- (id)bestPhotoForFrameSize:(CGSize)a3 displayScale:(double)a4 options:(id)a5;
- (id)bestPhotoForSize:(CGSize)a3 allowSmaller:(BOOL)a4;
- (id)bestPhotoForSize:(CGSize)a3 options:(id)a4;
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

- (id)bestPhotoForSize:(CGSize)a3 options:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [UGCUserUploadedPhotoInfo alloc];
  v8 = [(UGCDownloadablePhoto *)self url];
  v9 = [(UGCUserUploadedPhotoInfo *)v7 initWithURL:v8 size:width, height];

  return v9;
}

- (id)bestPhotoForSize:(CGSize)a3 allowSmaller:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [UGCUserUploadedPhotoInfo alloc];
  v8 = [(UGCDownloadablePhoto *)self url];
  v9 = [(UGCUserUploadedPhotoInfo *)v7 initWithURL:v8 size:width, height];

  return v9;
}

- (id)bestPhotoForFrameSize:(CGSize)a3 displayScale:(double)a4 options:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = [UGCUserUploadedPhotoInfo alloc];
  v9 = [(UGCDownloadablePhoto *)self url];
  v10 = [(UGCUserUploadedPhotoInfo *)v8 initWithURL:v9 size:width, height];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (v4 && (isKindOfClass & 1) != 0)
  {
    v6 = [(GEORPEnrichmentImage *)self->_enrichmentImage isEqual:v4[1]];
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

- (UGCDownloadablePhoto)initWithGEORPEnrichmentImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UGCDownloadablePhoto;
  v6 = [(UGCDownloadablePhoto *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enrichmentImage, a3);
  }

  return v7;
}

@end