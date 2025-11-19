@interface PDDPAdminRequestAccount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequestedRoleType:(id)a3;
- (int)requestedRoleType;
- (unint64_t)hash;
- (void)addConflictingPersonIds:(id)a3;
- (void)addRequestedLocationIds:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPAdminRequestAccount

- (int)requestedRoleType
{
  if (*&self->_has)
  {
    return self->_requestedRoleType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRequestedRoleType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_ROLE_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ADMINISTRATOR"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SITE_MANAGER"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MANAGER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"INSTRUCTOR"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"STAFF"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"STUDENT"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CUSTOM"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addRequestedLocationIds:(id)a3
{
  v4 = a3;
  requestedLocationIds = self->_requestedLocationIds;
  v8 = v4;
  if (!requestedLocationIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_requestedLocationIds;
    self->_requestedLocationIds = v6;

    v4 = v8;
    requestedLocationIds = self->_requestedLocationIds;
  }

  [(NSMutableArray *)requestedLocationIds addObject:v4];
}

- (void)addConflictingPersonIds:(id)a3
{
  v4 = a3;
  conflictingPersonIds = self->_conflictingPersonIds;
  v8 = v4;
  if (!conflictingPersonIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_conflictingPersonIds;
    self->_conflictingPersonIds = v6;

    v4 = v8;
    conflictingPersonIds = self->_conflictingPersonIds;
  }

  [(NSMutableArray *)conflictingPersonIds addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPAdminRequestAccount;
  v3 = [(PDDPAdminRequestAccount *)&v7 description];
  v4 = [(PDDPAdminRequestAccount *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  adminRequestAccountId = self->_adminRequestAccountId;
  if (adminRequestAccountId)
  {
    [v3 setObject:adminRequestAccountId forKey:@"admin_request_account_id"];
  }

  parentRequestId = self->_parentRequestId;
  if (parentRequestId)
  {
    [v4 setObject:parentRequestId forKey:@"parent_request_id"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    v8 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    v10 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"date_last_modified"];
  }

  person = self->_person;
  if (person)
  {
    v12 = [(PDDPPerson *)person dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"person"];
  }

  if (*&self->_has)
  {
    requestedRoleType = self->_requestedRoleType;
    if (requestedRoleType >= 8)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_requestedRoleType];
    }

    else
    {
      v14 = *(&off_100205FE0 + requestedRoleType);
    }

    [v4 setObject:v14 forKey:@"requested_role_type"];
  }

  requestedRoleId = self->_requestedRoleId;
  if (requestedRoleId)
  {
    [v4 setObject:requestedRoleId forKey:@"requested_role_id"];
  }

  requestedLocationIds = self->_requestedLocationIds;
  if (requestedLocationIds)
  {
    [v4 setObject:requestedLocationIds forKey:@"requested_location_ids"];
  }

  temporaryPassword = self->_temporaryPassword;
  if (temporaryPassword)
  {
    [v4 setObject:temporaryPassword forKey:@"temporary_password"];
  }

  verificationCode = self->_verificationCode;
  if (verificationCode)
  {
    [v4 setObject:verificationCode forKey:@"verification_code"];
  }

  conflictingPersonIds = self->_conflictingPersonIds;
  if (conflictingPersonIds)
  {
    [v4 setObject:conflictingPersonIds forKey:@"conflicting_person_ids"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_adminRequestAccountId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentRequestId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_person)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    requestedRoleType = self->_requestedRoleType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_requestedRoleId)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_requestedLocationIds;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  if (self->_temporaryPassword)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_verificationCode)
  {
    PBDataWriterWriteStringField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = self->_conflictingPersonIds;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_adminRequestAccountId)
  {
    [v4 setAdminRequestAccountId:?];
    v4 = v13;
  }

  if (self->_parentRequestId)
  {
    [v13 setParentRequestId:?];
    v4 = v13;
  }

  if (self->_dateCreated)
  {
    [v13 setDateCreated:?];
    v4 = v13;
  }

  if (self->_dateLastModified)
  {
    [v13 setDateLastModified:?];
    v4 = v13;
  }

  if (self->_person)
  {
    [v13 setPerson:?];
    v4 = v13;
  }

  if (*&self->_has)
  {
    *(v4 + 18) = self->_requestedRoleType;
    *(v4 + 96) |= 1u;
  }

  if (self->_requestedRoleId)
  {
    [v13 setRequestedRoleId:?];
  }

  if ([(PDDPAdminRequestAccount *)self requestedLocationIdsCount])
  {
    [v13 clearRequestedLocationIds];
    v5 = [(PDDPAdminRequestAccount *)self requestedLocationIdsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPAdminRequestAccount *)self requestedLocationIdsAtIndex:i];
        [v13 addRequestedLocationIds:v8];
      }
    }
  }

  if (self->_temporaryPassword)
  {
    [v13 setTemporaryPassword:?];
  }

  if (self->_verificationCode)
  {
    [v13 setVerificationCode:?];
  }

  if ([(PDDPAdminRequestAccount *)self conflictingPersonIdsCount])
  {
    [v13 clearConflictingPersonIds];
    v9 = [(PDDPAdminRequestAccount *)self conflictingPersonIdsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(PDDPAdminRequestAccount *)self conflictingPersonIdsAtIndex:j];
        [v13 addConflictingPersonIds:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_adminRequestAccountId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_parentRequestId copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(PDDPPerson *)self->_person copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  if (*&self->_has)
  {
    *(v5 + 18) = self->_requestedRoleType;
    *(v5 + 96) |= 1u;
  }

  v16 = [(NSString *)self->_requestedRoleId copyWithZone:a3];
  v17 = v5[8];
  v5[8] = v16;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = self->_requestedLocationIds;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v40;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v39 + 1) + 8 * i) copyWithZone:a3];
        [v5 addRequestedLocationIds:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v20);
  }

  v24 = [(NSString *)self->_temporaryPassword copyWithZone:a3];
  v25 = v5[10];
  v5[10] = v24;

  v26 = [(NSString *)self->_verificationCode copyWithZone:a3];
  v27 = v5[11];
  v5[11] = v26;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = self->_conflictingPersonIds;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v35 + 1) + 8 * j) copyWithZone:{a3, v35}];
        [v5 addConflictingPersonIds:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v30);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  adminRequestAccountId = self->_adminRequestAccountId;
  if (adminRequestAccountId | *(v4 + 1))
  {
    if (![(NSString *)adminRequestAccountId isEqual:?])
    {
      goto LABEL_27;
    }
  }

  parentRequestId = self->_parentRequestId;
  if (parentRequestId | *(v4 + 5))
  {
    if (![(NSString *)parentRequestId isEqual:?])
    {
      goto LABEL_27;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(v4 + 3))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_27;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(v4 + 4))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_27;
    }
  }

  person = self->_person;
  if (person | *(v4 + 6))
  {
    if (![(PDDPPerson *)person isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v10 = *(v4 + 96);
  if (*&self->_has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_requestedRoleType != *(v4 + 18))
    {
      goto LABEL_27;
    }
  }

  else if (*(v4 + 96))
  {
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  requestedRoleId = self->_requestedRoleId;
  if (requestedRoleId | *(v4 + 8) && ![(NSString *)requestedRoleId isEqual:?])
  {
    goto LABEL_27;
  }

  requestedLocationIds = self->_requestedLocationIds;
  if (requestedLocationIds | *(v4 + 7))
  {
    if (![(NSMutableArray *)requestedLocationIds isEqual:?])
    {
      goto LABEL_27;
    }
  }

  temporaryPassword = self->_temporaryPassword;
  if (temporaryPassword | *(v4 + 10))
  {
    if (![(NSString *)temporaryPassword isEqual:?])
    {
      goto LABEL_27;
    }
  }

  verificationCode = self->_verificationCode;
  if (verificationCode | *(v4 + 11))
  {
    if (![(NSString *)verificationCode isEqual:?])
    {
      goto LABEL_27;
    }
  }

  conflictingPersonIds = self->_conflictingPersonIds;
  if (conflictingPersonIds | *(v4 + 2))
  {
    v16 = [(NSMutableArray *)conflictingPersonIds isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_28:

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_adminRequestAccountId hash];
  v4 = [(NSString *)self->_parentRequestId hash];
  v5 = [(PDDPDate *)self->_dateCreated hash];
  v6 = [(PDDPDate *)self->_dateLastModified hash];
  v7 = [(PDDPPerson *)self->_person hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_requestedRoleType;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_requestedRoleId hash];
  v10 = [(NSMutableArray *)self->_requestedLocationIds hash];
  v11 = v10 ^ [(NSString *)self->_temporaryPassword hash];
  v12 = v11 ^ [(NSString *)self->_verificationCode hash];
  return v9 ^ v12 ^ [(NSMutableArray *)self->_conflictingPersonIds hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    [(PDDPAdminRequestAccount *)self setAdminRequestAccountId:?];
  }

  if (*(v4 + 5))
  {
    [(PDDPAdminRequestAccount *)self setParentRequestId:?];
  }

  dateCreated = self->_dateCreated;
  v6 = *(v4 + 3);
  if (dateCreated)
  {
    if (v6)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPAdminRequestAccount *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v8 = *(v4 + 4);
  if (dateLastModified)
  {
    if (v8)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPAdminRequestAccount *)self setDateLastModified:?];
  }

  person = self->_person;
  v10 = *(v4 + 6);
  if (person)
  {
    if (v10)
    {
      [(PDDPPerson *)person mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PDDPAdminRequestAccount *)self setPerson:?];
  }

  if (*(v4 + 96))
  {
    self->_requestedRoleType = *(v4 + 18);
    *&self->_has |= 1u;
  }

  if (*(v4 + 8))
  {
    [(PDDPAdminRequestAccount *)self setRequestedRoleId:?];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = *(v4 + 7);
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PDDPAdminRequestAccount *)self addRequestedLocationIds:*(*(&v25 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }

  if (*(v4 + 10))
  {
    [(PDDPAdminRequestAccount *)self setTemporaryPassword:?];
  }

  if (*(v4 + 11))
  {
    [(PDDPAdminRequestAccount *)self setVerificationCode:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = *(v4 + 2);
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(PDDPAdminRequestAccount *)self addConflictingPersonIds:*(*(&v21 + 1) + 8 * j), v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v18);
  }
}

@end