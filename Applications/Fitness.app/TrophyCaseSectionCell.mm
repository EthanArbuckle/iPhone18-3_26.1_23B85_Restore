@interface TrophyCaseSectionCell
- (void)prepareForReuse;
@end

@implementation TrophyCaseSectionCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1002923B0();
}

@end