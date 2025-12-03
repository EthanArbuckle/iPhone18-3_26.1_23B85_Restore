@interface WFChooseFromListAction
- (id)contentItemsFromSelectedItem:(id)item;
- (id)itemsFromDictionary:(id)dictionary;
- (id)roundedImageFromWFImage:(id)image roundingStyle:(unint64_t)style desiredSize:(CGSize)size desiredScale:(double)scale;
- (void)getOutputFromIntentResponse:(id)response completionHandler:(id)handler;
- (void)presentAlertWithUserInterface:(id)interface prompt:(id)prompt input:(id)input;
- (void)resolveSlot:(id)slot withProcessedValue:(id)value parameter:(id)parameter input:(id)input completion:(id)completion;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFChooseFromListAction

- (void)getOutputFromIntentResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFChooseFromListAction.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v8 = objc_opt_class();
  v9 = WFEnforceClass(responseCopy, v8);
  v10 = v9;
  if (v9)
  {
    selectedItem = [v9 selectedItem];
    identifier = [selectedItem identifier];
    integerValue = [identifier integerValue];

    input = [(WFChooseFromListAction *)self input];
    numberOfItems = [input numberOfItems];

    if (integerValue >= numberOfItems)
    {
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      input2 = [(WFChooseFromListAction *)self input];
      items = [input2 items];
      v18 = [items objectAtIndex:integerValue];

      v19 = MEMORY[0x277CFC2E0];
      v20 = [(WFChooseFromListAction *)self contentItemsFromSelectedItem:v18];
      v21 = [v19 collectionWithItems:v20];
      (handlerCopy)[2](handlerCopy, v21);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (id)roundedImageFromWFImage:(id)image roundingStyle:(unint64_t)style desiredSize:(CGSize)size desiredScale:(double)scale
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  WFContentItemListThumbnailCornerRadiusForRoundingStyle();
  v11 = v10;
  v12 = [MEMORY[0x277D79DF8] contextWithSize:width scale:{height, scale}];
  cGContext = [v12 CGContext];
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = width;
  v18.size.height = height;
  v14 = CGPathCreateWithRoundedRect(v18, v11, v11, 0);
  CGContextAddPath(cGContext, v14);
  CGContextClip(cGContext);
  [imageCopy drawInContext:v12 inRect:{0.0, 0.0, width, height}];

  image = [v12 image];

  return image;
}

- (void)resolveSlot:(id)slot withProcessedValue:(id)value parameter:(id)parameter input:(id)input completion:(id)completion
{
  slotCopy = slot;
  valueCopy = value;
  parameterCopy = parameter;
  inputCopy = input;
  completionCopy = completion;
  wf_slotName = [slotCopy wf_slotName];
  v18 = [wf_slotName isEqualToString:@"originalItems"];

  if (v18)
  {
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.shortcuts.choose-from-list", v19);

    items = [inputCopy items];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __84__WFChooseFromListAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke;
    v24[3] = &unk_278C19CB0;
    v24[4] = self;
    v25 = v20;
    v22 = v20;
    [items if_mapAsynchronouslyOnQueue:v22 transform:v24 completionHandler:completionCopy];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = WFChooseFromListAction;
    [(WFHandleIntentAction *)&v23 resolveSlot:slotCopy withProcessedValue:valueCopy parameter:parameterCopy input:inputCopy completion:completionCopy];
  }
}

void __84__WFChooseFromListAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = dispatch_group_create();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__6147;
  v36[4] = __Block_byref_object_dispose__6148;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__6147;
  v34[4] = __Block_byref_object_dispose__6148;
  v35 = 0;
  dispatch_group_enter(v9);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __84__WFChooseFromListAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke_260;
  v30[3] = &unk_278C19C38;
  v10 = *(a1 + 32);
  v32 = v34;
  v30[4] = v10;
  __asm { FMOV            V0.2D, #31.0 }

  v33 = _Q0;
  v16 = v9;
  v31 = v16;
  if (([v7 getListThumbnail:v30 forSize:{31.0, 31.0}] & 1) == 0)
  {
    dispatch_group_leave(v16);
  }

  dispatch_group_enter(v16);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __84__WFChooseFromListAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke_2;
  v27[3] = &unk_278C19C60;
  v29 = v36;
  v17 = v16;
  v28 = v17;
  if (([v7 getListSubtitle:v27] & 1) == 0)
  {
    dispatch_group_leave(v17);
  }

  v18 = *(a1 + 40);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __84__WFChooseFromListAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke_3;
  v21[3] = &unk_278C19C88;
  v22 = v7;
  v23 = v8;
  v24 = v36;
  v25 = v34;
  v26 = a3;
  v19 = v7;
  v20 = v8;
  dispatch_group_notify(v17, v18, v21);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
}

void __84__WFChooseFromListAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke_260(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = [a3 objectForKeyedSubscript:*MEMORY[0x277D7A398]];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntegerValue];
  }

  else
  {
    v6 = 0;
  }

  if (v15)
  {
    v7 = MEMORY[0x277CD3D10];
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277D79F18] currentDevice];
    [v9 screenScale];
    v11 = [v8 roundedImageFromWFImage:v15 roundingStyle:v6 desiredSize:*(a1 + 56) desiredScale:{*(a1 + 64), v10}];
    v12 = [v7 imageWithWFImage:v11];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __84__WFChooseFromListAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __84__WFChooseFromListAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke_3(uint64_t a1)
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", *(a1 + 64)];
  v2 = *(a1 + 40);
  v3 = [WFChooseFromListItem alloc];
  v4 = [*(a1 + 32) name];
  v5 = [(WFChooseFromListItem *)v3 initWithIdentifier:v6 displayString:v4 subtitleString:*(*(*(a1 + 48) + 8) + 40) displayImage:*(*(*(a1 + 56) + 8) + 40)];
  (*(v2 + 16))(v2, v5, 0);
}

