@interface PSCustomControlTableCell
- (id)controlValue;
- (id)newControl;
- (void)refreshCellContentsWithSpecifier:(id)specifier inRange:(_NSRange)range withAttributedString:(id)string;
- (void)setupSwitchConstraints:(id)constraints;
- (void)switchValueChanged:(id)changed;
@end

@implementation PSCustomControlTableCell

- (id)newControl
{
  v3 = objc_alloc_init(UISwitch);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addTarget:self action:"switchValueChanged:" forControlEvents:4096];
  [(PSCustomControlTableCell *)self setupSwitchConstraints:v3];
  return v3;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier inRange:(_NSRange)range withAttributedString:(id)string
{
  v13.receiver = self;
  v13.super_class = PSCustomControlTableCell;
  [(PSCustomControlTableCell *)&v13 refreshCellContentsWithSpecifier:specifier, range.location, range.length];
  name = [specifier name];
  v9 = [name rangeOfString:@"<globe>"];
  v11 = v10;
  v12 = [[NSMutableAttributedString alloc] initWithString:name];
  [v12 replaceCharactersInRange:v9 withAttributedString:{v11, string}];
  [-[PSCustomControlTableCell titleLabel](self "titleLabel")];

  [-[PSCustomControlTableCell control](self "control")];
}

- (id)controlValue
{
  result = [(PSCustomControlTableCell *)self specifier];
  if (result)
  {

    return [result performGetter];
  }

  return result;
}

- (void)switchValueChanged:(id)changed
{
  specifier = [(PSCustomControlTableCell *)self specifier];
  if (specifier)
  {
    v5 = specifier;
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [changed isOn]);

    [v5 performSetterWithValue:v6];
  }
}

- (void)setupSwitchConstraints:(id)constraints
{
  contentView = [(PSCustomControlTableCell *)self contentView];
  [contentView addSubview:constraints];
  v7[0] = [objc_msgSend(constraints "centerYAnchor")];
  v7[1] = [objc_msgSend(constraints "trailingAnchor")];
  [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v7 count:2]];
  [-[PSCustomControlTableCell titleLabel](self "titleLabel")];
  v6[1] = [objc_msgSend(-[PSCustomControlTableCell titleLabel](self titleLabel];
  v6[2] = [objc_msgSend(-[PSCustomControlTableCell titleLabel](self "titleLabel")];
  [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v6 count:3]];
}

@end