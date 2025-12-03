@interface NSArray(LSAdditions)
- (uint64_t)ls_caseInsensitiveContainsString:()LSAdditions;
@end

@implementation NSArray(LSAdditions)

- (uint64_t)ls_caseInsensitiveContainsString:()LSAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v9 caseInsensitiveCompare:{v4, v12}])
        {
          v6 = 1;
          goto LABEL_12;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

@end