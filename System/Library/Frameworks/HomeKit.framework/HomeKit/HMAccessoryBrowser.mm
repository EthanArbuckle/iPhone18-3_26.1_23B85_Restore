@interface HMAccessoryBrowser
+ (id)logCategory;
- (HMAccessoryBrowser)init;
- (NSArray)discoveredAccessories;
- (id)delegate;
- (void)_fetchNewAccessories;
- (void)_fetchNewAccessoriesWithPrivacyCheck;
- (void)_handleNewAccessoriesFound:(id)found;
- (void)_handleNewAccessoriesRemoved:(id)removed;
- (void)_registerNotificationHandlers;
- (void)_start;
- (void)_startSearchingForNewAccessories;
- (void)_stopSearchingForNewAccessoriesWithError:(id)error;
- (void)_updateNewAccessories:(id)accessories;
- (void)dealloc;
- (void)handleStartWithError:(id)error response:(id)response;
- (void)setDelegate:(id)delegate;
- (void)startSearchingForNewAccessories;
- (void)stopSearchingForNewAccessories;
- (void)stopSearchingForNewAccessoriesWithError:(id)error;
@end

@implementation HMAccessoryBrowser

- (void)_handleNewAccessoriesRemoved:(id)removed
{
  v80 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    v6 = [removedCopy dataForKey:@"kAccessoriesInfoDataKey"];
    if (v6)
    {
      v7 = MEMORY[0x1E696ACD0];
      v8 = MEMORY[0x1E695DFD8];
      v75[0] = objc_opt_class();
      v75[1] = objc_opt_class();
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
      v10 = [v8 setWithArray:v9];
      v71 = 0;
      v11 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:&v71];
      v48 = v71;

      if (v11)
      {
        v45 = v6;
        v46 = context;
        v47 = removedCopy;
        v44 = v11;
        v12 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v52 = v13;

        array = [MEMORY[0x1E695DF70] array];
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        selfCopy = self;
        obj = [(HMAccessoryBrowser *)self discoveredAccessories];
        v53 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
        if (v53)
        {
          v51 = *v68;
          do
          {
            for (i = 0; i != v53; i = i + 1)
            {
              if (*v68 != v51)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v67 + 1) + 8 * i);
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v17 = v52;
              v18 = [v17 countByEnumeratingWithState:&v63 objects:v73 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v64;
                do
                {
                  for (j = 0; j != v19; ++j)
                  {
                    if (*v64 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v63 + 1) + 8 * j);
                    uuid = [v16 uuid];
                    uuid2 = [v22 uuid];
                    v25 = [uuid isEqual:uuid2];

                    if (v25)
                    {
                      [array addObject:v16];
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v63 objects:v73 count:16];
                }

                while (v19);
              }
            }

            v53 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
          }

          while (v53);
        }

        accessories = [(HMAccessoryBrowser *)selfCopy accessories];
        [accessories removeObjectsInArray:array];

        delegate = [(HMAccessoryBrowser *)selfCopy delegate];
        if ([array count] && -[HMAccessoryBrowser isBrowsing](selfCopy, "isBrowsing") && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v54 = array;
          v28 = [v54 countByEnumeratingWithState:&v59 objects:v72 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v60;
            do
            {
              for (k = 0; k != v29; ++k)
              {
                if (*v60 != v30)
                {
                  objc_enumerationMutation(v54);
                }

                v32 = *(*(&v59 + 1) + 8 * k);
                context2 = [(HMAccessoryBrowser *)selfCopy context];
                delegateCaller = [context2 delegateCaller];
                v55[0] = MEMORY[0x1E69E9820];
                v55[1] = 3221225472;
                v55[2] = __51__HMAccessoryBrowser__handleNewAccessoriesRemoved___block_invoke;
                v55[3] = &unk_1E754E5E8;
                v56 = delegate;
                v57 = selfCopy;
                v58 = v32;
                [delegateCaller invokeBlock:v55];
              }

              v29 = [v54 countByEnumeratingWithState:&v59 objects:v72 count:16];
            }

            while (v29);
          }
        }

        context = v46;
        removedCopy = v47;
        v11 = v44;
        v6 = v45;
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v77 = v42;
          v78 = 2112;
          v79 = v48;
          _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessories from accessories data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v39);
      }
    }
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v77 = v38;
      v78 = 2080;
      v79 = "[HMAccessoryBrowser _handleNewAccessoriesRemoved:]";
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)_handleNewAccessoriesFound:(id)found
{
  v103 = *MEMORY[0x1E69E9840];
  foundCopy = found;
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    selfCopy = self;
    v6 = [foundCopy dataForKey:@"kAccessoriesInfoDataKey"];
    if (v6 && [(HMAccessoryBrowser *)self isBrowsing])
    {
      v7 = MEMORY[0x1E696ACD0];
      v8 = MEMORY[0x1E695DFD8];
      v98[0] = objc_opt_class();
      v98[1] = objc_opt_class();
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
      v10 = [v8 setWithArray:v9];
      v93 = 0;
      v11 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:&v93];
      v60 = v93;

      if (v11)
      {
        v57 = v6;
        v58 = context;
        v59 = foundCopy;
        v56 = v11;
        v12 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        array = [MEMORY[0x1E695DF70] array];
        v63 = v14;
        [array setArray:v14];
        delegate = [(HMAccessoryBrowser *)selfCopy delegate];
        v17 = [delegate conformsToProtocol:&unk_1F0F63660];

        delegate2 = 0;
        if (v17)
        {
          delegate2 = [(HMAccessoryBrowser *)selfCopy delegate];
        }

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        obj = [(HMAccessoryBrowser *)selfCopy discoveredAccessories];
        v64 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
        if (v64)
        {
          v62 = *v90;
          do
          {
            v18 = 0;
            do
            {
              if (*v90 != v62)
              {
                objc_enumerationMutation(obj);
              }

              v65 = v18;
              v19 = *(*(&v89 + 1) + 8 * v18);
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              v20 = v63;
              v21 = [v20 countByEnumeratingWithState:&v85 objects:v96 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v86;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v86 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = *(*(&v85 + 1) + 8 * i);
                    uuid = [v19 uuid];
                    uuid2 = [v25 uuid];
                    v28 = [uuid isEqual:uuid2];

                    if (v28)
                    {
                      [v19 _updateFromAccessory:v25];
                      if ([array count] && -[HMAccessoryBrowser isBrowsing](selfCopy, "isBrowsing") && (objc_opt_respondsToSelector() & 1) != 0)
                      {
                        context2 = [(HMAccessoryBrowser *)selfCopy context];
                        delegateCaller = [context2 delegateCaller];
                        v81[0] = MEMORY[0x1E69E9820];
                        v81[1] = 3221225472;
                        v81[2] = __49__HMAccessoryBrowser__handleNewAccessoriesFound___block_invoke;
                        v81[3] = &unk_1E754E5E8;
                        v82 = delegate2;
                        v83 = selfCopy;
                        v84 = v19;
                        [delegateCaller invokeBlock:v81];
                      }

                      [array removeObject:v25];
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v85 objects:v96 count:16];
                }

                while (v22);
              }

              v18 = v65 + 1;
            }

            while (v65 + 1 != v64);
            v64 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
          }

          while (v64);
        }

        accessories = [(HMAccessoryBrowser *)selfCopy accessories];
        [accessories addObjectsFromArray:array];

        v79 = 0u;
        v80 = 0u;
        v78 = 0u;
        v77 = 0u;
        v32 = array;
        v33 = [v32 countByEnumeratingWithState:&v77 objects:v95 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v78;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v78 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v77 + 1) + 8 * j);
              context3 = [(HMAccessoryBrowser *)selfCopy context];
              [v37 __configureWithContext:context3 home:0];
            }

            v34 = [v32 countByEnumeratingWithState:&v77 objects:v95 count:16];
          }

          while (v34);
        }

        delegate3 = [(HMAccessoryBrowser *)selfCopy delegate];
        if ([v32 count] && -[HMAccessoryBrowser isBrowsing](selfCopy, "isBrowsing") && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v66 = v32;
          v40 = [v66 countByEnumeratingWithState:&v73 objects:v94 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v74;
            do
            {
              for (k = 0; k != v41; ++k)
              {
                if (*v74 != v42)
                {
                  objc_enumerationMutation(v66);
                }

                v44 = *(*(&v73 + 1) + 8 * k);
                context4 = [(HMAccessoryBrowser *)selfCopy context];
                delegateCaller2 = [context4 delegateCaller];
                v69[0] = MEMORY[0x1E69E9820];
                v69[1] = 3221225472;
                v69[2] = __49__HMAccessoryBrowser__handleNewAccessoriesFound___block_invoke_2;
                v69[3] = &unk_1E754E5E8;
                v70 = delegate3;
                v71 = selfCopy;
                v72 = v44;
                [delegateCaller2 invokeBlock:v69];
              }

              v41 = [v66 countByEnumeratingWithState:&v73 objects:v94 count:16];
            }

            while (v41);
          }
        }

        context = v58;
        foundCopy = v59;
        v11 = v56;
        v6 = v57;
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = selfCopy;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543618;
          v100 = v54;
          v101 = 2112;
          v102 = v60;
          _os_log_impl(&dword_19BB39000, v53, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessories from accessories data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v51);
      }
    }
  }

  else
  {
    v47 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543618;
      v100 = v50;
      v101 = 2080;
      v102 = "[HMAccessoryBrowser _handleNewAccessoriesFound:]";
      _os_log_impl(&dword_19BB39000, v49, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (void)_registerNotificationHandlers
{
  v17 = *MEMORY[0x1E69E9840];
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    context2 = [(HMAccessoryBrowser *)self context];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher registerForMessage:@"kNewAccessoriesFoundNotificationKey" receiver:self selector:sel__handleNewAccessoriesFound_];

    context3 = [(HMAccessoryBrowser *)self context];
    messageDispatcher2 = [context3 messageDispatcher];
    [messageDispatcher2 registerForMessage:@"kNewAccessoriesRemovedNotificationKey" receiver:self selector:sel__handleNewAccessoriesRemoved_];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2080;
      v16 = "[HMAccessoryBrowser _registerNotificationHandlers]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateNewAccessories:(id)accessories
{
  v85 = *MEMORY[0x1E69E9840];
  accessoriesCopy = accessories;
  delegate = [(HMAccessoryBrowser *)self delegate];
  v5 = objc_opt_new();
  obj = objc_opt_new();
  v51 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  discoveredAccessories = [(HMAccessoryBrowser *)self discoveredAccessories];
  v7 = [discoveredAccessories countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v77;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v77 != v9)
        {
          objc_enumerationMutation(discoveredAccessories);
        }

        v11 = *(*(&v76 + 1) + 8 * i);
        uniqueIdentifier = [v11 uniqueIdentifier];
        v13 = [accessoriesCopy hmf_firstObjectWithUniqueIdentifier:uniqueIdentifier];

        if (v13)
        {
          v14 = v5;
        }

        else
        {
          v14 = v51;
        }

        [v14 addObject:v11];
      }

      v8 = [discoveredAccessories countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v8);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v15 = accessoriesCopy;
  v16 = [v15 countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v73;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v73 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v72 + 1) + 8 * j);
        uniqueIdentifier2 = [v20 uniqueIdentifier];
        v22 = [v5 hmf_firstObjectWithUniqueIdentifier:uniqueIdentifier2];

        if (!v22)
        {
          [obj addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v72 objects:v83 count:16];
    }

    while (v17);
  }

  v46 = v15;

  [v5 addObjectsFromArray:obj];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v23 = obj;
  v24 = [v23 countByEnumeratingWithState:&v68 objects:v82 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v69;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v69 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v68 + 1) + 8 * k);
        context = [(HMAccessoryBrowser *)self context];
        [v28 __configureWithContext:context home:0];
      }

      v25 = [v23 countByEnumeratingWithState:&v68 objects:v82 count:16];
    }

    while (v25);
  }

  accessories = [(HMAccessoryBrowser *)self accessories];
  [accessories setArray:v5];

  if (delegate && [(HMAccessoryBrowser *)self isBrowsing])
  {
    if (objc_opt_respondsToSelector())
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      obja = v51;
      v31 = [obja countByEnumeratingWithState:&v64 objects:v81 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v65;
        do
        {
          for (m = 0; m != v32; ++m)
          {
            if (*v65 != v33)
            {
              objc_enumerationMutation(obja);
            }

            v35 = *(*(&v64 + 1) + 8 * m);
            context2 = [(HMAccessoryBrowser *)self context];
            delegateCaller = [context2 delegateCaller];
            v60[0] = MEMORY[0x1E69E9820];
            v60[1] = 3221225472;
            v60[2] = __44__HMAccessoryBrowser__updateNewAccessories___block_invoke;
            v60[3] = &unk_1E754E5E8;
            v61 = delegate;
            selfCopy = self;
            v63 = v35;
            [delegateCaller invokeBlock:v60];
          }

          v32 = [obja countByEnumeratingWithState:&v64 objects:v81 count:16];
        }

        while (v32);
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      objb = v23;
      v38 = [objb countByEnumeratingWithState:&v56 objects:v80 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v57;
        do
        {
          for (n = 0; n != v39; ++n)
          {
            if (*v57 != v40)
            {
              objc_enumerationMutation(objb);
            }

            v42 = *(*(&v56 + 1) + 8 * n);
            context3 = [(HMAccessoryBrowser *)self context];
            delegateCaller2 = [context3 delegateCaller];
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __44__HMAccessoryBrowser__updateNewAccessories___block_invoke_2;
            v52[3] = &unk_1E754E5E8;
            v53 = delegate;
            selfCopy2 = self;
            v55 = v42;
            [delegateCaller2 invokeBlock:v52];
          }

          v39 = [objb countByEnumeratingWithState:&v56 objects:v80 count:16];
        }

        while (v39);
      }
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)_fetchNewAccessories
{
  v24 = *MEMORY[0x1E69E9840];
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    v4 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMAccessoryBrowser *)self uuid];
    v6 = [v4 initWithTarget:uuid];

    v7 = MEMORY[0x1E69A2A10];
    v19 = @"kConfigGenerationCounterKey";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAccessoryBrowser generationCounter](self, "generationCounter")}];
    v20 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v10 = [v7 messageWithName:@"kFetchNewAccessoriesRequestKey" destination:v6 payload:v9];

    objc_initWeak(location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __42__HMAccessoryBrowser__fetchNewAccessories__block_invoke;
    v17[3] = &unk_1E754CD70;
    objc_copyWeak(&v18, location);
    [v10 setResponseHandler:v17];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v10];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v15;
      v22 = 2080;
      v23 = "[HMAccessoryBrowser _fetchNewAccessories]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __42__HMAccessoryBrowser__fetchNewAccessories__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 && v6)
    {
      v9 = [v6 hmf_numberForKey:@"kConfigGenerationCounterKey"];
      v10 = v9;
      if (!v9)
      {
        goto LABEL_19;
      }

      v11 = [v9 unsignedIntegerValue];
      if (v11 == [v8 generationCounter])
      {
        goto LABEL_19;
      }

      [v8 setGenerationCounter:{objc_msgSend(v10, "unsignedIntegerValue")}];
      v12 = [v6 hmf_dataForKey:@"kAccessoriesInfoDataKey"];
      if (v12)
      {
        v13 = MEMORY[0x1E695DFD8];
        v32[0] = objc_opt_class();
        v32[1] = objc_opt_class();
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
        v15 = [v13 setWithArray:v14];

        v27 = 0;
        v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v15 fromData:v12 error:&v27];
        v17 = v27;
        if (!v16)
        {
          v21 = objc_autoreleasePoolPush();
          v22 = v8;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v24 = v26 = v21;
            *buf = 138543618;
            v29 = v24;
            v30 = 2112;
            v31 = v17;
            _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory from accessory data: %@", buf, 0x16u);

            v21 = v26;
          }

          objc_autoreleasePoolPop(v21);
          goto LABEL_18;
        }

        v18 = v16;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        v17 = v20;
      }

      else
      {
        v17 = 0;
      }

      [v8 _updateNewAccessories:v17];
LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

    [WeakRetained _updateNewAccessories:0];
  }

LABEL_20:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_fetchNewAccessoriesWithPrivacyCheck
{
  v15 = *MEMORY[0x1E69E9840];
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    objc_initWeak(location, self);
    queue = [context queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__HMAccessoryBrowser__fetchNewAccessoriesWithPrivacyCheck__block_invoke;
    v10[3] = &unk_1E754BCB8;
    objc_copyWeak(&v11, location);
    __HMPrivacyRequestAccessForService(*MEMORY[0x1E69D5620], queue, v10);

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v8;
      v13 = 2080;
      v14 = "[HMAccessoryBrowser _fetchNewAccessoriesWithPrivacyCheck]";
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __58__HMAccessoryBrowser__fetchNewAccessoriesWithPrivacyCheck__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchNewAccessories];
}

- (void)_start
{
  v15 = *MEMORY[0x1E69E9840];
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    [(HMAccessoryBrowser *)self _registerNotificationHandlers];
    objc_initWeak(location, self);
    xpcClient = [context xpcClient];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __28__HMAccessoryBrowser__start__block_invoke;
    v10[3] = &unk_1E754E540;
    objc_copyWeak(&v11, location);
    [xpcClient registerReconnectionHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v8;
      v13 = 2080;
      v14 = "[HMAccessoryBrowser _start]";
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __28__HMAccessoryBrowser__start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setGenerationCounter:-1];
  if ([WeakRetained isBrowsing])
  {
    [WeakRetained _startSearchingForNewAccessories];
  }

  else
  {
    [WeakRetained _stopSearchingForNewAccessoriesWithError:0];
  }
}

