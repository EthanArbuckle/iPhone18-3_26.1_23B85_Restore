@interface SKSpecifierWithSubtitleCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SKSpecifierWithSubtitleCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v18.receiver = self;
  v18.super_class = SKSpecifierWithSubtitleCell;
  v4 = a3;
  [(PSTableCell *)&v18 refreshCellContentsWithSpecifier:v4];
  v5 = [(SKSpecifierWithSubtitleCell *)self textLabel:v18.receiver];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v5 setFont:v6];

  v7 = [(SKSpecifierWithSubtitleCell *)self textLabel];
  v8 = [MEMORY[0x1E69DC888] labelColor];
  [v7 setTextColor:v8];

  v9 = [(SKSpecifierWithSubtitleCell *)self textLabel];
  v10 = [v4 propertyForKey:*MEMORY[0x1E69C59A8]];
  [v9 setText:v10];

  v11 = [(SKSpecifierWithSubtitleCell *)self detailTextLabel];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v11 setFont:v12];

  v13 = [(SKSpecifierWithSubtitleCell *)self detailTextLabel];
  v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v13 setTextColor:v14];

  v15 = [(SKSpecifierWithSubtitleCell *)self detailTextLabel];
  v16 = [v4 propertyForKey:*MEMORY[0x1E69C59A0]];

  [v15 setText:v16];
  v17 = [(SKSpecifierWithSubtitleCell *)self imageView];
  [v17 setContentMode:1];

  [(SKSpecifierWithSubtitleCell *)self setNeedsLayout];
}

@end