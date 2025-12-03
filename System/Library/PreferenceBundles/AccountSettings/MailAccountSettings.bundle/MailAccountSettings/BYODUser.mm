@interface BYODUser
+ (id)log;
- (BYODUser)initWithDictionary:(id)dictionary;
- (id)emailAddress;
- (id)fullName;
- (id)invitationHandle;
- (id)memberIdentifier;
- (id)phoneNumber;
@end

@implementation BYODUser

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6833C;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D65D0 != -1)
  {
    dispatch_once(&qword_D65D0, block);
  }

  v2 = qword_D65C8;

  return v2;
}

- (BYODUser)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = BYODUser;
  v5 = [(BYODUser *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dsid"];
    dsid = v5->_dsid;
    v5->_dsid = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"primaryEmail"];
    primaryEmail = v5->_primaryEmail;
    v5->_primaryEmail = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"isFamilyMember"];
    v5->_isFamilyMember = [v14 BOOLValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"invitedEmail"];
    invitedEmail = v5->_invitedEmail;
    v5->_invitedEmail = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:@"invitedPhoneNumber"];
    invitedPhoneNumber = v5->_invitedPhoneNumber;
    v5->_invitedPhoneNumber = v17;

    v19 = [dictionaryCopy objectForKeyedSubscript:@"invitedOnDate"];
    invitedOnDate = v5->_invitedOnDate;
    v5->_invitedOnDate = v19;

    v21 = [dictionaryCopy objectForKeyedSubscript:@"emails"];
    v22 = objc_alloc_init(NSMutableArray);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v24)
    {
      v25 = *v34;
      do
      {
        v26 = 0;
        do
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v33 + 1) + 8 * v26);
          v28 = [BYODEmail alloc];
          v29 = [(BYODEmail *)v28 initWithDictionary:v27, v33];
          [v22 addObject:v29];

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [v23 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v24);
    }

    objc_storeStrong(&v5->_emails, v22);
    v30 = [dictionaryCopy objectForKeyedSubscript:@"invitationStatus"];
    invitationStatus = v5->_invitationStatus;
    v5->_invitationStatus = v30;
  }

  return v5;
}

- (id)fullName
{
  if ([(NSString *)self->_firstName length]|| [(NSString *)self->_lastName length])
  {
    v3 = +[BYODContactsManager sharedInstance];
    invitationHandle = [v3 fullNameWithFirstName:self->_firstName lastName:self->_lastName];
  }

  else
  {
    v7 = +[BYODContactsManager sharedInstance];
    v3 = [v7 fetchNameFromContacts:self];

    if ([v3 length])
    {
      invitationHandle = v3;
      v3 = invitationHandle;
    }

    else
    {
      invitationHandle = [(BYODUser *)self invitationHandle];
    }
  }

  v5 = invitationHandle;

  return v5;
}

- (id)emailAddress
{
  p_primaryEmail = &self->_primaryEmail;
  if ([(NSString *)self->_primaryEmail length])
  {
    goto LABEL_4;
  }

  invitedEmail = self->_invitedEmail;
  p_invitedEmail = &self->_invitedEmail;
  if ([(NSString *)invitedEmail length])
  {
    p_primaryEmail = p_invitedEmail;
LABEL_4:
    v6 = *p_primaryEmail;
    goto LABEL_5;
  }

  v6 = &stru_B9FC8;
LABEL_5:

  return v6;
}

- (id)phoneNumber
{
  if ([(NSString *)self->_invitedPhoneNumber length])
  {
    invitedPhoneNumber = self->_invitedPhoneNumber;
  }

  else
  {
    invitedPhoneNumber = &stru_B9FC8;
  }

  return invitedPhoneNumber;
}

- (id)invitationHandle
{
  emailAddress = [(BYODUser *)self emailAddress];
  if ([emailAddress length])
  {
    emailAddress2 = [(BYODUser *)self emailAddress];
  }

  else
  {
    phoneNumber = [(BYODUser *)self phoneNumber];
    if ([phoneNumber length])
    {
      emailAddress2 = [(BYODUser *)self phoneNumber];
    }

    else
    {
      emailAddress2 = &stru_B9FC8;
    }
  }

  return emailAddress2;
}

- (id)memberIdentifier
{
  dsid = [(BYODUser *)self dsid];
  v4 = [dsid length];

  if (v4)
  {
    dsid2 = [(BYODUser *)self dsid];
  }

  else
  {
    invitationHandle = [(BYODUser *)self invitationHandle];
    v7 = [invitationHandle length];

    if (v7)
    {
      dsid2 = [(BYODUser *)self invitationHandle];
    }

    else
    {
      v8 = +[BYODUser log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "returning nil as member identifier.", v10, 2u);
      }

      dsid2 = 0;
    }
  }

  return dsid2;
}

@end