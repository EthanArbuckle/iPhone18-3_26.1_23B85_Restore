@interface AEEPubBookHelper
- (id)helperMinifiedController;
@end

@implementation AEEPubBookHelper

- (id)helperMinifiedController
{
  v2 = [[AEEPubMinifiedController alloc] initWithHelper:self];

  return v2;
}

@end