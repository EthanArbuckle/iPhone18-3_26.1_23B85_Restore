@interface WFImgurUploadAction
- (WFImgurUploadAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)uploadInput:(id)input withAccount:(id)account;
@end

@implementation WFImgurUploadAction

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  v7 = MEMORY[0x277CCACA8];
  nameCopy = name;
  if (descriptionCopy)
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to upload %2$@ to Imgur?");
    [v7 localizedStringWithFormat:v9, nameCopy, descriptionCopy];
  }

  else
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to upload image(s) to Imgur?");
    [v7 localizedStringWithFormat:v9, nameCopy, v12];
  }
  v10 = ;

  return v10;
}

- (void)uploadInput:(id)input withAccount:(id)account
{
  accountCopy = account;
  inputCopy = input;
  v7 = [(WFImgurUploadAction *)self parameterValueForKey:@"WFImgurDirectLink" ofClass:objc_opt_class()];
  bOOLValue = [v7 BOOLValue];

  v8 = [(WFImgurUploadAction *)self parameterValueForKey:@"WFImgurAlbum" ofClass:objc_opt_class()];
  bOOLValue2 = [v8 BOOLValue];

  v10 = [(WFImgurUploadAction *)self parameterValueForKey:@"WFImgurTitle" ofClass:objc_opt_class()];
  v11 = [(WFImgurUploadAction *)self parameterValueForKey:@"WFImgurDescription" ofClass:objc_opt_class()];
  v12 = [(WFImgurUploadAction *)self parameterValueForKey:@"WFImgurAlbumLayout" ofClass:objc_opt_class()];
  lowercaseString = [v12 lowercaseString];

  v14 = [(WFImgurUploadAction *)self parameterValueForKey:@"WFImgurAlbumPrivacy" ofClass:objc_opt_class()];
  lowercaseString2 = [v14 lowercaseString];

  v16 = [WFImgurSessionManager alloc];
  v17 = +[WFImgurAccount clientID];
  v18 = [(WFImgurSessionManager *)v16 initWithClientID:v17];

  credential = [accountCopy credential];

  [(WFImgurSessionManager *)v18 setCredential:credential];
  v20 = objc_opt_class();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __47__WFImgurUploadAction_uploadInput_withAccount___block_invoke;
  v28[3] = &unk_278C1A150;
  v28[4] = self;
  v29 = v18;
  v34 = bOOLValue2;
  v30 = v10;
  v31 = v11;
  v35 = bOOLValue;
  v32 = lowercaseString;
  v33 = lowercaseString2;
  v21 = lowercaseString2;
  v22 = lowercaseString;
  v23 = v11;
  v24 = v10;
  v25 = v18;
  [inputCopy generateCollectionByCoercingToItemClass:v20 completionHandler:v28];
}

void __47__WFImgurUploadAction_uploadInput_withAccount___block_invoke(uint64_t a1, void *a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__WFImgurUploadAction_uploadInput_withAccount___block_invoke_2;
  v9[3] = &unk_278C1A128;
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v14 = *(a1 + 80);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v15 = *(a1 + 81);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  [a2 getFileRepresentations:v9 forType:0];
}

void __47__WFImgurUploadAction_uploadInput_withAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [*(a1 + 32) progress];
    [v4 setCompletedUnitCount:0];

    v5 = [v3 count];
    v6 = [*(a1 + 32) progress];
    [v6 setTotalUnitCount:v5];
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __47__WFImgurUploadAction_uploadInput_withAccount___block_invoke_3;
  v26[3] = &unk_278C1A0B0;
  v19 = *(a1 + 32);
  v7 = *(&v19 + 1);
  v29 = *(a1 + 80);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v27 = v19;
  v28 = v10;
  v30 = *(a1 + 81);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__WFImgurUploadAction_uploadInput_withAccount___block_invoke_5;
  v20[3] = &unk_278C1A100;
  v25 = *(a1 + 80);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v21 = v16;
  v22 = v15;
  v17 = *(a1 + 72);
  v18 = *(a1 + 32);
  v23 = v17;
  v24 = v18;
  [v3 if_mapAsynchronously:v26 completionHandler:v20];
}

