@interface AAUIProfileCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AAUIProfileCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v30.receiver = self;
  v30.super_class = AAUIProfileCell;
  [(PSTableCell *)&v30 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  v6 = [specifierCopy propertyForKey:@"AAUIPrimaryFontSize"];
  if (v6)
  {
    textLabel = [(AAUIProfileCell *)self textLabel];
    v8 = MEMORY[0x1E69DB878];
    [v6 floatValue];
    [v5 scaledValueForValue:v9];
    v10 = [v8 systemFontOfSize:?];
    [textLabel setFont:v10];
  }

  v11 = [specifierCopy propertyForKey:@"AAUIPrimaryTextColor"];
  textLabel2 = [(AAUIProfileCell *)self textLabel];
  v13 = textLabel2;
  if (v11)
  {
    [textLabel2 setTextColor:v11];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v13 setTextColor:labelColor];
  }

  v15 = [specifierCopy propertyForKey:@"AAUIDetailFontSize"];
  if (v15)
  {
    detailTextLabel = [(AAUIProfileCell *)self detailTextLabel];
    v17 = MEMORY[0x1E69DB878];
    [v15 floatValue];
    [v5 scaledValueForValue:v18];
    v19 = [v17 systemFontOfSize:?];
    [detailTextLabel setFont:v19];
  }

  detailTextLabel2 = [(AAUIProfileCell *)self detailTextLabel];
  v21 = [specifierCopy propertyForKey:*MEMORY[0x1E69C59A0]];
  [detailTextLabel2 setText:v21];

  v22 = [specifierCopy propertyForKey:@"AAUIDetailTextColor"];
  detailTextLabel3 = [(AAUIProfileCell *)self detailTextLabel];
  v24 = detailTextLabel3;
  if (v22)
  {
    [detailTextLabel3 setTextColor:v22];
  }

  else
  {
    tableCellGrayTextColor = [MEMORY[0x1E69DC888] tableCellGrayTextColor];
    [v24 setTextColor:tableCellGrayTextColor];
  }

  v26 = [specifierCopy propertyForKey:@"AAUIEvilMember"];
  bOOLValue = [v26 BOOLValue];

  if (bOOLValue)
  {
    detailTextLabel4 = [(AAUIProfileCell *)self detailTextLabel];
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    [detailTextLabel4 setTextColor:systemRedColor];
  }

  [(AAUIProfileCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = AAUIProfileCell;
  [(PSTableCell *)&v13 layoutSubviews];
  textLabel = [(AAUIProfileCell *)self textLabel];
  [textLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  textLabel2 = [(AAUIProfileCell *)self textLabel];
  [textLabel2 setFrame:{v5, v7 + -1.0, v9, v11}];
}

@end