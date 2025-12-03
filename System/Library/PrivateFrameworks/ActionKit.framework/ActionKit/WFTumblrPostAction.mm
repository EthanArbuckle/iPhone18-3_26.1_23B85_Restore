@interface WFTumblrPostAction
- (BOOL)inputsMultipleItems;
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (TMAPIClient)client;
- (id)defaultSerializedRepresentationForEnumeration:(id)enumeration;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (id)generatedResourceNodes;
- (id)inputContentClasses;
- (id)possibleStatesForEnumeration:(id)enumeration;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)initializeParameters;
- (void)openFiles:(id)files;
- (void)openPostWithType:(id)type withParameters:(id)parameters;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)updateTagsParameterHidden;
@end

@implementation WFTumblrPostAction

- (id)generatedResourceNodes
{
  v31 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WFTumblrPostAction;
  generatedResourceNodes = [(WFTumblrPostAction *)&v28 generatedResourceNodes];
  v3 = [generatedResourceNodes mutableCopy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        resource = [v10 resource];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v13 = v10;

          v7 = v13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = objc_alloc(MEMORY[0x277D7C6F0]);
  v15 = [v14 initWithParameterKey:@"WFComposeInApp" parameterValues:&unk_28509CD10 relation:*MEMORY[0x277D7CEE0]];
  v16 = objc_alloc(MEMORY[0x277D7C818]);
  resource2 = [v7 resource];
  v18 = [objc_alloc(MEMORY[0x277D7C818]) initWithResource:v15];
  v29 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v20 = [v16 initWithResource:resource2 subnodes:v19];

  [v4 removeObject:v7];
  [v4 addObject:v20];
  v21 = v4;

  v22 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  v7 = MEMORY[0x277CCACA8];
  nameCopy = name;
  if (descriptionCopy)
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to post %2$@ on Tumblr?");
    [v7 localizedStringWithFormat:v9, nameCopy, descriptionCopy];
  }

  else
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to post on Tumblr?");
    [v7 localizedStringWithFormat:v9, nameCopy, v12];
  }
  v10 = ;

  return v10;
}

- (id)inputContentClasses
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = &unk_28509CCB0;
  v25[0] = objc_opt_class();
  v24[1] = &unk_28509CCC8;
  v25[1] = objc_opt_class();
  v24[2] = &unk_28509CCE0;
  v25[2] = objc_opt_class();
  v24[3] = &unk_28509CCF8;
  v25[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  workflow = [(WFTumblrPostAction *)self workflow];

  if (workflow)
  {
    v5 = [(WFTumblrPostAction *)self parameterStateForKey:@"WFPostType"];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          value = [v5 value];
          v13 = [v11 containsObject:value];

          if (v13)
          {
            v15 = [v6 objectForKey:v11];
            v22 = v15;
            allValues = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];

            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    allValues = [v6 allValues];
LABEL_12:
  }

  else
  {
    allValues = [v3 allValues];
  }

  v16 = *MEMORY[0x277D85DE8];

  return allValues;
}

