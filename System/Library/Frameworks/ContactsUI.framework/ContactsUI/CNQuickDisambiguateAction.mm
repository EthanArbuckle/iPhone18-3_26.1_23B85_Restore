@interface CNQuickDisambiguateAction
- (BOOL)isEqual:(id)a3;
- (CNQuickAction)mainAction;
- (CNQuickDisambiguateAction)initWithActions:(id)a3;
- (id)description;
- (id)subtitleForContext:(int64_t)a3;
- (id)titleForContext:(int64_t)a3;
- (void)performWithCompletionBlock:(id)a3;
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
  v5 = [(CNQuickDisambiguateAction *)self actions];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

- (void)performWithCompletionBlock:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v4 = [(CNQuickDisambiguateAction *)self mainAction];
  if ([v4 score] < 0x3E9)
  {
  }

  else
  {
    v5 = [(CNQuickAction *)self isLongPress];

    if (!v5)
    {
      v6 = [(CNQuickDisambiguateAction *)self mainAction];
      [v6 performWithCompletionBlock:v28];

      goto LABEL_18;
    }
  }

  v27 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [(CNQuickDisambiguateAction *)self actions];
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(v7);
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
          v32 = v28;
          v18 = [v17 _actionWithTitle:v16 descriptiveText:v15 image:0 style:0 handler:v31 shouldDismissHandler:&__block_literal_global_369];
          [v27 addAction:v18];
          [(CNQuickDisambiguateAction *)self mainAction];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
  v30 = v28;
  v22 = [v19 _actionWithTitle:v21 image:0 style:1 handler:&__block_literal_global_374 shouldDismissHandler:v29];
  [v27 addAction:v22];

  v23 = [v27 popoverPresentationController];
  if (v23)
  {
    v24 = [(CNQuickAction *)self sourceView];
    [v23 setSourceView:v24];

    v25 = [(CNQuickAction *)self sourceView];
    [v25 bounds];
    [v23 setSourceRect:?];
  }

  v26 = [(CNQuickContactAction *)self delegate];
  [v26 contactAction:self presentViewController:v27];

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

- (id)subtitleForContext:(int64_t)a3
{
  if (a3 > 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = [(CNQuickDisambiguateAction *)self mainAction];
    v4 = [v3 subtitleForContext:1];
  }

  return v4;
}

- (id)titleForContext:(int64_t)a3
{
  if (a3 <= 4)
  {
    if (a3 >= 2)
    {
      if ((a3 - 2) >= 2)
      {
        v5 = 0;
      }

      else
      {
        v4 = [(CNQuickDisambiguateAction *)self mainAction];
        v5 = [v4 titleForContext:a3];
      }

      goto LABEL_12;
    }

    [(CNQuickPropertyAction *)&v8 titleForContext:a3, v7.receiver, v7.super_class, self, CNQuickDisambiguateAction];
    v5 = LABEL_11:;
    goto LABEL_12;
  }

  if (a3 == 5)
  {
    [(CNQuickAction *)&v7 defaultTitleForContext:5, self, CNQuickDisambiguateAction, v8.receiver, v8.super_class];
    goto LABEL_11;
  }

  if (a3 == 6)
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = CNQuickDisambiguateAction;
    if (![(CNQuickAction *)&v12 isEqual:v6])
    {
      v10 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v7 = [(CNQuickDisambiguateAction *)self actions];
    if (v7 || ([v6 actions], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(CNQuickDisambiguateAction *)self actions];
      v9 = [v6 actions];
      v10 = [v8 isEqual:v9];

      if (v7)
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

- (CNQuickDisambiguateAction)initWithActions:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNQuickDisambiguateAction;
  v3 = a3;
  v4 = [(CNQuickPropertyAction *)&v6 initWithPropertyAction:0];
  [(CNQuickDisambiguateAction *)v4 setActions:v3, v6.receiver, v6.super_class];

  return v4;
}

@end