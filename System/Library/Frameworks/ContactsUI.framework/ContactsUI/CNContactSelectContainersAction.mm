@interface CNContactSelectContainersAction
- (BOOL)containerPicker:(id)a3 shouldAllowDeselectionOfContainerWithIdentifier:(id)a4;
- (void)containerPicker:(id)a3 didFinishWithPickedContainers:(id)a4;
- (void)performActionWithContainerContext:(id)a3;
@end

@implementation CNContactSelectContainersAction

- (BOOL)containerPicker:(id)a3 shouldAllowDeselectionOfContainerWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(CNContactSelectContainersAction *)self containerContext];
  v7 = [v6 originalContainers];
  v8 = [v7 allValues];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__CNContactSelectContainersAction_containerPicker_shouldAllowDeselectionOfContainerWithIdentifier___block_invoke;
  v12[3] = &unk_1E74E75E0;
  v13 = v5;
  v9 = v5;
  v10 = [v8 _cn_any:v12];

  return v10 ^ 1;
}

uint64_t __99__CNContactSelectContainersAction_containerPicker_shouldAllowDeselectionOfContainerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)containerPicker:(id)a3 didFinishWithPickedContainers:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(CNContactSelectContainersAction *)self containerContext];
  v7 = [v6 selectedContainers];
  v8 = [v7 copy];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        if (([v5 containsObject:v14] & 1) == 0)
        {
          v15 = [(CNContactSelectContainersAction *)self containerContext];
          [v15 removeContainer:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [(CNContactSelectContainersAction *)self containerContext];
        [v22 addContainer:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  v23 = [(CNContactAction *)self delegate];
  v24 = [(CNContactSelectContainersAction *)self containerPicker];
  v25 = [v24 navigationController];
  [v23 action:self dismissViewController:v25 sender:self];

  [(CNContactSelectContainersAction *)self cleanupForDismissal];
  v26 = [(CNContactAction *)self delegate];
  [v26 actionDidFinish:self];
}

- (void)performActionWithContainerContext:(id)a3
{
  v4 = a3;
  [(CNContactSelectContainersAction *)self setContainerContext:v4];
  v5 = [v4 selectedContainers];

  v15 = [v5 _cn_map:&__block_literal_global_52122];

  v6 = [(CNContactSelectContainersAction *)self containerPicker];

  if (v6)
  {
    v7 = [(CNContactSelectContainersAction *)self containerPicker];
    [(CNContactContainerPickerViewController *)v7 setSelectedContainerIdentifiers:v15];
  }

  else
  {
    v8 = [CNContactContainerPickerViewController alloc];
    v9 = [(CNContactAction *)self delegate];
    v10 = [v9 contactViewCache];
    v7 = [(CNContactContainerPickerViewController *)v8 initWithContactViewCache:v10 selectedContainerIdentifiers:v15];

    [(CNContactContainerPickerViewController *)v7 setDelegate:self];
    [(CNContactSelectContainersAction *)self setContainerPicker:v7];
  }

  v11 = objc_alloc(MEMORY[0x1E69DCCD8]);
  v12 = [(CNContactSelectContainersAction *)self containerPicker];
  v13 = [v11 initWithRootViewController:v12];

  v14 = [(CNContactAction *)self delegate];
  [v14 action:self presentViewController:v13 sender:self];
}

@end