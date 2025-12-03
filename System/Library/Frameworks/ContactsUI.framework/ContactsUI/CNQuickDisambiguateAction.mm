@interface CNQuickDisambiguateAction
- (BOOL)isEqual:(id)equal;
- (CNQuickAction)mainAction;
- (CNQuickDisambiguateAction)initWithActions:(id)actions;
- (id)description;
- (id)subtitleForContext:(int64_t)context;
- (id)titleForContext:(int64_t)context;
- (void)performWithCompletionBlock:(id)block;
@end

@implementation CNQuickDisambiguateAction

- (CNQuickAction)mainAction
{
  WeakRetained = objc_loadWeakRetained(&self->_mainAction);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CNQuickDisambiguateAction;
  v4 = [(CNQuickAction *)&v8 description];
  actions = [(CNQuickDisambiguateAction *)self actions];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, actions];

  return v6;
}

- (void)performWithCompletionBlock:(id)block
{
  v38 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  mainAction = [(CNQuickDisambiguateAction *)self mainAction];
  if ([mainAction score] < 0x3E9)
  {
  }

  else
  {
    isLongPress = [(CNQuickAction *)self isLongPress];

    if (!isLongPress)
    {
      mainAction2 = [(CNQuickDisambiguateAction *)self mainAction];
      [mainAction2 performWithCompletionBlock:blockCopy];

      goto LABEL_18;
    }
  }

  v27 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  actions = [(CNQuickDisambiguateAction *)self actions];
  v8 = [actions countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(actions);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        if (!-[CNQuickDisambiguateAction ignoreMainAction](self, "ignoreMainAction") || (-[CNQuickDisambiguateAction mainAction](self, "mainAction"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v12 isEqual:v13], v13, (v14 & 1) == 0))
        {
          v15 = [v12 titleForContext:4];
          v16 = [v12 subtitleForContext:4];
          v17 = MEMORY[0x1E69DC648];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __56__CNQuickDisambiguateAction_performWithCompletionBlock___block_invoke;
          v31[3] = &unk_1E74E5368;
          v31[4] = v12;
          v32 = blockCopy;
          v18 = [v17 _actionWithTitle:v16 descriptiveText:v15 image:0 style:0 handler:v31 shouldDismissHandler:&__block_literal_global_369];
          [v27 addAction:v18];
          [(CNQuickDisambiguateAction *)self mainAction];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [actions countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  v19 = MEMORY[0x1E69DC648];
  v20 = CNContactsUIBundle();
  v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __56__CNQuickDisambiguateAction_performWithCompletionBlock___block_invoke_4;
  v29[3] = &unk_1E74E22B0;
  v30 = blockCopy;
  v22 = [v19 _actionWithTitle:v21 image:0 style:1 handler:&__block_literal_global_374 shouldDismissHandler:v29];
  [v27 addAction:v22];

  popoverPresentationController = [v27 popoverPresentationController];
  if (popoverPresentationController)
  {
    sourceView = [(CNQuickAction *)self sourceView];
    [popoverPresentationController setSourceView:sourceView];

    sourceView2 = [(CNQuickAction *)self sourceView];
    [sourceView2 bounds];
    [popoverPresentationController setSourceRect:?];
  }

  delegate = [(CNQuickContactAction *)self delegate];
  [delegate contactAction:self presentViewController:v27];

LABEL_18:
}

uint64_t __56__CNQuickDisambiguateAction_performWithCompletionBlock___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return 1;
}

- (id)subtitleForContext:(int64_t)context
{
  if (context > 1)
  {
    v4 = 0;
  }

  else
  {
    mainAction = [(CNQuickDisambiguateAction *)self mainAction];
    v4 = [mainAction subtitleForContext:1];
  }

  return v4;
}

- (id)titleForContext:(int64_t)context
{
  if (context <= 4)
  {
    if (context >= 2)
    {
      if ((context - 2) >= 2)
      {
        v5 = 0;
      }

      else
      {
        mainAction = [(CNQuickDisambiguateAction *)self mainAction];
        v5 = [mainAction titleForContext:context];
      }

      goto LABEL_12;
    }

    [(CNQuickPropertyAction *)&v8 titleForContext:context, v7.receiver, v7.super_class, self, CNQuickDisambiguateAction];
    v5 = LABEL_11:;
    goto LABEL_12;
  }

  if (context == 5)
  {
    [(CNQuickAction *)&v7 defaultTitleForContext:5, self, CNQuickDisambiguateAction, v8.receiver, v8.super_class];
    goto LABEL_11;
  }

  if (context == 6)
  {
    v5 = @"•••";
  }

  else
  {
    v5 = 0;
  }

LABEL_12:

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    v12.receiver = self;
    v12.super_class = CNQuickDisambiguateAction;
    if (![(CNQuickAction *)&v12 isEqual:v6])
    {
      v10 = 0;
LABEL_12:

      goto LABEL_13;
    }

    actions = [(CNQuickDisambiguateAction *)self actions];
    if (actions || ([v6 actions], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      actions2 = [(CNQuickDisambiguateAction *)self actions];
      actions3 = [v6 actions];
      v10 = [actions2 isEqual:actions3];

      if (actions)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (CNQuickDisambiguateAction)initWithActions:(id)actions
{
  v6.receiver = self;
  v6.super_class = CNQuickDisambiguateAction;
  actionsCopy = actions;
  v4 = [(CNQuickPropertyAction *)&v6 initWithPropertyAction:0];
  [(CNQuickDisambiguateAction *)v4 setActions:actionsCopy, v6.receiver, v6.super_class];

  return v4;
}

@end