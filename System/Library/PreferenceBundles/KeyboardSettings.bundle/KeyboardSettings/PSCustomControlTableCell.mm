@interface PSCustomControlTableCell
- (id)controlValue;
- (id)newControl;
- (void)refreshCellContentsWithSpecifier:(id)a3 inRange:(_NSRange)a4 withAttributedString:(id)a5;
- (void)setupSwitchConstraints:(id)a3;
- (void)switchValueChanged:(id)a3;
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

- (void)refreshCellContentsWithSpecifier:(id)a3 inRange:(_NSRange)a4 withAttributedString:(id)a5
{
  v13.receiver = self;
  v13.super_class = PSCustomControlTableCell;
  [(PSCustomControlTableCell *)&v13 refreshCellContentsWithSpecifier:a3, a4.location, a4.length];
  v8 = [a3 name];
  v9 = [v8 rangeOfString:@"<globe>"];
  v11 = v10;
  v12 = [[NSMutableAttributedString alloc] initWithString:v8];
  [v12 replaceCharactersInRange:v9 withAttributedString:{v11, a5}];
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

- (void)switchValueChanged:(id)a3
{
  v4 = [(PSCustomControlTableCell *)self specifier];
  if (v4)
  {
    v5 = v4;
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a3 isOn]);

    [v5 performSetterWithValue:v6];
  }
}

- (void)setupSwitchConstraints:(id)a3
{
  v5 = [(PSCustomControlTableCell *)self contentView];
  [v5 addSubview:a3];
  v7[0] = [objc_msgSend(a3 "centerYAnchor")];
  v7[1] = [objc_msgSend(a3 "trailingAnchor")];
  [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v7 count:2]];
  [-[PSCustomControlTableCell titleLabel](self "titleLabel")];
  v6[1] = [objc_msgSend(-[PSCustomControlTableCell titleLabel](self titleLabel];
  v6[2] = [objc_msgSend(-[PSCustomControlTableCell titleLabel](self "titleLabel")];
  [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v6 count:3]];
}

@end