@interface _CBApplicationSupportServiceDelegate
- (id)service:(id)service initializeClient:(id)client;
@end

@implementation _CBApplicationSupportServiceDelegate

- (id)service:(id)service initializeClient:(id)client
{
  if (qword_100092438 != -1)
  {
    sub_1000479B8();
  }

  v5 = qword_100092430;

  return v5;
}

@end