- (void)presentAlertWithUserInterface:(id)interface prompt:(id)prompt input:(id)input
{
  v57 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  promptCopy = prompt;
  inputCopy = input;
  v11 = [(WFChooseFromListAction *)self parameterValueForKey:@"WFChooseFromListActionSelectMultiple" ofClass:objc_opt_class()];
  bOOLValue = [v11 BOOLValue];

  v13 = [(WFChooseFromListAction *)self parameterValueForKey:@"WFChooseFromListActionSelectAll" ofClass:objc_opt_class()];
  bOOLValue2 = [v13 BOOLValue];

  getListRepresentation = [inputCopy getListRepresentation];
  items = [getListRepresentation items];

  if ([items count] == 1)
  {
    firstObject = [items firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      items2 = [inputCopy items];
      firstObject2 = [items2 firstObject];

      if (firstObject2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = firstObject2;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      dictionary = [v22 dictionary];

      v24 = [(WFChooseFromListAction *)self itemsFromDictionary:dictionary];

      items = v24;
    }
  }

  v41 = inputCopy;
  v43 = interfaceCopy;
  if (bOOLValue & bOOLValue2)
  {
    v25 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(items, "count", inputCopy)}];
  }

  else
  {
    v25 = objc_opt_new();
  }

  v26 = v25;
  v27 = [MEMORY[0x277CFC218] alertWithPreferredStyle:{1, v41}];
  if ([promptCopy length])
  {
    v28 = promptCopy;
  }

  else
  {
    v28 = 0;
  }

  [v27 setTitle:v28];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __69__WFChooseFromListAction_presentAlertWithUserInterface_prompt_input___block_invoke;
  v51[3] = &unk_278C19C10;
  v29 = v26;
  v52 = v29;
  v55 = bOOLValue;
  v30 = v27;
  v53 = v30;
  selfCopy = self;
  v31 = [items if_compactMap:v51];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v32 = [v31 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v48;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [v30 addButton:*(*(&v47 + 1) + 8 * i)];
      }

      v33 = [v31 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v33);
  }

  v36 = [MEMORY[0x277CFC220] cancelButtonWithTarget:self action:sel_cancel];
  [v30 addButton:v36];

  if (bOOLValue)
  {
    v37 = MEMORY[0x277CFC220];
    v38 = WFLocalizedString(@"Done");
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __69__WFChooseFromListAction_presentAlertWithUserInterface_prompt_input___block_invoke_4;
    v44[3] = &unk_278C21508;
    v45 = v31;
    selfCopy2 = self;
    v39 = [v37 buttonWithTitle:v38 style:0 preferred:1 handler:v44];
    [v30 addButton:v39];
  }

  [v43 presentAlert:v30];

  v40 = *MEMORY[0x277D85DE8];
}

