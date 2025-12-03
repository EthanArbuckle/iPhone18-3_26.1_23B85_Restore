@interface AKNoteAnnotationEventHandler
- (BOOL)handleDownEvent:(id)event orRecognizer:(id)recognizer;
@end

@implementation AKNoteAnnotationEventHandler

- (BOOL)handleDownEvent:(id)event orRecognizer:(id)recognizer
{
  v5 = [(AKAnnotationEventHandler *)self pageController:event];
  annotation = [(AKAnnotationEventHandler *)self annotation];
  childAnnotation = [annotation childAnnotation];

  if (childAnnotation)
  {
    [v5 openPopupAnnotation:childAnnotation];
  }

  else
  {
    annotation2 = [(AKAnnotationEventHandler *)self annotation];
    [v5 addPopupToAnnotation:annotation2 openPopup:1];
  }

  return 1;
}

@end