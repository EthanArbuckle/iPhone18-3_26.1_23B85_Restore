@interface MTDownloadsGateway
+ (MTDownloadsGatewayProtocol)shared;
@end

@implementation MTDownloadsGateway

+ (MTDownloadsGatewayProtocol)shared
{
  if (qword_100583D78 != -1)
  {
    sub_100017140();
  }

  v3 = qword_100583D70;

  return v3;
}

@end