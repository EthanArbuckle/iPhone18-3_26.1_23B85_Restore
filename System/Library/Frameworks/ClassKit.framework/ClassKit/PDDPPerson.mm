@interface PDDPPerson
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAccountStatus:(id)status;
- (int)accountStatus;
- (unint64_t)hash;
- (void)addPersonLinks:(id)links;
- (void)addRoleLocations:(id)locations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsFederatedAccount:(BOOL)account;
- (void)setHasIsProgressTrackingAllowed:(BOOL)allowed;
- (void)setHasIsRosterSearchAllowed:(BOOL)allowed;
- (void)setHasPasscodeType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PDDPPerson

- (void)setHasPasscodeType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsProgressTrackingAllowed:(BOOL)allowed
{
  if (allowed)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsFederatedAccount:(BOOL)account
{
  if (account)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addPersonLinks:(id)links
{
  linksCopy = links;
  personLinks = self->_personLinks;
  v8 = linksCopy;
  if (!personLinks)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_personLinks;
    self->_personLinks = v6;

    linksCopy = v8;
    personLinks = self->_personLinks;
  }

  [(NSMutableArray *)personLinks addObject:linksCopy];
}

- (void)addRoleLocations:(id)locations
{
  locationsCopy = locations;
  roleLocations = self->_roleLocations;
  v8 = locationsCopy;
  if (!roleLocations)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_roleLocations;
    self->_roleLocations = v6;

    locationsCopy = v8;
    roleLocations = self->_roleLocations;
  }

  [(NSMutableArray *)roleLocations addObject:locationsCopy];
}

