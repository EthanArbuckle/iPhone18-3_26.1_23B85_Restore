@interface ConversationManagerAccessibility
- (void)_accessbilityEvaluateTurnData:(id)data languageCode:(id)code;
@end

@implementation ConversationManagerAccessibility

- (void)_accessbilityEvaluateTurnData:(id)data languageCode:(id)code
{
  v8.receiver = self;
  v8.super_class = ConversationManagerAccessibility;
  codeCopy = code;
  dataCopy = data;
  [(ConversationManagerAccessibility *)&v8 _accessbilityEvaluateTurnData:dataCopy languageCode:codeCopy];
  v7 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{dataCopy, v8.receiver, v8.super_class}];

  [v7 setAttribute:codeCopy forKey:*MEMORY[0x29EDC7F30]];
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

@end