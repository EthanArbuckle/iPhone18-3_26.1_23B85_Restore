@interface DayViewTableViewSectionHeader
- (CGSize)intrinsicContentSize;
- (void)updateFonts;
@end

@implementation DayViewTableViewSectionHeader

- (CGSize)intrinsicContentSize
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 _scaledValueForValue:44.0];
  v4 = v3;

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v17.origin.x = v7;
  v17.origin.y = v9;
  v17.size.width = v11;
  v17.size.height = v13;
  Width = CGRectGetWidth(v17);
  v15 = v4;
  result.height = v15;
  result.width = Width;
  return result;
}

- (void)updateFonts
{
  selfCopy = self;
  sub_10059BE28();
}

@end