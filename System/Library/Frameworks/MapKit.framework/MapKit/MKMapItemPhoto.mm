@interface MKMapItemPhoto
- (MKMapItemPhoto)initWithGeoMapItemPhoto:(id)photo title:(id)title subtitle:(id)subtitle;
- (MKMapItemPhoto)initWithPictureItem:(id)item;
- (NSURL)largestPhotoURL;
- (id)urlForBestPhotoForSize:(CGSize)size;
- (int64_t)format;
@end

@implementation MKMapItemPhoto

- (id)urlForBestPhotoForSize:(CGSize)size
{
  v3 = [(GEOMapItemPhoto *)self->_geoMapItemPhoto bestPhotoForSize:1 allowSmaller:size.width, size.height];
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
  largestPhoto = [(GEOMapItemPhoto *)self->_geoMapItemPhoto largestPhoto];
  v3 = [largestPhoto url];

  return v3;
}

- (MKMapItemPhoto)initWithPictureItem:(id)item
{
  itemCopy = item;
  photo = [itemCopy photo];
  primaryText = [itemCopy primaryText];
  secondaryText = [itemCopy secondaryText];
  if ([secondaryText length])
  {
    secondaryText2 = [itemCopy secondaryText];
    v9 = [(MKMapItemPhoto *)self initWithGeoMapItemPhoto:photo title:primaryText subtitle:secondaryText2];
  }

  else
  {
    v9 = [(MKMapItemPhoto *)self initWithGeoMapItemPhoto:photo title:primaryText subtitle:0];
  }

  if (v9)
  {
    v9->_photoStyle = 1;
  }

  return v9;
}

- (MKMapItemPhoto)initWithGeoMapItemPhoto:(id)photo title:(id)title subtitle:(id)subtitle
{
  photoCopy = photo;
  titleCopy = title;
  subtitleCopy = subtitle;
  v21.receiver = self;
  v21.super_class = MKMapItemPhoto;
  v12 = [(MKMapItemPhoto *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_geoMapItemPhoto, photo);
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    objc_storeStrong(&v13->_subtitle, subtitle);
    v16 = [_MKMapItemPhotosAttribution alloc];
    attribution = [photoCopy attribution];
    v18 = [(_MKMapItemPhotosAttribution *)v16 initWithGEOMapItemAttribution:attribution];
    attribution = v13->_attribution;
    v13->_attribution = v18;

    v13->_photoStyle = 0;
  }

  return v13;
}

@end