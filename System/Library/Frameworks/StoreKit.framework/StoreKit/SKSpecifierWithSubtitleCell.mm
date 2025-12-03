@interface SKSpecifierWithSubtitleCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SKSpecifierWithSubtitleCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v18.receiver = self;
  v18.super_class = SKSpecifierWithSubtitleCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v18 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(SKSpecifierWithSubtitleCell *)self textLabel:v18.receiver];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v5 setFont:v6];

  textLabel = [(SKSpecifierWithSubtitleCell *)self textLabel];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [textLabel setTextColor:labelColor];

  textLabel2 = [(SKSpecifierWithSubtitleCell *)self textLabel];
  v10 = [specifierCopy propertyForKey:*MEMORY[0x1E69C59A8]];
  [textLabel2 setText:v10];

  detailTextLabel = [(SKSpecifierWithSubtitleCell *)self detailTextLabel];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [detailTextLabel setFont:v12];

  detailTextLabel2 = [(SKSpecifierWithSubtitleCell *)self detailTextLabel];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [detailTextLabel2 setTextColor:secondaryLabelColor];

  detailTextLabel3 = [(SKSpecifierWithSubtitleCell *)self detailTextLabel];
  v16 = [specifierCopy propertyForKey:*MEMORY[0x1E69C59A0]];

  [detailTextLabel3 setText:v16];
  imageView = [(SKSpecifierWithSubtitleCell *)self imageView];
  [imageView setContentMode:1];

  [(SKSpecifierWithSubtitleCell *)self setNeedsLayout];
}

@end