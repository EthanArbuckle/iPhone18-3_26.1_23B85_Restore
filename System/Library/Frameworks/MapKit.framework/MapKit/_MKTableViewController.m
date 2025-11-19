@interface _MKTableViewController
- (double)defaultLeadingSeparatorInset;
- (double)defaultTrailingSeparatorInset;
@end

@implementation _MKTableViewController

- (double)defaultTrailingSeparatorInset
{
  IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
  v4 = [(_MKTableViewController *)self view];
  [v4 layoutMargins];
  v6 = v5;
  v8 = v7;

  if (IsRightToLeft)
  {
    return v6;
  }

  else
  {
    return v8;
  }
}

- (double)defaultLeadingSeparatorInset
{
  IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
  v4 = [(_MKTableViewController *)self view];
  [v4 layoutMargins];
  v6 = v5;
  v8 = v7;

  if (IsRightToLeft)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

@end