@interface SECSFAActionAutomaticBugCapture
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SECSFAActionAutomaticBugCapture

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(SECSFAActionAutomaticBugCapture *)self setDomain:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(SECSFAActionAutomaticBugCapture *)self setType:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(SECSFAActionAutomaticBugCapture *)self setSubtype:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(NSString *)self->_type hash]^ v3;
  return v4 ^ [(NSString *)self->_subtype hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((domain = self->_domain, !(domain | v4[1])) || -[NSString isEqual:](domain, "isEqual:")) && ((type = self->_type, !(type | v4[3])) || -[NSString isEqual:](type, "isEqual:")))
  {
    subtype = self->_subtype;
    if (subtype | v4[2])
    {
      v8 = [(NSString *)subtype isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_type copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_subtype copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
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
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SECSFAActionAutomaticBugCapture;
  v4 = [(SECSFAActionAutomaticBugCapture *)&v8 description];
  v5 = [(SECSFAActionAutomaticBugCapture *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end