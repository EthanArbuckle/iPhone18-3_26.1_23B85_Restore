@interface CKFullScreenBalloonViewController_QSExtras
- (void)performCancelAnimationWithCompletion:(id)a3;
@end

@implementation CKFullScreenBalloonViewController_QSExtras

- (void)performCancelAnimationWithCompletion:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKFullScreenBalloonViewController_QSExtras;
  [(CKFullScreenBalloonViewController_QSExtras *)&v4 performCancelAnimationWithCompletion:a3];
  v3 = +[AXQuickSpeak sharedInstance];
  [v3 setContent:0];
}

@end