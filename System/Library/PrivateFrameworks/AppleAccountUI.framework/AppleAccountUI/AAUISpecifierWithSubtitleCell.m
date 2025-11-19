@interface AAUISpecifierWithSubtitleCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AAUISpecifierWithSubtitleCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v22.receiver = self;
  v22.super_class = AAUISpecifierWithSubtitleCell;
  v4 = a3;
  [(PSTableCell *)&v22 refreshCellContentsWithSpecifier:v4];
  v5 = [(AAUISpecifierWithSubtitleCell *)self textLabel:v22.receiver];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v5 setFont:v6];

  v7 = [(AAUISpecifierWithSubtitleCell *)self textLabel];
  v8 = [MEMORY[0x1E69DC888] labelColor];
  [v7 setTextColor:v8];

  v9 = [(AAUISpecifierWithSubtitleCell *)self textLabel];
  v10 = [v4 propertyForKey:*MEMORY[0x1E69C59A8]];
  [v9 setText:v10];

  v11 = [(AAUISpecifierWithSubtitleCell *)self textLabel];
  [v11 setLineBreakMode:0];

  v12 = [(AAUISpecifierWithSubtitleCell *)self textLabel];
  [v12 setNumberOfLines:0];

  v13 = [(AAUISpecifierWithSubtitleCell *)self detailTextLabel];
  v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v13 setFont:v14];

  v15 = [(AAUISpecifierWithSubtitleCell *)self detailTextLabel];
  v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v15 setTextColor:v16];

  v17 = [(AAUISpecifierWithSubtitleCell *)self detailTextLabel];
  v18 = [v4 propertyForKey:*MEMORY[0x1E69C59A0]];

  [v17 setText:v18];
  v19 = [(AAUISpecifierWithSubtitleCell *)self detailTextLabel];
  [v19 setLineBreakMode:0];

  v20 = [(AAUISpecifierWithSubtitleCell *)self detailTextLabel];
  [v20 setNumberOfLines:0];

  v21 = [(AAUISpecifierWithSubtitleCell *)self imageView];
  [v21 setContentMode:1];

  [(AAUISpecifierWithSubtitleCell *)self setNeedsLayout];
}

@end