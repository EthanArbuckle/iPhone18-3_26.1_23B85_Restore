@interface PPTTHInteractiveCanvasControllerForwardPageTurnTest
- (void)turnPage;
@end

@implementation PPTTHInteractiveCanvasControllerForwardPageTurnTest

- (void)turnPage
{
  bookController = [(PPTBasicTest *)self bookController];
  [THTestDriver turnPageWithBookController:bookController direction:1];
}

@end