@interface FBADiffableTableViewCell
- (void)configureForTeam:(id)team disclosesMoreTeams:(BOOL)teams;
@end

@implementation FBADiffableTableViewCell

- (void)configureForTeam:(id)team disclosesMoreTeams:(BOOL)teams
{
  teamsCopy = teams;
  teamCopy = team;
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  textLabel = [(FBADiffableTableViewCell *)self textLabel];
  [textLabel setFont:v6];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  detailTextLabel = [(FBADiffableTableViewCell *)self detailTextLabel];
  [detailTextLabel setFont:v8];

  if (teamCopy)
  {
    name = [teamCopy name];
    textLabel2 = [(FBADiffableTableViewCell *)self textLabel];
    [textLabel2 setText:name];

    typeString = [teamCopy typeString];
    detailTextLabel2 = [(FBADiffableTableViewCell *)self detailTextLabel];
    [detailTextLabel2 setText:typeString];
  }

  else
  {
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"LOADING_ELLIPSES" value:&stru_1000E2210 table:0];
    textLabel3 = [(FBADiffableTableViewCell *)self textLabel];
    [textLabel3 setText:v15];

    detailTextLabel3 = [(FBADiffableTableViewCell *)self detailTextLabel];
    [detailTextLabel3 setText:0];

    [(FBADiffableTableViewCell *)self setAccessoryType:0];
  }

  v18 = teamsCopy;
  if (teamsCopy)
  {
    v19 = 3;
  }

  else
  {
    v19 = 0;
  }

  [(FBADiffableTableViewCell *)self setAccessoryType:v18];
  [(FBADiffableTableViewCell *)self setSelectionStyle:v19];
  textLabel4 = [(FBADiffableTableViewCell *)self textLabel];
  NSLog(@"%@", textLabel4);
}

@end