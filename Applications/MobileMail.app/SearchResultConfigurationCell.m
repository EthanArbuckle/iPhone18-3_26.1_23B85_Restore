@interface SearchResultConfigurationCell
- (void)prepareForReuse;
@end

@implementation SearchResultConfigurationCell

- (void)prepareForReuse
{
  _objc_retain(self);
  sub_1004134EC();
  _objc_release(self);
}

@end