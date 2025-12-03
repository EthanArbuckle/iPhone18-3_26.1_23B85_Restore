@interface CTLazuliChatBotCardMedia
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotCardMedia:(id)media;
- (CTLazuliChatBotCardMedia)initWithCoder:(id)coder;
- (CTLazuliChatBotCardMedia)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotCardMedia

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  mediaUrl = [(CTLazuliChatBotCardMedia *)self mediaUrl];
  [v3 appendFormat:@", mediaUrl = %@", mediaUrl];

  mediaContentType = [(CTLazuliChatBotCardMedia *)self mediaContentType];
  [v3 appendFormat:@", mediaContentType = %@", mediaContentType];

  mediaFileSize = [(CTLazuliChatBotCardMedia *)self mediaFileSize];
  [v3 appendFormat:@", mediaFileSize = %@", mediaFileSize];

  thumbnailUrl = [(CTLazuliChatBotCardMedia *)self thumbnailUrl];
  [v3 appendFormat:@", thumbnailUrl = %@", thumbnailUrl];

  thumbnailContentType = [(CTLazuliChatBotCardMedia *)self thumbnailContentType];
  [v3 appendFormat:@", thumbnailContentType = %@", thumbnailContentType];

  thumbnailFileSize = [(CTLazuliChatBotCardMedia *)self thumbnailFileSize];
  [v3 appendFormat:@", thumbnailFileSize = %@", thumbnailFileSize];

  height = [(CTLazuliChatBotCardMedia *)self height];
  height2 = [(CTLazuliChatBotCardMedia *)self height];
  [v3 appendFormat:@", height = [%ld - %s]", height, print_CTLazuliChatBotCardMediaHeightType(&height2)];
  contentDescription = [(CTLazuliChatBotCardMedia *)self contentDescription];
  [v3 appendFormat:@", contentDescription = %@", contentDescription];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCardMedia:(id)media
{
  mediaCopy = media;
  mediaUrl = [(CTLazuliChatBotCardMedia *)self mediaUrl];
  mediaUrl2 = [mediaCopy mediaUrl];
  if (mediaUrl != mediaUrl2)
  {
    mediaUrl3 = [(CTLazuliChatBotCardMedia *)self mediaUrl];
    mediaUrl4 = [mediaCopy mediaUrl];
    if (![mediaUrl3 isEqual:?])
    {
      v7 = 0;
LABEL_35:

      goto LABEL_36;
    }
  }

  mediaContentType = [(CTLazuliChatBotCardMedia *)self mediaContentType];
  mediaContentType2 = [mediaCopy mediaContentType];
  if (mediaContentType == mediaContentType2 || (-[CTLazuliChatBotCardMedia mediaContentType](self, "mediaContentType"), v47 = objc_claimAutoreleasedReturnValue(), [mediaCopy mediaContentType], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "isEqualToString:")))
  {
    mediaFileSize = [(CTLazuliChatBotCardMedia *)self mediaFileSize];
    mediaFileSize2 = [mediaCopy mediaFileSize];
    if (mediaFileSize != mediaFileSize2)
    {
      mediaFileSize3 = [(CTLazuliChatBotCardMedia *)self mediaFileSize];
      longValue = [mediaFileSize3 longValue];
      mediaFileSize4 = [mediaCopy mediaFileSize];
      if (longValue != [mediaFileSize4 longValue])
      {
        v7 = 0;
        v12 = mediaFileSize4;
        v13 = mediaFileSize2;
LABEL_31:

LABEL_32:
        if (mediaContentType == mediaContentType2)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    thumbnailUrl = [(CTLazuliChatBotCardMedia *)self thumbnailUrl];
    thumbnailUrl2 = [mediaCopy thumbnailUrl];
    if (thumbnailUrl != thumbnailUrl2)
    {
      thumbnailUrl3 = [(CTLazuliChatBotCardMedia *)self thumbnailUrl];
      thumbnailUrl4 = [mediaCopy thumbnailUrl];
      if (![thumbnailUrl3 isEqual:?])
      {
        v7 = 0;
        v15 = thumbnailUrl;
LABEL_29:

LABEL_30:
        v13 = mediaFileSize2;
        v12 = mediaFileSize4;
        if (mediaFileSize == mediaFileSize2)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    v37 = mediaFileSize;
    thumbnailContentType = [(CTLazuliChatBotCardMedia *)self thumbnailContentType];
    thumbnailContentType2 = [mediaCopy thumbnailContentType];
    if (thumbnailContentType != thumbnailContentType2)
    {
      thumbnailContentType3 = [(CTLazuliChatBotCardMedia *)self thumbnailContentType];
      thumbnailContentType4 = [mediaCopy thumbnailContentType];
      if (![thumbnailContentType3 isEqualToString:?])
      {
        v16 = thumbnailUrl2;
        v7 = 0;
        v17 = thumbnailContentType;
        v18 = thumbnailContentType2;
LABEL_27:

LABEL_28:
        v15 = thumbnailUrl;
        thumbnailUrl2 = v16;
        v25 = thumbnailUrl == v16;
        mediaFileSize = v37;
        if (v25)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    thumbnailFileSize = [(CTLazuliChatBotCardMedia *)self thumbnailFileSize];
    thumbnailFileSize2 = [mediaCopy thumbnailFileSize];
    if (thumbnailFileSize == thumbnailFileSize2 || (-[CTLazuliChatBotCardMedia thumbnailFileSize](self, "thumbnailFileSize"), v31 = objc_claimAutoreleasedReturnValue(), v19 = [v31 longValue], objc_msgSend(mediaCopy, "thumbnailFileSize"), v30 = objc_claimAutoreleasedReturnValue(), v19 == objc_msgSend(v30, "longValue")))
    {
      height = [(CTLazuliChatBotCardMedia *)self height];
      if (height == [mediaCopy height])
      {
        contentDescription = [(CTLazuliChatBotCardMedia *)self contentDescription];
        contentDescription2 = [mediaCopy contentDescription];
        if (contentDescription == contentDescription2)
        {
          v16 = thumbnailUrl2;

          v7 = 1;
        }

        else
        {
          v28 = contentDescription2;
          contentDescription3 = [(CTLazuliChatBotCardMedia *)self contentDescription];
          contentDescription4 = [mediaCopy contentDescription];
          v7 = [contentDescription3 isEqualToString:contentDescription4];
          v16 = thumbnailUrl2;
        }
      }

      else
      {
        v16 = thumbnailUrl2;
        v7 = 0;
      }

      v20 = thumbnailFileSize;
      v21 = thumbnailFileSize2;
      if (thumbnailFileSize == thumbnailFileSize2)
      {
LABEL_26:

        v17 = thumbnailContentType;
        v18 = thumbnailContentType2;
        if (thumbnailContentType == thumbnailContentType2)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v16 = thumbnailUrl2;
      v7 = 0;
      v20 = thumbnailFileSize;
      v21 = thumbnailFileSize2;
    }

    goto LABEL_26;
  }

  v7 = 0;
LABEL_33:

LABEL_34:
  if (mediaUrl != mediaUrl2)
  {
    goto LABEL_35;
  }

LABEL_36:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCardMedia *)self isEqualToCTLazuliChatBotCardMedia:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotCardMedia allocWithZone:?];
  v6 = [(NSURL *)self->_mediaUrl copyWithZone:zone];
  [(CTLazuliChatBotCardMedia *)v5 setMediaUrl:v6];

  v7 = [(NSString *)self->_mediaContentType copyWithZone:zone];
  [(CTLazuliChatBotCardMedia *)v5 setMediaContentType:v7];

  v8 = [(NSNumber *)self->_mediaFileSize copyWithZone:zone];
  [(CTLazuliChatBotCardMedia *)v5 setMediaFileSize:v8];

  v9 = [(NSURL *)self->_thumbnailUrl copyWithZone:zone];
  [(CTLazuliChatBotCardMedia *)v5 setThumbnailUrl:v9];

  v10 = [(NSString *)self->_thumbnailContentType copyWithZone:zone];
  [(CTLazuliChatBotCardMedia *)v5 setThumbnailContentType:v10];

  v11 = [(NSNumber *)self->_thumbnailFileSize copyWithZone:zone];
  [(CTLazuliChatBotCardMedia *)v5 setThumbnailFileSize:v11];

  [(CTLazuliChatBotCardMedia *)v5 setHeight:self->_height];
  v12 = [(NSString *)self->_contentDescription copyWithZone:zone];
  [(CTLazuliChatBotCardMedia *)v5 setContentDescription:v12];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_mediaUrl forKey:@"kMediaUrlKey"];
  [coderCopy encodeObject:self->_mediaContentType forKey:@"kMediaContentTypeKey"];
  [coderCopy encodeObject:self->_mediaFileSize forKey:@"kMediaFileSizeKey"];
  [coderCopy encodeObject:self->_thumbnailUrl forKey:@"kThumbnailUrlKey"];
  [coderCopy encodeObject:self->_thumbnailContentType forKey:@"kThumbnailContentTypeKey"];
  [coderCopy encodeObject:self->_thumbnailFileSize forKey:@"kThumbnailFileSizeKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_height];
  [coderCopy encodeObject:v4 forKey:@"kHeightKey"];

  [coderCopy encodeObject:self->_contentDescription forKey:@"kContentDescriptionKey"];
}

- (CTLazuliChatBotCardMedia)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = CTLazuliChatBotCardMedia;
  v5 = [(CTLazuliChatBotCardMedia *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMediaUrlKey"];
    mediaUrl = v5->_mediaUrl;
    v5->_mediaUrl = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMediaContentTypeKey"];
    mediaContentType = v5->_mediaContentType;
    v5->_mediaContentType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMediaFileSizeKey"];
    mediaFileSize = v5->_mediaFileSize;
    v5->_mediaFileSize = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kThumbnailUrlKey"];
    thumbnailUrl = v5->_thumbnailUrl;
    v5->_thumbnailUrl = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kThumbnailContentTypeKey"];
    thumbnailContentType = v5->_thumbnailContentType;
    v5->_thumbnailContentType = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kThumbnailFileSizeKey"];
    thumbnailFileSize = v5->_thumbnailFileSize;
    v5->_thumbnailFileSize = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kHeightKey"];
    v5->_height = [v18 longValue];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kContentDescriptionKey"];
    contentDescription = v5->_contentDescription;
    v5->_contentDescription = v19;
  }

  return v5;
}

- (CTLazuliChatBotCardMedia)initWithReflection:(const void *)reflection
{
  v40.receiver = self;
  v40.super_class = CTLazuliChatBotCardMedia;
  v4 = [(CTLazuliChatBotCardMedia *)&v40 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(reflection + 23);
    v8 = *reflection;
    defaultCStringEncoding = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v7 >= 0)
    {
      reflectionCopy = reflection;
    }

    else
    {
      reflectionCopy = v8;
    }

    v11 = [v6 stringWithCString:reflectionCopy encoding:defaultCStringEncoding];
    v12 = [v5 URLWithString:v11];
    mediaUrl = v4->_mediaUrl;
    v4->_mediaUrl = v12;

    if (*(reflection + 47) >= 0)
    {
      v14 = reflection + 24;
    }

    else
    {
      v14 = *(reflection + 3);
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
    mediaContentType = v4->_mediaContentType;
    v4->_mediaContentType = v15;

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(reflection + 6)];
    mediaFileSize = v4->_mediaFileSize;
    v4->_mediaFileSize = v17;

    if (*(reflection + 80) == 1)
    {
      v19 = *(reflection + 7);
      v20 = MEMORY[0x1E695DFF8];
      v21 = MEMORY[0x1E696AEC0];
      v22 = *(reflection + 79);
      defaultCStringEncoding2 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
      if (v22 >= 0)
      {
        v24 = reflection + 56;
      }

      else
      {
        v24 = v19;
      }

      v25 = [v21 stringWithCString:v24 encoding:defaultCStringEncoding2];
      v26 = [v20 URLWithString:v25];
      thumbnailUrl = v4->_thumbnailUrl;
      v4->_thumbnailUrl = v26;
    }

    else
    {
      v25 = v4->_thumbnailUrl;
      v4->_thumbnailUrl = 0;
    }

    if (*(reflection + 112) == 1)
    {
      if (*(reflection + 111) >= 0)
      {
        v28 = reflection + 88;
      }

      else
      {
        v28 = *(reflection + 11);
      }

      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
    }

    else
    {
      v29 = 0;
    }

    thumbnailContentType = v4->_thumbnailContentType;
    v4->_thumbnailContentType = v29;

    if (*(reflection + 128) == 1)
    {
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(reflection + 15)];
    }

    else
    {
      v31 = 0;
    }

    thumbnailFileSize = v4->_thumbnailFileSize;
    v4->_thumbnailFileSize = v31;

    v4->_height = encode_CTLazuliChatBotCardMediaHeightType(reflection + 34);
    if (*(reflection + 168) == 1)
    {
      v35 = *(reflection + 18);
      v34 = reflection + 144;
      v33 = v35;
      if (v34[23] >= 0)
      {
        v36 = v34;
      }

      else
      {
        v36 = v33;
      }

      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v36];
    }

    else
    {
      v37 = 0;
    }

    contentDescription = v4->_contentDescription;
    v4->_contentDescription = v37;
  }

  return v4;
}

@end