@interface CNiOSABContactBuffersDecoder
- (BOOL)decodeContactsFromData:(id)a3 moreComing:(BOOL)a4 replyHandler:(id)a5 error:(id *)a6;
- (CNiOSABContactBuffersDecoder)init;
- (CNiOSABContactBuffersDecoder)initWithDecoder:(id)a3 unifyResults:(BOOL)a4 unificationOptions:(id)a5 mutableResults:(BOOL)a6 decodeBatchLimit:(int64_t)a7;
- (CNiOSABContactBuffersDecoder)initWithFetchRequest:(id)a3 posterDataStore:(id)a4;
- (id)_contactMatchInfosFromABMatchInfos:(id)a3 contacts:(id)a4;
- (id)contactMatchInfosFromABMatchInfos:(id)a3 contacts:(id)a4;
- (id)unifyContacts:(id)a3 moreComing:(BOOL)a4;
- (void)_addContactMatchInfoFromABMatchInfos:(id)a3 forContact:(id)a4 toDictionary:(id)a5;
@end

@implementation CNiOSABContactBuffersDecoder

- (CNiOSABContactBuffersDecoder)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNiOSABContactBuffersDecoder)initWithDecoder:(id)a3 unifyResults:(BOOL)a4 unificationOptions:(id)a5 mutableResults:(BOOL)a6 decodeBatchLimit:(int64_t)a7
{
  v13 = a3;
  v14 = a5;
  v26.receiver = self;
  v26.super_class = CNiOSABContactBuffersDecoder;
  v15 = [(CNiOSABContactBuffersDecoder *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_decoder, a3);
    v17 = objc_opt_new();
    contactsWaitingForUnification = v16->_contactsWaitingForUnification;
    v16->_contactsWaitingForUnification = v17;

    v19 = objc_opt_new();
    matchInfosWaitingForUnification = v16->_matchInfosWaitingForUnification;
    v16->_matchInfosWaitingForUnification = v19;

    v21 = 10;
    if (a7 > 0)
    {
      v21 = a7;
    }

    v16->_decodeBatchSize = v21;
    v16->_unifyResults = a4;
    v22 = [v14 copy];
    unificationOptions = v16->_unificationOptions;
    v16->_unificationOptions = v22;

    v16->_mutableResults = a6;
    v24 = v16;
  }

  return v16;
}

- (CNiOSABContactBuffersDecoder)initWithFetchRequest:(id)a3 posterDataStore:(id)a4
{
  v6 = a3;
  v7 = [CNContactBufferDecoderFactory decoderForFetchRequest:v6 posterDataStore:a4];
  v8 = [[CNContactUnificationOptions alloc] initWithContactFetchRequest:v6];
  v9 = [v6 unifyResults];
  v10 = [v6 mutableObjects];
  v11 = [v6 decoderBatchSize];

  v12 = [(CNiOSABContactBuffersDecoder *)self initWithDecoder:v7 unifyResults:v9 unificationOptions:v8 mutableResults:v10 decodeBatchLimit:v11];
  return v12;
}

- (BOOL)decodeContactsFromData:(id)a3 moreComing:(BOOL)a4 replyHandler:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = MEMORY[0x1E695DF70];
  v12 = a3;
  v13 = [v11 arrayWithCapacity:{-[CNiOSABContactBuffersDecoder decodeBatchSize](self, "decodeBatchSize")}];
  v14 = [(CNiOSABContactBuffersDecoder *)self decoder];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __85__CNiOSABContactBuffersDecoder_decodeContactsFromData_moreComing_replyHandler_error___block_invoke;
  v22 = &unk_1E74123C8;
  v15 = v13;
  v23 = v15;
  v24 = self;
  v26 = a4;
  v16 = v10;
  v25 = v16;
  v17 = [v14 decodeContactsFromBuffer:v12 replyHandler:&v19];

  if (a6 && (v17 & 1) == 0)
  {
    *a6 = [CNErrorFactory errorWithCode:1009, v19, v20, v21, v22, v23, v24];
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

- (void)_addContactMatchInfoFromABMatchInfos:(id)a3 forContact:(id)a4 toDictionary:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = a3;
  v9 = [v14 iOSLegacyIdentifier];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  v11 = [v8 objectForKey:v10];

  if (v11)
  {
    v12 = [CNiOSABConversions contactMatchInfoFromABMatchMetadataDictionary:v11];
    v13 = [v14 identifier];
    [v7 setObject:v12 forKey:v13];
  }
}

