@interface AVMediaSelection
- (AVMediaSelection)initWithAsset:(id)asset propertyList:(id)list;
- (AVMediaSelectionOption)selectedMediaOptionInMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup;
- (BOOL)isEqual:(id)equal;
- (BOOL)mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup;
- (id)_dictionaryGroupsWithSelectedOption;
- (id)_initWithAsset:(id)asset selectedMediaArray:(id)array;
- (id)_initWithAssetWithoutGroupDictionaries:(id)dictionaries;
- (id)_initWithDeferredLoadingOfAsset:(id)asset selectedMediaArray:(id)array;
- (id)_propertyListForSelectedMediaOptionInMediaSelectionGroup:(id)group;
- (id)_selectedMediaArray;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_createDefaultMediaSelectionOptions;
- (void)_loadiVarsIfNeeded;
- (void)dealloc;
@end

@implementation AVMediaSelection

- (id)_initWithAsset:(id)asset selectedMediaArray:(id)array
{
  v9.receiver = self;
  v9.super_class = AVMediaSelection;
  v6 = [(AVMediaSelection *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVMediaSelectionInternal);
    v6->_mediaSelection = v7;
    if (v7)
    {
      v6->_mediaSelection->assetWeakReference = [asset _weakReference];
      v6->_mediaSelection->groupDictionaries = [objc_msgSend(asset "_mediaSelectionGroupDictionaries")];
      if (array)
      {
        v6->_mediaSelection->selectedMediaArray = [array mutableCopy];
      }

      else
      {
        [(AVMediaSelection *)v6 _loadiVarsIfNeeded];
      }
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (id)_initWithDeferredLoadingOfAsset:(id)asset selectedMediaArray:(id)array
{
  v9.receiver = self;
  v9.super_class = AVMediaSelection;
  v6 = [(AVMediaSelection *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVMediaSelectionInternal);
    v6->_mediaSelection = v7;
    if (v7)
    {
      v6->_mediaSelection->assetWeakReference = [asset _weakReference];
      v6->_mediaSelection->groupDictionaries = 0;
      v6->_mediaSelection->selectedMediaArray = [array mutableCopy];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (id)_initWithAssetWithoutGroupDictionaries:(id)dictionaries
{
  v7.receiver = self;
  v7.super_class = AVMediaSelection;
  v4 = [(AVMediaSelection *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVMediaSelectionInternal);
    v4->_mediaSelection = v5;
    if (v5)
    {
      v4->_mediaSelection->assetWeakReference = [dictionaries _weakReference];
      v4->_mediaSelection->groupDictionaries = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v4->_mediaSelection->selectedMediaArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (id)_selectedMediaArray
{
  [(AVMediaSelection *)self _loadiVarsIfNeeded];
  v3 = [(NSMutableArray *)self->_mediaSelection->selectedMediaArray copy];

  return v3;
}

- (void)_loadiVarsIfNeeded
{
  mediaSelection = self->_mediaSelection;
  if (!mediaSelection->groupDictionaries)
  {
    self->_mediaSelection->groupDictionaries = [-[AVAsset _mediaSelectionGroupDictionaries](-[AVMediaSelection asset](self "asset")];
    mediaSelection = self->_mediaSelection;
  }

  if (!mediaSelection->selectedMediaArray)
  {

    [(AVMediaSelection *)self _createDefaultMediaSelectionOptions];
  }
}

- (void)_createDefaultMediaSelectionOptions
{
  v34 = *MEMORY[0x1E69E9840];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  obj = self->_mediaSelection->groupDictionaries;
  v22 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    v23 = *MEMORY[0x1E6973750];
    v3 = *MEMORY[0x1E6973740];
    v20 = *MEMORY[0x1E6973758];
    v4 = *MEMORY[0x1E69737B0];
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = [v6 objectForKey:v23];
        v8 = [v6 objectForKey:v3];
        v9 = [v6 objectForKey:v20];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v24 + 1) + 8 * j);
              if ([objc_msgSend(v14 objectForKey:{v4), "BOOLValue"}])
              {
                v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v14];
                v16 = v15;
                if (v7)
                {
                  [v15 setObject:v7 forKey:v23];
                }

                if (v8)
                {
                  [v16 setObject:v8 forKey:v3];
                }

                [v16 setObject:MEMORY[0x1E695E118] forKey:@"AVMediaSelection_DefaultSelection"];
                [(NSMutableArray *)v19 addObject:v16];
                goto LABEL_20;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
        ;
      }

      v22 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  selfCopy->_mediaSelection->selectedMediaArray = v19;
}

- (AVMediaSelection)initWithAsset:(id)asset propertyList:(id)list
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selfCopy = self;
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "[propertyList isKindOfClass:[NSArray class]]"), 0}];
    objc_exception_throw(v15);
  }

  return [(AVMediaSelection *)self _initWithAsset:asset selectedMediaArray:list];
}

- (void)dealloc
{
  mediaSelection = self->_mediaSelection;
  if (mediaSelection)
  {
  }

  v4.receiver = self;
  v4.super_class = AVMediaSelection;
  [(AVMediaSelection *)&v4 dealloc];
}

- (id)_dictionaryGroupsWithSelectedOption
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(AVMediaSelection *)self _loadiVarsIfNeeded];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  selectedMediaArray = self->_mediaSelection->selectedMediaArray;
  v5 = [(NSMutableArray *)selectedMediaArray countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(selectedMediaArray);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v12 = 0;
        v10 = [(AVAsset *)[(AVMediaSelection *)self asset] mediaSelectionGroupForPropertyList:v9 mediaSelectionOption:&v12];
        if (v12)
        {
          [dictionary setObject:v12 forKey:v10];
        }
      }

      v6 = [(NSMutableArray *)selectedMediaArray countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  _dictionaryGroupsWithSelectedOption = [(AVMediaSelection *)self _dictionaryGroupsWithSelectedOption];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [_dictionaryGroupsWithSelectedOption countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v17;
    v7 = @"{";
    do
    {
      v8 = 0;
      v15 = v5;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(_dictionaryGroupsWithSelectedOption);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        if (v5 >= 1)
        {
          v7 = [(__CFString *)v7 stringByAppendingString:@", "];
        }

        ++v5;
        v7 = -[__CFString stringByAppendingFormat:](v7, "stringByAppendingFormat:", @" %@ : %@ ", [v9 _primaryMediaCharacteristic], objc_msgSend(_dictionaryGroupsWithSelectedOption, "objectForKey:", v9));
        ++v8;
      }

      while (v4 != v8);
      v5 = v15 + v4;
      v4 = [_dictionaryGroupsWithSelectedOption countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  else
  {
    v7 = @"{";
  }

  v10 = [(__CFString *)v7 stringByAppendingString:@"}"];
  v11 = MEMORY[0x1E696AEC0];
  v12 = objc_opt_class();
  return [v11 stringWithFormat:@"<%@: %p, group characteristics and selected options = %@>", NSStringFromClass(v12), self, v10];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  _dictionaryGroupsWithSelectedOption = [(AVMediaSelection *)self _dictionaryGroupsWithSelectedOption];
  _dictionaryGroupsWithSelectedOption2 = [equal _dictionaryGroupsWithSelectedOption];

  return [_dictionaryGroupsWithSelectedOption isEqualToDictionary:_dictionaryGroupsWithSelectedOption2];
}

- (unint64_t)hash
{
  _dictionaryGroupsWithSelectedOption = [(AVMediaSelection *)self _dictionaryGroupsWithSelectedOption];

  return [_dictionaryGroupsWithSelectedOption hash];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [AVMutableMediaSelection alloc];
  asset = [(AVMediaSelection *)self asset];
  _selectedMediaArray = [(AVMediaSelection *)self _selectedMediaArray];

  return [(AVMediaSelection *)v4 _initWithAsset:asset selectedMediaArray:_selectedMediaArray];
}

- (id)_propertyListForSelectedMediaOptionInMediaSelectionGroup:(id)group
{
  v19 = *MEMORY[0x1E69E9840];
  [(AVMediaSelection *)self _loadiVarsIfNeeded];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  selectedMediaArray = self->_mediaSelection->selectedMediaArray;
  v6 = [(NSMutableArray *)selectedMediaArray countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = *MEMORY[0x1E6973740];
    v10 = *MEMORY[0x1E6973750];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(selectedMediaArray);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([objc_msgSend(v12 objectForKey:{v9), "isEqual:", objc_msgSend(group, "_groupID")}] & 1) != 0 || objc_msgSend(objc_msgSend(v12, "objectForKey:", v10), "isEqual:", objc_msgSend(group, "_groupMediaType")))
        {
          v6 = [v12 copy];
          return v6;
        }
      }

      v7 = [(NSMutableArray *)selectedMediaArray countByEnumeratingWithState:&v14 objects:v18 count:16];
      v6 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (AVMediaSelectionOption)selectedMediaOptionInMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup
{
  v4 = [(AVMediaSelection *)self _propertyListForSelectedMediaOptionInMediaSelectionGroup:?];
  if (v4)
  {

    return [(AVMediaSelectionGroup *)mediaSelectionGroup mediaSelectionOptionWithPropertyList:v4];
  }

  else
  {

    return [(AVMediaSelectionGroup *)mediaSelectionGroup defaultOption];
  }
}

- (BOOL)mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup
{
  v3 = [(AVMediaSelection *)self _propertyListForSelectedMediaOptionInMediaSelectionGroup:mediaSelectionGroup];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  if ([objc_msgSend(v3 objectForKey:{@"AVMediaSelection_DefaultSelection", "BOOLValue"}])
  {
    return 1;
  }

  v6 = [v4 objectForKey:*MEMORY[0x1E6972C68]];

  return [v6 BOOLValue];
}

@end