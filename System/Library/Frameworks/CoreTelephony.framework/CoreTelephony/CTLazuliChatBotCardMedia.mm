@interface CTLazuliChatBotCardMedia
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotCardMedia:(id)a3;
- (CTLazuliChatBotCardMedia)initWithCoder:(id)a3;
- (CTLazuliChatBotCardMedia)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotCardMedia

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotCardMedia *)self mediaUrl];
  [v3 appendFormat:@", mediaUrl = %@", v4];

  v5 = [(CTLazuliChatBotCardMedia *)self mediaContentType];
  [v3 appendFormat:@", mediaContentType = %@", v5];

  v6 = [(CTLazuliChatBotCardMedia *)self mediaFileSize];
  [v3 appendFormat:@", mediaFileSize = %@", v6];

  v7 = [(CTLazuliChatBotCardMedia *)self thumbnailUrl];
  [v3 appendFormat:@", thumbnailUrl = %@", v7];

  v8 = [(CTLazuliChatBotCardMedia *)self thumbnailContentType];
  [v3 appendFormat:@", thumbnailContentType = %@", v8];

  v9 = [(CTLazuliChatBotCardMedia *)self thumbnailFileSize];
  [v3 appendFormat:@", thumbnailFileSize = %@", v9];

  v10 = [(CTLazuliChatBotCardMedia *)self height];
  v13 = [(CTLazuliChatBotCardMedia *)self height];
  [v3 appendFormat:@", height = [%ld - %s]", v10, print_CTLazuliChatBotCardMediaHeightType(&v13)];
  v11 = [(CTLazuliChatBotCardMedia *)self contentDescription];
  [v3 appendFormat:@", contentDescription = %@", v11];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCardMedia:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotCardMedia *)self mediaUrl];
  v6 = [v4 mediaUrl];
  if (v5 != v6)
  {
    v48 = [(CTLazuliChatBotCardMedia *)self mediaUrl];
    v46 = [v4 mediaUrl];
    if (![v48 isEqual:?])
    {
      v7 = 0;
LABEL_35:

      goto LABEL_36;
    }
  }

  v8 = [(CTLazuliChatBotCardMedia *)self mediaContentType];
  v9 = [v4 mediaContentType];
  if (v8 == v9 || (-[CTLazuliChatBotCardMedia mediaContentType](self, "mediaContentType"), v47 = objc_claimAutoreleasedReturnValue(), [v4 mediaContentType], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "isEqualToString:")))
  {
    v10 = [(CTLazuliChatBotCardMedia *)self mediaFileSize];
    v44 = [v4 mediaFileSize];
    if (v10 != v44)
    {
      v39 = [(CTLazuliChatBotCardMedia *)self mediaFileSize];
      v11 = [v39 longValue];
      v42 = [v4 mediaFileSize];
      if (v11 != [v42 longValue])
      {
        v7 = 0;
        v12 = v42;
        v13 = v44;
LABEL_31:

LABEL_32:
        if (v8 == v9)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    v45 = [(CTLazuliChatBotCardMedia *)self thumbnailUrl];
    v14 = [v4 thumbnailUrl];
    if (v45 != v14)
    {
      v40 = [(CTLazuliChatBotCardMedia *)self thumbnailUrl];
      v34 = [v4 thumbnailUrl];
      if (![v40 isEqual:?])
      {
        v7 = 0;
        v15 = v45;
LABEL_29:

LABEL_30:
        v13 = v44;
        v12 = v42;
        if (v10 == v44)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    v37 = v10;
    v41 = [(CTLazuliChatBotCardMedia *)self thumbnailContentType];
    v36 = [v4 thumbnailContentType];
    if (v41 != v36)
    {
      v35 = [(CTLazuliChatBotCardMedia *)self thumbnailContentType];
      v32 = [v4 thumbnailContentType];
      if (![v35 isEqualToString:?])
      {
        v16 = v14;
        v7 = 0;
        v17 = v41;
        v18 = v36;
LABEL_27:

LABEL_28:
        v15 = v45;
        v14 = v16;
        v25 = v45 == v16;
        v10 = v37;
        if (v25)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    v38 = [(CTLazuliChatBotCardMedia *)self thumbnailFileSize];
    v33 = [v4 thumbnailFileSize];
    if (v38 == v33 || (-[CTLazuliChatBotCardMedia thumbnailFileSize](self, "thumbnailFileSize"), v31 = objc_claimAutoreleasedReturnValue(), v19 = [v31 longValue], objc_msgSend(v4, "thumbnailFileSize"), v30 = objc_claimAutoreleasedReturnValue(), v19 == objc_msgSend(v30, "longValue")))
    {
      v22 = [(CTLazuliChatBotCardMedia *)self height];
      if (v22 == [v4 height])
      {
        v29 = [(CTLazuliChatBotCardMedia *)self contentDescription];
        v23 = [v4 contentDescription];
        if (v29 == v23)
        {
          v16 = v14;

          v7 = 1;
        }

        else
        {
          v28 = v23;
          v27 = [(CTLazuliChatBotCardMedia *)self contentDescription];
          v24 = [v4 contentDescription];
          v7 = [v27 isEqualToString:v24];
          v16 = v14;
        }
      }

      else
      {
        v16 = v14;
        v7 = 0;
      }

      v20 = v38;
      v21 = v33;
      if (v38 == v33)
      {
LABEL_26:

        v17 = v41;
        v18 = v36;
        if (v41 == v36)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v16 = v14;
      v7 = 0;
      v20 = v38;
      v21 = v33;
    }

    goto LABEL_26;
  }

  v7 = 0;
LABEL_33:

LABEL_34:
  if (v5 != v6)
  {
    goto LABEL_35;
  }

LABEL_36:

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCardMedia *)self isEqualToCTLazuliChatBotCardMedia:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotCardMedia allocWithZone:?];
  v6 = [(NSURL *)self->_mediaUrl copyWithZone:a3];
  [(CTLazuliChatBotCardMedia *)v5 setMediaUrl:v6];

  v7 = [(NSString *)self->_mediaContentType copyWithZone:a3];
  [(CTLazuliChatBotCardMedia *)v5 setMediaContentType:v7];

  v8 = [(NSNumber *)self->_mediaFileSize copyWithZone:a3];
  [(CTLazuliChatBotCardMedia *)v5 setMediaFileSize:v8];

  v9 = [(NSURL *)self->_thumbnailUrl copyWithZone:a3];
  [(CTLazuliChatBotCardMedia *)v5 setThumbnailUrl:v9];

  v10 = [(NSString *)self->_thumbnailContentType copyWithZone:a3];
  [(CTLazuliChatBotCardMedia *)v5 setThumbnailContentType:v10];

  v11 = [(NSNumber *)self->_thumbnailFileSize copyWithZone:a3];
  [(CTLazuliChatBotCardMedia *)v5 setThumbnailFileSize:v11];

  [(CTLazuliChatBotCardMedia *)v5 setHeight:self->_height];
  v12 = [(NSString *)self->_contentDescription copyWithZone:a3];
  [(CTLazuliChatBotCardMedia *)v5 setContentDescription:v12];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_mediaUrl forKey:@"kMediaUrlKey"];
  [v5 encodeObject:self->_mediaContentType forKey:@"kMediaContentTypeKey"];
  [v5 encodeObject:self->_mediaFileSize forKey:@"kMediaFileSizeKey"];
  [v5 encodeObject:self->_thumbnailUrl forKey:@"kThumbnailUrlKey"];
  [v5 encodeObject:self->_thumbnailContentType forKey:@"kThumbnailContentTypeKey"];
  [v5 encodeObject:self->_thumbnailFileSize forKey:@"kThumbnailFileSizeKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_height];
  [v5 encodeObject:v4 forKey:@"kHeightKey"];

  [v5 encodeObject:self->_contentDescription forKey:@"kContentDescriptionKey"];
}

- (CTLazuliChatBotCardMedia)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CTLazuliChatBotCardMedia;
  v5 = [(CTLazuliChatBotCardMedia *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMediaUrlKey"];
    mediaUrl = v5->_mediaUrl;
    v5->_mediaUrl = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMediaContentTypeKey"];
    mediaContentType = v5->_mediaContentType;
    v5->_mediaContentType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMediaFileSizeKey"];
    mediaFileSize = v5->_mediaFileSize;
    v5->_mediaFileSize = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kThumbnailUrlKey"];
    thumbnailUrl = v5->_thumbnailUrl;
    v5->_thumbnailUrl = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kThumbnailContentTypeKey"];
    thumbnailContentType = v5->_thumbnailContentType;
    v5->_thumbnailContentType = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kThumbnailFileSizeKey"];
    thumbnailFileSize = v5->_thumbnailFileSize;
    v5->_thumbnailFileSize = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kHeightKey"];
    v5->_height = [v18 longValue];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kContentDescriptionKey"];
    contentDescription = v5->_contentDescription;
    v5->_contentDescription = v19;
  }

  return v5;
}

- (CTLazuliChatBotCardMedia)initWithReflection:(const void *)a3
{
  v40.receiver = self;
  v40.super_class = CTLazuliChatBotCardMedia;
  v4 = [(CTLazuliChatBotCardMedia *)&v40 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(a3 + 23);
    v8 = *a3;
    v9 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v7 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = v8;
    }

    v11 = [v6 stringWithCString:v10 encoding:v9];
    v12 = [v5 URLWithString:v11];
    mediaUrl = v4->_mediaUrl;
    v4->_mediaUrl = v12;

    if (*(a3 + 47) >= 0)
    {
      v14 = a3 + 24;
    }

    else
    {
      v14 = *(a3 + 3);
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
    mediaContentType = v4->_mediaContentType;
    v4->_mediaContentType = v15;

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(a3 + 6)];
    mediaFileSize = v4->_mediaFileSize;
    v4->_mediaFileSize = v17;

    if (*(a3 + 80) == 1)
    {
      v19 = *(a3 + 7);
      v20 = MEMORY[0x1E695DFF8];
      v21 = MEMORY[0x1E696AEC0];
      v22 = *(a3 + 79);
      v23 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
      if (v22 >= 0)
      {
        v24 = a3 + 56;
      }

      else
      {
        v24 = v19;
      }

      v25 = [v21 stringWithCString:v24 encoding:v23];
      v26 = [v20 URLWithString:v25];
      thumbnailUrl = v4->_thumbnailUrl;
      v4->_thumbnailUrl = v26;
    }

    else
    {
      v25 = v4->_thumbnailUrl;
      v4->_thumbnailUrl = 0;
    }

    if (*(a3 + 112) == 1)
    {
      if (*(a3 + 111) >= 0)
      {
        v28 = a3 + 88;
      }

      else
      {
        v28 = *(a3 + 11);
      }

      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
    }

    else
    {
      v29 = 0;
    }

    thumbnailContentType = v4->_thumbnailContentType;
    v4->_thumbnailContentType = v29;

    if (*(a3 + 128) == 1)
    {
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(a3 + 15)];
    }

    else
    {
      v31 = 0;
    }

    thumbnailFileSize = v4->_thumbnailFileSize;
    v4->_thumbnailFileSize = v31;

    v4->_height = encode_CTLazuliChatBotCardMediaHeightType(a3 + 34);
    if (*(a3 + 168) == 1)
    {
      v35 = *(a3 + 18);
      v34 = a3 + 144;
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