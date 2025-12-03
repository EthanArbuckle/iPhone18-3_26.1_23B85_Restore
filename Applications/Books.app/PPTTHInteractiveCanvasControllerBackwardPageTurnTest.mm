@interface PPTTHInteractiveCanvasControllerBackwardPageTurnTest
- (void)turnPage;
@end

@implementation PPTTHInteractiveCanvasControllerBackwardPageTurnTest

- (void)turnPage
{
  bookController = [(PPTBasicTest *)self bookController];
  [THTestDriver turnPageWithBookController:bookController direction:0xFFFFFFFFLL];
}

@end