- (void)setHasIsRosterSearchAllowed:(BOOL)allowed
{
  if (allowed)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)accountStatus
{
  if (*&self->_has)
  {
    return self->_accountStatus;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAccountStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"UNKNOWN_STATUS"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"NEW"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"ACTIVE"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"ATO_LOCKED"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"FAILED_PASSWORD_LOCKED"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"INACTIVE"])
  {
    v4 = 5;
  }

  else if ([statusCopy isEqualToString:@"TO_BE_DELETED"])
  {
    v4 = 6;
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
  v7.super_class = PDDPPerson;
  v3 = [(PDDPPerson *)&v7 description];
  dictionaryRepresentation = [(PDDPPerson *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  personId = self->_personId;
  if (personId)
  {
    [v3 setObject:personId forKey:@"person_id"];
  }

  appleId = self->_appleId;
  if (appleId)
  {
    [v4 setObject:appleId forKey:@"apple_id"];
  }

  iCloudUserId = self->_iCloudUserId;
  if (iCloudUserId)
  {
    [v4 setObject:iCloudUserId forKey:@"i_cloud_user_id"];
  }

  orgId = self->_orgId;
  if (orgId)
  {
    [v4 setObject:orgId forKey:@"org_id"];
  }

  givenName = self->_givenName;
  if (givenName)
  {
    [v4 setObject:givenName forKey:@"given_name"];
  }

  middleName = self->_middleName;
  if (middleName)
  {
    [v4 setObject:middleName forKey:@"middle_name"];
  }

  familyName = self->_familyName;
  if (familyName)
  {
    [v4 setObject:familyName forKey:@"family_name"];
  }

  phoneticGivenName = self->_phoneticGivenName;
  if (phoneticGivenName)
  {
    [v4 setObject:phoneticGivenName forKey:@"phonetic_given_name"];
  }

  phoneticMiddleName = self->_phoneticMiddleName;
  if (phoneticMiddleName)
  {
    [v4 setObject:phoneticMiddleName forKey:@"phonetic_middle_name"];
  }

  phoneticFamilyName = self->_phoneticFamilyName;
  if (phoneticFamilyName)
  {
    [v4 setObject:phoneticFamilyName forKey:@"phonetic_family_name"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v42 = [NSNumber numberWithInt:self->_passcodeType];
    [v4 setObject:v42 forKey:@"passcode_type"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_23:
      if ((has & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_23;
  }

  v43 = [NSNumber numberWithBool:self->_isProgressTrackingAllowed];
  [v4 setObject:v43 forKey:@"is_progress_tracking_allowed"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    v16 = [NSNumber numberWithBool:self->_isFederatedAccount];
    [v4 setObject:v16 forKey:@"is_federated_account"];
  }

LABEL_25:
  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    dictionaryRepresentation = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"date_last_modified"];
  }

  if ([(NSMutableArray *)self->_personLinks count])
  {
    v21 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_personLinks, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v22 = self->_personLinks;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v51;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v51 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation3 = [*(*(&v50 + 1) + 8 * i) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation3];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v24);
    }

    [v4 setObject:v21 forKey:@"person_links"];
  }

  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    [v4 setObject:emailAddress forKey:@"email_address"];
  }

  grade = self->_grade;
  if (grade)
  {
    [v4 setObject:grade forKey:@"grade"];
  }

  if ([(NSMutableArray *)self->_roleLocations count])
  {
    v30 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_roleLocations, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v31 = self->_roleLocations;
    v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v47;
      do
      {
        for (j = 0; j != v33; j = j + 1)
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(v31);
          }

          dictionaryRepresentation4 = [*(*(&v46 + 1) + 8 * j) dictionaryRepresentation];
          [v30 addObject:dictionaryRepresentation4];
        }

        v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v33);
    }

    [v4 setObject:v30 forKey:@"role_locations"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v37 = [NSNumber numberWithBool:self->_isRosterSearchAllowed];
    [v4 setObject:v37 forKey:@"is_roster_search_allowed"];
  }

  entityMeta = self->_entityMeta;
  if (entityMeta)
  {
    dictionaryRepresentation5 = [(PDDPEntityMeta *)entityMeta dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"entity_meta"];
  }

  if (*&self->_has)
  {
    accountStatus = self->_accountStatus;
    if (accountStatus >= 7)
    {
      v41 = [NSString stringWithFormat:@"(unknown: %i)", self->_accountStatus];
    }

    else
    {
      v41 = off_100204D88[accountStatus];
    }

    [v4 setObject:v41 forKey:@"account_status"];
  }

  personNumber = self->_personNumber;
  if (personNumber)
  {
    [v4 setObject:personNumber forKey:@"person_number"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_personId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iCloudUserId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_orgId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_givenName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_middleName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_familyName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneticGivenName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneticMiddleName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneticFamilyName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    passcodeType = self->_passcodeType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_23:
      if ((has & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_23;
  }

  isProgressTrackingAllowed = self->_isProgressTrackingAllowed;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    isFederatedAccount = self->_isFederatedAccount;
    PBDataWriterWriteBOOLField();
  }

LABEL_25:
  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = self->_personLinks;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  if (self->_emailAddress)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_grade)
  {
    PBDataWriterWriteStringField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_roleLocations;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    isRosterSearchAllowed = self->_isRosterSearchAllowed;
    PBDataWriterWriteBOOLField();
  }

  if (self->_entityMeta)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    accountStatus = self->_accountStatus;
    PBDataWriterWriteInt32Field();
  }

  if (self->_personNumber)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v15 = toCopy;
  if (self->_personId)
  {
    [toCopy setPersonId:?];
    toCopy = v15;
  }

  if (self->_appleId)
  {
    [v15 setAppleId:?];
    toCopy = v15;
  }

  if (self->_iCloudUserId)
  {
    [v15 setICloudUserId:?];
    toCopy = v15;
  }

  if (self->_orgId)
  {
    [v15 setOrgId:?];
    toCopy = v15;
  }

  if (self->_givenName)
  {
    [v15 setGivenName:?];
    toCopy = v15;
  }

  if (self->_middleName)
  {
    [v15 setMiddleName:?];
    toCopy = v15;
  }

  if (self->_familyName)
  {
    [v15 setFamilyName:?];
    toCopy = v15;
  }

  if (self->_phoneticGivenName)
  {
    [v15 setPhoneticGivenName:?];
    toCopy = v15;
  }

  if (self->_phoneticMiddleName)
  {
    [v15 setPhoneticMiddleName:?];
    toCopy = v15;
  }

  if (self->_phoneticFamilyName)
  {
    [v15 setPhoneticFamilyName:?];
    toCopy = v15;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 26) = self->_passcodeType;
    toCopy[172] |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_23:
      if ((has & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_23;
  }

  toCopy[169] = self->_isProgressTrackingAllowed;
  toCopy[172] |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    toCopy[168] = self->_isFederatedAccount;
    toCopy[172] |= 4u;
  }

