@interface PhotosSeparationSharedAlbumParticipant
- (PhotosSeparationSharedAlbumParticipant)initWithInvitationRecord:(id)a3 isOwner:(BOOL)a4 readwrite:(BOOL)a5;
- (id)nameComponents;
@end

@implementation PhotosSeparationSharedAlbumParticipant

- (id)nameComponents
{
  v3 = objc_alloc_init(NSPersonNameComponents);
  v4 = [(PHCloudSharedAlbumInvitationRecord *)self->_invitationRecord inviteeFirstName];
  [v3 setGivenName:v4];

  v5 = [(PHCloudSharedAlbumInvitationRecord *)self->_invitationRecord inviteeLastName];
  [v3 setFamilyName:v5];

  return v3;
}

- (PhotosSeparationSharedAlbumParticipant)initWithInvitationRecord:(id)a3 isOwner:(BOOL)a4 readwrite:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = a3;
  v10 = [v9 inviteeEmails];
  v11 = [v10 firstObject];

  v12 = [v9 inviteePhones];
  v13 = [v12 firstObject];

  if (!v11 || ([ECEmailAddressParser parseEmailAddressString:v11 displayName:0 localPart:0 domain:0 groupList:0]& 1) != 0 || v13)
  {
    if (!v13)
    {
      v14 = v11;
      goto LABEL_22;
    }

    v32 = v6;
    v14 = v11;
  }

  else
  {
    v32 = v6;
    v14 = 0;
    v13 = v11;
  }

  v38 = 0;
  v15 = [[NSDataDetector alloc] initWithTypes:2048 error:&v38];
  v16 = v38;
  if (v15)
  {
    v29 = v5;
    v30 = self;
    v31 = v7;
    v17 = [v15 matchesInString:v13 options:0 range:{0, objc_msgSend(v13, "length")}];
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
            v23 = [v22 phoneNumber];

            v13 = v23;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v19);
    }

    self = v30;
    v7 = v31;
    v5 = v29;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v16;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invitation Recipient can't instantiate detector for phone %@", buf, 0xCu);
  }

  v6 = v32;
LABEL_22:
  if (v6)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  if (v5)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  v33.receiver = self;
  v33.super_class = PhotosSeparationSharedAlbumParticipant;
  v26 = [(PhotosSeparationParticipant *)&v33 initWithRole:v24 permission:v25 emailAddress:v14 phoneNumber:v13];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_invitationRecord, v7);
  }

  return v27;
}

@end