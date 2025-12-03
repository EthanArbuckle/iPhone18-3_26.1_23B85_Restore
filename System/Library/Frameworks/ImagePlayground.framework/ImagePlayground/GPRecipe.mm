@interface GPRecipe
- (GPRecipe)initWithEncodedRecipe:(id)recipe prompt:(id)prompt contextElements:(id)elements;
- (GPRecipe)initWithEncodedRecipe:(id)recipe prompts:(id)prompts contextElements:(id)elements;
- (GPRecipe)initWithPromptElements:(id)elements;
@end

@implementation GPRecipe

- (GPRecipe)initWithPromptElements:(id)elements
{
  elementsCopy = elements;
  v8.receiver = self;
  v8.super_class = GPRecipe;
  v5 = [(GPRecipe *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GPRecipe *)v5 setPromptElements:elementsCopy];
  }

  return v6;
}

- (GPRecipe)initWithEncodedRecipe:(id)recipe prompt:(id)prompt contextElements:(id)elements
{
  recipeCopy = recipe;
  promptCopy = prompt;
  elementsCopy = elements;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([promptCopy length])
  {
    v12 = [[GPPromptElement alloc] initWithText:promptCopy];
    [v11 addObject:v12];
  }

  [v11 addObjectsFromArray:elementsCopy];
  v13 = [(GPRecipe *)self initWithPromptElements:v11];
  v14 = v13;
  if (v13)
  {
    [(GPRecipe *)v13 setAdditionalMetadata:recipeCopy];
  }

  return v14;
}

- (GPRecipe)initWithEncodedRecipe:(id)recipe prompts:(id)prompts contextElements:(id)elements
{
  v28 = *MEMORY[0x1E69E9840];
  recipeCopy = recipe;
  promptsCopy = prompts;
  elementsCopy = elements;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = promptsCopy;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if ([v17 length])
        {
          v18 = [[GPPromptElement alloc] initWithText:v17];
          [v11 addObject:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  [v11 addObjectsFromArray:elementsCopy];
  v19 = [(GPRecipe *)self initWithPromptElements:v11];
  v20 = v19;
  if (v19)
  {
    [(GPRecipe *)v19 setAdditionalMetadata:recipeCopy];
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end