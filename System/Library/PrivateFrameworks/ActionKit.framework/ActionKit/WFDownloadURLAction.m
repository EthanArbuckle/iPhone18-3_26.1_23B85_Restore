@interface WFDownloadURLAction
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)configureHTTPBodyForRequest:(id)a3 withMethod:(id)a4 completionHandler:(id)a5;
- (void)getContentDestinationWithCompletionHandler:(id)a3;
- (void)getContentsOfURLItem:(id)a3 expectedByteCountHandler:(id)a4 writtenByteCountHandler:(id)a5 completionHandler:(id)a6;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFDownloadURLAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CCACA8];
  v9 = a5;
  v10 = a4;
  if (v7)
  {
    v11 = WFLocalizedString(@"Allow “%1$@” to send %2$@ to “%3$@”?");
    [v8 localizedStringWithFormat:v11, v9, v7, v10];
  }

  else
  {
    v11 = WFLocalizedString(@"Allow “%1$@” to connect to “%2$@”?");
    [v8 localizedStringWithFormat:v11, v9, v10, v14];
  }
  v12 = ;

  return v12;
}

- (void)getContentDestinationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFDownloadURLAction *)self input];
  WFGetContentLocationFromURLActionInput();
}

- (void)configureHTTPBodyForRequest:(id)a3 withMethod:(id)a4 completionHandler:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (![a4 isEqualToString:@"GET"])
  {
    v10 = [(WFDownloadURLAction *)self parameterValueForKey:@"WFHTTPBodyType" ofClass:objc_opt_class()];
    if ([v10 isEqualToString:@"File"])
    {
      v11 = [(WFDownloadURLAction *)self parameterValueForKey:@"WFRequestVariable" ofClass:objc_opt_class()];
      if (v11)
      {
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __80__WFDownloadURLAction_configureHTTPBodyForRequest_withMethod_completionHandler___block_invoke;
        v45[3] = &unk_278C216C8;
        v46 = v8;
        v47 = v9;
        [v11 getFileRepresentation:v45 forType:0];
      }

      else
      {
        (*(v9 + 2))(v9, 0);
      }

      goto LABEL_15;
    }

    v12 = [v10 isEqualToString:@"JSON"];
    v13 = [v10 isEqualToString:@"Form"];
    v14 = v13;
    if ((v12 & 1) == 0 && !v13)
    {
LABEL_8:
      (*(v9 + 2))(v9, 0);
LABEL_15:

      goto LABEL_16;
    }

    if (v12)
    {
      v15 = [(WFDownloadURLAction *)self parameterValueForKey:@"WFJSONValues" ofClass:objc_opt_class()];
      if (!v15)
      {
        goto LABEL_8;
      }

      v16 = v15;
      if (!v14)
      {
LABEL_28:
        v24 = MEMORY[0x277CFC6A0];
        if (!v12)
        {
          v24 = MEMORY[0x277CFC6A8];
        }

        v25 = MEMORY[0x277CFC388];
        v26 = *v24;
        v18 = [v25 itemWithObject:v16];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __80__WFDownloadURLAction_configureHTTPBodyForRequest_withMethod_completionHandler___block_invoke_2;
        v38[3] = &unk_278C216C8;
        v39 = v8;
        v40 = v9;
        v27 = [MEMORY[0x277D79F68] typeFromMIMEType:v26];

        [v18 getFileRepresentation:v38 forType:v27];
LABEL_32:

        goto LABEL_15;
      }
    }

    else
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_8;
      }

      v16 = [(WFDownloadURLAction *)self parameterValueForKey:@"WFFormValues" ofClass:objc_opt_class()];
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v37 = v16;
    v18 = [v16 allValues];
    v19 = [v18 countByEnumeratingWithState:&v41 objects:v55 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v41 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v8;
            v29 = v37;
            v30 = v9;
            v31 = objc_opt_new();
            v32 = [v29 allKeys];
            v52[0] = MEMORY[0x277D85DD0];
            v52[1] = 3221225472;
            v52[2] = __WFConfigureRequestBodyWithMultipartFormDictionary_block_invoke;
            v52[3] = &unk_278C1AE10;
            v53 = v29;
            v33 = v31;
            v54 = v33;
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __WFConfigureRequestBodyWithMultipartFormDictionary_block_invoke_3;
            v48[3] = &unk_278C1AE38;
            v49 = v28;
            v50 = v33;
            v51 = v30;
            v34 = v30;
            v35 = v33;
            v36 = v28;
            v16 = v29;
            [v32 if_enumerateAsynchronouslyInSequence:v52 completionHandler:v48];

            goto LABEL_32;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v41 objects:v55 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v16 = v37;
    goto LABEL_28;
  }

  (*(v9 + 2))(v9, 0);
LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

void __80__WFDownloadURLAction_configureHTTPBodyForRequest_withMethod_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  WFConfigureRequestBodyWithFile(v5, a2);
  (*(*(a1 + 40) + 16))();
}

void __80__WFDownloadURLAction_configureHTTPBodyForRequest_withMethod_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  WFConfigureRequestBodyWithFile(v5, a2);
  (*(*(a1 + 40) + 16))();
}