- (void)_stopSearchingForNewAccessoriesWithError:(id)error
{
  v35 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  context = [(HMAccessoryBrowser *)self context];
  if (!context)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v21;
      v33 = 2080;
      v34 = "[HMAccessoryBrowser _stopSearchingForNewAccessoriesWithError:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    goto LABEL_13;
  }

  if (![(HMAccessoryBrowser *)self isBrowsing])
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *location = 138543362;
      *&location[4] = v22;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Asked to stop searching for new accessories but we are not currently browsing", location, 0xCu);
    }

LABEL_13:

    objc_autoreleasePoolPop(v18);
    goto LABEL_14;
  }

  v6 = MEMORY[0x1E695DF90];
  v30 = @"kStartSearch";
  v31 = MEMORY[0x1E695E110];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v8 = [v6 dictionaryWithDictionary:v7];

  if (errorCopy)
  {
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
    if (v9)
    {
      [v8 setObject:v9 forKeyedSubscript:@"kStopSearchReason"];
    }
  }

  v10 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMAccessoryBrowser *)self uuid];
  v12 = [v10 initWithTarget:uuid];

  v13 = MEMORY[0x1E69A2A10];
  v14 = [v8 copy];
  v15 = [v13 messageWithName:@"kSearchForNewAccessoriesRequestKey" destination:v12 payload:v14];

  objc_initWeak(location, self);
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __63__HMAccessoryBrowser__stopSearchingForNewAccessoriesWithError___block_invoke;
  v27 = &unk_1E754BC90;
  objc_copyWeak(&v29, location);
  v16 = context;
  v28 = v16;
  [v15 setResponseHandler:&v24];
  messageDispatcher = [v16 messageDispatcher];
  [messageDispatcher sendMessage:v15];

  objc_destroyWeak(&v29);
  objc_destroyWeak(location);

