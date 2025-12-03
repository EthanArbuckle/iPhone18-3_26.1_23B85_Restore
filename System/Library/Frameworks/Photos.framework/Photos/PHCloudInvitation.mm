@interface PHCloudInvitation
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
- (NSArray)inviteeEmails;
- (NSArray)inviteePhones;
- (NSString)invitationStateDescription;
- (PHCloudInvitation)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
- (id)inviteeDisplayNameIncludingEmail:(BOOL)email;
- (id)personInfoManager;
@end

@implementation PHCloudInvitation

- (NSString)invitationStateDescription
{
  invitationState = [(PHCloudInvitation *)self invitationState];
  v4 = 0;
  if (invitationState <= 1)
  {
    if (!invitationState)
    {
      goto LABEL_8;
    }

    if (invitationState == 1)
    {
      [(PHCloudInvitation *)self invitationStateLocal];
    }
  }

  else if (invitationState == 2)
  {
    goto LABEL_8;
  }

  v4 = PLLocalizedFrameworkString();
LABEL_8:

  return v4;
}

- (NSArray)inviteePhones
{
  personInfoManager = [(PHCloudInvitation *)self personInfoManager];
  cloudGUID = [(PHCloudInvitation *)self cloudGUID];
  v5 = [personInfoManager phonesForInvitationRecordGUID:cloudGUID];

  return v5;
}

- (NSArray)inviteeEmails
{
  personInfoManager = [(PHCloudInvitation *)self personInfoManager];
  cloudGUID = [(PHCloudInvitation *)self cloudGUID];
  v5 = [personInfoManager emailsForInvitationRecordGUID:cloudGUID];

  return v5;
}

- (id)personInfoManager
{
  photoLibrary = [(PHObject *)self photoLibrary];
  photoLibraryBundle = [photoLibrary photoLibraryBundle];
  personInfoManager = [photoLibraryBundle personInfoManager];

  return personInfoManager;
}

- (id)inviteeDisplayNameIncludingEmail:(BOOL)email
{
  emailCopy = email;
  v29 = *MEMORY[0x1E69E9840];
  inviteeFirstName = [(PHCloudInvitation *)self inviteeFirstName];
  inviteeLastName = [(PHCloudInvitation *)self inviteeLastName];
  inviteeFullName = [(PHCloudInvitation *)self inviteeFullName];
  inviteeEmails = [(PHCloudInvitation *)self inviteeEmails];
  firstObject = [inviteeEmails firstObject];

  inviteePhones = [(PHCloudInvitation *)self inviteePhones];
  if ([inviteeFullName length])
  {
    v11 = inviteeFullName;
    goto LABEL_3;
  }

  if ([inviteeFirstName length] && objc_msgSend(inviteeLastName, "length"))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", inviteeFirstName, inviteeLastName];
    goto LABEL_3;
  }

  if ([inviteeFirstName length])
  {
    v11 = inviteeFirstName;
    goto LABEL_3;
  }

  if ([inviteeLastName length])
  {
    v11 = inviteeLastName;
LABEL_3:
    v12 = v11;
    if (!emailCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  if ([firstObject length])
  {
    v12 = firstObject;
    goto LABEL_6;
  }

  if (inviteePhones && [inviteePhones count])
  {
    v21 = emailCopy;
    v22 = inviteePhones;
    v23 = inviteeLastName;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = inviteePhones;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v12 = 0;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if (v12)
          {
            v20 = [(__CFString *)v12 stringByAppendingFormat:@" / %@", *(*(&v24 + 1) + 8 * i)];

            v12 = v20;
          }

          else
          {
            v12 = *(*(&v24 + 1) + 8 * i);
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    else
    {
      v12 = 0;
    }

    inviteePhones = v22;
    inviteeLastName = v23;
    if (!v21)
    {
LABEL_6:
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_4:
    if ([firstObject length])
    {
      v13 = [(__CFString *)v12 stringByAppendingFormat:@" (%@)", firstObject];

      v12 = v13;
    }

    goto LABEL_6;
  }

  if (emailCopy)
  {
    v12 = 0;
    goto LABEL_4;
  }

LABEL_7:
  v12 = &stru_1F0FC60C8;
LABEL_8:

  return v12;
}

- (PHCloudInvitation)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  libraryCopy = library;
  v10 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];

  if (!v10)
  {
    v11 = PHFetchDictionaryAccessingMutableCopy(dictionaryCopy);
    v12 = [v11 objectForKeyedSubscript:@"cloudGUID"];
    [v11 setObject:v12 forKeyedSubscript:@"uuid"];

    dictionaryCopy = v11;
  }

  v30.receiver = self;
  v30.super_class = PHCloudInvitation;
  v13 = [(PHObject *)&v30 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:libraryCopy];
  if (v13)
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:@"isMine"];
    v13->_isMine = [v14 BOOLValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"invitationState"];
    v13->_invitationState = [v15 intValue];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"invitationStateLocal"];
    v13->_invitationStateLocal = [v16 intValue];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"inviteeFirstName"];
    inviteeFirstName = v13->_inviteeFirstName;
    v13->_inviteeFirstName = v17;

    v19 = [dictionaryCopy objectForKeyedSubscript:@"inviteeLastName"];
    inviteeLastName = v13->_inviteeLastName;
    v13->_inviteeLastName = v19;

    v21 = [dictionaryCopy objectForKeyedSubscript:@"inviteeFullName"];
    inviteeFullName = v13->_inviteeFullName;
    v13->_inviteeFullName = v21;

    v23 = [dictionaryCopy objectForKeyedSubscript:@"inviteeSubscriptionDate"];
    inviteeSubscriptionDate = v13->_inviteeSubscriptionDate;
    v13->_inviteeSubscriptionDate = v23;

    v13->_inviteeEmailKey = [dictionaryCopy objectForKeyedSubscript:@"inviteeEmailKey"];
    v13->_inviteeHashedPersonID = [dictionaryCopy objectForKeyedSubscript:@"inviteeHashedPersonID"];
    v25 = [dictionaryCopy objectForKeyedSubscript:@"albumGUID"];
    albumGUID = v13->_albumGUID;
    v13->_albumGUID = v25;

    v27 = [dictionaryCopy objectForKeyedSubscript:@"cloudGUID"];
    cloudGUID = v13->_cloudGUID;
    v13->_cloudGUID = v27;
  }

  return v13;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PHCloudInvitation_propertiesToFetchWithHint___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (propertiesToFetchWithHint__onceToken_23447 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_23447, block);
  }

  v3 = propertiesToFetchWithHint__array_23448;

  return v3;
}

void __47__PHCloudInvitation_propertiesToFetchWithHint___block_invoke()
{
  v4[12] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v0 setName:@"objectID"];
  v1 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [v0 setExpression:v1];

  [v0 setExpressionResultType:2000];
  v4[0] = v0;
  v4[1] = @"albumGUID";
  v4[2] = @"cloudGUID";
  v4[3] = @"invitationState";
  v4[4] = @"invitationStateLocal";
  v4[5] = @"inviteeEmailKey";
  v4[6] = @"inviteeFirstName";
  v4[7] = @"inviteeFullName";
  v4[8] = @"inviteeHashedPersonID";
  v4[9] = @"inviteeLastName";
  v4[10] = @"inviteeSubscriptionDate";
  v4[11] = @"isMine";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:12];
  v3 = propertiesToFetchWithHint__array_23448;
  propertiesToFetchWithHint__array_23448 = v2;
}

@end