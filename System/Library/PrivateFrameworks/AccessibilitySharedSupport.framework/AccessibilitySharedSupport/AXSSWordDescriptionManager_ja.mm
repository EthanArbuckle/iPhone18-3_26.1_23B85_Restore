@interface AXSSWordDescriptionManager_ja
- (id)_convertString:(id)string ifNeededForHiragana:(BOOL)hiragana;
- (id)descriptionForWord:(id)word;
@end

@implementation AXSSWordDescriptionManager_ja

- (id)_convertString:(id)string ifNeededForHiragana:(BOOL)hiragana
{
  hiraganaCopy = hiragana;
  stringCopy = string;
  v6 = stringCopy;
  v7 = stringCopy;
  if (hiraganaCopy)
  {
    v8 = [stringCopy mutableCopy];
    if ([v8 applyTransform:*MEMORY[0x1E695DA40] reverse:0 range:0 updatedRange:{objc_msgSend(v6, "length"), 0}])
    {
      v7 = [v8 copy];
    }

    else
    {
      v9 = AXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AXSSWordDescriptionManager_ja _convertString:v6 ifNeededForHiragana:v9];
      }

      v7 = v6;
    }
  }

  return v7;
}

- (id)descriptionForWord:(id)word
{
  wordCopy = word;
  managedObjectContext = [(AXSSWordDescriptionManager *)self managedObjectContext];
  if (managedObjectContext)
  {
    array = [MEMORY[0x1E695DF70] array];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__7;
    v22[4] = __Block_byref_object_dispose__7;
    v23 = 0;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v21[3] = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [wordCopy length];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __52__AXSSWordDescriptionManager_ja_descriptionForWord___block_invoke;
    v14 = &unk_1E8135BE0;
    v19 = v22;
    v20 = v21;
    selfCopy = self;
    v8 = array;
    v16 = v8;
    v17 = wordCopy;
    v18 = managedObjectContext;
    [v17 enumerateSubstringsInRange:0 options:v7 usingBlock:{2, &v11}];
    v9 = [v8 componentsJoinedByString:{@"、", v11, v12, v13, v14, selfCopy}];

    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v22, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_convertString:(uint64_t)a1 ifNeededForHiragana:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "Unable to convert Hiragana string to Katakana: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end