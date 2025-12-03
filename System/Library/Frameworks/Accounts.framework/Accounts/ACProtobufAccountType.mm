@interface ACProtobufAccountType
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSupportedEnumDataclasses:(id)dataclasses;
- (void)addSyncableEnumDataclasses:(id)dataclasses;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasObsolete:(BOOL)obsolete;
- (void)setHasSupportsMultipleAccounts:(BOOL)accounts;
- (void)setHasVisibility:(BOOL)visibility;
- (void)writeTo:(id)to;
@end

@implementation ACProtobufAccountType

- (void)setHasVisibility:(BOOL)visibility
{
  if (visibility)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSupportsMultipleAccounts:(BOOL)accounts
{
  if (accounts)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasObsolete:(BOOL)obsolete
{
  if (obsolete)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addSyncableEnumDataclasses:(id)dataclasses
{
  dataclassesCopy = dataclasses;
  syncableEnumDataclasses = self->_syncableEnumDataclasses;
  v8 = dataclassesCopy;
  if (!syncableEnumDataclasses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_syncableEnumDataclasses;
    self->_syncableEnumDataclasses = v6;

    dataclassesCopy = v8;
    syncableEnumDataclasses = self->_syncableEnumDataclasses;
  }

  [(NSMutableArray *)syncableEnumDataclasses addObject:dataclassesCopy];
}

- (void)addSupportedEnumDataclasses:(id)dataclasses
{
  dataclassesCopy = dataclasses;
  supportedEnumDataclasses = self->_supportedEnumDataclasses;
  v8 = dataclassesCopy;
  if (!supportedEnumDataclasses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_supportedEnumDataclasses;
    self->_supportedEnumDataclasses = v6;

    dataclassesCopy = v8;
    supportedEnumDataclasses = self->_supportedEnumDataclasses;
  }

  [(NSMutableArray *)supportedEnumDataclasses addObject:dataclassesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufAccountType;
  v4 = [(ACProtobufAccountType *)&v8 description];
  dictionaryRepresentation = [(ACProtobufAccountType *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v43 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  accountTypeDescription = self->_accountTypeDescription;
  if (accountTypeDescription)
  {
    [dictionary setObject:accountTypeDescription forKey:@"accountTypeDescription"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKey:@"identifier"];
  }

  objectID = self->_objectID;
  if (objectID)
  {
    dictionaryRepresentation = [(ACProtobufURL *)objectID dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"objectID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_visibility];
    [v4 setObject:v9 forKey:@"visibility"];
  }

  credentialType = self->_credentialType;
  if (credentialType)
  {
    [v4 setObject:credentialType forKey:@"credentialType"];
  }

  credentialProtectionPolicy = self->_credentialProtectionPolicy;
  if (credentialProtectionPolicy)
  {
    [v4 setObject:credentialProtectionPolicy forKey:@"credentialProtectionPolicy"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:self->_supportsAuthentication];
    [v4 setObject:v13 forKey:@"supportsAuthentication"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMultipleAccounts];
    [v4 setObject:v14 forKey:@"supportsMultipleAccounts"];
  }

  owningBundleID = self->_owningBundleID;
  if (owningBundleID)
  {
    [v4 setObject:owningBundleID forKey:@"owningBundleID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_obsolete];
    [v4 setObject:v16 forKey:@"obsolete"];
  }

  if ([(NSMutableArray *)self->_syncableEnumDataclasses count])
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_syncableEnumDataclasses, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = self->_syncableEnumDataclasses;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation2 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
          [v17 addObject:dictionaryRepresentation2];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v20);
    }

    [v4 setObject:v17 forKey:@"syncableEnumDataclasses"];
  }

  if ([(NSMutableArray *)self->_supportedEnumDataclasses count])
  {
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_supportedEnumDataclasses, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v25 = self->_supportedEnumDataclasses;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v25);
          }

          dictionaryRepresentation3 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
          [v24 addObject:dictionaryRepresentation3];
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v27);
    }

    [v4 setObject:v24 forKey:@"supportedEnumDataclasses"];
  }

  v31 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  accountTypeDescription = self->_accountTypeDescription;
  PBDataWriterWriteStringField();
  identifier = self->_identifier;
  PBDataWriterWriteStringField();
  if (self->_objectID)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    visibility = self->_visibility;
    PBDataWriterWriteInt32Field();
  }

  if (self->_credentialType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_credentialProtectionPolicy)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    supportsAuthentication = self->_supportsAuthentication;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    supportsMultipleAccounts = self->_supportsMultipleAccounts;
    PBDataWriterWriteBOOLField();
  }

  if (self->_owningBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    obsolete = self->_obsolete;
    PBDataWriterWriteBOOLField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_syncableEnumDataclasses;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_supportedEnumDataclasses;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setAccountTypeDescription:self->_accountTypeDescription];
  [toCopy setIdentifier:self->_identifier];
  if (self->_objectID)
  {
    [toCopy setObjectID:?];
  }

  v4 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 20) = self->_visibility;
    *(toCopy + 88) |= 2u;
  }

  if (self->_credentialType)
  {
    [toCopy setCredentialType:?];
    v4 = toCopy;
  }

  if (self->_credentialProtectionPolicy)
  {
    [toCopy setCredentialProtectionPolicy:?];
    v4 = toCopy;
  }

  has = self->_has;
  if (has)
  {
    v4[16] = self->_supportsAuthentication;
    *(v4 + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v4 + 85) = self->_supportsMultipleAccounts;
    *(v4 + 88) |= 8u;
  }

  if (self->_owningBundleID)
  {
    [toCopy setOwningBundleID:?];
    v4 = toCopy;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 84) = self->_obsolete;
    *(v4 + 88) |= 4u;
  }

  if ([(ACProtobufAccountType *)self syncableEnumDataclassesCount])
  {
    [toCopy clearSyncableEnumDataclasses];
    syncableEnumDataclassesCount = [(ACProtobufAccountType *)self syncableEnumDataclassesCount];
    if (syncableEnumDataclassesCount)
    {
      v7 = syncableEnumDataclassesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ACProtobufAccountType *)self syncableEnumDataclassesAtIndex:i];
        [toCopy addSyncableEnumDataclasses:v9];
      }
    }
  }

  if ([(ACProtobufAccountType *)self supportedEnumDataclassesCount])
  {
    [toCopy clearSupportedEnumDataclasses];
    supportedEnumDataclassesCount = [(ACProtobufAccountType *)self supportedEnumDataclassesCount];
    if (supportedEnumDataclassesCount)
    {
      v11 = supportedEnumDataclassesCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(ACProtobufAccountType *)self supportedEnumDataclassesAtIndex:j];
        [toCopy addSupportedEnumDataclasses:v13];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accountTypeDescription copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(ACProtobufURL *)self->_objectID copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 80) = self->_visibility;
    *(v5 + 88) |= 2u;
  }

  v12 = [(NSString *)self->_credentialType copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_credentialProtectionPolicy copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  has = self->_has;
  if (has)
  {
    *(v5 + 64) = self->_supportsAuthentication;
    *(v5 + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 85) = self->_supportsMultipleAccounts;
    *(v5 + 88) |= 8u;
  }

  v17 = [(NSString *)self->_owningBundleID copyWithZone:zone];
  v18 = *(v5 + 48);
  *(v5 + 48) = v17;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 84) = self->_obsolete;
    *(v5 + 88) |= 4u;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = self->_syncableEnumDataclasses;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v37 + 1) + 8 * i) copyWithZone:zone];
        [v5 addSyncableEnumDataclasses:v24];
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v21);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = self->_supportedEnumDataclasses;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v34;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v33 + 1) + 8 * j) copyWithZone:{zone, v33}];
        [v5 addSupportedEnumDataclasses:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v27);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  accountTypeDescription = self->_accountTypeDescription;
  if (accountTypeDescription | *(equalCopy + 1))
  {
    if (![(NSString *)accountTypeDescription isEqual:?])
    {
      goto LABEL_45;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  objectID = self->_objectID;
  if (objectID | *(equalCopy + 5))
  {
    if (![(ACProtobufURL *)objectID isEqual:?])
    {
      goto LABEL_45;
    }
  }

  v8 = *(equalCopy + 88);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_visibility != *(equalCopy + 20))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
    goto LABEL_45;
  }

  credentialType = self->_credentialType;
  if (credentialType | *(equalCopy + 3) && ![(NSString *)credentialType isEqual:?])
  {
    goto LABEL_45;
  }

  credentialProtectionPolicy = self->_credentialProtectionPolicy;
  if (credentialProtectionPolicy | *(equalCopy + 2))
  {
    if (![(NSString *)credentialProtectionPolicy isEqual:?])
    {
      goto LABEL_45;
    }
  }

  has = self->_has;
  v12 = *(equalCopy + 88);
  if (has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_supportsAuthentication != *(equalCopy + 16))
    {
      goto LABEL_45;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 88) & 8) == 0)
    {
      goto LABEL_45;
    }

    v18 = *(equalCopy + 85);
    if (self->_supportsMultipleAccounts)
    {
      if ((*(equalCopy + 85) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (*(equalCopy + 85))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 88) & 8) != 0)
  {
    goto LABEL_45;
  }

  owningBundleID = self->_owningBundleID;
  if (owningBundleID | *(equalCopy + 6))
  {
    if (![(NSString *)owningBundleID isEqual:?])
    {
      goto LABEL_45;
    }

    has = self->_has;
  }

  v14 = *(equalCopy + 88);
  if ((has & 4) == 0)
  {
    if ((*(equalCopy + 88) & 4) == 0)
    {
      goto LABEL_29;
    }

LABEL_45:
    v17 = 0;
    goto LABEL_46;
  }

  if ((*(equalCopy + 88) & 4) == 0)
  {
    goto LABEL_45;
  }

  v19 = *(equalCopy + 84);
  if (!self->_obsolete)
  {
    if ((*(equalCopy + 84) & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_45;
  }

  if ((*(equalCopy + 84) & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_29:
  syncableEnumDataclasses = self->_syncableEnumDataclasses;
  if (syncableEnumDataclasses | *(equalCopy + 9) && ![(NSMutableArray *)syncableEnumDataclasses isEqual:?])
  {
    goto LABEL_45;
  }

  supportedEnumDataclasses = self->_supportedEnumDataclasses;
  if (supportedEnumDataclasses | *(equalCopy + 7))
  {
    v17 = [(NSMutableArray *)supportedEnumDataclasses isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_46:

  return v17;
}

- (unint64_t)hash
{
  v14 = [(NSString *)self->_accountTypeDescription hash];
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(ACProtobufURL *)self->_objectID hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_visibility;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_credentialType hash];
  v7 = [(NSString *)self->_credentialProtectionPolicy hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_supportsAuthentication;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v9 = 2654435761 * self->_supportsMultipleAccounts;
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_9:
  v10 = [(NSString *)self->_owningBundleID hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_obsolete;
  }

  else
  {
    v11 = 0;
  }

  v12 = v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSMutableArray *)self->_syncableEnumDataclasses hash];
  return v12 ^ [(NSMutableArray *)self->_supportedEnumDataclasses hash];
}

- (void)mergeFrom:(id)from
{
  v29 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(ACProtobufAccountType *)self setAccountTypeDescription:?];
  }

  if (*(fromCopy + 4))
  {
    [(ACProtobufAccountType *)self setIdentifier:?];
  }

  objectID = self->_objectID;
  v6 = *(fromCopy + 5);
  if (objectID)
  {
    if (v6)
    {
      [(ACProtobufURL *)objectID mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ACProtobufAccountType *)self setObjectID:?];
  }

  if ((*(fromCopy + 88) & 2) != 0)
  {
    self->_visibility = *(fromCopy + 20);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    [(ACProtobufAccountType *)self setCredentialType:?];
  }

  if (*(fromCopy + 2))
  {
    [(ACProtobufAccountType *)self setCredentialProtectionPolicy:?];
  }

  v7 = *(fromCopy + 88);
  if (v7)
  {
    self->_supportsAuthentication = *(fromCopy + 16);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 88);
  }

  if ((v7 & 8) != 0)
  {
    self->_supportsMultipleAccounts = *(fromCopy + 85);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 6))
  {
    [(ACProtobufAccountType *)self setOwningBundleID:?];
  }

  if ((*(fromCopy + 88) & 4) != 0)
  {
    self->_obsolete = *(fromCopy + 84);
    *&self->_has |= 4u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = *(fromCopy + 9);
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(ACProtobufAccountType *)self addSyncableEnumDataclasses:*(*(&v23 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = *(fromCopy + 7);
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(ACProtobufAccountType *)self addSupportedEnumDataclasses:*(*(&v19 + 1) + 8 * j), v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end