- (id)_contactMatchInfosFromABMatchInfos:(id)a3 contacts:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
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
          v14 = [v13 linkedContacts];
          v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                  objc_enumerationMutation(v14);
                }

                [(CNiOSABContactBuffersDecoder *)self _addContactMatchInfoFromABMatchInfos:v6 forContact:*(*(&v21 + 1) + 8 * j) toDictionary:v8];
              }

              v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v16);
          }
        }

        else
        {
          [(CNiOSABContactBuffersDecoder *)self _addContactMatchInfoFromABMatchInfos:v6 forContact:v13 toDictionary:v8];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  return v8;
}

- (id)contactMatchInfosFromABMatchInfos:(id)a3 contacts:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(CNiOSABContactBuffersDecoder *)self _contactMatchInfosFromABMatchInfos:a3 contacts:v6];
  if ([(CNiOSABContactBuffersDecoder *)self unifyResults])
  {
    v41 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [(CNiOSABContactBuffersDecoder *)self matchInfosWaitingForUnification];
    v9 = v7;
    v10 = v8;
    v36 = v9;
    [v8 addEntriesFromDictionary:?];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v6;
    v11 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = v11;
    v13 = *v49;
    v37 = *v49;
    v38 = v6;
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
          v32 = [(CNiOSABContactBuffersDecoder *)self matchInfosWaitingForUnification];
          v33 = [v15 identifier];
          v16 = [v32 objectForKey:v33];

          if (!v16)
          {
            goto LABEL_23;
          }

          v34 = [v15 identifier];
          [v41 setObject:v16 forKey:v34];

          v30 = [(CNiOSABContactBuffersDecoder *)self matchInfosWaitingForUnification];
          v31 = [v15 identifier];
          [v30 removeObjectForKey:v31];
          goto LABEL_21;
        }

        v43 = v14;
        v16 = [MEMORY[0x1E695DF90] dictionary];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v42 = v15;
        v17 = [v15 linkedContacts];
        v18 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
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
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v44 + 1) + 8 * i);
              v23 = [(CNiOSABContactBuffersDecoder *)self matchInfosWaitingForUnification];
              v24 = [v22 identifier];
              v25 = [v23 objectForKey:v24];

              if (v25)
              {
                v26 = [v22 identifier];
                [v16 setObject:v25 forKey:v26];

                v27 = [(CNiOSABContactBuffersDecoder *)self matchInfosWaitingForUnification];
                v28 = [v22 identifier];
                [v27 removeObjectForKey:v28];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v19);
        }

        if ([v16 count])
        {
          v29 = [v42 linkedContacts];
          v30 = [CN unifyContactMatchInfos:v16 linkedContacts:v29];

          v31 = [v42 identifier];
          [v41 setObject:v30 forKey:v31];
          v13 = v37;
          v6 = v38;
          v12 = v39;
          v14 = v43;
LABEL_21:

          goto LABEL_23;
        }

        v13 = v37;
        v6 = v38;
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

  v41 = v7;
LABEL_27:

  return v41;
}

- (id)unifyContacts:(id)a3 moreComing:(BOOL)a4
{
  v6 = a3;
  v7 = [(CNiOSABContactBuffersDecoder *)self mutableResults];
  v8 = [(CNiOSABContactBuffersDecoder *)self unificationOptions];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__CNiOSABContactBuffersDecoder_unifyContacts_moreComing___block_invoke;
  aBlock[3] = &unk_1E74123F0;
  v48 = v7;
  v9 = v8;
  v47 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count") + 1}];
  v12 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification];
  v13 = [v12 count];
  v14 = [v6 count];

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__1;
  v44[4] = __Block_byref_object_dispose__1;
  v15 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification];
  v16 = [v15 firstObject];
  v45 = [v16 linkIdentifier];

  v38 = 0;
  v39 = &v38;
  v40 = 0x3010000000;
  v42 = 0;
  v43 = 0;
  v41 = &unk_1956A8101;
  v17 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification];
  v18 = [v17 count];
  v42 = 0;
  v43 = v18;

  v19 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification];
  [v19 addObjectsFromArray:v6];

  v20 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v13, v14}];
  v21 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __57__CNiOSABContactBuffersDecoder_unifyContacts_moreComing___block_invoke_13;
  v32 = &unk_1E7412418;
  v36 = v44;
  v37 = &v38;
  v22 = v11;
  v33 = v22;
  v23 = v10;
  v34 = self;
  v35 = v23;
  [v21 enumerateObjectsAtIndexes:v20 options:0 usingBlock:&v29];

  if (v39[5])
  {
    v24 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification:v29];
    [v24 removeObjectsInRange:{0, v39[4]}];

    if (a4)
    {
      goto LABEL_6;
    }

    v25 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification];
    v26 = (*(v23 + 2))(v23, v25);
    [v22 addObject:v26];
  }

  else
  {
    v25 = [(CNiOSABContactBuffersDecoder *)self contactsWaitingForUnification:v29];
    [v25 removeAllObjects];
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