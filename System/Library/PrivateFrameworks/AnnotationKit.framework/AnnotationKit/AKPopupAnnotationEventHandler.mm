@interface AKPopupAnnotationEventHandler
- (BOOL)handleDownEvent:(id)event orRecognizer:(id)recognizer;
@end

@implementation AKPopupAnnotationEventHandler

- (BOOL)handleDownEvent:(id)event orRecognizer:(id)recognizer
{
  v5 = [(AKAnnotationEventHandler *)self pageController:event];
  annotation = [(AKAnnotationEventHandler *)self annotation];
  [v5 openPopupAnnotation:annotation];

  return 1;
}

@end