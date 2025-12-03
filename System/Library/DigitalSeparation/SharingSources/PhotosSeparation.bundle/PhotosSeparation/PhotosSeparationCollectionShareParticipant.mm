@interface PhotosSeparationCollectionShareParticipant
- (PhotosSeparationCollectionShareParticipant)initWithParticipant:(id)participant isOwner:(BOOL)owner readwrite:(BOOL)readwrite;
@end

@implementation PhotosSeparationCollectionShareParticipant

- (PhotosSeparationCollectionShareParticipant)initWithParticipant:(id)participant isOwner:(BOOL)owner readwrite:(BOOL)readwrite
{
  readwriteCopy = readwrite;
  ownerCopy = owner;
  participantCopy = participant;
  participantCopy2 = participant;
  emailAddress = [participantCopy2 emailAddress];
  phoneNumber = [participantCopy2 phoneNumber];
  if (!emailAddress || ([ECEmailAddressParser parseEmailAddressString:emailAddress displayName:0 localPart:0 domain:0 groupList:0]& 1) != 0 || phoneNumber)
  {
    v12 = emailAddress;
    if (!phoneNumber)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 0;
    phoneNumber = emailAddress;
  }

  v36 = 0;
  v13 = [[NSDataDetector alloc] initWithTypes:2048 error:&v36];
  v14 = v36;
  if (v13)
  {
    v27 = ownerCopy;
    v28 = readwriteCopy;
    selfCopy = self;
    v30 = participantCopy;
    v15 = [v13 matchesInString:phoneNumber options:0 range:{0, objc_msgSend(phoneNumber, "length")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          if ([v20 resultType] == &stru_7D8.size)
          {
            phoneNumber2 = [v20 phoneNumber];

            phoneNumber = phoneNumber2;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v17);
    }

    self = selfCopy;
    participantCopy = v30;
    ownerCopy = v27;
    readwriteCopy = v28;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v14;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Participant Recipient can't instantiate detector for phone %@", buf, 0xCu);
  }

LABEL_20:
  if (ownerCopy)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  if (readwriteCopy)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  v31.receiver = self;
  v31.super_class = PhotosSeparationCollectionShareParticipant;
  v24 = [(PhotosSeparationParticipant *)&v31 initWithRole:v22 permission:v23 emailAddress:v12 phoneNumber:phoneNumber];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_participant, participantCopy);
  }

  return v25;
}

@end