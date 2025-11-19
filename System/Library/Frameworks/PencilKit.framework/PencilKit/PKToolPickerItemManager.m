@interface PKToolPickerItemManager
- (id)initWithToolItems:(id *)a1;
- (id)itemForTool:(id *)a1;
- (id)toolForIdentifier:(uint64_t)a1;
- (id)toolItemsForTools:(id *)a1;
- (void)_addTool:(uint64_t)a1;
- (void)_removeTool:(uint64_t)a1;
- (void)updateItemForTool:(uint64_t)a1;
@end

@implementation PKToolPickerItemManager

- (id)initWithToolItems:(id *)a1
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v25.receiver = a1;
    v25.super_class = PKToolPickerItemManager;
    a1 = objc_msgSendSuper2(&v25, sel_init);
    if (a1)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v5 = a1[2];
      a1[2] = v4;

      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = a1[1];
      a1[1] = v6;

      v8 = v3;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      obj = v8;
      v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = v9;
      v23 = v3;
      v11 = 0;
      v12 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [v14 identifier];
          if (![v15 isEqualToString:@"com.apple.tool.scribble"] || (objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "_supportsPencil"), v16, v17))
          {
            v18 = [a1[1] objectForKey:v15];

            if (!v18)
            {
              [a1[1] setObject:v14 forKeyedSubscript:v15];
              [a1[2] addObject:v14];
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v11 += (objc_opt_isKindOfClass() & 1) == 0;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
      v3 = v23;
      if (!v11)
      {
LABEL_17:
        v19 = [PKToolPickerInkingItem _defaultInkingItemForType:?];
        [a1[2] addObject:v19];
        v20 = a1[1];
        v21 = [v19 identifier];
        [v20 setObject:v19 forKeyedSubscript:v21];
      }
    }
  }

  return a1;
}

- (void)updateItemForTool:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    v5 = [v3 _toolPickerItemIdentifier];
    v4 = [*(a1 + 8) objectForKeyedSubscript:v5];
    [v4 set_tool:v3];
  }
}

- (id)itemForTool:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v3 _toolPickerItemIdentifier];
    v2 = [v2[1] objectForKeyedSubscript:v4];
    [v2 set_tool:v3];
  }

  return v2;
}

- (void)_addTool:(uint64_t)a1
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 _toolPickerItemIdentifier];
    v6 = [*(a1 + 8) objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [v4 _toolPickerItem];
      [*(a1 + 8) setObject:v7 forKeyedSubscript:v5];
      if (!v7)
      {
        v8 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = 136315138;
          v10 = "item";
          _os_log_error_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_ERROR, "invalid nil value for '%s'", &v9, 0xCu);
        }

        v7 = 0;
      }
    }

    [v7 set_tool:v4];
  }
}

- (void)_removeTool:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3 = [a2 _toolPickerItemIdentifier];
    [v2 removeObjectForKey:v3];
  }
}

- (id)toolForIdentifier:(uint64_t)a1
{
  if (a1)
  {
    v2 = [*(a1 + 8) objectForKeyedSubscript:a2];
    v3 = [v2 _tool];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)toolItemsForTools:(id *)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(PKToolPickerItemManager *)a1 itemForTool:?];
          if (v10)
          {
            [v4 addObject:{v10, v12}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    a1 = [v4 copy];
  }

  return a1;
}

@end