id __69__WFChooseFromListAction_presentAlertWithUserInterface_prompt_input___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) containsIndex:a3];
  if (*(a1 + 56) == 1)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__WFChooseFromListAction_presentAlertWithUserInterface_prompt_input___block_invoke_2;
    aBlock[3] = &unk_278C19BE8;
    v14 = *(a1 + 40);
    v15 = a3;
    v7 = _Block_copy(aBlock);
    v8 = v14;
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__WFChooseFromListAction_presentAlertWithUserInterface_prompt_input___block_invoke_3;
    v11[3] = &unk_278C21508;
    v11[4] = *(a1 + 48);
    v12 = v5;
    v7 = _Block_copy(v11);
    v8 = v12;
  }

  v9 = [MEMORY[0x277CFC2C8] buttonWithContentItem:v5 selected:v6 stickySelection:*(a1 + 56) handler:v7];

  return v9;
}

void __69__WFChooseFromListAction_presentAlertWithUserInterface_prompt_input___block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isSelected])
        {
          v9 = *(a1 + 40);
          v10 = [v8 contentItem];
          v11 = [v9 contentItemsFromSelectedItem:v10];
          [v2 addObjectsFromArray:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = [MEMORY[0x277CFC2E0] collectionWithItems:v2];
  [*(a1 + 40) setOutput:v12];

  [*(a1 + 40) finishRunningWithError:0];
  v13 = *MEMORY[0x277D85DE8];
}

void __69__WFChooseFromListAction_presentAlertWithUserInterface_prompt_input___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) buttons];
  v3 = [v2 objectAtIndexedSubscript:*(a1 + 40)];
  v4 = objc_opt_class();
  v5 = WFEnforceClass(v3, v4);

  [v5 setSelected:{objc_msgSend(v5, "isSelected") ^ 1}];
}

uint64_t __69__WFChooseFromListAction_presentAlertWithUserInterface_prompt_input___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277CFC2E0];
  v3 = [*(a1 + 32) contentItemsFromSelectedItem:*(a1 + 40)];
  v4 = [v2 collectionWithItems:v3];
  [*(a1 + 32) setOutput:v4];

  v5 = *(a1 + 32);

  return [v5 finishRunningWithError:0];
}

