@interface AdjustableSeparatorInsetListCell
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation AdjustableSeparatorInsetListCell

- (void)updateConstraints
{
  _objc_retain(self);
  sub_100269B94();
  _objc_release(self);
}

- (void)traitCollectionDidChange:(id)change
{
  _objc_retain(change);
  _objc_retain(self);
  sub_10026A610(change);
  _objc_release(self);
  _objc_release(change);
}

@end