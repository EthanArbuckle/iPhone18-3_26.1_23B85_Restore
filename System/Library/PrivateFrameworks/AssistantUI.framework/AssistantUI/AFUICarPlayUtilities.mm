@interface AFUICarPlayUtilities
+ (BOOL)isRequestForAnnounceNotification:(id)notification;
+ (BOOL)isRequestForMessageReadBannerTap:(id)tap;
+ (BOOL)shouldPresentForNewRequest:(id)request duringCurrentRequest:(id)currentRequest;
+ (BOOL)shouldStartNewRequest:(id)request duringCurrentRequest:(id)currentRequest;
@end

@implementation AFUICarPlayUtilities

+ (BOOL)shouldStartNewRequest:(id)request duringCurrentRequest:(id)currentRequest
{
  requestCopy = request;
  LOBYTE(currentRequest) = [self isRequestForAnnounceNotification:currentRequest];
  LOBYTE(self) = [self isRequestForMessageReadBannerTap:requestCopy];

  return currentRequest & self ^ 1;
}

+ (BOOL)shouldPresentForNewRequest:(id)request duringCurrentRequest:(id)currentRequest
{
  requestCopy = request;
  LOBYTE(currentRequest) = [self isRequestForAnnounceNotification:currentRequest];
  LOBYTE(self) = [self isRequestForAnnounceNotification:requestCopy];

  return currentRequest & (self ^ 1);
}

+ (BOOL)isRequestForMessageReadBannerTap:(id)tap
{
  tapCopy = tap;
  uiPresentationIdentifier = [tapCopy uiPresentationIdentifier];
  v5 = [uiPresentationIdentifier isEqualToString:@"com.apple.siri.CarDisplay"] && objc_msgSend(tapCopy, "requestSource") == 13 && objc_msgSend(tapCopy, "directActionEvent") == 4;

  return v5;
}

+ (BOOL)isRequestForAnnounceNotification:(id)notification
{
  notificationCopy = notification;
  uiPresentationIdentifier = [notificationCopy uiPresentationIdentifier];
  v5 = [uiPresentationIdentifier isEqualToString:@"com.apple.siri.CarDisplay.UIFree"] && objc_msgSend(notificationCopy, "requestSource") == 38 && objc_msgSend(notificationCopy, "directActionEvent") == 0;

  return v5;
}

@end