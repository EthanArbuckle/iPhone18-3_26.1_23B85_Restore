@interface ATXMPBCacheAgeAtEngagementTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBCacheAgeAtEngagementTracker

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBCacheAgeAtEngagementTracker;
  v4 = [(ATXMPBCacheAgeAtEngagementTracker *)&v8 description];
  v5 = [(ATXMPBCacheAgeAtEngagementTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  cacheName = self->_cacheName;
  if (cacheName)
  {
    [v3 setObject:cacheName forKey:@"cacheName"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v4 setObject:abGroup forKey:@"abGroup"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_cacheName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_cacheName)
  {
    [v4 setCacheName:?];
    v4 = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_cacheName copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_abGroup copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((cacheName = self->_cacheName, !(cacheName | v4[2])) || -[NSString isEqual:](cacheName, "isEqual:")))
  {
    abGroup = self->_abGroup;
    if (abGroup | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(ATXMPBCacheAgeAtEngagementTracker *)self setCacheName:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(ATXMPBCacheAgeAtEngagementTracker *)self setAbGroup:?];
    v4 = v5;
  }
}

@end