@interface ViewModelProviderLoadTest
- (void)viewModelProviderDidUpdate:(id)update;
@end

@implementation ViewModelProviderLoadTest

- (void)viewModelProviderDidUpdate:(id)update
{
  updateCopy = update;

  sub_29DF42230(updateCopy);
}

@end