@interface AFUICarPlayUtilities
+ (BOOL)isRequestForAnnounceNotification:(id)a3;
+ (BOOL)isRequestForMessageReadBannerTap:(id)a3;
+ (BOOL)shouldPresentForNewRequest:(id)a3 duringCurrentRequest:(id)a4;
+ (BOOL)shouldStartNewRequest:(id)a3 duringCurrentRequest:(id)a4;
@end

@implementation AFUICarPlayUtilities

+ (BOOL)shouldStartNewRequest:(id)a3 duringCurrentRequest:(id)a4
{
  v6 = a3;
  LOBYTE(a4) = [a1 isRequestForAnnounceNotification:a4];
  LOBYTE(a1) = [a1 isRequestForMessageReadBannerTap:v6];

  return a4 & a1 ^ 1;
}

+ (BOOL)shouldPresentForNewRequest:(id)a3 duringCurrentRequest:(id)a4
{
  v6 = a3;
  LOBYTE(a4) = [a1 isRequestForAnnounceNotification:a4];
  LOBYTE(a1) = [a1 isRequestForAnnounceNotification:v6];

  return a4 & (a1 ^ 1);
}

+ (BOOL)isRequestForMessageReadBannerTap:(id)a3
{
  v3 = a3;
  v4 = [v3 uiPresentationIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.siri.CarDisplay"] && objc_msgSend(v3, "requestSource") == 13 && objc_msgSend(v3, "directActionEvent") == 4;

  return v5;
}

+ (BOOL)isRequestForAnnounceNotification:(id)a3
{
  v3 = a3;
  v4 = [v3 uiPresentationIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.siri.CarDisplay.UIFree"] && objc_msgSend(v3, "requestSource") == 38 && objc_msgSend(v3, "directActionEvent") == 0;

  return v5;
}

@end