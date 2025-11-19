@interface VoiceOverKeyboardTypingFeedbackController
+ (id)typingFeedbackShortStringDescription:(int64_t)a3;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation VoiceOverKeyboardTypingFeedbackController

- (id)actionDetailControllerDelegate
{
  v2 = [(VoiceOverKeyboardTypingFeedbackController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"VoiceOverKeyboardTypingFeedbackDelegateKey"];

  return v4;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(VoiceOverKeyboardTypingFeedbackController *)self _specifiersForSoftware:1];
    v6 = [(VoiceOverKeyboardTypingFeedbackController *)self _specifiersForSoftware:0];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
    v8 = [v7 copy];
    v9 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v8;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = VoiceOverKeyboardTypingFeedbackController;
  v6 = a4;
  [(VoiceOverKeyboardTypingFeedbackController *)&v18 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(VoiceOverKeyboardTypingFeedbackController *)self indexForIndexPath:v6, v18.receiver, v18.super_class];
  v8 = [(VoiceOverKeyboardTypingFeedbackController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(VoiceOverKeyboardTypingFeedbackController *)self specifierAtIndex:[(VoiceOverKeyboardTypingFeedbackController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      v15 = [v11 propertyForKey:*MEMORY[0x277D3FFB8]];
      v16 = [v15 isEqualToString:*MEMORY[0x277CE7F80]];

      v17 = [(VoiceOverKeyboardTypingFeedbackController *)self actionDetailControllerDelegate];
      [v17 setTypingFeedback:v14 isSoftware:v16];

      [(VoiceOverKeyboardTypingFeedbackController *)self reloadSpecifiers];
    }
  }
}

+ (id)typingFeedbackShortStringDescription:(int64_t)a3
{
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(off_278B90B50[a3], @"VoiceOverSettings");
  }

  return v4;
}

@end