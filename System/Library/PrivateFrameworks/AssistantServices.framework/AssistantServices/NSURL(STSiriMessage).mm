@interface NSURL(STSiriMessage)
+ (id)_af_URLWithMessageIdentifier:()STSiriMessage;
- (id)_af_messageIdentifierValue;
@end

@implementation NSURL(STSiriMessage)

- (id)_af_messageIdentifierValue
{
  scheme = [self scheme];
  v3 = [scheme isEqualToString:@"siri-message-internal"];

  if (v3)
  {
    resourceSpecifier = [self resourceSpecifier];
    stringByRemovingPercentEncoding = [resourceSpecifier stringByRemovingPercentEncoding];
  }

  else
  {
    stringByRemovingPercentEncoding = 0;
  }

  return stringByRemovingPercentEncoding;
}

+ (id)_af_URLWithMessageIdentifier:()STSiriMessage
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AB08];
    v5 = a3;
    uRLPathAllowedCharacterSet = [v4 URLPathAllowedCharacterSet];
    v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

    v8 = [@"siri-message-internal" stringByAppendingString:@":"];
    v9 = [v8 stringByAppendingString:v7];

    v10 = [self URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end