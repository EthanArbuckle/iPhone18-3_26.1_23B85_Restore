@interface LiveLookupIcon
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFormat:(id)format;
- (int)format;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation LiveLookupIcon

- (int)format
{
  if (*&self->_has)
  {
    return self->_format;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsFormat:(id)format
{
  formatCopy = format;
  if ([formatCopy isEqualToString:@"UNSPECIFIED"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [formatCopy isEqualToString:@"HEIC"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = LiveLookupIcon;
  v3 = [(LiveLookupIcon *)&v7 description];
  dictionaryRepresentation = [(LiveLookupIcon *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    format = self->_format;
    if (format)
    {
      if (format == 1)
      {
        v5 = @"HEIC";
      }

      else
      {
        v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_format];
      }
    }

    else
    {
      v5 = @"UNSPECIFIED";
    }

    [v3 setObject:v5 forKey:@"format"];
  }

  image = self->_image;
  if (image)
  {
    [v3 setObject:image forKey:@"image"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    format = self->_format;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_image)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_format;
    *(toCopy + 24) |= 1u;
  }

  if (self->_image)
  {
    v5 = toCopy;
    [toCopy setImage:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 2) = self->_format;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_image copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_format != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  image = self->_image;
  if (image | *(equalCopy + 2))
  {
    v7 = [(NSData *)image isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_format;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_image hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    self->_format = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(LiveLookupIcon *)self setImage:?];
    fromCopy = v5;
  }
}

@end