@interface _MFCountableMatchesContext
- (_MFCountableMatchesContext)init;
- (void)countInstances:(id)instances usingPredicate:(id)predicate;
- (void)dealloc;
@end

@implementation _MFCountableMatchesContext

- (_MFCountableMatchesContext)init
{
  v7.receiver = self;
  v7.super_class = _MFCountableMatchesContext;
  v2 = [(_MFCountableMatchesContext *)&v7 init];
  if (v2)
  {
    v2->_peopleCount = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    popularPeople = v2->_popularPeople;
    v2->_popularPeople = v3;

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  peopleCount = self->_peopleCount;
  if (peopleCount)
  {
    CFRelease(peopleCount);
  }

  v4.receiver = self;
  v4.super_class = _MFCountableMatchesContext;
  [(_MFCountableMatchesContext *)&v4 dealloc];
}

- (void)countInstances:(id)instances usingPredicate:(id)predicate
{
  v21 = *MEMORY[0x1E69E9840];
  instancesCopy = instances;
  predicateCopy = predicate;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = instancesCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = predicateCopy[2](predicateCopy, v12);
        if (v13)
        {
          v14 = CFDictionaryGetValue(self->_peopleCount, v12) + v13;
          maxCount = self->_maxCount;
          if (v14 == maxCount)
          {
            if (v14 <= 0)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (v14 <= maxCount)
            {
              goto LABEL_13;
            }

            self->_maxCount = v14;
            [(NSMutableSet *)self->_popularPeople removeAllObjects];
            if (v14 < 1)
            {
              goto LABEL_13;
            }
          }

          [(NSMutableSet *)self->_popularPeople addObject:v12, v16];
LABEL_13:
          CFDictionarySetValue(self->_peopleCount, v12, v14);
          continue;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

@end