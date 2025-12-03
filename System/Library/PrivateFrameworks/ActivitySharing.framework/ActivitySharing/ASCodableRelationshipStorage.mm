@interface ASCodableRelationshipStorage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ASCodableRelationshipStorage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableRelationshipStorage;
  v4 = [(ASCodableRelationshipStorage *)&v8 description];
  dictionaryRepresentation = [(ASCodableRelationshipStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  legacyRelationshipContainer = self->_legacyRelationshipContainer;
  if (legacyRelationshipContainer)
  {
    dictionaryRepresentation = [(ASCodableRelationshipContainer *)legacyRelationshipContainer dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"legacyRelationshipContainer"];
  }

  legacyRemoteRelationshipContainer = self->_legacyRemoteRelationshipContainer;
  if (legacyRemoteRelationshipContainer)
  {
    dictionaryRepresentation2 = [(ASCodableRelationshipContainer *)legacyRemoteRelationshipContainer dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"legacyRemoteRelationshipContainer"];
  }

  secureCloudRelationshipContainer = self->_secureCloudRelationshipContainer;
  if (secureCloudRelationshipContainer)
  {
    dictionaryRepresentation3 = [(ASCodableRelationshipContainer *)secureCloudRelationshipContainer dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"secureCloudRelationshipContainer"];
  }

  secureCloudRemoteRelationshipContainer = self->_secureCloudRemoteRelationshipContainer;
  if (secureCloudRemoteRelationshipContainer)
  {
    dictionaryRepresentation4 = [(ASCodableRelationshipContainer *)secureCloudRemoteRelationshipContainer dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"secureCloudRemoteRelationshipContainer"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_legacyRelationshipContainer)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_legacyRemoteRelationshipContainer)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_secureCloudRelationshipContainer)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_secureCloudRemoteRelationshipContainer)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_legacyRelationshipContainer)
  {
    [toCopy setLegacyRelationshipContainer:?];
    toCopy = v5;
  }

  if (self->_legacyRemoteRelationshipContainer)
  {
    [v5 setLegacyRemoteRelationshipContainer:?];
    toCopy = v5;
  }

  if (self->_secureCloudRelationshipContainer)
  {
    [v5 setSecureCloudRelationshipContainer:?];
    toCopy = v5;
  }

  if (self->_secureCloudRemoteRelationshipContainer)
  {
    [v5 setSecureCloudRemoteRelationshipContainer:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ASCodableRelationshipContainer *)self->_legacyRelationshipContainer copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(ASCodableRelationshipContainer *)self->_legacyRemoteRelationshipContainer copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(ASCodableRelationshipContainer *)self->_secureCloudRelationshipContainer copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(ASCodableRelationshipContainer *)self->_secureCloudRemoteRelationshipContainer copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((legacyRelationshipContainer = self->_legacyRelationshipContainer, !(legacyRelationshipContainer | equalCopy[1])) || -[ASCodableRelationshipContainer isEqual:](legacyRelationshipContainer, "isEqual:")) && ((legacyRemoteRelationshipContainer = self->_legacyRemoteRelationshipContainer, !(legacyRemoteRelationshipContainer | equalCopy[2])) || -[ASCodableRelationshipContainer isEqual:](legacyRemoteRelationshipContainer, "isEqual:")) && ((secureCloudRelationshipContainer = self->_secureCloudRelationshipContainer, !(secureCloudRelationshipContainer | equalCopy[3])) || -[ASCodableRelationshipContainer isEqual:](secureCloudRelationshipContainer, "isEqual:")))
  {
    secureCloudRemoteRelationshipContainer = self->_secureCloudRemoteRelationshipContainer;
    if (secureCloudRemoteRelationshipContainer | equalCopy[4])
    {
      v9 = [(ASCodableRelationshipContainer *)secureCloudRemoteRelationshipContainer isEqual:?];
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
  v3 = [(ASCodableRelationshipContainer *)self->_legacyRelationshipContainer hash];
  v4 = [(ASCodableRelationshipContainer *)self->_legacyRemoteRelationshipContainer hash]^ v3;
  v5 = [(ASCodableRelationshipContainer *)self->_secureCloudRelationshipContainer hash];
  return v4 ^ v5 ^ [(ASCodableRelationshipContainer *)self->_secureCloudRemoteRelationshipContainer hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  legacyRelationshipContainer = self->_legacyRelationshipContainer;
  v13 = fromCopy;
  v6 = fromCopy[1];
  if (legacyRelationshipContainer)
  {
    if (v6)
    {
      [(ASCodableRelationshipContainer *)legacyRelationshipContainer mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ASCodableRelationshipStorage *)self setLegacyRelationshipContainer:?];
  }

  legacyRemoteRelationshipContainer = self->_legacyRemoteRelationshipContainer;
  v8 = v13[2];
  if (legacyRemoteRelationshipContainer)
  {
    if (v8)
    {
      [(ASCodableRelationshipContainer *)legacyRemoteRelationshipContainer mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(ASCodableRelationshipStorage *)self setLegacyRemoteRelationshipContainer:?];
  }

  secureCloudRelationshipContainer = self->_secureCloudRelationshipContainer;
  v10 = v13[3];
  if (secureCloudRelationshipContainer)
  {
    if (v10)
    {
      [(ASCodableRelationshipContainer *)secureCloudRelationshipContainer mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(ASCodableRelationshipStorage *)self setSecureCloudRelationshipContainer:?];
  }

  secureCloudRemoteRelationshipContainer = self->_secureCloudRemoteRelationshipContainer;
  v12 = v13[4];
  if (secureCloudRemoteRelationshipContainer)
  {
    if (v12)
    {
      [(ASCodableRelationshipContainer *)secureCloudRemoteRelationshipContainer mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(ASCodableRelationshipStorage *)self setSecureCloudRemoteRelationshipContainer:?];
  }
}

@end