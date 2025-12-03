@interface EKUIFacetimeManager
+ (BOOL)canFaceTime:(unint64_t)time withContacts:(id)contacts;
+ (BOOL)canFaceTime:(unint64_t)time withParticipants:(id)participants;
+ (BOOL)faceTimeAvailable:(unint64_t)available;
+ (id)faceTimeURLForType:(unint64_t)type andHandle:(id)handle;
+ (id)faceTimeURLForType:(unint64_t)type withContacts:(id)contacts;
+ (id)faceTimeURLForType:(unint64_t)type withHandles:(id)handles;
+ (id)faceTimeURLForType:(unint64_t)type withParticipants:(id)participants;
+ (id)handlesForContacts:(id)contacts;
+ (id)handlesForParticipants:(id)participants;
+ (id)preferredHandleForContact:(id)contact withDefaultPhoneNumber:(id)number emailAddress:(id)address;
+ (void)startFaceTime:(unint64_t)time withContacts:(id)contacts;
+ (void)startFaceTime:(unint64_t)time withParticipants:(id)participants;
@end

@implementation EKUIFacetimeManager

+ (id)preferredHandleForContact:(id)contact withDefaultPhoneNumber:(id)number emailAddress:(id)address
{
  contactCopy = contact;
  numberCopy = number;
  addressCopy = address;
  v10 = EKWeakLinkClass();
  v11 = numberCopy;
  v12 = addressCopy;
  phoneNumbers = [contactCopy phoneNumbers];
  v14 = [phoneNumbers count];

  stringValue = v11;
  if (v14)
  {
    phoneNumbers2 = [contactCopy phoneNumbers];
    v17 = [phoneNumbers2 objectAtIndexedSubscript:0];

    value = [v17 value];
    stringValue = [value stringValue];
  }

  emailAddresses = [contactCopy emailAddresses];
  v20 = [emailAddresses count];

  value2 = v12;
  if (v20)
  {
    emailAddresses2 = [contactCopy emailAddresses];
    v23 = [emailAddresses2 objectAtIndexedSubscript:0];

    value2 = [v23 value];
  }

  if (stringValue)
  {
    v24 = [v10 alloc];
    v25 = 2;
    v26 = stringValue;
LABEL_9:
    v27 = [v24 initWithType:v25 value:v26];
    goto LABEL_10;
  }

  if (value2)
  {
    v24 = [v10 alloc];
    v25 = 3;
    v26 = value2;
    goto LABEL_9;
  }

  v27 = 0;
LABEL_10:

  return v27;
}

+ (id)handlesForParticipants:(id)participants
{
  participantsCopy = participants;
  EKWeakLinkClass();
  [MEMORY[0x1E695DF70] array];
  v8 = v7 = participantsCopy;
  v4 = participantsCopy;
  CalendarFoundationPerformBlockOnSharedContactStore();
  v5 = v8;

  return v8;
}

void __46__EKUIFacetimeManager_handlesForParticipants___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    v21 = *MEMORY[0x1E695C330];
    v20 = *MEMORY[0x1E695C208];
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = [v7 phoneNumber];
        v9 = [v7 emailAddress];
        if (v9)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
LABEL_14:
          v16 = objc_alloc(*(a1 + 56));
          v17 = 2;
          v18 = v8;
          goto LABEL_15;
        }

        v28[0] = v21;
        v28[1] = v20;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
        v12 = [v7 contactPredicate];
        v13 = [v22 unifiedContactsMatchingPredicate:v12 keysToFetch:v11 error:0];

        if ([v13 count])
        {
          v14 = [v13 objectAtIndexedSubscript:0];
          v15 = [*(a1 + 48) preferredHandleForContact:v14 withDefaultPhoneNumber:v8 emailAddress:v9];

          if (v15)
          {
            goto LABEL_16;
          }

          if (v8)
          {
            goto LABEL_14;
          }
        }

        else
        {

          if (v8)
          {
            goto LABEL_14;
          }
        }

        if (v9)
        {
          v16 = objc_alloc(*(a1 + 56));
          v17 = 3;
          v18 = v9;
LABEL_15:
          v15 = [v16 initWithType:v17 value:v18];
          if (!v15)
          {
            goto LABEL_17;
          }

LABEL_16:
          [*(a1 + 40) addObject:v15];
        }

LABEL_17:

        ++v6;
      }

      while (v4 != v6);
      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      v4 = v19;
    }

    while (v19);
  }
}