- (BOOL)inputsMultipleItems
{
  v2 = [(WFTumblrPostAction *)self parameterStateForKey:@"WFPostType"];
  value = [v2 value];
  v4 = [value isEqualToString:@"Photos"];

  return v4;
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  value = [state value];
  v5 = @"Text";
  if ([value isEqualToString:@"Text"] & 1) != 0 || (v5 = @"Quote", (objc_msgSend(value, "isEqualToString:", @"Quote")) || (v5 = @"Chat", (objc_msgSend(value, "isEqualToString:", @"Chat")) || (v5 = @"Photos", (objc_msgSend(value, "isEqualToString:", @"Photos")) || (v5 = @"Link", (objc_msgSend(value, "isEqualToString:", @"Link")) || (v5 = @"Audio", (objc_msgSend(value, "isEqualToString:", @"Audio")) || (v5 = @"Video", objc_msgSend(value, "isEqualToString:", @"Video")))
  {
    v6 = WFLocalizedString(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)possibleStatesForEnumeration:(id)enumeration
{
  v3 = [(WFTumblrPostAction *)self parameterStateForKey:@"WFComposeInApp"];
  number = [v3 number];
  if (number)
  {
    v5 = number;
    number2 = [v3 number];
    bOOLValue = [number2 BOOLValue];

    v8 = [&unk_28509CC80 mutableCopy];
    v9 = v8;
    if (bOOLValue)
    {
      [v8 removeObjectsInArray:&unk_28509CC98];
    }
  }

  else
  {
    v9 = [&unk_28509CC80 mutableCopy];
  }

  v10 = [v9 if_compactMap:&__block_literal_global_376];

  return v10;
}

id __51__WFTumblrPostAction_possibleStatesForEnumeration___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C928];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3];

  return v4;
}

- (id)defaultSerializedRepresentationForEnumeration:(id)enumeration
{
  possibleStates = [enumeration possibleStates];
  firstObject = [possibleStates firstObject];
  value = [firstObject value];

  if (value)
  {
    v6 = [MEMORY[0x277D7C928] serializedRepresentationFromValue:value];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  keyCopy = key;
  v10.receiver = self;
  v10.super_class = WFTumblrPostAction;
  v7 = [(WFTumblrPostAction *)&v10 setParameterState:state forKey:keyCopy];
  if (v7)
  {
    if ([keyCopy isEqualToString:@"WFPostType"])
    {
      [(WFTumblrPostAction *)self updateTagsParameterHidden];
    }

    if ([keyCopy isEqualToString:@"WFComposeInApp"])
    {
      v8 = [(WFTumblrPostAction *)self parameterForKey:@"WFPostType"];
      [v8 reloadPossibleStates];
    }
  }

  return v7;
}

- (void)updateTagsParameterHidden
{
  v10 = [(WFTumblrPostAction *)self parameterStateForKey:@"WFComposeInApp"];
  number = [v10 number];
  if (number)
  {
    number2 = [v10 number];
    v5 = [number2 BOOLValue] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(WFTumblrPostAction *)self parameterStateForKey:@"WFPostType"];
  v7 = [(WFTumblrPostAction *)self parameterForKey:@"WFPostTags"];
  v8 = v7;
  if (v5)
  {
    [v7 setHidden:0];
  }

  else
  {
    value = [v6 value];
    [v8 setHidden:{objc_msgSend(&unk_28509CC68, "containsObject:", value)}];
  }
}

- (void)openPostWithType:(id)type withParameters:(id)parameters
{
  parametersCopy = parameters;
  typeCopy = type;
  v8 = objc_opt_new();
  [v8 setScheme:@"tumblr"];
  [v8 setHost:@"x-callback-url"];
  v9 = [@"/" stringByAppendingString:typeCopy];

  [v8 setPath:v9];
  v10 = [MEMORY[0x277CBEBC0] dc_queryStringWithQueryDictionary:parametersCopy];

  [v8 setPercentEncodedQuery:v10];
  v11 = MEMORY[0x277D7C558];
  v12 = [v8 URL];
  v13 = [(WFTumblrPostAction *)self app];
  schemes = [v13 schemes];
  firstObject = [schemes firstObject];
  userInterface = [(WFTumblrPostAction *)self userInterface];
  appDescriptor = [(WFTumblrPostAction *)self appDescriptor];
  bundleIdentifier = [appDescriptor bundleIdentifier];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__WFTumblrPostAction_openPostWithType_withParameters___block_invoke;
  v22[3] = &unk_278C215C8;
  v22[4] = self;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__WFTumblrPostAction_openPostWithType_withParameters___block_invoke_2;
  v21[3] = &unk_278C221F8;
  v21[4] = self;
  v19 = [v11 requestWithURL:v12 scheme:firstObject userInterface:userInterface bundleIdentifier:bundleIdentifier successHandler:v22 failureHandler:v21];

  mEMORY[0x277D7C548] = [MEMORY[0x277D7C548] sharedManager];
  [mEMORY[0x277D7C548] performRequest:v19];
}

- (void)openFiles:(id)files
{
  v27 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  v5 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = filesCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addFile:*(*(&v22 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v11 = [WFShareExtensionAction alloc];
  identifier = [(WFTumblrPostAction *)self identifier];
  definition = [(WFTumblrPostAction *)self definition];
  serializedParameters = [(WFTumblrPostAction *)self serializedParameters];
  v15 = [(WFShareExtensionAction *)v11 initWithIdentifier:identifier definition:definition serializedParameters:serializedParameters];

  processedParameters = [(WFTumblrPostAction *)self processedParameters];
  [(WFShareExtensionAction *)v15 setProcessedParameters:processedParameters];

  userInterface = [(WFTumblrPostAction *)self userInterface];
  runningDelegate = [(WFTumblrPostAction *)self runningDelegate];
  variableSource = [(WFTumblrPostAction *)self variableSource];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __32__WFTumblrPostAction_openFiles___block_invoke;
  v21[3] = &unk_278C21E70;
  v21[4] = self;
  [(WFShareExtensionAction *)v15 runWithInput:v5 userInterface:userInterface runningDelegate:runningDelegate variableSource:variableSource workQueue:MEMORY[0x277D85CD0] completionHandler:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __32__WFTumblrPostAction_openFiles___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setOutput:a2];
  }

  [*(a1 + 32) finishRunningWithError:v5];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v74[2] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v4 = [(WFTumblrPostAction *)self parameterValueForKey:@"WFPostType" ofClass:objc_opt_class()];
  lowercaseString = [v4 lowercaseString];

  if ([(__CFString *)lowercaseString isEqualToString:@"photos"])
  {

    lowercaseString = @"photo";
  }

  v6 = [(WFTumblrPostAction *)self parameterValueForKey:@"WFComposeInApp" ofClass:objc_opt_class()];
  bOOLValue = [v6 BOOLValue];

  v8 = [(WFTumblrPostAction *)self parameterValueForKey:@"WFBlogName" ofClass:objc_opt_class()];
  host = [v8 host];

  if ([host length] || bOOLValue && ((-[__CFString isEqualToString:](lowercaseString, "isEqualToString:", @"photo") & 1) != 0 || (-[__CFString isEqualToString:](lowercaseString, "isEqualToString:", @"audio") & 1) != 0 || (-[__CFString isEqualToString:](lowercaseString, "isEqualToString:", @"video") & 1) != 0))
  {
    v71[0] = @"Post Now";
    v71[1] = @"Save as Draft";
    v72[0] = @"published";
    v72[1] = @"draft";
    v71[2] = @"Add to Queue";
    v71[3] = @"Post Privately";
    v72[2] = @"queue";
    v72[3] = @"private";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:4];
    v11 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{lowercaseString, @"type", host, @"host", 0}];
    v12 = [(WFTumblrPostAction *)self parameterValueForKey:@"WFPostState" ofClass:objc_opt_class()];
    v13 = [v10 objectForKey:v12];
    [v11 setValue:v13 forKey:@"state"];

    v14 = [(WFTumblrPostAction *)self parameterValueForKey:@"WFPostTags" ofClass:objc_opt_class()];
    [v11 setValue:v14 forKey:@"tags"];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke;
    aBlock[3] = &unk_278C1E878;
    aBlock[4] = self;
    v15 = _Block_copy(aBlock);
    if ([(__CFString *)lowercaseString isEqualToString:@"text"])
    {
      v70[0] = objc_opt_class();
      v70[1] = objc_opt_class();
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_2;
      v60[3] = &unk_278C1B758;
      v61 = v11;
      selfCopy = self;
      v66 = bOOLValue;
      v63 = lowercaseString;
      v64 = host;
      v65 = v15;
      v17 = inputCopy;
      [inputCopy generateCollectionByCoercingToItemClasses:v16 completionHandler:v60];

      v18 = v61;
    }

    else if ([(__CFString *)lowercaseString isEqualToString:@"quote"])
    {
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_6;
      v54[3] = &unk_278C1B780;
      v54[4] = self;
      v55 = v11;
      v59 = bOOLValue;
      v56 = lowercaseString;
      v57 = host;
      v58 = v15;
      v17 = inputCopy;
      [inputCopy getStringRepresentation:v54];

      v18 = v55;
    }

    else if ([(__CFString *)lowercaseString isEqualToString:@"link"])
    {
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_7;
      v48[3] = &unk_278C1B7A8;
      v48[4] = self;
      v49 = v11;
      v53 = bOOLValue;
      v50 = lowercaseString;
      v51 = host;
      v52 = v15;
      v17 = inputCopy;
      [inputCopy getObjectRepresentation:v48 forClass:objc_opt_class()];

      v18 = v49;
    }

    else if ([(__CFString *)lowercaseString isEqualToString:@"chat"])
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_8;
      v42[3] = &unk_278C1B780;
      v42[4] = self;
      v43 = v11;
      v47 = bOOLValue;
      v44 = lowercaseString;
      v45 = host;
      v46 = v15;
      v17 = inputCopy;
      [inputCopy getStringRepresentation:v42];

      v18 = v43;
    }

    else
    {
      v17 = inputCopy;
      if (([(__CFString *)lowercaseString isEqualToString:@"photo"]& 1) == 0 && ([(__CFString *)lowercaseString isEqualToString:@"audio"]& 1) == 0 && ![(__CFString *)lowercaseString isEqualToString:@"video"])
      {
        goto LABEL_23;
      }

      v23 = [(WFTumblrPostAction *)self parameterValueForKey:@"WFPostCaption" ofClass:objc_opt_class()];
      [v11 setValue:v23 forKey:@"caption"];

      if (![(__CFString *)lowercaseString isEqualToString:@"photo"])
      {
        v68[0] = @"audio";
        v26 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DE0]];
        v68[1] = @"video";
        v69[0] = v26;
        v17 = inputCopy;
        v27 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DF0]];
        v69[1] = v27;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_16;
        v31[3] = &unk_278C1B820;
        v31[4] = self;
        v36 = bOOLValue;
        v32 = lowercaseString;
        v33 = host;
        v34 = v11;
        v35 = v15;
        v28 = [v29 objectForKey:v32];
        [inputCopy getFileRepresentation:v31 forType:v28];

        goto LABEL_23;
      }

      v24 = objc_opt_class();
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_9;
      v37[3] = &unk_278C1B7F8;
      v37[4] = self;
      v41 = bOOLValue;
      v38 = host;
      v39 = v11;
      v40 = v15;
      [inputCopy generateCollectionByCoercingToItemClass:v24 completionHandler:v37];

      v18 = v38;
    }

