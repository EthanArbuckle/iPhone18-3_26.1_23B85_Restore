@interface AASetupAssistantConfigRequest
- (id)urlString;
@end

@implementation AASetupAssistantConfigRequest

- (id)urlString
{
  v7.receiver = self;
  v7.super_class = AASetupAssistantConfigRequest;
  urlString = [(AAURLConfigurationRequest *)&v7 urlString];
  v3 = [urlString rangeOfString:@"?"];
  v5 = [urlString stringByReplacingCharactersInRange:v3 withString:{objc_msgSend(urlString, "length") + v4 + ~v3, @"?context=buddy"}];

  return v5;
}

@end