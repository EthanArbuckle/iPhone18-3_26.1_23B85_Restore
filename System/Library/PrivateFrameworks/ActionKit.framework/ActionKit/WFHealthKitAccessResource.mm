@interface WFHealthKitAccessResource
- (WFHealthKitAccessResource)initWithDefinition:(id)a3;
- (id)importErrorReasonForStatus:(unint64_t)a3;
- (id)localizedErrorReasonForStatus:(unint64_t)a3;
- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)a3;
- (id)localizedProtectedResourceDescriptionWithContext:(id)a3;
- (id)objectTypesForAccessType:(id)a3;
- (id)readableUnauthorizedResourceDescription;
- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)a3 userInterface:(id)a4 completionHandler:(id)a5;
- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4;
- (void)refreshAvailability;
@end

@implementation WFHealthKitAccessResource

- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)a3 userInterface:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(WFHealthKitAccessResource *)self status]== 3)
  {
    v9 = [MEMORY[0x277CFC248] sharedContext];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:@"x-apple-health://"];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __101__WFHealthKitAccessResource_attemptRecoveryFromErrorWithOptionIndex_userInterface_completionHandler___block_invoke;
    v11[3] = &unk_278C1CBC0;
    v12 = v8;
    [v9 openURL:v10 withBundleIdentifier:@"com.apple.Health" userInterface:v7 completionHandler:v11];
  }

  else
  {
    [(WFHealthKitAccessResource *)self makeAvailableWithUserInterface:v7 completionHandler:v8];
  }
}

- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3 == 3)
  {
    v3 = WFLocalizedString(@"Open Health");
    v9[0] = v3;
    v4 = v9;
  }

  else
  {
    v3 = WFLocalizedString(@"Allow Access");
    v8 = v3;
    v4 = &v8;
  }

  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)importErrorReasonForStatus:(unint64_t)a3
{
  v3 = [(WFHealthKitAccessResource *)self readableUnauthorizedResourceDescription];
  if ([v3 length])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = WFLocalizedString(@"In order to answer this question, Shortcuts needs access to your %@ data.");
    v6 = [v4 localizedStringWithFormat:v5, v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localizedErrorReasonForStatus:(unint64_t)a3
{
  v4 = [(WFHealthKitAccessResource *)self readableUnauthorizedResourceDescription];
  if ([v4 length])
  {
    v5 = MEMORY[0x277CCACA8];
    if (a3 == 3)
    {
      v6 = @"Health access to %@ is off. You can turn on health data categories in the Health app.";
    }

    else
    {
      v6 = @"Shortcuts does not have access to your %@ data.";
    }

    v7 = WFLocalizedString(v6);
    v8 = [v5 localizedStringWithFormat:v7, v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (![a3 isRunningWithSiriUI])
  {
    v7 = [(WFHealthKitAccessResource *)self objectTypes];
    if ([v7 count])
    {
      v8 = [(WFHealthKitAccessResource *)self healthStore];
      v9 = [(WFHealthKitAccessResource *)self writeTypes];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __78__WFHealthKitAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
      v10[3] = &unk_278C20360;
      v10[4] = self;
      v11 = v6;
      [v8 requestAuthorizationToShareTypes:v9 readTypes:v7 completion:v10];
    }

    else
    {
      (*(v6 + 2))(v6, 1, 0);
    }

    goto LABEL_9;
  }

  if (self->_status != 4)
  {
    [(WFResource *)self refreshAvailabilityWithNotification];
    if (self->_status != 4)
    {
      v7 = [MEMORY[0x277CCA9B8] wfUnsupportedUserInterfaceError];
      (*(v6 + 2))(v6, 0, v7);
LABEL_9:

      goto LABEL_10;
    }
  }

  (*(v6 + 2))(v6, 1, 0);
LABEL_10:
}

void __78__WFHealthKitAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__WFHealthKitAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2;
  v8[3] = &unk_278C1BC70;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __78__WFHealthKitAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) refreshAvailabilityWithForcedNotification];
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (void)refreshAvailability
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [(WFHealthKitAccessResource *)self objectTypes];
  if ([v3 count])
  {
    v4 = [(WFHealthKitAccessResource *)self healthStore];
    v5 = [MEMORY[0x277CCAB58] indexSet];
    [(WFHealthKitAccessResource *)self writeTypes];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v6 = v36 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v7)
    {
      v8 = *v36;
      do
      {
        v9 = 0;
        do
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addIndex:{objc_msgSend(v4, "authorizationStatusForType:", *(*(&v35 + 1) + 8 * v9++))}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v7);
    }

    v10 = [MEMORY[0x277CCAB58] indexSet];
    [(WFHealthKitAccessResource *)self readTypes];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v11 = v32 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v12)
    {
      v13 = *v32;
      do
      {
        v14 = 0;
        do
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [v10 addIndex:{objc_msgSend(v4, "authorizationStatusForType:", *(*(&v31 + 1) + 8 * v14++))}];
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v12);
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    if ([v5 containsIndex:1])
    {
      v28[3] = 3;
    }

    v15 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
    if ([v5 isEqualToIndexSet:v15])
    {
      v16 = [v11 count] == 0;

      v17 = v28;
      if (v16)
      {
        v28[3] = 4;
      }
    }

    else
    {

      v17 = v28;
    }

    v18 = v17[3];
    if (v18 == 1)
    {
      v19 = dispatch_semaphore_create(0);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __48__WFHealthKitAccessResource_refreshAvailability__block_invoke;
      v24[3] = &unk_278C18F50;
      v26 = &v27;
      v20 = v19;
      v25 = v20;
      [v4 getRequestStatusForAuthorizationToShareTypes:v6 readTypes:v3 completion:v24];
      v21 = dispatch_time(0, 2000000000);
      dispatch_semaphore_wait(v20, v21);

      v18 = v28[3];
    }

    self->_status = v18;
    v23.receiver = self;
    v23.super_class = WFHealthKitAccessResource;
    [(WFAccessResource *)&v23 refreshAvailability];
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    self->_status = 4;
    v39.receiver = self;
    v39.super_class = WFHealthKitAccessResource;
    [(WFAccessResource *)&v39 refreshAvailability];
  }

  v22 = *MEMORY[0x277D85DE8];
}