+ (id)handlesForContacts:(id)contacts
{
  v18 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = contactsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self preferredHandleForContact:*(*(&v13 + 1) + 8 * i) withDefaultPhoneNumber:0 emailAddress:{0, v13}];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

+ (BOOL)faceTimeAvailable:(unint64_t)available
{
  defaultCapabilitiesManager = [EKWeakLinkClass() defaultCapabilitiesManager];
  v5 = defaultCapabilitiesManager;
  if (available)
  {
    isFaceTimeAudioAvailable = 1;
  }

  else
  {
    isFaceTimeAudioAvailable = [defaultCapabilitiesManager isFaceTimeAudioAvailable];
  }

  if ([v5 isFaceTimeAppAvailable])
  {
    v7 = [v5 isConferencingAvailable] & isFaceTimeAudioAvailable;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)canFaceTime:(unint64_t)time withParticipants:(id)participants
{
  participantsCopy = participants;
  if ([self faceTimeAvailable:time])
  {
    v7 = [self handlesForParticipants:participantsCopy];
    v8 = [v7 count];
    v9 = v8 == [participantsCopy count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)canFaceTime:(unint64_t)time withContacts:(id)contacts
{
  contactsCopy = contacts;
  if ([self faceTimeAvailable:time])
  {
    v7 = [self handlesForContacts:contactsCopy];
    v8 = [v7 count];
    v9 = v8 == [contactsCopy count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)faceTimeURLForType:(unint64_t)type andHandle:(id)handle
{
  handleCopy = handle;
  v6 = EKWeakLinkClass();
  v7 = EKWeakLinkClass();
  v8 = objc_alloc_init(v6);
  faceTimeProvider = [v8 faceTimeProvider];
  v10 = [[v7 alloc] initWithProvider:faceTimeProvider];
  [v10 setHandle:handleCopy];

  [v10 setVideo:type == 1];
  v11 = [v10 URL];

  return v11;
}

+ (id)faceTimeURLForType:(unint64_t)type withHandles:(id)handles
{
  v28 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  v7 = EKWeakLinkClass();
  v8 = EKWeakLinkClass();
  if ([handlesCopy count] == 1)
  {
    firstObject = [handlesCopy firstObject];
    v10 = [self faceTimeURLForType:type andHandle:firstObject];

    goto LABEL_16;
  }

  v22 = v8;
  v11 = [MEMORY[0x1E695DFA8] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = handlesCopy;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13;
  v15 = *v24;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v23 + 1) + 8 * i);
      if ([(objc_class *)v7 instancesRespondToSelector:sel_initWithHandle_nickname_])
      {
        v18 = [[v7 alloc] initWithHandle:v17 nickname:0];
      }

      else
      {
        if (![(objc_class *)v7 instancesRespondToSelector:sel_initWithHandle_])
        {
          continue;
        }

        v18 = [[v7 alloc] initWithHandle:v17];
      }

      v19 = v18;
      [v11 addObject:v18];
    }

    v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v14);
LABEL_15:

  v20 = [[v22 alloc] initWithRemoteMembers:v11];
  [v20 setVideoEnabled:0];
  v10 = [v20 URL];

LABEL_16:

  return v10;
}

+ (id)faceTimeURLForType:(unint64_t)type withParticipants:(id)participants
{
  participantsCopy = participants;
  v7 = [objc_opt_class() handlesForParticipants:participantsCopy];

  v8 = [self faceTimeURLForType:type withHandles:v7];

  return v8;
}

+ (id)faceTimeURLForType:(unint64_t)type withContacts:(id)contacts
{
  contactsCopy = contacts;
  v7 = [objc_opt_class() handlesForContacts:contactsCopy];

  v8 = [self faceTimeURLForType:type withHandles:v7];

  return v8;
}

+ (void)startFaceTime:(unint64_t)time withParticipants:(id)participants
{
  v5 = [self faceTimeURLForType:time withParticipants:participants];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace openURL:v5 configuration:0 completionHandler:&__block_literal_global_62];
}

void __54__EKUIFacetimeManager_startFaceTime_withParticipants___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Failed to open URL when FaceTime URL tapped: %@", &v7, 0xCu);
    }
  }
}

+ (void)startFaceTime:(unint64_t)time withContacts:(id)contacts
{
  v5 = [self faceTimeURLForType:time withContacts:contacts];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace openURL:v5 configuration:0 completionHandler:&__block_literal_global_36];
}

void __50__EKUIFacetimeManager_startFaceTime_withContacts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Failed to open URL when FaceTime URL tapped: %@", &v7, 0xCu);
    }
  }
}

@end