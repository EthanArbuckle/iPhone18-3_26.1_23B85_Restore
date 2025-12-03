@interface AKTextFieldAnnotationEventHandler
- (BOOL)handleDownEvent:(id)event orRecognizer:(id)recognizer;
@end

@implementation AKTextFieldAnnotationEventHandler

- (BOOL)handleDownEvent:(id)event orRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  annotation = [(AKAnnotationEventHandler *)self annotation];
  editingDisabled = [annotation editingDisabled];

  if ((editingDisabled & 1) == 0)
  {
    pageController = [(AKAnnotationEventHandler *)self pageController];
    controller = [pageController controller];
    [controller showSelectionMenu:recognizerCopy];
  }

  return editingDisabled ^ 1;
}

@end