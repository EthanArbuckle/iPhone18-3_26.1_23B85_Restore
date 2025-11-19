@interface THSearchTableViewNoResultsCell
- (THSearchTableViewNoResultsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setSearchKind:(int)a3;
@end

@implementation THSearchTableViewNoResultsCell

- (THSearchTableViewNoResultsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = THSearchTableViewNoResultsCell;
  v4 = [(THSearchTableViewNoResultsCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(THSearchTableViewNoResultsCell *)v4 setSelectionStyle:0];
    [-[THSearchTableViewNoResultsCell textLabel](v5 "textLabel")];
    [-[THSearchTableViewNoResultsCell textLabel](v5 "textLabel")];
    [-[THSearchTableViewNoResultsCell textLabel](v5 "textLabel")];
    [-[THSearchTableViewNoResultsCell textLabel](v5 "textLabel")];
    [-[THSearchTableViewNoResultsCell detailTextLabel](v5 "detailTextLabel")];
    [-[THSearchTableViewNoResultsCell detailTextLabel](v5 "detailTextLabel")];
    [-[THSearchTableViewNoResultsCell detailTextLabel](v5 "detailTextLabel")];
  }

  return v5;
}

- (void)setSearchKind:(int)a3
{
  v5 = THBundle();
  if (a3)
  {
    v6 = @"No matches in media found.";
  }

  else
  {
    v6 = @"No matches in text found.";
  }

  v7 = [v5 localizedStringForKey:v6 value:&stru_471858 table:0];
  v8 = [(THSearchTableViewNoResultsCell *)self textLabel];

  [v8 setText:v7];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = THSearchTableViewNoResultsCell;
  [(THSearchTableViewNoResultsCell *)&v6 layoutSubviews];
  [-[THSearchTableViewNoResultsCell contentView](self "contentView")];
  MidX = CGRectGetMidX(v7);
  [-[THSearchTableViewNoResultsCell textLabel](self "textLabel")];
  [-[THSearchTableViewNoResultsCell textLabel](self "textLabel")];
  [-[THSearchTableViewNoResultsCell textLabel](self "textLabel")];
  v9 = CGRectIntegral(v8);
  [-[THSearchTableViewNoResultsCell textLabel](self "textLabel")];
  [-[THSearchTableViewNoResultsCell detailTextLabel](self "detailTextLabel")];
  [-[THSearchTableViewNoResultsCell detailTextLabel](self "detailTextLabel")];
  [-[THSearchTableViewNoResultsCell detailTextLabel](self "detailTextLabel")];
  v11 = CGRectIntegral(v10);
  [-[THSearchTableViewNoResultsCell detailTextLabel](self "detailTextLabel")];
  [-[THSearchTableViewNoResultsCell textLabel](self "textLabel")];
  [-[THSearchTableViewNoResultsCell textLabel](self "textLabel")];
  [-[THSearchTableViewNoResultsCell textLabel](self "textLabel")];
  [-[THSearchTableViewNoResultsCell detailTextLabel](self "detailTextLabel")];
  [-[THSearchTableViewNoResultsCell detailTextLabel](self "detailTextLabel")];
  [-[THSearchTableViewNoResultsCell detailTextLabel](self "detailTextLabel")];
  [objc_msgSend(-[THSearchTableViewNoResultsCell textLabel](self "textLabel")];
  [objc_msgSend(-[THSearchTableViewNoResultsCell detailTextLabel](self "detailTextLabel")];
}

@end