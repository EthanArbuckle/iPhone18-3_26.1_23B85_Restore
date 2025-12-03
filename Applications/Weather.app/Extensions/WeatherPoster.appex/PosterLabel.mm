@interface PosterLabel
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation PosterLabel

- (void)updateConstraints
{
  selfCopy = self;
  sub_10003AE58();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10003AEE8(change);
}

@end