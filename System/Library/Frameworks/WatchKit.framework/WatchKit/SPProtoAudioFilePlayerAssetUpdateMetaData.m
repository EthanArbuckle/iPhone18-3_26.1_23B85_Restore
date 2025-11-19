@interface SPProtoAudioFilePlayerAssetUpdateMetaData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sockPuppetMessage;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoAudioFilePlayerAssetUpdateMetaData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFilePlayerAssetUpdateMetaData;
  v4 = [(SPProtoAudioFilePlayerAssetUpdateMetaData *)&v8 description];
  v5 = [(SPProtoAudioFilePlayerAssetUpdateMetaData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  uRL = self->_uRL;
  if (uRL)
  {
    [v4 setObject:uRL forKey:@"URL"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
    [v4 setObject:v7 forKey:@"duration"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  albumTitle = self->_albumTitle;
  if (albumTitle)
  {
    [v4 setObject:albumTitle forKey:@"albumTitle"];
  }

  artist = self->_artist;
  if (artist)
  {
    [v4 setObject:artist forKey:@"artist"];
  }

  sandboxExtensionToken = self->_sandboxExtensionToken;
  if (sandboxExtensionToken)
  {
    [v4 setObject:sandboxExtensionToken forKey:@"sandboxExtensionToken"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v8 = v4;
  PBDataWriterWriteStringField();
  if (self->_uRL)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }

  v7 = v8;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }

  if (self->_albumTitle)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }

  if (self->_artist)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }

  if (self->_sandboxExtensionToken)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setIdentifier:self->_identifier];
  if (self->_uRL)
  {
    [v5 setURL:?];
  }

  v4 = v5;
  if (*&self->_has)
  {
    *(v5 + 1) = *&self->_duration;
    *(v5 + 64) |= 1u;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    v4 = v5;
  }

  if (self->_albumTitle)
  {
    [v5 setAlbumTitle:?];
    v4 = v5;
  }

  if (self->_artist)
  {
    [v5 setArtist:?];
    v4 = v5;
  }

  if (self->_sandboxExtensionToken)
  {
    [v5 setSandboxExtensionToken:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_uRL copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 64) |= 1u;
  }

  v10 = [(NSString *)self->_title copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_albumTitle copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_artist copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  v16 = [(NSString *)self->_sandboxExtensionToken copyWithZone:a3];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  uRL = self->_uRL;
  if (uRL | *(v4 + 7))
  {
    if (![(NSString *)uRL isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v7 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_duration != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  title = self->_title;
  if (title | *(v4 + 6) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_19;
  }

  albumTitle = self->_albumTitle;
  if (albumTitle | *(v4 + 2))
  {
    if (![(NSString *)albumTitle isEqual:?])
    {
      goto LABEL_19;
    }
  }

  artist = self->_artist;
  if (artist | *(v4 + 3))
  {
    if (![(NSString *)artist isEqual:?])
    {
      goto LABEL_19;
    }
  }

  sandboxExtensionToken = self->_sandboxExtensionToken;
  if (sandboxExtensionToken | *(v4 + 5))
  {
    v12 = [(NSString *)sandboxExtensionToken isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_uRL hash];
  if (*&self->_has)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v5.i64 = floor(duration + 0.5);
    v9 = (duration - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = v4 ^ v3 ^ v7 ^ [(NSString *)self->_title hash];
  v12 = [(NSString *)self->_albumTitle hash];
  v13 = v12 ^ [(NSString *)self->_artist hash];
  return v11 ^ v13 ^ [(NSString *)self->_sandboxExtensionToken hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(SPProtoAudioFilePlayerAssetUpdateMetaData *)self setIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 7))
  {
    [(SPProtoAudioFilePlayerAssetUpdateMetaData *)self setURL:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_duration = v4[1];
    *&self->_has |= 1u;
  }

  if (*(v4 + 6))
  {
    [(SPProtoAudioFilePlayerAssetUpdateMetaData *)self setTitle:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(SPProtoAudioFilePlayerAssetUpdateMetaData *)self setAlbumTitle:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(SPProtoAudioFilePlayerAssetUpdateMetaData *)self setArtist:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(SPProtoAudioFilePlayerAssetUpdateMetaData *)self setSandboxExtensionToken:?];
    v4 = v5;
  }
}

- (id)sockPuppetMessage
{
  v3 = objc_alloc_init(SPProtoAudioFilePlayerAsset);
  [(SPProtoAudioFilePlayerAsset *)v3 setUpsertWithMetaData:self];
  v4 = [(SPProtoAudioFilePlayerAsset *)v3 sockPuppetMessage];

  return v4;
}

@end