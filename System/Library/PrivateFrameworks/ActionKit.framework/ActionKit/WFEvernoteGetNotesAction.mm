@interface WFEvernoteGetNotesAction
- (void)performSearch:(id)search inNotebook:(id)notebook maxResults:(unint64_t)results;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFEvernoteGetNotesAction

- (void)performSearch:(id)search inNotebook:(id)notebook maxResults:(unint64_t)results
{
  notebookCopy = notebook;
  searchCopy = search;
  v10 = +[WFEvernoteAccessResource evernoteSession];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__WFEvernoteGetNotesAction_performSearch_inNotebook_maxResults___block_invoke;
  v11[3] = &unk_278C22518;
  v11[4] = self;
  [v10 findNotesWithSearch:searchCopy inNotebook:notebookCopy orScope:1 sortOrder:2 maxResults:results completion:v11];
}

void __64__WFEvernoteGetNotesAction_performSearch_inNotebook_maxResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [*(a1 + 32) output];
        v13 = [v11 noteRef];
        v14 = [v11 title];
        [v12 addObject:v13 named:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [*(a1 + 32) finishRunningWithError:v6];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = [(WFEvernoteGetNotesAction *)self parameterValueForKey:@"WFEvernoteNotesTitleSearch" ofClass:objc_opt_class()];
  v5 = [(WFEvernoteGetNotesAction *)self parameterValueForKey:@"WFEvernoteNotesTags" ofClass:objc_opt_class()];
  v6 = [v5 componentsSeparatedByString:{@", "}];

  v7 = [(WFEvernoteGetNotesAction *)self parameterValueForKey:@"WFEvernoteNotesCount" ofClass:objc_opt_class()];
  integerValue = [v7 integerValue];

  v21 = [(WFEvernoteGetNotesAction *)self parameterValueForKey:@"WFEvernoteNotesNotebookName" ofClass:objc_opt_class()];
  v8 = objc_opt_new();
  if ([v4 length])
  {
    [v8 appendFormat:@"intitle:%@ ", v4];
  }

  v22 = v4;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        if ([v16 length])
        {
          [v8 appendFormat:@"tag:%@ ", v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  if ([v8 length])
  {
    v17 = [ENNoteSearch noteSearchWithSearchString:v8];
  }

  else
  {
    v17 = 0;
  }

  if ([v21 length])
  {
    v18 = +[WFEvernoteAccessResource evernoteSession];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __55__WFEvernoteGetNotesAction_runAsynchronouslyWithInput___block_invoke;
    v23[3] = &unk_278C18F78;
    v24 = v21;
    selfCopy = self;
    v26 = v17;
    v27 = integerValue;
    [v18 listNotebooksWithCompletion:v23];
  }

  else
  {
    [(WFEvernoteGetNotesAction *)self performSearch:v17 inNotebook:0 maxResults:integerValue];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __55__WFEvernoteGetNotesAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 name];
        v9 = [v8 isEqualToString:*(a1 + 32)];

        if (v9)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [*(a1 + 40) performSearch:*(a1 + 48) inNotebook:v4 maxResults:*(a1 + 56)];
  v10 = *MEMORY[0x277D85DE8];
}

@end