@interface CKFullScreenBalloonViewControllerPhone_QSExtras
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setBalloonView:(id)view;
@end

@implementation CKFullScreenBalloonViewControllerPhone_QSExtras

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKFullScreenBalloonViewControllerPhone" hasInstanceMethod:@"setBalloonView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKTextBalloonView"];
}

- (void)setBalloonView:(id)view
{
  viewCopy = view;
  v5 = +[AXQuickSpeak sharedInstance];
  [v5 setHasTextBalloonView:0];

  v7.receiver = self;
  v7.super_class = CKFullScreenBalloonViewControllerPhone_QSExtras;
  [(CKFullScreenBalloonViewControllerPhone_QSExtras *)&v7 setBalloonView:viewCopy];
  NSClassFromString(&cfstr_Cktextballoonv.isa);
  LOBYTE(self) = objc_opt_isKindOfClass();

  if (self)
  {
    v6 = +[AXQuickSpeak sharedInstance];
    [v6 setHasTextBalloonView:1];
  }
}

@end