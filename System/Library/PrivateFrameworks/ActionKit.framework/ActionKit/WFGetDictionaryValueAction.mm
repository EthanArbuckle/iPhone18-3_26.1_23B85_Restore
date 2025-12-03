@interface WFGetDictionaryValueAction
- (void)runAsynchronouslyWithInput:(id)input;
- (void)setOutputWithValue:(id)value preferredDictionaryType:(id)type contentAttributionSet:(id)set;
@end

@implementation WFGetDictionaryValueAction

- (void)setOutputWithValue:(id)value preferredDictionaryType:(id)type contentAttributionSet:(id)set
{
  v19 = *MEMORY[0x277D85DE8];
  if (value)
  {
    v6 = [MEMORY[0x277CFC388] itemsWithPropertyListObject:value preferredDictionaryType:type attributionSet:set];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          output = [(WFGetDictionaryValueAction *)self output];
          [output addItem:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WFGetDictionaryValueAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C211D0;
  v6[4] = self;
  [inputCopy generateCollectionByCoercingToItemClass:v5 completionHandler:v6];
}

void __57__WFGetDictionaryValueAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a2 items];
  v8 = [v7 firstObject];

  v9 = [v8 dictionary];
  if (v9)
  {
    v10 = [*(a1 + 32) parameterValueForKey:@"WFGetDictionaryValueType" ofClass:objc_opt_class()];
    if ([v10 isEqualToString:@"All Values"])
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v11 = [v9 allValues];
      v12 = [v11 countByEnumeratingWithState:&v56 objects:v63 count:16];
      if (v12)
      {
        v13 = v12;
        v48 = v6;
        v49 = v10;
        v47 = v9;
        v14 = *v57;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v57 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v56 + 1) + 8 * i);
            v17 = *(a1 + 32);
            v18 = [v8 preferredFileType];
            v19 = [v8 attributionSet];
            [v17 setOutputWithValue:v16 preferredDictionaryType:v18 contentAttributionSet:v19];
          }

          v13 = [v11 countByEnumeratingWithState:&v56 objects:v63 count:16];
        }

        while (v13);
LABEL_20:
        v9 = v47;
        v6 = v48;
LABEL_21:
        v10 = v49;
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if ([v10 isEqualToString:@"All Keys"])
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v11 = [v9 allKeys];
      v20 = [v11 countByEnumeratingWithState:&v52 objects:v62 count:16];
      if (v20)
      {
        v21 = v20;
        v48 = v6;
        v49 = v10;
        v47 = v9;
        v22 = *v53;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v53 != v22)
            {
              objc_enumerationMutation(v11);
            }

            v24 = *(*(&v52 + 1) + 8 * j);
            v25 = *(a1 + 32);
            v26 = [v8 preferredFileType];
            v27 = [v8 attributionSet];
            [v25 setOutputWithValue:v24 preferredDictionaryType:v26 contentAttributionSet:v27];
          }

          v21 = [v11 countByEnumeratingWithState:&v52 objects:v62 count:16];
        }

        while (v21);
        goto LABEL_20;
      }

LABEL_22:

LABEL_23:
      [*(a1 + 32) finishRunningWithError:0];
LABEL_24:

      goto LABEL_25;
    }

    if (![v10 isEqualToString:@"Value"])
    {
      goto LABEL_23;
    }

    v11 = [*(a1 + 32) parameterValueForKey:@"WFDictionaryKey" ofClass:objc_opt_class()];
    if ([v11 length] || (objc_msgSend(v9, "objectForKey:", v11), v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
    {
      v30 = [v9 objectForKey:v11];
      if (v30)
      {
        v31 = v30;
        v49 = v10;
        v32 = v9;
        v33 = v6;
        v34 = 0;
LABEL_33:
        v35 = *(a1 + 32);
        v36 = [v8 preferredFileType];
        v37 = [v8 attributionSet];
        [v35 setOutputWithValue:v31 preferredDictionaryType:v36 contentAttributionSet:v37];

        v6 = v33;
        v9 = v32;
        goto LABEL_21;
      }

      v51 = 0;
      v31 = [MEMORY[0x277CFC428] evaluateKeyPath:v11 onObject:v9 error:&v51];
      v34 = v51;
      if (v31)
      {
        v49 = v10;
        v32 = v9;
        v33 = v6;
        goto LABEL_33;
      }

      [*(a1 + 32) finishRunningWithError:v34];
    }

    else
    {
      v50 = *(a1 + 32);
      v38 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277D7CB30];
      v60[0] = *MEMORY[0x277CCA470];
      v40 = WFLocalizedString(@"No Key Provided");
      v61[0] = v40;
      v60[1] = *MEMORY[0x277CCA450];
      WFLocalizedString(@"No key was provided to the Get Dictionary Value action.");
      v42 = v41 = v6;
      v61[1] = v42;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
      v43 = v10;
      v45 = v44 = v9;
      v46 = [v38 errorWithDomain:v39 code:5 userInfo:v45];
      [v50 finishRunningWithError:v46];

      v9 = v44;
      v10 = v43;

      v6 = v41;
    }

    goto LABEL_24;
  }

  [*(a1 + 32) finishRunningWithError:v6];
LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
}

@end