@interface ConversationManagerAccessibility
- (void)_accessbilityEvaluateTurnData:(id)a3 languageCode:(id)a4;
@end

@implementation ConversationManagerAccessibility

- (void)_accessbilityEvaluateTurnData:(id)a3 languageCode:(id)a4
{
  v8.receiver = self;
  v8.super_class = ConversationManagerAccessibility;
  v5 = a4;
  v6 = a3;
  [(ConversationManagerAccessibility *)&v8 _accessbilityEvaluateTurnData:v6 languageCode:v5];
  v7 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v6, v8.receiver, v8.super_class}];

  [v7 setAttribute:v5 forKey:*MEMORY[0x29EDC7F30]];
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

@end