intptr_t __48__WFHealthKitAccessResource_refreshAvailability__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 4;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (id)readableUnauthorizedResourceDescription
{
  v3 = [(WFHealthKitAccessResource *)self healthStore];
  v4 = objc_opt_new();
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __68__WFHealthKitAccessResource_readableUnauthorizedResourceDescription__block_invoke;
  v17 = &unk_278C18F28;
  v5 = v3;
  v18 = v5;
  v6 = v4;
  v19 = v6;
  v7 = _Block_copy(&v14);
  v8 = [(WFHealthKitAccessResource *)self readTypes:v14];
  if (v7[2](v7, v8, 2))
  {
    v9 = [(WFHealthKitAccessResource *)self writeTypes];
    v10 = v7[2](v7, v9, 1);

    if (v10)
    {
      v11 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v6];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = WFLocalizedString(@"Health");
LABEL_6:
  v12 = v11;

  return v12;
}

uint64_t __68__WFHealthKitAccessResource_readableUnauthorizedResourceDescription__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 allObjects];
  if ([v5 count])
  {
    v6 = 0;
    v7 = sel_hk_localizedName;
    v8 = 0x277CCD000uLL;
    v9 = 0x277CCD000uLL;
    v10 = @"Workout";
    v24 = a3;
    do
    {
      v11 = [v5 objectAtIndexedSubscript:v6];
      v12 = [*(a1 + 32) authorizationStatusForType:v11];
      if (a3 == 1 && v12 == 2)
      {
        goto LABEL_13;
      }

      v13 = *(v8 + 1824);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          [v11 identifier];
          v17 = v7;
          v18 = v8;
          v19 = v9;
          v21 = v20 = v10;
          v16 = [WFHealthKitHelper readableSampleTypeIdentifierFromSampleTypeIdentifier:v21];

          v10 = v20;
          v9 = v19;
          v8 = v18;
          v7 = v17;
          a3 = v24;
          goto LABEL_12;
        }

        v14 = [v11 hk_localizedName];
      }

      else
      {
        v15 = *(v9 + 3280);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v22 = 0;
          goto LABEL_15;
        }

        v14 = WFLocalizedString(v10);
      }

      v16 = v14;
LABEL_12:
      [*(a1 + 40) addObject:v16];

LABEL_13:
      ++v6;
    }

    while (v6 < [v5 count]);
  }

  v22 = 1;
LABEL_15:

  return v22;
}

