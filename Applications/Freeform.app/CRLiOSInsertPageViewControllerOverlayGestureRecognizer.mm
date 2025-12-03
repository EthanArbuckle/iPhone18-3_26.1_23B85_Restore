@interface CRLiOSInsertPageViewControllerOverlayGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation CRLiOSInsertPageViewControllerOverlayGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if (![(CRLiOSInsertPageViewControllerOverlayGestureRecognizer *)self state:began])
  {

    [(CRLiOSInsertPageViewControllerOverlayGestureRecognizer *)self setState:3];
  }
}

@end