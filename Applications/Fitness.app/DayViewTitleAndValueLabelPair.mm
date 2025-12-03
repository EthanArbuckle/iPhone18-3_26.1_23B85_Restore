@interface DayViewTitleAndValueLabelPair
- (CGSize)intrinsicContentSize;
- (void)updateFonts;
@end

@implementation DayViewTitleAndValueLabelPair

- (void)updateFonts
{
  selfCopy = self;
  sub_10022FC4C();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_10022FD6C();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end