LABEL_14:
  v23 = *MEMORY[0x1E69E9840];
}

void __63__HMAccessoryBrowser__stopSearchingForNewAccessoriesWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__HMAccessoryBrowser__stopSearchingForNewAccessoriesWithError___block_invoke_2;
    block[3] = &unk_1E754E2A8;
    block[4] = WeakRetained;
    dispatch_async(v3, block);
  }
}

uint64_t __63__HMAccessoryBrowser__stopSearchingForNewAccessoriesWithError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) accessories];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);
  v4 = [v3 discoveredAccessories];
  [v3 _updateNewAccessories:v4];

  [*(a1 + 32) setBrowsing:0];
  v5 = *(a1 + 32);

  return [v5 setGenerationCounter:-1];
}

- (void)stopSearchingForNewAccessoriesWithError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  context = [(HMAccessoryBrowser *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__HMAccessoryBrowser_stopSearchingForNewAccessoriesWithError___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = errorCopy;
    dispatch_async(queue, v13);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2080;
      v18 = "[HMAccessoryBrowser stopSearchingForNewAccessoriesWithError:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)stopSearchingForNewAccessories
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Asked to stop searching for new accessories", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMAccessoryBrowser *)selfCopy stopSearchingForNewAccessoriesWithError:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleStartWithError:(id)error response:(id)response
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  responseCopy = response;
  context = [(HMAccessoryBrowser *)self context];
  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__HMAccessoryBrowser_handleStartWithError_response___block_invoke;
    block[3] = &unk_1E754E5E8;
    v17 = errorCopy;
    v18 = responseCopy;
    selfCopy = self;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v14;
      v22 = 2080;
      v23 = "[HMAccessoryBrowser handleStartWithError:response:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __52__HMAccessoryBrowser_handleStartWithError_response___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v2 = [*(a1 + 40) hmf_dataForKey:@"kIdentifierSaltKey"];
    if (v2)
    {
      [MEMORY[0x1E696AFB0] hm_setIdentifierSalt:v2];
      [*(a1 + 48) setBrowsing:1];
      [*(a1 + 48) _fetchNewAccessoriesWithPrivacyCheck];
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      v4 = *(a1 + 48);
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = HMFGetLogIdentifier();
        v8 = 138543362;
        v9 = v6;
        _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_ERROR, "%{public}@Missing identifier salt, failed to start browse", &v8, 0xCu);
      }

      objc_autoreleasePoolPop(v3);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_startSearchingForNewAccessories
{
  v23 = *MEMORY[0x1E69E9840];
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    v4 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMAccessoryBrowser *)self uuid];
    v6 = [v4 initWithTarget:uuid];

    v7 = MEMORY[0x1E69A2A10];
    v18 = @"kStartSearch";
    v19 = MEMORY[0x1E695E118];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v9 = [v7 messageWithName:@"kSearchForNewAccessoriesRequestKey" destination:v6 payload:v8];

    objc_initWeak(location, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__HMAccessoryBrowser__startSearchingForNewAccessories__block_invoke;
    v16[3] = &unk_1E754CD70;
    objc_copyWeak(&v17, location);
    [v9 setResponseHandler:v16];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v9];

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v14;
      v21 = 2080;
      v22 = "[HMAccessoryBrowser _startSearchingForNewAccessories]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __54__HMAccessoryBrowser__startSearchingForNewAccessories__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleStartWithError:v6 response:v5];
}

