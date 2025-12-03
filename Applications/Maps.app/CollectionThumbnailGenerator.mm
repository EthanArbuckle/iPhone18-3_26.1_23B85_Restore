@interface CollectionThumbnailGenerator
- (CollectionThumbnailGenerator)initWithPlaceCollection:(id)collection size:(CGSize)size;
- (id)thumbnailImage;
- (void)loadThumbnailIfNeededWithCompletion:(id)completion;
@end

@implementation CollectionThumbnailGenerator

- (id)thumbnailImage
{
  currentImage = [(CollectionThumbnailGenerator *)self currentImage];
  if (!currentImage)
  {
    currentImage = [(CollectionThumbnailGenerator *)self placeholderImage];
  }

  return currentImage;
}

- (void)loadThumbnailIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(CollectionThumbnailGenerator *)self hasFinishedLoading])
  {
    photos = [(GEOPlaceCollection *)self->_collection photos];
    thumbnailImage2 = [photos _geo_firstPhotoOfAtLeastSize:{self->_size.width, self->_size.height}];

    if (thumbnailImage2)
    {
      v7 = +[MKAppImageManager sharedImageManager];
      v8 = [thumbnailImage2 url];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100E7FDE8;
      v10[3] = &unk_101656A70;
      v10[4] = self;
      v11 = completionCopy;
      [v7 loadAppImageAtURL:v8 completionHandler:v10];
    }

    else
    {
      [(CollectionThumbnailGenerator *)self setHasFinishedLoading:1];
      if (completionCopy)
      {
        thumbnailImage = [(CollectionThumbnailGenerator *)self thumbnailImage];
        (*(completionCopy + 2))(completionCopy, thumbnailImage, 0);
      }
    }

    goto LABEL_8;
  }

  if (completionCopy)
  {
    thumbnailImage2 = [(CollectionThumbnailGenerator *)self thumbnailImage];
    (*(completionCopy + 2))(completionCopy, thumbnailImage2, 0);
LABEL_8:
  }
}

- (CollectionThumbnailGenerator)initWithPlaceCollection:(id)collection size:(CGSize)size
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  v14.receiver = self;
  v14.super_class = CollectionThumbnailGenerator;
  v9 = [(CollectionThumbnailGenerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, collection);
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