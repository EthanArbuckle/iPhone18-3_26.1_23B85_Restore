@interface AAUIProfileCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AAUIProfileCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = AAUIProfileCell;
  [(PSTableCell *)&v30 refreshCellContentsWithSpecifier:v4];
  v5 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  v6 = [v4 propertyForKey:@"AAUIPrimaryFontSize"];
  if (v6)
  {
    v7 = [(AAUIProfileCell *)self textLabel];
    v8 = MEMORY[0x1E69DB878];
    [v6 floatValue];
    [v5 scaledValueForValue:v9];
    v10 = [v8 systemFontOfSize:?];
    [v7 setFont:v10];
  }

  v11 = [v4 propertyForKey:@"AAUIPrimaryTextColor"];
  v12 = [(AAUIProfileCell *)self textLabel];
  v13 = v12;
  if (v11)
  {
    [v12 setTextColor:v11];
  }

  else
  {
    v14 = [MEMORY[0x1E69DC888] labelColor];
    [v13 setTextColor:v14];
  }

  v15 = [v4 propertyForKey:@"AAUIDetailFontSize"];
  if (v15)
  {
    v16 = [(AAUIProfileCell *)self detailTextLabel];
    v17 = MEMORY[0x1E69DB878];
    [v15 floatValue];
    [v5 scaledValueForValue:v18];
    v19 = [v17 systemFontOfSize:?];
    [v16 setFont:v19];
  }

  v20 = [(AAUIProfileCell *)self detailTextLabel];
  v21 = [v4 propertyForKey:*MEMORY[0x1E69C59A0]];
  [v20 setText:v21];

  v22 = [v4 propertyForKey:@"AAUIDetailTextColor"];
  v23 = [(AAUIProfileCell *)self detailTextLabel];
  v24 = v23;
  if (v22)
  {
    [v23 setTextColor:v22];
  }

  else
  {
    v25 = [MEMORY[0x1E69DC888] tableCellGrayTextColor];
    [v24 setTextColor:v25];
  }

  v26 = [v4 propertyForKey:@"AAUIEvilMember"];
  v27 = [v26 BOOLValue];

  if (v27)
  {
    v28 = [(AAUIProfileCell *)self detailTextLabel];
    v29 = [MEMORY[0x1E69DC888] systemRedColor];
    [v28 setTextColor:v29];
  }

  [(AAUIProfileCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = AAUIProfileCell;
  [(PSTableCell *)&v13 layoutSubviews];
  v3 = [(AAUIProfileCell *)self textLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(AAUIProfileCell *)self textLabel];
  [v12 setFrame:{v5, v7 + -1.0, v9, v11}];
}

@end