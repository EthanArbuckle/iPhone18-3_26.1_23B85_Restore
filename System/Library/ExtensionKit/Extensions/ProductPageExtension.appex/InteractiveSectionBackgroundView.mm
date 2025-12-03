@interface InteractiveSectionBackgroundView
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation InteractiveSectionBackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10021A0F0();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10021A1F4();
}

@end