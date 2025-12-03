@interface MPStoreArtworkRequestToken
+ (id)tokenWithImageArtworkInfo:(id)info;
+ (id)tokenWithVideoArtworkInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (MPStoreArtworkRequestToken)init;
- (MPStoreArtworkRequestToken)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPStoreArtworkRequestToken

- (id)stringRepresentation
{
  artworkInfoType = self->_artworkInfoType;
  if (!artworkInfoType)
  {
    v3 = 16;
    goto LABEL_5;
  }

  if (artworkInfoType == 1)
  {
    v3 = 24;
LABEL_5:
    stringRepresentation = [*(&self->super.isa + v3) stringRepresentation];
    v5 = [stringRepresentation copy];

    goto LABEL_7;
  }

  v5 = &stru_1F149ECA8;
LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    v4[1] = self->_artworkInfoType;
    objc_storeStrong(v4 + 4, self->_cropStyle);
    objc_storeStrong(v5 + 5, self->_format);
    objc_storeStrong(v5 + 6, self->_sourceEditorialArtworkKind);
    objc_storeStrong(v5 + 7, self->_artworkURL);
    objc_storeStrong(v5 + 2, self->_imageArtworkInfo);
    objc_storeStrong(v5 + 3, self->_videoArtworkInfo);
  }

  return v5;
}

- (MPStoreArtworkRequestToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = MPStoreArtworkRequestToken;
  v5 = [(MPStoreArtworkRequestToken *)&v21 init];
  if (v5)
  {
    v5->_artworkInfoType = [coderCopy decodeIntegerForKey:@"artworkInfoType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cropStyle"];
    cropStyle = v5->_cropStyle;
    v5->_cropStyle = v6;

    if ([coderCopy containsValueForKey:@"format"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"format"];
      format = v5->_format;
      v5->_format = v8;
    }

    if (!v5->_format)
    {
      IsNonUIPlaybackService = MSVCurrentProcessIsNonUIPlaybackService();
      v11 = MEMORY[0x1E69E4268];
      if (!IsNonUIPlaybackService)
      {
        v11 = MEMORY[0x1E69E4260];
      }

      objc_storeStrong(&v5->_format, *v11);
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceEditorialArtworkKind"];
    sourceEditorialArtworkKind = v5->_sourceEditorialArtworkKind;
    v5->_sourceEditorialArtworkKind = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artworkURL"];
    artworkURL = v5->_artworkURL;
    v5->_artworkURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"videoArtwork"];
    videoArtworkInfo = v5->_videoArtworkInfo;
    v5->_videoArtworkInfo = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageArtwork"];
    imageArtworkInfo = v5->_imageArtworkInfo;
    v5->_imageArtworkInfo = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  artworkInfoType = self->_artworkInfoType;
  coderCopy = coder;
  [coderCopy encodeInteger:artworkInfoType forKey:@"artworkInfoType"];
  [coderCopy encodeObject:self->_cropStyle forKey:@"cropStyle"];
  [coderCopy encodeObject:self->_format forKey:@"format"];
  [coderCopy encodeObject:self->_sourceEditorialArtworkKind forKey:@"sourceEditorialArtworkKind"];
  [coderCopy encodeObject:self->_artworkURL forKey:@"artworkURL"];
  [coderCopy encodeObject:self->_videoArtworkInfo forKey:@"videoArtwork"];
  [coderCopy encodeObject:self->_imageArtworkInfo forKey:@"imageArtwork"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_artworkInfoType == v5->_artworkInfoType)
      {
        imageArtworkInfo = v5->_imageArtworkInfo;
        v8 = self->_imageArtworkInfo;
        v9 = v8;
        if (v8 == imageArtworkInfo)
        {
        }

        else
        {
          v10 = [(ICStoreArtworkInfo *)v8 isEqual:imageArtworkInfo];

          if (!v10)
          {
            goto LABEL_20;
          }
        }

        videoArtworkInfo = v6->_videoArtworkInfo;
        v13 = self->_videoArtworkInfo;
        v14 = v13;
        if (v13 == videoArtworkInfo)
        {
        }

        else
        {
          v15 = [(ICStoreVideoArtworkInfo *)v13 isEqual:videoArtworkInfo];

          if (!v15)
          {
            goto LABEL_20;
          }
        }

        cropStyle = v6->_cropStyle;
        v17 = self->_cropStyle;
        v18 = v17;
        if (v17 == cropStyle)
        {
        }

        else
        {
          v19 = [(NSString *)v17 isEqual:cropStyle];

          if (!v19)
          {
            goto LABEL_20;
          }
        }

        format = v6->_format;
        v21 = self->_format;
        v22 = v21;
        if (v21 == format)
        {
        }

        else
        {
          v23 = [(NSString *)v21 isEqual:format];

          if (!v23)
          {
            goto LABEL_20;
          }
        }

        sourceEditorialArtworkKind = self->_sourceEditorialArtworkKind;
        v26 = v6->_sourceEditorialArtworkKind;
        v27 = sourceEditorialArtworkKind;
        v28 = v27;
        if (v27 == v26)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSString *)v27 isEqual:v26];
        }

        goto LABEL_21;
      }

LABEL_20:
      v11 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v11 = 0;
  }

LABEL_22:

  return v11;
}

- (MPStoreArtworkRequestToken)init
{
  v7.receiver = self;
  v7.super_class = MPStoreArtworkRequestToken;
  v2 = [(MPStoreArtworkRequestToken *)&v7 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_cropStyle, *MEMORY[0x1E69E4240]);
    IsNonUIPlaybackService = MSVCurrentProcessIsNonUIPlaybackService();
    v5 = MEMORY[0x1E69E4268];
    if (!IsNonUIPlaybackService)
    {
      v5 = MEMORY[0x1E69E4260];
    }

    objc_storeStrong(&v3->_format, *v5);
  }

  return v3;
}

+ (id)tokenWithVideoArtworkInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    v4 = objc_alloc_init(MPStoreArtworkRequestToken);
    [(MPStoreArtworkRequestToken *)v4 setVideoArtworkInfo:infoCopy];

    [(MPStoreArtworkRequestToken *)v4 setArtworkInfoType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tokenWithImageArtworkInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    v4 = objc_alloc_init(MPStoreArtworkRequestToken);
    [(MPStoreArtworkRequestToken *)v4 setImageArtworkInfo:infoCopy];

    [(MPStoreArtworkRequestToken *)v4 setArtworkInfoType:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end