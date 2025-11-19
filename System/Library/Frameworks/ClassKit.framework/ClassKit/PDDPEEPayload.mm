@interface PDDPEEPayload
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)a3;
- (int)StringAsType:(id)a3;
- (int)action;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPayloadSize:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPEEPayload

- (void)setHasPayloadSize:(BOOL)a3
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

- (int)action
{
  if (*&self->_has)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_ACTION"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"UPSERT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DELETE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"REPLACE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)type
{
  if ((*&self->_has & 4) != 0)
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"STATUS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REQUEST_ZONE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RESPONSE_ZONE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LOCATION"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PERSON"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CLASS"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CLASS_MEMBER"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ROLE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ORGANIZATION"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ADMIN_REQUEST"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ADMIN_REQUEST_ACCOUNT"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"GROUP"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"GROUP_MEMBER"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPEEPayload;
  v3 = [(PDDPEEPayload *)&v7 description];
  v4 = [(PDDPEEPayload *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithInt:self->_payloadSize];
    [v3 setObject:v5 forKey:@"payload_size"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  action = self->_action;
  if (action >= 4)
  {
    v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_action];
  }

  else
  {
    v7 = *(&off_100206560 + action);
  }

  [v3 setObject:v7 forKey:@"action"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    type = self->_type;
    if (type >= 0xE)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v9 = *(&off_100206580 + type);
    }

    [v3 setObject:v9 forKey:@"type"];
  }

LABEL_14:
  status = self->_status;
  if (status)
  {
    v11 = [(PDDPStatus *)status dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"status"];
  }

  requestZone = self->_requestZone;
  if (requestZone)
  {
    v13 = [(PDDPEERequestZone *)requestZone dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"request_zone"];
  }

  responseZone = self->_responseZone;
  if (responseZone)
  {
    v15 = [(PDDPEEResponseZone *)responseZone dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"response_zone"];
  }

  location = self->_location;
  if (location)
  {
    v17 = [(PDDPLocation *)location dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"location"];
  }

  person = self->_person;
  if (person)
  {
    v19 = [(PDDPPerson *)person dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"person"];
  }

  classInfo = self->_classInfo;
  if (classInfo)
  {
    v21 = [(PDDPClass *)classInfo dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"class_info"];
  }

  classMember = self->_classMember;
  if (classMember)
  {
    v23 = [(PDDPClassMember *)classMember dictionaryRepresentation];
    [v3 setObject:v23 forKey:@"class_member"];
  }

  role = self->_role;
  if (role)
  {
    v25 = [(PDDPRole *)role dictionaryRepresentation];
    [v3 setObject:v25 forKey:@"role"];
  }

  tempObjectId = self->_tempObjectId;
  if (tempObjectId)
  {
    [v3 setObject:tempObjectId forKey:@"temp_object_id"];
  }

  tempParentObjectId = self->_tempParentObjectId;
  if (tempParentObjectId)
  {
    [v3 setObject:tempParentObjectId forKey:@"temp_parent_object_id"];
  }

  organization = self->_organization;
  if (organization)
  {
    v29 = [(PDDPOrganization *)organization dictionaryRepresentation];
    [v3 setObject:v29 forKey:@"organization"];
  }

  adminRequest = self->_adminRequest;
  if (adminRequest)
  {
    v31 = [(PDDPAdminRequestDetails *)adminRequest dictionaryRepresentation];
    [v3 setObject:v31 forKey:@"admin_request"];
  }

  adminRequestAccount = self->_adminRequestAccount;
  if (adminRequestAccount)
  {
    v33 = [(PDDPAdminRequestAccount *)adminRequestAccount dictionaryRepresentation];
    [v3 setObject:v33 forKey:@"admin_request_account"];
  }

  groupInfo = self->_groupInfo;
  if (groupInfo)
  {
    v35 = [(PDDPGroup *)groupInfo dictionaryRepresentation];
    [v3 setObject:v35 forKey:@"group_info"];
  }

  groupMember = self->_groupMember;
  if (groupMember)
  {
    v37 = [(PDDPGroupMember *)groupMember dictionaryRepresentation];
    [v3 setObject:v37 forKey:@"group_member"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    payloadSize = self->_payloadSize;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  action = self->_action;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

LABEL_5:
  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_requestZone)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_responseZone)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_location)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_person)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_classInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_classMember)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_role)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_tempObjectId)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_tempParentObjectId)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_organization)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_adminRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_adminRequestAccount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_groupInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_groupMember)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[20] = self->_payloadSize;
    *(v4 + 148) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = self->_action;
  *(v4 + 148) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[36] = self->_type;
    *(v4 + 148) |= 4u;
  }

