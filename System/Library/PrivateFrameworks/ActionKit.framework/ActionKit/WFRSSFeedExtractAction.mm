@interface WFRSSFeedExtractAction
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)addRSSFeedItemsFromHTML:(id)l baseURL:(id)rL encoding:(id)encoding;
- (void)getContentDestinationWithCompletionHandler:(id)handler;
- (void)getURLsFromInputWithCompletionHandler:(id)handler;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFRSSFeedExtractAction

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  v8 = MEMORY[0x277CCACA8];
  nameCopy = name;
  destinationCopy = destination;
  if (descriptionCopy)
  {
    v11 = WFLocalizedString(@"Allow “%1$@” to use %2$@ while finding RSS feeds on %3$@?");
    [v8 localizedStringWithFormat:v11, nameCopy, descriptionCopy, destinationCopy];
  }

  else
  {
    v11 = WFLocalizedString(@"Allow “%1$@” to find RSS feed on %2$@?");
    [v8 localizedStringWithFormat:v11, nameCopy, destinationCopy, v14];
  }
  v12 = ;

  return v12;
}

- (void)getContentDestinationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  input = [(WFRSSFeedExtractAction *)self input];
  WFGetContentLocationFromURLActionInput();
}

- (void)addRSSFeedItemsFromHTML:(id)l baseURL:(id)rL encoding:(id)encoding
{
  lCopy = l;
  rLCopy = rL;
  encodingCopy = encoding;
  if ([lCopy length])
  {
    v10 = lCopy;
    bytes = [lCopy bytes];
    v12 = [lCopy length];
    absoluteString = [rLCopy absoluteString];
    Memory = htmlReadMemory(bytes, v12, [absoluteString UTF8String], objc_msgSend(encodingCopy, "UTF8String"), 2049);

    v15 = xmlXPathNewContext(Memory);
    RootElement = xmlDocGetRootElement(Memory);
    v17 = xmlXPathNodeEval(RootElement, "//head/link[(@rel='self' or @rel='alternate') and (@type='application/atom+xml' or @type='application/rss+xml')]", v15);
    if (v17)
    {
      v18 = v17;
      ctxt = v15;
      cur = Memory;
      v33 = rLCopy;
      p_nodeNr = &v17->nodesetval->nodeNr;
      if (p_nodeNr)
      {
        v20 = 0;
        while (1)
        {
          if (v20 >= *p_nodeNr)
          {
            goto LABEL_16;
          }

          v21 = *(*(p_nodeNr + 1) + 8 * v20);
          Prop = xmlGetProp(v21, "href");
          if (Prop)
          {
            v23 = Prop;
            v24 = MEMORY[0x277CBEBC0];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:Prop];
            v26 = [v24 URLWithString:v25];

            free(v23);
          }

          else
          {
            v26 = 0;
          }

          v27 = xmlGetProp(v21, "title");
          if (!v27)
          {
            break;
          }

          v28 = v27;
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:v27];
          free(v28);
          if (v26)
          {
            goto LABEL_11;
          }

LABEL_12:

          ++v20;
          p_nodeNr = &v18->nodesetval->nodeNr;
          if (!p_nodeNr)
          {
            goto LABEL_16;
          }
        }

        v29 = 0;
        if (!v26)
        {
          goto LABEL_12;
        }

LABEL_11:
        output = [(WFRSSFeedExtractAction *)self output];
        [output addObject:v26 named:v29];

        goto LABEL_12;
      }

LABEL_16:
      xmlXPathFreeObject(v18);
      xmlXPathFreeContext(ctxt);
      xmlFreeDoc(cur);
      rLCopy = v33;
    }
  }
}

- (void)getURLsFromInputWithCompletionHandler:(id)handler
{
  v11[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  input = [(WFRSSFeedExtractAction *)self input];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__WFRSSFeedExtractAction_getURLsFromInputWithCompletionHandler___block_invoke;
  v9[3] = &unk_278C1EE80;
  v10 = handlerCopy;
  v7 = handlerCopy;
  [input generateCollectionByCoercingToItemClasses:v6 completionHandler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __64__WFRSSFeedExtractAction_getURLsFromInputWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v10 = 0;
  v8 = [v7 collectionByFilteringToItemClass:objc_opt_class() excludedItems:&v10];

  v9 = v10;
  (*(*(a1 + 32) + 16))();
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__WFRSSFeedExtractAction_runAsynchronouslyWithInput___block_invoke;
  v3[3] = &unk_278C211D0;
  v3[4] = self;
  [(WFRSSFeedExtractAction *)self getURLsFromInputWithCompletionHandler:v3];
}

void __53__WFRSSFeedExtractAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    [*(a1 + 32) finishRunningWithError:a4];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__WFRSSFeedExtractAction_runAsynchronouslyWithInput___block_invoke_2;
    v15[3] = &unk_278C1EE38;
    v15[4] = *(a1 + 32);
    v9 = objc_opt_class();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__WFRSSFeedExtractAction_runAsynchronouslyWithInput___block_invoke_4;
    v12[3] = &unk_278C1BAA8;
    v10 = v8;
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    [v7 enumerateObjectRepresentations:v15 forClass:v9 completionHandler:v12];
  }
}

void __53__WFRSSFeedExtractAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = WFAppTransportSecuredURL();
  v7 = [MEMORY[0x277CBABB8] wf_sharedSession];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__WFRSSFeedExtractAction_runAsynchronouslyWithInput___block_invoke_3;
  v11[3] = &unk_278C191B0;
  v11[4] = *(a1 + 32);
  v12 = v6;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  v10 = [v7 dataTaskWithURL:v9 completionHandler:v11];
  [v10 resume];
}

void __53__WFRSSFeedExtractAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__WFRSSFeedExtractAction_runAsynchronouslyWithInput___block_invoke_5;
  v5[3] = &unk_278C21EF0;
  v2 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  v3 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__WFRSSFeedExtractAction_runAsynchronouslyWithInput___block_invoke_6;
  v4[3] = &unk_278C21F18;
  v4[4] = *(a1 + 40);
  [v2 enumerateFileRepresentations:v5 forType:v3 completionHandler:v4];
}

void __53__WFRSSFeedExtractAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [a2 data];
  [v4 addRSSFeedItemsFromHTML:v5 baseURL:0 encoding:0];

  v6[2](v6, 0);
}

void __53__WFRSSFeedExtractAction_runAsynchronouslyWithInput___block_invoke_3(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1[4];
  v8 = a1[5];
  v11 = a4;
  v9 = a2;
  v10 = [a3 textEncodingName];
  [v7 addRSSFeedItemsFromHTML:v9 baseURL:v8 encoding:v10];

  (*(a1[6] + 16))();
}

@end