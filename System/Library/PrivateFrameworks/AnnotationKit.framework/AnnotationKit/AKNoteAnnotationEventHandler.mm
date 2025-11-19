@interface AKNoteAnnotationEventHandler
- (BOOL)handleDownEvent:(id)a3 orRecognizer:(id)a4;
@end

@implementation AKNoteAnnotationEventHandler

- (BOOL)handleDownEvent:(id)a3 orRecognizer:(id)a4
{
  v5 = [(AKAnnotationEventHandler *)self pageController:a3];
  v6 = [(AKAnnotationEventHandler *)self annotation];
  v7 = [v6 childAnnotation];

  if (v7)
  {
    [v5 openPopupAnnotation:v7];
  }

  else
  {
    v8 = [(AKAnnotationEventHandler *)self annotation];
    [v5 addPopupToAnnotation:v8 openPopup:1];
  }

  return 1;
}

@end