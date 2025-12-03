@interface WFFolderAction
- (void)runWithInput:(id)input error:(id *)error;
@end

@implementation WFFolderAction

- (void)runWithInput:(id)input error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(WFFolderAction *)self parameterValueForKey:@"WFFolder" ofClass:objc_opt_class()];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        output = [(WFFolderAction *)self output];
        [output addFileWithOriginAttribution:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end