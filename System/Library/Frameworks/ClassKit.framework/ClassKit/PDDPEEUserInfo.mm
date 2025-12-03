@interface PDDPEEUserInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLocations:(id)locations;
- (void)addPrivileges:(id)privileges;
- (void)addRoles:(id)roles;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsEduUser:(BOOL)user;
- (void)setHasOrganizationFacetimeMessagesEnabled:(BOOL)enabled;
- (void)setHasOrganizationProgressTrackingAllowed:(BOOL)allowed;
- (void)writeTo:(id)to;
@end

@implementation PDDPEEUserInfo

- (void)addPrivileges:(id)privileges
{
  privilegesCopy = privileges;
  privileges = self->_privileges;
  v8 = privilegesCopy;
  if (!privileges)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_privileges;
    self->_privileges = v6;

    privilegesCopy = v8;
    privileges = self->_privileges;
  }

  [(NSMutableArray *)privileges addObject:privilegesCopy];
}

- (void)addRoles:(id)roles
{
  rolesCopy = roles;
  roles = self->_roles;
  v8 = rolesCopy;
  if (!roles)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_roles;
    self->_roles = v6;

    rolesCopy = v8;
    roles = self->_roles;
  }

  [(NSMutableArray *)roles addObject:rolesCopy];
}

- (void)addLocations:(id)locations
{
  locationsCopy = locations;
  locations = self->_locations;
  v8 = locationsCopy;
  if (!locations)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_locations;
    self->_locations = v6;

    locationsCopy = v8;
    locations = self->_locations;
  }

  [(NSMutableArray *)locations addObject:locationsCopy];
}

