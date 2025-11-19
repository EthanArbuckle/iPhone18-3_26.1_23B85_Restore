@interface CollectionThumbnailGenerator
- (CollectionThumbnailGenerator)initWithPlaceCollection:(id)a3 size:(CGSize)a4;
- (id)thumbnailImage;
- (void)loadThumbnailIfNeededWithCompletion:(id)a3;
@end

@implementation CollectionThumbnailGenerator

- (id)thumbnailImage
{
  v3 = [(CollectionThumbnailGenerator *)self currentImage];
  if (!v3)
  {
    v3 = [(CollectionThumbnailGenerator *)self placeholderImage];
  }

  return v3;
}

- (void)loadThumbnailIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  if (![(CollectionThumbnailGenerator *)self hasFinishedLoading])
  {
    v6 = [(GEOPlaceCollection *)self->_collection photos];
    v5 = [v6 _geo_firstPhotoOfAtLeastSize:{self->_size.width, self->_size.height}];

    if (v5)
    {
      v7 = +[MKAppImageManager sharedImageManager];
      v8 = [v5 url];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100E7FDE8;
      v10[3] = &unk_101656A70;
      v10[4] = self;
      v11 = v4;
      [v7 loadAppImageAtURL:v8 completionHandler:v10];
    }

    else
    {
      [(CollectionThumbnailGenerator *)self setHasFinishedLoading:1];
      if (v4)
      {
        v9 = [(CollectionThumbnailGenerator *)self thumbnailImage];
        (*(v4 + 2))(v4, v9, 0);
      }
    }

    goto LABEL_8;
  }

  if (v4)
  {
    v5 = [(CollectionThumbnailGenerator *)self thumbnailImage];
    (*(v4 + 2))(v4, v5, 0);
LABEL_8:
  }
}

- (CollectionThumbnailGenerator)initWithPlaceCollection:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v14.receiver = self;
  v14.super_class = CollectionThumbnailGenerator;
  v9 = [(CollectionThumbnailGenerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, a3);
    v10->_size.width = width;
    v10->_size.height = height;
    v10->_hasFinishedLoading = 0;
    v11 = [UIImage imageNamed:@"NoImageGuideIcon"];
    placeholderImage = v10->_placeholderImage;
    v10->_placeholderImage = v11;
  }

  return v10;
}

@end