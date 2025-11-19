@interface PhotosSeparationCollectionShareParticipant
- (PhotosSeparationCollectionShareParticipant)initWithParticipant:(id)a3 isOwner:(BOOL)a4 readwrite:(BOOL)a5;
@end

@implementation PhotosSeparationCollectionShareParticipant

- (PhotosSeparationCollectionShareParticipant)initWithParticipant:(id)a3 isOwner:(BOOL)a4 readwrite:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = a3;
  v10 = [v9 emailAddress];
  v11 = [v9 phoneNumber];
  if (!v10 || ([ECEmailAddressParser parseEmailAddressString:v10 displayName:0 localPart:0 domain:0 groupList:0]& 1) != 0 || v11)
  {
    v12 = v10;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 0;
    v11 = v10;
  }

  v36 = 0;
  v13 = [[NSDataDetector alloc] initWithTypes:2048 error:&v36];
  v14 = v36;
  if (v13)
  {
    v27 = v6;
    v28 = v5;
    v29 = self;
    v30 = v7;
    v15 = [v13 matchesInString:v11 options:0 range:{0, objc_msgSend(v11, "length")}];
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
            v21 = [v20 phoneNumber];

            v11 = v21;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v17);
    }

    self = v29;
    v7 = v30;
    v6 = v27;
    v5 = v28;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v14;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Participant Recipient can't instantiate detector for phone %@", buf, 0xCu);
  }

LABEL_20:
  if (v6)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  if (v5)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  v31.receiver = self;
  v31.super_class = PhotosSeparationCollectionShareParticipant;
  v24 = [(PhotosSeparationParticipant *)&v31 initWithRole:v22 permission:v23 emailAddress:v12 phoneNumber:v11];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_participant, v7);
  }

  return v25;
}

@end