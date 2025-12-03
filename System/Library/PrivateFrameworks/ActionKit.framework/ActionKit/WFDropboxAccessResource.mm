@interface WFDropboxAccessResource
- (WFDropboxAccessResource)initWithDefinition:(id)definition;
- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler;
@end

@implementation WFDropboxAccessResource

- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler
{
  interfaceCopy = interface;
  handlerCopy = handler;
  v8 = +[WFDropboxAccount sessionManager];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __76__WFDropboxAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
  v31[3] = &unk_278C1CD98;
  v9 = handlerCopy;
  v31[4] = self;
  v32 = v9;
  v10 = [v8 appAuthorizationSessionWithCompletionHandler:v31];
  authorizationURLs = [v10 authorizationURLs];
  v12 = [authorizationURLs mutableCopy];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3042000000;
  v28 = __Block_byref_object_copy__22519;
  v29 = __Block_byref_object_dispose__22520;
  v30 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__WFDropboxAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_164;
  v18[3] = &unk_278C1C4D8;
  v13 = v10;
  v19 = v13;
  v14 = v12;
  v20 = v14;
  v15 = interfaceCopy;
  v21 = v15;
  v16 = v9;
  selfCopy = self;
  v23 = v16;
  v24 = &v25;
  v17 = [v18 copy];
  objc_storeWeak(v26 + 5, v17);
  v17[2](v17, 0, 0);

  _Block_object_dispose(&v25, 8);
  objc_destroyWeak(&v30);
}

void __76__WFDropboxAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v5 domain];
  if ([v6 isEqualToString:@"WFOAuth2ErrorDomain"])
  {
    v7 = [v5 code];

    if (v7 == 106)
    {
      v8 = *(a1 + 40);
      if (!v8)
      {
        goto LABEL_13;
      }

      v9 = *(v8 + 16);
LABEL_12:
      v9();
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (!v14)
  {
    v13 = *(a1 + 40);
    if (!v13)
    {
      goto LABEL_13;
    }

    v9 = *(v13 + 16);
    goto LABEL_12;
  }

  v10 = [(WFOAuth2Account *)WFDropboxAccount accountWithCredential:?];
  v11 = [objc_msgSend(*(a1 + 32) "accountClass")];
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v11, v5);
  }

LABEL_13:
}

void __76__WFDropboxAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_164(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) successURI];
    v4 = [v3 scheme];

    v5 = [MEMORY[0x277D7C548] sharedManager];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__WFDropboxAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2;
    v14[3] = &unk_278C1C4B0;
    v15 = *(a1 + 32);
    v16 = v5;
    v17 = v4;
    v6 = v4;
    v7 = v5;
    [v7 registerHandler:v14 forIncomingRequestsWithAction:0 scheme:v6];
  }

  else
  {
    v7 = [*(a1 + 40) firstObject];
    if (v7)
    {
      [*(a1 + 40) removeObjectAtIndex:0];
      v8 = [MEMORY[0x277CFC248] sharedContext];
      v9 = *(a1 + 48);
      WeakRetained = objc_loadWeakRetained((*(*(a1 + 72) + 8) + 40));
      [v8 openURL:v7 withBundleIdentifier:@"com.getdropbox.Dropbox" userInterface:v9 completionHandler:WeakRetained];
    }

    else
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 64);
      v13.receiver = *(a1 + 56);
      v13.super_class = WFDropboxAccessResource;
      objc_msgSendSuper2(&v13, sel_makeAvailableWithUserInterface_completionHandler_, v11, v12);
    }
  }
}

uint64_t __76__WFDropboxAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = [a2 URL];
  [v3 resumeSessionWithURL:v4];

  v5 = a1[5];
  v6 = a1[6];

  return [v5 removeHandlerForIncomingRequestsWithAction:0 scheme:v6];
}

- (WFDropboxAccessResource)initWithDefinition:(id)definition
{
  v45[3] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = WFDropboxAccessResource;
  v3 = [(WFAccountAccessResource *)&v36 initWithDefinition:definition];
  if (v3)
  {
    if (!+[(WFAccount *)WFDropboxAccount])
    {
      if (WFMigrateDropboxToV2_onceToken != -1)
      {
        dispatch_once(&WFMigrateDropboxToV2_onceToken, &__block_literal_global_22532);
      }

      if ([WFMigrateDropboxToV2_lock tryLock])
      {
        v4 = *MEMORY[0x277CDC238];
        v5 = *MEMORY[0x277CDBEC8];
        v44[0] = *MEMORY[0x277CDC228];
        v44[1] = v5;
        v6 = *MEMORY[0x277CFC730];
        v45[0] = v4;
        v45[1] = v6;
        v44[2] = *MEMORY[0x277CDC120];
        v45[2] = @"is.workflow.my.app.dropbox.auth";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
        v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v7];
        v9 = *MEMORY[0x277CDC438];
        v10 = *MEMORY[0x277CDC558];
        v42[0] = *MEMORY[0x277CDC428];
        v42[1] = v10;
        v11 = *MEMORY[0x277CBED28];
        v43[0] = v9;
        v43[1] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
        [v8 addEntriesFromDictionary:v12];

        result = 0;
        if (SecItemCopyMatching(v8, &result) || !result)
        {
          [WFMigrateDropboxToV2_lock unlock];
        }

        else
        {
          v13 = objc_alloc(MEMORY[0x277CCAAC8]);
          v14 = result;
          v15 = [v13 initForReadingFromData:result error:0];

          if (v15)
          {
            v16 = [v15 decodePropertyListForKey:*MEMORY[0x277CCA308]];
            v17 = objc_opt_class();
            v18 = WFEnforceClass(v16, v17);

            v19 = [v18 objectForKeyedSubscript:@"DBCredentialVersion"];
            v20 = objc_opt_class();
            v21 = WFEnforceClass(v19, v20);
            integerValue = [v21 integerValue];

            if (integerValue == 3)
            {
              v23 = [v18 objectForKeyedSubscript:@"kMPOAuthCredentialConsumerKey"];
              v24 = objc_opt_class();
              v25 = WFEnforceClass(v23, v24);

              v26 = +[WFDropboxAccount clientID];
              v27 = [v25 isEqualToString:v26];

              if (v27)
              {
                v28 = [v18 objectForKeyedSubscript:@"kDBDropboxUserCredentials"];
                v29 = objc_opt_class();
                v30 = WFEnforceClass(v28, v29);

                if ([v30 count])
                {
                  v31 = +[WFDropboxAccount sessionManager];
                  v39[0] = MEMORY[0x277D85DD0];
                  v39[1] = 3221225472;
                  v39[2] = __WFMigrateDropboxToV2_block_invoke_2;
                  v39[3] = &unk_278C1C528;
                  v40 = v31;
                  v37[0] = MEMORY[0x277D85DD0];
                  v37[1] = 3221225472;
                  v37[2] = __WFMigrateDropboxToV2_block_invoke_4;
                  v37[3] = &unk_278C22518;
                  v38 = v7;
                  v32 = v31;
                  [v30 if_mapAsynchronously:v39 completionHandler:v37];
                }

                else
                {
                  [WFMigrateDropboxToV2_lock unlock];
                }
              }

              else
              {
                [WFMigrateDropboxToV2_lock unlock];
              }
            }

            else
            {
              [WFMigrateDropboxToV2_lock unlock];
            }
          }

          else
          {
            [WFMigrateDropboxToV2_lock unlock];
          }
        }
      }
    }

    v33 = v3;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v3;
}

@end