@interface AppleConnectActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation AppleConnectActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v4 = [a4 chrome];
  [MapsAppleConnectAuthViewController presentAppleConnectAuthControllerFrom:v4 withProxyURL:0];
}

@end