LABEL_23:
    goto LABEL_24;
  }

  v19 = MEMORY[0x277CCA9B8];
  v20 = *MEMORY[0x277D7CB30];
  v73[0] = *MEMORY[0x277CCA470];
  v10 = WFLocalizedString(@"No Blog");
  v74[0] = v10;
  v73[1] = *MEMORY[0x277CCA450];
  v11 = WFLocalizedString(@"You did not specify which blog to post to.");
  v74[1] = v11;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v22 = [v19 errorWithDomain:v20 code:5 userInfo:v21];
  [(WFTumblrPostAction *)self finishRunningWithError:v22];

  v17 = inputCopy;
LABEL_24:

  v25 = *MEMORY[0x277D85DE8];
}

void __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKey:@"id"];
    v8 = [v7 stringValue];
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v5 objectForKey:@"errors"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 count];
  if (v6 && v10)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = [v6 domain];
    v13 = [v6 code];
    v22 = *MEMORY[0x277CCA470];
    v14 = [v9 firstObject];
    v23[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v16 = [v11 errorWithDomain:v12 code:v13 userInfo:v15];

    v6 = v16;
  }

  if (v8)
  {
    v17 = [*(a1 + 32) parameterValueForKey:@"WFBlogName" ofClass:objc_opt_class()];
    v18 = [v17 URLByAppendingPathComponent:@"post"];
    v19 = [v18 URLByAppendingPathComponent:v8];

    if (v19)
    {
      v20 = [*(a1 + 32) output];
      [v20 addObject:v19];
    }
  }

  [*(a1 + 32) finishRunningWithError:v6];

  v21 = *MEMORY[0x277D85DE8];
}

