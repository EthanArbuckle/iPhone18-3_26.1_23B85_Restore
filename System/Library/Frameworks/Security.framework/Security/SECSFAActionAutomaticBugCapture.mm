@interface SECSFAActionAutomaticBugCapture
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SECSFAActionAutomaticBugCapture

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(SECSFAActionAutomaticBugCapture *)self setDomain:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(SECSFAActionAutomaticBugCapture *)self setType:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(SECSFAActionAutomaticBugCapture *)self setSubtype:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(NSString *)self->_type hash]^ v3;
  return v4 ^ [(NSString *)self->_subtype hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((domain = self->_domain, !(domain | equalCopy[1])) || -[NSString isEqual:](domain, "isEqual:")) && ((type = self->_type, !(type | equalCopy[3])) || -[NSString isEqual:](type, "isEqual:")))
  {
    subtype = self->_subtype;
    if (subtype | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_type copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_subtype copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
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
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SECSFAActionAutomaticBugCapture;
  v4 = [(SECSFAActionAutomaticBugCapture *)&v8 description];
  dictionaryRepresentation = [(SECSFAActionAutomaticBugCapture *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end