@interface NSMutableSet(AEAdditions)
- (void)ae_removeFirstMatching:()AEAdditions;
@end

@implementation NSMutableSet(AEAdditions)

- (void)ae_removeFirstMatching:()AEAdditions
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(selfCopy);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if (v4[2](v4, v10))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_13;
    }

    [selfCopy removeObject:{v11, v13}];
    selfCopy = v11;
  }

LABEL_12:

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
}

@end