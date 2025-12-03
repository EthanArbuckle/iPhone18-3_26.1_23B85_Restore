@interface PhotosSeparationSharedAlbumParticipant
- (PhotosSeparationSharedAlbumParticipant)initWithInvitationRecord:(id)record isOwner:(BOOL)owner readwrite:(BOOL)readwrite;
- (id)nameComponents;
@end

@implementation PhotosSeparationSharedAlbumParticipant

- (id)nameComponents
{
  v3 = objc_alloc_init(NSPersonNameComponents);
  inviteeFirstName = [(PHCloudSharedAlbumInvitationRecord *)self->_invitationRecord inviteeFirstName];
  [v3 setGivenName:inviteeFirstName];

  inviteeLastName = [(PHCloudSharedAlbumInvitationRecord *)self->_invitationRecord inviteeLastName];
  [v3 setFamilyName:inviteeLastName];

  return v3;
}

- (PhotosSeparationSharedAlbumParticipant)initWithInvitationRecord:(id)record isOwner:(BOOL)owner readwrite:(BOOL)readwrite
{
  readwriteCopy = readwrite;
  ownerCopy = owner;
  recordCopy = record;
  recordCopy2 = record;
  inviteeEmails = [recordCopy2 inviteeEmails];
  firstObject = [inviteeEmails firstObject];

  inviteePhones = [recordCopy2 inviteePhones];
  firstObject2 = [inviteePhones firstObject];

  if (!firstObject || ([ECEmailAddressParser parseEmailAddressString:firstObject displayName:0 localPart:0 domain:0 groupList:0]& 1) != 0 || firstObject2)
  {
    if (!firstObject2)
    {
      v14 = firstObject;
      goto LABEL_22;
    }

    v32 = ownerCopy;
    v14 = firstObject;
  }

  else
  {
    v32 = ownerCopy;
    v14 = 0;
    firstObject2 = firstObject;
  }

  v38 = 0;
  v15 = [[NSDataDetector alloc] initWithTypes:2048 error:&v38];
  v16 = v38;
  if (v15)
  {
    v29 = readwriteCopy;
    selfCopy = self;
    v31 = recordCopy;
    v17 = [v15 matchesInString:firstObject2 options:0 range:{0, objc_msgSend(firstObject2, "length")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v34 + 1) + 8 * i);
          if ([v22 resultType] == &stru_7D8.size)
          {
            phoneNumber = [v22 phoneNumber];

            firstObject2 = phoneNumber;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v19);
    }

    self = selfCopy;
    recordCopy = v31;
    readwriteCopy = v29;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v16;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invitation Recipient can't instantiate detector for phone %@", buf, 0xCu);
  }

  ownerCopy = v32;
LABEL_22:
  if (ownerCopy)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  if (readwriteCopy)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  v33.receiver = self;
  v33.super_class = PhotosSeparationSharedAlbumParticipant;
  v26 = [(PhotosSeparationParticipant *)&v33 initWithRole:v24 permission:v25 emailAddress:v14 phoneNumber:firstObject2];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_invitationRecord, recordCopy);
  }

  return v27;
}

@end