void __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_3;
  aBlock[3] = &unk_278C1B730;
  v4 = *(a1 + 32);
  v28 = *(a1 + 72);
  *&v5 = v4;
  *(&v5 + 1) = *(a1 + 40);
  v19 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v25 = v19;
  v26 = v8;
  v27 = *(a1 + 64);
  v9 = _Block_copy(aBlock);
  v10 = [v3 items];
  v11 = [v10 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_4;
    v22[3] = &unk_278C216C8;
    v13 = &v23;
    v22[4] = *(a1 + 40);
    v23 = v9;
    v14 = MEMORY[0x277D79F68];
    v15 = *MEMORY[0x277CE1DA0];
    v16 = v9;
    v17 = [v14 typeWithUTType:v15];
    [v3 getFileRepresentation:v22 forType:v17];
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_5;
    v20[3] = &unk_278C1F558;
    v13 = &v21;
    v20[4] = *(a1 + 40);
    v21 = v9;
    v18 = v9;
    [v3 getStringRepresentation:v20];
  }
}

void __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v10 length])
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) parameterValueForKey:@"WFPostSource" ofClass:objc_opt_class()];
    [v6 setValue:v7 forKey:@"source"];

    [*(a1 + 40) setValue:v10 forKey:@"quote"];
    v8 = *(a1 + 32);
    if (*(a1 + 72) == 1)
    {
      [v8 openPostWithType:*(a1 + 48) withParameters:*(a1 + 40)];
    }

    else
    {
      v9 = [v8 client];
      [v9 quote:*(a1 + 56) parameters:*(a1 + 40) callback:*(a1 + 64)];
    }
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v5];
  }
}

