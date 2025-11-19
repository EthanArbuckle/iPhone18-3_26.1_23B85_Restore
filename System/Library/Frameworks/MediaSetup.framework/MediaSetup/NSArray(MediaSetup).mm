@interface NSArray(MediaSetup)
- (id)ms_objectsWithOptions:()MediaSetup passingTest:;
- (uint64_t)ms_anyPassingTest:()MediaSetup;
@end

@implementation NSArray(MediaSetup)

- (id)ms_objectsWithOptions:()MediaSetup passingTest:
{
  v6 = a4;
  if (v6)
  {
    v7 = [a1 indexesOfObjectsWithOptions:a3 passingTest:v6];
    if ([v7 count])
    {
      v8 = [a1 objectsAtIndexes:v7];
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (uint64_t)ms_anyPassingTest:()MediaSetup
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (v4[2](v4, *(*(&v11 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

@end