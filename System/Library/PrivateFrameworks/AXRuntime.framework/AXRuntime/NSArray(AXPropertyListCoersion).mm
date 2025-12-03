@interface NSArray(AXPropertyListCoersion)
- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:()AXPropertyListCoersion;
- (id)_axRecursivelyReconstitutedRepresentationFromPropertyListWithError:()AXPropertyListCoersion;
@end

@implementation NSArray(AXPropertyListCoersion)

- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:()AXPropertyListCoersion
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v13 = 0;
        v10 = [v8 _axRecursivelyPropertyListCoercedRepresentationWithError:&v13];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = &stru_1F3E63FB0;
        }

        [v2 addObject:v11];

        objc_autoreleasePoolPop(v9);
      }

      v5 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)_axRecursivelyReconstitutedRepresentationFromPropertyListWithError:()AXPropertyListCoersion
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) _axRecursivelyReconstitutedRepresentationFromPropertyListWithError:{a3, v15}];
        if (!v11)
        {

          v13 = 0;
          goto LABEL_11;
        }

        v12 = v11;
        [v5 addObject:v11];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = v5;
LABEL_11:

  return v13;
}

@end