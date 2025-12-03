@interface WFGetItemTypeAction
- (void)runWithInput:(id)input error:(id *)error;
@end

@implementation WFGetItemTypeAction

- (void)runWithInput:(id)input error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  items = [input items];
  v6 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        output = [(WFGetItemTypeAction *)self output];
        localizedTypeDescription = [objc_opt_class() localizedTypeDescription];
        [output addObject:localizedTypeDescription];

        ++v9;
      }

      while (v7 != v9);
      v7 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end