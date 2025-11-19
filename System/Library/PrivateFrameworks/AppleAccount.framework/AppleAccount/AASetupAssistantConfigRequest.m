@interface AASetupAssistantConfigRequest
- (id)urlString;
@end

@implementation AASetupAssistantConfigRequest

- (id)urlString
{
  v7.receiver = self;
  v7.super_class = AASetupAssistantConfigRequest;
  v2 = [(AAURLConfigurationRequest *)&v7 urlString];
  v3 = [v2 rangeOfString:@"?"];
  v5 = [v2 stringByReplacingCharactersInRange:v3 withString:{objc_msgSend(v2, "length") + v4 + ~v3, @"?context=buddy"}];

  return v5;
}

@end