- (void)setHasIsEduUser:(BOOL)user
{
  if (user)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasOrganizationProgressTrackingAllowed:(BOOL)allowed
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

- (void)setHasOrganizationFacetimeMessagesEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPEEUserInfo;
  v3 = [(PDDPEEUserInfo *)&v7 description];
  dictionaryRepresentation = [(PDDPEEUserInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  userInfo = self->_userInfo;
  if (userInfo)
  {
    dictionaryRepresentation = [(PDDPUserInfo *)userInfo dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"user_info"];
  }

  if ([(NSMutableArray *)self->_privileges count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_privileges, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v7 = self->_privileges;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v44;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v44 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"privileges"];
  }

  if ([(NSMutableArray *)self->_roles count])
  {
    v13 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_roles, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v14 = self->_roles;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v39 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"roles"];
  }

  if ([(NSMutableArray *)self->_locations count])
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_locations, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = self->_locations;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v36;
      do
      {
        for (k = 0; k != v23; k = k + 1)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation4 = [*(*(&v35 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation4];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKey:@"locations"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v27 = [NSNumber numberWithBool:self->_isEduUser];
    [v3 setObject:v27 forKey:@"is_edu_user"];
  }

  organizationId = self->_organizationId;
  if (organizationId)
  {
    [v3 setObject:organizationId forKey:@"organization_id"];
  }

  organizationName = self->_organizationName;
  if (organizationName)
  {
    [v3 setObject:organizationName forKey:@"organization_name"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v33 = [NSNumber numberWithBool:self->_organizationProgressTrackingAllowed];
    [v3 setObject:v33 forKey:@"organization_progress_tracking_allowed"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_38:
      if ((has & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_38;
  }

  v34 = [NSNumber numberWithBool:self->_organizationFacetimeMessagesEnabled, v35];
  [v3 setObject:v34 forKey:@"organization_facetime_messages_enabled"];

  if (*&self->_has)
  {
LABEL_39:
    v31 = [NSNumber numberWithBool:self->_analyticsOptedIn, v35];
    [v3 setObject:v31 forKey:@"analytics_opted_in"];
  }

LABEL_40:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_userInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = self->_privileges;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v7);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = self->_roles;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v32 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v13);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = self->_locations;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v19);
  }

  if ((*&self->_has & 2) != 0)
  {
    isEduUser = self->_isEduUser;
    PBDataWriterWriteBOOLField();
  }

  if (self->_organizationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_organizationName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_32;
    }

LABEL_36:
    organizationFacetimeMessagesEnabled = self->_organizationFacetimeMessagesEnabled;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  organizationProgressTrackingAllowed = self->_organizationProgressTrackingAllowed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  if (has)
  {
LABEL_33:
    analyticsOptedIn = self->_analyticsOptedIn;
    PBDataWriterWriteBOOLField();
  }

LABEL_34:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_userInfo)
  {
    [toCopy setUserInfo:?];
  }

  if ([(PDDPEEUserInfo *)self privilegesCount])
  {
    [toCopy clearPrivileges];
    privilegesCount = [(PDDPEEUserInfo *)self privilegesCount];
    if (privilegesCount)
    {
      v5 = privilegesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPEEUserInfo *)self privilegesAtIndex:i];
        [toCopy addPrivileges:v7];
      }
    }
  }

  if ([(PDDPEEUserInfo *)self rolesCount])
  {
    [toCopy clearRoles];
    rolesCount = [(PDDPEEUserInfo *)self rolesCount];
    if (rolesCount)
    {
      v9 = rolesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PDDPEEUserInfo *)self rolesAtIndex:j];
        [toCopy addRoles:v11];
      }
    }
  }

  if ([(PDDPEEUserInfo *)self locationsCount])
  {
    [toCopy clearLocations];
    locationsCount = [(PDDPEEUserInfo *)self locationsCount];
    if (locationsCount)
    {
      v13 = locationsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(PDDPEEUserInfo *)self locationsAtIndex:k];
        [toCopy addLocations:v15];
      }
    }
  }

  v16 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[57] = self->_isEduUser;
    toCopy[60] |= 2u;
  }

  if (self->_organizationId)
  {
    [toCopy setOrganizationId:?];
    v16 = toCopy;
  }

  if (self->_organizationName)
  {
    [toCopy setOrganizationName:?];
    v16 = toCopy;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v16[59] = self->_organizationProgressTrackingAllowed;
    v16[60] |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_23:
      if ((has & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_23;
  }

  v16[58] = self->_organizationFacetimeMessagesEnabled;
  v16[60] |= 4u;
  if (*&self->_has)
  {
LABEL_24:
    v16[56] = self->_analyticsOptedIn;
    v16[60] |= 1u;
  }

LABEL_25:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDDPUserInfo *)self->_userInfo copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = self->_privileges;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v40 + 1) + 8 * i) copyWithZone:zone];
        [v5 addPrivileges:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v10);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = self->_roles;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v36 + 1) + 8 * j) copyWithZone:zone];
        [v5 addRoles:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v16);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = self->_locations;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v32 + 1) + 8 * k) copyWithZone:{zone, v32}];
        [v5 addLocations:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v22);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 57) = self->_isEduUser;
    *(v5 + 60) |= 2u;
  }

  v26 = [(NSString *)self->_organizationId copyWithZone:zone, v32];
  v27 = v5[2];
  v5[2] = v26;

  v28 = [(NSString *)self->_organizationName copyWithZone:zone];
  v29 = v5[3];
  v5[3] = v28;

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_26;
    }