void __47__WFImgurUploadAction_uploadInput_withAccount___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 progress];
  [v9 becomeCurrentWithPendingUnitCount:1];

  v10 = *(a1 + 40);
  if (*(a1 + 64))
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
  }

  v13 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__WFImgurUploadAction_uploadInput_withAccount___block_invoke_4;
  v16[3] = &unk_278C1A088;
  v18 = *(a1 + 64);
  v16[4] = *(a1 + 32);
  v17 = v6;
  v14 = v6;
  [v10 uploadImage:v8 title:v11 description:v12 progress:v13 completionHandler:v16];

  v15 = [*(a1 + 32) progress];
  [v15 resignCurrent];
}

uint64_t __47__WFImgurUploadAction_uploadInput_withAccount___block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 1)
  {
    v11[5] = v2;
    v11[6] = v3;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__WFImgurUploadAction_uploadInput_withAccount___block_invoke_6;
    v11[3] = &unk_278C1A0D8;
    v8 = *(a1 + 64);
    v11[4] = *(a1 + 72);
    return [v5 createAlbumWithIDs:a2 title:v4 description:v6 layout:v7 privacy:v8 completionHandler:v11];
  }

  else
  {
    v10 = *(a1 + 72);

    return [v10 finishRunningWithError:?];
  }
}

void __47__WFImgurUploadAction_uploadInput_withAccount___block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a4;
  if (a3)
  {
    v6 = *(a1 + 32);
    v7 = a3;
    v8 = [v6 output];
    [v8 addObject:v7];
  }

  [*(a1 + 32) finishRunningWithError:v9];
}

void __47__WFImgurUploadAction_uploadInput_withAccount___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (v14 && (*(a1 + 48) & 1) == 0)
  {
    v10 = [*(a1 + 32) output];
    v11 = v10;
    if (*(a1 + 49) == 1)
    {
      [v10 addObject:v14];
    }

    else
    {
      v12 = [v14 URLByDeletingPathExtension];
      v13 = [v12 absoluteString];
      [v11 addObject:v13];
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  resourceManager = [(WFImgurUploadAction *)self resourceManager];
  v6 = [resourceManager resourceObjectsOfClass:objc_opt_class()];
  anyObject = [v6 anyObject];

  accounts = [anyObject accounts];
  firstObject = [accounts firstObject];

  v10 = [(WFImgurUploadAction *)self parameterValueForKey:@"WFImgurAnonymous" ofClass:objc_opt_class()];
  bOOLValue = [v10 BOOLValue];

  if (firstObject)
  {
    v12 = bOOLValue == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__WFImgurUploadAction_runAsynchronouslyWithInput___block_invoke;
    v13[3] = &unk_278C1DD80;
    v13[4] = self;
    v14 = inputCopy;
    v15 = firstObject;
    [v15 refreshWithCompletionHandler:v13];
  }

  else
  {
    [(WFImgurUploadAction *)self uploadInput:inputCopy withAccount:0];
  }
}

void __50__WFImgurUploadAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (!+[(WFAccount *)WFImgurAccount])
    {
      v5 = *MEMORY[0x277CCA450];
      v13[0] = *MEMORY[0x277CCA470];
      v13[1] = v5;
      v14[0] = @"Upload Failed";
      v14[1] = @"Please sign in to your Imgur account.";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFOAuth2ErrorDomain" code:-1 userInfo:v6];

      v4 = v7;
    }

    [*(a1 + 32) finishRunningWithError:v4];

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *MEMORY[0x277D85DE8];

    [v9 uploadInput:v10 withAccount:v11];
  }
}

- (WFImgurUploadAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  v10.receiver = self;
  v10.super_class = WFImgurUploadAction;
  v5 = [(WFImgurUploadAction *)&v10 initWithIdentifier:identifier definition:definition serializedParameters:parameters];
  if (v5)
  {
    v6 = [(WFImgurUploadAction *)v5 unevaluatedResourceObjectsOfClass:objc_opt_class()];
    anyObject = [v6 anyObject];

    [anyObject setAction:v5];
    v8 = v5;
  }

  return v5;
}

@end