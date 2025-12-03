@interface ABVCardActivityAlertEscapingSerializationStrategy
+ (id)charactersToTriggerStrategy;
+ (id)regex;
+ (id)serializeString:(id)string;
@end

@implementation ABVCardActivityAlertEscapingSerializationStrategy

+ (id)charactersToTriggerStrategy
{
  if (charactersToTriggerStrategy_onceToken != -1)
  {
    +[ABVCardActivityAlertEscapingSerializationStrategy charactersToTriggerStrategy];
  }

  return charactersToTriggerStrategy_sCharSet;
}

id __80__ABVCardActivityAlertEscapingSerializationStrategy_charactersToTriggerStrategy__block_invoke()
{
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"=, \\""}];
  charactersToTriggerStrategy_sCharSet = result;
  return result;
}

+ (id)serializeString:(id)string
{
  regex = [self regex];
  v5 = [string length];

  return [regex stringByReplacingMatchesInString:string options:0 range:0 withTemplate:{v5, @"\\\\$1"}];
}

+ (id)regex
{
  if (regex_onceToken_80 != -1)
  {
    +[ABVCardActivityAlertEscapingSerializationStrategy regex];
  }

  return regex_sRegEx_79;
}

uint64_t __58__ABVCardActivityAlertEscapingSerializationStrategy_regex__block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"([= options:\\\\])" error:{0, 0}];
  regex_sRegEx_79 = result;
  return result;
}

@end