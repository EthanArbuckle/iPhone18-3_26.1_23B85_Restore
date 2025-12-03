@interface HMPBMetadataCategory
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation HMPBMetadataCategory

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuidStr hash];
  v4 = [(NSString *)self->_catDescription hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_identifier;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  uuidStr = self->_uuidStr;
  if (uuidStr | *(equalCopy + 3))
  {
    if (![(NSString *)uuidStr isEqual:?])
    {
      goto LABEL_10;
    }
  }

  catDescription = self->_catDescription;
  if (catDescription | *(equalCopy + 1))
  {
    if (![(NSString *)catDescription isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_identifier == *(equalCopy + 4))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuidStr copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_catDescription copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_identifier;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuidStr)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_catDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    identifier = self->_identifier;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uuidStr = self->_uuidStr;
  if (uuidStr)
  {
    [dictionary setObject:uuidStr forKey:@"uuidStr"];
  }

  catDescription = self->_catDescription;
  if (catDescription)
  {
    [v4 setObject:catDescription forKey:@"catDescription"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_identifier];
    [v4 setObject:v7 forKey:@"identifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBMetadataCategory;
  v4 = [(HMPBMetadataCategory *)&v8 description];
  dictionaryRepresentation = [(HMPBMetadataCategory *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end