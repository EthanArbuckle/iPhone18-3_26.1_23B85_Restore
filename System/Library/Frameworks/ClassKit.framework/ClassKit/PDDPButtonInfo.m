@interface PDDPButtonInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPButtonInfo

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPButtonInfo;
  v3 = [(PDDPButtonInfo *)&v7 description];
  v4 = [(PDDPButtonInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_url)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title)
  {
    [v4 setTitle:?];
    v4 = v5;
  }

  if (self->_url)
  {
    [v5 setUrl:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_url copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | v4[1])) || -[NSString isEqual:](title, "isEqual:")))
  {
    url = self->_url;
    if (url | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(PDDPButtonInfo *)self setTitle:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(PDDPButtonInfo *)self setUrl:?];
    v4 = v5;
  }
}

@end