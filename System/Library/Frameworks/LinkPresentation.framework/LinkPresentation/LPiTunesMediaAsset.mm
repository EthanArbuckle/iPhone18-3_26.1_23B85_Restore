@interface LPiTunesMediaAsset
- (LPFetcher)fetcher;
- (LPiTunesMediaAsset)initWithImageURL:(id)l colors:(id)colors name:(id)name;
- (LPiTunesMediaAsset)initWithName:(id)name curatorID:(id)d;
- (LPiTunesMediaAsset)initWithName:(id)name lyricComponents:(id)components;
- (LPiTunesMediaAsset)initWithVideoURL:(id)l name:(id)name;
- (id)metadata;
@end

@implementation LPiTunesMediaAsset

- (LPiTunesMediaAsset)initWithImageURL:(id)l colors:(id)colors name:(id)name
{
  lCopy = l;
  colorsCopy = colors;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = LPiTunesMediaAsset;
  v12 = [(LPiTunesMediaAsset *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_URL, l);
    objc_storeStrong(&v13->_colors, colors);
    objc_storeStrong(&v13->_name, name);
    v13->_type = 0;
    v14 = v13;
  }

  return v13;
}

- (LPiTunesMediaAsset)initWithVideoURL:(id)l name:(id)name
{
  lCopy = l;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = LPiTunesMediaAsset;
  v9 = [(LPiTunesMediaAsset *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, l);
    objc_storeStrong(&v10->_name, name);
    v10->_type = 1;
    v11 = v10;
  }

  return v10;
}

- (LPiTunesMediaAsset)initWithName:(id)name lyricComponents:(id)components
{
  nameCopy = name;
  componentsCopy = components;
  v13.receiver = self;
  v13.super_class = LPiTunesMediaAsset;
  v9 = [(LPiTunesMediaAsset *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_lyricComponents, components);
    v10->_type = 2;
    v11 = v10;
  }

  return v10;
}

- (LPiTunesMediaAsset)initWithName:(id)name curatorID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v13.receiver = self;
  v13.super_class = LPiTunesMediaAsset;
  v9 = [(LPiTunesMediaAsset *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_curatorID, d);
    v10->_type = 3;
    v11 = v10;
  }

  return v10;
}

- (id)metadata
{
  v3 = objc_alloc_init(LPArtworkMetadata);
  [(LPArtworkMetadata *)v3 setURL:self->_URL];
  [(LPArtworkMetadata *)v3 setColors:self->_colors];

  return v3;
}

- (LPFetcher)fetcher
{
  type = self->_type;
  if (type > 1)
  {
    if (type == 2)
    {
      v2 = objc_alloc_init(LPAppleMusicLyricExcerptFetcher);
      [(LPAppleMusicLyricExcerptFetcher *)v2 setLyricComponents:self->_lyricComponents];
      [(LPFetcher *)v2 setUserData:self];
    }

    else if (type == 3)
    {
      v2 = [[LPiTunesCuratorProfileURLFetcher alloc] initWithCuratorID:self->_curatorID];
      [(LPFetcher *)v2 setUserData:self];
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      v2 = objc_alloc_init(LPMediaAssetFetcher);
      [(LPAppleMusicLyricExcerptFetcher *)v2 setURL:self->_URL];
      [(LPFetcher *)v2 setUserData:self];
    }
  }

  else
  {
    v2 = objc_alloc_init(LPImageFetcher);
    [(LPAppleMusicLyricExcerptFetcher *)v2 setURL:self->_URL];
    [(LPFetcher *)v2 setUserData:self];
    [(LPFetcher *)v2 setResponseClass:objc_opt_class()];
  }

  return v2;
}

@end