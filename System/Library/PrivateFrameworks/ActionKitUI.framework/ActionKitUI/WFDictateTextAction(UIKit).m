@interface WFDictateTextAction(UIKit)
- (id)keyCommands;
@end

@implementation WFDictateTextAction(UIKit)

- (id)keyCommands
{
  v13[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, val);
  v1 = MEMORY[0x277D7D2B0];
  v2 = WFLocalizedString(@"Finish Dictation");
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __41__WFDictateTextAction_UIKit__keyCommands__block_invoke;
  v10 = &unk_278C36650;
  objc_copyWeak(&v11, &location);
  v3 = [v1 commandWithTitle:v2 input:@"\r" modifierFlags:0x100000 block:&v7];
  v13[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:{1, v7, v8, v9, v10}];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end