LABEL_25:
  if (self->_dateCreated)
  {
    [v15 setDateCreated:?];
  }

  if (self->_dateLastModified)
  {
    [v15 setDateLastModified:?];
  }

  if ([(PDDPPerson *)self personLinksCount])
  {
    [v15 clearPersonLinks];
    personLinksCount = [(PDDPPerson *)self personLinksCount];
    if (personLinksCount)
    {
      v7 = personLinksCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PDDPPerson *)self personLinksAtIndex:i];
        [v15 addPersonLinks:v9];
      }
    }
  }

  if (self->_emailAddress)
  {
    [v15 setEmailAddress:?];
  }

  if (self->_grade)
  {
    [v15 setGrade:?];
  }

  if ([(PDDPPerson *)self roleLocationsCount])
  {
    [v15 clearRoleLocations];
    roleLocationsCount = [(PDDPPerson *)self roleLocationsCount];
    if (roleLocationsCount)
    {
      v11 = roleLocationsCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(PDDPPerson *)self roleLocationsAtIndex:j];
        [v15 addRoleLocations:v13];
      }
    }
  }

  v14 = v15;
  if ((*&self->_has & 0x10) != 0)
  {
    v15[170] = self->_isRosterSearchAllowed;
    v15[172] |= 0x10u;
  }

  if (self->_entityMeta)
  {
    [v15 setEntityMeta:?];
    v14 = v15;
  }

  if (*&self->_has)
  {
    *(v14 + 2) = self->_accountStatus;
    v14[172] |= 1u;
  }

  if (self->_personNumber)
  {
    [v15 setPersonNumber:?];
    v14 = v15;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_personId copyWithZone:zone];
  v7 = v5[14];
  v5[14] = v6;

  v8 = [(NSString *)self->_appleId copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_iCloudUserId copyWithZone:zone];
  v11 = v5[10];
  v5[10] = v10;

  v12 = [(NSString *)self->_orgId copyWithZone:zone];
  v13 = v5[12];
  v5[12] = v12;

  v14 = [(NSString *)self->_givenName copyWithZone:zone];
  v15 = v5[8];
  v5[8] = v14;

  v16 = [(NSString *)self->_middleName copyWithZone:zone];
  v17 = v5[11];
  v5[11] = v16;

  v18 = [(NSString *)self->_familyName copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(NSString *)self->_phoneticGivenName copyWithZone:zone];
  v21 = v5[18];
  v5[18] = v20;

  v22 = [(NSString *)self->_phoneticMiddleName copyWithZone:zone];
  v23 = v5[19];
  v5[19] = v22;

  v24 = [(NSString *)self->_phoneticFamilyName copyWithZone:zone];
  v25 = v5[17];
  v5[17] = v24;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 26) = self->_passcodeType;
    *(v5 + 172) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 169) = self->_isProgressTrackingAllowed;
  *(v5 + 172) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 168) = self->_isFederatedAccount;
    *(v5 + 172) |= 4u;
  }

