@interface CNiOSABContactBuffersDecoder
- (BOOL)decodeContactsFromData:(id)data moreComing:(BOOL)coming replyHandler:(id)handler error:(id *)error;
- (CNiOSABContactBuffersDecoder)init;
- (CNiOSABContactBuffersDecoder)initWithDecoder:(id)decoder unifyResults:(BOOL)results unificationOptions:(id)options mutableResults:(BOOL)mutableResults decodeBatchLimit:(int64_t)limit;
- (CNiOSABContactBuffersDecoder)initWithFetchRequest:(id)request posterDataStore:(id)store;
- (id)_contactMatchInfosFromABMatchInfos:(id)infos contacts:(id)contacts;
- (id)contactMatchInfosFromABMatchInfos:(id)infos contacts:(id)contacts;
- (id)unifyContacts:(id)contacts moreComing:(BOOL)coming;
- (void)_addContactMatchInfoFromABMatchInfos:(id)infos forContact:(id)contact toDictionary:(id)dictionary;
@end

@implementation CNiOSABContactBuffersDecoder

- (CNiOSABContactBuffersDecoder)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNiOSABContactBuffersDecoder)initWithDecoder:(id)decoder unifyResults:(BOOL)results unificationOptions:(id)options mutableResults:(BOOL)mutableResults decodeBatchLimit:(int64_t)limit
{
  decoderCopy = decoder;
  optionsCopy = options;
  v26.receiver = self;
  v26.super_class = CNiOSABContactBuffersDecoder;
  v15 = [(CNiOSABContactBuffersDecoder *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_decoder, decoder);
    v17 = objc_opt_new();
    contactsWaitingForUnification = v16->_contactsWaitingForUnification;
    v16->_contactsWaitingForUnification = v17;

    v19 = objc_opt_new();
    matchInfosWaitingForUnification = v16->_matchInfosWaitingForUnification;
    v16->_matchInfosWaitingForUnification = v19;

    limitCopy = 10;
    if (limit > 0)
    {
      limitCopy = limit;
    }

    v16->_decodeBatchSize = limitCopy;
    v16->_unifyResults = results;
    v22 = [optionsCopy copy];
    unificationOptions = v16->_unificationOptions;
    v16->_unificationOptions = v22;

    v16->_mutableResults = mutableResults;
    v24 = v16;
  }

  return v16;
}

- (CNiOSABContactBuffersDecoder)initWithFetchRequest:(id)request posterDataStore:(id)store
{
  requestCopy = request;
  v7 = [CNContactBufferDecoderFactory decoderForFetchRequest:requestCopy posterDataStore:store];
  v8 = [[CNContactUnificationOptions alloc] initWithContactFetchRequest:requestCopy];
  unifyResults = [requestCopy unifyResults];
  mutableObjects = [requestCopy mutableObjects];
  decoderBatchSize = [requestCopy decoderBatchSize];

  v12 = [(CNiOSABContactBuffersDecoder *)self initWithDecoder:v7 unifyResults:unifyResults unificationOptions:v8 mutableResults:mutableObjects decodeBatchLimit:decoderBatchSize];
  return v12;
}

- (BOOL)decodeContactsFromData:(id)data moreComing:(BOOL)coming replyHandler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  v11 = MEMORY[0x1E695DF70];
  dataCopy = data;
  v13 = [v11 arrayWithCapacity:{-[CNiOSABContactBuffersDecoder decodeBatchSize](self, "decodeBatchSize")}];
  decoder = [(CNiOSABContactBuffersDecoder *)self decoder];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __85__CNiOSABContactBuffersDecoder_decodeContactsFromData_moreComing_replyHandler_error___block_invoke;
  v22 = &unk_1E74123C8;
  v15 = v13;
  v23 = v15;
  selfCopy = self;
  comingCopy = coming;
  v16 = handlerCopy;
  v25 = v16;
  v17 = [decoder decodeContactsFromBuffer:dataCopy replyHandler:&v19];

  if (error && (v17 & 1) == 0)
  {
    *error = [CNErrorFactory errorWithCode:1009, v19, v20, v21, v22, v23, selfCopy];
  }

  return v17;
}

