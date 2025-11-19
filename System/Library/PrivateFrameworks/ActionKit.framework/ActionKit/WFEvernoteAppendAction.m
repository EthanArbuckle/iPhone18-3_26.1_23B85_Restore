@interface WFEvernoteAppendAction
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (id)titleSearch;
- (void)performSearch:(id)a3 inNotebook:(id)a4 maxResults:(unint64_t)a5;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)uploadNoteWithContent:(id)a3 toNotebook:(id)a4;
@end

@implementation WFEvernoteAppendAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  if (v6)
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to append %2$@ to an Evernote note?");
    [v7 localizedStringWithFormat:v9, v8, v6];
  }

  else
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to append content to an Evernote note?");
    [v7 localizedStringWithFormat:v9, v8, v12];
  }
  v10 = ;

  return v10;
}

- (id)titleSearch
{
  v3 = objc_opt_class();

  return [(WFEvernoteAppendAction *)self parameterValueForKey:@"WFEvernoteNotesTitleSearch" ofClass:v3];
}

- (void)uploadNoteWithContent:(id)a3 toNotebook:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__WFEvernoteAppendAction_uploadNoteWithContent_toNotebook___block_invoke;
  v8[3] = &unk_278C1BA58;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [WFEvernoteContentItem createNoteWithContent:a3 completionHandler:v8];
}

void __59__WFEvernoteAppendAction_uploadNoteWithContent_toNotebook___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) titleSearch];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [*(a1 + 32) titleSearch];
    [v3 setTitle:v6];
  }

  v7 = +[WFEvernoteAccessResource evernoteSession];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__WFEvernoteAppendAction_uploadNoteWithContent_toNotebook___block_invoke_2;
  v10[3] = &unk_278C21730;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v3;
  v9 = v3;
  [v7 uploadNote:v9 notebook:v8 completion:v10];
}

void __59__WFEvernoteAppendAction_uploadNoteWithContent_toNotebook___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 output];
    v8 = [WFEvernoteContentItem itemWithNoteRef:v6 note:*(a1 + 40)];

    [v7 addItem:v8];
  }

  [*(a1 + 32) finishRunningWithError:v9];
}

- (void)performSearch:(id)a3 inNotebook:(id)a4 maxResults:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[WFEvernoteAccessResource evernoteSession];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__WFEvernoteAppendAction_performSearch_inNotebook_maxResults___block_invoke;
  v12[3] = &unk_278C21150;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 findNotesWithSearch:v9 inNotebook:v11 orScope:1 sortOrder:2 maxResults:a5 completion:v12];
}

void __62__WFEvernoteAppendAction_performSearch_inNotebook_maxResults___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }

  else if ([v5 count])
  {
    v7 = [v6 firstObject];
    v8 = +[WFEvernoteAccessResource evernoteSession];
    v9 = [v7 noteRef];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__WFEvernoteAppendAction_performSearch_inNotebook_maxResults___block_invoke_2;
    v14[3] = &unk_278C1BA30;
    v10 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v10;
    v16 = v7;
    v11 = v7;
    [v8 downloadNote:v9 progress:0 completion:v14];
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = [v12 input];
    [v12 uploadNoteWithContent:v13 toNotebook:*(a1 + 40)];
  }
}

void __62__WFEvernoteAppendAction_performSearch_inNotebook_maxResults___block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [a1[4] input];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__WFEvernoteAppendAction_performSearch_inNotebook_maxResults___block_invoke_3;
    v7[3] = &unk_278C1BA08;
    v7[4] = a1[4];
    v8 = v5;
    v9 = a1[5];
    v10 = a1[6];
    [WFEvernoteContentItem createNoteWithContent:v6 completionHandler:v7];
  }

  else
  {
    [a1[4] finishRunningWithError:a3];
  }
}

