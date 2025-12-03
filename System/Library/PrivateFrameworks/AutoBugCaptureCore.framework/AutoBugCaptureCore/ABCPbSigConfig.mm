@interface ABCPbSigConfig
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ABCPbSigConfig

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ABCPbSigConfig;
  v4 = [(ABCPbSigConfig *)&v8 description];
  dictionaryRepresentation = [(ABCPbSigConfig *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  domain = self->_domain;
  if (domain)
  {
    [dictionary setObject:domain forKey:@"domain"];
  }

  type = self->_type;
  if (type)
  {
    [v4 setObject:type forKey:@"type"];
  }

  subtype = self->_subtype;
  if (subtype)
  {
    [v4 setObject:subtype forKey:@"subtype"];
  }

  subtypeContext = self->_subtypeContext;
  if (subtypeContext)
  {
    [v4 setObject:subtypeContext forKey:@"subtype_context"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_subtype)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_subtypeContext)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_domain)
  {
    [toCopy setDomain:?];
    toCopy = v5;
  }

  if (self->_type)
  {
    [v5 setType:?];
    toCopy = v5;
  }

  if (self->_subtype)
  {
    [v5 setSubtype:?];
    toCopy = v5;
  }

  if (self->_subtypeContext)
  {
    [v5 setSubtypeContext:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_type copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_subtype copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_subtypeContext copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((domain = self->_domain, !(domain | equalCopy[1])) || -[NSString isEqual:](domain, "isEqual:")) && ((type = self->_type, !(type | equalCopy[4])) || -[NSString isEqual:](type, "isEqual:")) && ((subtype = self->_subtype, !(subtype | equalCopy[2])) || -[NSString isEqual:](subtype, "isEqual:")))
  {
    subtypeContext = self->_subtypeContext;
    if (subtypeContext | equalCopy[3])
    {
      v9 = [(NSString *)subtypeContext isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(NSString *)self->_type hash]^ v3;
  v5 = [(NSString *)self->_subtype hash];
  return v4 ^ v5 ^ [(NSString *)self->_subtypeContext hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(ABCPbSigConfig *)self setDomain:?];
  }

  if (fromCopy[4])
  {
    [(ABCPbSigConfig *)self setType:?];
  }

  if (fromCopy[2])
  {
    [(ABCPbSigConfig *)self setSubtype:?];
  }

  if (fromCopy[3])
  {
    [(ABCPbSigConfig *)self setSubtypeContext:?];
  }
}

@end