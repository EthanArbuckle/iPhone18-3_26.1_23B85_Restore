@interface CNContactSelectContainersAction
- (BOOL)containerPicker:(id)picker shouldAllowDeselectionOfContainerWithIdentifier:(id)identifier;
- (void)containerPicker:(id)picker didFinishWithPickedContainers:(id)containers;
- (void)performActionWithContainerContext:(id)context;
@end

@implementation CNContactSelectContainersAction

- (BOOL)containerPicker:(id)picker shouldAllowDeselectionOfContainerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  containerContext = [(CNContactSelectContainersAction *)self containerContext];
  originalContainers = [containerContext originalContainers];
  allValues = [originalContainers allValues];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__CNContactSelectContainersAction_containerPicker_shouldAllowDeselectionOfContainerWithIdentifier___block_invoke;
  v12[3] = &unk_1E74E75E0;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = [allValues _cn_any:v12];

  return v10 ^ 1;
}

uint64_t __99__CNContactSelectContainersAction_containerPicker_shouldAllowDeselectionOfContainerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)containerPicker:(id)picker didFinishWithPickedContainers:(id)containers
{
  v37 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  containerContext = [(CNContactSelectContainersAction *)self containerContext];
  selectedContainers = [containerContext selectedContainers];
  v8 = [selectedContainers copy];

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
        if (([containersCopy containsObject:v14] & 1) == 0)
        {
          containerContext2 = [(CNContactSelectContainersAction *)self containerContext];
          [containerContext2 removeContainer:v14];
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
  v16 = containersCopy;
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
        containerContext3 = [(CNContactSelectContainersAction *)self containerContext];
        [containerContext3 addContainer:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  delegate = [(CNContactAction *)self delegate];
  containerPicker = [(CNContactSelectContainersAction *)self containerPicker];
  navigationController = [containerPicker navigationController];
  [delegate action:self dismissViewController:navigationController sender:self];

  [(CNContactSelectContainersAction *)self cleanupForDismissal];
  delegate2 = [(CNContactAction *)self delegate];
  [delegate2 actionDidFinish:self];
}

- (void)performActionWithContainerContext:(id)context
{
  contextCopy = context;
  [(CNContactSelectContainersAction *)self setContainerContext:contextCopy];
  selectedContainers = [contextCopy selectedContainers];

  v15 = [selectedContainers _cn_map:&__block_literal_global_52122];

  containerPicker = [(CNContactSelectContainersAction *)self containerPicker];

  if (containerPicker)
  {
    containerPicker2 = [(CNContactSelectContainersAction *)self containerPicker];
    [(CNContactContainerPickerViewController *)containerPicker2 setSelectedContainerIdentifiers:v15];
  }

  else
  {
    v8 = [CNContactContainerPickerViewController alloc];
    delegate = [(CNContactAction *)self delegate];
    contactViewCache = [delegate contactViewCache];
    containerPicker2 = [(CNContactContainerPickerViewController *)v8 initWithContactViewCache:contactViewCache selectedContainerIdentifiers:v15];

    [(CNContactContainerPickerViewController *)containerPicker2 setDelegate:self];
    [(CNContactSelectContainersAction *)self setContainerPicker:containerPicker2];
  }

  v11 = objc_alloc(MEMORY[0x1E69DCCD8]);
  containerPicker3 = [(CNContactSelectContainersAction *)self containerPicker];
  v13 = [v11 initWithRootViewController:containerPicker3];

  delegate2 = [(CNContactAction *)self delegate];
  [delegate2 action:self presentViewController:v13 sender:self];
}

@end