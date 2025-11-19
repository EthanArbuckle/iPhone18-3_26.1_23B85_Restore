@interface CKFullScreenBalloonViewControllerPhone_QSExtras
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setBalloonView:(id)a3;
@end

@implementation CKFullScreenBalloonViewControllerPhone_QSExtras

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKFullScreenBalloonViewControllerPhone" hasInstanceMethod:@"setBalloonView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKTextBalloonView"];
}

- (void)setBalloonView:(id)a3
{
  v4 = a3;
  v5 = +[AXQuickSpeak sharedInstance];
  [v5 setHasTextBalloonView:0];

  v7.receiver = self;
  v7.super_class = CKFullScreenBalloonViewControllerPhone_QSExtras;
  [(CKFullScreenBalloonViewControllerPhone_QSExtras *)&v7 setBalloonView:v4];
  NSClassFromString(&cfstr_Cktextballoonv.isa);
  LOBYTE(self) = objc_opt_isKindOfClass();

  if (self)
  {
    v6 = +[AXQuickSpeak sharedInstance];
    [v6 setHasTextBalloonView:1];
  }
}

@end