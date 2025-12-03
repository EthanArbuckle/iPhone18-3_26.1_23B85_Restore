@interface MFMailIntentTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation MFMailIntentTransformer

- (id)transformedValue:(id)value
{
  valueCopy = value;
  v4 = objc_alloc_init(MEMORY[0x1E69ADD38]);
  v5 = [valueCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC78]];
  [v4 _setLaunchId:*MEMORY[0x1E69B17F0]];
  if (v5)
  {
    [v4 setSender:v5];
  }

  v6 = [valueCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC88]];
  [v4 setTo:v6];

  v7 = [valueCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC68]];
  [v4 setCc:v7];

  v8 = [valueCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC60]];
  [v4 setBcc:v8];

  v9 = [valueCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC80]];
  [v4 setSubject:v9];

  v10 = [valueCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC70]];
  [v4 setBody:v10];

  v11 = [valueCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC90]];
  [v4 setUserTypedContent:v11];

  v12 = objc_alloc_init(MEMORY[0x1E69ADD40]);
  v13 = [v12 stringForObjectValue:v4];
  [v4 setSuggestedInvocationPhrase:v13];

  return v4;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sender = [valueCopy sender];
  [v4 setObject:sender forKeyedSubscript:*MEMORY[0x1E69ADC78]];

  v6 = [valueCopy to];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69ADC88]];

  v7 = [valueCopy cc];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69ADC68]];

  v8 = [valueCopy bcc];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69ADC60]];

  subject = [valueCopy subject];
  [v4 setObject:subject forKeyedSubscript:*MEMORY[0x1E69ADC80]];

  body = [valueCopy body];
  [v4 setObject:body forKeyedSubscript:*MEMORY[0x1E69ADC70]];

  return v4;
}

@end