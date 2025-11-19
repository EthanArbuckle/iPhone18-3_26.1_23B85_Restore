@interface FBADiffableTableViewCell
- (void)configureForTeam:(id)a3 disclosesMoreTeams:(BOOL)a4;
@end

@implementation FBADiffableTableViewCell

- (void)configureForTeam:(id)a3 disclosesMoreTeams:(BOOL)a4
{
  v4 = a4;
  v21 = a3;
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  v7 = [(FBADiffableTableViewCell *)self textLabel];
  [v7 setFont:v6];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v9 = [(FBADiffableTableViewCell *)self detailTextLabel];
  [v9 setFont:v8];

  if (v21)
  {
    v10 = [v21 name];
    v11 = [(FBADiffableTableViewCell *)self textLabel];
    [v11 setText:v10];

    v12 = [v21 typeString];
    v13 = [(FBADiffableTableViewCell *)self detailTextLabel];
    [v13 setText:v12];
  }

  else
  {
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"LOADING_ELLIPSES" value:&stru_1000E2210 table:0];
    v16 = [(FBADiffableTableViewCell *)self textLabel];
    [v16 setText:v15];

    v17 = [(FBADiffableTableViewCell *)self detailTextLabel];
    [v17 setText:0];

    [(FBADiffableTableViewCell *)self setAccessoryType:0];
  }

  v18 = v4;
  if (v4)
  {
    v19 = 3;
  }

  else
  {
    v19 = 0;
  }

  [(FBADiffableTableViewCell *)self setAccessoryType:v18];
  [(FBADiffableTableViewCell *)self setSelectionStyle:v19];
  v20 = [(FBADiffableTableViewCell *)self textLabel];
  NSLog(@"%@", v20);
}

@end