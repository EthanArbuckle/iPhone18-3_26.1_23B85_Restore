@interface AccountPresenter
- (void)profilePictureStoreDidChange;
- (void)restrictionsDidChange:(id)change;
@end

@implementation AccountPresenter

- (void)restrictionsDidChange:(id)change
{
  changeCopy = change;

  sub_1E1A9DCDC(sub_1E1AA3AE8, &block_descriptor_257);
}

- (void)profilePictureStoreDidChange
{

  sub_1E1A9E17C(0, 0);
}

@end