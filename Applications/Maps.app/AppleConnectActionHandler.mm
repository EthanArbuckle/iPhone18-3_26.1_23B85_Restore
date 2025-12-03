@interface AppleConnectActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation AppleConnectActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  chrome = [context chrome];
  [MapsAppleConnectAuthViewController presentAppleConnectAuthControllerFrom:chrome withProxyURL:0];
}

@end