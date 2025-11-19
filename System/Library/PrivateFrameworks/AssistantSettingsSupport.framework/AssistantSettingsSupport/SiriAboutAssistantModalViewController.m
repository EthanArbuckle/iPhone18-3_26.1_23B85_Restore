@interface SiriAboutAssistantModalViewController
- (SiriAboutAssistantModalViewController)init;
@end

@implementation SiriAboutAssistantModalViewController

- (SiriAboutAssistantModalViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = @"AssistantShared";
  v5 = [v3 localizedStringForKey:@"ASSISTANT_ABOUT_TITLE" value:&stru_285317CF0 table:@"AssistantShared"];

  v6 = objc_opt_class();
  if (MGGetSInt32Answer() == 2)
  {
    v7 = [@"ASSISTANT_ABOUT_TEXT" stringByAppendingString:@"_SIDE_BUTTON"];
    v6 = objc_opt_class();
    v4 = @"AssistantSettings-D22";
  }

  else
  {
    v7 = @"ASSISTANT_ABOUT_TEXT";
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:v6];
  v9 = [v8 localizedStringForKey:v7 value:&stru_285317CF0 table:v4];

  v12.receiver = self;
  v12.super_class = SiriAboutAssistantModalViewController;
  v10 = [(SiriModalTextViewController *)&v12 initWithTitleText:v5 andBodyText:v9];

  return v10;
}

@end