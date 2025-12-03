@interface CKFullScreenBalloonViewController_QSExtras
- (void)performCancelAnimationWithCompletion:(id)completion;
@end

@implementation CKFullScreenBalloonViewController_QSExtras

- (void)performCancelAnimationWithCompletion:(id)completion
{
  v4.receiver = self;
  v4.super_class = CKFullScreenBalloonViewController_QSExtras;
  [(CKFullScreenBalloonViewController_QSExtras *)&v4 performCancelAnimationWithCompletion:completion];
  v3 = +[AXQuickSpeak sharedInstance];
  [v3 setContent:0];
}

@end