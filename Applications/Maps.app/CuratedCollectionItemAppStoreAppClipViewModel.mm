@interface CuratedCollectionItemAppStoreAppClipViewModel
- (BOOL)isEqual:(id)equal;
- (CuratedCollectionItemAppStoreAppClipViewModel)initWithAppStoreAppClip:(id)clip;
- (NSString)subtitle;
- (void)fetchAppClipIconWithSize:(CGSize)size scale:(double)scale completion:(id)completion;
@end

@implementation CuratedCollectionItemAppStoreAppClipViewModel

- (void)fetchAppClipIconWithSize:(CGSize)size scale:(double)scale completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  v10 = +[MKAppImageManager sharedImageManager];
  artworkURL = [(GEOAppStoreAppClip *)self->_appClip artworkURL];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B28DF0;
  v13[3] = &unk_1016386F8;
  scaleCopy = scale;
  v16 = width;
  v17 = height;
  v14 = completionCopy;
  v12 = completionCopy;
  [v10 loadAppImageAtURL:artworkURL completionHandler:v13];
}

- (NSString)subtitle
{
  subtitle = self->_subtitle;
  if (!subtitle)
  {
    subtitle = [(GEOAppStoreAppClip *)self->_appClip subtitle];
    v5 = [subtitle length];

    if (v5)
    {
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"[Guides] App Clip button subtitle" value:@"localized string not found" table:0];
      subtitle2 = [(GEOAppStoreAppClip *)self->_appClip subtitle];
      v9 = [NSString stringWithFormat:v7, subtitle2];
      v10 = self->_subtitle;
      self->_subtitle = v9;
    }

    else
    {
      v6 = self->_subtitle;
      self->_subtitle = &stru_1016631F0;
    }

    subtitle = self->_subtitle;
  }

  return subtitle;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    appClip = [(CuratedCollectionItemAppStoreAppClipViewModel *)v5 appClip];
    v7 = appClip;
    if (appClip == self->_appClip)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(GEOAppStoreAppClip *)appClip isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CuratedCollectionItemAppStoreAppClipViewModel)initWithAppStoreAppClip:(id)clip
{
  clipCopy = clip;
  v9.receiver = self;
  v9.super_class = CuratedCollectionItemAppStoreAppClipViewModel;
  v6 = [(CuratedCollectionItemAppStoreAppClipViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appClip, clip);
  }

  return v7;
}

@end