LABEL_5:
  v6 = v4;
  if (self->_status)
  {
    [v4 setStatus:?];
    v4 = v6;
  }

  if (self->_requestZone)
  {
    [v6 setRequestZone:?];
    v4 = v6;
  }

  if (self->_responseZone)
  {
    [v6 setResponseZone:?];
    v4 = v6;
  }

  if (self->_location)
  {
    [v6 setLocation:?];
    v4 = v6;
  }

  if (self->_person)
  {
    [v6 setPerson:?];
    v4 = v6;
  }

  if (self->_classInfo)
  {
    [v6 setClassInfo:?];
    v4 = v6;
  }

  if (self->_classMember)
  {
    [v6 setClassMember:?];
    v4 = v6;
  }

  if (self->_role)
  {
    [v6 setRole:?];
    v4 = v6;
  }

  if (self->_tempObjectId)
  {
    [v6 setTempObjectId:?];
    v4 = v6;
  }

  if (self->_tempParentObjectId)
  {
    [v6 setTempParentObjectId:?];
    v4 = v6;
  }

  if (self->_organization)
  {
    [v6 setOrganization:?];
    v4 = v6;
  }

  if (self->_adminRequest)
  {
    [v6 setAdminRequest:?];
    v4 = v6;
  }

  if (self->_adminRequestAccount)
  {
    [v6 setAdminRequestAccount:?];
    v4 = v6;
  }

  if (self->_groupInfo)
  {
    [v6 setGroupInfo:?];
    v4 = v6;
  }

  if (self->_groupMember)
  {
    [v6 setGroupMember:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 2) = self->_action;
    *(v5 + 148) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 20) = self->_payloadSize;
  *(v5 + 148) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 36) = self->_type;
    *(v5 + 148) |= 4u;
  }