void __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  if (v17)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) parameterValueForKey:@"WFPostTitle" ofClass:objc_opt_class()];
    [v9 setValue:v10 forKey:@"title"];

    v11 = *(a1 + 40);
    v12 = [v17 absoluteString];
    [v11 setValue:v12 forKey:@"url"];

    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) parameterValueForKey:@"WFPostDescription" ofClass:objc_opt_class()];
    [v13 setValue:v14 forKey:@"description"];

    v15 = *(a1 + 32);
    if (*(a1 + 72) == 1)
    {
      [v15 openPostWithType:*(a1 + 48) withParameters:*(a1 + 40)];
    }

    else
    {
      v16 = [v15 client];
      [v16 link:*(a1 + 56) parameters:*(a1 + 40) callback:*(a1 + 64)];
    }
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v8];
  }
}

void __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) parameterValueForKey:@"WFPostTitle" ofClass:objc_opt_class()];
    [v6 setValue:v7 forKey:@"title"];

    if (*(a1 + 72))
    {
      v8 = @"body";
    }

    else
    {
      v8 = @"conversation";
    }

    [*(a1 + 40) setValue:v11 forKey:v8];
    v9 = *(a1 + 32);
    if (*(a1 + 72) == 1)
    {
      [v9 openPostWithType:*(a1 + 48) withParameters:*(a1 + 40)];
    }

    else
    {
      v10 = [v9 client];
      [v10 chat:*(a1 + 56) parameters:*(a1 + 40) callback:*(a1 + 64)];
    }
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v5];
  }
}

void __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_9(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v8 = objc_alloc(MEMORY[0x277CBEB98]);
    v9 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E10]];
    v10 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DC0]];
    v11 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D88]];
    v12 = [v8 initWithObjects:{v9, v10, v11, 0}];

    v13 = [v6 items];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_10;
    v24[3] = &unk_278C21088;
    v25 = v12;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_12;
    v20[3] = &unk_278C1B7D0;
    v23 = *(a1 + 64);
    v19 = *(a1 + 32);
    v14 = *(&v19 + 1);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    v21 = v19;
    v22 = v17;
    v18 = v12;
    [v13 if_mapAsynchronously:v24 completionHandler:v20];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v7];
  }
}