void __62__WFEvernoteAppendAction_performSearch_inNotebook_maxResults___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v7 = [v5 resources];
    v8 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(a1 + 40) addResource:*(*(&v37 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v9);
    }

    v12 = [*(a1 + 32) parameterValueForKey:@"WFEvernoteWriteMode" ofClass:objc_opt_class()];
    v13 = [v12 isEqualToString:@"Prepend"];

    if (v13)
    {
      v14 = [v6 content];
      v15 = [v14 enmlWithNote:v6];
      v16 = [v15 mutableCopy];

      [v16 replaceOccurrencesOfString:@"<en-note/>" withString:@"<en-note>" options:0 range:{0, objc_msgSend(v16, "length")}];
      [v16 replaceOccurrencesOfString:@"</en-note>" withString:&stru_2850323E8 options:0 range:{0, objc_msgSend(v16, "length")}];
      v17 = +[ENXMLDTD enml2dtd];
      v18 = [v17 docTypeDeclaration];

      v19 = [*(a1 + 40) content];
      v20 = v19;
      v21 = *(a1 + 40);
    }

    else
    {
      v22 = [*(a1 + 40) content];
      v23 = [v22 enmlWithNote:*(a1 + 40)];
      v16 = [v23 mutableCopy];

      [v16 replaceOccurrencesOfString:@"<en-note/>" withString:@"<en-note>" options:0 range:{0, objc_msgSend(v16, "length")}];
      [v16 replaceOccurrencesOfString:@"</en-note>" withString:&stru_2850323E8 options:0 range:{0, objc_msgSend(v16, "length")}];
      v24 = +[ENXMLDTD enml2dtd];
      v18 = [v24 docTypeDeclaration];

      v19 = [v6 content];
      v20 = v19;
      v21 = v6;
    }

    v25 = [v19 enmlWithNote:v21];
    v26 = [v25 mutableCopy];

    [v26 replaceOccurrencesOfString:@"<?xml version=1.0 encoding=UTF-8 standalone=no?>\n" withString:&stru_2850323E8 options:8 range:{0, objc_msgSend(v26, "length")}];
    v27 = [v18 stringByAppendingString:@"\n"];
    [v26 replaceOccurrencesOfString:v27 withString:&stru_2850323E8 options:8 range:{0, objc_msgSend(v26, "length")}];

    [v26 replaceOccurrencesOfString:@"<en-note>" withString:&stru_2850323E8 options:8 range:{0, objc_msgSend(v26, "length")}];
    [v16 appendString:v26];
    v28 = [ENNoteContent noteContentWithENML:v16];
    [*(a1 + 40) setContent:v28];

    v29 = +[WFEvernoteAccessResource evernoteSession];
    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v32 = [*(a1 + 56) noteRef];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __62__WFEvernoteAppendAction_performSearch_inNotebook_maxResults___block_invoke_4;
    v35[3] = &unk_278C21730;
    v33 = *(a1 + 40);
    v35[4] = *(a1 + 32);
    v36 = v33;
    [v29 uploadNote:v30 policy:1 toNotebook:v31 orReplaceNote:v32 progress:0 completion:v35];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __62__WFEvernoteAppendAction_performSearch_inNotebook_maxResults___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10 = v5;
  if (v5)
  {
    v7 = [v6 output];
    v8 = [WFEvernoteContentItem itemWithNoteRef:v10 note:*(a1 + 40)];
    [v7 addItem:v8];

    v6 = *(a1 + 32);
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  [v6 finishRunningWithError:v9];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = [(WFEvernoteAppendAction *)self parameterValueForKey:@"WFEvernoteNotesNotebookName" ofClass:objc_opt_class()];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(WFEvernoteAppendAction *)self titleSearch];
  v7 = [v5 stringWithFormat:@"intitle:%@", v6];

  v8 = [(WFEvernoteAppendAction *)self titleSearch];
  if ([v8 length])
  {
    v9 = [ENNoteSearch noteSearchWithSearchString:v7];
  }

  else
  {
    v9 = 0;
  }

  if ([v4 length])
  {
    v10 = +[WFEvernoteAccessResource evernoteSession];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__WFEvernoteAppendAction_runAsynchronouslyWithInput___block_invoke;
    v11[3] = &unk_278C221D0;
    v12 = v4;
    v13 = self;
    v14 = v9;
    [v10 listNotebooksWithCompletion:v11];
  }

  else
  {
    [(WFEvernoteAppendAction *)self performSearch:v9 inNotebook:0 maxResults:1];
  }
}

void __53__WFEvernoteAppendAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
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

  [*(a1 + 40) performSearch:*(a1 + 48) inNotebook:v4 maxResults:1];
  v10 = *MEMORY[0x277D85DE8];
}

@end