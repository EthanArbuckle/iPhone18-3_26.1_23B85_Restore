@interface AXSSKeyChord
+ (id)keyChordWithKeys:(id)a3;
+ (id)keyChordWithString:(id)a3;
+ (id)keyFromKeyCode:(unint64_t)a3 unicodeCharacter:(id)a4;
+ (id)nullKeyChord;
- (AXSSKeyChord)initWithCoder:(id)a3;
- (BOOL)containsModifier;
- (BOOL)isArrowKeyChord;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToKeyChord:(id)a3;
- (BOOL)isFunctionKeyChord;
- (BOOL)isNull;
- (BOOL)isTextInputChord;
- (BOOL)isTextInputTabChord;
- (NSArray)orderedKeys;
- (id)_displayValueWithSortedModifiers:(id)a3 isUSKeyboard:(BOOL)a4;
- (id)_initWithKeys:(id)a3;
- (id)_normalizeKeys:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXSSKeyChord

+ (id)keyChordWithKeys:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithKeys:v4];

  return v5;
}

+ (id)keyChordWithString:(id)a3
{
  v4 = a3;
  v5 = [v4 isEqualToString:@"_"];
  v6 = [a1 alloc];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 _initWithKeys:&unk_1F40664F8];
  }

  else
  {
    v9 = [v4 componentsSeparatedByString:@"_"];
    v8 = [v7 _initWithKeys:v9];
  }

  return v8;
}

+ (id)nullKeyChord
{
  v2 = [a1 alloc];
  v3 = [v2 _initWithKeys:MEMORY[0x1E695E0F0]];

  return v3;
}

+ (id)keyFromKeyCode:(unint64_t)a3 unicodeCharacter:(id)a4
{
  v5 = a4;
  if (a3 - 40 > 0x30)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E8134B58[a3 - 40];
  }

  if ([(__CFString *)v6 length]|| (v6 = v5, [(__CFString *)v6 length]== 1))
  {
    v7 = v6;
    v6 = v7;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_initWithKeys:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXSSKeyChord;
  v5 = [(AXSSKeyChord *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(AXSSKeyChord *)v5 _normalizeKeys:v4];
    [(AXSSKeyChord *)v6 setKeys:v7];
  }

  return v6;
}

- (id)_normalizeKeys:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
  v5 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (-[__CFString length](v11, "length", v20) == 1 && [v4 characterIsMember:{-[__CFString characterAtIndex:](v11, "characterAtIndex:", 0)}])
        {
          v12 = [(__CFString *)v11 lowercaseString];
          [v5 addObject:v12];

          if ([v5 containsObject:@"⇧"])
          {
            continue;
          }

          v13 = v5;
          v14 = @"⇧";
        }

        else
        {
          v13 = v5;
          v14 = v11;
        }

        [v13 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = [v5 sortedArrayUsingSelector:sel_compare_];
  v16 = [v15 reverseObjectEnumerator];
  v17 = [v16 allObjects];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (AXSSKeyChord)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"keys"];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v15 = 0;
          goto LABEL_11;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  self = [(AXSSKeyChord *)self _initWithKeys:v9];
  v15 = self;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXSSKeyChord *)self keys];
  [v4 encodeObject:v5 forKey:@"keys"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AXSSKeyChord *)self keys];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [v3 stringWithFormat:@"%@<%p>: keys:[%@]", v5, self, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSSKeyChord *)self isEqualToKeyChord:v4];

  return v5;
}

- (BOOL)isEqualToKeyChord:(id)a3
{
  v4 = a3;
  v5 = [(AXSSKeyChord *)self keys];
  v6 = [v4 keys];

  LOBYTE(v4) = [v5 isEqualToArray:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(AXSSKeyChord *)self keys];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(AXSSKeyChord *)self keys];
  v4 = [AXSSKeyChord keyChordWithKeys:v3];

  return v4;
}