- (void)getContentsOfURLItem:(id)a3 expectedByteCountHandler:(id)a4 writtenByteCountHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(WFDownloadURLAction *)self parameterValueForKey:@"WFHTTPMethod" ofClass:objc_opt_class()];
  v15 = [(WFDownloadURLAction *)self parameterValueForKey:@"WFHTTPHeaders" ofClass:objc_opt_class()];
  v16 = objc_alloc(MEMORY[0x277CBAB50]);
  v17 = [v10 URL];
  v18 = [v16 initWithURL:v17];

  [v18 _setNonAppInitiated:1];
  [v18 setHTTPMethod:v14];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __111__WFDownloadURLAction_getContentsOfURLItem_expectedByteCountHandler_writtenByteCountHandler_completionHandler___block_invoke;
  v31[3] = &unk_278C1ADC0;
  v19 = v18;
  v32 = v19;
  [v15 enumerateKeysAndObjectsUsingBlock:v31];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __111__WFDownloadURLAction_getContentsOfURLItem_expectedByteCountHandler_writtenByteCountHandler_completionHandler___block_invoke_2;
  v25[3] = &unk_278C1ADE8;
  v26 = v10;
  v27 = v19;
  v28 = v13;
  v29 = v11;
  v30 = v12;
  v20 = v12;
  v21 = v11;
  v22 = v19;
  v23 = v10;
  v24 = v13;
  [(WFDownloadURLAction *)self configureHTTPBodyForRequest:v22 withMethod:v14 completionHandler:v25];
}

void __111__WFDownloadURLAction_getContentsOfURLItem_expectedByteCountHandler_writtenByteCountHandler_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __111__WFDownloadURLAction_getContentsOfURLItem_expectedByteCountHandler_writtenByteCountHandler_completionHandler___block_invoke_3;
    v9[3] = &unk_278C216C8;
    v11 = *(a1 + 48);
    v10 = *(a1 + 32);
    [v5 getContentsWithRequest:v6 expectedByteCountHandler:v7 writtenByteCountHandler:v8 completionHandler:v9];
  }
}

void __111__WFDownloadURLAction_getContentsOfURLItem_expectedByteCountHandler_writtenByteCountHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a1 + 32;
  v7 = *(a1 + 32);
  v6 = *(v8 + 8);
  v9 = a3;
  v10 = [v7 attributionSet];
  v17 = v5;
  v11 = v10;
  v12 = [v17 wfType];
  if ([v12 conformsToUTType:*MEMORY[0x277CE1DC8]])
  {
    v13 = [MEMORY[0x277CFC388] itemsWithJSONFileRepresentation:v17 attributionSet:v11];
LABEL_5:
    v14 = v13;
    goto LABEL_6;
  }

  if ([v12 conformsToString:*MEMORY[0x277CFC6F0]])
  {
    v13 = [MEMORY[0x277CFC388] itemsWithPlistFileRepresentation:v17 attributionSet:v11];
    goto LABEL_5;
  }

  if (v17)
  {
    v15 = objc_alloc(MEMORY[0x277CBEA60]);
    v16 = [MEMORY[0x277CFC2F8] itemWithFile:v17 attributionSet:v11];
    v14 = [v15 initWithObjects:{v16, 0}];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

LABEL_6:

  (*(v6 + 16))(v6, v14, v9);
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C211D0;
  v6[4] = self;
  [v4 generateCollectionByCoercingToItemClass:v5 completionHandler:v6];
}

void __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_2;
    v19[3] = &unk_278C1AD98;
    v8 = v7;
    v9 = *(a1 + 32);
    v20 = v8;
    v21 = v9;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_6;
    v18[3] = &unk_278C21E70;
    v18[4] = v9;
    [v6 transformItemsAndFlattenUsingBlock:v19 completionHandler:v18];
    v10 = v20;
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D7CB30];
    v22[0] = *MEMORY[0x277CCA470];
    v10 = WFLocalizedString(@"No URL Specified");
    v23[0] = v10;
    v22[1] = *MEMORY[0x277CCA450];
    v14 = WFLocalizedString(@"Make sure to pass a valid URL to the Get Contents of URL action.");
    v23[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v16 = [v12 errorWithDomain:v13 code:6 userInfo:v15];
    [v11 finishRunningWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    (*(v6 + 2))(v6, 0, *(a1 + 32));
  }

  v8 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_3;
  v15[3] = &unk_278C1AD70;
  v15[4] = v8;
  v13 = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_4;
  v14[3] = &unk_278C1AD70;
  v14[4] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_5;
  v11[3] = &unk_278C21AE8;
  v12 = v5;
  v9 = v7;
  v10 = v5;
  [v8 getContentsOfURLItem:v10 expectedByteCountHandler:v15 writtenByteCountHandler:v14 completionHandler:v11];
}

void __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

void __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) progress];
  [v3 setTotalUnitCount:{objc_msgSend(v3, "totalUnitCount") + a2}];
}

void __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) progress];
  [v3 setCompletedUnitCount:{objc_msgSend(v3, "completedUnitCount") + a2}];
}

void __50__WFDownloadURLAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) URL];
  if ([v6 isFileURL])
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:*MEMORY[0x277CCA738]])
    {
      v8 = [v5 code];

      if (v8 != -1100)
      {
        goto LABEL_7;
      }

      v6 = v5;
      v5 = 0;
    }

    else
    {
    }
  }

LABEL_7:
  (*(*(a1 + 40) + 16))();
}

@end