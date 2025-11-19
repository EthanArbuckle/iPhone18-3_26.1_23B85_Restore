@interface AMDHealthKitWorkoutEvent
+ (BOOL)validateInput:(id)a3;
- (void)populateRecord:(id)a3;
@end

@implementation AMDHealthKitWorkoutEvent

+ (BOOL)validateInput:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v11 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v8);
      v4 = [v22 objectForKey:0x2852AC9C8];
      v19 = 0;
      v17 = 0;
      v15 = 0;
      v13 = 0;
      v5 = 1;
      if (v4)
      {
        v20 = [v22 objectForKey:@"eventType"];
        v19 = 1;
        v5 = 1;
        if (v20)
        {
          v18 = [v22 objectForKey:@"isFirstPartyDonation"];
          v17 = 1;
          v5 = 1;
          if (v18)
          {
            v16 = [v22 objectForKey:@"isIndoor"];
            v15 = 1;
            v5 = 1;
            if (v16)
            {
              v14 = [v22 objectForKey:@"isUpdate"];
              v13 = 1;
              v5 = v14 == 0;
            }
          }
        }
      }

      if (v13)
      {
        MEMORY[0x277D82BD8](v14);
      }

      if (v15)
      {
        MEMORY[0x277D82BD8](v16);
      }

      if (v17)
      {
        MEMORY[0x277D82BD8](v18);
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](v20);
      }

      MEMORY[0x277D82BD8](v4);
      if (v5)
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v9)
        {
          goto LABEL_22;
        }
      }
    }

    v24 = 0;
    v12 = 1;
  }

  else
  {
LABEL_22:
    v12 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v12)
  {
    v24 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v24 & 1;
}

- (void)populateRecord:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = v20;
  v17 = [location[0] valueForKey:0x2852AC9C8];
  -[AMDHealthKitWorkoutEvent setEventTime:](v16, "setEventTime:", [v17 unsignedLongLongValue]);
  MEMORY[0x277D82BD8](v17);
  v18 = [location[0] valueForKey:@"activityType"];
  MEMORY[0x277D82BD8](v18);
  if (v18)
  {
    v14 = v20;
    v15 = [location[0] valueForKey:@"activityType"];
    [(AMDHealthKitWorkoutEvent *)v14 setActivityType:?];
    MEMORY[0x277D82BD8](v15);
  }

  v13 = [location[0] valueForKey:@"activityUUID"];
  MEMORY[0x277D82BD8](v13);
  if (v13)
  {
    v11 = v20;
    v12 = [location[0] valueForKey:@"activityUUID"];
    [(AMDHealthKitWorkoutEvent *)v11 setActivityUUID:?];
    MEMORY[0x277D82BD8](v12);
  }

  v3 = v20;
  v4 = [location[0] valueForKey:@"eventType"];
  -[AMDHealthKitWorkoutEvent setEventType:](v3, "setEventType:", [v4 unsignedShortValue]);
  MEMORY[0x277D82BD8](v4);
  v5 = v20;
  v6 = [location[0] valueForKey:@"isFirstPartyDonation"];
  -[AMDHealthKitWorkoutEvent setIsFirstPartyDonation:](v5, "setIsFirstPartyDonation:", [v6 BOOLValue]);
  MEMORY[0x277D82BD8](v6);
  v7 = v20;
  v8 = [location[0] valueForKey:@"isIndoor"];
  -[AMDHealthKitWorkoutEvent setIsIndoor:](v7, "setIsIndoor:", [v8 BOOLValue]);
  MEMORY[0x277D82BD8](v8);
  v9 = v20;
  v10 = [location[0] valueForKey:@"isUpdate"];
  -[AMDHealthKitWorkoutEvent setIsUpdate:](v9, "setIsUpdate:", [v10 BOOLValue]);
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(location, 0);
}

@end