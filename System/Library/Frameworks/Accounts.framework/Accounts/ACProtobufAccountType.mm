@interface ACProtobufAccountType
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSupportedEnumDataclasses:(id)a3;
- (void)addSyncableEnumDataclasses:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasObsolete:(BOOL)a3;
- (void)setHasSupportsMultipleAccounts:(BOOL)a3;
- (void)setHasVisibility:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ACProtobufAccountType

- (void)setHasVisibility:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSupportsMultipleAccounts:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasObsolete:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addSyncableEnumDataclasses:(id)a3
{
  v4 = a3;
  syncableEnumDataclasses = self->_syncableEnumDataclasses;
  v8 = v4;
  if (!syncableEnumDataclasses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_syncableEnumDataclasses;
    self->_syncableEnumDataclasses = v6;

    v4 = v8;
    syncableEnumDataclasses = self->_syncableEnumDataclasses;
  }

  [(NSMutableArray *)syncableEnumDataclasses addObject:v4];
}

- (void)addSupportedEnumDataclasses:(id)a3
{
  v4 = a3;
  supportedEnumDataclasses = self->_supportedEnumDataclasses;
  v8 = v4;
  if (!supportedEnumDataclasses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_supportedEnumDataclasses;
    self->_supportedEnumDataclasses = v6;

    v4 = v8;
    supportedEnumDataclasses = self->_supportedEnumDataclasses;
  }

  [(NSMutableArray *)supportedEnumDataclasses addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufAccountType;
  v4 = [(ACProtobufAccountType *)&v8 description];
  v5 = [(ACProtobufAccountType *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  accountTypeDescription = self->_accountTypeDescription;
  if (accountTypeDescription)
  {
    [v3 setObject:accountTypeDescription forKey:@"accountTypeDescription"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKey:@"identifier"];
  }

  objectID = self->_objectID;
  if (objectID)
  {
    v8 = [(ACProtobufURL *)objectID dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"objectID"];
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

          v23 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
          [v17 addObject:v23];
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

          v30 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
          [v24 addObject:v30];
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

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v14 = a3;
  [v14 setAccountTypeDescription:self->_accountTypeDescription];
  [v14 setIdentifier:self->_identifier];
  if (self->_objectID)
  {
    [v14 setObjectID:?];
  }

  v4 = v14;
  if ((*&self->_has & 2) != 0)
  {
    *(v14 + 20) = self->_visibility;
    *(v14 + 88) |= 2u;
  }

  if (self->_credentialType)
  {
    [v14 setCredentialType:?];
    v4 = v14;
  }

  if (self->_credentialProtectionPolicy)
  {
    [v14 setCredentialProtectionPolicy:?];
    v4 = v14;
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
    [v14 setOwningBundleID:?];
    v4 = v14;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 84) = self->_obsolete;
    *(v4 + 88) |= 4u;
  }

  if ([(ACProtobufAccountType *)self syncableEnumDataclassesCount])
  {
    [v14 clearSyncableEnumDataclasses];
    v6 = [(ACProtobufAccountType *)self syncableEnumDataclassesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ACProtobufAccountType *)self syncableEnumDataclassesAtIndex:i];
        [v14 addSyncableEnumDataclasses:v9];
      }
    }
  }

  if ([(ACProtobufAccountType *)self supportedEnumDataclassesCount])
  {
    [v14 clearSupportedEnumDataclasses];
    v10 = [(ACProtobufAccountType *)self supportedEnumDataclassesCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(ACProtobufAccountType *)self supportedEnumDataclassesAtIndex:j];
        [v14 addSupportedEnumDataclasses:v13];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_accountTypeDescription copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(ACProtobufURL *)self->_objectID copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 80) = self->_visibility;
    *(v5 + 88) |= 2u;
  }

  v12 = [(NSString *)self->_credentialType copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_credentialProtectionPolicy copyWithZone:a3];
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

  v17 = [(NSString *)self->_owningBundleID copyWithZone:a3];
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

        v24 = [*(*(&v37 + 1) + 8 * i) copyWithZone:a3];
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

        v30 = [*(*(&v33 + 1) + 8 * j) copyWithZone:{a3, v33}];
        [v5 addSupportedEnumDataclasses:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v27);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  accountTypeDescription = self->_accountTypeDescription;
  if (accountTypeDescription | *(v4 + 1))
  {
    if (![(NSString *)accountTypeDescription isEqual:?])
    {
      goto LABEL_45;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  objectID = self->_objectID;
  if (objectID | *(v4 + 5))
  {
    if (![(ACProtobufURL *)objectID isEqual:?])
    {
      goto LABEL_45;
    }
  }

  v8 = *(v4 + 88);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 88) & 2) == 0 || self->_visibility != *(v4 + 20))
    {
      goto LABEL_45;
    }
  }

  else if ((*(v4 + 88) & 2) != 0)
  {
    goto LABEL_45;
  }

  credentialType = self->_credentialType;
  if (credentialType | *(v4 + 3) && ![(NSString *)credentialType isEqual:?])
  {
    goto LABEL_45;
  }

  credentialProtectionPolicy = self->_credentialProtectionPolicy;
  if (credentialProtectionPolicy | *(v4 + 2))
  {
    if (![(NSString *)credentialProtectionPolicy isEqual:?])
    {
      goto LABEL_45;
    }
  }

  has = self->_has;
  v12 = *(v4 + 88);
  if (has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_supportsAuthentication != *(v4 + 16))
    {
      goto LABEL_45;
    }
  }

  else if (*(v4 + 88))
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 88) & 8) == 0)
    {
      goto LABEL_45;
    }

    v18 = *(v4 + 85);
    if (self->_supportsMultipleAccounts)
    {
      if ((*(v4 + 85) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (*(v4 + 85))
    {
      goto LABEL_45;
    }
  }

  else if ((*(v4 + 88) & 8) != 0)
  {
    goto LABEL_45;
  }

  owningBundleID = self->_owningBundleID;
  if (owningBundleID | *(v4 + 6))
  {
    if (![(NSString *)owningBundleID isEqual:?])
    {
      goto LABEL_45;
    }

    has = self->_has;
  }

  v14 = *(v4 + 88);
  if ((has & 4) == 0)
  {
    if ((*(v4 + 88) & 4) == 0)
    {
      goto LABEL_29;
    }

LABEL_45:
    v17 = 0;
    goto LABEL_46;
  }

  if ((*(v4 + 88) & 4) == 0)
  {
    goto LABEL_45;
  }

  v19 = *(v4 + 84);
  if (!self->_obsolete)
  {
    if ((*(v4 + 84) & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_45;
  }

  if ((*(v4 + 84) & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_29:
  syncableEnumDataclasses = self->_syncableEnumDataclasses;
  if (syncableEnumDataclasses | *(v4 + 9) && ![(NSMutableArray *)syncableEnumDataclasses isEqual:?])
  {
    goto LABEL_45;
  }

  supportedEnumDataclasses = self->_supportedEnumDataclasses;
  if (supportedEnumDataclasses | *(v4 + 7))
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

- (void)mergeFrom:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 1))
  {
    [(ACProtobufAccountType *)self setAccountTypeDescription:?];
  }

  if (*(v4 + 4))
  {
    [(ACProtobufAccountType *)self setIdentifier:?];
  }

  objectID = self->_objectID;
  v6 = *(v4 + 5);
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

  if ((*(v4 + 88) & 2) != 0)
  {
    self->_visibility = *(v4 + 20);
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    [(ACProtobufAccountType *)self setCredentialType:?];
  }

  if (*(v4 + 2))
  {
    [(ACProtobufAccountType *)self setCredentialProtectionPolicy:?];
  }

  v7 = *(v4 + 88);
  if (v7)
  {
    self->_supportsAuthentication = *(v4 + 16);
    *&self->_has |= 1u;
    v7 = *(v4 + 88);
  }

  if ((v7 & 8) != 0)
  {
    self->_supportsMultipleAccounts = *(v4 + 85);
    *&self->_has |= 8u;
  }

  if (*(v4 + 6))
  {
    [(ACProtobufAccountType *)self setOwningBundleID:?];
  }

  if ((*(v4 + 88) & 4) != 0)
  {
    self->_obsolete = *(v4 + 84);
    *&self->_has |= 4u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = *(v4 + 9);
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
  v13 = *(v4 + 7);
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