LABEL_30:
    *(v5 + 58) = self->_organizationFacetimeMessagesEnabled;
    *(v5 + 60) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    goto LABEL_27;
  }

  *(v5 + 59) = self->_organizationProgressTrackingAllowed;
  *(v5 + 60) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  if (has)
  {
LABEL_27:
    *(v5 + 56) = self->_analyticsOptedIn;
    *(v5 + 60) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  userInfo = self->_userInfo;
  if (userInfo | *(equalCopy + 6))
  {
    if (![(PDDPUserInfo *)userInfo isEqual:?])
    {
      goto LABEL_26;
    }
  }

  privileges = self->_privileges;
  if (privileges | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)privileges isEqual:?])
    {
      goto LABEL_26;
    }
  }

  roles = self->_roles;
  if (roles | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)roles isEqual:?])
    {
      goto LABEL_26;
    }
  }

  locations = self->_locations;
  if (locations | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)locations isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v9 = *(equalCopy + 60);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0)
    {
      goto LABEL_26;
    }

    v14 = *(equalCopy + 57);
    if (self->_isEduUser)
    {
      if ((*(equalCopy + 57) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (*(equalCopy + 57))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_26;
  }

  organizationId = self->_organizationId;
  if (organizationId | *(equalCopy + 2) && ![(NSString *)organizationId isEqual:?])
  {
    goto LABEL_26;
  }

  organizationName = self->_organizationName;
  if (organizationName | *(equalCopy + 3))
  {
    if (![(NSString *)organizationName isEqual:?])
    {
      goto LABEL_26;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0)
    {
      goto LABEL_26;
    }

    v15 = *(equalCopy + 59);
    if (self->_organizationProgressTrackingAllowed)
    {
      if ((*(equalCopy + 59) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (*(equalCopy + 59))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 60) & 4) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

  if ((*(equalCopy + 60) & 4) == 0)
  {
    goto LABEL_26;
  }

  v16 = *(equalCopy + 58);
  if (self->_organizationFacetimeMessagesEnabled)
  {
    if ((*(equalCopy + 58) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 58))
  {
    goto LABEL_26;
  }

LABEL_20:
  v12 = (*(equalCopy + 60) & 1) == 0;
  if (*&self->_has)
  {
    if (*(equalCopy + 60))
    {
      if (self->_analyticsOptedIn)
      {
        if (*(equalCopy + 56))
        {
          goto LABEL_46;
        }
      }

      else if (!*(equalCopy + 56))
      {
LABEL_46:
        v12 = 1;
        goto LABEL_27;
      }
    }

    goto LABEL_26;
  }

LABEL_27:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(PDDPUserInfo *)self->_userInfo hash];
  v4 = [(NSMutableArray *)self->_privileges hash];
  v5 = [(NSMutableArray *)self->_roles hash];
  v6 = [(NSMutableArray *)self->_locations hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_isEduUser;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_organizationId hash];
  v9 = [(NSString *)self->_organizationName hash];
  if ((*&self->_has & 8) == 0)
  {
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = 0;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_10:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v10 = 2654435761 * self->_organizationProgressTrackingAllowed;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v11 = 2654435761 * self->_organizationFacetimeMessagesEnabled;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v12 = 2654435761 * self->_analyticsOptedIn;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  userInfo = self->_userInfo;
  v6 = *(fromCopy + 6);
  if (userInfo)
  {
    if (v6)
    {
      [(PDDPUserInfo *)userInfo mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPEEUserInfo *)self setUserInfo:?];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = *(fromCopy + 4);
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PDDPEEUserInfo *)self addPrivileges:*(*(&v31 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v9);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = *(fromCopy + 5);
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(PDDPEEUserInfo *)self addRoles:*(*(&v27 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v14);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = *(fromCopy + 1);
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(PDDPEEUserInfo *)self addLocations:*(*(&v23 + 1) + 8 * k), v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v19);
  }

  if ((*(fromCopy + 60) & 2) != 0)
  {
    self->_isEduUser = *(fromCopy + 57);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    [(PDDPEEUserInfo *)self setOrganizationId:?];
  }

  if (*(fromCopy + 3))
  {
    [(PDDPEEUserInfo *)self setOrganizationName:?];
  }

  v22 = *(fromCopy + 60);
  if ((v22 & 8) == 0)
  {
    if ((*(fromCopy + 60) & 4) == 0)
    {
      goto LABEL_35;
    }

LABEL_39:
    self->_organizationFacetimeMessagesEnabled = *(fromCopy + 58);
    *&self->_has |= 4u;
    if ((*(fromCopy + 60) & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  self->_organizationProgressTrackingAllowed = *(fromCopy + 59);
  *&self->_has |= 8u;
  v22 = *(fromCopy + 60);
  if ((v22 & 4) != 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  if (v22)
  {
LABEL_36:
    self->_analyticsOptedIn = *(fromCopy + 56);
    *&self->_has |= 1u;
  }

LABEL_37:
}

@end