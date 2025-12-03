@interface VoiceOverKeyboardTypingFeedbackController
+ (id)typingFeedbackShortStringDescription:(int64_t)description;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation VoiceOverKeyboardTypingFeedbackController

- (id)actionDetailControllerDelegate
{
  specifier = [(VoiceOverKeyboardTypingFeedbackController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VoiceOverKeyboardTypingFeedbackDelegateKey"];

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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = VoiceOverKeyboardTypingFeedbackController;
  pathCopy = path;
  [(VoiceOverKeyboardTypingFeedbackController *)&v18 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(VoiceOverKeyboardTypingFeedbackController *)self indexForIndexPath:pathCopy, v18.receiver, v18.super_class];
  specifiers = [(VoiceOverKeyboardTypingFeedbackController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(VoiceOverKeyboardTypingFeedbackController *)self specifierAtIndex:[(VoiceOverKeyboardTypingFeedbackController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      v15 = [v11 propertyForKey:*MEMORY[0x277D3FFB8]];
      v16 = [v15 isEqualToString:*MEMORY[0x277CE7F80]];

      actionDetailControllerDelegate = [(VoiceOverKeyboardTypingFeedbackController *)self actionDetailControllerDelegate];
      [actionDetailControllerDelegate setTypingFeedback:v14 isSoftware:v16];

      [(VoiceOverKeyboardTypingFeedbackController *)self reloadSpecifiers];
    }
  }
}

+ (id)typingFeedbackShortStringDescription:(int64_t)description
{
  if (description > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(off_278B90B50[description], @"VoiceOverSettings");
  }

  return v4;
}

@end