void __85__CNiOSABContactBuffersDecoder_decodeContactsFromData_moreComing_replyHandler_error___block_invoke(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v9 = a2;
  if (v9)
  {
    [*(a1 + 32) addObject:v9];
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) count];
  if (v6 == [*(a1 + 40) decodeBatchSize] || (a3 & 1) == 0)
  {
    v7 = *(a1 + 32);
    if ([*(a1 + 40) unifyResults])
    {
      v8 = [*(a1 + 40) unifyContacts:*(a1 + 32) moreComing:(*(a1 + 56) | a3) & 1];

      v7 = v8;
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) removeAllObjects];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_addContactMatchInfoFromABMatchInfos:(id)infos forContact:(id)contact toDictionary:(id)dictionary
{
  contactCopy = contact;
  dictionaryCopy = dictionary;
  infosCopy = infos;
  iOSLegacyIdentifier = [contactCopy iOSLegacyIdentifier];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:iOSLegacyIdentifier];
  v11 = [infosCopy objectForKey:v10];

  if (v11)
  {
    v12 = [CNiOSABConversions contactMatchInfoFromABMatchMetadataDictionary:v11];
    identifier = [contactCopy identifier];
    [dictionaryCopy setObject:v12 forKey:identifier];
  }
}

- (id)_contactMatchInfosFromABMatchInfos:(id)infos contacts:(id)contacts
{
  v31 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  contactsCopy = contacts;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = contactsCopy;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if ([v13 isUnified])
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          linkedContacts = [v13 linkedContacts];
          v15 = [linkedContacts countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v22;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v22 != v17)
                {
                  objc_enumerationMutation(linkedContacts);
                }

                [(CNiOSABContactBuffersDecoder *)self _addContactMatchInfoFromABMatchInfos:infosCopy forContact:*(*(&v21 + 1) + 8 * j) toDictionary:dictionary];
              }

              v16 = [linkedContacts countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v16);
          }
        }

        else
        {
          [(CNiOSABContactBuffersDecoder *)self _addContactMatchInfoFromABMatchInfos:infosCopy forContact:v13 toDictionary:dictionary];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  return dictionary;
}

- (id)contactMatchInfosFromABMatchInfos:(id)infos contacts:(id)contacts
{
  v54 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v7 = [(CNiOSABContactBuffersDecoder *)self _contactMatchInfosFromABMatchInfos:infos contacts:contactsCopy];
  if ([(CNiOSABContactBuffersDecoder *)self unifyResults])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    matchInfosWaitingForUnification = [(CNiOSABContactBuffersDecoder *)self matchInfosWaitingForUnification];
    v9 = v7;
    v10 = matchInfosWaitingForUnification;
    v36 = v9;
    [matchInfosWaitingForUnification addEntriesFromDictionary:?];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = contactsCopy;
    v11 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = v11;
    v13 = *v49;
    v37 = *v49;
    v38 = contactsCopy;
    while (1)
    {
      v14 = 0;
      v39 = v12;
      do
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v48 + 1) + 8 * v14);
        if (![v15 isUnified])
        {
          matchInfosWaitingForUnification2 = [(CNiOSABContactBuffersDecoder *)self matchInfosWaitingForUnification];
          identifier = [v15 identifier];
          dictionary2 = [matchInfosWaitingForUnification2 objectForKey:identifier];

          if (!dictionary2)
          {
            goto LABEL_23;
          }

          identifier2 = [v15 identifier];
          [dictionary setObject:dictionary2 forKey:identifier2];

          matchInfosWaitingForUnification3 = [(CNiOSABContactBuffersDecoder *)self matchInfosWaitingForUnification];
          identifier3 = [v15 identifier];
          [matchInfosWaitingForUnification3 removeObjectForKey:identifier3];
          goto LABEL_21;
        }

        v43 = v14;
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v42 = v15;
        linkedContacts = [v15 linkedContacts];
        v18 = [linkedContacts countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v45;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v45 != v20)
              {
                objc_enumerationMutation(linkedContacts);
              }

              v22 = *(*(&v44 + 1) + 8 * i);
              matchInfosWaitingForUnification4 = [(CNiOSABContactBuffersDecoder *)self matchInfosWaitingForUnification];
              identifier4 = [v22 identifier];
              v25 = [matchInfosWaitingForUnification4 objectForKey:identifier4];

              if (v25)
              {
                identifier5 = [v22 identifier];
                [dictionary2 setObject:v25 forKey:identifier5];

                matchInfosWaitingForUnification5 = [(CNiOSABContactBuffersDecoder *)self matchInfosWaitingForUnification];
                identifier6 = [v22 identifier];
                [matchInfosWaitingForUnification5 removeObjectForKey:identifier6];
              }
            }

            v19 = [linkedContacts countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v19);
        }

        if ([dictionary2 count])
        {
          linkedContacts2 = [v42 linkedContacts];
          matchInfosWaitingForUnification3 = [CN unifyContactMatchInfos:dictionary2 linkedContacts:linkedContacts2];

          identifier3 = [v42 identifier];
          [dictionary setObject:matchInfosWaitingForUnification3 forKey:identifier3];
          v13 = v37;
          contactsCopy = v38;
          v12 = v39;
          v14 = v43;
LABEL_21:

          goto LABEL_23;
        }

        v13 = v37;
        contactsCopy = v38;
        v12 = v39;
        v14 = v43;
