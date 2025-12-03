@interface AKHighlightAnnotationEventHandler
- (BOOL)handleDownEvent:(id)event orRecognizer:(id)recognizer;
@end

@implementation AKHighlightAnnotationEventHandler

- (BOOL)handleDownEvent:(id)event orRecognizer:(id)recognizer
{
  v5 = [(AKAnnotationEventHandler *)self pageController:event];
  pageModelController = [v5 pageModelController];
  v7 = [pageModelController mutableSetValueForKey:@"selectedAnnotations"];

  v8 = MEMORY[0x277CBEB98];
  annotation = [(AKAnnotationEventHandler *)self annotation];
  v10 = [v8 setWithObject:annotation];
  [v7 setSet:v10];

  annotation2 = [(AKAnnotationEventHandler *)self annotation];
  [v5 openPopoverForHighlightAnnotation:annotation2];

  return 1;
}

@end