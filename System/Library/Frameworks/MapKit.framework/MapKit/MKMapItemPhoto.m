@interface MKMapItemPhoto
- (MKMapItemPhoto)initWithGeoMapItemPhoto:(id)a3 title:(id)a4 subtitle:(id)a5;
- (MKMapItemPhoto)initWithPictureItem:(id)a3;
- (NSURL)largestPhotoURL;
- (id)urlForBestPhotoForSize:(CGSize)a3;
- (int64_t)format;
@end

@implementation MKMapItemPhoto

- (id)urlForBestPhotoForSize:(CGSize)a3
{
  v3 = [(GEOMapItemPhoto *)self->_geoMapItemPhoto bestPhotoForSize:1 allowSmaller:a3.width, a3.height];
  v4 = [v3 url];

  return v4;
}

- (int64_t)format
{
  [(GEOMapItemPhoto *)self->_geoMapItemPhoto sizeRatio];
  if (v2 < 1.0)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 > 1.0);
  }
}

- (NSURL)largestPhotoURL
{
  v2 = [(GEOMapItemPhoto *)self->_geoMapItemPhoto largestPhoto];
  v3 = [v2 url];

  return v3;
}

- (MKMapItemPhoto)initWithPictureItem:(id)a3
{
  v4 = a3;
  v5 = [v4 photo];
  v6 = [v4 primaryText];
  v7 = [v4 secondaryText];
  if ([v7 length])
  {
    v8 = [v4 secondaryText];
    v9 = [(MKMapItemPhoto *)self initWithGeoMapItemPhoto:v5 title:v6 subtitle:v8];
  }

  else
  {
    v9 = [(MKMapItemPhoto *)self initWithGeoMapItemPhoto:v5 title:v6 subtitle:0];
  }

  if (v9)
  {
    v9->_photoStyle = 1;
  }

  return v9;
}

- (MKMapItemPhoto)initWithGeoMapItemPhoto:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = MKMapItemPhoto;
  v12 = [(MKMapItemPhoto *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_geoMapItemPhoto, a3);
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    objc_storeStrong(&v13->_subtitle, a5);
    v16 = [_MKMapItemPhotosAttribution alloc];
    v17 = [v9 attribution];
    v18 = [(_MKMapItemPhotosAttribution *)v16 initWithGEOMapItemAttribution:v17];
    attribution = v13->_attribution;
    v13->_attribution = v18;

    v13->_photoStyle = 0;
  }

  return v13;
}

@end