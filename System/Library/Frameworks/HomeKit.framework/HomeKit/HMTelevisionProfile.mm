@interface HMTelevisionProfile
- (BOOL)mediaSourceDisplayOrderModifiable;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMTelevisionProfile)initWithTelevisionService:(id)a3 linkedServices:(id)a4;
- (HMTelevisionProfileDelegate)delegate;
- (NSArray)mediaSourceDisplayOrder;
- (void)televisionProfileDidUpdateSourceDisplayOrder:(id)a3;
- (void)updateMediaSourceDisplayOrder:(id)a3 completionHandler:(id)a4;
@end

@implementation HMTelevisionProfile

void __72___HMTelevisionProfile_updateMediaSourceDisplayOrder_completionHandler___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = [*(a1 + 32) services];
  v3 = [v2 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v30 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v29 + 1) + 8 * v6);
      v8 = [v7 serviceType];
      v9 = [v8 isEqualToString:@"000000D8-0000-1000-8000-0026BB765291"];

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v7;

    if (!v10)
    {
      goto LABEL_12;
    }

    v33[0] = @"kServiceInstanceID";
    v11 = [v10 instanceID];
    v33[1] = @"source-display-order";
    v34[0] = v11;
    v34[1] = *(a1 + 40);
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

    v13 = MEMORY[0x1E69A2A10];
    v14 = [*(a1 + 32) messageDestination];
    v15 = [v13 messageWithName:@"HMTP.sdoUpdate" destination:v14 payload:v12];

    v16 = [*(a1 + 32) context];
    v17 = [v16 pendingRequests];

    v18 = [v15 identifier];
    v19 = _Block_copy(*(a1 + 56));
    [v17 addCompletionBlock:v19 forIdentifier:v18];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __72___HMTelevisionProfile_updateMediaSourceDisplayOrder_completionHandler___block_invoke_2;
    v25[3] = &unk_1E754E0A8;
    v26 = v17;
    v27 = v18;
    v28 = *(a1 + 48);
    v20 = v18;
    v21 = v17;
    [v15 setResponseHandler:v25];
    v22 = [*(a1 + 48) messageDispatcher];
    [v22 sendMessage:v15 completionHandler:0];
  }

  else
  {
LABEL_9:

LABEL_12:
    v10 = [*(a1 + 32) context];
    v12 = [v10 delegateCaller];
    v23 = *(a1 + 56);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
    [v12 callCompletion:v23 error:v15];
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __72___HMTelevisionProfile_updateMediaSourceDisplayOrder_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v7 = [v3 removeCompletionBlockForIdentifier:v4];
    v6 = [*(a1 + 48) delegateCaller];
    [v6 callCompletion:v7 error:v5];
  }
}

- (HMTelevisionProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HMTelevisionProfile;
  v5 = [(HMAccessoryProfile *)&v16 mergeFromNewObject:v4];
  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 mediaSourceDisplayOrder];
    v10 = [(HMAccessoryProfile *)self accessoryProfile];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [(HMTelevisionProfile *)self mediaSourceDisplayOrder];
    v14 = [v9 isEqualToArray:v13];

    if ((v14 & 1) == 0)
    {
      [v12 setMediaSourceDisplayOrder:v9];
      [(HMTelevisionProfile *)self televisionProfileDidUpdateSourceDisplayOrder:v12];
      v5 = 1;
    }
  }

  return v5;
}

- (void)televisionProfileDidUpdateSourceDisplayOrder:(id)a3
{
  v4 = [(HMTelevisionProfile *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HMTelevisionProfile *)self delegate];
    v7 = [(HMAccessoryProfile *)self accessoryProfile];
    v8 = [v7 context];
    v9 = [v8 delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__HMTelevisionProfile_televisionProfileDidUpdateSourceDisplayOrder___block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = v6;
    v13 = self;
    v10 = v6;
    [v9 invokeBlock:v11];
  }
}

- (void)updateMediaSourceDisplayOrder:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v10 = a3;
  v7 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 updateMediaSourceDisplayOrder:v10 completionHandler:v6];
}

- (BOOL)mediaSourceDisplayOrderModifiable
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 mediaSourceDisplayOrderModifiable];
  return v5;
}

- (NSArray)mediaSourceDisplayOrder
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 mediaSourceDisplayOrder];

  return v5;
}

- (HMTelevisionProfile)initWithTelevisionService:(id)a3 linkedServices:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_HMTelevisionProfile alloc] initWithTelevisionService:v7 linkedServices:v6];

  v11.receiver = self;
  v11.super_class = HMTelevisionProfile;
  v9 = [(HMAccessoryProfile *)&v11 initWithAccessoryProfile:v8];
  if (v9)
  {
    [(_HMTelevisionProfile *)v8 setDelegate:v9];
  }

  return v9;
}

@end