- (NSArray)orderedKeys
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(AXSSKeyChord *)self keys];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v16 = 0;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 isEqualToString:@"⇥"];
        v12 = [&unk_1F4066510 containsObject:v10];
        if (v11)
        {
          v7 = 1;
        }

        else if (v12)
        {
          [v3 insertObject:v10 atIndex:0];
        }

        else
        {
          [v3 addObject:v10];
          v16 = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);

    if (v7 & v16)
    {
      [v3 insertObject:@"⇥" atIndex:0];
    }

    if (((v7 ^ 1 | v16) & 1) == 0)
    {
      [v3 addObject:@"⇥"];
    }
  }

  else
  {
  }

  v13 = [v3 copy];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)isFunctionKeyChord
{
  v20 = *MEMORY[0x1E69E9840];
  cachedIsFunctionKey = self->_cachedIsFunctionKey;
  if (cachedIsFunctionKey)
  {
    v4 = *MEMORY[0x1E69E9840];

    return [(NSNumber *)cachedIsFunctionKey BOOLValue];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(AXSSKeyChord *)self keys];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 isEqualToString:@"Fn"] & 1) != 0 || (objc_msgSend(&unk_1F4066528, "containsObject:", v11))
          {
            v13 = self->_cachedIsFunctionKey;
            self->_cachedIsFunctionKey = MEMORY[0x1E695E118];

            result = 1;
            goto LABEL_16;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = self->_cachedIsFunctionKey;
    self->_cachedIsFunctionKey = MEMORY[0x1E695E110];

    result = 0;
LABEL_16:
    v14 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (BOOL)containsModifier
{
  v19 = *MEMORY[0x1E69E9840];
  cachedContainsModifier = self->_cachedContainsModifier;
  if (cachedContainsModifier)
  {
    v4 = *MEMORY[0x1E69E9840];

    return [(NSNumber *)cachedContainsModifier BOOLValue];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(AXSSKeyChord *)self keys];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([&unk_1F4066540 containsObject:*(*(&v14 + 1) + 8 * v10)])
          {
            v12 = self->_cachedContainsModifier;
            self->_cachedContainsModifier = MEMORY[0x1E695E118];

            result = 1;
            goto LABEL_15;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = self->_cachedContainsModifier;
    self->_cachedContainsModifier = MEMORY[0x1E695E110];

    result = 0;
LABEL_15:
    v13 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (BOOL)isTextInputChord
{
  if (isTextInputChord_onceToken != -1)
  {
    [AXSSKeyChord isTextInputChord];
  }

  if ([(AXSSKeyChord *)self isTextInputTabChord]|| [(AXSSKeyChord *)self isArrowKeyChord]|| [(AXSSKeyChord *)self isEqualToKeyChord:isTextInputChord_spaceChord])
  {
    return 1;
  }

  v4 = isTextInputChord_returnChord;

  return [(AXSSKeyChord *)self isEqualToKeyChord:v4];
}

uint64_t __32__AXSSKeyChord_isTextInputChord__block_invoke()
{
  v0 = [AXSSKeyChord keyChordWithKeys:&unk_1F4066558];
  v1 = isTextInputChord_spaceChord;
  isTextInputChord_spaceChord = v0;

  isTextInputChord_returnChord = [AXSSKeyChord keyChordWithKeys:&unk_1F4066570];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isArrowKeyChord
{
  v2 = [(AXSSKeyChord *)self keys];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_178];
  v4 = [v3 count] != 0;

  return v4;
}

uint64_t __31__AXSSKeyChord_isArrowKeyChord__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:@"↑"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"↓") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"←"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"→"];
  }

  return v3;
}

- (BOOL)isTextInputTabChord
{
  if (isTextInputTabChord_onceToken != -1)
  {
    [AXSSKeyChord isTextInputTabChord];
  }

  if ([(AXSSKeyChord *)self isEqualToKeyChord:isTextInputTabChord_tabChord])
  {
    return 1;
  }

  v4 = isTextInputTabChord_shiftTabChord;

  return [(AXSSKeyChord *)self isEqualToKeyChord:v4];
}

uint64_t __35__AXSSKeyChord_isTextInputTabChord__block_invoke()
{
  v0 = [AXSSKeyChord keyChordWithKeys:&unk_1F4066588];
  v1 = isTextInputTabChord_tabChord;
  isTextInputTabChord_tabChord = v0;

  isTextInputTabChord_shiftTabChord = [AXSSKeyChord keyChordWithKeys:&unk_1F40665A0];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isNull
{
  v2 = [(AXSSKeyChord *)self keys];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)_displayValueWithSortedModifiers:(id)a3 isUSKeyboard:(BOOL)a4
{
  v6 = a3;
  v7 = [(AXSSKeyChord *)self keys];
  if (v6)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__AXSSKeyChord__displayValueWithSortedModifiers_isUSKeyboard___block_invoke;
    v17[3] = &unk_1E8134B10;
    v18 = v6;
    v8 = [v7 sortedArrayWithOptions:16 usingComparator:v17];

    v7 = v8;
  }

  v9 = [MEMORY[0x1E696AB08] letterCharacterSet];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__AXSSKeyChord__displayValueWithSortedModifiers_isUSKeyboard___block_invoke_2;
  v14[3] = &unk_1E8134B38;
  v16 = a4;
  v15 = v9;
  v10 = v9;
  v11 = [v7 ax_mappedArrayUsingBlock:v14];
  v12 = [v11 componentsJoinedByString:@" "];

  return v12;
}

uint64_t __62__AXSSKeyChord__displayValueWithSortedModifiers_isUSKeyboard___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 indexOfObject:a2];
  v8 = [*(a1 + 32) indexOfObject:v6];

  if (v7 == v8)
  {
    return 0;
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if (v7 < v8)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  else
  {
    return v10;
  }
}

id __62__AXSSKeyChord__displayValueWithSortedModifiers_isUSKeyboard___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 axss_keyChordKeyDisplayValueForUSKeyboard:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;
    if ([v4 length] == 1 && objc_msgSend(*(a1 + 32), "characterIsMember:", objc_msgSend(v5, "characterAtIndex:", 0)))
    {
      v6 = [v5 uppercaseStringWithLocale:0];

      v5 = v6;
    }
  }

  else
  {
    v7 = FKALogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__AXSSKeyChord__displayValueWithSortedModifiers_isUSKeyboard___block_invoke_2_cold_1(v3, v7);
    }

    v5 = v3;
  }

  return v5;
}

void __62__AXSSKeyChord__displayValueWithSortedModifiers_isUSKeyboard___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "Error getting value from key %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end