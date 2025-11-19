@interface WFExitAction
- (void)runWithInput:(id)a3 error:(id *)a4;
@end

@implementation WFExitAction

- (void)runWithInput:(id)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D7CB30];
  v10 = *MEMORY[0x277CCA470];
  v7 = WFLocalizedString(@"User requested shortcut exit.");
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  *a4 = [v5 errorWithDomain:v6 code:4 userInfo:v8];

  v9 = *MEMORY[0x277D85DE8];
}

@end