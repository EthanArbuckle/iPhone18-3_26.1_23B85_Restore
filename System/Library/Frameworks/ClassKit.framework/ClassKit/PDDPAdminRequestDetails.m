@interface PDDPAdminRequestDetails
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApprovalStatus:(id)a3;
- (int)StringAsRequestStatus:(id)a3;
- (int)StringAsType:(id)a3;
- (int)approvalStatus;
- (int)requestStatus;
- (int)type;
- (unint64_t)hash;
- (void)addAdminRequestAccountIds:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOptions:(BOOL)a3;
- (void)setHasRequestStatus:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPAdminRequestDetails

- (int)type
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)a3
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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_REQUEST_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"REQUEST_EMAIL_VERIFICATION"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CREATE_MAID_ACCOUNT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RESET_PASSWORD"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RESET_VERIFICATION_CODE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RESEND_ACCOUNT_CREDENTIALS"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)requestStatus
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_requestStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRequestStatus:(BOOL)a3
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

- (int)StringAsRequestStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_REQUEST_STATUS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"STATUS_NEW"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"STATUS_ISSUED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"STATUS_COMPLETED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"STATUS_FAILED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)approvalStatus
{
  if (*&self->_has)
  {
    return self->_approvalStatus;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsApprovalStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_REQUEST_APPROVAL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"APPROVAL_NONE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"APPROVAL_PENDING"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"APPROVAL_APPROVED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"APPROVAL_DECLINED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"APPROVAL_APPROVED_CREDENTIAL_EMAIL_NOT_ALLOWED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasOptions:(BOOL)a3
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

- (void)addAdminRequestAccountIds:(id)a3
{
  v4 = a3;
  adminRequestAccountIds = self->_adminRequestAccountIds;
  v8 = v4;
  if (!adminRequestAccountIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_adminRequestAccountIds;
    self->_adminRequestAccountIds = v6;

    v4 = v8;
    adminRequestAccountIds = self->_adminRequestAccountIds;
  }

  [(NSMutableArray *)adminRequestAccountIds addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPAdminRequestDetails;
  v3 = [(PDDPAdminRequestDetails *)&v7 description];
  v4 = [(PDDPAdminRequestDetails *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  adminRequestId = self->_adminRequestId;
  if (adminRequestId)
  {
    [v3 setObject:adminRequestId forKey:@"admin_request_id"];
  }

  orgId = self->_orgId;
  if (orgId)
  {
    [v4 setObject:orgId forKey:@"org_id"];
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

  dateCompleted = self->_dateCompleted;
  if (dateCompleted)
  {
    v12 = [(PDDPDate *)dateCompleted dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"date_completed"];
  }

  status = self->_status;
  if (status)
  {
    v14 = [(PDDPStatus *)status dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"status"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    type = self->_type;
    if (type >= 6)
    {
      v17 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v17 = *(&off_100202B70 + type);
    }

    [v4 setObject:v17 forKey:@"type"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_15:
      if ((has & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

  requestStatus = self->_requestStatus;
  if (requestStatus >= 5)
  {
    v19 = [NSString stringWithFormat:@"(unknown: %i)", self->_requestStatus];
  }

  else
  {
    v19 = *(&off_100202BA0 + requestStatus);
  }

  [v4 setObject:v19 forKey:@"request_status"];

  if (*&self->_has)
  {
LABEL_25:
    approvalStatus = self->_approvalStatus;
    if (approvalStatus >= 6)
    {
      v21 = [NSString stringWithFormat:@"(unknown: %i)", self->_approvalStatus];
    }

    else
    {
      v21 = *(&off_100202BC8 + approvalStatus);
    }

    [v4 setObject:v21 forKey:@"approval_status"];
  }

LABEL_29:
  requestor = self->_requestor;
  if (requestor)
  {
    v23 = [(PDDPAdminRequestRequestor *)requestor dictionaryRepresentation];
    [v4 setObject:v23 forKey:@"requestor"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v24 = [NSNumber numberWithUnsignedInt:self->_options];
    [v4 setObject:v24 forKey:@"options"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundle_identifier"];
  }

  adminRequestAccountIds = self->_adminRequestAccountIds;
  if (adminRequestAccountIds)
  {
    [v4 setObject:adminRequestAccountIds forKey:@"admin_request_account_ids"];
  }

  adminNote = self->_adminNote;
  if (adminNote)
  {
    [v4 setObject:adminNote forKey:@"admin_note"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_adminRequestId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_orgId)
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

  if (self->_dateCompleted)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_15:
      if ((has & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

  requestStatus = self->_requestStatus;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_16:
    approvalStatus = self->_approvalStatus;
    PBDataWriterWriteInt32Field();
  }

LABEL_17:
  if (self->_requestor)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    options = self->_options;
    PBDataWriterWriteUint32Field();
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_adminRequestAccountIds;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (self->_adminNote)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_adminRequestId)
  {
    [v4 setAdminRequestId:?];
    v4 = v10;
  }

  if (self->_orgId)
  {
    [v10 setOrgId:?];
    v4 = v10;
  }

  if (self->_dateCreated)
  {
    [v10 setDateCreated:?];
    v4 = v10;
  }

  if (self->_dateLastModified)
  {
    [v10 setDateLastModified:?];
    v4 = v10;
  }

  if (self->_dateCompleted)
  {
    [v10 setDateCompleted:?];
    v4 = v10;
  }

  if (self->_status)
  {
    [v10 setStatus:?];
    v4 = v10;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 28) = self->_type;
    *(v4 + 116) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_15:
      if ((has & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

  *(v4 + 22) = self->_requestStatus;
  *(v4 + 116) |= 4u;
  if (*&self->_has)
  {
LABEL_16:
    *(v4 + 8) = self->_approvalStatus;
    *(v4 + 116) |= 1u;
  }

LABEL_17:
  if (self->_requestor)
  {
    [v10 setRequestor:?];
    v4 = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 18) = self->_options;
    *(v4 + 116) |= 2u;
  }

  if (self->_bundleIdentifier)
  {
    [v10 setBundleIdentifier:?];
  }

  if ([(PDDPAdminRequestDetails *)self adminRequestAccountIdsCount])
  {
    [v10 clearAdminRequestAccountIds];
    v6 = [(PDDPAdminRequestDetails *)self adminRequestAccountIdsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PDDPAdminRequestDetails *)self adminRequestAccountIdsAtIndex:i];
        [v10 addAdminRequestAccountIds:v9];
      }
    }
  }

  if (self->_adminNote)
  {
    [v10 setAdminNote:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_adminRequestId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_orgId copyWithZone:a3];
  v9 = v5[10];
  v5[10] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v13 = v5[8];
  v5[8] = v12;

  v14 = [(PDDPDate *)self->_dateCompleted copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(PDDPStatus *)self->_status copyWithZone:a3];
  v17 = v5[13];
  v5[13] = v16;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 28) = self->_type;
    *(v5 + 116) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 22) = self->_requestStatus;
  *(v5 + 116) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_approvalStatus;
    *(v5 + 116) |= 1u;
  }

LABEL_5:
  v19 = [(PDDPAdminRequestRequestor *)self->_requestor copyWithZone:a3];
  v20 = v5[12];
  v5[12] = v19;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 18) = self->_options;
    *(v5 + 116) |= 2u;
  }

  v21 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v22 = v5[5];
  v5[5] = v21;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = self->_adminRequestAccountIds;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v32 + 1) + 8 * i) copyWithZone:{a3, v32}];
        [v5 addAdminRequestAccountIds:v28];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v25);
  }

  v29 = [(NSString *)self->_adminNote copyWithZone:a3];
  v30 = v5[1];
  v5[1] = v29;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  adminRequestId = self->_adminRequestId;
  if (adminRequestId | *(v4 + 3))
  {
    if (![(NSString *)adminRequestId isEqual:?])
    {
      goto LABEL_43;
    }
  }

  orgId = self->_orgId;
  if (orgId | *(v4 + 10))
  {
    if (![(NSString *)orgId isEqual:?])
    {
      goto LABEL_43;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(v4 + 7))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_43;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(v4 + 8))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_43;
    }
  }

  dateCompleted = self->_dateCompleted;
  if (dateCompleted | *(v4 + 6))
  {
    if (![(PDDPDate *)dateCompleted isEqual:?])
    {
      goto LABEL_43;
    }
  }

  status = self->_status;
  if (status | *(v4 + 13))
  {
    if (![(PDDPStatus *)status isEqual:?])
    {
      goto LABEL_43;
    }
  }

  has = self->_has;
  v12 = *(v4 + 116);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 116) & 8) == 0 || self->_type != *(v4 + 28))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 116) & 8) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 116) & 4) == 0 || self->_requestStatus != *(v4 + 22))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 116) & 4) != 0)
  {
    goto LABEL_43;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 116) & 1) == 0 || self->_approvalStatus != *(v4 + 8))
    {
      goto LABEL_43;
    }
  }

  else if (*(v4 + 116))
  {
    goto LABEL_43;
  }

  requestor = self->_requestor;
  if (requestor | *(v4 + 12))
  {
    if (![(PDDPAdminRequestRequestor *)requestor isEqual:?])
    {
LABEL_43:
      v17 = 0;
      goto LABEL_44;
    }

    has = self->_has;
    v12 = *(v4 + 116);
  }

  if ((has & 2) != 0)
  {
    if ((v12 & 2) == 0 || self->_options != *(v4 + 18))
    {
      goto LABEL_43;
    }
  }

  else if ((v12 & 2) != 0)
  {
    goto LABEL_43;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(v4 + 5) && ![(NSString *)bundleIdentifier isEqual:?])
  {
    goto LABEL_43;
  }

  adminRequestAccountIds = self->_adminRequestAccountIds;
  if (adminRequestAccountIds | *(v4 + 2))
  {
    if (![(NSMutableArray *)adminRequestAccountIds isEqual:?])
    {
      goto LABEL_43;
    }
  }

  adminNote = self->_adminNote;
  if (adminNote | *(v4 + 1))
  {
    v17 = [(NSString *)adminNote isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_44:

  return v17;
}

- (unint64_t)hash
{
  v16 = [(NSString *)self->_adminRequestId hash];
  v15 = [(NSString *)self->_orgId hash];
  v3 = [(PDDPDate *)self->_dateCreated hash];
  v4 = [(PDDPDate *)self->_dateLastModified hash];
  v5 = [(PDDPDate *)self->_dateCompleted hash];
  v6 = [(PDDPStatus *)self->_status hash];
  if ((*&self->_has & 8) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = 2654435761 * self->_type;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = 2654435761 * self->_requestStatus;
  if (*&self->_has)
  {
LABEL_4:
    v9 = 2654435761 * self->_approvalStatus;
    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
LABEL_8:
  v10 = [(PDDPAdminRequestRequestor *)self->_requestor hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_options;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_bundleIdentifier hash];
  v13 = v15 ^ v16 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v12 ^ [(NSMutableArray *)self->_adminRequestAccountIds hash];
  return v13 ^ [(NSString *)self->_adminNote hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    [(PDDPAdminRequestDetails *)self setAdminRequestId:?];
  }

  if (*(v4 + 10))
  {
    [(PDDPAdminRequestDetails *)self setOrgId:?];
  }

  dateCreated = self->_dateCreated;
  v6 = *(v4 + 7);
  if (dateCreated)
  {
    if (v6)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPAdminRequestDetails *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v8 = *(v4 + 8);
  if (dateLastModified)
  {
    if (v8)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPAdminRequestDetails *)self setDateLastModified:?];
  }

  dateCompleted = self->_dateCompleted;
  v10 = *(v4 + 6);
  if (dateCompleted)
  {
    if (v10)
    {
      [(PDDPDate *)dateCompleted mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PDDPAdminRequestDetails *)self setDateCompleted:?];
  }

  status = self->_status;
  v12 = *(v4 + 13);
  if (status)
  {
    if (v12)
    {
      [(PDDPStatus *)status mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(PDDPAdminRequestDetails *)self setStatus:?];
  }

  v13 = *(v4 + 116);
  if ((v13 & 8) != 0)
  {
    self->_type = *(v4 + 28);
    *&self->_has |= 8u;
    v13 = *(v4 + 116);
    if ((v13 & 4) == 0)
    {
LABEL_27:
      if ((v13 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*(v4 + 116) & 4) == 0)
  {
    goto LABEL_27;
  }

  self->_requestStatus = *(v4 + 22);
  *&self->_has |= 4u;
  if (*(v4 + 116))
  {
LABEL_28:
    self->_approvalStatus = *(v4 + 8);
    *&self->_has |= 1u;
  }

LABEL_29:
  requestor = self->_requestor;
  v15 = *(v4 + 12);
  if (requestor)
  {
    if (v15)
    {
      [(PDDPAdminRequestRequestor *)requestor mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(PDDPAdminRequestDetails *)self setRequestor:?];
  }

  if ((*(v4 + 116) & 2) != 0)
  {
    self->_options = *(v4 + 18);
    *&self->_has |= 2u;
  }

  if (*(v4 + 5))
  {
    [(PDDPAdminRequestDetails *)self setBundleIdentifier:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = *(v4 + 2);
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(PDDPAdminRequestDetails *)self addAdminRequestAccountIds:*(*(&v21 + 1) + 8 * i), v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v18);
  }

  if (*(v4 + 1))
  {
    [(PDDPAdminRequestDetails *)self setAdminNote:?];
  }
}

@end