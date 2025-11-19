@interface AKPopupAnnotationEventHandler
- (BOOL)handleDownEvent:(id)a3 orRecognizer:(id)a4;
@end

@implementation AKPopupAnnotationEventHandler

- (BOOL)handleDownEvent:(id)a3 orRecognizer:(id)a4
{
  v5 = [(AKAnnotationEventHandler *)self pageController:a3];
  v6 = [(AKAnnotationEventHandler *)self annotation];
  [v5 openPopupAnnotation:v6];

  return 1;
}

@end