- (void)startSearchingForNewAccessories
{
  v17 = *MEMORY[0x1E69E9840];
  context = [(HMAccessoryBrowser *)self context];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Asked to start searching for new accessories", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__HMAccessoryBrowser_startSearchingForNewAccessories__block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = selfCopy;
    dispatch_async(queue, block);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2080;
      v16 = "[HMAccessoryBrowser startSearchingForNewAccessories]";
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSArray)discoveredAccessories
{
  accessories = [(HMAccessoryBrowser *)self accessories];
  array = [accessories array];

  return array;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMAccessoryBrowser", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  array = [(HMMutableArray *)selfCopy->_accessories array];
  queue = [(_HMContext *)selfCopy->_context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__HMAccessoryBrowser_dealloc__block_invoke;
  block[3] = &unk_1E754E2A8;
  v13 = array;
  v9 = array;
  dispatch_async(queue, block);

  v11.receiver = selfCopy;
  v11.super_class = HMAccessoryBrowser;
  [(HMAccessoryBrowser *)&v11 dealloc];
  v10 = *MEMORY[0x1E69E9840];
}

void __29__HMAccessoryBrowser_dealloc__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) _unconfigure];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (HMAccessoryBrowser)init
{
  v11.receiver = self;
  v11.super_class = HMAccessoryBrowser;
  v2 = [(HMAccessoryBrowser *)&v11 init];
  if (v2)
  {
    v3 = [[_HMContext alloc] initWithName:@"com.apple.HomeKit.AccessoryBrowser"];
    context = v2->_context;
    v2->_context = v3;

    if (initializeMappingsAndPaths_pred != -1)
    {
      dispatch_once(&initializeMappingsAndPaths_pred, &__block_literal_global_25877);
    }

    v5 = +[HMMutableArray array];
    accessories = v2->_accessories;
    v2->_accessories = v5;

    v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BF2B0921-858B-42F5-B2EB-C915FB953E5B"];
    v8 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v7];
    uuid = v2->_uuid;
    v2->_uuid = v8;

    v2->_generationCounter = -1;
    v2->_browsing = 0;
    [(HMAccessoryBrowser *)v2 _start];
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_41578 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_41578, &__block_literal_global_41579);
  }

  v3 = logCategory__hmf_once_v25_41580;

  return v3;
}

uint64_t __33__HMAccessoryBrowser_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_41580;
  logCategory__hmf_once_v25_41580 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end