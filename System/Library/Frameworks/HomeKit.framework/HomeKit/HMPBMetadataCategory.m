@interface HMPBMetadataCategory
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  uuidStr = self->_uuidStr;
  if (uuidStr | *(v4 + 3))
  {
    if (![(NSString *)uuidStr isEqual:?])
    {
      goto LABEL_10;
    }
  }

  catDescription = self->_catDescription;
  if (catDescription | *(v4 + 1))
  {
    if (![(NSString *)catDescription isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_identifier == *(v4 + 4))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuidStr copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_catDescription copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_identifier;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uuidStr)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_catDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    identifier = self->_identifier;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uuidStr = self->_uuidStr;
  if (uuidStr)
  {
    [v3 setObject:uuidStr forKey:@"uuidStr"];
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
  v5 = [(HMPBMetadataCategory *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end