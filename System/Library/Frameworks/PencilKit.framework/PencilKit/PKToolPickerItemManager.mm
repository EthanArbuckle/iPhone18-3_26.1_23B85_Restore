@interface PKToolPickerItemManager
- (id)initWithToolItems:(id *)items;
- (id)itemForTool:(id *)tool;
- (id)toolForIdentifier:(uint64_t)identifier;
- (id)toolItemsForTools:(id *)tools;
- (void)_addTool:(uint64_t)tool;
- (void)_removeTool:(uint64_t)tool;
- (void)updateItemForTool:(uint64_t)tool;
@end

@implementation PKToolPickerItemManager

- (id)initWithToolItems:(id *)items
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (items)
  {
    v25.receiver = items;
    v25.super_class = PKToolPickerItemManager;
    items = objc_msgSendSuper2(&v25, sel_init);
    if (items)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v5 = items[2];
      items[2] = v4;

      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = items[1];
      items[1] = v6;

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
          identifier = [v14 identifier];
          if (![identifier isEqualToString:@"com.apple.tool.scribble"] || (objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "_supportsPencil"), v16, v17))
          {
            v18 = [items[1] objectForKey:identifier];

            if (!v18)
            {
              [items[1] setObject:v14 forKeyedSubscript:identifier];
              [items[2] addObject:v14];
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
        [items[2] addObject:v19];
        v20 = items[1];
        identifier2 = [v19 identifier];
        [v20 setObject:v19 forKeyedSubscript:identifier2];
      }
    }
  }

  return items;
}

- (void)updateItemForTool:(uint64_t)tool
{
  if (tool)
  {
    v3 = a2;
    _toolPickerItemIdentifier = [v3 _toolPickerItemIdentifier];
    v4 = [*(tool + 8) objectForKeyedSubscript:_toolPickerItemIdentifier];
    [v4 set_tool:v3];
  }
}

- (id)itemForTool:(id *)tool
{
  toolCopy = tool;
  if (tool)
  {
    v3 = a2;
    _toolPickerItemIdentifier = [v3 _toolPickerItemIdentifier];
    toolCopy = [toolCopy[1] objectForKeyedSubscript:_toolPickerItemIdentifier];
    [toolCopy set_tool:v3];
  }

  return toolCopy;
}

- (void)_addTool:(uint64_t)tool
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (tool)
  {
    _toolPickerItemIdentifier = [v3 _toolPickerItemIdentifier];
    v6 = [*(tool + 8) objectForKeyedSubscript:_toolPickerItemIdentifier];
    if (v6)
    {
      _toolPickerItem = v6;
    }

    else
    {
      _toolPickerItem = [v4 _toolPickerItem];
      [*(tool + 8) setObject:_toolPickerItem forKeyedSubscript:_toolPickerItemIdentifier];
      if (!_toolPickerItem)
      {
        v8 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = 136315138;
          v10 = "item";
          _os_log_error_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_ERROR, "invalid nil value for '%s'", &v9, 0xCu);
        }

        _toolPickerItem = 0;
      }
    }

    [_toolPickerItem set_tool:v4];
  }
}

- (void)_removeTool:(uint64_t)tool
{
  if (tool)
  {
    v2 = *(tool + 8);
    _toolPickerItemIdentifier = [a2 _toolPickerItemIdentifier];
    [v2 removeObjectForKey:_toolPickerItemIdentifier];
  }
}

- (id)toolForIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v2 = [*(identifier + 8) objectForKeyedSubscript:a2];
    _tool = [v2 _tool];
  }

  else
  {
    _tool = 0;
  }

  return _tool;
}

- (id)toolItemsForTools:(id *)tools
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (tools)
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

          v10 = [(PKToolPickerItemManager *)tools itemForTool:?];
          if (v10)
          {
            [v4 addObject:{v10, v12}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    tools = [v4 copy];
  }

  return tools;
}

@end