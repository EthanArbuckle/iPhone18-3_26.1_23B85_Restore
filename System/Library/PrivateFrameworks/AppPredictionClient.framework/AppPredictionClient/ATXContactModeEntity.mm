@interface ATXContactModeEntity
+ (id)cnContactIdsOfEmergencyContacts;
+ (id)cnContactIdsOfFavoriteContactsWithContactStore:(id)store;
+ (id)cnContactIdsOfICloudFamilyMembers;
+ (id)vipContactEmailAddresses;
- (ATXContactModeEntity)initWithCoder:(id)coder;
- (ATXContactModeEntity)initWithDisplayName:(id)name rawIdentifier:(id)identifier cnContactId:(id)id stableContactIdentifier:(id)contactIdentifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isVIPContactGivenVIPs:(id)ps contactStore:(id)store;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)jsonDict;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXContactModeEntity

- (ATXContactModeEntity)initWithDisplayName:(id)name rawIdentifier:(id)identifier cnContactId:(id)id stableContactIdentifier:(id)contactIdentifier
{
  nameCopy = name;
  identifierCopy = identifier;
  idCopy = id;
  contactIdentifierCopy = contactIdentifier;
  v15 = contactIdentifierCopy;
  if (!identifierCopy && !idCopy && !contactIdentifierCopy)
  {
    [ATXContactModeEntity initWithDisplayName:a2 rawIdentifier:self cnContactId:? stableContactIdentifier:?];
  }

  v26.receiver = self;
  v26.super_class = ATXContactModeEntity;
  v16 = [(ATXContactModeEntity *)&v26 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    displayName = v16->_displayName;
    v16->_displayName = v17;

    v19 = [identifierCopy copy];
    rawIdentifier = v16->_rawIdentifier;
    v16->_rawIdentifier = v19;

    v21 = [idCopy copy];
    cnContactId = v16->_cnContactId;
    v16->_cnContactId = v21;

    v23 = [v15 copy];
    stableContactIdentifier = v16->_stableContactIdentifier;
    v16->_stableContactIdentifier = v23;
  }

  return v16;
}

- (id)identifier
{
  stableContactIdentifier = self->_stableContactIdentifier;
  if (!stableContactIdentifier)
  {
    stableContactIdentifier = self->_cnContactId;
    if (!stableContactIdentifier)
    {
      stableContactIdentifier = self->_rawIdentifier;
    }
  }

  v3 = stableContactIdentifier;

  return v3;
}