LABEL_5:
  v27 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v28 = v5[3];
  v5[3] = v27;

  v29 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v30 = v5[4];
  v5[4] = v29;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v31 = self->_personLinks;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v57;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v57 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v56 + 1) + 8 * i) copyWithZone:zone];
        [v5 addPersonLinks:v36];
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v33);
  }

  v37 = [(NSString *)self->_emailAddress copyWithZone:zone];
  v38 = v5[5];
  v5[5] = v37;

  v39 = [(NSString *)self->_grade copyWithZone:zone];
  v40 = v5[9];
  v5[9] = v39;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v41 = self->_roleLocations;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v53;
    do
    {
      for (j = 0; j != v43; j = j + 1)
      {
        if (*v53 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = [*(*(&v52 + 1) + 8 * j) copyWithZone:{zone, v52}];
        [v5 addRoleLocations:v46];
      }

      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v43);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 170) = self->_isRosterSearchAllowed;
    *(v5 + 172) |= 0x10u;
  }

  v47 = [(PDDPEntityMeta *)self->_entityMeta copyWithZone:zone, v52];
  v48 = v5[6];
  v5[6] = v47;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_accountStatus;
    *(v5 + 172) |= 1u;
  }

  v49 = [(NSString *)self->_personNumber copyWithZone:zone];
  v50 = v5[16];
  v5[16] = v49;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_72;
  }

  personId = self->_personId;
  if (personId | *(equalCopy + 14))
  {
    if (![(NSString *)personId isEqual:?])
    {
      goto LABEL_72;
    }
  }

  appleId = self->_appleId;
  if (appleId | *(equalCopy + 2))
  {
    if (![(NSString *)appleId isEqual:?])
    {
      goto LABEL_72;
    }
  }

  iCloudUserId = self->_iCloudUserId;
  if (iCloudUserId | *(equalCopy + 10))
  {
    if (![(NSString *)iCloudUserId isEqual:?])
    {
      goto LABEL_72;
    }
  }

  orgId = self->_orgId;
  if (orgId | *(equalCopy + 12))
  {
    if (![(NSString *)orgId isEqual:?])
    {
      goto LABEL_72;
    }
  }

  givenName = self->_givenName;
  if (givenName | *(equalCopy + 8))
  {
    if (![(NSString *)givenName isEqual:?])
    {
      goto LABEL_72;
    }
  }

  middleName = self->_middleName;
  if (middleName | *(equalCopy + 11))
  {
    if (![(NSString *)middleName isEqual:?])
    {
      goto LABEL_72;
    }
  }

  familyName = self->_familyName;
  if (familyName | *(equalCopy + 7))
  {
    if (![(NSString *)familyName isEqual:?])
    {
      goto LABEL_72;
    }
  }

  phoneticGivenName = self->_phoneticGivenName;
  if (phoneticGivenName | *(equalCopy + 18))
  {
    if (![(NSString *)phoneticGivenName isEqual:?])
    {
      goto LABEL_72;
    }
  }

  phoneticMiddleName = self->_phoneticMiddleName;
  if (phoneticMiddleName | *(equalCopy + 19))
  {
    if (![(NSString *)phoneticMiddleName isEqual:?])
    {
      goto LABEL_72;
    }
  }

  phoneticFamilyName = self->_phoneticFamilyName;
  if (phoneticFamilyName | *(equalCopy + 17))
  {
    if (![(NSString *)phoneticFamilyName isEqual:?])
    {
      goto LABEL_72;
    }
  }

  v15 = *(equalCopy + 172);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 172) & 2) == 0 || self->_passcodeType != *(equalCopy + 26))
    {
      goto LABEL_72;
    }
  }

  else if ((*(equalCopy + 172) & 2) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 172) & 8) == 0)
    {
      goto LABEL_72;
    }

    v25 = *(equalCopy + 169);
    if (self->_isProgressTrackingAllowed)
    {
      if ((*(equalCopy + 169) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if (*(equalCopy + 169))
    {
      goto LABEL_72;
    }
  }

  else if ((*(equalCopy + 172) & 8) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 172) & 4) == 0)
    {
      goto LABEL_72;
    }

    v26 = *(equalCopy + 168);
    if (self->_isFederatedAccount)
    {
      if ((*(equalCopy + 168) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if (*(equalCopy + 168))
    {
      goto LABEL_72;
    }
  }

  else if ((*(equalCopy + 172) & 4) != 0)
  {
    goto LABEL_72;
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(equalCopy + 3) && ![(PDDPDate *)dateCreated isEqual:?])
  {
    goto LABEL_72;
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 4))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_72;
    }
  }

  personLinks = self->_personLinks;
  if (personLinks | *(equalCopy + 15))
  {
    if (![(NSMutableArray *)personLinks isEqual:?])
    {
      goto LABEL_72;
    }
  }

  emailAddress = self->_emailAddress;
  if (emailAddress | *(equalCopy + 5))
  {
    if (![(NSString *)emailAddress isEqual:?])
    {
      goto LABEL_72;
    }
  }

  grade = self->_grade;
  if (grade | *(equalCopy + 9))
  {
    if (![(NSString *)grade isEqual:?])
    {
      goto LABEL_72;
    }
  }

  roleLocations = self->_roleLocations;
  if (roleLocations | *(equalCopy + 20))
  {
    if (![(NSMutableArray *)roleLocations isEqual:?])
    {
      goto LABEL_72;
    }
  }

  has = self->_has;
  v23 = *(equalCopy + 172);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 172) & 0x10) == 0)
    {
      goto LABEL_72;
    }

    v27 = *(equalCopy + 170);
    if (self->_isRosterSearchAllowed)
    {
      if ((*(equalCopy + 170) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if (*(equalCopy + 170))
    {
      goto LABEL_72;
    }
  }

  else if ((*(equalCopy + 172) & 0x10) != 0)
  {
    goto LABEL_72;
  }

  entityMeta = self->_entityMeta;
  if (!(entityMeta | *(equalCopy + 6)))
  {
    goto LABEL_48;
  }

  if (![(PDDPEntityMeta *)entityMeta isEqual:?])
  {
LABEL_72:
    v29 = 0;
    goto LABEL_73;
  }

  has = self->_has;
  v23 = *(equalCopy + 172);
LABEL_48:
  if (has)
  {
    if ((v23 & 1) == 0 || self->_accountStatus != *(equalCopy + 2))
    {
      goto LABEL_72;
    }
  }

  else if (v23)
  {
    goto LABEL_72;
  }

  personNumber = self->_personNumber;
  if (personNumber | *(equalCopy + 16))
  {
    v29 = [(NSString *)personNumber isEqual:?];
  }

  else
  {
    v29 = 1;
  }

LABEL_73:

  return v29;
}

- (unint64_t)hash
{
  v25 = [(NSString *)self->_personId hash];
  v24 = [(NSString *)self->_appleId hash];
  v23 = [(NSString *)self->_iCloudUserId hash];
  v22 = [(NSString *)self->_orgId hash];
  v21 = [(NSString *)self->_givenName hash];
  v20 = [(NSString *)self->_middleName hash];
  v19 = [(NSString *)self->_familyName hash];
  v18 = [(NSString *)self->_phoneticGivenName hash];
  v17 = [(NSString *)self->_phoneticMiddleName hash];
  v16 = [(NSString *)self->_phoneticFamilyName hash];
  if ((*&self->_has & 2) == 0)
  {
    v15 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v15 = 2654435761 * self->_passcodeType;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = 2654435761 * self->_isProgressTrackingAllowed;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v13 = 2654435761 * self->_isFederatedAccount;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:
  v3 = [(PDDPDate *)self->_dateCreated hash];
  v4 = [(PDDPDate *)self->_dateLastModified hash];
  v5 = [(NSMutableArray *)self->_personLinks hash];
  v6 = [(NSString *)self->_emailAddress hash];
  v7 = [(NSString *)self->_grade hash];
  v8 = [(NSMutableArray *)self->_roleLocations hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v9 = 2654435761 * self->_isRosterSearchAllowed;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PDDPEntityMeta *)self->_entityMeta hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_accountStatus;
  }

  else
  {
    v11 = 0;
  }

  return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_personNumber hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 14))
  {
    [(PDDPPerson *)self setPersonId:?];
  }

  if (*(fromCopy + 2))
  {
    [(PDDPPerson *)self setAppleId:?];
  }

  if (*(fromCopy + 10))
  {
    [(PDDPPerson *)self setICloudUserId:?];
  }

  if (*(fromCopy + 12))
  {
    [(PDDPPerson *)self setOrgId:?];
  }

  if (*(fromCopy + 8))
  {
    [(PDDPPerson *)self setGivenName:?];
  }

  if (*(fromCopy + 11))
  {
    [(PDDPPerson *)self setMiddleName:?];
  }

  if (*(fromCopy + 7))
  {
    [(PDDPPerson *)self setFamilyName:?];
  }

  if (*(fromCopy + 18))
  {
    [(PDDPPerson *)self setPhoneticGivenName:?];
  }

  if (*(fromCopy + 19))
  {
    [(PDDPPerson *)self setPhoneticMiddleName:?];
  }

  if (*(fromCopy + 17))
  {
    [(PDDPPerson *)self setPhoneticFamilyName:?];
  }

  v5 = *(fromCopy + 172);
  if ((v5 & 2) != 0)
  {
    self->_passcodeType = *(fromCopy + 26);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 172);
    if ((v5 & 8) == 0)
    {
LABEL_23:
      if ((v5 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*(fromCopy + 172) & 8) == 0)
  {
    goto LABEL_23;
  }

  self->_isProgressTrackingAllowed = *(fromCopy + 169);
  *&self->_has |= 8u;
  if ((*(fromCopy + 172) & 4) != 0)
  {
LABEL_24:
    self->_isFederatedAccount = *(fromCopy + 168);
    *&self->_has |= 4u;
  }

LABEL_25:
  dateCreated = self->_dateCreated;
  v7 = *(fromCopy + 3);
  if (dateCreated)
  {
    if (v7)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDDPPerson *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v9 = *(fromCopy + 4);
  if (dateLastModified)
  {
    if (v9)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PDDPPerson *)self setDateLastModified:?];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = *(fromCopy + 15);
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PDDPPerson *)self addPersonLinks:*(*(&v26 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 5))
  {
    [(PDDPPerson *)self setEmailAddress:?];
  }

  if (*(fromCopy + 9))
  {
    [(PDDPPerson *)self setGrade:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = *(fromCopy + 20);
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(PDDPPerson *)self addRoleLocations:*(*(&v22 + 1) + 8 * j), v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  if ((*(fromCopy + 172) & 0x10) != 0)
  {
    self->_isRosterSearchAllowed = *(fromCopy + 170);
    *&self->_has |= 0x10u;
  }

  entityMeta = self->_entityMeta;
  v21 = *(fromCopy + 6);
  if (entityMeta)
  {
    if (v21)
    {
      [(PDDPEntityMeta *)entityMeta mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(PDDPPerson *)self setEntityMeta:?];
  }

  if (*(fromCopy + 172))
  {
    self->_accountStatus = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 16))
  {
    [(PDDPPerson *)self setPersonNumber:?];
  }
}

@end