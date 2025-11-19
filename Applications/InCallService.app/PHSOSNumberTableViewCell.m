@interface PHSOSNumberTableViewCell
- (PHSOSNumberTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)commonInit;
- (void)populate:(id)a3;
@end

@implementation PHSOSNumberTableViewCell

- (PHSOSNumberTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = PHSOSNumberTableViewCell;
  v4 = [(PHSOSNumberTableViewCell *)&v7 initWithStyle:3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PHSOSNumberTableViewCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  [(PHSOSNumberTableViewCell *)self setSeparatorInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v3 = [UIColor colorWithWhite:1.0 alpha:0.1];
  [(PHSOSNumberTableViewCell *)self setBackgroundColor:v3];

  v4 = +[UIColor whiteColor];
  v5 = [(PHSOSNumberTableViewCell *)self textLabel];
  [v5 setTextColor:v4];

  v6 = +[UIColor whiteColor];
  v7 = [(PHSOSNumberTableViewCell *)self detailTextLabel];
  [v7 setTextColor:v6];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v9 = [(PHSOSNumberTableViewCell *)self textLabel];
  [v9 setFont:v8];

  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v11 = [(PHSOSNumberTableViewCell *)self detailTextLabel];
  [v11 setFont:v10];

  [(PHSOSNumberTableViewCell *)self setSelectionStyle:0];

  [(PHSOSNumberTableViewCell *)self setAccessoryType:1];
}

- (void)populate:(id)a3
{
  v4 = a3;
  v5 = [v4 sosTitle];
  v6 = [(PHSOSNumberTableViewCell *)self textLabel];
  [v6 setText:v5];

  v8 = [v4 sosSubtitle];

  v7 = [(PHSOSNumberTableViewCell *)self detailTextLabel];
  [v7 setText:v8];
}

@end