- (id)jsonDict
{
  v19[5] = *MEMORY[0x1E69E9840];
  v18[0] = @"displayName";
  displayName = [(ATXContactModeEntity *)self displayName];
  v4 = displayName;
  if (!displayName)
  {
    displayName = [MEMORY[0x1E695DFB0] null];
  }

  v17 = displayName;
  v19[0] = displayName;
  v18[1] = @"rawIdentifier";
  rawIdentifier = [(ATXContactModeEntity *)self rawIdentifier];
  v6 = rawIdentifier;
  if (!rawIdentifier)
  {
    rawIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v16 = rawIdentifier;
  v19[1] = rawIdentifier;
  v18[2] = @"cnContactId";
  cnContactId = [(ATXContactModeEntity *)self cnContactId];
  null = cnContactId;
  if (!cnContactId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = null;
  v18[3] = @"stableContactIdentifier";
  stableContactIdentifier = [(ATXContactModeEntity *)self stableContactIdentifier];
  null2 = stableContactIdentifier;
  if (!stableContactIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = null2;
  v18[4] = @"scoreMetadata";
  scoreMetadata = [(ATXContactModeEntity *)self scoreMetadata];
  jsonDict = [scoreMetadata jsonDict];
  null3 = jsonDict;
  if (!jsonDict)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = null3;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
  if (!jsonDict)
  {
  }

  if (!stableContactIdentifier)
  {
  }

  if (!cnContactId)
  {
  }

  if (!v6)
  {
  }

  if (!v4)
  {
  }

  return v14;
}

- (NSString)debugDescription
{
  jsonDict = [(ATXContactModeEntity *)self jsonDict];
  v3 = [jsonDict description];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(ATXContactModeEntity *)self identifier];
  v11 = *&self->_displayName;
  cnContactId = self->_cnContactId;
  stableContactIdentifier = self->_stableContactIdentifier;
  scoreMetadata = [(ATXContactModeEntity *)self scoreMetadata];
  [scoreMetadata score];
  v9 = [v3 initWithFormat:@"entityIdentifier: %@, displayName: %@, rawIdentifier: %@, cnContactId: %@, stableContactIdentifer: %@, score: %.3f", identifier, v11, cnContactId, stableContactIdentifier, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(ATXContactModeEntity *)self identifier];
      identifier2 = [(ATXContactModeEntity *)v5 identifier];

      v8 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(ATXContactModeEntity *)self identifier];
  v3 = [identifier hash];

  return v3;
}

+ (id)cnContactIdsOfFavoriteContactsWithContactStore:(id)store
{
  v23 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v4 = objc_opt_new();
  v17 = storeCopy;
  v5 = [objc_alloc(MEMORY[0x1E695CE90]) initWithContactStore:storeCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  entries = [v5 entries];
  v7 = [entries countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(entries);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        contactProperty = [v11 contactProperty];
        contact = [contactProperty contact];
        identifier = [contact identifier];

        if (identifier)
        {
          [v4 addObject:identifier];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [entries countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v4;
}

+ (id)vipContactEmailAddresses
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = dispatch_semaphore_create(0);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__17;
  v32 = __Block_byref_object_dispose__17;
  v33 = objc_opt_new();
  v3 = objc_opt_new();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __48__ATXContactModeEntity_vipContactEmailAddresses__block_invoke;
  v25[3] = &unk_1E80C53D8;
  v27 = &v28;
  v16 = v2;
  v26 = v16;
  [v3 getAllVIPsWithCompletion:v25];

  [MEMORY[0x1E69C5D10] waitForSemaphore:v16 timeoutSeconds:0 onAcquire:&__block_literal_global_82 onTimeout:2.0];
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v29[5];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v35 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        emailAddresses = [v9 emailAddresses];
        v12 = [emailAddresses countByEnumeratingWithState:&v17 objects:v34 count:16];
        if (v12)
        {
          v13 = *v18;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(emailAddresses);
              }

              [v4 addObject:*(*(&v17 + 1) + 8 * j)];
            }

            v12 = [emailAddresses countByEnumeratingWithState:&v17 objects:v34 count:16];
          }

          while (v12);
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v5 countByEnumeratingWithState:&v21 objects:v35 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v28, 8);

  return v4;
}

void __48__ATXContactModeEntity_vipContactEmailAddresses__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __48__ATXContactModeEntity_vipContactEmailAddresses__block_invoke_cold_1();
    }
  }

  else
  {
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      goto LABEL_7;
    }

    v8 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "EMVIPManager getAllVIPsWithCompletion returned nil VIP set", v9, 2u);
    }
  }

LABEL_7:
  dispatch_semaphore_signal(*(a1 + 32));
}

void __48__ATXContactModeEntity_vipContactEmailAddresses__block_invoke_377()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __48__ATXContactModeEntity_vipContactEmailAddresses__block_invoke_377_cold_1();
  }
}

+ (id)cnContactIdsOfEmergencyContacts
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696C248]);
  v3 = objc_alloc_init(MEMORY[0x1E696C1C0]);
  v4 = [v2 initWithHealthStore:v3];

  v5 = objc_opt_new();
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__17;
  v29 = __Block_byref_object_dispose__17;
  v30 = objc_opt_new();
  v6 = dispatch_semaphore_create(0);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__ATXContactModeEntity_cnContactIdsOfEmergencyContacts__block_invoke;
  v22[3] = &unk_1E80C2B20;
  v24 = &v25;
  v7 = v6;
  v23 = v7;
  [v4 fetchMedicalIDEmergencyContactsWithCompletion:v22];
  v8 = v7;
  v9 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v8, v9);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v26[5];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v31 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        nameContactIdentifier = [v14 nameContactIdentifier];

        if (nameContactIdentifier)
        {
          nameContactIdentifier2 = [v14 nameContactIdentifier];
          [v5 addObject:nameContactIdentifier2];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v31 count:16];
    }

    while (v11);
  }

  _Block_object_dispose(&v25, 8);

  return v5;
}

void __55__ATXContactModeEntity_cnContactIdsOfEmergencyContacts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__ATXContactModeEntity_cnContactIdsOfEmergencyContacts__block_invoke_cold_1();
    }
  }

  else
  {
    if (v6)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      goto LABEL_7;
    }

    v8 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "HKMedicalIDStore fetchMedicalIDEmergencyContactsWithCompletion returned nil emergencyContacts array", v9, 2u);
    }
  }

