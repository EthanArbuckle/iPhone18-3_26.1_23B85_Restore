@interface MSMessageTemplateLayout
- (BOOL)isEqual:(id)equal;
- (MSMessageTemplateLayout)init;
- (MSMessageTemplateLayout)initWithCoder:(id)coder;
- (NSURL)mediaFileURL;
- (UIImage)image;
- (id)_sanitizedCopy;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setImage:(UIImage *)image;
- (void)setMediaFileURL:(NSURL *)mediaFileURL;
@end

@implementation MSMessageTemplateLayout

- (MSMessageTemplateLayout)init
{
  v11.receiver = self;
  v11.super_class = MSMessageTemplateLayout;
  _init = [(MSMessageLayout *)&v11 _init];
  v3 = _init;
  if (_init)
  {
    caption = _init->_caption;
    _init->_caption = &stru_1F4AC0718;

    subcaption = v3->_subcaption;
    v3->_subcaption = &stru_1F4AC0718;

    trailingCaption = v3->_trailingCaption;
    v3->_trailingCaption = &stru_1F4AC0718;

    trailingSubcaption = v3->_trailingSubcaption;
    v3->_trailingSubcaption = &stru_1F4AC0718;

    imageTitle = v3->_imageTitle;
    v3->_imageTitle = &stru_1F4AC0718;

    imageSubtitle = v3->_imageSubtitle;
    v3->_imageSubtitle = &stru_1F4AC0718;
  }

  return v3;
}

- (MSMessageTemplateLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = MSMessageTemplateLayout;
  _init = [(MSMessageLayout *)&v23 _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"caption"];
    caption = _init->_caption;
    _init->_caption = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subcaption"];
    subcaption = _init->_subcaption;
    _init->_subcaption = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trailingCaption"];
    trailingCaption = _init->_trailingCaption;
    _init->_trailingCaption = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trailingSubcaption"];
    trailingSubcaption = _init->_trailingSubcaption;
    _init->_trailingSubcaption = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageTitle"];
    imageTitle = _init->_imageTitle;
    _init->_imageTitle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageSubitle"];
    imageSubtitle = _init->_imageSubtitle;
    _init->_imageSubtitle = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    mediaType = _init->_mediaType;
    _init->_mediaType = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaData"];
    mediaData = _init->_mediaData;
    _init->_mediaData = v20;
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_caption forKey:@"caption"];
  [coderCopy encodeObject:self->_subcaption forKey:@"subcaption"];
  [coderCopy encodeObject:self->_trailingCaption forKey:@"trailingCaption"];
  [coderCopy encodeObject:self->_trailingSubcaption forKey:@"trailingSubcaption"];
  v4 = self->_mediaData;
  v5 = self->_mediaType;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    image = self->_image;
    if (image)
    {
      __ms_PNGData = [(UIImage *)image __ms_PNGData];

      __ms_UTI = *MEMORY[0x1E6963860];
    }

    else
    {
      mediaFileURL = self->_mediaFileURL;
      if (!mediaFileURL)
      {
        goto LABEL_11;
      }

      __ms_PNGData = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:mediaFileURL options:8 error:0];

      __ms_UTI = [(NSURL *)self->_mediaFileURL __ms_UTI];
    }

    v12 = __ms_UTI;
    v4 = __ms_PNGData;

    v6 = v12;
  }