- (id)contentItemsFromSelectedItem:(id)item
{
  v10[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  attributionSet = [itemCopy attributionSet];
  v5 = [attributionSet attributionSetByFilteringNeighborsOfContentItem:itemCopy];
  [itemCopy setAttributionSet:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    items = [itemCopy items];
  }

  else
  {
    v10[0] = itemCopy;
    items = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  v7 = items;

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)itemsFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  allKeys = [dictionaryCopy allKeys];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__WFChooseFromListAction_itemsFromDictionary___block_invoke;
  v8[3] = &unk_278C19BC0;
  v9 = dictionaryCopy;
  v5 = dictionaryCopy;
  v6 = [allKeys if_compactMap:v8];

  return v6;
}

id __46__WFChooseFromListAction_itemsFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 description];
  }

  v5 = v4;
  v6 = [*(a1 + 32) objectForKey:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [WFChooseFromListArrayContentItem itemWithObjects:v6 named:v5];
  }

  else
  {
    [MEMORY[0x277CFC2F8] itemWithObject:v6 named:v5];
  }
  v7 = ;

  return v7;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  items = [inputCopy items];
  v6 = [items count];

  if (!v6)
  {
    [(WFChooseFromListAction *)self setOutput:inputCopy];
    [(WFHandleIntentAction *)self finishRunningWithError:0];
    goto LABEL_21;
  }

  v7 = [(WFChooseFromListAction *)self parameterValueForKey:@"WFChooseFromListActionSelectMultiple" ofClass:objc_opt_class()];
  bOOLValue = [v7 BOOLValue];

  userInterface = [(WFChooseFromListAction *)self userInterface];
  userInterfaceType = [userInterface userInterfaceType];
  v11 = [userInterfaceType isEqualToString:*MEMORY[0x277CFC708]];

  if (!v11)
  {
    wfUnsupportedUserInterfaceError = [(WFChooseFromListAction *)self parameterValueForKey:@"WFChooseFromListActionPrompt" ofClass:objc_opt_class()];
    if (![wfUnsupportedUserInterfaceError length] && (bOOLValue & 1) == 0)
    {
      localizedDefaultDisambiguationPrompt = [(WFChooseFromListAction *)self localizedDefaultDisambiguationPrompt];

      wfUnsupportedUserInterfaceError = localizedDefaultDisambiguationPrompt;
    }

    items2 = [inputCopy items];
    v17 = [items2 count];

    if (!v17)
    {
      [(WFChooseFromListAction *)self setOutput:inputCopy];
      selfCopy2 = self;
      v14 = 0;
      goto LABEL_14;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__WFChooseFromListAction_runAsynchronouslyWithInput___block_invoke;
    aBlock[3] = &unk_278C21F68;
    aBlock[4] = self;
    v18 = wfUnsupportedUserInterfaceError;
    v41 = v18;
    v19 = inputCopy;
    v42 = v19;
    v20 = _Block_copy(aBlock);
    v21 = [v19 collectionByFilteringItemsWithBlock:&__block_literal_global_6176 excludedItems:0];
    v22 = [(WFChooseFromListAction *)self parameterValueForKey:@"WFChooseFromListActionSelectAll" ofClass:objc_opt_class()];
    bOOLValue2 = [v22 BOOLValue];

    userInterface2 = [(WFChooseFromListAction *)self userInterface];
    v33 = v21;
    if ([userInterface2 isRunningWithSiriUI])
    {
    }

    else
    {
      v30 = bOOLValue2;
      v31 = v18;
      items3 = [v21 items];
      v32 = [items3 count];
      items4 = [v19 items];
      v27 = v20;
      v28 = [items4 count];

      v29 = v32 == v28;
      v20 = v27;
      if (v29)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __53__WFChooseFromListAction_runAsynchronouslyWithInput___block_invoke_3;
        v34[3] = &unk_278C19B98;
        v34[4] = self;
        v35 = v31;
        v38 = v30;
        v39 = bOOLValue;
        v36 = v19;
        v37 = v27;
        [(WFChooseFromListAction *)self requestUnlock:v34];

LABEL_19:
        goto LABEL_20;
      }
    }

    v20[2](v20);
    goto LABEL_19;
  }

  if (bOOLValue)
  {
    wfUnsupportedUserInterfaceError = [MEMORY[0x277CCA9B8] wfUnsupportedUserInterfaceError];
    selfCopy2 = self;
    v14 = wfUnsupportedUserInterfaceError;
LABEL_14:
    [(WFHandleIntentAction *)selfCopy2 finishRunningWithError:v14];
LABEL_20:

    goto LABEL_21;
  }

  v43.receiver = self;
  v43.super_class = WFChooseFromListAction;
  [(WFHandleIntentAction *)&v43 runAsynchronouslyWithInput:inputCopy];
LABEL_21:
}

void __53__WFChooseFromListAction_runAsynchronouslyWithInput___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 userInterface];
  [v2 presentAlertWithUserInterface:v3 prompt:a1[5] input:a1[6]];
}

void __53__WFChooseFromListAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__WFChooseFromListAction_runAsynchronouslyWithInput___block_invoke_4;
    v11[3] = &unk_278C19B70;
    v4 = *(a1 + 40);
    v14 = *(a1 + 64);
    v5 = *(a1 + 48);
    v9 = *(a1 + 32);
    v6 = *(a1 + 56);
    *&v7 = v9;
    *(&v7 + 1) = v6;
    *&v8 = v4;
    *(&v8 + 1) = v5;
    v12 = v8;
    v13 = v7;
    [v2 requestInterfacePresentationWithCompletionHandler:v11];
  }

  else
  {
    v10 = [*(a1 + 32) deviceLockedError];
    [v2 finishRunningWithError:v10];
  }
}

void __53__WFChooseFromListAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 65);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__WFChooseFromListAction_runAsynchronouslyWithInput___block_invoke_5;
    v11[3] = &unk_278C21E70;
    v11[4] = *(a1 + 48);
    [a2 showImagesWithPrompt:v9 canSelectAll:v7 canSelectMultiple:v8 inputItems:v10 completionHandler:v11];
  }

  else if ([v5 wf_isUserCancelledError])
  {
    [*(a1 + 48) finishRunningWithError:v6];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __53__WFChooseFromListAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

uint64_t __53__WFChooseFromListAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end