void __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 72) == 1)
    {
      v7 = *(a1 + 32);
      v17[0] = v5;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      [v7 openFiles:v8];
LABEL_10:

      goto LABEL_11;
    }

    if ([*(a1 + 40) isEqualToString:@"audio"])
    {
      v8 = [*(a1 + 32) client];
      v9 = *(a1 + 48);
      v10 = [v5 fileURL];
      v11 = [v10 path];
      v12 = [v5 wfType];
      v13 = [v12 MIMEType];
      v14 = [v5 filename];
      [v8 audio:v9 filePath:v11 contentType:v13 fileName:v14 parameters:*(a1 + 56) callback:*(a1 + 64)];
LABEL_9:

      goto LABEL_10;
    }

    if ([*(a1 + 40) isEqualToString:@"video"])
    {
      v8 = [*(a1 + 32) client];
      v15 = *(a1 + 48);
      v10 = [v5 fileURL];
      v11 = [v10 path];
      v12 = [v5 wfType];
      v13 = [v12 MIMEType];
      v14 = [v5 filename];
      [v8 video:v15 filePath:v11 contentType:v13 fileName:v14 parameters:*(a1 + 56) callback:*(a1 + 64)];
      goto LABEL_9;
    }
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v6];
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

void __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_10(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 preferredFileType];
  if (([*(a1 + 32) containsObject:v8] & 1) == 0)
  {
    v9 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DC0]];

    v8 = v9;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_11;
  v11[3] = &unk_278C211F8;
  v12 = v7;
  v10 = v7;
  [v6 getFileRepresentation:v11 forType:v8];
}

void __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v12 count])
  {
    v6 = *(a1 + 32);
    if (*(a1 + 64) == 1)
    {
      [v6 openFiles:v12];
    }

    else
    {
      v7 = [v6 client];
      v8 = *(a1 + 40);
      v9 = [v12 if_map:&__block_literal_global_17596];
      v10 = [v12 if_map:&__block_literal_global_326];
      v11 = [v12 if_map:&__block_literal_global_328];
      [v7 photo:v8 filePathArray:v9 contentTypeArray:v10 fileNameArray:v11 parameters:*(a1 + 48) callback:*(a1 + 56)];
    }
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v5];
  }
}

id __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = [a2 wfType];
  v3 = [v2 MIMEType];

  return v3;
}

id __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 fileURL];
  v3 = [v2 path];

  return v3;
}

void __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 parameterValueForKey:@"WFPostTitle" ofClass:objc_opt_class()];
  [v3 setValue:v6 forKey:@"title"];

  [*(a1 + 32) setValue:v5 forKey:@"body"];
  v7 = *(a1 + 40);
  if (*(a1 + 72) == 1)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);

    [v7 openPostWithType:v8 withParameters:v9];
  }

  else
  {
    v10 = [v7 client];
    [v10 text:*(a1 + 56) parameters:*(a1 + 32) callback:*(a1 + 64)];
  }
}

void __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (v9)
  {
    v5 = *(a1 + 40);
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = [v9 data];
    v8 = [v6 initWithData:v7 encoding:4];
    (*(v5 + 16))(v5, v8);
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }
}

uint64_t __49__WFTumblrPostAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(a1 + 32) finishRunningWithError:?];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (TMAPIClient)client
{
  if (!self->_client)
  {
    v3 = objc_alloc_init(TMAPIClient);
    client = self->_client;
    self->_client = v3;
  }

  v5 = +[WFTumblrAccessResource tumblrOAuthToken];
  [(TMAPIClient *)self->_client setOAuthToken:v5];

  v6 = +[WFTumblrAccessResource tumblrOAuthTokenSecret];
  [(TMAPIClient *)self->_client setOAuthTokenSecret:v6];

  [(TMAPIClient *)self->_client setOAuthConsumerKey:@"cwKKz80VhsmeSt3n8ORZFqZSqYejgTm7DKGRxM5ecescOhZjRw"];
  [(TMAPIClient *)self->_client setOAuthConsumerSecret:@"TvXKq6PUXP2GldJBTKM99C4ly30vrKerTF3Cr5LNqy3J3gZBPf"];
  v7 = self->_client;

  return v7;
}

- (void)initializeParameters
{
  v4.receiver = self;
  v4.super_class = WFTumblrPostAction;
  [(WFTumblrPostAction *)&v4 initializeParameters];
  v3 = [(WFTumblrPostAction *)self parameterForKey:@"WFPostType"];
  [v3 setDataSource:self];
  [(WFTumblrPostAction *)self updateTagsParameterHidden];
}

@end