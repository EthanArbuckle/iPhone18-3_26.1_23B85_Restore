@interface CuratedCollectionItemAppStoreAppClipViewModel
- (BOOL)isEqual:(id)a3;
- (CuratedCollectionItemAppStoreAppClipViewModel)initWithAppStoreAppClip:(id)a3;
- (NSString)subtitle;
- (void)fetchAppClipIconWithSize:(CGSize)a3 scale:(double)a4 completion:(id)a5;
@end

@implementation CuratedCollectionItemAppStoreAppClipViewModel

- (void)fetchAppClipIconWithSize:(CGSize)a3 scale:(double)a4 completion:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = +[MKAppImageManager sharedImageManager];
  v11 = [(GEOAppStoreAppClip *)self->_appClip artworkURL];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B28DF0;
  v13[3] = &unk_1016386F8;
  v15 = a4;
  v16 = width;
  v17 = height;
  v14 = v9;
  v12 = v9;
  [v10 loadAppImageAtURL:v11 completionHandler:v13];
}

- (NSString)subtitle
{
  subtitle = self->_subtitle;
  if (!subtitle)
  {
    v4 = [(GEOAppStoreAppClip *)self->_appClip subtitle];
    v5 = [v4 length];

    if (v5)
    {
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"[Guides] App Clip button subtitle" value:@"localized string not found" table:0];
      v8 = [(GEOAppStoreAppClip *)self->_appClip subtitle];
      v9 = [NSString stringWithFormat:v7, v8];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(CuratedCollectionItemAppStoreAppClipViewModel *)v5 appClip];
    v7 = v6;
    if (v6 == self->_appClip)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(GEOAppStoreAppClip *)v6 isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CuratedCollectionItemAppStoreAppClipViewModel)initWithAppStoreAppClip:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CuratedCollectionItemAppStoreAppClipViewModel;
  v6 = [(CuratedCollectionItemAppStoreAppClipViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appClip, a3);
  }

  return v7;
}

@end