LABEL_11:
  [coderCopy encodeObject:v6 forKey:@"mediaType"];
  [coderCopy encodeObject:v4 forKey:@"mediaData"];
  [coderCopy encodeObject:self->_imageTitle forKey:@"imageTitle"];
  [coderCopy encodeObject:self->_imageSubtitle forKey:@"imageSubitle"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[MSMessageTemplateLayout allocWithZone:](MSMessageTemplateLayout init];
  v6 = [(NSString *)self->_caption copyWithZone:zone];
  [(MSMessageTemplateLayout *)v5 setCaption:v6];

  v7 = [(NSString *)self->_subcaption copyWithZone:zone];
  [(MSMessageTemplateLayout *)v5 setSubcaption:v7];

  v8 = [(NSString *)self->_trailingCaption copyWithZone:zone];
  [(MSMessageTemplateLayout *)v5 setTrailingCaption:v8];

  v9 = [(NSString *)self->_trailingSubcaption copyWithZone:zone];
  [(MSMessageTemplateLayout *)v5 setTrailingSubcaption:v9];

  [(MSMessageTemplateLayout *)v5 setImage:self->_image];
  v10 = [(NSURL *)self->_mediaFileURL copy];
  [(MSMessageTemplateLayout *)v5 setMediaFileURL:v10];

  v11 = [(NSString *)self->_imageTitle copyWithZone:zone];
  [(MSMessageTemplateLayout *)v5 setImageTitle:v11];

  v12 = [(NSString *)self->_imageSubtitle copyWithZone:zone];
  [(MSMessageTemplateLayout *)v5 setImageSubtitle:v12];

  v13 = [(NSData *)self->_mediaData copyWithZone:zone];
  [(MSMessageTemplateLayout *)v5 setMediaData:v13];

  v14 = [(NSString *)self->_mediaType copyWithZone:zone];
  [(MSMessageTemplateLayout *)v5 setMediaType:v14];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      caption = self->_caption;
      caption = [(MSMessageTemplateLayout *)v5 caption];
      if (caption == caption || [(NSString *)caption isEqualToString:caption])
      {
        subcaption = self->_subcaption;
        subcaption = [(MSMessageTemplateLayout *)v5 subcaption];
        if (subcaption == subcaption || [(NSString *)subcaption isEqualToString:subcaption])
        {
          trailingCaption = self->_trailingCaption;
          trailingCaption = [(MSMessageTemplateLayout *)v5 trailingCaption];
          if (trailingCaption == trailingCaption || [(NSString *)trailingCaption isEqualToString:trailingCaption])
          {
            trailingSubcaption = self->_trailingSubcaption;
            trailingSubcaption = [(MSMessageTemplateLayout *)v5 trailingSubcaption];
            if (trailingSubcaption == trailingSubcaption || [(NSString *)trailingSubcaption isEqualToString:trailingSubcaption])
            {
              imageTitle = self->_imageTitle;
              imageTitle = [(MSMessageTemplateLayout *)v5 imageTitle];
              if (imageTitle == imageTitle || [(NSString *)imageTitle isEqualToString:imageTitle])
              {
                imageSubtitle = self->_imageSubtitle;
                imageSubtitle = [(MSMessageTemplateLayout *)v5 imageSubtitle];
                if (imageSubtitle == imageSubtitle)
                {
                  v18 = 1;
                }

                else
                {
                  v18 = [(NSString *)imageSubtitle isEqualToString:imageSubtitle];
                }
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_caption hash];
  v4 = [(NSString *)self->_subcaption hash]^ v3;
  v5 = [(NSString *)self->_trailingCaption hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_trailingSubcaption hash];
  v7 = [(NSString *)self->_imageTitle hash];
  return v6 ^ v7 ^ [(NSString *)self->_imageSubtitle hash];
}

- (void)setMediaFileURL:(NSURL *)mediaFileURL
{
  v10 = mediaFileURL;
  mediaType = self->_mediaType;
  self->_mediaType = 0;

  mediaData = self->_mediaData;
  self->_mediaData = 0;

  null = [MEMORY[0x1E695DFB0] null];
  v7 = [(NSURL *)v10 isEqual:null];

  v8 = 0;
  if ((v7 & 1) == 0)
  {
    v8 = v10;
  }

  v9 = self->_mediaFileURL;
  self->_mediaFileURL = v8;
}

- (NSURL)mediaFileURL
{
  mediaFileURL = self->_mediaFileURL;
  if (!mediaFileURL)
  {
    if (self->_mediaData && self->_mediaType)
    {
      v4 = +[_MSTempFileManager sharedInstance];
      v5 = [v4 writeTemporaryFileWithData:self->_mediaData type:self->_mediaType];
      v6 = self->_mediaFileURL;
      self->_mediaFileURL = v5;

      mediaFileURL = self->_mediaFileURL;
    }

    else
    {
      mediaFileURL = 0;
    }
  }

  return mediaFileURL;
}

- (void)setImage:(UIImage *)image
{
  v4 = image;
  mediaType = self->_mediaType;
  self->_mediaType = 0;

  mediaData = self->_mediaData;
  self->_mediaData = 0;

  v7 = self->_image;
  self->_image = v4;
}

- (UIImage)image
{
  if (!self->_image)
  {
    if (!self->_mediaFileURL || self->_mediaData && self->_mediaType || ([MEMORY[0x1E695DEF0] dataWithContentsOfURL:? options:? error:?], v5 = objc_claimAutoreleasedReturnValue(), mediaData = self->_mediaData, self->_mediaData = v5, mediaData, -[NSURL __ms_UTI](self->_mediaFileURL, "__ms_UTI"), v7 = objc_claimAutoreleasedReturnValue(), v8 = self->_mediaType, self->_mediaType = v7, v8, !self->_image))
    {
      if (self->_mediaData)
      {
        mediaType = self->_mediaType;
        if (mediaType)
        {
          if (UTTypeConformsTo(mediaType, *MEMORY[0x1E69637F8]))
          {
            v10 = [MEMORY[0x1E69DCAB8] imageWithData:self->_mediaData];
            image = self->_image;
            self->_image = v10;
          }
        }
      }
    }
  }

  v3 = self->_image;

  return v3;
}

- (id)_sanitizedCopy
{
  v2 = [(MSMessageTemplateLayout *)self copy];
  [v2 setCaption:0];
  [v2 setSubcaption:0];
  [v2 setTrailingCaption:0];
  [v2 setTrailingSubcaption:0];
  [v2 setImageTitle:0];
  [v2 setImageSubtitle:0];

  return v2;
}

@end