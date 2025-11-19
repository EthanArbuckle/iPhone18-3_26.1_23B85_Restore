@interface GPRecipe
- (GPRecipe)initWithEncodedRecipe:(id)a3 prompt:(id)a4 contextElements:(id)a5;
- (GPRecipe)initWithEncodedRecipe:(id)a3 prompts:(id)a4 contextElements:(id)a5;
- (GPRecipe)initWithPromptElements:(id)a3;
@end

@implementation GPRecipe

- (GPRecipe)initWithPromptElements:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GPRecipe;
  v5 = [(GPRecipe *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GPRecipe *)v5 setPromptElements:v4];
  }

  return v6;
}

- (GPRecipe)initWithEncodedRecipe:(id)a3 prompt:(id)a4 contextElements:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v9 length])
  {
    v12 = [[GPPromptElement alloc] initWithText:v9];
    [v11 addObject:v12];
  }

  [v11 addObjectsFromArray:v10];
  v13 = [(GPRecipe *)self initWithPromptElements:v11];
  v14 = v13;
  if (v13)
  {
    [(GPRecipe *)v13 setAdditionalMetadata:v8];
  }

  return v14;
}

- (GPRecipe)initWithEncodedRecipe:(id)a3 prompts:(id)a4 contextElements:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v9;
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

  [v11 addObjectsFromArray:v10];
  v19 = [(GPRecipe *)self initWithPromptElements:v11];
  v20 = v19;
  if (v19)
  {
    [(GPRecipe *)v19 setAdditionalMetadata:v8];
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end