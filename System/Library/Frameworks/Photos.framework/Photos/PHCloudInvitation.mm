@interface PHCloudInvitation
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
- (NSArray)inviteeEmails;
- (NSArray)inviteePhones;
- (NSString)invitationStateDescription;
- (PHCloudInvitation)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (id)inviteeDisplayNameIncludingEmail:(BOOL)a3;
- (id)personInfoManager;
@end

@implementation PHCloudInvitation

- (NSString)invitationStateDescription
{
  v3 = [(PHCloudInvitation *)self invitationState];
  v4 = 0;
  if (v3 <= 1)
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    if (v3 == 1)
    {
      [(PHCloudInvitation *)self invitationStateLocal];
    }
  }

  else if (v3 == 2)
  {
    goto LABEL_8;
  }

  v4 = PLLocalizedFrameworkString();
LABEL_8:

  return v4;
}

- (NSArray)inviteePhones
{
  v3 = [(PHCloudInvitation *)self personInfoManager];
  v4 = [(PHCloudInvitation *)self cloudGUID];
  v5 = [v3 phonesForInvitationRecordGUID:v4];

  return v5;
}

- (NSArray)inviteeEmails
{
  v3 = [(PHCloudInvitation *)self personInfoManager];
  v4 = [(PHCloudInvitation *)self cloudGUID];
  v5 = [v3 emailsForInvitationRecordGUID:v4];

  return v5;
}

- (id)personInfoManager
{
  v2 = [(PHObject *)self photoLibrary];
  v3 = [v2 photoLibraryBundle];
  v4 = [v3 personInfoManager];

  return v4;
}

- (id)inviteeDisplayNameIncludingEmail:(BOOL)a3
{
  v3 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v5 = [(PHCloudInvitation *)self inviteeFirstName];
  v6 = [(PHCloudInvitation *)self inviteeLastName];
  v7 = [(PHCloudInvitation *)self inviteeFullName];
  v8 = [(PHCloudInvitation *)self inviteeEmails];
  v9 = [v8 firstObject];

  v10 = [(PHCloudInvitation *)self inviteePhones];
  if ([v7 length])
  {
    v11 = v7;
    goto LABEL_3;
  }

  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v5, v6];
    goto LABEL_3;
  }

  if ([v5 length])
  {
    v11 = v5;
    goto LABEL_3;
  }

  if ([v6 length])
  {
    v11 = v6;
LABEL_3:
    v12 = v11;
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  if ([v9 length])
  {
    v12 = v9;
    goto LABEL_6;
  }

  if (v10 && [v10 count])
  {
    v21 = v3;
    v22 = v10;
    v23 = v6;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v10;
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

    v10 = v22;
    v6 = v23;
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
    if ([v9 length])
    {
      v13 = [(__CFString *)v12 stringByAppendingFormat:@" (%@)", v9];

      v12 = v13;
    }

    goto LABEL_6;
  }

  if (v3)
  {
    v12 = 0;
    goto LABEL_4;
  }

LABEL_7:
  v12 = &stru_1F0FC60C8;
LABEL_8:

  return v12;
}

- (PHCloudInvitation)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 objectForKeyedSubscript:@"uuid"];

  if (!v10)
  {
    v11 = PHFetchDictionaryAccessingMutableCopy(v8);
    v12 = [v11 objectForKeyedSubscript:@"cloudGUID"];
    [v11 setObject:v12 forKeyedSubscript:@"uuid"];

    v8 = v11;
  }

  v30.receiver = self;
  v30.super_class = PHCloudInvitation;
  v13 = [(PHObject *)&v30 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:v9];
  if (v13)
  {
    v14 = [v8 objectForKeyedSubscript:@"isMine"];
    v13->_isMine = [v14 BOOLValue];

    v15 = [v8 objectForKeyedSubscript:@"invitationState"];
    v13->_invitationState = [v15 intValue];

    v16 = [v8 objectForKeyedSubscript:@"invitationStateLocal"];
    v13->_invitationStateLocal = [v16 intValue];

    v17 = [v8 objectForKeyedSubscript:@"inviteeFirstName"];
    inviteeFirstName = v13->_inviteeFirstName;
    v13->_inviteeFirstName = v17;

    v19 = [v8 objectForKeyedSubscript:@"inviteeLastName"];
    inviteeLastName = v13->_inviteeLastName;
    v13->_inviteeLastName = v19;

    v21 = [v8 objectForKeyedSubscript:@"inviteeFullName"];
    inviteeFullName = v13->_inviteeFullName;
    v13->_inviteeFullName = v21;

    v23 = [v8 objectForKeyedSubscript:@"inviteeSubscriptionDate"];
    inviteeSubscriptionDate = v13->_inviteeSubscriptionDate;
    v13->_inviteeSubscriptionDate = v23;

    v13->_inviteeEmailKey = [v8 objectForKeyedSubscript:@"inviteeEmailKey"];
    v13->_inviteeHashedPersonID = [v8 objectForKeyedSubscript:@"inviteeHashedPersonID"];
    v25 = [v8 objectForKeyedSubscript:@"albumGUID"];
    albumGUID = v13->_albumGUID;
    v13->_albumGUID = v25;

    v27 = [v8 objectForKeyedSubscript:@"cloudGUID"];
    cloudGUID = v13->_cloudGUID;
    v13->_cloudGUID = v27;
  }

  return v13;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PHCloudInvitation_propertiesToFetchWithHint___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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