@interface MSMessageTemplateLayout
- (BOOL)isEqual:(id)a3;
- (MSMessageTemplateLayout)init;
- (MSMessageTemplateLayout)initWithCoder:(id)a3;
- (NSURL)mediaFileURL;
- (UIImage)image;
- (id)_sanitizedCopy;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setImage:(UIImage *)image;
- (void)setMediaFileURL:(NSURL *)mediaFileURL;
@end

@implementation MSMessageTemplateLayout

- (MSMessageTemplateLayout)init
{
  v11.receiver = self;
  v11.super_class = MSMessageTemplateLayout;
  v2 = [(MSMessageLayout *)&v11 _init];
  v3 = v2;
  if (v2)
  {
    caption = v2->_caption;
    v2->_caption = &stru_1F4AC0718;

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

- (MSMessageTemplateLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MSMessageTemplateLayout;
  v5 = [(MSMessageLayout *)&v23 _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"caption"];
    caption = v5->_caption;
    v5->_caption = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subcaption"];
    subcaption = v5->_subcaption;
    v5->_subcaption = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trailingCaption"];
    trailingCaption = v5->_trailingCaption;
    v5->_trailingCaption = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trailingSubcaption"];
    trailingSubcaption = v5->_trailingSubcaption;
    v5->_trailingSubcaption = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageTitle"];
    imageTitle = v5->_imageTitle;
    v5->_imageTitle = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageSubitle"];
    imageSubtitle = v5->_imageSubtitle;
    v5->_imageSubtitle = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    mediaType = v5->_mediaType;
    v5->_mediaType = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaData"];
    mediaData = v5->_mediaData;
    v5->_mediaData = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  [v13 encodeObject:self->_caption forKey:@"caption"];
  [v13 encodeObject:self->_subcaption forKey:@"subcaption"];
  [v13 encodeObject:self->_trailingCaption forKey:@"trailingCaption"];
  [v13 encodeObject:self->_trailingSubcaption forKey:@"trailingSubcaption"];
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
      v9 = [(UIImage *)image __ms_PNGData];

      v10 = *MEMORY[0x1E6963860];
    }

    else
    {
      mediaFileURL = self->_mediaFileURL;
      if (!mediaFileURL)
      {
        goto LABEL_11;
      }

      v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:mediaFileURL options:8 error:0];

      v10 = [(NSURL *)self->_mediaFileURL __ms_UTI];
    }

    v12 = v10;
    v4 = v9;

    v6 = v12;
  }

LABEL_11:
  [v13 encodeObject:v6 forKey:@"mediaType"];
  [v13 encodeObject:v4 forKey:@"mediaData"];
  [v13 encodeObject:self->_imageTitle forKey:@"imageTitle"];
  [v13 encodeObject:self->_imageSubtitle forKey:@"imageSubitle"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[MSMessageTemplateLayout allocWithZone:](MSMessageTemplateLayout init];
  v6 = [(NSString *)self->_caption copyWithZone:a3];
  [(MSMessageTemplateLayout *)v5 setCaption:v6];

  v7 = [(NSString *)self->_subcaption copyWithZone:a3];
  [(MSMessageTemplateLayout *)v5 setSubcaption:v7];

  v8 = [(NSString *)self->_trailingCaption copyWithZone:a3];
  [(MSMessageTemplateLayout *)v5 setTrailingCaption:v8];

  v9 = [(NSString *)self->_trailingSubcaption copyWithZone:a3];
  [(MSMessageTemplateLayout *)v5 setTrailingSubcaption:v9];

  [(MSMessageTemplateLayout *)v5 setImage:self->_image];
  v10 = [(NSURL *)self->_mediaFileURL copy];
  [(MSMessageTemplateLayout *)v5 setMediaFileURL:v10];

  v11 = [(NSString *)self->_imageTitle copyWithZone:a3];
  [(MSMessageTemplateLayout *)v5 setImageTitle:v11];

  v12 = [(NSString *)self->_imageSubtitle copyWithZone:a3];
  [(MSMessageTemplateLayout *)v5 setImageSubtitle:v12];

  v13 = [(NSData *)self->_mediaData copyWithZone:a3];
  [(MSMessageTemplateLayout *)v5 setMediaData:v13];

  v14 = [(NSString *)self->_mediaType copyWithZone:a3];
  [(MSMessageTemplateLayout *)v5 setMediaType:v14];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      caption = self->_caption;
      v7 = [(MSMessageTemplateLayout *)v5 caption];
      if (caption == v7 || [(NSString *)caption isEqualToString:v7])
      {
        subcaption = self->_subcaption;
        v9 = [(MSMessageTemplateLayout *)v5 subcaption];
        if (subcaption == v9 || [(NSString *)subcaption isEqualToString:v9])
        {
          trailingCaption = self->_trailingCaption;
          v11 = [(MSMessageTemplateLayout *)v5 trailingCaption];
          if (trailingCaption == v11 || [(NSString *)trailingCaption isEqualToString:v11])
          {
            trailingSubcaption = self->_trailingSubcaption;
            v13 = [(MSMessageTemplateLayout *)v5 trailingSubcaption];
            if (trailingSubcaption == v13 || [(NSString *)trailingSubcaption isEqualToString:v13])
            {
              imageTitle = self->_imageTitle;
              v15 = [(MSMessageTemplateLayout *)v5 imageTitle];
              if (imageTitle == v15 || [(NSString *)imageTitle isEqualToString:v15])
              {
                imageSubtitle = self->_imageSubtitle;
                v17 = [(MSMessageTemplateLayout *)v5 imageSubtitle];
                if (imageSubtitle == v17)
                {
                  v18 = 1;
                }

                else
                {
                  v18 = [(NSString *)imageSubtitle isEqualToString:v17];
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

  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [(NSURL *)v10 isEqual:v6];

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