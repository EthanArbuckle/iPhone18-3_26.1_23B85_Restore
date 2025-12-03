@interface CalculateDocumentController
- (void)sendExpressionsChanged;
@end

@implementation CalculateDocumentController

- (void)sendExpressionsChanged
{
  selfCopy = self;
  CalculateDocumentController.sendExpressionsChanged()();
}

@end