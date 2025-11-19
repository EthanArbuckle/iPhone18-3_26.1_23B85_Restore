@interface LiveLookupIcon
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFormat:(id)a3;
- (int)format;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsFormat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNSPECIFIED"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"HEIC"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = LiveLookupIcon;
  v3 = [(LiveLookupIcon *)&v7 description];
  v4 = [(LiveLookupIcon *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    format = self->_format;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_image)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_format;
    *(v4 + 24) |= 1u;
  }

  if (self->_image)
  {
    v5 = v4;
    [v4 setImage:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 2) = self->_format;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_image copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_format != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  image = self->_image;
  if (image | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    self->_format = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(LiveLookupIcon *)self setImage:?];
    v4 = v5;
  }
}

@end