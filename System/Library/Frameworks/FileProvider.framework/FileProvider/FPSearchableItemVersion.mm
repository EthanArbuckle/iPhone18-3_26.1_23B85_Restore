@interface FPSearchableItemVersion
+ (id)stringFromVersion:(id)version;
+ (id)versionFromString:(id)string;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation FPSearchableItemVersion

+ (id)stringFromVersion:(id)version
{
  if (version)
  {
    versionCopy = version;
    v4 = objc_alloc_init(FPSearchableItemVersion);
    contentVersion = [versionCopy contentVersion];
    [(FPSearchableItemVersion *)v4 setContentVersion:contentVersion];

    metadataVersion = [versionCopy metadataVersion];

    [(FPSearchableItemVersion *)v4 setMetadataVersion:metadataVersion];
    data = [(FPSearchableItemVersion *)v4 data];
    v8 = [data base64EncodedStringWithOptions:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)versionFromString:(id)string
{
  v3 = MEMORY[0x1E695DEF0];
  stringCopy = string;
  v5 = [[v3 alloc] initWithBase64EncodedString:stringCopy options:0];

  v6 = [[FPSearchableItemVersion alloc] initWithData:v5];
  v7 = [NSFileProviderItemVersion alloc];
  contentVersion = [(FPSearchableItemVersion *)v6 contentVersion];
  metadataVersion = [(FPSearchableItemVersion *)v6 metadataVersion];
  v10 = [(NSFileProviderItemVersion *)v7 initWithContentVersion:contentVersion metadataVersion:metadataVersion];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = FPSearchableItemVersion;
  v4 = [(FPSearchableItemVersion *)&v8 description];
  dictionaryRepresentation = [(FPSearchableItemVersion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  contentVersion = self->_contentVersion;
  if (contentVersion)
  {
    [dictionary setObject:contentVersion forKey:@"contentVersion"];
  }

  metadataVersion = self->_metadataVersion;
  if (metadataVersion)
  {
    [v4 setObject:metadataVersion forKey:@"metadataVersion"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_contentVersion)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_metadataVersion)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_contentVersion)
  {
    [toCopy setContentVersion:?];
    toCopy = v5;
  }

  if (self->_metadataVersion)
  {
    [v5 setMetadataVersion:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_contentVersion copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_metadataVersion copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((contentVersion = self->_contentVersion, !(contentVersion | equalCopy[1])) || -[NSData isEqual:](contentVersion, "isEqual:")))
  {
    metadataVersion = self->_metadataVersion;
    if (metadataVersion | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(FPSearchableItemVersion *)self setContentVersion:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(FPSearchableItemVersion *)self setMetadataVersion:?];
    fromCopy = v5;
  }
}

@end