- (id)objectTypesForAccessType:(id)a3
{
  v55[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v45 = objc_opt_new();
  v5 = [(WFResource *)self definition];
  v6 = [v5 objectForKeyedSubscript:@"Resources"];
  v7 = objc_opt_class();
  v8 = WFEnforceClass(v6, v7);

  if (!v8)
  {
    v8 = [(WFResource *)self definition];

    if (v8)
    {
      v9 = [(WFResource *)self definition];
      v55[0] = v9;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0x277CBE000uLL;
    v13 = *v51;
    v49 = *MEMORY[0x277CCC980];
    v14 = *MEMORY[0x277CCC978];
    v46 = *MEMORY[0x277CCC978];
    v47 = *v51;
    do
    {
      v15 = 0;
      do
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v50 + 1) + 8 * v15);
        v17 = *(v12 + 2752);
        v18 = objc_opt_class();
        v19 = WFEnforceClass(v16, v18);
        v20 = v19;
        if (v19)
        {
          if (!v4 || ([v19 objectForKeyedSubscript:@"AccessType"], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", v4), v21, v22))
          {
            v23 = v20;
            v24 = [v23 objectForKeyedSubscript:@"ObjectType"];
            if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {

              v25 = [v23 objectForKeyedSubscript:@"ReadableType"];
              v26 = [v23 objectForKeyedSubscript:@"ReadableObjectTypeIdentifier"];

              if (v26)
              {
                v26 = [v23 objectForKeyedSubscript:@"ReadableObjectTypeIdentifier"];
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = v26 != 0;
                if ([v25 isEqualToString:@"Quantity"] && v26)
                {
                  v28 = [WFHealthKitHelper sampleTypeIdentifierFromReadableTypeIdentifier:v26];
                  v29 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v28];
                  goto LABEL_27;
                }
              }

              else
              {

                [v25 isEqualToString:@"Quantity"];
                v27 = 0;
                v26 = 0;
              }

              if ([v25 isEqualToString:@"Workout"])
              {
                v24 = [MEMORY[0x277CCD720] workoutType];
                goto LABEL_28;
              }

              if (([v25 isEqualToString:@"Characteristic"] & v27) == 1)
              {
                v28 = [WFHealthKitHelper characteristicTypeIdentifierFromReadableTypeIdentifier:v26];
                v29 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:v28];
                goto LABEL_27;
              }

              if ([v25 isEqualToString:@"Category"])
              {
                v28 = [WFHealthKitHelper sampleTypeIdentifierFromReadableTypeIdentifier:v26];
                v29 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:v28];
LABEL_27:
                v24 = v29;

                v12 = 0x277CBE000;
              }

              else
              {
                if ([v25 isEqualToString:@"Correlation"])
                {
                  v41 = MEMORY[0x277CCACA8];
                  v42 = WFLocalizedString(@"%@ types are not implemented");
                  v43 = [v41 localizedStringWithFormat:v42, v25];

                  v44 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v43 userInfo:0];
                  objc_exception_throw(v44);
                }

                v24 = 0;
              }

LABEL_28:
            }

            if (![v4 isEqualToString:@"Write"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v30 = v24;
              v31 = [MEMORY[0x277CBEB58] setWithObjects:{v30, 0}];
              v32 = [v30 identifier];
              if ([v32 isEqualToString:v49])
              {

                goto LABEL_34;
              }

              v33 = [v30 identifier];
              v34 = [v33 isEqualToString:v46];

              v12 = 0x277CBE000;
              if (v34)
              {
LABEL_34:
                v35 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v46];
                [v31 addObject:v35];

                v36 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v49];
                [v31 addObject:v36];
              }

              v37 = [v31 copy];

              [v45 unionSet:v37];
            }

            v13 = v47;
          }
        }

        ++v15;
      }

      while (v11 != v15);
      v38 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      v11 = v38;
    }

    while (v38);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v45;
}

- (WFHealthKitAccessResource)initWithDefinition:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFHealthKitAccessResource;
  v3 = [(WFAccessResource *)&v8 initWithDefinition:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCD4D8] wf_shortcutsAppHealthStore];
    healthStore = v3->_healthStore;
    v3->_healthStore = v4;

    v6 = v3;
  }

  return v3;
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"your Health data", @"your Health data");
  v5 = [v3 localize:v4];

  return v5;
}

@end