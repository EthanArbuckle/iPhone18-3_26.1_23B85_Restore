@interface PHSOSNumberTableViewCell
- (PHSOSNumberTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)commonInit;
- (void)populate:(id)populate;
@end

@implementation PHSOSNumberTableViewCell

- (PHSOSNumberTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PHSOSNumberTableViewCell;
  v4 = [(PHSOSNumberTableViewCell *)&v7 initWithStyle:3 reuseIdentifier:identifier];
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
  textLabel = [(PHSOSNumberTableViewCell *)self textLabel];
  [textLabel setTextColor:v4];

  v6 = +[UIColor whiteColor];
  detailTextLabel = [(PHSOSNumberTableViewCell *)self detailTextLabel];
  [detailTextLabel setTextColor:v6];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  textLabel2 = [(PHSOSNumberTableViewCell *)self textLabel];
  [textLabel2 setFont:v8];

  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  detailTextLabel2 = [(PHSOSNumberTableViewCell *)self detailTextLabel];
  [detailTextLabel2 setFont:v10];

  [(PHSOSNumberTableViewCell *)self setSelectionStyle:0];

  [(PHSOSNumberTableViewCell *)self setAccessoryType:1];
}

- (void)populate:(id)populate
{
  populateCopy = populate;
  sosTitle = [populateCopy sosTitle];
  textLabel = [(PHSOSNumberTableViewCell *)self textLabel];
  [textLabel setText:sosTitle];

  sosSubtitle = [populateCopy sosSubtitle];

  detailTextLabel = [(PHSOSNumberTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:sosSubtitle];
}

@end