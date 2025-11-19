@interface ATXExpiredDataRemover
+ (void)removeExpiredBundleIdsFrom:(id)a3 removeExpiredActionKeysFrom:(id)a4 expiredDataProvider:(id)a5;
@end

@implementation ATXExpiredDataRemover

+ (void)removeExpiredBundleIdsFrom:(id)a3 removeExpiredActionKeysFrom:(id)a4 expiredDataProvider:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 expiredBundleIdsAndActionKeys];
  v11 = [v10 expiredBundleIds];
  v12 = [v11 count];

  if (v12)
  {
    v34 = v8;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = v7;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v41;
      do
      {
        v18 = 0;
        do
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v40 + 1) + 8 * v18);
          v20 = objc_autoreleasePoolPush();
          v21 = [v10 expiredBundleIds];
          [v19 removeBundleIds:v21];

          objc_autoreleasePoolPop(v20);
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v16);
    }

    v7 = v13;
    v8 = v34;
  }

  v22 = [v10 expiredActionKeys];
  v23 = [v22 count];

  if (v23)
  {
    v35 = v7;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = v8;
    v25 = v8;
    v26 = [v25 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v37;
      do
      {
        v29 = 0;
        do
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v36 + 1) + 8 * v29);
          v31 = objc_autoreleasePoolPush();
          v32 = [v10 expiredActionKeys];
          [v30 removeActionKeys:v32];

          objc_autoreleasePoolPop(v31);
          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v27);
    }

    v7 = v35;
    v8 = v24;
  }

  v33 = *MEMORY[0x277D85DE8];
}

@end