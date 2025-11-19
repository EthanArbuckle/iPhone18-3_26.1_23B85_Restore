@interface ABCPbSigConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABCPbSigConfig

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ABCPbSigConfig;
  v4 = [(ABCPbSigConfig *)&v8 description];
  v5 = [(ABCPbSigConfig *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_subtype)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_subtypeContext)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_domain)
  {
    [v4 setDomain:?];
    v4 = v5;
  }

  if (self->_type)
  {
    [v5 setType:?];
    v4 = v5;
  }

  if (self->_subtype)
  {
    [v5 setSubtype:?];
    v4 = v5;
  }

  if (self->_subtypeContext)
  {
    [v5 setSubtypeContext:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_type copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_subtype copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_subtypeContext copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((domain = self->_domain, !(domain | v4[1])) || -[NSString isEqual:](domain, "isEqual:")) && ((type = self->_type, !(type | v4[4])) || -[NSString isEqual:](type, "isEqual:")) && ((subtype = self->_subtype, !(subtype | v4[2])) || -[NSString isEqual:](subtype, "isEqual:")))
  {
    subtypeContext = self->_subtypeContext;
    if (subtypeContext | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(ABCPbSigConfig *)self setDomain:?];
  }

  if (v4[4])
  {
    [(ABCPbSigConfig *)self setType:?];
  }

  if (v4[2])
  {
    [(ABCPbSigConfig *)self setSubtype:?];
  }

  if (v4[3])
  {
    [(ABCPbSigConfig *)self setSubtypeContext:?];
  }
}

@end