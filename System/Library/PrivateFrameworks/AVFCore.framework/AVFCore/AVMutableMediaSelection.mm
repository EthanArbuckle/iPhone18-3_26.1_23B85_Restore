@interface AVMutableMediaSelection
- (BOOL)_isValidMediaSelectionOption:(id)option forMediaSelectionGroup:(id)group;
- (id)_validatedGroupIdentifierKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (void)selectMediaOption:(AVMediaSelectionOption *)mediaSelectionOption inMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup;
@end

@implementation AVMutableMediaSelection

- (BOOL)_isValidMediaSelectionOption:(id)option forMediaSelectionGroup:(id)group
{
  if (!option)
  {
    if (([group allowsEmptySelection] & 1) == 0)
    {
      LOBYTE(v4) = 0;
      return v4;
    }

    goto LABEL_6;
  }

  if (!group || (v4 = [objc_msgSend(group "options")]) != 0)
  {
LABEL_6:
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (id)_validatedGroupIdentifierKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  [(AVMediaSelection *)self _loadiVarsIfNeeded];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *([(AVMediaSelection *)self _internal]+ 16);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = *MEMORY[0x1E6973740];
    v10 = *MEMORY[0x1E6973750];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([objc_msgSend(v12 objectForKey:{v9), "isEqual:", objc_msgSend(key, "_groupID")}])
        {
          v13 = v9;
        }

        else
        {
          v13 = 0;
        }

        if ([objc_msgSend(v12 objectForKey:{v10), "isEqual:", objc_msgSend(key, "_groupMediaType")}])
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          v15 = v14;
          return v14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVMediaSelection alloc];
  asset = [(AVMediaSelection *)self asset];
  _selectedMediaArray = [(AVMediaSelection *)self _selectedMediaArray];

  return [(AVMediaSelection *)v4 _initWithAsset:asset selectedMediaArray:_selectedMediaArray];
}

- (void)selectMediaOption:(AVMediaSelectionOption *)mediaSelectionOption inMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup
{
  [(AVMediaSelection *)self _loadiVarsIfNeeded];
  v7 = [(AVMutableMediaSelection *)self _validatedGroupIdentifierKey:mediaSelectionGroup];
  if (v7)
  {
    v8 = v7;
    if ([(AVMutableMediaSelection *)self _isValidMediaSelectionOption:mediaSelectionOption forMediaSelectionGroup:mediaSelectionGroup])
    {
      if (mediaSelectionOption)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[AVMediaSelectionOption dictionary](mediaSelectionOption, "dictionary")}];
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      v10 = dictionary;
      v11 = *MEMORY[0x1E6973750];
      if ([v8 isEqualToString:*MEMORY[0x1E6973750]])
      {
        _groupMediaType = [(AVMediaSelectionGroup *)mediaSelectionGroup _groupMediaType];
        if (!_groupMediaType)
        {
LABEL_13:
          v13 = *([(AVMediaSelection *)self _internal]+ 24);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __67__AVMutableMediaSelection_selectMediaOption_inMediaSelectionGroup___block_invoke;
          v16[3] = &unk_1E7461B68;
          v16[4] = v10;
          v14 = [v13 indexOfObjectPassingTest:v16];
          v15 = *([(AVMediaSelection *)self _internal]+ 24);
          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v15 addObject:v10];
          }

          else
          {
            [v15 replaceObjectAtIndex:v14 withObject:v10];
          }

          return;
        }
      }

      else
      {
        v11 = *MEMORY[0x1E6973740];
        if (![v8 isEqualToString:*MEMORY[0x1E6973740]] || !-[AVMediaSelectionGroup _groupID](mediaSelectionGroup, "_groupID"))
        {
          goto LABEL_13;
        }

        _groupMediaType = [(AVMediaSelectionGroup *)mediaSelectionGroup _groupID];
      }

      [v10 setObject:_groupMediaType forKey:v11];
      goto LABEL_13;
    }
  }
}

uint64_t __67__AVMutableMediaSelection_selectMediaOption_inMediaSelectionGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (([objc_msgSend(a2 objectForKey:{*MEMORY[0x1E6973740]), "isEqual:", objc_msgSend(*(a1 + 32), "objectForKey:", *MEMORY[0x1E6973740])}] & 1) != 0 || (result = objc_msgSend(objc_msgSend(a2, "objectForKey:", *MEMORY[0x1E6973750]), "isEqual:", objc_msgSend(*(a1 + 32), "objectForKey:", *MEMORY[0x1E6973750])), result))
  {
    result = 1;
    *a4 = 1;
  }

  return result;
}

@end