void sub_2334D3A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v33 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2334D3A74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2334D3A8C(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v9 = [v8 preferenceForKey:@"dropHomeNamesFromSyncData"];
    v10 = [v9 BOOLValue];

    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      mach_absolute_time();
      v14 = UpTicksToMilliseconds();
      v15 = v14 - [WeakRetained fetchHomeConfigurationStartTime];
      v16 = HMFBooleanToString();
      *buf = 138543874;
      v30 = v13;
      v31 = 2048;
      v32 = v15;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_2334D2000, v12, OS_LOG_TYPE_INFO, "%{public}@Finished sync data retrieval refresh in %llu milliseconds - dropping home names from sync data %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v17 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2334D3DD8;
    block[3] = &unk_2789D9E10;
    v23 = v5;
    v18 = v6;
    v28 = v10;
    v27 = *(a1 + 48);
    v24 = v18;
    v25 = WeakRetained;
    v21 = *(a1 + 32);
    v19 = v21;
    v26 = v21;
    dispatch_async(v17, block);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2334D3CD4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) done];
  if ((result & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_2334D2000, v4, OS_LOG_TYPE_INFO, "%{public}@homed did not respond", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v6 = [*(a1 + 32) waitGroup];
    dispatch_group_leave(v6);

    result = [*(a1 + 32) setDone:1];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2334D3DD8(uint64_t a1)
{
  v1 = a1;
  v60 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = HMFGetLogIdentifier();
      v5 = *(v1 + 32);
      *buf = 138543618;
      v56 = v4;
      v57 = 2112;
      v58 = v5;
      _os_log_impl(&dword_2334D2000, v3, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve Siri sync data - error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v6 = [*(a1 + 40) hmf_arrayForKey:@"kSiriSyncDataEntitiesKey"];
    if ([v6 count])
    {
      v7 = getAssistantConfigurationVersion();
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v47 = v6;
      obj = v6;
      v8 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v52;
        v48 = *MEMORY[0x277D48158];
        v11 = 1;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v52 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v13 = [objc_alloc(MEMORY[0x277D47358]) initWithDictionary:*(*(&v51 + 1) + 8 * i)];
            v14 = v13;
            if (v13)
            {
              if (*(v1 + 80) == 1)
              {
                [v13 setHome:0];
                v15 = [v14 entityType];
                v16 = [v15 isEqual:v48];

                if (v16)
                {
                  [v14 setName:0];
                }
              }

              v17 = objc_autoreleasePoolPush();
              v18 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v50 = v11;
                v19 = v1;
                v21 = v20 = v7;
                [v14 hm_shortDescription];
                v22 = v9;
                v24 = v23 = v10;
                *buf = 138543618;
                v56 = v21;
                v57 = 2112;
                v58 = v24;
                _os_log_impl(&dword_2334D2000, v18, OS_LOG_TYPE_INFO, "%{public}@Siri: entity: %@", buf, 0x16u);

                v10 = v23;
                v9 = v22;

                v7 = v20;
                v1 = v19;
                v11 = v50;
              }

              objc_autoreleasePoolPop(v17);
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%tu", v7, v11];
              ++v11;
              [*(*(*(v1 + 64) + 8) + 40) addObject:v14];
              [*(*(*(v1 + 72) + 8) + 40) addObject:v25];
            }
          }

          v9 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v9);
      }

      else
      {
        v11 = 1;
      }

      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%tu", v7, v11];
      [*(v1 + 48) setFinalAnchor:v29];

      v30 = objc_autoreleasePoolPush();
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [*(v1 + 48) finalAnchor];
        *buf = 138543618;
        v56 = v32;
        v57 = 2112;
        v58 = v33;
        _os_log_impl(&dword_2334D2000, v31, OS_LOG_TYPE_INFO, "%{public}@finalAnchor is %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v34 = *(*(*(v1 + 72) + 8) + 40);
      v35 = [*(v1 + 48) finalAnchor];
      [v34 addObject:v35];

      v36 = *(v1 + 56);
      v37 = [*(v1 + 48) finalAnchor];
      [v36 resetWithValidity:v37];

      v6 = v47;
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v28;
        _os_log_impl(&dword_2334D2000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@No sync entities from homed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  v38 = [*(*(*(v1 + 64) + 8) + 40) copy];
  [*(v1 + 48) setEntities:v38];

  v39 = [*(*(*(v1 + 72) + 8) + 40) copy];
  [*(v1 + 48) setAnchors:v39];

  result = [*(v1 + 48) done];
  if ((result & 1) == 0)
  {
    v41 = objc_autoreleasePoolPush();
    v42 = *(v1 + 48);
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543362;
      v56 = v44;
      _os_log_impl(&dword_2334D2000, v43, OS_LOG_TYPE_INFO, "%{public}@Leaving the dispatch group as it did not time out.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v41);
    v45 = [*(v1 + 48) waitGroup];
    dispatch_group_leave(v45);

    result = [*(v1 + 48) setDone:1];
  }

  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2334D4768()
{
  v0 = *MEMORY[0x277D0F1A8];
  qword_2814EE690 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}