LABEL_5:
  v8 = [(PDDPStatus *)self->_status copyWithZone:a3];
  v9 = v6[15];
  v6[15] = v8;

  v10 = [(PDDPEERequestZone *)self->_requestZone copyWithZone:a3];
  v11 = v6[12];
  v6[12] = v10;

  v12 = [(PDDPEEResponseZone *)self->_responseZone copyWithZone:a3];
  v13 = v6[13];
  v6[13] = v12;

  v14 = [(PDDPLocation *)self->_location copyWithZone:a3];
  v15 = v6[8];
  v6[8] = v14;

  v16 = [(PDDPPerson *)self->_person copyWithZone:a3];
  v17 = v6[11];
  v6[11] = v16;

  v18 = [(PDDPClass *)self->_classInfo copyWithZone:a3];
  v19 = v6[4];
  v6[4] = v18;

  v20 = [(PDDPClassMember *)self->_classMember copyWithZone:a3];
  v21 = v6[5];
  v6[5] = v20;

  v22 = [(PDDPRole *)self->_role copyWithZone:a3];
  v23 = v6[14];
  v6[14] = v22;

  v24 = [(NSString *)self->_tempObjectId copyWithZone:a3];
  v25 = v6[16];
  v6[16] = v24;

  v26 = [(NSString *)self->_tempParentObjectId copyWithZone:a3];
  v27 = v6[17];
  v6[17] = v26;

  v28 = [(PDDPOrganization *)self->_organization copyWithZone:a3];
  v29 = v6[9];
  v6[9] = v28;

  v30 = [(PDDPAdminRequestDetails *)self->_adminRequest copyWithZone:a3];
  v31 = v6[2];
  v6[2] = v30;

  v32 = [(PDDPAdminRequestAccount *)self->_adminRequestAccount copyWithZone:a3];
  v33 = v6[3];
  v6[3] = v32;

  v34 = [(PDDPGroup *)self->_groupInfo copyWithZone:a3];
  v35 = v6[6];
  v6[6] = v34;

  v36 = [(PDDPGroupMember *)self->_groupMember copyWithZone:a3];
  v37 = v6[7];
  v6[7] = v36;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  v5 = *(v4 + 148);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 148) & 2) == 0 || self->_payloadSize != *(v4 + 20))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 148) & 2) != 0)
  {
LABEL_47:
    v21 = 0;
    goto LABEL_48;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 148) & 1) == 0 || self->_action != *(v4 + 2))
    {
      goto LABEL_47;
    }
  }

  else if (*(v4 + 148))
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 148) & 4) == 0 || self->_type != *(v4 + 36))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 148) & 4) != 0)
  {
    goto LABEL_47;
  }

  status = self->_status;
  if (status | *(v4 + 15) && ![(PDDPStatus *)status isEqual:?])
  {
    goto LABEL_47;
  }

  requestZone = self->_requestZone;
  if (requestZone | *(v4 + 12))
  {
    if (![(PDDPEERequestZone *)requestZone isEqual:?])
    {
      goto LABEL_47;
    }
  }

  responseZone = self->_responseZone;
  if (responseZone | *(v4 + 13))
  {
    if (![(PDDPEEResponseZone *)responseZone isEqual:?])
    {
      goto LABEL_47;
    }
  }

  location = self->_location;
  if (location | *(v4 + 8))
  {
    if (![(PDDPLocation *)location isEqual:?])
    {
      goto LABEL_47;
    }
  }

  person = self->_person;
  if (person | *(v4 + 11))
  {
    if (![(PDDPPerson *)person isEqual:?])
    {
      goto LABEL_47;
    }
  }

  classInfo = self->_classInfo;
  if (classInfo | *(v4 + 4))
  {
    if (![(PDDPClass *)classInfo isEqual:?])
    {
      goto LABEL_47;
    }
  }

  classMember = self->_classMember;
  if (classMember | *(v4 + 5))
  {
    if (![(PDDPClassMember *)classMember isEqual:?])
    {
      goto LABEL_47;
    }
  }

  role = self->_role;
  if (role | *(v4 + 14))
  {
    if (![(PDDPRole *)role isEqual:?])
    {
      goto LABEL_47;
    }
  }

  tempObjectId = self->_tempObjectId;
  if (tempObjectId | *(v4 + 16))
  {
    if (![(NSString *)tempObjectId isEqual:?])
    {
      goto LABEL_47;
    }
  }

  tempParentObjectId = self->_tempParentObjectId;
  if (tempParentObjectId | *(v4 + 17))
  {
    if (![(NSString *)tempParentObjectId isEqual:?])
    {
      goto LABEL_47;
    }
  }

  organization = self->_organization;
  if (organization | *(v4 + 9))
  {
    if (![(PDDPOrganization *)organization isEqual:?])
    {
      goto LABEL_47;
    }
  }

  adminRequest = self->_adminRequest;
  if (adminRequest | *(v4 + 2))
  {
    if (![(PDDPAdminRequestDetails *)adminRequest isEqual:?])
    {
      goto LABEL_47;
    }
  }

  adminRequestAccount = self->_adminRequestAccount;
  if (adminRequestAccount | *(v4 + 3))
  {
    if (![(PDDPAdminRequestAccount *)adminRequestAccount isEqual:?])
    {
      goto LABEL_47;
    }
  }

  groupInfo = self->_groupInfo;
  if (groupInfo | *(v4 + 6))
  {
    if (![(PDDPGroup *)groupInfo isEqual:?])
    {
      goto LABEL_47;
    }
  }

  groupMember = self->_groupMember;
  if (groupMember | *(v4 + 7))
  {
    v21 = [(PDDPGroupMember *)groupMember isEqual:?];
  }

  else
  {
    v21 = 1;
  }

LABEL_48:

  return v21;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_payloadSize;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_action;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_type;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(PDDPStatus *)self->_status hash];
  v7 = [(PDDPEERequestZone *)self->_requestZone hash];
  v8 = v6 ^ v7 ^ [(PDDPEEResponseZone *)self->_responseZone hash];
  v9 = [(PDDPLocation *)self->_location hash];
  v10 = v9 ^ [(PDDPPerson *)self->_person hash];
  v11 = v8 ^ v10 ^ [(PDDPClass *)self->_classInfo hash];
  v12 = [(PDDPClassMember *)self->_classMember hash];
  v13 = v12 ^ [(PDDPRole *)self->_role hash];
  v14 = v13 ^ [(NSString *)self->_tempObjectId hash];
  v15 = v11 ^ v14 ^ [(NSString *)self->_tempParentObjectId hash];
  v16 = [(PDDPOrganization *)self->_organization hash];
  v17 = v16 ^ [(PDDPAdminRequestDetails *)self->_adminRequest hash];
  v18 = v17 ^ [(PDDPAdminRequestAccount *)self->_adminRequestAccount hash];
  v19 = v18 ^ [(PDDPGroup *)self->_groupInfo hash];
  return v15 ^ v19 ^ [(PDDPGroupMember *)self->_groupMember hash];
}

