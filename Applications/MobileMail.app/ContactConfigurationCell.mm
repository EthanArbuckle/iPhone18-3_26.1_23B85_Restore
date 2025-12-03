@interface ContactConfigurationCell
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ContactConfigurationCell

- (void)traitCollectionDidChange:(id)change
{
  _objc_retain(change);
  _objc_retain(self);
  sub_100292E30(change);
  _objc_release(self);
  _objc_release(change);
}

- (void)prepareForReuse
{
  _objc_retain(self);
  sub_100293658();
  _objc_release(self);
}

@end