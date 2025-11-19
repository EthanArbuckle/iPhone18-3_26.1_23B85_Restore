@interface ASCodableRelationshipStorage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableRelationshipStorage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableRelationshipStorage;
  v4 = [(ASCodableRelationshipStorage *)&v8 description];
  v5 = [(ASCodableRelationshipStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  legacyRelationshipContainer = self->_legacyRelationshipContainer;
  if (legacyRelationshipContainer)
  {
    v5 = [(ASCodableRelationshipContainer *)legacyRelationshipContainer dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"legacyRelationshipContainer"];
  }

  legacyRemoteRelationshipContainer = self->_legacyRemoteRelationshipContainer;
  if (legacyRemoteRelationshipContainer)
  {
    v7 = [(ASCodableRelationshipContainer *)legacyRemoteRelationshipContainer dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"legacyRemoteRelationshipContainer"];
  }

  secureCloudRelationshipContainer = self->_secureCloudRelationshipContainer;
  if (secureCloudRelationshipContainer)
  {
    v9 = [(ASCodableRelationshipContainer *)secureCloudRelationshipContainer dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"secureCloudRelationshipContainer"];
  }

  secureCloudRemoteRelationshipContainer = self->_secureCloudRemoteRelationshipContainer;
  if (secureCloudRemoteRelationshipContainer)
  {
    v11 = [(ASCodableRelationshipContainer *)secureCloudRemoteRelationshipContainer dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"secureCloudRemoteRelationshipContainer"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_legacyRelationshipContainer)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_legacyRemoteRelationshipContainer)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_secureCloudRelationshipContainer)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_secureCloudRemoteRelationshipContainer)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_legacyRelationshipContainer)
  {
    [v4 setLegacyRelationshipContainer:?];
    v4 = v5;
  }

  if (self->_legacyRemoteRelationshipContainer)
  {
    [v5 setLegacyRemoteRelationshipContainer:?];
    v4 = v5;
  }

  if (self->_secureCloudRelationshipContainer)
  {
    [v5 setSecureCloudRelationshipContainer:?];
    v4 = v5;
  }

  if (self->_secureCloudRemoteRelationshipContainer)
  {
    [v5 setSecureCloudRemoteRelationshipContainer:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ASCodableRelationshipContainer *)self->_legacyRelationshipContainer copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(ASCodableRelationshipContainer *)self->_legacyRemoteRelationshipContainer copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(ASCodableRelationshipContainer *)self->_secureCloudRelationshipContainer copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(ASCodableRelationshipContainer *)self->_secureCloudRemoteRelationshipContainer copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((legacyRelationshipContainer = self->_legacyRelationshipContainer, !(legacyRelationshipContainer | v4[1])) || -[ASCodableRelationshipContainer isEqual:](legacyRelationshipContainer, "isEqual:")) && ((legacyRemoteRelationshipContainer = self->_legacyRemoteRelationshipContainer, !(legacyRemoteRelationshipContainer | v4[2])) || -[ASCodableRelationshipContainer isEqual:](legacyRemoteRelationshipContainer, "isEqual:")) && ((secureCloudRelationshipContainer = self->_secureCloudRelationshipContainer, !(secureCloudRelationshipContainer | v4[3])) || -[ASCodableRelationshipContainer isEqual:](secureCloudRelationshipContainer, "isEqual:")))
  {
    secureCloudRemoteRelationshipContainer = self->_secureCloudRemoteRelationshipContainer;
    if (secureCloudRemoteRelationshipContainer | v4[4])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  legacyRelationshipContainer = self->_legacyRelationshipContainer;
  v13 = v4;
  v6 = v4[1];
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