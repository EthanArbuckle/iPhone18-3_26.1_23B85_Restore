@interface ContactConfigurationCell
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ContactConfigurationCell

- (void)traitCollectionDidChange:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_100292E30(a3);
  _objc_release(self);
  _objc_release(a3);
}

- (void)prepareForReuse
{
  _objc_retain(self);
  sub_100293658();
  _objc_release(self);
}

@end