@interface EditorialSearchResultContentView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation EditorialSearchResultContentView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_259C5C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_25AC9C(change);
}

@end