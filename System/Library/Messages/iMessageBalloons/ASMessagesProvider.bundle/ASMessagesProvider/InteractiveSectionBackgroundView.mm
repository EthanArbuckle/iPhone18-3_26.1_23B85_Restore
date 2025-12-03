@interface InteractiveSectionBackgroundView
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation InteractiveSectionBackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_25FC68();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_25FD6C();
}

@end