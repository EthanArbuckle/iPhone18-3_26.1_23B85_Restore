@interface ACProtobufCredentialItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDirtyProperties:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ACProtobufCredentialItem

- (void)addDirtyProperties:(id)a3
{
  v4 = a3;
  dirtyProperties = self->_dirtyProperties;
  v8 = v4;
  if (!dirtyProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dirtyProperties;
    self->_dirtyProperties = v6;

    v4 = v8;
    dirtyProperties = self->_dirtyProperties;
  }

  [(NSMutableArray *)dirtyProperties addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufCredentialItem;
  v4 = [(ACProtobufCredentialItem *)&v8 description];
  v5 = [(ACProtobufCredentialItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [v3 setObject:accountIdentifier forKey:@"accountIdentifier"];
  }

  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    v7 = [(ACProtobufDate *)expirationDate dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"expirationDate"];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v4 setObject:serviceName forKey:@"serviceName"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPersistent];
    [v4 setObject:v9 forKey:@"isPersistent"];
  }

  objectID = self->_objectID;
  if (objectID)
  {
    v11 = [(ACProtobufURL *)objectID dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"objectID"];
  }

  dirtyProperties = self->_dirtyProperties;
  if (dirtyProperties)
  {
    [v4 setObject:dirtyProperties forKey:@"dirtyProperties"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  accountIdentifier = self->_accountIdentifier;
  PBDataWriterWriteStringField();
  if (self->_expirationDate)
  {
    PBDataWriterWriteSubmessage();
  }

  serviceName = self->_serviceName;
  PBDataWriterWriteStringField();
  if (*&self->_has)
  {
    isPersistent = self->_isPersistent;
    PBDataWriterWriteBOOLField();
  }

  if (self->_objectID)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_dirtyProperties;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteStringField();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  [v8 setAccountIdentifier:self->_accountIdentifier];
  if (self->_expirationDate)
  {
    [v8 setExpirationDate:?];
  }

  [v8 setServiceName:self->_serviceName];
  if (*&self->_has)
  {
    v8[48] = self->_isPersistent;
    v8[52] |= 1u;
  }

  if (self->_objectID)
  {
    [v8 setObjectID:?];
  }

  if ([(ACProtobufCredentialItem *)self dirtyPropertiesCount])
  {
    [v8 clearDirtyProperties];
    v4 = [(ACProtobufCredentialItem *)self dirtyPropertiesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ACProtobufCredentialItem *)self dirtyPropertiesAtIndex:i];
        [v8 addDirtyProperties:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(ACProtobufDate *)self->_expirationDate copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_serviceName copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_isPersistent;
    *(v5 + 52) |= 1u;
  }

  v12 = [(ACProtobufURL *)self->_objectID copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_dirtyProperties;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) copyWithZone:{a3, v22}];
        [v5 addDirtyProperties:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier | *(v4 + 1))
  {
    if (![(NSString *)accountIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  expirationDate = self->_expirationDate;
  if (expirationDate | *(v4 + 3))
  {
    if (![(ACProtobufDate *)expirationDate isEqual:?])
    {
      goto LABEL_15;
    }
  }

  serviceName = self->_serviceName;
  if (serviceName | *(v4 + 5))
  {
    if (![(NSString *)serviceName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0)
    {
      goto LABEL_15;
    }

    v8 = *(v4 + 48);
    if (self->_isPersistent)
    {
      if (*(v4 + 48))
      {
        goto LABEL_10;
      }

LABEL_15:
      v11 = 0;
      goto LABEL_16;
    }
  }

  if (v8)
  {
    goto LABEL_15;
  }

LABEL_10:
  objectID = self->_objectID;
  if (objectID | *(v4 + 4) && ![(ACProtobufURL *)objectID isEqual:?])
  {
    goto LABEL_15;
  }

  dirtyProperties = self->_dirtyProperties;
  if (dirtyProperties | *(v4 + 2))
  {
    v11 = [(NSMutableArray *)dirtyProperties isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_16:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accountIdentifier hash];
  v4 = [(ACProtobufDate *)self->_expirationDate hash];
  v5 = [(NSString *)self->_serviceName hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_isPersistent;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(ACProtobufURL *)self->_objectID hash];
  return v7 ^ v8 ^ [(NSMutableArray *)self->_dirtyProperties hash];
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 1))
  {
    [(ACProtobufCredentialItem *)self setAccountIdentifier:?];
  }

  expirationDate = self->_expirationDate;
  v6 = *(v4 + 3);
  if (expirationDate)
  {
    if (v6)
    {
      [(ACProtobufDate *)expirationDate mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ACProtobufCredentialItem *)self setExpirationDate:?];
  }

  if (*(v4 + 5))
  {
    [(ACProtobufCredentialItem *)self setServiceName:?];
  }

  if (*(v4 + 52))
  {
    self->_isPersistent = *(v4 + 48);
    *&self->_has |= 1u;
  }

  objectID = self->_objectID;
  v8 = *(v4 + 4);
  if (objectID)
  {
    if (v8)
    {
      [(ACProtobufURL *)objectID mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(ACProtobufCredentialItem *)self setObjectID:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v4 + 2);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(ACProtobufCredentialItem *)self addDirtyProperties:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end