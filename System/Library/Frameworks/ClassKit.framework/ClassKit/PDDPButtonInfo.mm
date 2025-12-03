@interface PDDPButtonInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPButtonInfo

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPButtonInfo;
  v3 = [(PDDPButtonInfo *)&v7 description];
  dictionaryRepresentation = [(PDDPButtonInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  url = self->_url;
  if (url)
  {
    [v4 setObject:url forKey:@"url"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_url)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_title)
  {
    [toCopy setTitle:?];
    toCopy = v5;
  }

  if (self->_url)
  {
    [v5 setUrl:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_url copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | equalCopy[1])) || -[NSString isEqual:](title, "isEqual:")))
  {
    url = self->_url;
    if (url | equalCopy[2])
    {
      v7 = [(NSString *)url isEqual:?];
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
    [(PDDPButtonInfo *)self setTitle:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(PDDPButtonInfo *)self setUrl:?];
    fromCopy = v5;
  }
}

@end