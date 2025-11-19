@interface FPSearchableItemVersion
+ (id)stringFromVersion:(id)a3;
+ (id)versionFromString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FPSearchableItemVersion

+ (id)stringFromVersion:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(FPSearchableItemVersion);
    v5 = [v3 contentVersion];
    [(FPSearchableItemVersion *)v4 setContentVersion:v5];

    v6 = [v3 metadataVersion];

    [(FPSearchableItemVersion *)v4 setMetadataVersion:v6];
    v7 = [(FPSearchableItemVersion *)v4 data];
    v8 = [v7 base64EncodedStringWithOptions:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)versionFromString:(id)a3
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  v6 = [[FPSearchableItemVersion alloc] initWithData:v5];
  v7 = [NSFileProviderItemVersion alloc];
  v8 = [(FPSearchableItemVersion *)v6 contentVersion];
  v9 = [(FPSearchableItemVersion *)v6 metadataVersion];
  v10 = [(NSFileProviderItemVersion *)v7 initWithContentVersion:v8 metadataVersion:v9];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = FPSearchableItemVersion;
  v4 = [(FPSearchableItemVersion *)&v8 description];
  v5 = [(FPSearchableItemVersion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  contentVersion = self->_contentVersion;
  if (contentVersion)
  {
    [v3 setObject:contentVersion forKey:@"contentVersion"];
  }

  metadataVersion = self->_metadataVersion;
  if (metadataVersion)
  {
    [v4 setObject:metadataVersion forKey:@"metadataVersion"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_contentVersion)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_metadataVersion)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_contentVersion)
  {
    [v4 setContentVersion:?];
    v4 = v5;
  }

  if (self->_metadataVersion)
  {
    [v5 setMetadataVersion:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_contentVersion copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_metadataVersion copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((contentVersion = self->_contentVersion, !(contentVersion | v4[1])) || -[NSData isEqual:](contentVersion, "isEqual:")))
  {
    metadataVersion = self->_metadataVersion;
    if (metadataVersion | v4[2])
    {
      v7 = [(NSData *)metadataVersion isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(FPSearchableItemVersion *)self setContentVersion:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(FPSearchableItemVersion *)self setMetadataVersion:?];
    v4 = v5;
  }
}

@end