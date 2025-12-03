@interface HangSubtitleCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HangSubtitleCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = HangSubtitleCell;
  [(HangSubtitleCell *)&v5 refreshCellContentsWithSpecifier:specifier];
  textLabel = [(HangSubtitleCell *)self textLabel];
  [textLabel setLineBreakMode:5];
}

@end