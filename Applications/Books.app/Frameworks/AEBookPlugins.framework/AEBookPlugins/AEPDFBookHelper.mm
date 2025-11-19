@interface AEPDFBookHelper
- (id)helperMinifiedController;
@end

@implementation AEPDFBookHelper

- (id)helperMinifiedController
{
  v2 = [[AEPDFMinifiedController alloc] initWithHelper:self];

  return v2;
}

@end