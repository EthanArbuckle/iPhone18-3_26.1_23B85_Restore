@interface BYODGetDomainResult
- (BOOL)hasEmails;
- (BOOL)hasEmailsForDsid:(id)dsid;
- (BOOL)hasUnverifiedEmail;
- (BOOL)isDNSVerfied;
- (BOOL)isDomainInProgress;
- (BOOL)isOwner:(id)owner;
- (BYODGetDomainResult)initWithDictionary:(id)dictionary;
- (NSString)ef_publicDescription;
- (id)getDomainOwnerMember;
- (id)getMemberFromDSID:(id)d;
- (id)getMemberFromIdentifier:(id)identifier;
@end

@implementation BYODGetDomainResult

- (BYODGetDomainResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = BYODGetDomainResult;
  v5 = [(BYODGetDomainResult *)&v27 init];
  if (v5)
  {
    v6 = [BYODDomain alloc];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
    v8 = [(BYODDomain *)v6 initWithDictionary:v7];
    domain = v5->_domain;
    v5->_domain = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"maxEmailsPerUser"];
    v5->_maxEmailsPerUser = [v10 integerValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"maxMembersPerDomain"];
    v5->_maxMembersPerDomain = [v11 integerValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"members"];
    v13 = objc_alloc_init(NSMutableArray);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v15)
    {
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v23 + 1) + 8 * v17);
          v19 = [BYODUser alloc];
          v20 = [(BYODUser *)v19 initWithDictionary:v18, v23];
          [(NSArray *)v13 addObject:v20];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    members = v5->_members;
    v5->_members = v13;
  }

  return v5;
}

- (BOOL)hasUnverifiedEmail
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = self->_members;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v14 = *v20;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v2);
        }

        v5 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        emails = [v5 emails];
        v7 = [emails countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v7)
        {
          v8 = *v16;
          while (2)
          {
            for (j = 0; j != v7; j = j + 1)
            {
              if (*v16 != v8)
              {
                objc_enumerationMutation(emails);
              }

              status = [*(*(&v15 + 1) + 8 * j) status];
              v11 = [status isEqualToString:@"PENDING"];

              if (v11)
              {

                v12 = 1;
                goto LABEL_19;
              }
            }

            v7 = [emails countByEnumeratingWithState:&v15 objects:v23 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
      v12 = 0;
    }

    while (v3);
  }

  else
  {
    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (BOOL)hasEmails
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_members;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        emails = [*(*(&v9 + 1) + 8 * i) emails];
        v7 = [emails count] == 0;

        if (!v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)getMemberFromDSID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_members;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        dsid = [v9 dsid];
        v11 = [dCopy isEqualToString:dsid];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)getDomainOwnerMember
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_members;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = *v16;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        domain = [(BYODGetDomainResult *)self domain];
        owner = [domain owner];
        dsid = [owner dsid];
        dsid2 = [v6 dsid];
        v11 = [dsid isEqualToString:dsid2];

        if (v11)
        {
          v12 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)getMemberFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_members;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        memberIdentifier = [v9 memberIdentifier];
        v11 = [identifierCopy isEqualToString:memberIdentifier];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)isOwner:(id)owner
{
  ownerCopy = owner;
  owner = [(BYODDomain *)self->_domain owner];
  dsid = [owner dsid];
  v7 = [ownerCopy isEqualToString:dsid];

  return v7;
}

- (BOOL)isDNSVerfied
{
  status = [(BYODDomain *)self->_domain status];
  v3 = [status isEqualToString:@"COMPLETE"];

  return v3;
}

- (BOOL)isDomainInProgress
{
  verificationStatus = [(BYODDomain *)self->_domain verificationStatus];
  if ([verificationStatus isEqualToString:@"NOT_STARTED"])
  {
    status = [(BYODDomain *)self->_domain status];
    v5 = [status isEqualToString:@"IN_PROGRESS"];

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)hasEmailsForDsid:(id)dsid
{
  v3 = [(BYODGetDomainResult *)self getMemberFromDSID:dsid];
  emails = [v3 emails];
  v5 = [emails count] != 0;

  return v5;
}

- (NSString)ef_publicDescription
{
  isDNSVerfied = [(BYODGetDomainResult *)self isDNSVerfied];
  hasEmails = [(BYODGetDomainResult *)self hasEmails];
  ef_publicDescription = [(BYODDomain *)self->_domain ef_publicDescription];
  v6 = [NSString stringWithFormat:@"GetDomainResult: isDNSVerified %d, hasEmails %d, domain: %@ ", isDNSVerfied, hasEmails, ef_publicDescription];

  return v6;
}

@end