@interface CRLiOSInsertPageViewControllerOverlayGestureRecognizer
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation CRLiOSInsertPageViewControllerOverlayGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if (![(CRLiOSInsertPageViewControllerOverlayGestureRecognizer *)self state:a3])
  {

    [(CRLiOSInsertPageViewControllerOverlayGestureRecognizer *)self setState:3];
  }
}

@end