@interface MFMailIntentTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation MFMailIntentTransformer

- (id)transformedValue:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69ADD38]);
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69ADC78]];
  [v4 _setLaunchId:*MEMORY[0x1E69B17F0]];
  if (v5)
  {
    [v4 setSender:v5];
  }

  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69ADC88]];
  [v4 setTo:v6];

  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69ADC68]];
  [v4 setCc:v7];

  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69ADC60]];
  [v4 setBcc:v8];

  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69ADC80]];
  [v4 setSubject:v9];

  v10 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69ADC70]];
  [v4 setBody:v10];

  v11 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69ADC90]];
  [v4 setUserTypedContent:v11];

  v12 = objc_alloc_init(MEMORY[0x1E69ADD40]);
  v13 = [v12 stringForObjectValue:v4];
  [v4 setSuggestedInvocationPhrase:v13];

  return v4;
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 sender];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69ADC78]];

  v6 = [v3 to];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69ADC88]];

  v7 = [v3 cc];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69ADC68]];

  v8 = [v3 bcc];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69ADC60]];

  v9 = [v3 subject];
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69ADC80]];

  v10 = [v3 body];
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69ADC70]];

  return v4;
}

@end