@interface AdjustableSeparatorInsetListCell
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation AdjustableSeparatorInsetListCell

- (void)updateConstraints
{
  _objc_retain(self);
  sub_100269B94();
  _objc_release(self);
}

- (void)traitCollectionDidChange:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_10026A610(a3);
  _objc_release(self);
  _objc_release(a3);
}

@end