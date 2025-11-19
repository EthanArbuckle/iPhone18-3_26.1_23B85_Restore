@interface AKTextFieldAnnotationEventHandler
- (BOOL)handleDownEvent:(id)a3 orRecognizer:(id)a4;
@end

@implementation AKTextFieldAnnotationEventHandler

- (BOOL)handleDownEvent:(id)a3 orRecognizer:(id)a4
{
  v5 = a4;
  v6 = [(AKAnnotationEventHandler *)self annotation];
  v7 = [v6 editingDisabled];

  if ((v7 & 1) == 0)
  {
    v8 = [(AKAnnotationEventHandler *)self pageController];
    v9 = [v8 controller];
    [v9 showSelectionMenu:v5];
  }

  return v7 ^ 1;
}

@end