@interface NSURL(STSiriMessage)
+ (id)_af_URLWithMessageIdentifier:()STSiriMessage;
- (id)_af_messageIdentifierValue;
@end

@implementation NSURL(STSiriMessage)

- (id)_af_messageIdentifierValue
{
  v2 = [a1 scheme];
  v3 = [v2 isEqualToString:@"siri-message-internal"];

  if (v3)
  {
    v4 = [a1 resourceSpecifier];
    v5 = [v4 stringByRemovingPercentEncoding];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_af_URLWithMessageIdentifier:()STSiriMessage
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AB08];
    v5 = a3;
    v6 = [v4 URLPathAllowedCharacterSet];
    v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v6];

    v8 = [@"siri-message-internal" stringByAppendingString:@":"];
    v9 = [v8 stringByAppendingString:v7];

    v10 = [a1 URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end