LABEL_23:

        ++v14;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (!v12)
      {
LABEL_25:

        v7 = v36;
        goto LABEL_27;
      }
    }
  }

  dictionary = v7;
LABEL_27:

  return dictionary;
}

- (id)unifyContacts:(id)contacts moreComing:(BOOL)coming
{
  contactsCopy = contacts;
  mutableResults = [(CNiOSABContactBuffersDecoder *)self mutableResults];
  unificationOptions = [(CNiOSABContactBuffersDecoder *)self unificationOptions];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__CNiOSABContactBuffersDecoder_unifyContacts_moreComing___block_invoke;
  aBlock[3] = &unk_1E74123F0;
  v48 = mutableResults;
  v9 = unificationOptions;
  v47 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(contactsCopy, "count") + 1}];
  contactsWaitingForUnification = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification];
  v13 = [contactsWaitingForUnification count];
  v14 = [contactsCopy count];

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__1;
  v44[4] = __Block_byref_object_dispose__1;
  contactsWaitingForUnification2 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification];
  firstObject = [contactsWaitingForUnification2 firstObject];
  linkIdentifier = [firstObject linkIdentifier];

  v38 = 0;
  v39 = &v38;
  v40 = 0x3010000000;
  v42 = 0;
  v43 = 0;
  v41 = &unk_1956A8101;
  contactsWaitingForUnification3 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification];
  v18 = [contactsWaitingForUnification3 count];
  v42 = 0;
  v43 = v18;

  contactsWaitingForUnification4 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification];
  [contactsWaitingForUnification4 addObjectsFromArray:contactsCopy];

  v20 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v13, v14}];
  contactsWaitingForUnification5 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __57__CNiOSABContactBuffersDecoder_unifyContacts_moreComing___block_invoke_13;
  v32 = &unk_1E7412418;
  v36 = v44;
  v37 = &v38;
  v22 = v11;
  v33 = v22;
  v23 = v10;
  selfCopy = self;
  v35 = v23;
  [contactsWaitingForUnification5 enumerateObjectsAtIndexes:v20 options:0 usingBlock:&v29];

  if (v39[5])
  {
    v24 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification:v29];
    [v24 removeObjectsInRange:{0, v39[4]}];

    if (coming)
    {
      goto LABEL_6;
    }

    contactsWaitingForUnification6 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification];
    v26 = (*(v23 + 2))(v23, contactsWaitingForUnification6);
    [v22 addObject:v26];
  }

  else
  {
    contactsWaitingForUnification6 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification:v29];
    [contactsWaitingForUnification6 removeAllObjects];
  }

LABEL_6:
  v27 = v22;

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(v44, 8);

  return v27;
}

id __57__CNiOSABContactBuffersDecoder_unifyContacts_moreComing___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    [CNMutableContact unifyContacts:a2];
  }

  else
  {
    [CN contactUnifyingContacts:a2 options:*(a1 + 32)];
  }
  v2 = ;

  return v2;
}

void __57__CNiOSABContactBuffersDecoder_unifyContacts_moreComing___block_invoke_13(uint64_t a1, void *a2, uint64_t a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 linkIdentifier];
  v7 = [v6 isEqualToString:*(*(*(a1 + 56) + 8) + 40)];

  if (v7)
  {
    ++*(*(*(a1 + 64) + 8) + 40);
  }

  else
  {
    v8 = [v5 linkIdentifier];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 32);
      v13 = [*(a1 + 40) contactsWaitingForUnification];
      v14 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)}];
      v15 = [v13 objectsAtIndexes:v14];
      v16 = (*(v11 + 16))(v11, v15);
      [v12 addObject:v16];
    }

    v17 = [v5 linkIdentifier];

    if (v17)
    {
      v18 = *(*(a1 + 64) + 8);
      *(v18 + 32) = a3;
      *(v18 + 40) = 1;
    }

    else
    {
      v19 = *(*(a1 + 64) + 8);
      *(v19 + 32) = a3 + 1;
      *(v19 + 40) = 0;
      v20 = *(a1 + 32);
      v21 = *(a1 + 48);
      v24[0] = v5;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      v23 = (*(v21 + 16))(v21, v22);
      [v20 addObject:v23];
    }
  }
}

@end