LABEL_7:
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)cnContactIdsOfICloudFamilyMembers
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  fetchFamilyCircle = [v2 fetchFamilyCircle];
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  members = [fetchFamilyCircle members];
  v6 = [members countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(members);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (([v10 isMe] & 1) == 0)
        {
          contact = [v10 contact];
          identifier = [contact identifier];

          if (identifier)
          {
            contact2 = [v10 contact];
            identifier2 = [contact2 identifier];
            [v4 addObject:identifier2];
          }
        }
      }

      v7 = [members countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isVIPContactGivenVIPs:(id)ps contactStore:(id)store
{
  v26[1] = *MEMORY[0x1E69E9840];
  psCopy = ps;
  storeCopy = store;
  cnContactId = self->_cnContactId;
  if (cnContactId)
  {
    v26[0] = *MEMORY[0x1E695C208];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v24 = 0;
    v10 = [storeCopy unifiedContactWithIdentifier:cnContactId keysToFetch:v9 error:&v24];
    v11 = v24;

    emailAddresses = [v10 emailAddresses];

    if (emailAddresses)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      emailAddresses2 = [v10 emailAddresses];
      v14 = [emailAddresses2 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v14)
      {
        v15 = *v21;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(emailAddresses2);
            }

            value = [*(*(&v20 + 1) + 8 * i) value];
            v18 = [psCopy containsObject:value];

            if (v18)
            {
              LOBYTE(v14) = 1;
              goto LABEL_14;
            }
          }

          v14 = [emailAddresses2 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = [(ATXContactModeEntity *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"codingKeyForDisplayName"];

  rawIdentifier = [(ATXContactModeEntity *)self rawIdentifier];
  [coderCopy encodeObject:rawIdentifier forKey:@"codingKeyForRawIdentifier"];

  cnContactId = [(ATXContactModeEntity *)self cnContactId];
  [coderCopy encodeObject:cnContactId forKey:@"codingKeyForCnContactId"];

  stableContactIdentifier = [(ATXContactModeEntity *)self stableContactIdentifier];
  [coderCopy encodeObject:stableContactIdentifier forKey:@"codingKeyForStableContactIdentifier"];

  scoreMetadata = [(ATXContactModeEntity *)self scoreMetadata];
  [coderCopy encodeObject:scoreMetadata forKey:@"codingKeyForScoreMetadata"];
}

- (ATXContactModeEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_management();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForDisplayName" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.contactModeEntity" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (!error)
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_notification_management();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForRawIdentifier" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.contactModeEntity" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
LABEL_20:

      goto LABEL_21;
    }

    v16 = MEMORY[0x1E69C5D78];
    v17 = objc_opt_class();
    v18 = __atxlog_handle_notification_management();
    v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"codingKeyForCnContactId" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.contactModeEntity" errorCode:-1 logHandle:v18];

    error3 = [coderCopy error];

    if (error3)
    {
      selfCopy = 0;
LABEL_19:

      goto LABEL_20;
    }

    v21 = MEMORY[0x1E69C5D78];
    v22 = objc_opt_class();
    v23 = __atxlog_handle_notification_management();
    v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForStableContactIdentifier" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.contactModeEntity" errorCode:-1 logHandle:v23];

    error4 = [coderCopy error];

    if (error4)
    {
      selfCopy = 0;
LABEL_18:

      goto LABEL_19;
    }

    v26 = MEMORY[0x1E69C5D78];
    v27 = objc_opt_class();
    v28 = __atxlog_handle_notification_management();
    v29 = [v26 robustDecodeObjectOfClass:v27 forKey:@"codingKeyForScoreMetadata" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.contactModeEntity" errorCode:-1 logHandle:v28];

    error5 = [coderCopy error];

    if (!error5)
    {
      if (v14 || v19 || v24)
      {
        self = [(ATXContactModeEntity *)self initWithDisplayName:v8 rawIdentifier:v14 cnContactId:v19 stableContactIdentifier:v24];
        [(ATXContactModeEntity *)self setScoreMetadata:v29];
        selfCopy = self;
        goto LABEL_17;
      }

      v31 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [ATXContactModeEntity initWithCoder:];
      }
    }

    selfCopy = 0;
LABEL_17:

    goto LABEL_18;
  }

  selfCopy = 0;
LABEL_21:

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXContactModeEntity alloc];
  displayName = [(ATXContactModeEntity *)self displayName];
  rawIdentifier = [(ATXContactModeEntity *)self rawIdentifier];
  cnContactId = [(ATXContactModeEntity *)self cnContactId];
  stableContactIdentifier = [(ATXContactModeEntity *)self stableContactIdentifier];
  v9 = [(ATXContactModeEntity *)v4 initWithDisplayName:displayName rawIdentifier:rawIdentifier cnContactId:cnContactId stableContactIdentifier:stableContactIdentifier];

  return v9;
}

- (void)initWithDisplayName:(uint64_t)a1 rawIdentifier:(uint64_t)a2 cnContactId:stableContactIdentifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXContactModeEntity.m" lineNumber:57 description:{@"Attempted to initialize an ATXContactModeEntity without specifying a contact's rawIdentifier, cnContactId, or stableContactIdentifier. Terminating."}];
}

@end