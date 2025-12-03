@interface PDDPOrganization
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOrganizationType:(id)type;
- (int)organizationType;
- (unint64_t)hash;
- (void)addEmailDomains:(id)domains;
- (void)addLocations:(id)locations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPOrganization

- (int)organizationType
{
  if (*&self->_has)
  {
    return self->_organizationType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsOrganizationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_ORGANIZATION_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"EDUCATION"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"BUSINESS"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (void)addEmailDomains:(id)domains
{
  domainsCopy = domains;
  emailDomains = self->_emailDomains;
  v8 = domainsCopy;
  if (!emailDomains)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_emailDomains;
    self->_emailDomains = v6;

    domainsCopy = v8;
    emailDomains = self->_emailDomains;
  }

  [(NSMutableArray *)emailDomains addObject:domainsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPOrganization;
  v3 = [(PDDPOrganization *)&v7 description];
  dictionaryRepresentation = [(PDDPOrganization *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  organizationId = self->_organizationId;
  if (organizationId)
  {
    [v3 setObject:organizationId forKey:@"organization_id"];
  }

  organizationName = self->_organizationName;
  if (organizationName)
  {
    [v4 setObject:organizationName forKey:@"organization_name"];
  }

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

  if (*&self->_has)
  {
    organizationType = self->_organizationType;
    if (organizationType >= 3)
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_organizationType];
    }

    else
    {
      v12 = off_100204940[organizationType];
    }

    [v4 setObject:v12 forKey:@"organization_type"];
  }

  if ([(NSMutableArray *)self->_locations count])
  {
    v13 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_locations, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_locations;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"locations"];
  }

  emailDomains = self->_emailDomains;
  if (emailDomains)
  {
    [v4 setObject:emailDomains forKey:@"email_domains"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_organizationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_organizationName)
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

  if (*&self->_has)
  {
    organizationType = self->_organizationType;
    PBDataWriterWriteInt32Field();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_locations;
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
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = self->_emailDomains;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  v13 = toCopy;
  if (self->_organizationId)
  {
    [toCopy setOrganizationId:?];
    toCopy = v13;
  }

  if (self->_organizationName)
  {
    [v13 setOrganizationName:?];
    toCopy = v13;
  }

  if (self->_dateCreated)
  {
    [v13 setDateCreated:?];
    toCopy = v13;
  }

  if (self->_dateLastModified)
  {
    [v13 setDateLastModified:?];
    toCopy = v13;
  }

  if (*&self->_has)
  {
    *(toCopy + 14) = self->_organizationType;
    *(toCopy + 60) |= 1u;
  }

  if ([(PDDPOrganization *)self locationsCount])
  {
    [v13 clearLocations];
    locationsCount = [(PDDPOrganization *)self locationsCount];
    if (locationsCount)
    {
      v6 = locationsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPOrganization *)self locationsAtIndex:i];
        [v13 addLocations:v8];
      }
    }
  }

  if ([(PDDPOrganization *)self emailDomainsCount])
  {
    [v13 clearEmailDomains];
    emailDomainsCount = [(PDDPOrganization *)self emailDomainsCount];
    if (emailDomainsCount)
    {
      v10 = emailDomainsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(PDDPOrganization *)self emailDomainsAtIndex:j];
        [v13 addEmailDomains:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_organizationId copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_organizationName copyWithZone:zone];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  if (*&self->_has)
  {
    *(v5 + 14) = self->_organizationType;
    *(v5 + 60) |= 1u;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = self->_locations;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v31 + 1) + 8 * i) copyWithZone:zone];
        [v5 addLocations:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v16);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = self->_emailDomains;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v27 + 1) + 8 * j) copyWithZone:{zone, v27}];
        [v5 addEmailDomains:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v22);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  organizationId = self->_organizationId;
  if (organizationId | *(equalCopy + 5))
  {
    if (![(NSString *)organizationId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  organizationName = self->_organizationName;
  if (organizationName | *(equalCopy + 6))
  {
    if (![(NSString *)organizationName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(equalCopy + 1))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_19;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 2))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v9 = *(equalCopy + 60);
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_organizationType != *(equalCopy + 14))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 60))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  locations = self->_locations;
  if (locations | *(equalCopy + 4) && ![(NSMutableArray *)locations isEqual:?])
  {
    goto LABEL_19;
  }

  emailDomains = self->_emailDomains;
  if (emailDomains | *(equalCopy + 3))
  {
    v12 = [(NSMutableArray *)emailDomains isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_organizationId hash];
  v4 = [(NSString *)self->_organizationName hash];
  v5 = [(PDDPDate *)self->_dateCreated hash];
  v6 = [(PDDPDate *)self->_dateLastModified hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_organizationType;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSMutableArray *)self->_locations hash];
  return v8 ^ v9 ^ [(NSMutableArray *)self->_emailDomains hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 5))
  {
    [(PDDPOrganization *)self setOrganizationId:?];
  }

  if (*(fromCopy + 6))
  {
    [(PDDPOrganization *)self setOrganizationName:?];
  }

  dateCreated = self->_dateCreated;
  v6 = *(fromCopy + 1);
  if (dateCreated)
  {
    if (v6)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPOrganization *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v8 = *(fromCopy + 2);
  if (dateLastModified)
  {
    if (v8)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPOrganization *)self setDateLastModified:?];
  }

  if (*(fromCopy + 60))
  {
    self->_organizationType = *(fromCopy + 14);
    *&self->_has |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = *(fromCopy + 4);
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(PDDPOrganization *)self addLocations:*(*(&v23 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v11);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = *(fromCopy + 3);
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(PDDPOrganization *)self addEmailDomains:*(*(&v19 + 1) + 8 * j), v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

@end