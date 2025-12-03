@interface ATXMPBCacheAgeAtEngagementTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBCacheAgeAtEngagementTracker

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBCacheAgeAtEngagementTracker;
  v4 = [(ATXMPBCacheAgeAtEngagementTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBCacheAgeAtEngagementTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  cacheName = self->_cacheName;
  if (cacheName)
  {
    [dictionary setObject:cacheName forKey:@"cacheName"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v4 setObject:abGroup forKey:@"abGroup"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_cacheName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_cacheName)
  {
    [toCopy setCacheName:?];
    toCopy = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_cacheName copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_abGroup copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((cacheName = self->_cacheName, !(cacheName | equalCopy[2])) || -[NSString isEqual:](cacheName, "isEqual:")))
  {
    abGroup = self->_abGroup;
    if (abGroup | equalCopy[1])
    {
      v7 = [(NSString *)abGroup isEqual:?];
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
  if (fromCopy[2])
  {
    [(ATXMPBCacheAgeAtEngagementTracker *)self setCacheName:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(ATXMPBCacheAgeAtEngagementTracker *)self setAbGroup:?];
    fromCopy = v5;
  }
}

@end