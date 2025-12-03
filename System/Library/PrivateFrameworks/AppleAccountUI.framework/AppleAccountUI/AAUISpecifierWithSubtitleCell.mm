@interface AAUISpecifierWithSubtitleCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AAUISpecifierWithSubtitleCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v22.receiver = self;
  v22.super_class = AAUISpecifierWithSubtitleCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v22 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(AAUISpecifierWithSubtitleCell *)self textLabel:v22.receiver];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v5 setFont:v6];

  textLabel = [(AAUISpecifierWithSubtitleCell *)self textLabel];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [textLabel setTextColor:labelColor];

  textLabel2 = [(AAUISpecifierWithSubtitleCell *)self textLabel];
  v10 = [specifierCopy propertyForKey:*MEMORY[0x1E69C59A8]];
  [textLabel2 setText:v10];

  textLabel3 = [(AAUISpecifierWithSubtitleCell *)self textLabel];
  [textLabel3 setLineBreakMode:0];

  textLabel4 = [(AAUISpecifierWithSubtitleCell *)self textLabel];
  [textLabel4 setNumberOfLines:0];

  detailTextLabel = [(AAUISpecifierWithSubtitleCell *)self detailTextLabel];
  v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [detailTextLabel setFont:v14];

  detailTextLabel2 = [(AAUISpecifierWithSubtitleCell *)self detailTextLabel];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [detailTextLabel2 setTextColor:secondaryLabelColor];

  detailTextLabel3 = [(AAUISpecifierWithSubtitleCell *)self detailTextLabel];
  v18 = [specifierCopy propertyForKey:*MEMORY[0x1E69C59A0]];

  [detailTextLabel3 setText:v18];
  detailTextLabel4 = [(AAUISpecifierWithSubtitleCell *)self detailTextLabel];
  [detailTextLabel4 setLineBreakMode:0];

  detailTextLabel5 = [(AAUISpecifierWithSubtitleCell *)self detailTextLabel];
  [detailTextLabel5 setNumberOfLines:0];

  imageView = [(AAUISpecifierWithSubtitleCell *)self imageView];
  [imageView setContentMode:1];

  [(AAUISpecifierWithSubtitleCell *)self setNeedsLayout];
}

@end