- (void)mergeFrom:(id)a3
{
  v31 = a3;
  v4 = *(v31 + 148);
  if ((v4 & 2) != 0)
  {
    self->_payloadSize = *(v31 + 20);
    *&self->_has |= 2u;
    v4 = *(v31 + 148);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v31 + 148) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_action = *(v31 + 2);
  *&self->_has |= 1u;
  if ((*(v31 + 148) & 4) != 0)
  {
LABEL_4:
    self->_type = *(v31 + 36);
    *&self->_has |= 4u;
  }

LABEL_5:
  status = self->_status;
  v6 = *(v31 + 15);
  if (status)
  {
    if (v6)
    {
      [(PDDPStatus *)status mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPEEPayload *)self setStatus:?];
  }

  requestZone = self->_requestZone;
  v8 = *(v31 + 12);
  if (requestZone)
  {
    if (v8)
    {
      [(PDDPEERequestZone *)requestZone mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPEEPayload *)self setRequestZone:?];
  }

  responseZone = self->_responseZone;
  v10 = *(v31 + 13);
  if (responseZone)
  {
    if (v10)
    {
      [(PDDPEEResponseZone *)responseZone mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PDDPEEPayload *)self setResponseZone:?];
  }

  location = self->_location;
  v12 = *(v31 + 8);
  if (location)
  {
    if (v12)
    {
      [(PDDPLocation *)location mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(PDDPEEPayload *)self setLocation:?];
  }

  person = self->_person;
  v14 = *(v31 + 11);
  if (person)
  {
    if (v14)
    {
      [(PDDPPerson *)person mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(PDDPEEPayload *)self setPerson:?];
  }

  classInfo = self->_classInfo;
  v16 = *(v31 + 4);
  if (classInfo)
  {
    if (v16)
    {
      [(PDDPClass *)classInfo mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(PDDPEEPayload *)self setClassInfo:?];
  }

  classMember = self->_classMember;
  v18 = *(v31 + 5);
  if (classMember)
  {
    if (v18)
    {
      [(PDDPClassMember *)classMember mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(PDDPEEPayload *)self setClassMember:?];
  }

  role = self->_role;
  v20 = *(v31 + 14);
  if (role)
  {
    if (v20)
    {
      [(PDDPRole *)role mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(PDDPEEPayload *)self setRole:?];
  }

  if (*(v31 + 16))
  {
    [(PDDPEEPayload *)self setTempObjectId:?];
  }

  if (*(v31 + 17))
  {
    [(PDDPEEPayload *)self setTempParentObjectId:?];
  }

  organization = self->_organization;
  v22 = *(v31 + 9);
  if (organization)
  {
    if (v22)
    {
      [(PDDPOrganization *)organization mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(PDDPEEPayload *)self setOrganization:?];
  }

  adminRequest = self->_adminRequest;
  v24 = *(v31 + 2);
  if (adminRequest)
  {
    if (v24)
    {
      [(PDDPAdminRequestDetails *)adminRequest mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(PDDPEEPayload *)self setAdminRequest:?];
  }

  adminRequestAccount = self->_adminRequestAccount;
  v26 = *(v31 + 3);
  if (adminRequestAccount)
  {
    if (v26)
    {
      [(PDDPAdminRequestAccount *)adminRequestAccount mergeFrom:?];
    }
  }

  else if (v26)
  {
    [(PDDPEEPayload *)self setAdminRequestAccount:?];
  }

  groupInfo = self->_groupInfo;
  v28 = *(v31 + 6);
  if (groupInfo)
  {
    if (v28)
    {
      [(PDDPGroup *)groupInfo mergeFrom:?];
    }
  }

  else if (v28)
  {
    [(PDDPEEPayload *)self setGroupInfo:?];
  }

  groupMember = self->_groupMember;
  v30 = *(v31 + 7);
  if (groupMember)
  {
    if (v30)
    {
      [(PDDPGroupMember *)groupMember mergeFrom:?];
    }
  }

  else if (v30)
  {
    [(PDDPEEPayload *)self setGroupMember:?];
  }
}

@end