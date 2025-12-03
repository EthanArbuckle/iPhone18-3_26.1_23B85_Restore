@interface UniversalLinksService
- (void)updateWithCompletion:(id)completion;
@end

@implementation UniversalLinksService

- (void)updateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1001CB188(selfCopy, v4);
  _Block_release(v4);
}

@end