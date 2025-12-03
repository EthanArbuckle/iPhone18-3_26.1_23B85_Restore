@interface ABVCardActivityAlertQuotingSerializationStrategy
+ (id)regex;
+ (id)serializeString:(id)string;
@end

@implementation ABVCardActivityAlertQuotingSerializationStrategy

+ (id)serializeString:(id)string
{
  v5 = [string mutableCopy];
  [objc_msgSend(self "regex")];
  [v5 insertString:@"" atIndex:0];
  [v5 appendString:@""];

  return v5;
}

+ (id)regex
{
  if (regex_onceToken != -1)
  {
    +[ABVCardActivityAlertQuotingSerializationStrategy regex];
  }

  return regex_sRegEx;
}

uint64_t __57__ABVCardActivityAlertQuotingSerializationStrategy_regex__block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"([])" options:0 error:0];
  regex_sRegEx = result;
  return result;
}

@end