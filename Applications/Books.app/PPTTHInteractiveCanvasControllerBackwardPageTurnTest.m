@interface PPTTHInteractiveCanvasControllerBackwardPageTurnTest
- (void)turnPage;
@end

@implementation PPTTHInteractiveCanvasControllerBackwardPageTurnTest

- (void)turnPage
{
  v2 = [(PPTBasicTest *)self bookController];
  [THTestDriver turnPageWithBookController:v2 direction:0xFFFFFFFFLL];
}

@end