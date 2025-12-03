@interface InteractiveSectionBackgroundView
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation InteractiveSectionBackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100447CA4();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100447DA8();
}

@end